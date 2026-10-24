import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep250
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

private def s6Step252CompleteMoves : List (Wire × Wire) := []

private def s6Step252EarlyControlLog : HmrEarlyControlLog := ⟨[805, 862, 868, 830, 786],[822],[864],[810, 809, 817, 812, 915, 932],[]⟩

private def s6Step252FrontLog : HmrFrontAllocationLog := ⟨⟨[[862], [], [], []],[[786], [868], [805], [839]],[[], [], [], []]⟩,[860],[850],[822],[864],[810, 809, 817, 812, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[810, 809, 817, 812, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[822, 864, 810, 809]⟩

private def s6Step252CompleteLog : HmrEarlyStepLog := ⟨s6Step252FrontLog,s6Step252CompleteMoves,s6Step252EarlyControlLog⟩

private def s6Step252ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399],795⟩

private def s6Step252ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839],776⟩

private def s6Step252ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143],777⟩

private def s6Step252ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863],775⟩

private def s6Step252FrontOut : WindowBank := ⟨s6Step252ExitFOut,s6Step252ExitGOut,s6Step252ExitFvOut,s6Step252ExitGvOut⟩

private def s6Step252CompleteOut : WindowBank := s6Step252FrontOut.repacked s6Step252CompleteMoves

private def s6Step252EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step252EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step252EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step252EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step252EarlyControlPositiveArena,[822],s6Step252EarlyControlEqualityArena,[864],⟨⟨860,false⟩,[⟨⟨822,false⟩,864⟩]⟩⟩

private def s6Step252EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step252EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step252EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step252EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step252EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step252EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step252EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,805⟩,⟨⟨772,false⟩,862⟩,⟨⟨771,false⟩,868⟩,⟨⟨770,false⟩,830⟩,⟨⟨769,false⟩,786⟩]⟩

private def s6Step252EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step252EarlyControlZeroArena,s6Step252EarlyControlZeroPlan,s6Step252EarlyControlClassPlan,s6Step252EarlyControlFlagArena,s6Step252EarlyControlFittedArena,s6Step252EarlyControlHistoryArena,s6Step252EarlyControlSigmaArena,s6Step252EarlyControlOutputArena,s6Step252EarlyControlLog⟩

private def s6Step252CounterWork : List Wire := [822, 864, 810, 809]

private theorem s6Step252Counter_bounded : s6Step252CounterWork.toFinset⊆arenaWires := by norm_num [s6Step252CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step252HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step252CounterDuring : Arena := ⟨s6Step252HeadFvAfter.live∪s6Step252CounterWork.toFinset,Finset.union_subset s6Step252HeadFvAfter.bounded s6Step252Counter_bounded⟩

private def s6Step252EntryFFresh : List Wire := [862]

private def s6Step252EntryFvFresh : List Wire := []

private def s6Step252EntryGFresh : List Wire := []

private def s6Step252EntryFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<860) ∨ (861≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step252EntryGvAfter : Arena := s6Step252EntryFAfter

private def s6Step252EntryGvFresh : List Wire := []

private def s6Step252ExitFExtra : List Wire := [862, 868]

private def s6Step252ExitGExtra : List Wire := [830, 786]

private def s6Step252ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step252ExitGvExtra : List Wire := [805]

private def s6Step252Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step252Add0Work : List Wire := [810, 809, 817, 812, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step252Add0_bounded : s6Step252Add0Work.toFinset⊆arenaWires := by
  have h : s6Step252Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step252Add0During : Arena := ⟨s6Step252Add0Arena.live∪s6Step252Add0Work.toFinset,Finset.union_subset s6Step252Add0Arena.bounded s6Step252Add0_bounded⟩

private def s6Step252Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step252Add1Work : List Wire := [810, 809, 817, 812, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step252Add1_bounded : s6Step252Add1Work.toFinset⊆arenaWires := by
  have h : s6Step252Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step252Add1During : Arena := ⟨s6Step252Add1Arena.live∪s6Step252Add1Work.toFinset,Finset.union_subset s6Step252Add1Arena.bounded s6Step252Add1_bounded⟩

private def s6Step252F4FlagArena : Arena := ⟨s6Step252HeadFvAfter.live∪{822},Finset.union_subset s6Step252HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step252F4Plan : HmrHybridF4Plan := ⟨s6Step252F4FlagArena,[822],s6Step252Add0Arena,[864],s6Step252Add0During,s6Step252Add0Work,s6Step252Add1During,s6Step252Add1Work⟩

private def s6Step252HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 862, 868],795⟩

private def s6Step252HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839],776⟩

private def s6Step252HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 830, 786],777⟩

private def s6Step252HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 805],775⟩

private def s6Step252FrontHead : WindowBank := ⟨s6Step252HeadFOut,s6Step252HeadGOut,s6Step252HeadFvOut,s6Step252HeadGvOut⟩

private def s6Step252EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 862],795⟩

private def s6Step252EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818],776⟩

private def s6Step252EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 830],777⟩

private def s6Step252EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863],775⟩

private def s6Step252FrontPair : WindowBank := ⟨s6Step252EntryFOut,s6Step252EntryGOut,s6Step252EntryFvOut,s6Step252EntryGvOut⟩

private def s6Step252FrontSigmaArena : Arena := ⟨s6Step252EntryGvAfter.live∪{860},Finset.union_subset s6Step252EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step252HeadFFresh : List Wire := [868]

private def s6Step252HeadFvFresh : List Wire := [839]

private def s6Step252HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step252HeadGFresh : List Wire := [786]

private def s6Step252HeadGvFresh : List Wire := [805]

private def s6Step252FrontPlan : HmrSourceFront := ⟨s6Step252EntryGvAfter,s6Step252FrontPair,(growRow 795 s6Step252EntryFFresh ++ (growRow 777 s6Step252EntryGFresh ++ (growRow 776 s6Step252EntryFvFresh ++ (growRow 775 s6Step252EntryGvFresh ++ [])))),s6Step252FrontSigmaArena,[860],s6Step252HeadGBefore,[850],
  s6Step252HeadFvAfter,s6Step252FrontHead,(growRow 777 s6Step252HeadGFresh ++ (growRow 795 s6Step252HeadFFresh ++ (growRow 775 s6Step252HeadGvFresh ++ (growRow 776 s6Step252HeadFvFresh ++ [])))),s6Step252F4Plan,s6Step252CounterDuring,s6Step252CounterWork,s6Step252ExitGvAfter,s6Step252FrontOut,(shrinkRow 777 s6Step252ExitGExtra ++ (shrinkRow 795 s6Step252ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step252ExitGvExtra ++ []))))⟩

private def s6Step252CompletePlan : HmrEarlyStepPlan := ⟨s6Step252FrontPlan,s6Step252EarlyControlArena,s6Step252EarlyControlPlan,s6Step252CompleteMoves⟩

private theorem s6Step252Complete_apart : List.Disjoint (s6Step252CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [860, 850, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] := by
  have nd : ((s6Step252CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[860, 850, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step252Complete_owned : (s6Step252CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step252EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step252EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step252Complete_repack : s6Step252ExitGvAfter.checkRepack s6Step252CompleteMoves=some s6Step252EarlyControlArena := by rfl

private theorem s6Step252EarlyControl_branchOwned : ([850] : List Wire).toFinset⊆s6Step252EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step252EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step252EarlyControl_branch : compileHmrBranchRetirement s6Step252EarlyControlSigmaArena 850=some s6Step252EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step252EarlyControl_branchOwned
  · ext q
    simp [s6Step252EarlyControlOutputArena,s6Step252EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step252EarlyControl_classEqualityBorrow : s6Step252EarlyControlPositiveArena.checkBorrow (([860, 822] : List Wire).length-1) s6Step252EarlyControlLog.classWork=some s6Step252EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step252EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step252EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step252EarlyControlEqualityArena,s6Step252EarlyControlPositiveArena,s6Step252EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step252EarlyControl_classEqualityOwned : ([860, 822] : List Wire).toFinset⊆s6Step252EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step252EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step252EarlyControl_classEquality : compileHmrEqualityLog s6Step252EarlyControlPositiveArena [860, 822] 0 s6Step252EarlyControlLog.classWork=some (s6Step252EarlyControlEqualityArena,s6Step252EarlyControlLog.classWork,s6Step252EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step252EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step252EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step252EarlyControl_classOwned : ([769, 786, 860] : List Wire).toFinset⊆s6Step252EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step252EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step252EarlyControl_positiveBorrow : s6Step252EarlyControlZeroArena.checkBorrow (1) s6Step252EarlyControlLog.positiveWork=some s6Step252EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step252EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step252EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step252EarlyControlPositiveArena,s6Step252EarlyControlZeroArena,s6Step252EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step252EarlyControl_class : compileHmrSourceClassLog s6Step252EarlyControlZeroArena false 769 s6Step252EarlyControlZeroPlan.top 0 860 s6Step252EarlyControlLog.positiveWork s6Step252EarlyControlLog.classWork=some s6Step252EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step252EarlyControlClassPlan s6Step252EarlyControlZeroArena false 769 s6Step252EarlyControlZeroPlan.top 0 860
  constructor
  · decide +kernel
  · exact s6Step252EarlyControl_classOwned
  · exact s6Step252EarlyControl_positiveBorrow
  · exact s6Step252EarlyControl_classEquality

private theorem s6Step252EarlyControl_entryRecordOwned : ([850, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] : List Wire).toFinset⊆s6Step252EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step252EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step252EarlyControl_entrySigmaOwned : ([860, 254] : List Wire).toFinset⊆s6Step252EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step252EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step252EarlyControl_fitBorrow : s6Step252EarlyControlFlagArena.checkBorrow ((51-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] : List Wire).length)) s6Step252EarlyControlLog.recordFresh=some s6Step252EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step252EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step252EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step252EarlyControlFittedArena,s6Step252EarlyControlFlagArena,s6Step252EarlyControlLog,arenaWires]

private theorem s6Step252EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] : List Wire).toFinset⊆s6Step252EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step252EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step252EarlyControl_fit : compileHmrRecordGrowLog s6Step252EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 51 s6Step252EarlyControlLog.recordFresh=some s6Step252EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step252EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step252EarlyControl_fitBorrow

private theorem s6Step252EarlyControl_flagsBorrow : s6Step252EarlyControlEqualityArena.checkBorrow (6) s6Step252EarlyControlLog.flagWork=some s6Step252EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step252EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step252EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step252EarlyControlFlagArena,s6Step252EarlyControlEqualityArena,s6Step252EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step252EarlyControl_flagsOwned : ([864, 253, 252, 251] : List Wire).toFinset⊆s6Step252EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step252EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step252EarlyControl_flags : compileHmrFlagsLog s6Step252EarlyControlClassPlan.equalityArena s6Step252EarlyControlClassPlan.equality.top 253 252 251 s6Step252EarlyControlLog.flagWork=some s6Step252EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step252EarlyControl_flagsOwned⟩
  · exact s6Step252EarlyControl_flagsBorrow

private theorem s6Step252EarlyControl_historyBorrow : s6Step252EarlyControlArena.checkBorrow ((51-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] : List Wire).length)) s6Step252EarlyControlLog.recordFresh=some s6Step252EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step252EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step252EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step252EarlyControlHistoryArena,s6Step252EarlyControlArena,s6Step252EarlyControlLog,arenaWires]

private theorem s6Step252EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] : List Wire).toFinset⊆s6Step252EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step252EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step252EarlyControl_history : compileHmrRecordGrowLog s6Step252EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 51 s6Step252EarlyControlLog.recordFresh=some s6Step252EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step252EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step252EarlyControl_historyBorrow

private theorem s6Step252EarlyControl_sigmaOwned : ([254, 860] : List Wire).toFinset⊆s6Step252EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step252EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step252EarlyControl_sigmaReleaseOwned : ([860] : List Wire).toFinset⊆s6Step252EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step252EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step252EarlyControl_sigmaRelease : s6Step252EarlyControlHistoryArena.release {860} (fun _ => false)=some s6Step252EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step252EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step252EarlyControlSigmaArena,s6Step252EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step252EarlyControl_sigma : compileHmrSigmaDropLog s6Step252EarlyControlHistoryArena false 0 0 254 860 []=some s6Step252EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step252EarlyControl_sigmaOwned⟩
  · exact s6Step252EarlyControl_sigmaRelease

private theorem s6Step252EarlyControl_zeroBorrow : s6Step252EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step252EarlyControlLog.zeroWork=some s6Step252EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step252EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step252EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step252EarlyControlZeroArena,s6Step252EarlyControlArena,s6Step252EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step252EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step252EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step252EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step252EarlyControl_zero : compileHmrEqualityLog s6Step252EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step252EarlyControlLog.zeroWork=some (s6Step252EarlyControlZeroArena,s6Step252EarlyControlLog.zeroWork,s6Step252EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step252EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step252EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step252EarlyControl_logged : s6Step252EarlyControlPlan.Logged s6Step252EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 769 860 254 253 252 251 850 51 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step252EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step252EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step252EarlyControl_zero
  · exact s6Step252EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step252EarlyControl_flags
  · exact s6Step252EarlyControl_fit
  · exact s6Step252EarlyControl_history
  · exact s6Step252EarlyControl_sigma
  · exact s6Step252EarlyControl_branch

private theorem s6Step252EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step252EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 769 860 254 253 252 251 850 51 s6Step252EarlyControlLog=some s6Step252EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step252EarlyControlPlan s6Step252EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 769 860 254 253 252 251 850 51 s6Step252EarlyControl_logged

private def s6Step252EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step252EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399],795⟩

private def s6Step252EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818],776⟩

private def s6Step252EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 830],777⟩

private def s6Step252EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863],775⟩

private def s6Step252FrontBank : WindowBank := ⟨s6Step252EntryFRow,s6Step252EntryGRow,s6Step252EntryFvRow,s6Step252EntryGvRow⟩

private def s6Step252Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 862, 868, 795]

private def s6Step252Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 830, 786, 777]

private def s6Step252Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 776]

private def s6Step252Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 805, 775]

private theorem s6Step252Counter_apart : Disjoint s6Step252HeadFvAfter.live s6Step252CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step252HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step252Counter_borrowed : s6Step252HeadFvAfter.checkBorrow 4 s6Step252CounterWork=some s6Step252CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step252HeadFvAfter s6Step252CounterDuring s6Step252CounterWork.toFinset s6Step252Counter_bounded s6Step252Counter_apart rfl

private theorem s6Step252Counter_owned : (860::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step252HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step252HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step252Counter_checked : compileHmrCounterStepLog s6Step252HeadFvAfter true 860 [774, 773, 772, 771, 770, 769] s6Step252CounterWork=some s6Step252CounterDuring := by
  have owned : ∀q∈860::[774, 773, 772, 771, 770, 769],q∈s6Step252HeadFvAfter.live := fun q hq => s6Step252Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step252Counter_borrowed

private theorem s6Step252EntryBank_incomingDistinct : ([s6Step252EntryFRow,s6Step252EntryGRow,s6Step252EntryFvRow,s6Step252EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step252EntryF_Incoming : rowsOwned s6Step252EntryFBefore [s6Step252EntryFRow,s6Step252EntryGRow,s6Step252EntryFvRow,s6Step252EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step252EntryFRow,s6Step252EntryGRow,s6Step252EntryFvRow,s6Step252EntryGvRow] 0 s6Step252EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step252EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step252EntryBank_outgoingOwned : rowsOwned s6Step252EntryGvAfter [s6Step252EntryFOut,s6Step252EntryGOut,s6Step252EntryFvOut,s6Step252EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step252EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<860) ∨ (861≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step252EntryF_Outgoing : rowsOwned s6Step252EntryGvAfter [s6Step252EntryFOut,s6Step252EntryGOut,s6Step252EntryFvOut,s6Step252EntryGvOut] :=
  hmrRows_owned_drop s6Step252EntryGvAfter [s6Step252EntryFOut,s6Step252EntryGOut,s6Step252EntryFvOut,s6Step252EntryGvOut] 0 s6Step252EntryBank_outgoingOwned

private theorem s6Step252EntryF_distinct : (s6Step252EntryFRow.sign::s6Step252EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step252EntryF_owned : (s6Step252EntryFRow.sign::s6Step252EntryFRow.payload).toFinset⊆s6Step252EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step252EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step252EntryF_reserved : s6Step252EntryFBefore.reserve s6Step252EntryFFresh.toFinset=some s6Step252EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step252EntryFFresh,arenaWires]
  · norm_num [s6Step252EntryFBefore,s6Step252EntryFFresh,arenaWires]
  · ext q
    simp only [s6Step252EntryFAfter,s6Step252EntryFBefore,s6Step252EntryFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step252EntryF_checked : planRowResizeLog s6Step252EntryFBefore s6Step252EntryFRow 145 s6Step252EntryFFresh=
    some (s6Step252EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 862],795⟩,growRow 795 s6Step252EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step252EntryFBefore s6Step252EntryFAfter s6Step252EntryFRow 145 s6Step252EntryFFresh
    s6Step252EntryF_distinct s6Step252EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step252EntryF_reserved
  have rowEq : WindowRow.mk (s6Step252EntryFRow.payload++s6Step252EntryFFresh) s6Step252EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 862],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step252EntryFvAfter : Arena := s6Step252EntryFAfter

private def s6Step252EntryFvBefore : Arena := s6Step252EntryFAfter

private theorem s6Step252EntryFv_Incoming : rowsOwned s6Step252EntryFvBefore [s6Step252EntryFvRow,s6Step252EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step252EntryFRow,s6Step252EntryGRow,s6Step252EntryFvRow,s6Step252EntryGvRow] 2 s6Step252EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step252EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<860) ∨ (861≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step252EntryFv_Outgoing : rowsOwned s6Step252EntryGvAfter [s6Step252EntryFvOut,s6Step252EntryGvOut] :=
  hmrRows_owned_drop s6Step252EntryGvAfter [s6Step252EntryFOut,s6Step252EntryGOut,s6Step252EntryFvOut,s6Step252EntryGvOut] 2 s6Step252EntryBank_outgoingOwned

private theorem s6Step252EntryFv_distinct : (s6Step252EntryFvRow.sign::s6Step252EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step252EntryFv_owned : (s6Step252EntryFvRow.sign::s6Step252EntryFvRow.payload).toFinset⊆s6Step252EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step252EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<860) ∨ (861≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step252EntryFv_reserved : s6Step252EntryFvBefore.reserve s6Step252EntryFvFresh.toFinset=some s6Step252EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step252EntryFvFresh,arenaWires]
  · norm_num [s6Step252EntryFvBefore,s6Step252EntryFAfter,s6Step252EntryFvFresh,arenaWires]
  · simp only [s6Step252EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step252EntryFv_checked : planRowResizeLog s6Step252EntryFvBefore s6Step252EntryFvRow 141 s6Step252EntryFvFresh=
    some (s6Step252EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818],776⟩,growRow 776 s6Step252EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step252EntryFvBefore s6Step252EntryFvAfter s6Step252EntryFvRow 141 s6Step252EntryFvFresh
    s6Step252EntryFv_distinct s6Step252EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step252EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step252EntryFvRow.payload++s6Step252EntryFvFresh) s6Step252EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step252EntryGAfter : Arena := s6Step252EntryFAfter

private def s6Step252EntryGBefore : Arena := s6Step252EntryFAfter

private theorem s6Step252EntryG_Incoming : rowsOwned s6Step252EntryGBefore [s6Step252EntryGRow,s6Step252EntryFvRow,s6Step252EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step252EntryFRow,s6Step252EntryGRow,s6Step252EntryFvRow,s6Step252EntryGvRow] 1 s6Step252EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step252EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<860) ∨ (861≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step252EntryG_Outgoing : rowsOwned s6Step252EntryGvAfter [s6Step252EntryGOut,s6Step252EntryFvOut,s6Step252EntryGvOut] :=
  hmrRows_owned_drop s6Step252EntryGvAfter [s6Step252EntryFOut,s6Step252EntryGOut,s6Step252EntryFvOut,s6Step252EntryGvOut] 1 s6Step252EntryBank_outgoingOwned

private theorem s6Step252EntryG_distinct : (s6Step252EntryGRow.sign::s6Step252EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step252EntryG_owned : (s6Step252EntryGRow.sign::s6Step252EntryGRow.payload).toFinset⊆s6Step252EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step252EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<860) ∨ (861≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step252EntryG_reserved : s6Step252EntryGBefore.reserve s6Step252EntryGFresh.toFinset=some s6Step252EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step252EntryGFresh,arenaWires]
  · norm_num [s6Step252EntryGBefore,s6Step252EntryFAfter,s6Step252EntryGFresh,arenaWires]
  · simp only [s6Step252EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step252EntryG_checked : planRowResizeLog s6Step252EntryGBefore s6Step252EntryGRow 145 s6Step252EntryGFresh=
    some (s6Step252EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 830],777⟩,growRow 777 s6Step252EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step252EntryGBefore s6Step252EntryGAfter s6Step252EntryGRow 145 s6Step252EntryGFresh
    s6Step252EntryG_distinct s6Step252EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step252EntryG_reserved
  have rowEq : WindowRow.mk (s6Step252EntryGRow.payload++s6Step252EntryGFresh) s6Step252EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 830],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step252EntryGvBefore : Arena := s6Step252EntryFAfter

private theorem s6Step252EntryGv_Incoming : rowsOwned s6Step252EntryGvBefore [s6Step252EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step252EntryFRow,s6Step252EntryGRow,s6Step252EntryFvRow,s6Step252EntryGvRow] 3 s6Step252EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step252EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<860) ∨ (861≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step252EntryGv_Outgoing : rowsOwned s6Step252EntryGvAfter [s6Step252EntryGvOut] :=
  hmrRows_owned_drop s6Step252EntryGvAfter [s6Step252EntryFOut,s6Step252EntryGOut,s6Step252EntryFvOut,s6Step252EntryGvOut] 3 s6Step252EntryBank_outgoingOwned

private theorem s6Step252EntryGv_distinct : (s6Step252EntryGvRow.sign::s6Step252EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step252EntryGv_owned : (s6Step252EntryGvRow.sign::s6Step252EntryGvRow.payload).toFinset⊆s6Step252EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step252EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<860) ∨ (861≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step252EntryGv_reserved : s6Step252EntryGvBefore.reserve s6Step252EntryGvFresh.toFinset=some s6Step252EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step252EntryGvFresh,arenaWires]
  · norm_num [s6Step252EntryGvBefore,s6Step252EntryFAfter,s6Step252EntryGvFresh,arenaWires]
  · simp only [s6Step252EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step252EntryGv_checked : planRowResizeLog s6Step252EntryGvBefore s6Step252EntryGvRow 141 s6Step252EntryGvFresh=
    some (s6Step252EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863],775⟩,growRow 775 s6Step252EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step252EntryGvBefore s6Step252EntryGvAfter s6Step252EntryGvRow 141 s6Step252EntryGvFresh
    s6Step252EntryGv_distinct s6Step252EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step252EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step252EntryGvRow.payload++s6Step252EntryGvFresh) s6Step252EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step252EntryBank_rows : planWindowRowsLog s6Step252EntryFBefore [(s6Step252EntryFRow,145),(s6Step252EntryGRow,145),(s6Step252EntryFvRow,141),(s6Step252EntryGvRow,141)] [s6Step252EntryFFresh,s6Step252EntryGFresh,s6Step252EntryFvFresh,s6Step252EntryGvFresh]=
    some (s6Step252EntryGvAfter,[s6Step252EntryFOut,s6Step252EntryGOut,s6Step252EntryFvOut,s6Step252EntryGvOut],(growRow 795 s6Step252EntryFFresh ++ (growRow 777 s6Step252EntryGFresh ++ (growRow 776 s6Step252EntryFvFresh ++ (growRow 775 s6Step252EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step252EntryGvAfter [] []=some (s6Step252EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step252EntryGvBefore s6Step252EntryGvAfter s6Step252EntryGvAfter
    s6Step252EntryGvRow s6Step252EntryGvOut 141 s6Step252EntryGvFresh [] [] []
    (growRow 775 s6Step252EntryGvFresh) ([]) s6Step252EntryGv_Incoming s6Step252EntryGv_checked h4 s6Step252EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step252EntryFvBefore s6Step252EntryFvAfter s6Step252EntryGvAfter
    s6Step252EntryFvRow s6Step252EntryFvOut 141 s6Step252EntryFvFresh [(s6Step252EntryGvRow,141)] [s6Step252EntryGvFresh] [s6Step252EntryGvOut]
    (growRow 776 s6Step252EntryFvFresh) ((growRow 775 s6Step252EntryGvFresh ++ [])) s6Step252EntryFv_Incoming s6Step252EntryFv_checked h3 s6Step252EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step252EntryGBefore s6Step252EntryGAfter s6Step252EntryGvAfter
    s6Step252EntryGRow s6Step252EntryGOut 145 s6Step252EntryGFresh [(s6Step252EntryFvRow,141),(s6Step252EntryGvRow,141)] [s6Step252EntryFvFresh,s6Step252EntryGvFresh] [s6Step252EntryFvOut,s6Step252EntryGvOut]
    (growRow 777 s6Step252EntryGFresh) ((growRow 776 s6Step252EntryFvFresh ++ (growRow 775 s6Step252EntryGvFresh ++ []))) s6Step252EntryG_Incoming s6Step252EntryG_checked h2 s6Step252EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step252EntryFBefore s6Step252EntryFAfter s6Step252EntryGvAfter
    s6Step252EntryFRow s6Step252EntryFOut 145 s6Step252EntryFFresh [(s6Step252EntryGRow,145),(s6Step252EntryFvRow,141),(s6Step252EntryGvRow,141)] [s6Step252EntryGFresh,s6Step252EntryFvFresh,s6Step252EntryGvFresh] [s6Step252EntryGOut,s6Step252EntryFvOut,s6Step252EntryGvOut]
    (growRow 795 s6Step252EntryFFresh) ((growRow 777 s6Step252EntryGFresh ++ (growRow 776 s6Step252EntryFvFresh ++ (growRow 775 s6Step252EntryGvFresh ++ [])))) s6Step252EntryF_Incoming s6Step252EntryF_checked h1 s6Step252EntryF_Outgoing
  exact h0

private theorem s6Step252EntryBank_checked : compileHmrBankResizeLog .entry s6Step252EntryFBefore ⟨s6Step252EntryFRow,s6Step252EntryGRow,s6Step252EntryFvRow,s6Step252EntryGvRow⟩ ⟨145,145,141,141⟩ [s6Step252EntryFFresh,s6Step252EntryGFresh,s6Step252EntryFvFresh,s6Step252EntryGvFresh]=
    some (s6Step252EntryGvAfter,⟨s6Step252EntryFOut,s6Step252EntryGOut,s6Step252EntryFvOut,s6Step252EntryGvOut⟩,(growRow 795 s6Step252EntryFFresh ++ (growRow 777 s6Step252EntryGFresh ++ (growRow 776 s6Step252EntryFvFresh ++ (growRow 775 s6Step252EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step252EntryBank_rows]
  rfl

private def s6Step252ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step252ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step252ExitFBefore : Arena := s6Step252ExitGAfter

private def s6Step252ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 862, 868],795⟩

private def s6Step252ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839],776⟩

private def s6Step252ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 830, 786],777⟩

private def s6Step252ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 805],775⟩

private theorem s6Step252ExitBank_incomingDistinct : ([s6Step252ExitGRow,s6Step252ExitFRow,s6Step252ExitFvRow,s6Step252ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step252ExitF_Incoming : rowsOwned s6Step252ExitFBefore [s6Step252ExitFRow,s6Step252ExitFvRow,s6Step252ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step252ExitGRow,s6Step252ExitFRow,s6Step252ExitFvRow,s6Step252ExitGvRow] 1 s6Step252ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step252ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step252ExitBank_outgoingOwned : rowsOwned s6Step252ExitGvAfter [s6Step252ExitGOut,s6Step252ExitFOut,s6Step252ExitFvOut,s6Step252ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step252ExitGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step252ExitF_Outgoing : rowsOwned s6Step252ExitGvAfter [s6Step252ExitFOut,s6Step252ExitFvOut,s6Step252ExitGvOut] :=
  hmrRows_owned_drop s6Step252ExitGvAfter [s6Step252ExitGOut,s6Step252ExitFOut,s6Step252ExitFvOut,s6Step252ExitGvOut] 1 s6Step252ExitBank_outgoingOwned

private theorem s6Step252ExitF_distinct : (s6Step252ExitFRow.sign::s6Step252ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step252ExitF_owned : (s6Step252ExitFRow.sign::s6Step252ExitFRow.payload).toFinset⊆s6Step252ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step252ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step252ExitF_retired : s6Step252ExitFBefore.retireSet s6Step252ExitFExtra.toFinset=s6Step252ExitFAfter := by
  unfold Arena.retireSet s6Step252ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step252ExitFBefore,s6Step252ExitGAfter,s6Step252ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step252ExitF_checked : planRowResizeLog s6Step252ExitFBefore s6Step252ExitFRow 144 []=
    some (s6Step252ExitFAfter,s6Step252ExitFOut,shrinkRow 795 s6Step252ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step252ExitFBefore s6Step252ExitFRow 144 s6Step252ExitF_distinct s6Step252ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step252ExitFRow.payload.take 144) s6Step252ExitFRow.sign=s6Step252ExitFOut := by decide +kernel
  have hi : s6Step252ExitFRow.payload.drop 144=s6Step252ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step252ExitF_retired] at result
  exact result

private def s6Step252ExitFvAfter : Arena := s6Step252ExitFAfter

private def s6Step252ExitFvBefore : Arena := s6Step252ExitFAfter

private theorem s6Step252ExitFv_Incoming : rowsOwned s6Step252ExitFvBefore [s6Step252ExitFvRow,s6Step252ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step252ExitGRow,s6Step252ExitFRow,s6Step252ExitFvRow,s6Step252ExitGvRow] 2 s6Step252ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step252ExitFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step252ExitFv_Outgoing : rowsOwned s6Step252ExitGvAfter [s6Step252ExitFvOut,s6Step252ExitGvOut] :=
  hmrRows_owned_drop s6Step252ExitGvAfter [s6Step252ExitGOut,s6Step252ExitFOut,s6Step252ExitFvOut,s6Step252ExitGvOut] 2 s6Step252ExitBank_outgoingOwned

private theorem s6Step252ExitFv_distinct : (s6Step252ExitFvRow.sign::s6Step252ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step252ExitFv_owned : (s6Step252ExitFvRow.sign::s6Step252ExitFvRow.payload).toFinset⊆s6Step252ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step252ExitFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step252ExitFv_reserved : s6Step252ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step252ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step252ExitFv_checked : planRowResizeLog s6Step252ExitFvBefore s6Step252ExitFvRow 142 []=
    some (s6Step252ExitFvAfter,s6Step252ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step252ExitFvBefore s6Step252ExitFvAfter s6Step252ExitFvRow 142 []
    s6Step252ExitFv_distinct s6Step252ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step252ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step252ExitFvRow.payload++[]) s6Step252ExitFvRow.sign=s6Step252ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step252ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step252ExitG_Incoming : rowsOwned s6Step252ExitGBefore [s6Step252ExitGRow,s6Step252ExitFRow,s6Step252ExitFvRow,s6Step252ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step252ExitGRow,s6Step252ExitFRow,s6Step252ExitFvRow,s6Step252ExitGvRow] 0 s6Step252ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step252ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step252ExitG_Outgoing : rowsOwned s6Step252ExitGvAfter [s6Step252ExitGOut,s6Step252ExitFOut,s6Step252ExitFvOut,s6Step252ExitGvOut] :=
  hmrRows_owned_drop s6Step252ExitGvAfter [s6Step252ExitGOut,s6Step252ExitFOut,s6Step252ExitFvOut,s6Step252ExitGvOut] 0 s6Step252ExitBank_outgoingOwned

private theorem s6Step252ExitG_distinct : (s6Step252ExitGRow.sign::s6Step252ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step252ExitG_owned : (s6Step252ExitGRow.sign::s6Step252ExitGRow.payload).toFinset⊆s6Step252ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step252ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step252ExitG_retired : s6Step252ExitGBefore.retireSet s6Step252ExitGExtra.toFinset=s6Step252ExitGAfter := by
  unfold Arena.retireSet s6Step252ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step252ExitGBefore,s6Step252ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step252ExitG_checked : planRowResizeLog s6Step252ExitGBefore s6Step252ExitGRow 144 []=
    some (s6Step252ExitGAfter,s6Step252ExitGOut,shrinkRow 777 s6Step252ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step252ExitGBefore s6Step252ExitGRow 144 s6Step252ExitG_distinct s6Step252ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step252ExitGRow.payload.take 144) s6Step252ExitGRow.sign=s6Step252ExitGOut := by decide +kernel
  have hi : s6Step252ExitGRow.payload.drop 144=s6Step252ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step252ExitG_retired] at result
  exact result

private def s6Step252ExitGvBefore : Arena := s6Step252ExitFAfter

private theorem s6Step252ExitGv_Incoming : rowsOwned s6Step252ExitGvBefore [s6Step252ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step252ExitGRow,s6Step252ExitFRow,s6Step252ExitFvRow,s6Step252ExitGvRow] 3 s6Step252ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step252ExitGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step252ExitGv_Outgoing : rowsOwned s6Step252ExitGvAfter [s6Step252ExitGvOut] :=
  hmrRows_owned_drop s6Step252ExitGvAfter [s6Step252ExitGOut,s6Step252ExitFOut,s6Step252ExitFvOut,s6Step252ExitGvOut] 3 s6Step252ExitBank_outgoingOwned

private theorem s6Step252ExitGv_distinct : (s6Step252ExitGvRow.sign::s6Step252ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step252ExitGv_owned : (s6Step252ExitGvRow.sign::s6Step252ExitGvRow.payload).toFinset⊆s6Step252ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step252ExitGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step252ExitGv_retired : s6Step252ExitGvBefore.retireSet s6Step252ExitGvExtra.toFinset=s6Step252ExitGvAfter := by
  unfold Arena.retireSet s6Step252ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step252ExitGvBefore,s6Step252ExitFAfter,s6Step252ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step252ExitGv_checked : planRowResizeLog s6Step252ExitGvBefore s6Step252ExitGvRow 141 []=
    some (s6Step252ExitGvAfter,s6Step252ExitGvOut,shrinkRow 775 s6Step252ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step252ExitGvBefore s6Step252ExitGvRow 141 s6Step252ExitGv_distinct s6Step252ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step252ExitGvRow.payload.take 141) s6Step252ExitGvRow.sign=s6Step252ExitGvOut := by decide +kernel
  have hi : s6Step252ExitGvRow.payload.drop 141=s6Step252ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step252ExitGv_retired] at result
  exact result

private theorem s6Step252ExitBank_rows : planWindowRowsLog s6Step252ExitGBefore [(s6Step252ExitGRow,144),(s6Step252ExitFRow,144),(s6Step252ExitFvRow,142),(s6Step252ExitGvRow,141)] [[],[],[],[]]=
    some (s6Step252ExitGvAfter,[s6Step252ExitGOut,s6Step252ExitFOut,s6Step252ExitFvOut,s6Step252ExitGvOut],(shrinkRow 777 s6Step252ExitGExtra ++ (shrinkRow 795 s6Step252ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step252ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step252ExitGvAfter [] []=some (s6Step252ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step252ExitGvBefore s6Step252ExitGvAfter s6Step252ExitGvAfter
    s6Step252ExitGvRow s6Step252ExitGvOut 141 [] [] [] []
    (shrinkRow 775 s6Step252ExitGvExtra) ([]) s6Step252ExitGv_Incoming s6Step252ExitGv_checked h4 s6Step252ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step252ExitFvBefore s6Step252ExitFvAfter s6Step252ExitGvAfter
    s6Step252ExitFvRow s6Step252ExitFvOut 142 [] [(s6Step252ExitGvRow,141)] [[]] [s6Step252ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step252ExitGvExtra ++ [])) s6Step252ExitFv_Incoming s6Step252ExitFv_checked h3 s6Step252ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step252ExitFBefore s6Step252ExitFAfter s6Step252ExitGvAfter
    s6Step252ExitFRow s6Step252ExitFOut 144 [] [(s6Step252ExitFvRow,142),(s6Step252ExitGvRow,141)] [[],[]] [s6Step252ExitFvOut,s6Step252ExitGvOut]
    (shrinkRow 795 s6Step252ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step252ExitGvExtra ++ []))) s6Step252ExitF_Incoming s6Step252ExitF_checked h2 s6Step252ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step252ExitGBefore s6Step252ExitGAfter s6Step252ExitGvAfter
    s6Step252ExitGRow s6Step252ExitGOut 144 [] [(s6Step252ExitFRow,144),(s6Step252ExitFvRow,142),(s6Step252ExitGvRow,141)] [[],[],[]] [s6Step252ExitFOut,s6Step252ExitFvOut,s6Step252ExitGvOut]
    (shrinkRow 777 s6Step252ExitGExtra) ((shrinkRow 795 s6Step252ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step252ExitGvExtra ++ [])))) s6Step252ExitG_Incoming s6Step252ExitG_checked h1 s6Step252ExitG_Outgoing
  exact h0

private theorem s6Step252ExitBank_checked : compileHmrBankResizeLog .exit s6Step252ExitGBefore ⟨s6Step252ExitFRow,s6Step252ExitGRow,s6Step252ExitFvRow,s6Step252ExitGvRow⟩ ⟨144,144,142,141⟩ [[],[],[],[]]=
    some (s6Step252ExitGvAfter,⟨s6Step252ExitFOut,s6Step252ExitGOut,s6Step252ExitFvOut,s6Step252ExitGvOut⟩,(shrinkRow 777 s6Step252ExitGExtra ++ (shrinkRow 795 s6Step252ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step252ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step252ExitBank_rows]
  rfl

private theorem s6Step252Add0_apart : Disjoint s6Step252Add0Arena.live s6Step252Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step252Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step252Add0_card : s6Step252Add0Arena.live.card=897 := by
  decide +kernel

private theorem s6Step252Add0_borrowed : s6Step252Add0Arena.checkBorrow (hmrHybridCount s6Step252Add0Arena s6Step252Add0B.length) s6Step252Add0Work=some s6Step252Add0During := by
  have len : s6Step252Add0Work.length=hmrHybridCount s6Step252Add0Arena s6Step252Add0B.length := by
    rw [hmrHybridCount,s6Step252Add0_card]
    decide +kernel
  have nd : s6Step252Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step252Add0Arena s6Step252Add0During s6Step252Add0Work.toFinset s6Step252Add0_bounded s6Step252Add0_apart rfl

private theorem s6Step252Add0_distinct : (822::850::864::(s6Step252Add0A++s6Step252Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step252Add0_owned : (822::850::864::(s6Step252Add0A++s6Step252Add0B)).toFinset⊆s6Step252Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step252Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step252Add0_checked : compileHmrHybridCinLog s6Step252Add0Arena 850 822 864 s6Step252Add0A s6Step252Add0B s6Step252Add0Work=some s6Step252Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step252Add0Arena s6Step252Add0During 850 822 864 s6Step252Add0A s6Step252Add0B s6Step252Add0Work
    (by decide +kernel) (by decide +kernel) s6Step252Add0_distinct
    (fun q hq => s6Step252Add0_owned (List.mem_toFinset.mpr hq)) s6Step252Add0_borrowed

private theorem s6Step252Add1_apart : Disjoint s6Step252Add1Arena.live s6Step252Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step252Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step252Add1_card : s6Step252Add1Arena.live.card=897 := by
  decide +kernel

private theorem s6Step252Add1_borrowed : s6Step252Add1Arena.checkBorrow (hmrHybridCount s6Step252Add1Arena s6Step252Add1B.length) s6Step252Add1Work=some s6Step252Add1During := by
  have len : s6Step252Add1Work.length=hmrHybridCount s6Step252Add1Arena s6Step252Add1B.length := by
    rw [hmrHybridCount,s6Step252Add1_card]
    decide +kernel
  have nd : s6Step252Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step252Add1Arena s6Step252Add1During s6Step252Add1Work.toFinset s6Step252Add1_bounded s6Step252Add1_apart rfl

private theorem s6Step252Add1_distinct : (822::850::864::(s6Step252Add1A++s6Step252Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step252Add1_owned : (822::850::864::(s6Step252Add1A++s6Step252Add1B)).toFinset⊆s6Step252Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step252Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step252Add1_checked : compileHmrHybridCinLog s6Step252Add1Arena 850 822 864 s6Step252Add1A s6Step252Add1B s6Step252Add1Work=some s6Step252Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step252Add1Arena s6Step252Add1During 850 822 864 s6Step252Add1A s6Step252Add1B s6Step252Add1Work
    (by decide +kernel) (by decide +kernel) s6Step252Add1_distinct
    (fun q hq => s6Step252Add1_owned (List.mem_toFinset.mpr hq)) s6Step252Add1_borrowed

private theorem s6Step252F4_apart : Disjoint (s6Step252Add0A++s6Step252Add0B).toFinset (s6Step252Add1A++s6Step252Add1B).toFinset := by
  have nd : ((s6Step252Add0A++s6Step252Add0B)++(s6Step252Add1A++s6Step252Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step252F4_carry : s6Step252F4FlagArena.checkBorrow 1 [864]=some s6Step252Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step252F4FlagArena,s6Step252HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step252F4FlagArena,s6Step252HeadFvAfter,s6Step252Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step252F4_distinct : (860::850::822::864::((s6Step252Add0A++s6Step252Add1A)++(s6Step252Add0B++s6Step252Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step252F4_flag : s6Step252HeadFvAfter.checkBorrow 1 [822]=some s6Step252F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step252HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step252F4_owned : (860::850::((s6Step252Add0A++s6Step252Add1A)++(s6Step252Add0B++s6Step252Add1B))).toFinset⊆s6Step252HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step252HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step252F4_checked : compileHmrHybridF4Log s6Step252HeadFvAfter 860 850 s6Step252Add0A s6Step252Add0B s6Step252Add1A s6Step252Add1B [822] [864] s6Step252Add0Work s6Step252Add1Work=some s6Step252F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step252HeadFvAfter s6Step252F4FlagArena s6Step252Add0Arena s6Step252Add0During s6Step252Add1During 860 850
    s6Step252Add0A s6Step252Add0B s6Step252Add1A s6Step252Add1B [822] [864] s6Step252Add0Work s6Step252Add1Work
    (fun q hq => s6Step252F4_owned (List.mem_toFinset.mpr hq)) s6Step252F4_flag s6Step252F4_carry
    s6Step252F4_distinct s6Step252F4_apart s6Step252Add0_checked s6Step252Add1_checked

private theorem s6Step252Front_branch : s6Step252FrontSigmaArena.checkBorrow 1 [850]=some s6Step252HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step252FrontSigmaArena,s6Step252EntryGvAfter,s6Step252EntryFAfter,arenaWires]
  · ext q
    simp only [s6Step252FrontSigmaArena,s6Step252EntryGvAfter,s6Step252EntryFAfter,s6Step252HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step252Front_entry : HmrFrontEntryValid s6Step252EntryFBefore s6Step252FrontBank 145 141 ⟨144,144,142,141⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step252FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step252EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step252EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step252FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step252Front_sigma : s6Step252EntryGvAfter.checkBorrow 1 [860]=some s6Step252FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step252EntryGvAfter,s6Step252EntryFAfter,arenaWires]
  · rfl

private def s6Step252HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step252HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step252HeadFBefore : Arena := s6Step252HeadGAfter

private def s6Step252HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 862],795⟩

private def s6Step252HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818],776⟩

private def s6Step252HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 830],777⟩

private def s6Step252HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863],775⟩

private theorem s6Step252HeadBank_incomingDistinct : ([s6Step252HeadGRow,s6Step252HeadFRow,s6Step252HeadGvRow,s6Step252HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step252HeadF_Incoming : rowsOwned s6Step252HeadFBefore [s6Step252HeadFRow,s6Step252HeadGvRow,s6Step252HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step252HeadGRow,s6Step252HeadFRow,s6Step252HeadGvRow,s6Step252HeadFvRow] 1 s6Step252HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step252HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step252HeadBank_outgoingOwned : rowsOwned s6Step252HeadFvAfter [s6Step252HeadGOut,s6Step252HeadFOut,s6Step252HeadGvOut,s6Step252HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step252HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step252HeadF_Outgoing : rowsOwned s6Step252HeadFvAfter [s6Step252HeadFOut,s6Step252HeadGvOut,s6Step252HeadFvOut] :=
  hmrRows_owned_drop s6Step252HeadFvAfter [s6Step252HeadGOut,s6Step252HeadFOut,s6Step252HeadGvOut,s6Step252HeadFvOut] 1 s6Step252HeadBank_outgoingOwned

private theorem s6Step252HeadF_distinct : (s6Step252HeadFRow.sign::s6Step252HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step252HeadF_owned : (s6Step252HeadFRow.sign::s6Step252HeadFRow.payload).toFinset⊆s6Step252HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step252HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step252HeadF_reserved : s6Step252HeadFBefore.reserve s6Step252HeadFFresh.toFinset=some s6Step252HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step252HeadFFresh,arenaWires]
  · norm_num [s6Step252HeadFBefore,s6Step252HeadGAfter,s6Step252HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step252HeadFAfter,s6Step252HeadFBefore,s6Step252HeadGAfter,s6Step252HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step252HeadF_checked : planRowResizeLog s6Step252HeadFBefore s6Step252HeadFRow 146 s6Step252HeadFFresh=
    some (s6Step252HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 862, 868],795⟩,growRow 795 s6Step252HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step252HeadFBefore s6Step252HeadFAfter s6Step252HeadFRow 146 s6Step252HeadFFresh
    s6Step252HeadF_distinct s6Step252HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step252HeadF_reserved
  have rowEq : WindowRow.mk (s6Step252HeadFRow.payload++s6Step252HeadFFresh) s6Step252HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 862, 868],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step252HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step252HeadFvBefore : Arena := s6Step252HeadGvAfter

private theorem s6Step252HeadFv_Incoming : rowsOwned s6Step252HeadFvBefore [s6Step252HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step252HeadGRow,s6Step252HeadFRow,s6Step252HeadGvRow,s6Step252HeadFvRow] 3 s6Step252HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step252HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step252HeadFv_Outgoing : rowsOwned s6Step252HeadFvAfter [s6Step252HeadFvOut] :=
  hmrRows_owned_drop s6Step252HeadFvAfter [s6Step252HeadGOut,s6Step252HeadFOut,s6Step252HeadGvOut,s6Step252HeadFvOut] 3 s6Step252HeadBank_outgoingOwned

private theorem s6Step252HeadFv_distinct : (s6Step252HeadFvRow.sign::s6Step252HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step252HeadFv_owned : (s6Step252HeadFvRow.sign::s6Step252HeadFvRow.payload).toFinset⊆s6Step252HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step252HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step252HeadFv_reserved : s6Step252HeadFvBefore.reserve s6Step252HeadFvFresh.toFinset=some s6Step252HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step252HeadFvFresh,arenaWires]
  · norm_num [s6Step252HeadFvBefore,s6Step252HeadGvAfter,s6Step252HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step252HeadFvAfter,s6Step252HeadFvBefore,s6Step252HeadGvAfter,s6Step252HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step252HeadFv_checked : planRowResizeLog s6Step252HeadFvBefore s6Step252HeadFvRow 142 s6Step252HeadFvFresh=
    some (s6Step252HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839],776⟩,growRow 776 s6Step252HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step252HeadFvBefore s6Step252HeadFvAfter s6Step252HeadFvRow 142 s6Step252HeadFvFresh
    s6Step252HeadFv_distinct s6Step252HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step252HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step252HeadFvRow.payload++s6Step252HeadFvFresh) s6Step252HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step252HeadG_Incoming : rowsOwned s6Step252HeadGBefore [s6Step252HeadGRow,s6Step252HeadFRow,s6Step252HeadGvRow,s6Step252HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step252HeadGRow,s6Step252HeadFRow,s6Step252HeadGvRow,s6Step252HeadFvRow] 0 s6Step252HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step252HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step252HeadG_Outgoing : rowsOwned s6Step252HeadFvAfter [s6Step252HeadGOut,s6Step252HeadFOut,s6Step252HeadGvOut,s6Step252HeadFvOut] :=
  hmrRows_owned_drop s6Step252HeadFvAfter [s6Step252HeadGOut,s6Step252HeadFOut,s6Step252HeadGvOut,s6Step252HeadFvOut] 0 s6Step252HeadBank_outgoingOwned

private theorem s6Step252HeadG_distinct : (s6Step252HeadGRow.sign::s6Step252HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step252HeadG_owned : (s6Step252HeadGRow.sign::s6Step252HeadGRow.payload).toFinset⊆s6Step252HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step252HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step252HeadG_reserved : s6Step252HeadGBefore.reserve s6Step252HeadGFresh.toFinset=some s6Step252HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step252HeadGFresh,arenaWires]
  · norm_num [s6Step252HeadGBefore,s6Step252HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step252HeadGAfter,s6Step252HeadGBefore,s6Step252HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step252HeadG_checked : planRowResizeLog s6Step252HeadGBefore s6Step252HeadGRow 146 s6Step252HeadGFresh=
    some (s6Step252HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 830, 786],777⟩,growRow 777 s6Step252HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step252HeadGBefore s6Step252HeadGAfter s6Step252HeadGRow 146 s6Step252HeadGFresh
    s6Step252HeadG_distinct s6Step252HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step252HeadG_reserved
  have rowEq : WindowRow.mk (s6Step252HeadGRow.payload++s6Step252HeadGFresh) s6Step252HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 830, 786],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step252HeadGvBefore : Arena := s6Step252HeadFAfter

private theorem s6Step252HeadGv_Incoming : rowsOwned s6Step252HeadGvBefore [s6Step252HeadGvRow,s6Step252HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step252HeadGRow,s6Step252HeadFRow,s6Step252HeadGvRow,s6Step252HeadFvRow] 2 s6Step252HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step252HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step252HeadGv_Outgoing : rowsOwned s6Step252HeadFvAfter [s6Step252HeadGvOut,s6Step252HeadFvOut] :=
  hmrRows_owned_drop s6Step252HeadFvAfter [s6Step252HeadGOut,s6Step252HeadFOut,s6Step252HeadGvOut,s6Step252HeadFvOut] 2 s6Step252HeadBank_outgoingOwned

private theorem s6Step252HeadGv_distinct : (s6Step252HeadGvRow.sign::s6Step252HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step252HeadGv_owned : (s6Step252HeadGvRow.sign::s6Step252HeadGvRow.payload).toFinset⊆s6Step252HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step252HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step252HeadGv_reserved : s6Step252HeadGvBefore.reserve s6Step252HeadGvFresh.toFinset=some s6Step252HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step252HeadGvFresh,arenaWires]
  · norm_num [s6Step252HeadGvBefore,s6Step252HeadFAfter,s6Step252HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step252HeadGvAfter,s6Step252HeadGvBefore,s6Step252HeadFAfter,s6Step252HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step252HeadGv_checked : planRowResizeLog s6Step252HeadGvBefore s6Step252HeadGvRow 142 s6Step252HeadGvFresh=
    some (s6Step252HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 805],775⟩,growRow 775 s6Step252HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step252HeadGvBefore s6Step252HeadGvAfter s6Step252HeadGvRow 142 s6Step252HeadGvFresh
    s6Step252HeadGv_distinct s6Step252HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step252HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step252HeadGvRow.payload++s6Step252HeadGvFresh) s6Step252HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 805],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step252HeadBank_rows : planWindowRowsLog s6Step252HeadGBefore [(s6Step252HeadGRow,146),(s6Step252HeadFRow,146),(s6Step252HeadGvRow,142),(s6Step252HeadFvRow,142)] [s6Step252HeadGFresh,s6Step252HeadFFresh,s6Step252HeadGvFresh,s6Step252HeadFvFresh]=
    some (s6Step252HeadFvAfter,[s6Step252HeadGOut,s6Step252HeadFOut,s6Step252HeadGvOut,s6Step252HeadFvOut],(growRow 777 s6Step252HeadGFresh ++ (growRow 795 s6Step252HeadFFresh ++ (growRow 775 s6Step252HeadGvFresh ++ (growRow 776 s6Step252HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step252HeadFvAfter [] []=some (s6Step252HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step252HeadFvBefore s6Step252HeadFvAfter s6Step252HeadFvAfter
    s6Step252HeadFvRow s6Step252HeadFvOut 142 s6Step252HeadFvFresh [] [] []
    (growRow 776 s6Step252HeadFvFresh) ([]) s6Step252HeadFv_Incoming s6Step252HeadFv_checked h4 s6Step252HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step252HeadGvBefore s6Step252HeadGvAfter s6Step252HeadFvAfter
    s6Step252HeadGvRow s6Step252HeadGvOut 142 s6Step252HeadGvFresh [(s6Step252HeadFvRow,142)] [s6Step252HeadFvFresh] [s6Step252HeadFvOut]
    (growRow 775 s6Step252HeadGvFresh) ((growRow 776 s6Step252HeadFvFresh ++ [])) s6Step252HeadGv_Incoming s6Step252HeadGv_checked h3 s6Step252HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step252HeadFBefore s6Step252HeadFAfter s6Step252HeadFvAfter
    s6Step252HeadFRow s6Step252HeadFOut 146 s6Step252HeadFFresh [(s6Step252HeadGvRow,142),(s6Step252HeadFvRow,142)] [s6Step252HeadGvFresh,s6Step252HeadFvFresh] [s6Step252HeadGvOut,s6Step252HeadFvOut]
    (growRow 795 s6Step252HeadFFresh) ((growRow 775 s6Step252HeadGvFresh ++ (growRow 776 s6Step252HeadFvFresh ++ []))) s6Step252HeadF_Incoming s6Step252HeadF_checked h2 s6Step252HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step252HeadGBefore s6Step252HeadGAfter s6Step252HeadFvAfter
    s6Step252HeadGRow s6Step252HeadGOut 146 s6Step252HeadGFresh [(s6Step252HeadFRow,146),(s6Step252HeadGvRow,142),(s6Step252HeadFvRow,142)] [s6Step252HeadFFresh,s6Step252HeadGvFresh,s6Step252HeadFvFresh] [s6Step252HeadFOut,s6Step252HeadGvOut,s6Step252HeadFvOut]
    (growRow 777 s6Step252HeadGFresh) ((growRow 795 s6Step252HeadFFresh ++ (growRow 775 s6Step252HeadGvFresh ++ (growRow 776 s6Step252HeadFvFresh ++ [])))) s6Step252HeadG_Incoming s6Step252HeadG_checked h1 s6Step252HeadG_Outgoing
  exact h0

private theorem s6Step252HeadBank_checked : compileHmrBankResizeLog .headroom s6Step252HeadGBefore ⟨s6Step252HeadFRow,s6Step252HeadGRow,s6Step252HeadFvRow,s6Step252HeadGvRow⟩ ⟨146,146,142,142⟩ [s6Step252HeadGFresh,s6Step252HeadFFresh,s6Step252HeadGvFresh,s6Step252HeadFvFresh]=
    some (s6Step252HeadFvAfter,⟨s6Step252HeadFOut,s6Step252HeadGOut,s6Step252HeadFvOut,s6Step252HeadGvOut⟩,(growRow 777 s6Step252HeadGFresh ++ (growRow 795 s6Step252HeadFFresh ++ (growRow 775 s6Step252HeadGvFresh ++ (growRow 776 s6Step252HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step252HeadBank_rows]
  rfl

private theorem s6Step252Front_checked : compileHmrSourceFrontLog s6Step252EntryFBefore s6Step252FrontBank 145 141 ⟨144,144,142,141⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step252FrontLog=some s6Step252FrontPlan := by
  have pairEq : s6Step252FrontPair=⟨s6Step252HeadFRow,s6Step252HeadGRow,s6Step252HeadFvRow,s6Step252HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step252FrontHead=⟨s6Step252ExitFRow,s6Step252ExitGRow,s6Step252ExitFvRow,s6Step252ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step252Add0A=s6Step252FrontHead.f.wires := by decide +kernel
  have gEq : s6Step252Add0B=s6Step252FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step252Add1A=s6Step252FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step252Add1B=s6Step252FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step252EntryFBefore s6Step252FrontBank 145 141 ⟨144,144,142,141⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step252FrontLog s6Step252FrontPlan
  · exact s6Step252Front_entry
  · exact s6Step252EntryBank_checked
  · exact s6Step252Front_sigma
  · rfl
  · exact s6Step252Front_branch
  · rfl
  · simpa only [s6Step252FrontPlan,pairEq] using s6Step252HeadBank_checked
  · simpa only [s6Step252FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step252F4_checked
  · exact s6Step252Counter_checked
  · rfl
  · simpa only [s6Step252FrontPlan,headEq] using s6Step252ExitBank_checked

private theorem s6Step252Complete_explicit_checked : compileHmrEarlyStepLog s6Step252EntryFBefore s6Step252FrontBank 145 141 ⟨144,144,142,141⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 51 s6Step252CompleteLog=some s6Step252CompletePlan := by
  let Q := s6Step252EarlyControlPlan
  have hq := s6Step252EarlyControl_plan_checked
  have fv1 : s6Step252CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step252CompleteOut.fv.payload[2]?.getD s6Step252CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step252CompleteOut.fv.payload[3]?.getD s6Step252CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step252CompleteOut.fv.payload[4]?.getD s6Step252CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step252EntryFBefore s6Step252EarlyControlArena s6Step252FrontBank 145 141 ⟨144,144,142,141⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 51 s6Step252CompleteLog s6Step252FrontPlan Q
    s6Step252Front_checked s6Step252Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step252Complete_owned s6Step252Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step252EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 769 860 s6Step252CompleteOut.fv.second (s6Step252CompleteOut.fv.payload[2]?.getD s6Step252CompleteOut.fv.sign) (s6Step252CompleteOut.fv.payload[3]?.getD s6Step252CompleteOut.fv.sign) (s6Step252CompleteOut.fv.payload[4]?.getD s6Step252CompleteOut.fv.sign) 850 51 s6Step252EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep252Arena : Arena := s6Step252EntryFBefore
def s6PrivateStep252Bank : WindowBank := s6Step252FrontBank
def s6PrivateStep252Spec : HmrSourceWalkStepLog := ⟨145,141,⟨144,144,142,141⟩,51,.early s6Step252CompleteLog⟩
def s6PrivateStep252Plan : HmrSourceStepPlan := .early s6Step252CompletePlan
theorem s6PrivateStep252_source : s6PrivateStep252Spec=s6ObservedLogs240[12] := rfl
theorem s6PrivateStep252_checked : compileHmrSourceStepLog s6PrivateStep252Arena s6PrivateStep252Bank
    s6PrivateStep252Spec.fgWidth s6PrivateStep252Spec.vWidth s6PrivateStep252Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905]
    6 498 252 s6PrivateStep252Spec.need none s6PrivateStep252Spec.log=some s6PrivateStep252Plan := by
  change compileHmrSourceStepLog s6Step252EntryFBefore s6Step252FrontBank 145 141 ⟨144,144,142,141⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] 6 498 252 51 none (.early s6Step252CompleteLog)=some (.early s6Step252CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 252<498)]
  rw [s6Step252Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
