import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep317
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

private def s6Step319CompleteMoves : List (Wire × Wire) := [(868,110)]

private def s6Step319EarlyControlLog : HmrEarlyControlLog := ⟨[868, 880, 830, 805, 841],[843],[793],[817, 812, 915, 906, 792, 849],[925]⟩

private def s6Step319FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [843], [], [864, 880]],[[793], [841], [830], [805]],[[], [], [], []]⟩,[860],[865],[817],[812],[915, 906, 792, 849, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[915, 906, 792, 849, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[817, 812, 915, 906]⟩

private def s6Step319CompleteLog : HmrEarlyStepLog := ⟨s6Step319FrontLog,s6Step319CompleteMoves,s6Step319EarlyControlLog⟩

private def s6Step319ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367],795⟩

private def s6Step319ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803],776⟩

private def s6Step319ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109],777⟩

private def s6Step319ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864],775⟩

private def s6Step319FrontOut : WindowBank := ⟨s6Step319ExitFOut,s6Step319ExitGOut,s6Step319ExitFvOut,s6Step319ExitGvOut⟩

private def s6Step319CompleteOut : WindowBank := s6Step319FrontOut.repacked s6Step319CompleteMoves

private def s6Step319EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step319EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step319EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step319EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step319EarlyControlPositiveArena,[843],s6Step319EarlyControlEqualityArena,[793],⟨⟨860,false⟩,[⟨⟨843,false⟩,793⟩]⟩⟩

private def s6Step319EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step319EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step319EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step319EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step319EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<868) ∨ (869≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step319EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step319EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,868⟩,⟨⟨772,false⟩,880⟩,⟨⟨771,false⟩,830⟩,⟨⟨770,false⟩,805⟩,⟨⟨769,false⟩,841⟩]⟩

private def s6Step319EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step319EarlyControlZeroArena,s6Step319EarlyControlZeroPlan,s6Step319EarlyControlClassPlan,s6Step319EarlyControlFlagArena,s6Step319EarlyControlFittedArena,s6Step319EarlyControlHistoryArena,s6Step319EarlyControlSigmaArena,s6Step319EarlyControlOutputArena,s6Step319EarlyControlLog⟩

private def s6Step319CounterWork : List Wire := [817, 812, 915, 906]

private theorem s6Step319Counter_bounded : s6Step319CounterWork.toFinset⊆arenaWires := by norm_num [s6Step319CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step319HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step319CounterDuring : Arena := ⟨s6Step319HeadFvAfter.live∪s6Step319CounterWork.toFinset,Finset.union_subset s6Step319HeadFvAfter.bounded s6Step319Counter_bounded⟩

private def s6Step319EntryFFresh : List Wire := []

private def s6Step319EntryFvFresh : List Wire := []

private def s6Step319EntryGFresh : List Wire := [843]

private def s6Step319EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step319EntryGvFresh : List Wire := [864, 880]

private def s6Step319ExitFExtra : List Wire := [841]

private def s6Step319ExitFvExtra : List Wire := [805]

private def s6Step319ExitGExtra : List Wire := [110, 843, 793]

private def s6Step319ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<110) ∨ (111≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step319ExitGvExtra : List Wire := [880, 830]

private def s6Step319Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step319Add0Work : List Wire := [915, 906, 792, 849, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step319Add0_bounded : s6Step319Add0Work.toFinset⊆arenaWires := by
  have h : s6Step319Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step319Add0During : Arena := ⟨s6Step319Add0Arena.live∪s6Step319Add0Work.toFinset,Finset.union_subset s6Step319Add0Arena.bounded s6Step319Add0_bounded⟩

private def s6Step319Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step319Add1Work : List Wire := [915, 906, 792, 849, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step319Add1_bounded : s6Step319Add1Work.toFinset⊆arenaWires := by
  have h : s6Step319Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step319Add1During : Arena := ⟨s6Step319Add1Arena.live∪s6Step319Add1Work.toFinset,Finset.union_subset s6Step319Add1Arena.bounded s6Step319Add1_bounded⟩

private def s6Step319F4FlagArena : Arena := ⟨s6Step319HeadFvAfter.live∪{817},Finset.union_subset s6Step319HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step319F4Plan : HmrHybridF4Plan := ⟨s6Step319F4FlagArena,[817],s6Step319Add0Arena,[812],s6Step319Add0During,s6Step319Add0Work,s6Step319Add1During,s6Step319Add1Work⟩

private def s6Step319HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 841],795⟩

private def s6Step319HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 805],776⟩

private def s6Step319HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 843, 793],777⟩

private def s6Step319HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 880, 830],775⟩

private def s6Step319FrontHead : WindowBank := ⟨s6Step319HeadFOut,s6Step319HeadGOut,s6Step319HeadFvOut,s6Step319HeadGvOut⟩

private def s6Step319EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367],795⟩

private def s6Step319EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803],776⟩

private def s6Step319EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 843],777⟩

private def s6Step319EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 880],775⟩

private def s6Step319FrontPair : WindowBank := ⟨s6Step319EntryFOut,s6Step319EntryGOut,s6Step319EntryFvOut,s6Step319EntryGvOut⟩

private def s6Step319FrontSigmaArena : Arena := ⟨s6Step319EntryGvAfter.live∪{860},Finset.union_subset s6Step319EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step319HeadFFresh : List Wire := [841]

private def s6Step319HeadFvFresh : List Wire := [805]

private def s6Step319HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step319HeadGFresh : List Wire := [793]

private def s6Step319HeadGvFresh : List Wire := [830]

private def s6Step319FrontPlan : HmrSourceFront := ⟨s6Step319EntryGvAfter,s6Step319FrontPair,(growRow 795 s6Step319EntryFFresh ++ (growRow 777 s6Step319EntryGFresh ++ (growRow 776 s6Step319EntryFvFresh ++ (growRow 775 s6Step319EntryGvFresh ++ [])))),s6Step319FrontSigmaArena,[860],s6Step319HeadGBefore,[865],
  s6Step319HeadFvAfter,s6Step319FrontHead,(growRow 777 s6Step319HeadGFresh ++ (growRow 795 s6Step319HeadFFresh ++ (growRow 775 s6Step319HeadGvFresh ++ (growRow 776 s6Step319HeadFvFresh ++ [])))),s6Step319F4Plan,s6Step319CounterDuring,s6Step319CounterWork,s6Step319ExitGvAfter,s6Step319FrontOut,(shrinkRow 777 s6Step319ExitGExtra ++ (shrinkRow 795 s6Step319ExitFExtra ++ (shrinkRow 776 s6Step319ExitFvExtra ++ (shrinkRow 775 s6Step319ExitGvExtra ++ []))))⟩

private def s6Step319CompletePlan : HmrEarlyStepPlan := ⟨s6Step319FrontPlan,s6Step319EarlyControlArena,s6Step319EarlyControlPlan,s6Step319CompleteMoves⟩

private theorem s6Step319Complete_apart : List.Disjoint (s6Step319CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [860, 865, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] := by
  have nd : ((s6Step319CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[860, 865, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step319Complete_owned : (s6Step319CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step319EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step319EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private def s6Step319CompleteMoveArena : Arena := ⟨s6Step319ExitGvAfter.live∪{110},Finset.union_subset s6Step319ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step319Complete_repack : s6Step319ExitGvAfter.checkRepack s6Step319CompleteMoves=some s6Step319EarlyControlArena := by
  have owned : 868∈s6Step319ExitGvAfter.live := by norm_num [s6Step319ExitGvAfter,arenaWires]
  have reserve : s6Step319ExitGvAfter.reserve {110}=some s6Step319CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s6Step319ExitGvAfter,arenaWires]
    · rfl
  have retired : s6Step319CompleteMoveArena.retireSet {868}=s6Step319EarlyControlArena := by
    unfold Arena.retireSet s6Step319EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s6Step319CompleteMoveArena,s6Step319ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s6Step319CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s6Step319CompleteMoveArena.retireSet {868}).checkRepack []=some s6Step319EarlyControlArena
  rw [retired]
  rfl

private theorem s6Step319EarlyControl_branchOwned : ([865] : List Wire).toFinset⊆s6Step319EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step319EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<868) ∨ (869≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step319EarlyControl_branch : compileHmrBranchRetirement s6Step319EarlyControlSigmaArena 865=some s6Step319EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step319EarlyControl_branchOwned
  · ext q
    simp [s6Step319EarlyControlOutputArena,s6Step319EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step319EarlyControl_classEqualityBorrow : s6Step319EarlyControlPositiveArena.checkBorrow (([860, 843] : List Wire).length-1) s6Step319EarlyControlLog.classWork=some s6Step319EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step319EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step319EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step319EarlyControlEqualityArena,s6Step319EarlyControlPositiveArena,s6Step319EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step319EarlyControl_classEqualityOwned : ([860, 843] : List Wire).toFinset⊆s6Step319EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step319EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step319EarlyControl_classEquality : compileHmrEqualityLog s6Step319EarlyControlPositiveArena [860, 843] 0 s6Step319EarlyControlLog.classWork=some (s6Step319EarlyControlEqualityArena,s6Step319EarlyControlLog.classWork,s6Step319EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step319EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step319EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step319EarlyControl_classOwned : ([769, 841, 860] : List Wire).toFinset⊆s6Step319EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step319EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step319EarlyControl_positiveBorrow : s6Step319EarlyControlZeroArena.checkBorrow (1) s6Step319EarlyControlLog.positiveWork=some s6Step319EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step319EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step319EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step319EarlyControlPositiveArena,s6Step319EarlyControlZeroArena,s6Step319EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step319EarlyControl_class : compileHmrSourceClassLog s6Step319EarlyControlZeroArena false 769 s6Step319EarlyControlZeroPlan.top 0 860 s6Step319EarlyControlLog.positiveWork s6Step319EarlyControlLog.classWork=some s6Step319EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step319EarlyControlClassPlan s6Step319EarlyControlZeroArena false 769 s6Step319EarlyControlZeroPlan.top 0 860
  constructor
  · decide +kernel
  · exact s6Step319EarlyControl_classOwned
  · exact s6Step319EarlyControl_positiveBorrow
  · exact s6Step319EarlyControl_classEquality

private theorem s6Step319EarlyControl_entryRecordOwned : ([865, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] : List Wire).toFinset⊆s6Step319EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step319EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step319EarlyControl_entrySigmaOwned : ([860, 254] : List Wire).toFinset⊆s6Step319EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step319EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step319EarlyControl_fitBorrow : s6Step319EarlyControlFlagArena.checkBorrow ((57-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] : List Wire).length)) s6Step319EarlyControlLog.recordFresh=some s6Step319EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step319EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step319EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step319EarlyControlFittedArena,s6Step319EarlyControlFlagArena,s6Step319EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step319EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] : List Wire).toFinset⊆s6Step319EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step319EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step319EarlyControl_fit : compileHmrRecordGrowLog s6Step319EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] 57 s6Step319EarlyControlLog.recordFresh=some s6Step319EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step319EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step319EarlyControl_fitBorrow

private theorem s6Step319EarlyControl_flagsBorrow : s6Step319EarlyControlEqualityArena.checkBorrow (6) s6Step319EarlyControlLog.flagWork=some s6Step319EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step319EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step319EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step319EarlyControlFlagArena,s6Step319EarlyControlEqualityArena,s6Step319EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step319EarlyControl_flagsOwned : ([793, 253, 252, 251] : List Wire).toFinset⊆s6Step319EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step319EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step319EarlyControl_flags : compileHmrFlagsLog s6Step319EarlyControlClassPlan.equalityArena s6Step319EarlyControlClassPlan.equality.top 253 252 251 s6Step319EarlyControlLog.flagWork=some s6Step319EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step319EarlyControl_flagsOwned⟩
  · exact s6Step319EarlyControl_flagsBorrow

private theorem s6Step319EarlyControl_historyBorrow : s6Step319EarlyControlArena.checkBorrow ((57-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] : List Wire).length)) s6Step319EarlyControlLog.recordFresh=some s6Step319EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step319EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step319EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step319EarlyControlHistoryArena,s6Step319EarlyControlArena,s6Step319EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step319EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] : List Wire).toFinset⊆s6Step319EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step319EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step319EarlyControl_history : compileHmrRecordGrowLog s6Step319EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] 57 s6Step319EarlyControlLog.recordFresh=some s6Step319EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step319EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step319EarlyControl_historyBorrow

private theorem s6Step319EarlyControl_sigmaOwned : ([254, 860] : List Wire).toFinset⊆s6Step319EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step319EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step319EarlyControl_sigmaReleaseOwned : ([860] : List Wire).toFinset⊆s6Step319EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step319EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step319EarlyControl_sigmaRelease : s6Step319EarlyControlHistoryArena.release {860} (fun _ => false)=some s6Step319EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step319EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step319EarlyControlSigmaArena,s6Step319EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step319EarlyControl_sigma : compileHmrSigmaDropLog s6Step319EarlyControlHistoryArena false 0 0 254 860 []=some s6Step319EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step319EarlyControl_sigmaOwned⟩
  · exact s6Step319EarlyControl_sigmaRelease

private theorem s6Step319EarlyControl_zeroBorrow : s6Step319EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step319EarlyControlLog.zeroWork=some s6Step319EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step319EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step319EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step319EarlyControlZeroArena,s6Step319EarlyControlArena,s6Step319EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step319EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step319EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step319EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step319EarlyControl_zero : compileHmrEqualityLog s6Step319EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step319EarlyControlLog.zeroWork=some (s6Step319EarlyControlZeroArena,s6Step319EarlyControlLog.zeroWork,s6Step319EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step319EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step319EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step319EarlyControl_logged : s6Step319EarlyControlPlan.Logged s6Step319EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] 769 860 254 253 252 251 865 57 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step319EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step319EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step319EarlyControl_zero
  · exact s6Step319EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step319EarlyControl_flags
  · exact s6Step319EarlyControl_fit
  · exact s6Step319EarlyControl_history
  · exact s6Step319EarlyControl_sigma
  · exact s6Step319EarlyControl_branch

private theorem s6Step319EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step319EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] 769 860 254 253 252 251 865 57 s6Step319EarlyControlLog=some s6Step319EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step319EarlyControlPlan s6Step319EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] 769 860 254 253 252 251 865 57 s6Step319EarlyControl_logged

private def s6Step319EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<864) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step319EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367],795⟩

private def s6Step319EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803],776⟩

private def s6Step319EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110],777⟩

private def s6Step319EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786],775⟩

private def s6Step319FrontBank : WindowBank := ⟨s6Step319EntryFRow,s6Step319EntryGRow,s6Step319EntryFvRow,s6Step319EntryGvRow⟩

private def s6Step319Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 841, 795]

private def s6Step319Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 843, 793, 777]

private def s6Step319Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 805, 776]

private def s6Step319Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 880, 830, 775]

private theorem s6Step319Counter_apart : Disjoint s6Step319HeadFvAfter.live s6Step319CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step319HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step319Counter_borrowed : s6Step319HeadFvAfter.checkBorrow 4 s6Step319CounterWork=some s6Step319CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step319HeadFvAfter s6Step319CounterDuring s6Step319CounterWork.toFinset s6Step319Counter_bounded s6Step319Counter_apart rfl

private theorem s6Step319Counter_owned : (860::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step319HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step319HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step319Counter_checked : compileHmrCounterStepLog s6Step319HeadFvAfter true 860 [774, 773, 772, 771, 770, 769] s6Step319CounterWork=some s6Step319CounterDuring := by
  have owned : ∀q∈860::[774, 773, 772, 771, 770, 769],q∈s6Step319HeadFvAfter.live := fun q hq => s6Step319Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step319Counter_borrowed

private def s6Step319EntryFAfter : Arena := s6Step319EntryFBefore

private theorem s6Step319EntryBank_incomingDistinct : ([s6Step319EntryFRow,s6Step319EntryGRow,s6Step319EntryFvRow,s6Step319EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step319EntryF_Incoming : rowsOwned s6Step319EntryFBefore [s6Step319EntryFRow,s6Step319EntryGRow,s6Step319EntryFvRow,s6Step319EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step319EntryFRow,s6Step319EntryGRow,s6Step319EntryFvRow,s6Step319EntryGvRow] 0 s6Step319EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step319EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<864) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step319EntryBank_outgoingOwned : rowsOwned s6Step319EntryGvAfter [s6Step319EntryFOut,s6Step319EntryGOut,s6Step319EntryFvOut,s6Step319EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step319EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step319EntryF_Outgoing : rowsOwned s6Step319EntryGvAfter [s6Step319EntryFOut,s6Step319EntryGOut,s6Step319EntryFvOut,s6Step319EntryGvOut] :=
  hmrRows_owned_drop s6Step319EntryGvAfter [s6Step319EntryFOut,s6Step319EntryGOut,s6Step319EntryFvOut,s6Step319EntryGvOut] 0 s6Step319EntryBank_outgoingOwned

private theorem s6Step319EntryF_distinct : (s6Step319EntryFRow.sign::s6Step319EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step319EntryF_owned : (s6Step319EntryFRow.sign::s6Step319EntryFRow.payload).toFinset⊆s6Step319EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step319EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<864) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step319EntryF_reserved : s6Step319EntryFBefore.reserve s6Step319EntryFFresh.toFinset=some s6Step319EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step319EntryFFresh,arenaWires]
  · norm_num [s6Step319EntryFBefore,s6Step319EntryFFresh,arenaWires]
  · simp only [s6Step319EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step319EntryF_checked : planRowResizeLog s6Step319EntryFBefore s6Step319EntryFRow 112 s6Step319EntryFFresh=
    some (s6Step319EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367],795⟩,growRow 795 s6Step319EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step319EntryFBefore s6Step319EntryFAfter s6Step319EntryFRow 112 s6Step319EntryFFresh
    s6Step319EntryF_distinct s6Step319EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step319EntryF_reserved
  have rowEq : WindowRow.mk (s6Step319EntryFRow.payload++s6Step319EntryFFresh) s6Step319EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step319EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<864) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step319EntryFvAfter : Arena := s6Step319EntryGAfter

private def s6Step319EntryFvBefore : Arena := s6Step319EntryGAfter

private theorem s6Step319EntryFv_Incoming : rowsOwned s6Step319EntryFvBefore [s6Step319EntryFvRow,s6Step319EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step319EntryFRow,s6Step319EntryGRow,s6Step319EntryFvRow,s6Step319EntryGvRow] 2 s6Step319EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step319EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<864) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step319EntryFv_Outgoing : rowsOwned s6Step319EntryGvAfter [s6Step319EntryFvOut,s6Step319EntryGvOut] :=
  hmrRows_owned_drop s6Step319EntryGvAfter [s6Step319EntryFOut,s6Step319EntryGOut,s6Step319EntryFvOut,s6Step319EntryGvOut] 2 s6Step319EntryBank_outgoingOwned

private theorem s6Step319EntryFv_distinct : (s6Step319EntryFvRow.sign::s6Step319EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step319EntryFv_owned : (s6Step319EntryFvRow.sign::s6Step319EntryFvRow.payload).toFinset⊆s6Step319EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step319EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<864) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step319EntryFv_reserved : s6Step319EntryFvBefore.reserve s6Step319EntryFvFresh.toFinset=some s6Step319EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step319EntryFvFresh,arenaWires]
  · norm_num [s6Step319EntryFvBefore,s6Step319EntryGAfter,s6Step319EntryFvFresh,arenaWires]
  · simp only [s6Step319EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step319EntryFv_checked : planRowResizeLog s6Step319EntryFvBefore s6Step319EntryFvRow 176 s6Step319EntryFvFresh=
    some (s6Step319EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803],776⟩,growRow 776 s6Step319EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step319EntryFvBefore s6Step319EntryFvAfter s6Step319EntryFvRow 176 s6Step319EntryFvFresh
    s6Step319EntryFv_distinct s6Step319EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step319EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step319EntryFvRow.payload++s6Step319EntryFvFresh) s6Step319EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step319EntryGBefore : Arena := s6Step319EntryFBefore

private theorem s6Step319EntryG_Incoming : rowsOwned s6Step319EntryGBefore [s6Step319EntryGRow,s6Step319EntryFvRow,s6Step319EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step319EntryFRow,s6Step319EntryGRow,s6Step319EntryFvRow,s6Step319EntryGvRow] 1 s6Step319EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step319EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<864) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step319EntryG_Outgoing : rowsOwned s6Step319EntryGvAfter [s6Step319EntryGOut,s6Step319EntryFvOut,s6Step319EntryGvOut] :=
  hmrRows_owned_drop s6Step319EntryGvAfter [s6Step319EntryFOut,s6Step319EntryGOut,s6Step319EntryFvOut,s6Step319EntryGvOut] 1 s6Step319EntryBank_outgoingOwned

private theorem s6Step319EntryG_distinct : (s6Step319EntryGRow.sign::s6Step319EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step319EntryG_owned : (s6Step319EntryGRow.sign::s6Step319EntryGRow.payload).toFinset⊆s6Step319EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step319EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<864) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step319EntryG_reserved : s6Step319EntryGBefore.reserve s6Step319EntryGFresh.toFinset=some s6Step319EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step319EntryGFresh,arenaWires]
  · norm_num [s6Step319EntryGBefore,s6Step319EntryFBefore,s6Step319EntryGFresh,arenaWires]
  · ext q
    simp only [s6Step319EntryGAfter,s6Step319EntryGBefore,s6Step319EntryFBefore,s6Step319EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step319EntryG_checked : planRowResizeLog s6Step319EntryGBefore s6Step319EntryGRow 112 s6Step319EntryGFresh=
    some (s6Step319EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 843],777⟩,growRow 777 s6Step319EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step319EntryGBefore s6Step319EntryGAfter s6Step319EntryGRow 112 s6Step319EntryGFresh
    s6Step319EntryG_distinct s6Step319EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step319EntryG_reserved
  have rowEq : WindowRow.mk (s6Step319EntryGRow.payload++s6Step319EntryGFresh) s6Step319EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 843],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step319EntryGvBefore : Arena := s6Step319EntryGAfter

private theorem s6Step319EntryGv_Incoming : rowsOwned s6Step319EntryGvBefore [s6Step319EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step319EntryFRow,s6Step319EntryGRow,s6Step319EntryFvRow,s6Step319EntryGvRow] 3 s6Step319EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step319EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<864) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step319EntryGv_Outgoing : rowsOwned s6Step319EntryGvAfter [s6Step319EntryGvOut] :=
  hmrRows_owned_drop s6Step319EntryGvAfter [s6Step319EntryFOut,s6Step319EntryGOut,s6Step319EntryFvOut,s6Step319EntryGvOut] 3 s6Step319EntryBank_outgoingOwned

private theorem s6Step319EntryGv_distinct : (s6Step319EntryGvRow.sign::s6Step319EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step319EntryGv_owned : (s6Step319EntryGvRow.sign::s6Step319EntryGvRow.payload).toFinset⊆s6Step319EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step319EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<864) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step319EntryGv_reserved : s6Step319EntryGvBefore.reserve s6Step319EntryGvFresh.toFinset=some s6Step319EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step319EntryGvFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s6Step319EntryGvBefore,s6Step319EntryGAfter,s6Step319EntryGvFresh,arenaWires]
  · ext q
    simp only [s6Step319EntryGvAfter,s6Step319EntryGvBefore,s6Step319EntryGAfter,s6Step319EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step319EntryGv_checked : planRowResizeLog s6Step319EntryGvBefore s6Step319EntryGvRow 176 s6Step319EntryGvFresh=
    some (s6Step319EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 880],775⟩,growRow 775 s6Step319EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step319EntryGvBefore s6Step319EntryGvAfter s6Step319EntryGvRow 176 s6Step319EntryGvFresh
    s6Step319EntryGv_distinct s6Step319EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step319EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step319EntryGvRow.payload++s6Step319EntryGvFresh) s6Step319EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 880],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step319EntryBank_rows : planWindowRowsLog s6Step319EntryFBefore [(s6Step319EntryFRow,112),(s6Step319EntryGRow,112),(s6Step319EntryFvRow,176),(s6Step319EntryGvRow,176)] [s6Step319EntryFFresh,s6Step319EntryGFresh,s6Step319EntryFvFresh,s6Step319EntryGvFresh]=
    some (s6Step319EntryGvAfter,[s6Step319EntryFOut,s6Step319EntryGOut,s6Step319EntryFvOut,s6Step319EntryGvOut],(growRow 795 s6Step319EntryFFresh ++ (growRow 777 s6Step319EntryGFresh ++ (growRow 776 s6Step319EntryFvFresh ++ (growRow 775 s6Step319EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step319EntryGvAfter [] []=some (s6Step319EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step319EntryGvBefore s6Step319EntryGvAfter s6Step319EntryGvAfter
    s6Step319EntryGvRow s6Step319EntryGvOut 176 s6Step319EntryGvFresh [] [] []
    (growRow 775 s6Step319EntryGvFresh) ([]) s6Step319EntryGv_Incoming s6Step319EntryGv_checked h4 s6Step319EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step319EntryFvBefore s6Step319EntryFvAfter s6Step319EntryGvAfter
    s6Step319EntryFvRow s6Step319EntryFvOut 176 s6Step319EntryFvFresh [(s6Step319EntryGvRow,176)] [s6Step319EntryGvFresh] [s6Step319EntryGvOut]
    (growRow 776 s6Step319EntryFvFresh) ((growRow 775 s6Step319EntryGvFresh ++ [])) s6Step319EntryFv_Incoming s6Step319EntryFv_checked h3 s6Step319EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step319EntryGBefore s6Step319EntryGAfter s6Step319EntryGvAfter
    s6Step319EntryGRow s6Step319EntryGOut 112 s6Step319EntryGFresh [(s6Step319EntryFvRow,176),(s6Step319EntryGvRow,176)] [s6Step319EntryFvFresh,s6Step319EntryGvFresh] [s6Step319EntryFvOut,s6Step319EntryGvOut]
    (growRow 777 s6Step319EntryGFresh) ((growRow 776 s6Step319EntryFvFresh ++ (growRow 775 s6Step319EntryGvFresh ++ []))) s6Step319EntryG_Incoming s6Step319EntryG_checked h2 s6Step319EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step319EntryFBefore s6Step319EntryFAfter s6Step319EntryGvAfter
    s6Step319EntryFRow s6Step319EntryFOut 112 s6Step319EntryFFresh [(s6Step319EntryGRow,112),(s6Step319EntryFvRow,176),(s6Step319EntryGvRow,176)] [s6Step319EntryGFresh,s6Step319EntryFvFresh,s6Step319EntryGvFresh] [s6Step319EntryGOut,s6Step319EntryFvOut,s6Step319EntryGvOut]
    (growRow 795 s6Step319EntryFFresh) ((growRow 777 s6Step319EntryGFresh ++ (growRow 776 s6Step319EntryFvFresh ++ (growRow 775 s6Step319EntryGvFresh ++ [])))) s6Step319EntryF_Incoming s6Step319EntryF_checked h1 s6Step319EntryF_Outgoing
  exact h0

private theorem s6Step319EntryBank_checked : compileHmrBankResizeLog .entry s6Step319EntryFBefore ⟨s6Step319EntryFRow,s6Step319EntryGRow,s6Step319EntryFvRow,s6Step319EntryGvRow⟩ ⟨112,112,176,176⟩ [s6Step319EntryFFresh,s6Step319EntryGFresh,s6Step319EntryFvFresh,s6Step319EntryGvFresh]=
    some (s6Step319EntryGvAfter,⟨s6Step319EntryFOut,s6Step319EntryGOut,s6Step319EntryFvOut,s6Step319EntryGvOut⟩,(growRow 795 s6Step319EntryFFresh ++ (growRow 777 s6Step319EntryGFresh ++ (growRow 776 s6Step319EntryFvFresh ++ (growRow 775 s6Step319EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step319EntryBank_rows]
  rfl

private def s6Step319ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<110) ∨ (111≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step319ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<110) ∨ (111≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step319ExitFBefore : Arena := s6Step319ExitGAfter

private def s6Step319ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 841],795⟩

private def s6Step319ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 805],776⟩

private def s6Step319ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 843, 793],777⟩

private def s6Step319ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 880, 830],775⟩

private theorem s6Step319ExitBank_incomingDistinct : ([s6Step319ExitGRow,s6Step319ExitFRow,s6Step319ExitFvRow,s6Step319ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step319ExitF_Incoming : rowsOwned s6Step319ExitFBefore [s6Step319ExitFRow,s6Step319ExitFvRow,s6Step319ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step319ExitGRow,s6Step319ExitFRow,s6Step319ExitFvRow,s6Step319ExitGvRow] 1 s6Step319ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step319ExitFBefore (fun q => (0≤q ∧ q<110) ∨ (111≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step319ExitBank_outgoingOwned : rowsOwned s6Step319ExitGvAfter [s6Step319ExitGOut,s6Step319ExitFOut,s6Step319ExitFvOut,s6Step319ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step319ExitGvAfter (fun q => (0≤q ∧ q<110) ∨ (111≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step319ExitF_Outgoing : rowsOwned s6Step319ExitGvAfter [s6Step319ExitFOut,s6Step319ExitFvOut,s6Step319ExitGvOut] :=
  hmrRows_owned_drop s6Step319ExitGvAfter [s6Step319ExitGOut,s6Step319ExitFOut,s6Step319ExitFvOut,s6Step319ExitGvOut] 1 s6Step319ExitBank_outgoingOwned

private theorem s6Step319ExitF_distinct : (s6Step319ExitFRow.sign::s6Step319ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step319ExitF_owned : (s6Step319ExitFRow.sign::s6Step319ExitFRow.payload).toFinset⊆s6Step319ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step319ExitFBefore (fun q => (0≤q ∧ q<110) ∨ (111≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step319ExitF_retired : s6Step319ExitFBefore.retireSet s6Step319ExitFExtra.toFinset=s6Step319ExitFAfter := by
  unfold Arena.retireSet s6Step319ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step319ExitFBefore,s6Step319ExitGAfter,s6Step319ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step319ExitF_checked : planRowResizeLog s6Step319ExitFBefore s6Step319ExitFRow 112 []=
    some (s6Step319ExitFAfter,s6Step319ExitFOut,shrinkRow 795 s6Step319ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step319ExitFBefore s6Step319ExitFRow 112 s6Step319ExitF_distinct s6Step319ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step319ExitFRow.payload.take 112) s6Step319ExitFRow.sign=s6Step319ExitFOut := by decide +kernel
  have hi : s6Step319ExitFRow.payload.drop 112=s6Step319ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step319ExitF_retired] at result
  exact result

private def s6Step319ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<110) ∨ (111≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step319ExitFvBefore : Arena := s6Step319ExitFAfter

private theorem s6Step319ExitFv_Incoming : rowsOwned s6Step319ExitFvBefore [s6Step319ExitFvRow,s6Step319ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step319ExitGRow,s6Step319ExitFRow,s6Step319ExitFvRow,s6Step319ExitGvRow] 2 s6Step319ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step319ExitFvBefore (fun q => (0≤q ∧ q<110) ∨ (111≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step319ExitFv_Outgoing : rowsOwned s6Step319ExitGvAfter [s6Step319ExitFvOut,s6Step319ExitGvOut] :=
  hmrRows_owned_drop s6Step319ExitGvAfter [s6Step319ExitGOut,s6Step319ExitFOut,s6Step319ExitFvOut,s6Step319ExitGvOut] 2 s6Step319ExitBank_outgoingOwned

private theorem s6Step319ExitFv_distinct : (s6Step319ExitFvRow.sign::s6Step319ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step319ExitFv_owned : (s6Step319ExitFvRow.sign::s6Step319ExitFvRow.payload).toFinset⊆s6Step319ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step319ExitFvBefore (fun q => (0≤q ∧ q<110) ∨ (111≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step319ExitFv_retired : s6Step319ExitFvBefore.retireSet s6Step319ExitFvExtra.toFinset=s6Step319ExitFvAfter := by
  unfold Arena.retireSet s6Step319ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step319ExitFvBefore,s6Step319ExitFAfter,s6Step319ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step319ExitFv_checked : planRowResizeLog s6Step319ExitFvBefore s6Step319ExitFvRow 176 []=
    some (s6Step319ExitFvAfter,s6Step319ExitFvOut,shrinkRow 776 s6Step319ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step319ExitFvBefore s6Step319ExitFvRow 176 s6Step319ExitFv_distinct s6Step319ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step319ExitFvRow.payload.take 176) s6Step319ExitFvRow.sign=s6Step319ExitFvOut := by decide +kernel
  have hi : s6Step319ExitFvRow.payload.drop 176=s6Step319ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step319ExitFv_retired] at result
  exact result

private def s6Step319ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step319ExitG_Incoming : rowsOwned s6Step319ExitGBefore [s6Step319ExitGRow,s6Step319ExitFRow,s6Step319ExitFvRow,s6Step319ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step319ExitGRow,s6Step319ExitFRow,s6Step319ExitFvRow,s6Step319ExitGvRow] 0 s6Step319ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step319ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step319ExitG_Outgoing : rowsOwned s6Step319ExitGvAfter [s6Step319ExitGOut,s6Step319ExitFOut,s6Step319ExitFvOut,s6Step319ExitGvOut] :=
  hmrRows_owned_drop s6Step319ExitGvAfter [s6Step319ExitGOut,s6Step319ExitFOut,s6Step319ExitFvOut,s6Step319ExitGvOut] 0 s6Step319ExitBank_outgoingOwned

private theorem s6Step319ExitG_distinct : (s6Step319ExitGRow.sign::s6Step319ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step319ExitG_owned : (s6Step319ExitGRow.sign::s6Step319ExitGRow.payload).toFinset⊆s6Step319ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step319ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step319ExitG_retired : s6Step319ExitGBefore.retireSet s6Step319ExitGExtra.toFinset=s6Step319ExitGAfter := by
  unfold Arena.retireSet s6Step319ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step319ExitGBefore,s6Step319ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step319ExitG_checked : planRowResizeLog s6Step319ExitGBefore s6Step319ExitGRow 110 []=
    some (s6Step319ExitGAfter,s6Step319ExitGOut,shrinkRow 777 s6Step319ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step319ExitGBefore s6Step319ExitGRow 110 s6Step319ExitG_distinct s6Step319ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step319ExitGRow.payload.take 110) s6Step319ExitGRow.sign=s6Step319ExitGOut := by decide +kernel
  have hi : s6Step319ExitGRow.payload.drop 110=s6Step319ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step319ExitG_retired] at result
  exact result

private def s6Step319ExitGvBefore : Arena := s6Step319ExitFvAfter

private theorem s6Step319ExitGv_Incoming : rowsOwned s6Step319ExitGvBefore [s6Step319ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step319ExitGRow,s6Step319ExitFRow,s6Step319ExitFvRow,s6Step319ExitGvRow] 3 s6Step319ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step319ExitGvBefore (fun q => (0≤q ∧ q<110) ∨ (111≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step319ExitGv_Outgoing : rowsOwned s6Step319ExitGvAfter [s6Step319ExitGvOut] :=
  hmrRows_owned_drop s6Step319ExitGvAfter [s6Step319ExitGOut,s6Step319ExitFOut,s6Step319ExitFvOut,s6Step319ExitGvOut] 3 s6Step319ExitBank_outgoingOwned

private theorem s6Step319ExitGv_distinct : (s6Step319ExitGvRow.sign::s6Step319ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step319ExitGv_owned : (s6Step319ExitGvRow.sign::s6Step319ExitGvRow.payload).toFinset⊆s6Step319ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step319ExitGvBefore (fun q => (0≤q ∧ q<110) ∨ (111≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step319ExitGv_retired : s6Step319ExitGvBefore.retireSet s6Step319ExitGvExtra.toFinset=s6Step319ExitGvAfter := by
  unfold Arena.retireSet s6Step319ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step319ExitGvBefore,s6Step319ExitFvAfter,s6Step319ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step319ExitGv_checked : planRowResizeLog s6Step319ExitGvBefore s6Step319ExitGvRow 175 []=
    some (s6Step319ExitGvAfter,s6Step319ExitGvOut,shrinkRow 775 s6Step319ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step319ExitGvBefore s6Step319ExitGvRow 175 s6Step319ExitGv_distinct s6Step319ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step319ExitGvRow.payload.take 175) s6Step319ExitGvRow.sign=s6Step319ExitGvOut := by decide +kernel
  have hi : s6Step319ExitGvRow.payload.drop 175=s6Step319ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step319ExitGv_retired] at result
  exact result

private theorem s6Step319ExitBank_rows : planWindowRowsLog s6Step319ExitGBefore [(s6Step319ExitGRow,110),(s6Step319ExitFRow,112),(s6Step319ExitFvRow,176),(s6Step319ExitGvRow,175)] [[],[],[],[]]=
    some (s6Step319ExitGvAfter,[s6Step319ExitGOut,s6Step319ExitFOut,s6Step319ExitFvOut,s6Step319ExitGvOut],(shrinkRow 777 s6Step319ExitGExtra ++ (shrinkRow 795 s6Step319ExitFExtra ++ (shrinkRow 776 s6Step319ExitFvExtra ++ (shrinkRow 775 s6Step319ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step319ExitGvAfter [] []=some (s6Step319ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step319ExitGvBefore s6Step319ExitGvAfter s6Step319ExitGvAfter
    s6Step319ExitGvRow s6Step319ExitGvOut 175 [] [] [] []
    (shrinkRow 775 s6Step319ExitGvExtra) ([]) s6Step319ExitGv_Incoming s6Step319ExitGv_checked h4 s6Step319ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step319ExitFvBefore s6Step319ExitFvAfter s6Step319ExitGvAfter
    s6Step319ExitFvRow s6Step319ExitFvOut 176 [] [(s6Step319ExitGvRow,175)] [[]] [s6Step319ExitGvOut]
    (shrinkRow 776 s6Step319ExitFvExtra) ((shrinkRow 775 s6Step319ExitGvExtra ++ [])) s6Step319ExitFv_Incoming s6Step319ExitFv_checked h3 s6Step319ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step319ExitFBefore s6Step319ExitFAfter s6Step319ExitGvAfter
    s6Step319ExitFRow s6Step319ExitFOut 112 [] [(s6Step319ExitFvRow,176),(s6Step319ExitGvRow,175)] [[],[]] [s6Step319ExitFvOut,s6Step319ExitGvOut]
    (shrinkRow 795 s6Step319ExitFExtra) ((shrinkRow 776 s6Step319ExitFvExtra ++ (shrinkRow 775 s6Step319ExitGvExtra ++ []))) s6Step319ExitF_Incoming s6Step319ExitF_checked h2 s6Step319ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step319ExitGBefore s6Step319ExitGAfter s6Step319ExitGvAfter
    s6Step319ExitGRow s6Step319ExitGOut 110 [] [(s6Step319ExitFRow,112),(s6Step319ExitFvRow,176),(s6Step319ExitGvRow,175)] [[],[],[]] [s6Step319ExitFOut,s6Step319ExitFvOut,s6Step319ExitGvOut]
    (shrinkRow 777 s6Step319ExitGExtra) ((shrinkRow 795 s6Step319ExitFExtra ++ (shrinkRow 776 s6Step319ExitFvExtra ++ (shrinkRow 775 s6Step319ExitGvExtra ++ [])))) s6Step319ExitG_Incoming s6Step319ExitG_checked h1 s6Step319ExitG_Outgoing
  exact h0

private theorem s6Step319ExitBank_checked : compileHmrBankResizeLog .exit s6Step319ExitGBefore ⟨s6Step319ExitFRow,s6Step319ExitGRow,s6Step319ExitFvRow,s6Step319ExitGvRow⟩ ⟨112,110,176,175⟩ [[],[],[],[]]=
    some (s6Step319ExitGvAfter,⟨s6Step319ExitFOut,s6Step319ExitGOut,s6Step319ExitFvOut,s6Step319ExitGvOut⟩,(shrinkRow 777 s6Step319ExitGExtra ++ (shrinkRow 795 s6Step319ExitFExtra ++ (shrinkRow 776 s6Step319ExitFvExtra ++ (shrinkRow 775 s6Step319ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step319ExitBank_rows]
  rfl

private theorem s6Step319Add0_apart : Disjoint s6Step319Add0Arena.live s6Step319Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step319Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step319Add0_card : s6Step319Add0Arena.live.card=906 := by
  decide +kernel

private theorem s6Step319Add0_borrowed : s6Step319Add0Arena.checkBorrow (hmrHybridCount s6Step319Add0Arena s6Step319Add0B.length) s6Step319Add0Work=some s6Step319Add0During := by
  have len : s6Step319Add0Work.length=hmrHybridCount s6Step319Add0Arena s6Step319Add0B.length := by
    rw [hmrHybridCount,s6Step319Add0_card]
    decide +kernel
  have nd : s6Step319Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step319Add0Arena s6Step319Add0During s6Step319Add0Work.toFinset s6Step319Add0_bounded s6Step319Add0_apart rfl

private theorem s6Step319Add0_distinct : (817::865::812::(s6Step319Add0A++s6Step319Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step319Add0_owned : (817::865::812::(s6Step319Add0A++s6Step319Add0B)).toFinset⊆s6Step319Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step319Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step319Add0_checked : compileHmrHybridCinLog s6Step319Add0Arena 865 817 812 s6Step319Add0A s6Step319Add0B s6Step319Add0Work=some s6Step319Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step319Add0Arena s6Step319Add0During 865 817 812 s6Step319Add0A s6Step319Add0B s6Step319Add0Work
    (by decide +kernel) (by decide +kernel) s6Step319Add0_distinct
    (fun q hq => s6Step319Add0_owned (List.mem_toFinset.mpr hq)) s6Step319Add0_borrowed

private theorem s6Step319Add1_apart : Disjoint s6Step319Add1Arena.live s6Step319Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step319Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step319Add1_card : s6Step319Add1Arena.live.card=906 := by
  decide +kernel

private theorem s6Step319Add1_borrowed : s6Step319Add1Arena.checkBorrow (hmrHybridCount s6Step319Add1Arena s6Step319Add1B.length) s6Step319Add1Work=some s6Step319Add1During := by
  have len : s6Step319Add1Work.length=hmrHybridCount s6Step319Add1Arena s6Step319Add1B.length := by
    rw [hmrHybridCount,s6Step319Add1_card]
    decide +kernel
  have nd : s6Step319Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step319Add1Arena s6Step319Add1During s6Step319Add1Work.toFinset s6Step319Add1_bounded s6Step319Add1_apart rfl

private theorem s6Step319Add1_distinct : (817::865::812::(s6Step319Add1A++s6Step319Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step319Add1_owned : (817::865::812::(s6Step319Add1A++s6Step319Add1B)).toFinset⊆s6Step319Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step319Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step319Add1_checked : compileHmrHybridCinLog s6Step319Add1Arena 865 817 812 s6Step319Add1A s6Step319Add1B s6Step319Add1Work=some s6Step319Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step319Add1Arena s6Step319Add1During 865 817 812 s6Step319Add1A s6Step319Add1B s6Step319Add1Work
    (by decide +kernel) (by decide +kernel) s6Step319Add1_distinct
    (fun q hq => s6Step319Add1_owned (List.mem_toFinset.mpr hq)) s6Step319Add1_borrowed

private theorem s6Step319F4_apart : Disjoint (s6Step319Add0A++s6Step319Add0B).toFinset (s6Step319Add1A++s6Step319Add1B).toFinset := by
  have nd : ((s6Step319Add0A++s6Step319Add0B)++(s6Step319Add1A++s6Step319Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step319F4_carry : s6Step319F4FlagArena.checkBorrow 1 [812]=some s6Step319Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step319F4FlagArena,s6Step319HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step319F4FlagArena,s6Step319HeadFvAfter,s6Step319Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step319F4_distinct : (860::865::817::812::((s6Step319Add0A++s6Step319Add1A)++(s6Step319Add0B++s6Step319Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step319F4_flag : s6Step319HeadFvAfter.checkBorrow 1 [817]=some s6Step319F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step319HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step319F4_owned : (860::865::((s6Step319Add0A++s6Step319Add1A)++(s6Step319Add0B++s6Step319Add1B))).toFinset⊆s6Step319HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step319HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step319F4_checked : compileHmrHybridF4Log s6Step319HeadFvAfter 860 865 s6Step319Add0A s6Step319Add0B s6Step319Add1A s6Step319Add1B [817] [812] s6Step319Add0Work s6Step319Add1Work=some s6Step319F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step319HeadFvAfter s6Step319F4FlagArena s6Step319Add0Arena s6Step319Add0During s6Step319Add1During 860 865
    s6Step319Add0A s6Step319Add0B s6Step319Add1A s6Step319Add1B [817] [812] s6Step319Add0Work s6Step319Add1Work
    (fun q hq => s6Step319F4_owned (List.mem_toFinset.mpr hq)) s6Step319F4_flag s6Step319F4_carry
    s6Step319F4_distinct s6Step319F4_apart s6Step319Add0_checked s6Step319Add1_checked

private theorem s6Step319Front_branch : s6Step319FrontSigmaArena.checkBorrow 1 [865]=some s6Step319HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step319FrontSigmaArena,s6Step319EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step319FrontSigmaArena,s6Step319EntryGvAfter,s6Step319HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step319Front_entry : HmrFrontEntryValid s6Step319EntryFBefore s6Step319FrontBank 112 176 ⟨112,110,176,175⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step319FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step319EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step319EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<864) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step319FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step319Front_sigma : s6Step319EntryGvAfter.checkBorrow 1 [860]=some s6Step319FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step319EntryGvAfter,arenaWires]
  · rfl

private def s6Step319HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step319HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step319HeadFBefore : Arena := s6Step319HeadGAfter

private def s6Step319HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367],795⟩

private def s6Step319HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803],776⟩

private def s6Step319HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 843],777⟩

private def s6Step319HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 880],775⟩

private theorem s6Step319HeadBank_incomingDistinct : ([s6Step319HeadGRow,s6Step319HeadFRow,s6Step319HeadGvRow,s6Step319HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step319HeadF_Incoming : rowsOwned s6Step319HeadFBefore [s6Step319HeadFRow,s6Step319HeadGvRow,s6Step319HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step319HeadGRow,s6Step319HeadFRow,s6Step319HeadGvRow,s6Step319HeadFvRow] 1 s6Step319HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step319HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step319HeadBank_outgoingOwned : rowsOwned s6Step319HeadFvAfter [s6Step319HeadGOut,s6Step319HeadFOut,s6Step319HeadGvOut,s6Step319HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step319HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step319HeadF_Outgoing : rowsOwned s6Step319HeadFvAfter [s6Step319HeadFOut,s6Step319HeadGvOut,s6Step319HeadFvOut] :=
  hmrRows_owned_drop s6Step319HeadFvAfter [s6Step319HeadGOut,s6Step319HeadFOut,s6Step319HeadGvOut,s6Step319HeadFvOut] 1 s6Step319HeadBank_outgoingOwned

private theorem s6Step319HeadF_distinct : (s6Step319HeadFRow.sign::s6Step319HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step319HeadF_owned : (s6Step319HeadFRow.sign::s6Step319HeadFRow.payload).toFinset⊆s6Step319HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step319HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step319HeadF_reserved : s6Step319HeadFBefore.reserve s6Step319HeadFFresh.toFinset=some s6Step319HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step319HeadFFresh,arenaWires]
  · norm_num [s6Step319HeadFBefore,s6Step319HeadGAfter,s6Step319HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step319HeadFAfter,s6Step319HeadFBefore,s6Step319HeadGAfter,s6Step319HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step319HeadF_checked : planRowResizeLog s6Step319HeadFBefore s6Step319HeadFRow 113 s6Step319HeadFFresh=
    some (s6Step319HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 841],795⟩,growRow 795 s6Step319HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step319HeadFBefore s6Step319HeadFAfter s6Step319HeadFRow 113 s6Step319HeadFFresh
    s6Step319HeadF_distinct s6Step319HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step319HeadF_reserved
  have rowEq : WindowRow.mk (s6Step319HeadFRow.payload++s6Step319HeadFFresh) s6Step319HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 841],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step319HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step319HeadFvBefore : Arena := s6Step319HeadGvAfter

private theorem s6Step319HeadFv_Incoming : rowsOwned s6Step319HeadFvBefore [s6Step319HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step319HeadGRow,s6Step319HeadFRow,s6Step319HeadGvRow,s6Step319HeadFvRow] 3 s6Step319HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step319HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step319HeadFv_Outgoing : rowsOwned s6Step319HeadFvAfter [s6Step319HeadFvOut] :=
  hmrRows_owned_drop s6Step319HeadFvAfter [s6Step319HeadGOut,s6Step319HeadFOut,s6Step319HeadGvOut,s6Step319HeadFvOut] 3 s6Step319HeadBank_outgoingOwned

private theorem s6Step319HeadFv_distinct : (s6Step319HeadFvRow.sign::s6Step319HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step319HeadFv_owned : (s6Step319HeadFvRow.sign::s6Step319HeadFvRow.payload).toFinset⊆s6Step319HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step319HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step319HeadFv_reserved : s6Step319HeadFvBefore.reserve s6Step319HeadFvFresh.toFinset=some s6Step319HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step319HeadFvFresh,arenaWires]
  · norm_num [s6Step319HeadFvBefore,s6Step319HeadGvAfter,s6Step319HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step319HeadFvAfter,s6Step319HeadFvBefore,s6Step319HeadGvAfter,s6Step319HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step319HeadFv_checked : planRowResizeLog s6Step319HeadFvBefore s6Step319HeadFvRow 177 s6Step319HeadFvFresh=
    some (s6Step319HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 805],776⟩,growRow 776 s6Step319HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step319HeadFvBefore s6Step319HeadFvAfter s6Step319HeadFvRow 177 s6Step319HeadFvFresh
    s6Step319HeadFv_distinct s6Step319HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step319HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step319HeadFvRow.payload++s6Step319HeadFvFresh) s6Step319HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 805],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step319HeadG_Incoming : rowsOwned s6Step319HeadGBefore [s6Step319HeadGRow,s6Step319HeadFRow,s6Step319HeadGvRow,s6Step319HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step319HeadGRow,s6Step319HeadFRow,s6Step319HeadGvRow,s6Step319HeadFvRow] 0 s6Step319HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step319HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step319HeadG_Outgoing : rowsOwned s6Step319HeadFvAfter [s6Step319HeadGOut,s6Step319HeadFOut,s6Step319HeadGvOut,s6Step319HeadFvOut] :=
  hmrRows_owned_drop s6Step319HeadFvAfter [s6Step319HeadGOut,s6Step319HeadFOut,s6Step319HeadGvOut,s6Step319HeadFvOut] 0 s6Step319HeadBank_outgoingOwned

private theorem s6Step319HeadG_distinct : (s6Step319HeadGRow.sign::s6Step319HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step319HeadG_owned : (s6Step319HeadGRow.sign::s6Step319HeadGRow.payload).toFinset⊆s6Step319HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step319HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step319HeadG_reserved : s6Step319HeadGBefore.reserve s6Step319HeadGFresh.toFinset=some s6Step319HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step319HeadGFresh,arenaWires]
  · norm_num [s6Step319HeadGBefore,s6Step319HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step319HeadGAfter,s6Step319HeadGBefore,s6Step319HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step319HeadG_checked : planRowResizeLog s6Step319HeadGBefore s6Step319HeadGRow 113 s6Step319HeadGFresh=
    some (s6Step319HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 843, 793],777⟩,growRow 777 s6Step319HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step319HeadGBefore s6Step319HeadGAfter s6Step319HeadGRow 113 s6Step319HeadGFresh
    s6Step319HeadG_distinct s6Step319HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step319HeadG_reserved
  have rowEq : WindowRow.mk (s6Step319HeadGRow.payload++s6Step319HeadGFresh) s6Step319HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 843, 793],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step319HeadGvBefore : Arena := s6Step319HeadFAfter

private theorem s6Step319HeadGv_Incoming : rowsOwned s6Step319HeadGvBefore [s6Step319HeadGvRow,s6Step319HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step319HeadGRow,s6Step319HeadFRow,s6Step319HeadGvRow,s6Step319HeadFvRow] 2 s6Step319HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step319HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step319HeadGv_Outgoing : rowsOwned s6Step319HeadFvAfter [s6Step319HeadGvOut,s6Step319HeadFvOut] :=
  hmrRows_owned_drop s6Step319HeadFvAfter [s6Step319HeadGOut,s6Step319HeadFOut,s6Step319HeadGvOut,s6Step319HeadFvOut] 2 s6Step319HeadBank_outgoingOwned

private theorem s6Step319HeadGv_distinct : (s6Step319HeadGvRow.sign::s6Step319HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step319HeadGv_owned : (s6Step319HeadGvRow.sign::s6Step319HeadGvRow.payload).toFinset⊆s6Step319HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step319HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step319HeadGv_reserved : s6Step319HeadGvBefore.reserve s6Step319HeadGvFresh.toFinset=some s6Step319HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step319HeadGvFresh,arenaWires]
  · norm_num [s6Step319HeadGvBefore,s6Step319HeadFAfter,s6Step319HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step319HeadGvAfter,s6Step319HeadGvBefore,s6Step319HeadFAfter,s6Step319HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step319HeadGv_checked : planRowResizeLog s6Step319HeadGvBefore s6Step319HeadGvRow 177 s6Step319HeadGvFresh=
    some (s6Step319HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 880, 830],775⟩,growRow 775 s6Step319HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step319HeadGvBefore s6Step319HeadGvAfter s6Step319HeadGvRow 177 s6Step319HeadGvFresh
    s6Step319HeadGv_distinct s6Step319HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step319HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step319HeadGvRow.payload++s6Step319HeadGvFresh) s6Step319HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 880, 830],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step319HeadBank_rows : planWindowRowsLog s6Step319HeadGBefore [(s6Step319HeadGRow,113),(s6Step319HeadFRow,113),(s6Step319HeadGvRow,177),(s6Step319HeadFvRow,177)] [s6Step319HeadGFresh,s6Step319HeadFFresh,s6Step319HeadGvFresh,s6Step319HeadFvFresh]=
    some (s6Step319HeadFvAfter,[s6Step319HeadGOut,s6Step319HeadFOut,s6Step319HeadGvOut,s6Step319HeadFvOut],(growRow 777 s6Step319HeadGFresh ++ (growRow 795 s6Step319HeadFFresh ++ (growRow 775 s6Step319HeadGvFresh ++ (growRow 776 s6Step319HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step319HeadFvAfter [] []=some (s6Step319HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step319HeadFvBefore s6Step319HeadFvAfter s6Step319HeadFvAfter
    s6Step319HeadFvRow s6Step319HeadFvOut 177 s6Step319HeadFvFresh [] [] []
    (growRow 776 s6Step319HeadFvFresh) ([]) s6Step319HeadFv_Incoming s6Step319HeadFv_checked h4 s6Step319HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step319HeadGvBefore s6Step319HeadGvAfter s6Step319HeadFvAfter
    s6Step319HeadGvRow s6Step319HeadGvOut 177 s6Step319HeadGvFresh [(s6Step319HeadFvRow,177)] [s6Step319HeadFvFresh] [s6Step319HeadFvOut]
    (growRow 775 s6Step319HeadGvFresh) ((growRow 776 s6Step319HeadFvFresh ++ [])) s6Step319HeadGv_Incoming s6Step319HeadGv_checked h3 s6Step319HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step319HeadFBefore s6Step319HeadFAfter s6Step319HeadFvAfter
    s6Step319HeadFRow s6Step319HeadFOut 113 s6Step319HeadFFresh [(s6Step319HeadGvRow,177),(s6Step319HeadFvRow,177)] [s6Step319HeadGvFresh,s6Step319HeadFvFresh] [s6Step319HeadGvOut,s6Step319HeadFvOut]
    (growRow 795 s6Step319HeadFFresh) ((growRow 775 s6Step319HeadGvFresh ++ (growRow 776 s6Step319HeadFvFresh ++ []))) s6Step319HeadF_Incoming s6Step319HeadF_checked h2 s6Step319HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step319HeadGBefore s6Step319HeadGAfter s6Step319HeadFvAfter
    s6Step319HeadGRow s6Step319HeadGOut 113 s6Step319HeadGFresh [(s6Step319HeadFRow,113),(s6Step319HeadGvRow,177),(s6Step319HeadFvRow,177)] [s6Step319HeadFFresh,s6Step319HeadGvFresh,s6Step319HeadFvFresh] [s6Step319HeadFOut,s6Step319HeadGvOut,s6Step319HeadFvOut]
    (growRow 777 s6Step319HeadGFresh) ((growRow 795 s6Step319HeadFFresh ++ (growRow 775 s6Step319HeadGvFresh ++ (growRow 776 s6Step319HeadFvFresh ++ [])))) s6Step319HeadG_Incoming s6Step319HeadG_checked h1 s6Step319HeadG_Outgoing
  exact h0

private theorem s6Step319HeadBank_checked : compileHmrBankResizeLog .headroom s6Step319HeadGBefore ⟨s6Step319HeadFRow,s6Step319HeadGRow,s6Step319HeadFvRow,s6Step319HeadGvRow⟩ ⟨113,113,177,177⟩ [s6Step319HeadGFresh,s6Step319HeadFFresh,s6Step319HeadGvFresh,s6Step319HeadFvFresh]=
    some (s6Step319HeadFvAfter,⟨s6Step319HeadFOut,s6Step319HeadGOut,s6Step319HeadFvOut,s6Step319HeadGvOut⟩,(growRow 777 s6Step319HeadGFresh ++ (growRow 795 s6Step319HeadFFresh ++ (growRow 775 s6Step319HeadGvFresh ++ (growRow 776 s6Step319HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step319HeadBank_rows]
  rfl

private theorem s6Step319Front_checked : compileHmrSourceFrontLog s6Step319EntryFBefore s6Step319FrontBank 112 176 ⟨112,110,176,175⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step319FrontLog=some s6Step319FrontPlan := by
  have pairEq : s6Step319FrontPair=⟨s6Step319HeadFRow,s6Step319HeadGRow,s6Step319HeadFvRow,s6Step319HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step319FrontHead=⟨s6Step319ExitFRow,s6Step319ExitGRow,s6Step319ExitFvRow,s6Step319ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step319Add0A=s6Step319FrontHead.f.wires := by decide +kernel
  have gEq : s6Step319Add0B=s6Step319FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step319Add1A=s6Step319FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step319Add1B=s6Step319FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step319EntryFBefore s6Step319FrontBank 112 176 ⟨112,110,176,175⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step319FrontLog s6Step319FrontPlan
  · exact s6Step319Front_entry
  · exact s6Step319EntryBank_checked
  · exact s6Step319Front_sigma
  · rfl
  · exact s6Step319Front_branch
  · rfl
  · simpa only [s6Step319FrontPlan,pairEq] using s6Step319HeadBank_checked
  · simpa only [s6Step319FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step319F4_checked
  · exact s6Step319Counter_checked
  · rfl
  · simpa only [s6Step319FrontPlan,headEq] using s6Step319ExitBank_checked

private theorem s6Step319Complete_explicit_checked : compileHmrEarlyStepLog s6Step319EntryFBefore s6Step319FrontBank 112 176 ⟨112,110,176,175⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] 57 s6Step319CompleteLog=some s6Step319CompletePlan := by
  let Q := s6Step319EarlyControlPlan
  have hq := s6Step319EarlyControl_plan_checked
  have fv1 : s6Step319CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step319CompleteOut.fv.payload[2]?.getD s6Step319CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step319CompleteOut.fv.payload[3]?.getD s6Step319CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step319CompleteOut.fv.payload[4]?.getD s6Step319CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step319EntryFBefore s6Step319EarlyControlArena s6Step319FrontBank 112 176 ⟨112,110,176,175⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] 57 s6Step319CompleteLog s6Step319FrontPlan Q
    s6Step319Front_checked s6Step319Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step319Complete_owned s6Step319Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step319EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] 769 860 s6Step319CompleteOut.fv.second (s6Step319CompleteOut.fv.payload[2]?.getD s6Step319CompleteOut.fv.sign) (s6Step319CompleteOut.fv.payload[3]?.getD s6Step319CompleteOut.fv.sign) (s6Step319CompleteOut.fv.payload[4]?.getD s6Step319CompleteOut.fv.sign) 865 57 s6Step319EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep319Arena : Arena := s6Step319EntryFBefore
def s6PrivateStep319Bank : WindowBank := s6Step319FrontBank
def s6PrivateStep319Spec : HmrSourceWalkStepLog := ⟨112,176,⟨112,110,176,175⟩,57,.early s6Step319CompleteLog⟩
def s6PrivateStep319Plan : HmrSourceStepPlan := .early s6Step319CompletePlan
theorem s6PrivateStep319_source : s6PrivateStep319Spec=s6ObservedLogs304[15] := rfl
theorem s6PrivateStep319_checked : compileHmrSourceStepLog s6PrivateStep319Arena s6PrivateStep319Bank
    s6PrivateStep319Spec.fgWidth s6PrivateStep319Spec.vWidth s6PrivateStep319Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811]
    6 498 319 s6PrivateStep319Spec.need none s6PrivateStep319Spec.log=some s6PrivateStep319Plan := by
  change compileHmrSourceStepLog s6Step319EntryFBefore s6Step319FrontBank 112 176 ⟨112,110,176,175⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] 6 498 319 57 none (.early s6Step319CompleteLog)=some (.early s6Step319CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 319<498)]
  rw [s6Step319Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
