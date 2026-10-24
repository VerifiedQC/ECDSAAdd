import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep247
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

private def s6Step249CompleteMoves : List (Wire × Wire) := [(860,144),(821,402)]

private def s6Step249EarlyControlLog : HmrEarlyControlLog := ⟨[821, 860, 863, 868, 805],[839],[818],[822, 864, 810, 809, 817, 812],[]⟩

private def s6Step249FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [818, 822], [], [863]],[[864], [839], [868], [805]],[[], [], [], []]⟩,[786],[830],[810],[809],[817, 812, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[817, 812, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[810, 809, 817, 812]⟩

private def s6Step249CompleteLog : HmrEarlyStepLog := ⟨s6Step249FrontLog,s6Step249CompleteMoves,s6Step249EarlyControlLog⟩

private def s6Step249ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401],795⟩

private def s6Step249ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841],776⟩

private def s6Step249ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143],777⟩

private def s6Step249ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890],775⟩

private def s6Step249FrontOut : WindowBank := ⟨s6Step249ExitFOut,s6Step249ExitGOut,s6Step249ExitFvOut,s6Step249ExitGvOut⟩

private def s6Step249CompleteOut : WindowBank := s6Step249FrontOut.repacked s6Step249CompleteMoves

private def s6Step249EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<863) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step249EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step249EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step249EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step249EarlyControlPositiveArena,[839],s6Step249EarlyControlEqualityArena,[818],⟨⟨786,false⟩,[⟨⟨839,false⟩,818⟩]⟩⟩

private def s6Step249EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step249EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step249EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<863) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step249EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<863) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step249EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<863) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step249EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step249EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,821⟩,⟨⟨772,false⟩,860⟩,⟨⟨771,false⟩,863⟩,⟨⟨770,false⟩,868⟩,⟨⟨769,false⟩,805⟩]⟩

private def s6Step249EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step249EarlyControlZeroArena,s6Step249EarlyControlZeroPlan,s6Step249EarlyControlClassPlan,s6Step249EarlyControlFlagArena,s6Step249EarlyControlFittedArena,s6Step249EarlyControlHistoryArena,s6Step249EarlyControlSigmaArena,s6Step249EarlyControlOutputArena,s6Step249EarlyControlLog⟩

private def s6Step249CounterWork : List Wire := [810, 809, 817, 812]

private theorem s6Step249Counter_bounded : s6Step249CounterWork.toFinset⊆arenaWires := by norm_num [s6Step249CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step249HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step249CounterDuring : Arena := ⟨s6Step249HeadFvAfter.live∪s6Step249CounterWork.toFinset,Finset.union_subset s6Step249HeadFvAfter.bounded s6Step249Counter_bounded⟩

private def s6Step249EntryFFresh : List Wire := []

private def s6Step249EntryFvFresh : List Wire := []

private def s6Step249EntryGFresh : List Wire := [818, 822]

private def s6Step249EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step249EntryGvFresh : List Wire := [863]

private def s6Step249ExitFExtra : List Wire := [402, 839]

private def s6Step249ExitFvExtra : List Wire := [805]

private def s6Step249ExitGExtra : List Wire := [144, 818, 822, 864]

private def s6Step249ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<144) ∨ (145≤q ∧ q<402) ∨ (403≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step249ExitGvExtra : List Wire := [863, 868]

private def s6Step249Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step249Add0Work : List Wire := [817, 812, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step249Add0_bounded : s6Step249Add0Work.toFinset⊆arenaWires := by
  have h : s6Step249Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step249Add0During : Arena := ⟨s6Step249Add0Arena.live∪s6Step249Add0Work.toFinset,Finset.union_subset s6Step249Add0Arena.bounded s6Step249Add0_bounded⟩

private def s6Step249Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step249Add1Work : List Wire := [817, 812, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step249Add1_bounded : s6Step249Add1Work.toFinset⊆arenaWires := by
  have h : s6Step249Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step249Add1During : Arena := ⟨s6Step249Add1Arena.live∪s6Step249Add1Work.toFinset,Finset.union_subset s6Step249Add1Arena.bounded s6Step249Add1_bounded⟩

private def s6Step249F4FlagArena : Arena := ⟨s6Step249HeadFvAfter.live∪{810},Finset.union_subset s6Step249HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step249F4Plan : HmrHybridF4Plan := ⟨s6Step249F4FlagArena,[810],s6Step249Add0Arena,[809],s6Step249Add0During,s6Step249Add0Work,s6Step249Add1During,s6Step249Add1Work⟩

private def s6Step249HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 839],795⟩

private def s6Step249HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 805],776⟩

private def s6Step249HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 818, 822, 864],777⟩

private def s6Step249HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 863, 868],775⟩

private def s6Step249FrontHead : WindowBank := ⟨s6Step249HeadFOut,s6Step249HeadGOut,s6Step249HeadFvOut,s6Step249HeadGvOut⟩

private def s6Step249EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402],795⟩

private def s6Step249EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841],776⟩

private def s6Step249EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 818, 822],777⟩

private def s6Step249EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 863],775⟩

private def s6Step249FrontPair : WindowBank := ⟨s6Step249EntryFOut,s6Step249EntryGOut,s6Step249EntryFvOut,s6Step249EntryGvOut⟩

private def s6Step249FrontSigmaArena : Arena := ⟨s6Step249EntryGvAfter.live∪{786},Finset.union_subset s6Step249EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step249HeadFFresh : List Wire := [839]

private def s6Step249HeadFvFresh : List Wire := [805]

private def s6Step249HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step249HeadGFresh : List Wire := [864]

private def s6Step249HeadGvFresh : List Wire := [868]

private def s6Step249FrontPlan : HmrSourceFront := ⟨s6Step249EntryGvAfter,s6Step249FrontPair,(growRow 795 s6Step249EntryFFresh ++ (growRow 777 s6Step249EntryGFresh ++ (growRow 776 s6Step249EntryFvFresh ++ (growRow 775 s6Step249EntryGvFresh ++ [])))),s6Step249FrontSigmaArena,[786],s6Step249HeadGBefore,[830],
  s6Step249HeadFvAfter,s6Step249FrontHead,(growRow 777 s6Step249HeadGFresh ++ (growRow 795 s6Step249HeadFFresh ++ (growRow 775 s6Step249HeadGvFresh ++ (growRow 776 s6Step249HeadFvFresh ++ [])))),s6Step249F4Plan,s6Step249CounterDuring,s6Step249CounterWork,s6Step249ExitGvAfter,s6Step249FrontOut,(shrinkRow 777 s6Step249ExitGExtra ++ (shrinkRow 795 s6Step249ExitFExtra ++ (shrinkRow 776 s6Step249ExitFvExtra ++ (shrinkRow 775 s6Step249ExitGvExtra ++ []))))⟩

private def s6Step249CompletePlan : HmrEarlyStepPlan := ⟨s6Step249FrontPlan,s6Step249EarlyControlArena,s6Step249EarlyControlPlan,s6Step249CompleteMoves⟩

private theorem s6Step249Complete_apart : List.Disjoint (s6Step249CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [786, 830, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] := by
  have nd : ((s6Step249CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[786, 830, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step249Complete_owned : (s6Step249CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step249EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step249EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<863) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private def s6Step249CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,402),(403,782),(783,787),(788,790),(791,792),(793,797),(799,800),(802,805),(806,808),(813,815),(821,822),(823,832),(833,839),(840,842),(843,849),(850,860),(861,863),(865,868),(869,896),(897,899),(900,906),(907,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step249CompleteRelocationMove0Borrowed : Arena := ⟨s6Step249ExitGvAfter.live∪{144},Finset.union_subset s6Step249ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step249CompleteRelocationMove1Borrowed : Arena := ⟨s6Step249CompleteRelocationMove0After.live∪{402},Finset.union_subset s6Step249CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s6Step249CompleteRelocation_move0_owned : 860∈s6Step249ExitGvAfter.live := by norm_num [s6Step249ExitGvAfter,arenaWires]

private theorem s6Step249CompleteRelocation_move0_reserve : s6Step249ExitGvAfter.reserve {144}=some s6Step249CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step249ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step249CompleteRelocation_move0_retire : s6Step249CompleteRelocationMove0Borrowed.retireSet {860}=s6Step249CompleteRelocationMove0After := by
  unfold Arena.retireSet s6Step249CompleteRelocationMove0After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step249CompleteRelocationMove0Borrowed,s6Step249ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s6Step249CompleteRelocation_move1_owned : 821∈s6Step249CompleteRelocationMove0After.live := by norm_num [s6Step249CompleteRelocationMove0After,arenaWires]

private theorem s6Step249CompleteRelocation_move1_reserve : s6Step249CompleteRelocationMove0After.reserve {402}=some s6Step249CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step249CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s6Step249CompleteRelocation_move1_retire : s6Step249CompleteRelocationMove1Borrowed.retireSet {821}=s6Step249EarlyControlArena := by
  unfold Arena.retireSet s6Step249EarlyControlArena
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step249CompleteRelocationMove1Borrowed,s6Step249CompleteRelocationMove0After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s6Step249CompleteRelocation_checked : s6Step249ExitGvAfter.checkRepack [(860,144),(821,402)]=some s6Step249EarlyControlArena := by
  have tail2 : s6Step249EarlyControlArena.checkRepack []=some s6Step249EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s6Step249CompleteRelocationMove0After s6Step249CompleteRelocationMove1Borrowed s6Step249EarlyControlArena s6Step249EarlyControlArena 821 402 []
    s6Step249CompleteRelocation_move1_owned s6Step249CompleteRelocation_move1_reserve s6Step249CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s6Step249ExitGvAfter s6Step249CompleteRelocationMove0Borrowed s6Step249CompleteRelocationMove0After s6Step249EarlyControlArena 860 144 [(821,402)]
    s6Step249CompleteRelocation_move0_owned s6Step249CompleteRelocation_move0_reserve s6Step249CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step249Complete_repack : s6Step249ExitGvAfter.checkRepack s6Step249CompleteMoves=some s6Step249EarlyControlArena := by
  simpa only [s6Step249CompleteMoves] using s6Step249CompleteRelocation_checked

private theorem s6Step249EarlyControl_branchOwned : ([830] : List Wire).toFinset⊆s6Step249EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step249EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<863) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step249EarlyControl_branch : compileHmrBranchRetirement s6Step249EarlyControlSigmaArena 830=some s6Step249EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step249EarlyControl_branchOwned
  · ext q
    simp [s6Step249EarlyControlOutputArena,s6Step249EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step249EarlyControl_classEqualityBorrow : s6Step249EarlyControlPositiveArena.checkBorrow (([786, 839] : List Wire).length-1) s6Step249EarlyControlLog.classWork=some s6Step249EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step249EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step249EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step249EarlyControlEqualityArena,s6Step249EarlyControlPositiveArena,s6Step249EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step249EarlyControl_classEqualityOwned : ([786, 839] : List Wire).toFinset⊆s6Step249EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step249EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step249EarlyControl_classEquality : compileHmrEqualityLog s6Step249EarlyControlPositiveArena [786, 839] 0 s6Step249EarlyControlLog.classWork=some (s6Step249EarlyControlEqualityArena,s6Step249EarlyControlLog.classWork,s6Step249EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step249EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step249EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step249EarlyControl_classOwned : ([769, 805, 786] : List Wire).toFinset⊆s6Step249EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step249EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step249EarlyControl_positiveBorrow : s6Step249EarlyControlZeroArena.checkBorrow (1) s6Step249EarlyControlLog.positiveWork=some s6Step249EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step249EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step249EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step249EarlyControlPositiveArena,s6Step249EarlyControlZeroArena,s6Step249EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step249EarlyControl_class : compileHmrSourceClassLog s6Step249EarlyControlZeroArena false 769 s6Step249EarlyControlZeroPlan.top 0 786 s6Step249EarlyControlLog.positiveWork s6Step249EarlyControlLog.classWork=some s6Step249EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step249EarlyControlClassPlan s6Step249EarlyControlZeroArena false 769 s6Step249EarlyControlZeroPlan.top 0 786
  constructor
  · decide +kernel
  · exact s6Step249EarlyControl_classOwned
  · exact s6Step249EarlyControl_positiveBorrow
  · exact s6Step249EarlyControl_classEquality

private theorem s6Step249EarlyControl_entryRecordOwned : ([830, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] : List Wire).toFinset⊆s6Step249EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step249EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<863) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step249EarlyControl_entrySigmaOwned : ([786, 254] : List Wire).toFinset⊆s6Step249EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step249EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<863) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step249EarlyControl_fitBorrow : s6Step249EarlyControlFlagArena.checkBorrow ((51-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] : List Wire).length)) s6Step249EarlyControlLog.recordFresh=some s6Step249EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step249EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step249EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step249EarlyControlFittedArena,s6Step249EarlyControlFlagArena,s6Step249EarlyControlLog,arenaWires]

private theorem s6Step249EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] : List Wire).toFinset⊆s6Step249EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step249EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step249EarlyControl_fit : compileHmrRecordGrowLog s6Step249EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 51 s6Step249EarlyControlLog.recordFresh=some s6Step249EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step249EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step249EarlyControl_fitBorrow

private theorem s6Step249EarlyControl_flagsBorrow : s6Step249EarlyControlEqualityArena.checkBorrow (6) s6Step249EarlyControlLog.flagWork=some s6Step249EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step249EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step249EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step249EarlyControlFlagArena,s6Step249EarlyControlEqualityArena,s6Step249EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step249EarlyControl_flagsOwned : ([818, 253, 252, 251] : List Wire).toFinset⊆s6Step249EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step249EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step249EarlyControl_flags : compileHmrFlagsLog s6Step249EarlyControlClassPlan.equalityArena s6Step249EarlyControlClassPlan.equality.top 253 252 251 s6Step249EarlyControlLog.flagWork=some s6Step249EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step249EarlyControl_flagsOwned⟩
  · exact s6Step249EarlyControl_flagsBorrow

private theorem s6Step249EarlyControl_historyBorrow : s6Step249EarlyControlArena.checkBorrow ((51-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] : List Wire).length)) s6Step249EarlyControlLog.recordFresh=some s6Step249EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step249EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step249EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<863) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step249EarlyControlHistoryArena,s6Step249EarlyControlArena,s6Step249EarlyControlLog,arenaWires]

private theorem s6Step249EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] : List Wire).toFinset⊆s6Step249EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step249EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<863) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step249EarlyControl_history : compileHmrRecordGrowLog s6Step249EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 51 s6Step249EarlyControlLog.recordFresh=some s6Step249EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step249EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step249EarlyControl_historyBorrow

private theorem s6Step249EarlyControl_sigmaOwned : ([254, 786] : List Wire).toFinset⊆s6Step249EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step249EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<863) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step249EarlyControl_sigmaReleaseOwned : ([786] : List Wire).toFinset⊆s6Step249EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step249EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<863) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step249EarlyControl_sigmaRelease : s6Step249EarlyControlHistoryArena.release {786} (fun _ => false)=some s6Step249EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step249EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step249EarlyControlSigmaArena,s6Step249EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step249EarlyControl_sigma : compileHmrSigmaDropLog s6Step249EarlyControlHistoryArena false 0 0 254 786 []=some s6Step249EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step249EarlyControl_sigmaOwned⟩
  · exact s6Step249EarlyControl_sigmaRelease

private theorem s6Step249EarlyControl_zeroBorrow : s6Step249EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step249EarlyControlLog.zeroWork=some s6Step249EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step249EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step249EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<863) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step249EarlyControlZeroArena,s6Step249EarlyControlArena,s6Step249EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step249EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step249EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step249EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<863) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step249EarlyControl_zero : compileHmrEqualityLog s6Step249EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step249EarlyControlLog.zeroWork=some (s6Step249EarlyControlZeroArena,s6Step249EarlyControlLog.zeroWork,s6Step249EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step249EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step249EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step249EarlyControl_logged : s6Step249EarlyControlPlan.Logged s6Step249EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 769 786 254 253 252 251 830 51 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step249EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step249EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step249EarlyControl_zero
  · exact s6Step249EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step249EarlyControl_flags
  · exact s6Step249EarlyControl_fit
  · exact s6Step249EarlyControl_history
  · exact s6Step249EarlyControl_sigma
  · exact s6Step249EarlyControl_branch

private theorem s6Step249EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step249EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 769 786 254 253 252 251 830 51 s6Step249EarlyControlLog=some s6Step249EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step249EarlyControlPlan s6Step249EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 769 786 254 253 252 251 830 51 s6Step249EarlyControl_logged

private def s6Step249EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step249EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402],795⟩

private def s6Step249EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841],776⟩

private def s6Step249EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144],777⟩

private def s6Step249EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890],775⟩

private def s6Step249FrontBank : WindowBank := ⟨s6Step249EntryFRow,s6Step249EntryGRow,s6Step249EntryFvRow,s6Step249EntryGvRow⟩

private def s6Step249Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 839, 795]

private def s6Step249Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 818, 822, 864, 777]

private def s6Step249Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 805, 776]

private def s6Step249Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 863, 868, 775]

private theorem s6Step249Counter_apart : Disjoint s6Step249HeadFvAfter.live s6Step249CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step249HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step249Counter_borrowed : s6Step249HeadFvAfter.checkBorrow 4 s6Step249CounterWork=some s6Step249CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step249HeadFvAfter s6Step249CounterDuring s6Step249CounterWork.toFinset s6Step249Counter_bounded s6Step249Counter_apart rfl

private theorem s6Step249Counter_owned : (786::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step249HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step249HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step249Counter_checked : compileHmrCounterStepLog s6Step249HeadFvAfter true 786 [774, 773, 772, 771, 770, 769] s6Step249CounterWork=some s6Step249CounterDuring := by
  have owned : ∀q∈786::[774, 773, 772, 771, 770, 769],q∈s6Step249HeadFvAfter.live := fun q hq => s6Step249Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step249Counter_borrowed

private def s6Step249EntryFAfter : Arena := s6Step249EntryFBefore

private theorem s6Step249EntryBank_incomingDistinct : ([s6Step249EntryFRow,s6Step249EntryGRow,s6Step249EntryFvRow,s6Step249EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step249EntryF_Incoming : rowsOwned s6Step249EntryFBefore [s6Step249EntryFRow,s6Step249EntryGRow,s6Step249EntryFvRow,s6Step249EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step249EntryFRow,s6Step249EntryGRow,s6Step249EntryFvRow,s6Step249EntryGvRow] 0 s6Step249EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step249EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step249EntryBank_outgoingOwned : rowsOwned s6Step249EntryGvAfter [s6Step249EntryFOut,s6Step249EntryGOut,s6Step249EntryFvOut,s6Step249EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step249EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step249EntryF_Outgoing : rowsOwned s6Step249EntryGvAfter [s6Step249EntryFOut,s6Step249EntryGOut,s6Step249EntryFvOut,s6Step249EntryGvOut] :=
  hmrRows_owned_drop s6Step249EntryGvAfter [s6Step249EntryFOut,s6Step249EntryGOut,s6Step249EntryFvOut,s6Step249EntryGvOut] 0 s6Step249EntryBank_outgoingOwned

private theorem s6Step249EntryF_distinct : (s6Step249EntryFRow.sign::s6Step249EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step249EntryF_owned : (s6Step249EntryFRow.sign::s6Step249EntryFRow.payload).toFinset⊆s6Step249EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step249EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step249EntryF_reserved : s6Step249EntryFBefore.reserve s6Step249EntryFFresh.toFinset=some s6Step249EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step249EntryFFresh,arenaWires]
  · norm_num [s6Step249EntryFBefore,s6Step249EntryFFresh,arenaWires]
  · simp only [s6Step249EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step249EntryF_checked : planRowResizeLog s6Step249EntryFBefore s6Step249EntryFRow 147 s6Step249EntryFFresh=
    some (s6Step249EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402],795⟩,growRow 795 s6Step249EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step249EntryFBefore s6Step249EntryFAfter s6Step249EntryFRow 147 s6Step249EntryFFresh
    s6Step249EntryF_distinct s6Step249EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step249EntryF_reserved
  have rowEq : WindowRow.mk (s6Step249EntryFRow.payload++s6Step249EntryFFresh) s6Step249EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step249EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step249EntryFvAfter : Arena := s6Step249EntryGAfter

private def s6Step249EntryFvBefore : Arena := s6Step249EntryGAfter

private theorem s6Step249EntryFv_Incoming : rowsOwned s6Step249EntryFvBefore [s6Step249EntryFvRow,s6Step249EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step249EntryFRow,s6Step249EntryGRow,s6Step249EntryFvRow,s6Step249EntryGvRow] 2 s6Step249EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step249EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step249EntryFv_Outgoing : rowsOwned s6Step249EntryGvAfter [s6Step249EntryFvOut,s6Step249EntryGvOut] :=
  hmrRows_owned_drop s6Step249EntryGvAfter [s6Step249EntryFOut,s6Step249EntryGOut,s6Step249EntryFvOut,s6Step249EntryGvOut] 2 s6Step249EntryBank_outgoingOwned

private theorem s6Step249EntryFv_distinct : (s6Step249EntryFvRow.sign::s6Step249EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step249EntryFv_owned : (s6Step249EntryFvRow.sign::s6Step249EntryFvRow.payload).toFinset⊆s6Step249EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step249EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step249EntryFv_reserved : s6Step249EntryFvBefore.reserve s6Step249EntryFvFresh.toFinset=some s6Step249EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step249EntryFvFresh,arenaWires]
  · norm_num [s6Step249EntryFvBefore,s6Step249EntryGAfter,s6Step249EntryFvFresh,arenaWires]
  · simp only [s6Step249EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step249EntryFv_checked : planRowResizeLog s6Step249EntryFvBefore s6Step249EntryFvRow 140 s6Step249EntryFvFresh=
    some (s6Step249EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841],776⟩,growRow 776 s6Step249EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step249EntryFvBefore s6Step249EntryFvAfter s6Step249EntryFvRow 140 s6Step249EntryFvFresh
    s6Step249EntryFv_distinct s6Step249EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step249EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step249EntryFvRow.payload++s6Step249EntryFvFresh) s6Step249EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step249EntryGBefore : Arena := s6Step249EntryFBefore

private theorem s6Step249EntryG_Incoming : rowsOwned s6Step249EntryGBefore [s6Step249EntryGRow,s6Step249EntryFvRow,s6Step249EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step249EntryFRow,s6Step249EntryGRow,s6Step249EntryFvRow,s6Step249EntryGvRow] 1 s6Step249EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step249EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step249EntryG_Outgoing : rowsOwned s6Step249EntryGvAfter [s6Step249EntryGOut,s6Step249EntryFvOut,s6Step249EntryGvOut] :=
  hmrRows_owned_drop s6Step249EntryGvAfter [s6Step249EntryFOut,s6Step249EntryGOut,s6Step249EntryFvOut,s6Step249EntryGvOut] 1 s6Step249EntryBank_outgoingOwned

private theorem s6Step249EntryG_distinct : (s6Step249EntryGRow.sign::s6Step249EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step249EntryG_owned : (s6Step249EntryGRow.sign::s6Step249EntryGRow.payload).toFinset⊆s6Step249EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step249EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step249EntryG_reserved : s6Step249EntryGBefore.reserve s6Step249EntryGFresh.toFinset=some s6Step249EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step249EntryGFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s6Step249EntryGBefore,s6Step249EntryFBefore,s6Step249EntryGFresh,arenaWires]
  · ext q
    simp only [s6Step249EntryGAfter,s6Step249EntryGBefore,s6Step249EntryFBefore,s6Step249EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step249EntryG_checked : planRowResizeLog s6Step249EntryGBefore s6Step249EntryGRow 147 s6Step249EntryGFresh=
    some (s6Step249EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 818, 822],777⟩,growRow 777 s6Step249EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step249EntryGBefore s6Step249EntryGAfter s6Step249EntryGRow 147 s6Step249EntryGFresh
    s6Step249EntryG_distinct s6Step249EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step249EntryG_reserved
  have rowEq : WindowRow.mk (s6Step249EntryGRow.payload++s6Step249EntryGFresh) s6Step249EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 818, 822],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step249EntryGvBefore : Arena := s6Step249EntryGAfter

private theorem s6Step249EntryGv_Incoming : rowsOwned s6Step249EntryGvBefore [s6Step249EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step249EntryFRow,s6Step249EntryGRow,s6Step249EntryFvRow,s6Step249EntryGvRow] 3 s6Step249EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step249EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step249EntryGv_Outgoing : rowsOwned s6Step249EntryGvAfter [s6Step249EntryGvOut] :=
  hmrRows_owned_drop s6Step249EntryGvAfter [s6Step249EntryFOut,s6Step249EntryGOut,s6Step249EntryFvOut,s6Step249EntryGvOut] 3 s6Step249EntryBank_outgoingOwned

private theorem s6Step249EntryGv_distinct : (s6Step249EntryGvRow.sign::s6Step249EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step249EntryGv_owned : (s6Step249EntryGvRow.sign::s6Step249EntryGvRow.payload).toFinset⊆s6Step249EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step249EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step249EntryGv_reserved : s6Step249EntryGvBefore.reserve s6Step249EntryGvFresh.toFinset=some s6Step249EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step249EntryGvFresh,arenaWires]
  · norm_num [s6Step249EntryGvBefore,s6Step249EntryGAfter,s6Step249EntryGvFresh,arenaWires]
  · ext q
    simp only [s6Step249EntryGvAfter,s6Step249EntryGvBefore,s6Step249EntryGAfter,s6Step249EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step249EntryGv_checked : planRowResizeLog s6Step249EntryGvBefore s6Step249EntryGvRow 140 s6Step249EntryGvFresh=
    some (s6Step249EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 863],775⟩,growRow 775 s6Step249EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step249EntryGvBefore s6Step249EntryGvAfter s6Step249EntryGvRow 140 s6Step249EntryGvFresh
    s6Step249EntryGv_distinct s6Step249EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step249EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step249EntryGvRow.payload++s6Step249EntryGvFresh) s6Step249EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 863],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step249EntryBank_rows : planWindowRowsLog s6Step249EntryFBefore [(s6Step249EntryFRow,147),(s6Step249EntryGRow,147),(s6Step249EntryFvRow,140),(s6Step249EntryGvRow,140)] [s6Step249EntryFFresh,s6Step249EntryGFresh,s6Step249EntryFvFresh,s6Step249EntryGvFresh]=
    some (s6Step249EntryGvAfter,[s6Step249EntryFOut,s6Step249EntryGOut,s6Step249EntryFvOut,s6Step249EntryGvOut],(growRow 795 s6Step249EntryFFresh ++ (growRow 777 s6Step249EntryGFresh ++ (growRow 776 s6Step249EntryFvFresh ++ (growRow 775 s6Step249EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step249EntryGvAfter [] []=some (s6Step249EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step249EntryGvBefore s6Step249EntryGvAfter s6Step249EntryGvAfter
    s6Step249EntryGvRow s6Step249EntryGvOut 140 s6Step249EntryGvFresh [] [] []
    (growRow 775 s6Step249EntryGvFresh) ([]) s6Step249EntryGv_Incoming s6Step249EntryGv_checked h4 s6Step249EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step249EntryFvBefore s6Step249EntryFvAfter s6Step249EntryGvAfter
    s6Step249EntryFvRow s6Step249EntryFvOut 140 s6Step249EntryFvFresh [(s6Step249EntryGvRow,140)] [s6Step249EntryGvFresh] [s6Step249EntryGvOut]
    (growRow 776 s6Step249EntryFvFresh) ((growRow 775 s6Step249EntryGvFresh ++ [])) s6Step249EntryFv_Incoming s6Step249EntryFv_checked h3 s6Step249EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step249EntryGBefore s6Step249EntryGAfter s6Step249EntryGvAfter
    s6Step249EntryGRow s6Step249EntryGOut 147 s6Step249EntryGFresh [(s6Step249EntryFvRow,140),(s6Step249EntryGvRow,140)] [s6Step249EntryFvFresh,s6Step249EntryGvFresh] [s6Step249EntryFvOut,s6Step249EntryGvOut]
    (growRow 777 s6Step249EntryGFresh) ((growRow 776 s6Step249EntryFvFresh ++ (growRow 775 s6Step249EntryGvFresh ++ []))) s6Step249EntryG_Incoming s6Step249EntryG_checked h2 s6Step249EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step249EntryFBefore s6Step249EntryFAfter s6Step249EntryGvAfter
    s6Step249EntryFRow s6Step249EntryFOut 147 s6Step249EntryFFresh [(s6Step249EntryGRow,147),(s6Step249EntryFvRow,140),(s6Step249EntryGvRow,140)] [s6Step249EntryGFresh,s6Step249EntryFvFresh,s6Step249EntryGvFresh] [s6Step249EntryGOut,s6Step249EntryFvOut,s6Step249EntryGvOut]
    (growRow 795 s6Step249EntryFFresh) ((growRow 777 s6Step249EntryGFresh ++ (growRow 776 s6Step249EntryFvFresh ++ (growRow 775 s6Step249EntryGvFresh ++ [])))) s6Step249EntryF_Incoming s6Step249EntryF_checked h1 s6Step249EntryF_Outgoing
  exact h0

private theorem s6Step249EntryBank_checked : compileHmrBankResizeLog .entry s6Step249EntryFBefore ⟨s6Step249EntryFRow,s6Step249EntryGRow,s6Step249EntryFvRow,s6Step249EntryGvRow⟩ ⟨147,147,140,140⟩ [s6Step249EntryFFresh,s6Step249EntryGFresh,s6Step249EntryFvFresh,s6Step249EntryGvFresh]=
    some (s6Step249EntryGvAfter,⟨s6Step249EntryFOut,s6Step249EntryGOut,s6Step249EntryFvOut,s6Step249EntryGvOut⟩,(growRow 795 s6Step249EntryFFresh ++ (growRow 777 s6Step249EntryGFresh ++ (growRow 776 s6Step249EntryFvFresh ++ (growRow 775 s6Step249EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step249EntryBank_rows]
  rfl

private def s6Step249ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<144) ∨ (145≤q ∧ q<402) ∨ (403≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step249ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<144) ∨ (145≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step249ExitFBefore : Arena := s6Step249ExitGAfter

private def s6Step249ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 839],795⟩

private def s6Step249ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 805],776⟩

private def s6Step249ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 818, 822, 864],777⟩

private def s6Step249ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 863, 868],775⟩

private theorem s6Step249ExitBank_incomingDistinct : ([s6Step249ExitGRow,s6Step249ExitFRow,s6Step249ExitFvRow,s6Step249ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step249ExitF_Incoming : rowsOwned s6Step249ExitFBefore [s6Step249ExitFRow,s6Step249ExitFvRow,s6Step249ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step249ExitGRow,s6Step249ExitFRow,s6Step249ExitFvRow,s6Step249ExitGvRow] 1 s6Step249ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step249ExitFBefore (fun q => (0≤q ∧ q<144) ∨ (145≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step249ExitBank_outgoingOwned : rowsOwned s6Step249ExitGvAfter [s6Step249ExitGOut,s6Step249ExitFOut,s6Step249ExitFvOut,s6Step249ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step249ExitGvAfter (fun q => (0≤q ∧ q<144) ∨ (145≤q ∧ q<402) ∨ (403≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step249ExitF_Outgoing : rowsOwned s6Step249ExitGvAfter [s6Step249ExitFOut,s6Step249ExitFvOut,s6Step249ExitGvOut] :=
  hmrRows_owned_drop s6Step249ExitGvAfter [s6Step249ExitGOut,s6Step249ExitFOut,s6Step249ExitFvOut,s6Step249ExitGvOut] 1 s6Step249ExitBank_outgoingOwned

private theorem s6Step249ExitF_distinct : (s6Step249ExitFRow.sign::s6Step249ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step249ExitF_owned : (s6Step249ExitFRow.sign::s6Step249ExitFRow.payload).toFinset⊆s6Step249ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step249ExitFBefore (fun q => (0≤q ∧ q<144) ∨ (145≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step249ExitF_retired : s6Step249ExitFBefore.retireSet s6Step249ExitFExtra.toFinset=s6Step249ExitFAfter := by
  unfold Arena.retireSet s6Step249ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step249ExitFBefore,s6Step249ExitGAfter,s6Step249ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step249ExitF_checked : planRowResizeLog s6Step249ExitFBefore s6Step249ExitFRow 146 []=
    some (s6Step249ExitFAfter,s6Step249ExitFOut,shrinkRow 795 s6Step249ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step249ExitFBefore s6Step249ExitFRow 146 s6Step249ExitF_distinct s6Step249ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step249ExitFRow.payload.take 146) s6Step249ExitFRow.sign=s6Step249ExitFOut := by decide +kernel
  have hi : s6Step249ExitFRow.payload.drop 146=s6Step249ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step249ExitF_retired] at result
  exact result

private def s6Step249ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<144) ∨ (145≤q ∧ q<402) ∨ (403≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step249ExitFvBefore : Arena := s6Step249ExitFAfter

private theorem s6Step249ExitFv_Incoming : rowsOwned s6Step249ExitFvBefore [s6Step249ExitFvRow,s6Step249ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step249ExitGRow,s6Step249ExitFRow,s6Step249ExitFvRow,s6Step249ExitGvRow] 2 s6Step249ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step249ExitFvBefore (fun q => (0≤q ∧ q<144) ∨ (145≤q ∧ q<402) ∨ (403≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step249ExitFv_Outgoing : rowsOwned s6Step249ExitGvAfter [s6Step249ExitFvOut,s6Step249ExitGvOut] :=
  hmrRows_owned_drop s6Step249ExitGvAfter [s6Step249ExitGOut,s6Step249ExitFOut,s6Step249ExitFvOut,s6Step249ExitGvOut] 2 s6Step249ExitBank_outgoingOwned

private theorem s6Step249ExitFv_distinct : (s6Step249ExitFvRow.sign::s6Step249ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step249ExitFv_owned : (s6Step249ExitFvRow.sign::s6Step249ExitFvRow.payload).toFinset⊆s6Step249ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step249ExitFvBefore (fun q => (0≤q ∧ q<144) ∨ (145≤q ∧ q<402) ∨ (403≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step249ExitFv_retired : s6Step249ExitFvBefore.retireSet s6Step249ExitFvExtra.toFinset=s6Step249ExitFvAfter := by
  unfold Arena.retireSet s6Step249ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step249ExitFvBefore,s6Step249ExitFAfter,s6Step249ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step249ExitFv_checked : planRowResizeLog s6Step249ExitFvBefore s6Step249ExitFvRow 140 []=
    some (s6Step249ExitFvAfter,s6Step249ExitFvOut,shrinkRow 776 s6Step249ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step249ExitFvBefore s6Step249ExitFvRow 140 s6Step249ExitFv_distinct s6Step249ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step249ExitFvRow.payload.take 140) s6Step249ExitFvRow.sign=s6Step249ExitFvOut := by decide +kernel
  have hi : s6Step249ExitFvRow.payload.drop 140=s6Step249ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step249ExitFv_retired] at result
  exact result

private def s6Step249ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step249ExitG_Incoming : rowsOwned s6Step249ExitGBefore [s6Step249ExitGRow,s6Step249ExitFRow,s6Step249ExitFvRow,s6Step249ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step249ExitGRow,s6Step249ExitFRow,s6Step249ExitFvRow,s6Step249ExitGvRow] 0 s6Step249ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step249ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step249ExitG_Outgoing : rowsOwned s6Step249ExitGvAfter [s6Step249ExitGOut,s6Step249ExitFOut,s6Step249ExitFvOut,s6Step249ExitGvOut] :=
  hmrRows_owned_drop s6Step249ExitGvAfter [s6Step249ExitGOut,s6Step249ExitFOut,s6Step249ExitFvOut,s6Step249ExitGvOut] 0 s6Step249ExitBank_outgoingOwned

private theorem s6Step249ExitG_distinct : (s6Step249ExitGRow.sign::s6Step249ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step249ExitG_owned : (s6Step249ExitGRow.sign::s6Step249ExitGRow.payload).toFinset⊆s6Step249ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step249ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step249ExitG_retired : s6Step249ExitGBefore.retireSet s6Step249ExitGExtra.toFinset=s6Step249ExitGAfter := by
  unfold Arena.retireSet s6Step249ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step249ExitGBefore,s6Step249ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step249ExitG_checked : planRowResizeLog s6Step249ExitGBefore s6Step249ExitGRow 144 []=
    some (s6Step249ExitGAfter,s6Step249ExitGOut,shrinkRow 777 s6Step249ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step249ExitGBefore s6Step249ExitGRow 144 s6Step249ExitG_distinct s6Step249ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step249ExitGRow.payload.take 144) s6Step249ExitGRow.sign=s6Step249ExitGOut := by decide +kernel
  have hi : s6Step249ExitGRow.payload.drop 144=s6Step249ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step249ExitG_retired] at result
  exact result

private def s6Step249ExitGvBefore : Arena := s6Step249ExitFvAfter

private theorem s6Step249ExitGv_Incoming : rowsOwned s6Step249ExitGvBefore [s6Step249ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step249ExitGRow,s6Step249ExitFRow,s6Step249ExitFvRow,s6Step249ExitGvRow] 3 s6Step249ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step249ExitGvBefore (fun q => (0≤q ∧ q<144) ∨ (145≤q ∧ q<402) ∨ (403≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step249ExitGv_Outgoing : rowsOwned s6Step249ExitGvAfter [s6Step249ExitGvOut] :=
  hmrRows_owned_drop s6Step249ExitGvAfter [s6Step249ExitGOut,s6Step249ExitFOut,s6Step249ExitFvOut,s6Step249ExitGvOut] 3 s6Step249ExitBank_outgoingOwned

private theorem s6Step249ExitGv_distinct : (s6Step249ExitGvRow.sign::s6Step249ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step249ExitGv_owned : (s6Step249ExitGvRow.sign::s6Step249ExitGvRow.payload).toFinset⊆s6Step249ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step249ExitGvBefore (fun q => (0≤q ∧ q<144) ∨ (145≤q ∧ q<402) ∨ (403≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step249ExitGv_retired : s6Step249ExitGvBefore.retireSet s6Step249ExitGvExtra.toFinset=s6Step249ExitGvAfter := by
  unfold Arena.retireSet s6Step249ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step249ExitGvBefore,s6Step249ExitFvAfter,s6Step249ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step249ExitGv_checked : planRowResizeLog s6Step249ExitGvBefore s6Step249ExitGvRow 139 []=
    some (s6Step249ExitGvAfter,s6Step249ExitGvOut,shrinkRow 775 s6Step249ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step249ExitGvBefore s6Step249ExitGvRow 139 s6Step249ExitGv_distinct s6Step249ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step249ExitGvRow.payload.take 139) s6Step249ExitGvRow.sign=s6Step249ExitGvOut := by decide +kernel
  have hi : s6Step249ExitGvRow.payload.drop 139=s6Step249ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step249ExitGv_retired] at result
  exact result

private theorem s6Step249ExitBank_rows : planWindowRowsLog s6Step249ExitGBefore [(s6Step249ExitGRow,144),(s6Step249ExitFRow,146),(s6Step249ExitFvRow,140),(s6Step249ExitGvRow,139)] [[],[],[],[]]=
    some (s6Step249ExitGvAfter,[s6Step249ExitGOut,s6Step249ExitFOut,s6Step249ExitFvOut,s6Step249ExitGvOut],(shrinkRow 777 s6Step249ExitGExtra ++ (shrinkRow 795 s6Step249ExitFExtra ++ (shrinkRow 776 s6Step249ExitFvExtra ++ (shrinkRow 775 s6Step249ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step249ExitGvAfter [] []=some (s6Step249ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step249ExitGvBefore s6Step249ExitGvAfter s6Step249ExitGvAfter
    s6Step249ExitGvRow s6Step249ExitGvOut 139 [] [] [] []
    (shrinkRow 775 s6Step249ExitGvExtra) ([]) s6Step249ExitGv_Incoming s6Step249ExitGv_checked h4 s6Step249ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step249ExitFvBefore s6Step249ExitFvAfter s6Step249ExitGvAfter
    s6Step249ExitFvRow s6Step249ExitFvOut 140 [] [(s6Step249ExitGvRow,139)] [[]] [s6Step249ExitGvOut]
    (shrinkRow 776 s6Step249ExitFvExtra) ((shrinkRow 775 s6Step249ExitGvExtra ++ [])) s6Step249ExitFv_Incoming s6Step249ExitFv_checked h3 s6Step249ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step249ExitFBefore s6Step249ExitFAfter s6Step249ExitGvAfter
    s6Step249ExitFRow s6Step249ExitFOut 146 [] [(s6Step249ExitFvRow,140),(s6Step249ExitGvRow,139)] [[],[]] [s6Step249ExitFvOut,s6Step249ExitGvOut]
    (shrinkRow 795 s6Step249ExitFExtra) ((shrinkRow 776 s6Step249ExitFvExtra ++ (shrinkRow 775 s6Step249ExitGvExtra ++ []))) s6Step249ExitF_Incoming s6Step249ExitF_checked h2 s6Step249ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step249ExitGBefore s6Step249ExitGAfter s6Step249ExitGvAfter
    s6Step249ExitGRow s6Step249ExitGOut 144 [] [(s6Step249ExitFRow,146),(s6Step249ExitFvRow,140),(s6Step249ExitGvRow,139)] [[],[],[]] [s6Step249ExitFOut,s6Step249ExitFvOut,s6Step249ExitGvOut]
    (shrinkRow 777 s6Step249ExitGExtra) ((shrinkRow 795 s6Step249ExitFExtra ++ (shrinkRow 776 s6Step249ExitFvExtra ++ (shrinkRow 775 s6Step249ExitGvExtra ++ [])))) s6Step249ExitG_Incoming s6Step249ExitG_checked h1 s6Step249ExitG_Outgoing
  exact h0

private theorem s6Step249ExitBank_checked : compileHmrBankResizeLog .exit s6Step249ExitGBefore ⟨s6Step249ExitFRow,s6Step249ExitGRow,s6Step249ExitFvRow,s6Step249ExitGvRow⟩ ⟨146,144,140,139⟩ [[],[],[],[]]=
    some (s6Step249ExitGvAfter,⟨s6Step249ExitFOut,s6Step249ExitGOut,s6Step249ExitFvOut,s6Step249ExitGvOut⟩,(shrinkRow 777 s6Step249ExitGExtra ++ (shrinkRow 795 s6Step249ExitFExtra ++ (shrinkRow 776 s6Step249ExitFvExtra ++ (shrinkRow 775 s6Step249ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step249ExitBank_rows]
  rfl

private theorem s6Step249Add0_apart : Disjoint s6Step249Add0Arena.live s6Step249Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step249Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step249Add0_card : s6Step249Add0Arena.live.card=899 := by
  decide +kernel

private theorem s6Step249Add0_borrowed : s6Step249Add0Arena.checkBorrow (hmrHybridCount s6Step249Add0Arena s6Step249Add0B.length) s6Step249Add0Work=some s6Step249Add0During := by
  have len : s6Step249Add0Work.length=hmrHybridCount s6Step249Add0Arena s6Step249Add0B.length := by
    rw [hmrHybridCount,s6Step249Add0_card]
    decide +kernel
  have nd : s6Step249Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step249Add0Arena s6Step249Add0During s6Step249Add0Work.toFinset s6Step249Add0_bounded s6Step249Add0_apart rfl

private theorem s6Step249Add0_distinct : (810::830::809::(s6Step249Add0A++s6Step249Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step249Add0_owned : (810::830::809::(s6Step249Add0A++s6Step249Add0B)).toFinset⊆s6Step249Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step249Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step249Add0_checked : compileHmrHybridCinLog s6Step249Add0Arena 830 810 809 s6Step249Add0A s6Step249Add0B s6Step249Add0Work=some s6Step249Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step249Add0Arena s6Step249Add0During 830 810 809 s6Step249Add0A s6Step249Add0B s6Step249Add0Work
    (by decide +kernel) (by decide +kernel) s6Step249Add0_distinct
    (fun q hq => s6Step249Add0_owned (List.mem_toFinset.mpr hq)) s6Step249Add0_borrowed

private theorem s6Step249Add1_apart : Disjoint s6Step249Add1Arena.live s6Step249Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step249Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step249Add1_card : s6Step249Add1Arena.live.card=899 := by
  decide +kernel

private theorem s6Step249Add1_borrowed : s6Step249Add1Arena.checkBorrow (hmrHybridCount s6Step249Add1Arena s6Step249Add1B.length) s6Step249Add1Work=some s6Step249Add1During := by
  have len : s6Step249Add1Work.length=hmrHybridCount s6Step249Add1Arena s6Step249Add1B.length := by
    rw [hmrHybridCount,s6Step249Add1_card]
    decide +kernel
  have nd : s6Step249Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step249Add1Arena s6Step249Add1During s6Step249Add1Work.toFinset s6Step249Add1_bounded s6Step249Add1_apart rfl

private theorem s6Step249Add1_distinct : (810::830::809::(s6Step249Add1A++s6Step249Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step249Add1_owned : (810::830::809::(s6Step249Add1A++s6Step249Add1B)).toFinset⊆s6Step249Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step249Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step249Add1_checked : compileHmrHybridCinLog s6Step249Add1Arena 830 810 809 s6Step249Add1A s6Step249Add1B s6Step249Add1Work=some s6Step249Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step249Add1Arena s6Step249Add1During 830 810 809 s6Step249Add1A s6Step249Add1B s6Step249Add1Work
    (by decide +kernel) (by decide +kernel) s6Step249Add1_distinct
    (fun q hq => s6Step249Add1_owned (List.mem_toFinset.mpr hq)) s6Step249Add1_borrowed

private theorem s6Step249F4_apart : Disjoint (s6Step249Add0A++s6Step249Add0B).toFinset (s6Step249Add1A++s6Step249Add1B).toFinset := by
  have nd : ((s6Step249Add0A++s6Step249Add0B)++(s6Step249Add1A++s6Step249Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step249F4_carry : s6Step249F4FlagArena.checkBorrow 1 [809]=some s6Step249Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step249F4FlagArena,s6Step249HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step249F4FlagArena,s6Step249HeadFvAfter,s6Step249Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step249F4_distinct : (786::830::810::809::((s6Step249Add0A++s6Step249Add1A)++(s6Step249Add0B++s6Step249Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step249F4_flag : s6Step249HeadFvAfter.checkBorrow 1 [810]=some s6Step249F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step249HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step249F4_owned : (786::830::((s6Step249Add0A++s6Step249Add1A)++(s6Step249Add0B++s6Step249Add1B))).toFinset⊆s6Step249HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step249HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step249F4_checked : compileHmrHybridF4Log s6Step249HeadFvAfter 786 830 s6Step249Add0A s6Step249Add0B s6Step249Add1A s6Step249Add1B [810] [809] s6Step249Add0Work s6Step249Add1Work=some s6Step249F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step249HeadFvAfter s6Step249F4FlagArena s6Step249Add0Arena s6Step249Add0During s6Step249Add1During 786 830
    s6Step249Add0A s6Step249Add0B s6Step249Add1A s6Step249Add1B [810] [809] s6Step249Add0Work s6Step249Add1Work
    (fun q hq => s6Step249F4_owned (List.mem_toFinset.mpr hq)) s6Step249F4_flag s6Step249F4_carry
    s6Step249F4_distinct s6Step249F4_apart s6Step249Add0_checked s6Step249Add1_checked

private theorem s6Step249Front_branch : s6Step249FrontSigmaArena.checkBorrow 1 [830]=some s6Step249HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step249FrontSigmaArena,s6Step249EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step249FrontSigmaArena,s6Step249EntryGvAfter,s6Step249HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step249Front_entry : HmrFrontEntryValid s6Step249EntryFBefore s6Step249FrontBank 147 140 ⟨146,144,140,139⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step249FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step249EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step249EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step249FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step249Front_sigma : s6Step249EntryGvAfter.checkBorrow 1 [786]=some s6Step249FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step249EntryGvAfter,arenaWires]
  · rfl

private def s6Step249HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step249HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step249HeadFBefore : Arena := s6Step249HeadGAfter

private def s6Step249HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402],795⟩

private def s6Step249HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841],776⟩

private def s6Step249HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 818, 822],777⟩

private def s6Step249HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 863],775⟩

private theorem s6Step249HeadBank_incomingDistinct : ([s6Step249HeadGRow,s6Step249HeadFRow,s6Step249HeadGvRow,s6Step249HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step249HeadF_Incoming : rowsOwned s6Step249HeadFBefore [s6Step249HeadFRow,s6Step249HeadGvRow,s6Step249HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step249HeadGRow,s6Step249HeadFRow,s6Step249HeadGvRow,s6Step249HeadFvRow] 1 s6Step249HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step249HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step249HeadBank_outgoingOwned : rowsOwned s6Step249HeadFvAfter [s6Step249HeadGOut,s6Step249HeadFOut,s6Step249HeadGvOut,s6Step249HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step249HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step249HeadF_Outgoing : rowsOwned s6Step249HeadFvAfter [s6Step249HeadFOut,s6Step249HeadGvOut,s6Step249HeadFvOut] :=
  hmrRows_owned_drop s6Step249HeadFvAfter [s6Step249HeadGOut,s6Step249HeadFOut,s6Step249HeadGvOut,s6Step249HeadFvOut] 1 s6Step249HeadBank_outgoingOwned

private theorem s6Step249HeadF_distinct : (s6Step249HeadFRow.sign::s6Step249HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step249HeadF_owned : (s6Step249HeadFRow.sign::s6Step249HeadFRow.payload).toFinset⊆s6Step249HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step249HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step249HeadF_reserved : s6Step249HeadFBefore.reserve s6Step249HeadFFresh.toFinset=some s6Step249HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step249HeadFFresh,arenaWires]
  · norm_num [s6Step249HeadFBefore,s6Step249HeadGAfter,s6Step249HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step249HeadFAfter,s6Step249HeadFBefore,s6Step249HeadGAfter,s6Step249HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step249HeadF_checked : planRowResizeLog s6Step249HeadFBefore s6Step249HeadFRow 148 s6Step249HeadFFresh=
    some (s6Step249HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 839],795⟩,growRow 795 s6Step249HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step249HeadFBefore s6Step249HeadFAfter s6Step249HeadFRow 148 s6Step249HeadFFresh
    s6Step249HeadF_distinct s6Step249HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step249HeadF_reserved
  have rowEq : WindowRow.mk (s6Step249HeadFRow.payload++s6Step249HeadFFresh) s6Step249HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 839],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step249HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step249HeadFvBefore : Arena := s6Step249HeadGvAfter

private theorem s6Step249HeadFv_Incoming : rowsOwned s6Step249HeadFvBefore [s6Step249HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step249HeadGRow,s6Step249HeadFRow,s6Step249HeadGvRow,s6Step249HeadFvRow] 3 s6Step249HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step249HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step249HeadFv_Outgoing : rowsOwned s6Step249HeadFvAfter [s6Step249HeadFvOut] :=
  hmrRows_owned_drop s6Step249HeadFvAfter [s6Step249HeadGOut,s6Step249HeadFOut,s6Step249HeadGvOut,s6Step249HeadFvOut] 3 s6Step249HeadBank_outgoingOwned

private theorem s6Step249HeadFv_distinct : (s6Step249HeadFvRow.sign::s6Step249HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step249HeadFv_owned : (s6Step249HeadFvRow.sign::s6Step249HeadFvRow.payload).toFinset⊆s6Step249HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step249HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step249HeadFv_reserved : s6Step249HeadFvBefore.reserve s6Step249HeadFvFresh.toFinset=some s6Step249HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step249HeadFvFresh,arenaWires]
  · norm_num [s6Step249HeadFvBefore,s6Step249HeadGvAfter,s6Step249HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step249HeadFvAfter,s6Step249HeadFvBefore,s6Step249HeadGvAfter,s6Step249HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step249HeadFv_checked : planRowResizeLog s6Step249HeadFvBefore s6Step249HeadFvRow 141 s6Step249HeadFvFresh=
    some (s6Step249HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 805],776⟩,growRow 776 s6Step249HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step249HeadFvBefore s6Step249HeadFvAfter s6Step249HeadFvRow 141 s6Step249HeadFvFresh
    s6Step249HeadFv_distinct s6Step249HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step249HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step249HeadFvRow.payload++s6Step249HeadFvFresh) s6Step249HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 805],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step249HeadG_Incoming : rowsOwned s6Step249HeadGBefore [s6Step249HeadGRow,s6Step249HeadFRow,s6Step249HeadGvRow,s6Step249HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step249HeadGRow,s6Step249HeadFRow,s6Step249HeadGvRow,s6Step249HeadFvRow] 0 s6Step249HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step249HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step249HeadG_Outgoing : rowsOwned s6Step249HeadFvAfter [s6Step249HeadGOut,s6Step249HeadFOut,s6Step249HeadGvOut,s6Step249HeadFvOut] :=
  hmrRows_owned_drop s6Step249HeadFvAfter [s6Step249HeadGOut,s6Step249HeadFOut,s6Step249HeadGvOut,s6Step249HeadFvOut] 0 s6Step249HeadBank_outgoingOwned

private theorem s6Step249HeadG_distinct : (s6Step249HeadGRow.sign::s6Step249HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step249HeadG_owned : (s6Step249HeadGRow.sign::s6Step249HeadGRow.payload).toFinset⊆s6Step249HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step249HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step249HeadG_reserved : s6Step249HeadGBefore.reserve s6Step249HeadGFresh.toFinset=some s6Step249HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step249HeadGFresh,arenaWires]
  · norm_num [s6Step249HeadGBefore,s6Step249HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step249HeadGAfter,s6Step249HeadGBefore,s6Step249HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step249HeadG_checked : planRowResizeLog s6Step249HeadGBefore s6Step249HeadGRow 148 s6Step249HeadGFresh=
    some (s6Step249HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 818, 822, 864],777⟩,growRow 777 s6Step249HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step249HeadGBefore s6Step249HeadGAfter s6Step249HeadGRow 148 s6Step249HeadGFresh
    s6Step249HeadG_distinct s6Step249HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step249HeadG_reserved
  have rowEq : WindowRow.mk (s6Step249HeadGRow.payload++s6Step249HeadGFresh) s6Step249HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 818, 822, 864],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step249HeadGvBefore : Arena := s6Step249HeadFAfter

private theorem s6Step249HeadGv_Incoming : rowsOwned s6Step249HeadGvBefore [s6Step249HeadGvRow,s6Step249HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step249HeadGRow,s6Step249HeadFRow,s6Step249HeadGvRow,s6Step249HeadFvRow] 2 s6Step249HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step249HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step249HeadGv_Outgoing : rowsOwned s6Step249HeadFvAfter [s6Step249HeadGvOut,s6Step249HeadFvOut] :=
  hmrRows_owned_drop s6Step249HeadFvAfter [s6Step249HeadGOut,s6Step249HeadFOut,s6Step249HeadGvOut,s6Step249HeadFvOut] 2 s6Step249HeadBank_outgoingOwned

private theorem s6Step249HeadGv_distinct : (s6Step249HeadGvRow.sign::s6Step249HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step249HeadGv_owned : (s6Step249HeadGvRow.sign::s6Step249HeadGvRow.payload).toFinset⊆s6Step249HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step249HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step249HeadGv_reserved : s6Step249HeadGvBefore.reserve s6Step249HeadGvFresh.toFinset=some s6Step249HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step249HeadGvFresh,arenaWires]
  · norm_num [s6Step249HeadGvBefore,s6Step249HeadFAfter,s6Step249HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step249HeadGvAfter,s6Step249HeadGvBefore,s6Step249HeadFAfter,s6Step249HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step249HeadGv_checked : planRowResizeLog s6Step249HeadGvBefore s6Step249HeadGvRow 141 s6Step249HeadGvFresh=
    some (s6Step249HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 863, 868],775⟩,growRow 775 s6Step249HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step249HeadGvBefore s6Step249HeadGvAfter s6Step249HeadGvRow 141 s6Step249HeadGvFresh
    s6Step249HeadGv_distinct s6Step249HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step249HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step249HeadGvRow.payload++s6Step249HeadGvFresh) s6Step249HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 863, 868],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step249HeadBank_rows : planWindowRowsLog s6Step249HeadGBefore [(s6Step249HeadGRow,148),(s6Step249HeadFRow,148),(s6Step249HeadGvRow,141),(s6Step249HeadFvRow,141)] [s6Step249HeadGFresh,s6Step249HeadFFresh,s6Step249HeadGvFresh,s6Step249HeadFvFresh]=
    some (s6Step249HeadFvAfter,[s6Step249HeadGOut,s6Step249HeadFOut,s6Step249HeadGvOut,s6Step249HeadFvOut],(growRow 777 s6Step249HeadGFresh ++ (growRow 795 s6Step249HeadFFresh ++ (growRow 775 s6Step249HeadGvFresh ++ (growRow 776 s6Step249HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step249HeadFvAfter [] []=some (s6Step249HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step249HeadFvBefore s6Step249HeadFvAfter s6Step249HeadFvAfter
    s6Step249HeadFvRow s6Step249HeadFvOut 141 s6Step249HeadFvFresh [] [] []
    (growRow 776 s6Step249HeadFvFresh) ([]) s6Step249HeadFv_Incoming s6Step249HeadFv_checked h4 s6Step249HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step249HeadGvBefore s6Step249HeadGvAfter s6Step249HeadFvAfter
    s6Step249HeadGvRow s6Step249HeadGvOut 141 s6Step249HeadGvFresh [(s6Step249HeadFvRow,141)] [s6Step249HeadFvFresh] [s6Step249HeadFvOut]
    (growRow 775 s6Step249HeadGvFresh) ((growRow 776 s6Step249HeadFvFresh ++ [])) s6Step249HeadGv_Incoming s6Step249HeadGv_checked h3 s6Step249HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step249HeadFBefore s6Step249HeadFAfter s6Step249HeadFvAfter
    s6Step249HeadFRow s6Step249HeadFOut 148 s6Step249HeadFFresh [(s6Step249HeadGvRow,141),(s6Step249HeadFvRow,141)] [s6Step249HeadGvFresh,s6Step249HeadFvFresh] [s6Step249HeadGvOut,s6Step249HeadFvOut]
    (growRow 795 s6Step249HeadFFresh) ((growRow 775 s6Step249HeadGvFresh ++ (growRow 776 s6Step249HeadFvFresh ++ []))) s6Step249HeadF_Incoming s6Step249HeadF_checked h2 s6Step249HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step249HeadGBefore s6Step249HeadGAfter s6Step249HeadFvAfter
    s6Step249HeadGRow s6Step249HeadGOut 148 s6Step249HeadGFresh [(s6Step249HeadFRow,148),(s6Step249HeadGvRow,141),(s6Step249HeadFvRow,141)] [s6Step249HeadFFresh,s6Step249HeadGvFresh,s6Step249HeadFvFresh] [s6Step249HeadFOut,s6Step249HeadGvOut,s6Step249HeadFvOut]
    (growRow 777 s6Step249HeadGFresh) ((growRow 795 s6Step249HeadFFresh ++ (growRow 775 s6Step249HeadGvFresh ++ (growRow 776 s6Step249HeadFvFresh ++ [])))) s6Step249HeadG_Incoming s6Step249HeadG_checked h1 s6Step249HeadG_Outgoing
  exact h0

private theorem s6Step249HeadBank_checked : compileHmrBankResizeLog .headroom s6Step249HeadGBefore ⟨s6Step249HeadFRow,s6Step249HeadGRow,s6Step249HeadFvRow,s6Step249HeadGvRow⟩ ⟨148,148,141,141⟩ [s6Step249HeadGFresh,s6Step249HeadFFresh,s6Step249HeadGvFresh,s6Step249HeadFvFresh]=
    some (s6Step249HeadFvAfter,⟨s6Step249HeadFOut,s6Step249HeadGOut,s6Step249HeadFvOut,s6Step249HeadGvOut⟩,(growRow 777 s6Step249HeadGFresh ++ (growRow 795 s6Step249HeadFFresh ++ (growRow 775 s6Step249HeadGvFresh ++ (growRow 776 s6Step249HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step249HeadBank_rows]
  rfl

private theorem s6Step249Front_checked : compileHmrSourceFrontLog s6Step249EntryFBefore s6Step249FrontBank 147 140 ⟨146,144,140,139⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step249FrontLog=some s6Step249FrontPlan := by
  have pairEq : s6Step249FrontPair=⟨s6Step249HeadFRow,s6Step249HeadGRow,s6Step249HeadFvRow,s6Step249HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step249FrontHead=⟨s6Step249ExitFRow,s6Step249ExitGRow,s6Step249ExitFvRow,s6Step249ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step249Add0A=s6Step249FrontHead.f.wires := by decide +kernel
  have gEq : s6Step249Add0B=s6Step249FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step249Add1A=s6Step249FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step249Add1B=s6Step249FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step249EntryFBefore s6Step249FrontBank 147 140 ⟨146,144,140,139⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step249FrontLog s6Step249FrontPlan
  · exact s6Step249Front_entry
  · exact s6Step249EntryBank_checked
  · exact s6Step249Front_sigma
  · rfl
  · exact s6Step249Front_branch
  · rfl
  · simpa only [s6Step249FrontPlan,pairEq] using s6Step249HeadBank_checked
  · simpa only [s6Step249FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step249F4_checked
  · exact s6Step249Counter_checked
  · rfl
  · simpa only [s6Step249FrontPlan,headEq] using s6Step249ExitBank_checked

private theorem s6Step249Complete_explicit_checked : compileHmrEarlyStepLog s6Step249EntryFBefore s6Step249FrontBank 147 140 ⟨146,144,140,139⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 51 s6Step249CompleteLog=some s6Step249CompletePlan := by
  let Q := s6Step249EarlyControlPlan
  have hq := s6Step249EarlyControl_plan_checked
  have fv1 : s6Step249CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step249CompleteOut.fv.payload[2]?.getD s6Step249CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step249CompleteOut.fv.payload[3]?.getD s6Step249CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step249CompleteOut.fv.payload[4]?.getD s6Step249CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step249EntryFBefore s6Step249EarlyControlArena s6Step249FrontBank 147 140 ⟨146,144,140,139⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 51 s6Step249CompleteLog s6Step249FrontPlan Q
    s6Step249Front_checked s6Step249Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step249Complete_owned s6Step249Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step249EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 769 786 s6Step249CompleteOut.fv.second (s6Step249CompleteOut.fv.payload[2]?.getD s6Step249CompleteOut.fv.sign) (s6Step249CompleteOut.fv.payload[3]?.getD s6Step249CompleteOut.fv.sign) (s6Step249CompleteOut.fv.payload[4]?.getD s6Step249CompleteOut.fv.sign) 830 51 s6Step249EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep249Arena : Arena := s6Step249EntryFBefore
def s6PrivateStep249Bank : WindowBank := s6Step249FrontBank
def s6PrivateStep249Spec : HmrSourceWalkStepLog := ⟨147,140,⟨146,144,140,139⟩,51,.early s6Step249CompleteLog⟩
def s6PrivateStep249Plan : HmrSourceStepPlan := .early s6Step249CompletePlan
theorem s6PrivateStep249_source : s6PrivateStep249Spec=s6ObservedLogs240[9] := rfl
theorem s6PrivateStep249_checked : compileHmrSourceStepLog s6PrivateStep249Arena s6PrivateStep249Bank
    s6PrivateStep249Spec.fgWidth s6PrivateStep249Spec.vWidth s6PrivateStep249Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905]
    6 498 249 s6PrivateStep249Spec.need none s6PrivateStep249Spec.log=some s6PrivateStep249Plan := by
  change compileHmrSourceStepLog s6Step249EntryFBefore s6Step249FrontBank 147 140 ⟨146,144,140,139⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 6 498 249 51 none (.early s6Step249CompleteLog)=some (.early s6Step249CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 249<498)]
  rw [s6Step249Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
