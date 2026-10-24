import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep239
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

private def s6Step241CompleteMoves : List (Wire × Wire) := [(830,149)]

private def s6Step241EarlyControlLog : HmrEarlyControlLog := ⟨[830, 818, 888, 864, 857],[822],[869],[868, 805, 810, 809, 817, 812],[]⟩

private def s6Step241FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[857], [864], [818], [888]],[[], [], [], []]⟩,[786],[841],[822],[869],[868, 805, 810, 809, 817, 812, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[868, 805, 810, 809, 817, 812, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[822, 869, 868, 805]⟩

private def s6Step241CompleteLog : HmrEarlyStepLog := ⟨s6Step241FrontLog,s6Step241CompleteMoves,s6Step241EarlyControlLog⟩

private def s6Step241ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405],795⟩

private def s6Step241ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848],776⟩

private def s6Step241ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148],777⟩

private def s6Step241ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908],775⟩

private def s6Step241FrontOut : WindowBank := ⟨s6Step241ExitFOut,s6Step241ExitGOut,s6Step241ExitFvOut,s6Step241ExitGvOut⟩

private def s6Step241CompleteOut : WindowBank := s6Step241FrontOut.repacked s6Step241CompleteMoves

private def s6Step241EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step241EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step241EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step241EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step241EarlyControlPositiveArena,[822],s6Step241EarlyControlEqualityArena,[869],⟨⟨786,false⟩,[⟨⟨822,false⟩,869⟩]⟩⟩

private def s6Step241EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step241EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step241EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step241EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step241EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step241EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step241EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,830⟩,⟨⟨772,false⟩,818⟩,⟨⟨771,false⟩,888⟩,⟨⟨770,false⟩,864⟩,⟨⟨769,false⟩,857⟩]⟩

private def s6Step241EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step241EarlyControlZeroArena,s6Step241EarlyControlZeroPlan,s6Step241EarlyControlClassPlan,s6Step241EarlyControlFlagArena,s6Step241EarlyControlFittedArena,s6Step241EarlyControlHistoryArena,s6Step241EarlyControlSigmaArena,s6Step241EarlyControlOutputArena,s6Step241EarlyControlLog⟩

private def s6Step241CounterWork : List Wire := [822, 869, 868, 805]

private theorem s6Step241Counter_bounded : s6Step241CounterWork.toFinset⊆arenaWires := by norm_num [s6Step241CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step241HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step241CounterDuring : Arena := ⟨s6Step241HeadFvAfter.live∪s6Step241CounterWork.toFinset,Finset.union_subset s6Step241HeadFvAfter.bounded s6Step241Counter_bounded⟩

private def s6Step241EntryFFresh : List Wire := []

private def s6Step241EntryFvFresh : List Wire := []

private def s6Step241EntryGFresh : List Wire := []

private def s6Step241EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step241EntryGvAfter : Arena := s6Step241EntryFBefore

private def s6Step241EntryGvFresh : List Wire := []

private def s6Step241ExitFExtra : List Wire := [864]

private def s6Step241ExitFvExtra : List Wire := [888]

private def s6Step241ExitGExtra : List Wire := [149, 857]

private def s6Step241ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<149) ∨ (150≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step241ExitGvExtra : List Wire := [818]

private def s6Step241Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step241Add0Work : List Wire := [868, 805, 810, 809, 817, 812, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step241Add0_bounded : s6Step241Add0Work.toFinset⊆arenaWires := by
  have h : s6Step241Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step241Add0During : Arena := ⟨s6Step241Add0Arena.live∪s6Step241Add0Work.toFinset,Finset.union_subset s6Step241Add0Arena.bounded s6Step241Add0_bounded⟩

private def s6Step241Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step241Add1Work : List Wire := [868, 805, 810, 809, 817, 812, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step241Add1_bounded : s6Step241Add1Work.toFinset⊆arenaWires := by
  have h : s6Step241Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step241Add1During : Arena := ⟨s6Step241Add1Arena.live∪s6Step241Add1Work.toFinset,Finset.union_subset s6Step241Add1Arena.bounded s6Step241Add1_bounded⟩

private def s6Step241F4FlagArena : Arena := ⟨s6Step241HeadFvAfter.live∪{822},Finset.union_subset s6Step241HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step241F4Plan : HmrHybridF4Plan := ⟨s6Step241F4FlagArena,[822],s6Step241Add0Arena,[869],s6Step241Add0During,s6Step241Add0Work,s6Step241Add1During,s6Step241Add1Work⟩

private def s6Step241HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 864],795⟩

private def s6Step241HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 888],776⟩

private def s6Step241HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 857],777⟩

private def s6Step241HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 818],775⟩

private def s6Step241FrontHead : WindowBank := ⟨s6Step241HeadFOut,s6Step241HeadGOut,s6Step241HeadFvOut,s6Step241HeadGvOut⟩

private def s6Step241EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405],795⟩

private def s6Step241EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848],776⟩

private def s6Step241EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149],777⟩

private def s6Step241EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908],775⟩

private def s6Step241FrontPair : WindowBank := ⟨s6Step241EntryFOut,s6Step241EntryGOut,s6Step241EntryFvOut,s6Step241EntryGvOut⟩

private def s6Step241FrontSigmaArena : Arena := ⟨s6Step241EntryGvAfter.live∪{786},Finset.union_subset s6Step241EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step241HeadFFresh : List Wire := [864]

private def s6Step241HeadFvFresh : List Wire := [888]

private def s6Step241HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step241HeadGFresh : List Wire := [857]

private def s6Step241HeadGvFresh : List Wire := [818]

private def s6Step241FrontPlan : HmrSourceFront := ⟨s6Step241EntryGvAfter,s6Step241FrontPair,(growRow 795 s6Step241EntryFFresh ++ (growRow 777 s6Step241EntryGFresh ++ (growRow 776 s6Step241EntryFvFresh ++ (growRow 775 s6Step241EntryGvFresh ++ [])))),s6Step241FrontSigmaArena,[786],s6Step241HeadGBefore,[841],
  s6Step241HeadFvAfter,s6Step241FrontHead,(growRow 777 s6Step241HeadGFresh ++ (growRow 795 s6Step241HeadFFresh ++ (growRow 775 s6Step241HeadGvFresh ++ (growRow 776 s6Step241HeadFvFresh ++ [])))),s6Step241F4Plan,s6Step241CounterDuring,s6Step241CounterWork,s6Step241ExitGvAfter,s6Step241FrontOut,(shrinkRow 777 s6Step241ExitGExtra ++ (shrinkRow 795 s6Step241ExitFExtra ++ (shrinkRow 776 s6Step241ExitFvExtra ++ (shrinkRow 775 s6Step241ExitGvExtra ++ []))))⟩

private def s6Step241CompletePlan : HmrEarlyStepPlan := ⟨s6Step241FrontPlan,s6Step241EarlyControlArena,s6Step241EarlyControlPlan,s6Step241CompleteMoves⟩

private theorem s6Step241Complete_apart : List.Disjoint (s6Step241CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [786, 841, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] := by
  have nd : ((s6Step241CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[786, 841, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step241Complete_owned : (s6Step241CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step241EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step241EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private def s6Step241CompleteMoveArena : Arena := ⟨s6Step241ExitGvAfter.live∪{149},Finset.union_subset s6Step241ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step241Complete_repack : s6Step241ExitGvAfter.checkRepack s6Step241CompleteMoves=some s6Step241EarlyControlArena := by
  have owned : 830∈s6Step241ExitGvAfter.live := by norm_num [s6Step241ExitGvAfter,arenaWires]
  have reserve : s6Step241ExitGvAfter.reserve {149}=some s6Step241CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s6Step241ExitGvAfter,arenaWires]
    · rfl
  have retired : s6Step241CompleteMoveArena.retireSet {830}=s6Step241EarlyControlArena := by
    unfold Arena.retireSet s6Step241EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s6Step241CompleteMoveArena,s6Step241ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s6Step241CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s6Step241CompleteMoveArena.retireSet {830}).checkRepack []=some s6Step241EarlyControlArena
  rw [retired]
  rfl

private theorem s6Step241EarlyControl_branchOwned : ([841] : List Wire).toFinset⊆s6Step241EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step241EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step241EarlyControl_branch : compileHmrBranchRetirement s6Step241EarlyControlSigmaArena 841=some s6Step241EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step241EarlyControl_branchOwned
  · ext q
    simp [s6Step241EarlyControlOutputArena,s6Step241EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step241EarlyControl_classEqualityBorrow : s6Step241EarlyControlPositiveArena.checkBorrow (([786, 822] : List Wire).length-1) s6Step241EarlyControlLog.classWork=some s6Step241EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step241EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step241EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step241EarlyControlEqualityArena,s6Step241EarlyControlPositiveArena,s6Step241EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step241EarlyControl_classEqualityOwned : ([786, 822] : List Wire).toFinset⊆s6Step241EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step241EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step241EarlyControl_classEquality : compileHmrEqualityLog s6Step241EarlyControlPositiveArena [786, 822] 0 s6Step241EarlyControlLog.classWork=some (s6Step241EarlyControlEqualityArena,s6Step241EarlyControlLog.classWork,s6Step241EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step241EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step241EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step241EarlyControl_classOwned : ([769, 857, 786] : List Wire).toFinset⊆s6Step241EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step241EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step241EarlyControl_positiveBorrow : s6Step241EarlyControlZeroArena.checkBorrow (1) s6Step241EarlyControlLog.positiveWork=some s6Step241EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step241EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step241EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step241EarlyControlPositiveArena,s6Step241EarlyControlZeroArena,s6Step241EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step241EarlyControl_class : compileHmrSourceClassLog s6Step241EarlyControlZeroArena false 769 s6Step241EarlyControlZeroPlan.top 0 786 s6Step241EarlyControlLog.positiveWork s6Step241EarlyControlLog.classWork=some s6Step241EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step241EarlyControlClassPlan s6Step241EarlyControlZeroArena false 769 s6Step241EarlyControlZeroPlan.top 0 786
  constructor
  · decide +kernel
  · exact s6Step241EarlyControl_classOwned
  · exact s6Step241EarlyControl_positiveBorrow
  · exact s6Step241EarlyControl_classEquality

private theorem s6Step241EarlyControl_entryRecordOwned : ([841, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] : List Wire).toFinset⊆s6Step241EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step241EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step241EarlyControl_entrySigmaOwned : ([786, 254] : List Wire).toFinset⊆s6Step241EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step241EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step241EarlyControl_fitBorrow : s6Step241EarlyControlFlagArena.checkBorrow ((49-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] : List Wire).length)) s6Step241EarlyControlLog.recordFresh=some s6Step241EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step241EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step241EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step241EarlyControlFittedArena,s6Step241EarlyControlFlagArena,s6Step241EarlyControlLog,arenaWires]

private theorem s6Step241EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] : List Wire).toFinset⊆s6Step241EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step241EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step241EarlyControl_fit : compileHmrRecordGrowLog s6Step241EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] 49 s6Step241EarlyControlLog.recordFresh=some s6Step241EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step241EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step241EarlyControl_fitBorrow

private theorem s6Step241EarlyControl_flagsBorrow : s6Step241EarlyControlEqualityArena.checkBorrow (6) s6Step241EarlyControlLog.flagWork=some s6Step241EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step241EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step241EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step241EarlyControlFlagArena,s6Step241EarlyControlEqualityArena,s6Step241EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step241EarlyControl_flagsOwned : ([869, 253, 252, 251] : List Wire).toFinset⊆s6Step241EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step241EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step241EarlyControl_flags : compileHmrFlagsLog s6Step241EarlyControlClassPlan.equalityArena s6Step241EarlyControlClassPlan.equality.top 253 252 251 s6Step241EarlyControlLog.flagWork=some s6Step241EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step241EarlyControl_flagsOwned⟩
  · exact s6Step241EarlyControl_flagsBorrow

private theorem s6Step241EarlyControl_historyBorrow : s6Step241EarlyControlArena.checkBorrow ((49-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] : List Wire).length)) s6Step241EarlyControlLog.recordFresh=some s6Step241EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step241EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step241EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step241EarlyControlHistoryArena,s6Step241EarlyControlArena,s6Step241EarlyControlLog,arenaWires]

private theorem s6Step241EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] : List Wire).toFinset⊆s6Step241EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step241EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step241EarlyControl_history : compileHmrRecordGrowLog s6Step241EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] 49 s6Step241EarlyControlLog.recordFresh=some s6Step241EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step241EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step241EarlyControl_historyBorrow

private theorem s6Step241EarlyControl_sigmaOwned : ([254, 786] : List Wire).toFinset⊆s6Step241EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step241EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step241EarlyControl_sigmaReleaseOwned : ([786] : List Wire).toFinset⊆s6Step241EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step241EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step241EarlyControl_sigmaRelease : s6Step241EarlyControlHistoryArena.release {786} (fun _ => false)=some s6Step241EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step241EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step241EarlyControlSigmaArena,s6Step241EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step241EarlyControl_sigma : compileHmrSigmaDropLog s6Step241EarlyControlHistoryArena false 0 0 254 786 []=some s6Step241EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step241EarlyControl_sigmaOwned⟩
  · exact s6Step241EarlyControl_sigmaRelease

private theorem s6Step241EarlyControl_zeroBorrow : s6Step241EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step241EarlyControlLog.zeroWork=some s6Step241EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step241EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step241EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step241EarlyControlZeroArena,s6Step241EarlyControlArena,s6Step241EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step241EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step241EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step241EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step241EarlyControl_zero : compileHmrEqualityLog s6Step241EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step241EarlyControlLog.zeroWork=some (s6Step241EarlyControlZeroArena,s6Step241EarlyControlLog.zeroWork,s6Step241EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step241EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step241EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step241EarlyControl_logged : s6Step241EarlyControlPlan.Logged s6Step241EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] 769 786 254 253 252 251 841 49 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step241EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step241EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step241EarlyControl_zero
  · exact s6Step241EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step241EarlyControl_flags
  · exact s6Step241EarlyControl_fit
  · exact s6Step241EarlyControl_history
  · exact s6Step241EarlyControl_sigma
  · exact s6Step241EarlyControl_branch

private theorem s6Step241EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step241EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] 769 786 254 253 252 251 841 49 s6Step241EarlyControlLog=some s6Step241EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step241EarlyControlPlan s6Step241EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] 769 786 254 253 252 251 841 49 s6Step241EarlyControl_logged

private def s6Step241EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405],795⟩

private def s6Step241EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848],776⟩

private def s6Step241EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149],777⟩

private def s6Step241EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908],775⟩

private def s6Step241FrontBank : WindowBank := ⟨s6Step241EntryFRow,s6Step241EntryGRow,s6Step241EntryFvRow,s6Step241EntryGvRow⟩

private def s6Step241Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 864, 795]

private def s6Step241Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 857, 777]

private def s6Step241Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 888, 776]

private def s6Step241Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 818, 775]

private theorem s6Step241Counter_apart : Disjoint s6Step241HeadFvAfter.live s6Step241CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step241HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step241Counter_borrowed : s6Step241HeadFvAfter.checkBorrow 4 s6Step241CounterWork=some s6Step241CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step241HeadFvAfter s6Step241CounterDuring s6Step241CounterWork.toFinset s6Step241Counter_bounded s6Step241Counter_apart rfl

private theorem s6Step241Counter_owned : (786::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step241HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step241HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step241Counter_checked : compileHmrCounterStepLog s6Step241HeadFvAfter true 786 [774, 773, 772, 771, 770, 769] s6Step241CounterWork=some s6Step241CounterDuring := by
  have owned : ∀q∈786::[774, 773, 772, 771, 770, 769],q∈s6Step241HeadFvAfter.live := fun q hq => s6Step241Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step241Counter_borrowed

private def s6Step241EntryFAfter : Arena := s6Step241EntryFBefore

private theorem s6Step241EntryBank_incomingDistinct : ([s6Step241EntryFRow,s6Step241EntryGRow,s6Step241EntryFvRow,s6Step241EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step241EntryF_Incoming : rowsOwned s6Step241EntryFBefore [s6Step241EntryFRow,s6Step241EntryGRow,s6Step241EntryFvRow,s6Step241EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step241EntryFRow,s6Step241EntryGRow,s6Step241EntryFvRow,s6Step241EntryGvRow] 0 s6Step241EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step241EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step241EntryBank_outgoingOwned : rowsOwned s6Step241EntryGvAfter [s6Step241EntryFOut,s6Step241EntryGOut,s6Step241EntryFvOut,s6Step241EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step241EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step241EntryF_Outgoing : rowsOwned s6Step241EntryGvAfter [s6Step241EntryFOut,s6Step241EntryGOut,s6Step241EntryFvOut,s6Step241EntryGvOut] :=
  hmrRows_owned_drop s6Step241EntryGvAfter [s6Step241EntryFOut,s6Step241EntryGOut,s6Step241EntryFvOut,s6Step241EntryGvOut] 0 s6Step241EntryBank_outgoingOwned

private theorem s6Step241EntryF_distinct : (s6Step241EntryFRow.sign::s6Step241EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step241EntryF_owned : (s6Step241EntryFRow.sign::s6Step241EntryFRow.payload).toFinset⊆s6Step241EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step241EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step241EntryF_reserved : s6Step241EntryFBefore.reserve s6Step241EntryFFresh.toFinset=some s6Step241EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step241EntryFFresh,arenaWires]
  · norm_num [s6Step241EntryFBefore,s6Step241EntryFFresh,arenaWires]
  · simp only [s6Step241EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step241EntryF_checked : planRowResizeLog s6Step241EntryFBefore s6Step241EntryFRow 150 s6Step241EntryFFresh=
    some (s6Step241EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405],795⟩,growRow 795 s6Step241EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step241EntryFBefore s6Step241EntryFAfter s6Step241EntryFRow 150 s6Step241EntryFFresh
    s6Step241EntryF_distinct s6Step241EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step241EntryF_reserved
  have rowEq : WindowRow.mk (s6Step241EntryFRow.payload++s6Step241EntryFFresh) s6Step241EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step241EntryFvAfter : Arena := s6Step241EntryFBefore

private def s6Step241EntryFvBefore : Arena := s6Step241EntryFBefore

private theorem s6Step241EntryFv_Incoming : rowsOwned s6Step241EntryFvBefore [s6Step241EntryFvRow,s6Step241EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step241EntryFRow,s6Step241EntryGRow,s6Step241EntryFvRow,s6Step241EntryGvRow] 2 s6Step241EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step241EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step241EntryFv_Outgoing : rowsOwned s6Step241EntryGvAfter [s6Step241EntryFvOut,s6Step241EntryGvOut] :=
  hmrRows_owned_drop s6Step241EntryGvAfter [s6Step241EntryFOut,s6Step241EntryGOut,s6Step241EntryFvOut,s6Step241EntryGvOut] 2 s6Step241EntryBank_outgoingOwned

private theorem s6Step241EntryFv_distinct : (s6Step241EntryFvRow.sign::s6Step241EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step241EntryFv_owned : (s6Step241EntryFvRow.sign::s6Step241EntryFvRow.payload).toFinset⊆s6Step241EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step241EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step241EntryFv_reserved : s6Step241EntryFvBefore.reserve s6Step241EntryFvFresh.toFinset=some s6Step241EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step241EntryFvFresh,arenaWires]
  · norm_num [s6Step241EntryFvBefore,s6Step241EntryFBefore,s6Step241EntryFvFresh,arenaWires]
  · simp only [s6Step241EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step241EntryFv_checked : planRowResizeLog s6Step241EntryFvBefore s6Step241EntryFvRow 135 s6Step241EntryFvFresh=
    some (s6Step241EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848],776⟩,growRow 776 s6Step241EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step241EntryFvBefore s6Step241EntryFvAfter s6Step241EntryFvRow 135 s6Step241EntryFvFresh
    s6Step241EntryFv_distinct s6Step241EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step241EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step241EntryFvRow.payload++s6Step241EntryFvFresh) s6Step241EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step241EntryGAfter : Arena := s6Step241EntryFBefore

private def s6Step241EntryGBefore : Arena := s6Step241EntryFBefore

private theorem s6Step241EntryG_Incoming : rowsOwned s6Step241EntryGBefore [s6Step241EntryGRow,s6Step241EntryFvRow,s6Step241EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step241EntryFRow,s6Step241EntryGRow,s6Step241EntryFvRow,s6Step241EntryGvRow] 1 s6Step241EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step241EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step241EntryG_Outgoing : rowsOwned s6Step241EntryGvAfter [s6Step241EntryGOut,s6Step241EntryFvOut,s6Step241EntryGvOut] :=
  hmrRows_owned_drop s6Step241EntryGvAfter [s6Step241EntryFOut,s6Step241EntryGOut,s6Step241EntryFvOut,s6Step241EntryGvOut] 1 s6Step241EntryBank_outgoingOwned

private theorem s6Step241EntryG_distinct : (s6Step241EntryGRow.sign::s6Step241EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step241EntryG_owned : (s6Step241EntryGRow.sign::s6Step241EntryGRow.payload).toFinset⊆s6Step241EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step241EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step241EntryG_reserved : s6Step241EntryGBefore.reserve s6Step241EntryGFresh.toFinset=some s6Step241EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step241EntryGFresh,arenaWires]
  · norm_num [s6Step241EntryGBefore,s6Step241EntryFBefore,s6Step241EntryGFresh,arenaWires]
  · simp only [s6Step241EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step241EntryG_checked : planRowResizeLog s6Step241EntryGBefore s6Step241EntryGRow 150 s6Step241EntryGFresh=
    some (s6Step241EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149],777⟩,growRow 777 s6Step241EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step241EntryGBefore s6Step241EntryGAfter s6Step241EntryGRow 150 s6Step241EntryGFresh
    s6Step241EntryG_distinct s6Step241EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step241EntryG_reserved
  have rowEq : WindowRow.mk (s6Step241EntryGRow.payload++s6Step241EntryGFresh) s6Step241EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step241EntryGvBefore : Arena := s6Step241EntryFBefore

private theorem s6Step241EntryGv_Incoming : rowsOwned s6Step241EntryGvBefore [s6Step241EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step241EntryFRow,s6Step241EntryGRow,s6Step241EntryFvRow,s6Step241EntryGvRow] 3 s6Step241EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step241EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step241EntryGv_Outgoing : rowsOwned s6Step241EntryGvAfter [s6Step241EntryGvOut] :=
  hmrRows_owned_drop s6Step241EntryGvAfter [s6Step241EntryFOut,s6Step241EntryGOut,s6Step241EntryFvOut,s6Step241EntryGvOut] 3 s6Step241EntryBank_outgoingOwned

private theorem s6Step241EntryGv_distinct : (s6Step241EntryGvRow.sign::s6Step241EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step241EntryGv_owned : (s6Step241EntryGvRow.sign::s6Step241EntryGvRow.payload).toFinset⊆s6Step241EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step241EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step241EntryGv_reserved : s6Step241EntryGvBefore.reserve s6Step241EntryGvFresh.toFinset=some s6Step241EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step241EntryGvFresh,arenaWires]
  · norm_num [s6Step241EntryGvBefore,s6Step241EntryFBefore,s6Step241EntryGvFresh,arenaWires]
  · simp only [s6Step241EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step241EntryGv_checked : planRowResizeLog s6Step241EntryGvBefore s6Step241EntryGvRow 135 s6Step241EntryGvFresh=
    some (s6Step241EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908],775⟩,growRow 775 s6Step241EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step241EntryGvBefore s6Step241EntryGvAfter s6Step241EntryGvRow 135 s6Step241EntryGvFresh
    s6Step241EntryGv_distinct s6Step241EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step241EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step241EntryGvRow.payload++s6Step241EntryGvFresh) s6Step241EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step241EntryBank_rows : planWindowRowsLog s6Step241EntryFBefore [(s6Step241EntryFRow,150),(s6Step241EntryGRow,150),(s6Step241EntryFvRow,135),(s6Step241EntryGvRow,135)] [s6Step241EntryFFresh,s6Step241EntryGFresh,s6Step241EntryFvFresh,s6Step241EntryGvFresh]=
    some (s6Step241EntryGvAfter,[s6Step241EntryFOut,s6Step241EntryGOut,s6Step241EntryFvOut,s6Step241EntryGvOut],(growRow 795 s6Step241EntryFFresh ++ (growRow 777 s6Step241EntryGFresh ++ (growRow 776 s6Step241EntryFvFresh ++ (growRow 775 s6Step241EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step241EntryGvAfter [] []=some (s6Step241EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step241EntryGvBefore s6Step241EntryGvAfter s6Step241EntryGvAfter
    s6Step241EntryGvRow s6Step241EntryGvOut 135 s6Step241EntryGvFresh [] [] []
    (growRow 775 s6Step241EntryGvFresh) ([]) s6Step241EntryGv_Incoming s6Step241EntryGv_checked h4 s6Step241EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step241EntryFvBefore s6Step241EntryFvAfter s6Step241EntryGvAfter
    s6Step241EntryFvRow s6Step241EntryFvOut 135 s6Step241EntryFvFresh [(s6Step241EntryGvRow,135)] [s6Step241EntryGvFresh] [s6Step241EntryGvOut]
    (growRow 776 s6Step241EntryFvFresh) ((growRow 775 s6Step241EntryGvFresh ++ [])) s6Step241EntryFv_Incoming s6Step241EntryFv_checked h3 s6Step241EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step241EntryGBefore s6Step241EntryGAfter s6Step241EntryGvAfter
    s6Step241EntryGRow s6Step241EntryGOut 150 s6Step241EntryGFresh [(s6Step241EntryFvRow,135),(s6Step241EntryGvRow,135)] [s6Step241EntryFvFresh,s6Step241EntryGvFresh] [s6Step241EntryFvOut,s6Step241EntryGvOut]
    (growRow 777 s6Step241EntryGFresh) ((growRow 776 s6Step241EntryFvFresh ++ (growRow 775 s6Step241EntryGvFresh ++ []))) s6Step241EntryG_Incoming s6Step241EntryG_checked h2 s6Step241EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step241EntryFBefore s6Step241EntryFAfter s6Step241EntryGvAfter
    s6Step241EntryFRow s6Step241EntryFOut 150 s6Step241EntryFFresh [(s6Step241EntryGRow,150),(s6Step241EntryFvRow,135),(s6Step241EntryGvRow,135)] [s6Step241EntryGFresh,s6Step241EntryFvFresh,s6Step241EntryGvFresh] [s6Step241EntryGOut,s6Step241EntryFvOut,s6Step241EntryGvOut]
    (growRow 795 s6Step241EntryFFresh) ((growRow 777 s6Step241EntryGFresh ++ (growRow 776 s6Step241EntryFvFresh ++ (growRow 775 s6Step241EntryGvFresh ++ [])))) s6Step241EntryF_Incoming s6Step241EntryF_checked h1 s6Step241EntryF_Outgoing
  exact h0

private theorem s6Step241EntryBank_checked : compileHmrBankResizeLog .entry s6Step241EntryFBefore ⟨s6Step241EntryFRow,s6Step241EntryGRow,s6Step241EntryFvRow,s6Step241EntryGvRow⟩ ⟨150,150,135,135⟩ [s6Step241EntryFFresh,s6Step241EntryGFresh,s6Step241EntryFvFresh,s6Step241EntryGvFresh]=
    some (s6Step241EntryGvAfter,⟨s6Step241EntryFOut,s6Step241EntryGOut,s6Step241EntryFvOut,s6Step241EntryGvOut⟩,(growRow 795 s6Step241EntryFFresh ++ (growRow 777 s6Step241EntryGFresh ++ (growRow 776 s6Step241EntryFvFresh ++ (growRow 775 s6Step241EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step241EntryBank_rows]
  rfl

private def s6Step241ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<149) ∨ (150≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step241ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<149) ∨ (150≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<868) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step241ExitFBefore : Arena := s6Step241ExitGAfter

private def s6Step241ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 864],795⟩

private def s6Step241ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 888],776⟩

private def s6Step241ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 857],777⟩

private def s6Step241ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 818],775⟩

private theorem s6Step241ExitBank_incomingDistinct : ([s6Step241ExitGRow,s6Step241ExitFRow,s6Step241ExitFvRow,s6Step241ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step241ExitF_Incoming : rowsOwned s6Step241ExitFBefore [s6Step241ExitFRow,s6Step241ExitFvRow,s6Step241ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step241ExitGRow,s6Step241ExitFRow,s6Step241ExitFvRow,s6Step241ExitGvRow] 1 s6Step241ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step241ExitFBefore (fun q => (0≤q ∧ q<149) ∨ (150≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<868) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step241ExitBank_outgoingOwned : rowsOwned s6Step241ExitGvAfter [s6Step241ExitGOut,s6Step241ExitFOut,s6Step241ExitFvOut,s6Step241ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step241ExitGvAfter (fun q => (0≤q ∧ q<149) ∨ (150≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step241ExitF_Outgoing : rowsOwned s6Step241ExitGvAfter [s6Step241ExitFOut,s6Step241ExitFvOut,s6Step241ExitGvOut] :=
  hmrRows_owned_drop s6Step241ExitGvAfter [s6Step241ExitGOut,s6Step241ExitFOut,s6Step241ExitFvOut,s6Step241ExitGvOut] 1 s6Step241ExitBank_outgoingOwned

private theorem s6Step241ExitF_distinct : (s6Step241ExitFRow.sign::s6Step241ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step241ExitF_owned : (s6Step241ExitFRow.sign::s6Step241ExitFRow.payload).toFinset⊆s6Step241ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step241ExitFBefore (fun q => (0≤q ∧ q<149) ∨ (150≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<868) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step241ExitF_retired : s6Step241ExitFBefore.retireSet s6Step241ExitFExtra.toFinset=s6Step241ExitFAfter := by
  unfold Arena.retireSet s6Step241ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step241ExitFBefore,s6Step241ExitGAfter,s6Step241ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step241ExitF_checked : planRowResizeLog s6Step241ExitFBefore s6Step241ExitFRow 150 []=
    some (s6Step241ExitFAfter,s6Step241ExitFOut,shrinkRow 795 s6Step241ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step241ExitFBefore s6Step241ExitFRow 150 s6Step241ExitF_distinct s6Step241ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step241ExitFRow.payload.take 150) s6Step241ExitFRow.sign=s6Step241ExitFOut := by decide +kernel
  have hi : s6Step241ExitFRow.payload.drop 150=s6Step241ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step241ExitF_retired] at result
  exact result

private def s6Step241ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<149) ∨ (150≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step241ExitFvBefore : Arena := s6Step241ExitFAfter

private theorem s6Step241ExitFv_Incoming : rowsOwned s6Step241ExitFvBefore [s6Step241ExitFvRow,s6Step241ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step241ExitGRow,s6Step241ExitFRow,s6Step241ExitFvRow,s6Step241ExitGvRow] 2 s6Step241ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step241ExitFvBefore (fun q => (0≤q ∧ q<149) ∨ (150≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step241ExitFv_Outgoing : rowsOwned s6Step241ExitGvAfter [s6Step241ExitFvOut,s6Step241ExitGvOut] :=
  hmrRows_owned_drop s6Step241ExitGvAfter [s6Step241ExitGOut,s6Step241ExitFOut,s6Step241ExitFvOut,s6Step241ExitGvOut] 2 s6Step241ExitBank_outgoingOwned

private theorem s6Step241ExitFv_distinct : (s6Step241ExitFvRow.sign::s6Step241ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step241ExitFv_owned : (s6Step241ExitFvRow.sign::s6Step241ExitFvRow.payload).toFinset⊆s6Step241ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step241ExitFvBefore (fun q => (0≤q ∧ q<149) ∨ (150≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step241ExitFv_retired : s6Step241ExitFvBefore.retireSet s6Step241ExitFvExtra.toFinset=s6Step241ExitFvAfter := by
  unfold Arena.retireSet s6Step241ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step241ExitFvBefore,s6Step241ExitFAfter,s6Step241ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step241ExitFv_checked : planRowResizeLog s6Step241ExitFvBefore s6Step241ExitFvRow 135 []=
    some (s6Step241ExitFvAfter,s6Step241ExitFvOut,shrinkRow 776 s6Step241ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step241ExitFvBefore s6Step241ExitFvRow 135 s6Step241ExitFv_distinct s6Step241ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step241ExitFvRow.payload.take 135) s6Step241ExitFvRow.sign=s6Step241ExitFvOut := by decide +kernel
  have hi : s6Step241ExitFvRow.payload.drop 135=s6Step241ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step241ExitFv_retired] at result
  exact result

private def s6Step241ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step241ExitG_Incoming : rowsOwned s6Step241ExitGBefore [s6Step241ExitGRow,s6Step241ExitFRow,s6Step241ExitFvRow,s6Step241ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step241ExitGRow,s6Step241ExitFRow,s6Step241ExitFvRow,s6Step241ExitGvRow] 0 s6Step241ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step241ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step241ExitG_Outgoing : rowsOwned s6Step241ExitGvAfter [s6Step241ExitGOut,s6Step241ExitFOut,s6Step241ExitFvOut,s6Step241ExitGvOut] :=
  hmrRows_owned_drop s6Step241ExitGvAfter [s6Step241ExitGOut,s6Step241ExitFOut,s6Step241ExitFvOut,s6Step241ExitGvOut] 0 s6Step241ExitBank_outgoingOwned

private theorem s6Step241ExitG_distinct : (s6Step241ExitGRow.sign::s6Step241ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step241ExitG_owned : (s6Step241ExitGRow.sign::s6Step241ExitGRow.payload).toFinset⊆s6Step241ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step241ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step241ExitG_retired : s6Step241ExitGBefore.retireSet s6Step241ExitGExtra.toFinset=s6Step241ExitGAfter := by
  unfold Arena.retireSet s6Step241ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step241ExitGBefore,s6Step241ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step241ExitG_checked : planRowResizeLog s6Step241ExitGBefore s6Step241ExitGRow 149 []=
    some (s6Step241ExitGAfter,s6Step241ExitGOut,shrinkRow 777 s6Step241ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step241ExitGBefore s6Step241ExitGRow 149 s6Step241ExitG_distinct s6Step241ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step241ExitGRow.payload.take 149) s6Step241ExitGRow.sign=s6Step241ExitGOut := by decide +kernel
  have hi : s6Step241ExitGRow.payload.drop 149=s6Step241ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step241ExitG_retired] at result
  exact result

private def s6Step241ExitGvBefore : Arena := s6Step241ExitFvAfter

private theorem s6Step241ExitGv_Incoming : rowsOwned s6Step241ExitGvBefore [s6Step241ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step241ExitGRow,s6Step241ExitFRow,s6Step241ExitFvRow,s6Step241ExitGvRow] 3 s6Step241ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step241ExitGvBefore (fun q => (0≤q ∧ q<149) ∨ (150≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step241ExitGv_Outgoing : rowsOwned s6Step241ExitGvAfter [s6Step241ExitGvOut] :=
  hmrRows_owned_drop s6Step241ExitGvAfter [s6Step241ExitGOut,s6Step241ExitFOut,s6Step241ExitFvOut,s6Step241ExitGvOut] 3 s6Step241ExitBank_outgoingOwned

private theorem s6Step241ExitGv_distinct : (s6Step241ExitGvRow.sign::s6Step241ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step241ExitGv_owned : (s6Step241ExitGvRow.sign::s6Step241ExitGvRow.payload).toFinset⊆s6Step241ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step241ExitGvBefore (fun q => (0≤q ∧ q<149) ∨ (150≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step241ExitGv_retired : s6Step241ExitGvBefore.retireSet s6Step241ExitGvExtra.toFinset=s6Step241ExitGvAfter := by
  unfold Arena.retireSet s6Step241ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step241ExitGvBefore,s6Step241ExitFvAfter,s6Step241ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step241ExitGv_checked : planRowResizeLog s6Step241ExitGvBefore s6Step241ExitGvRow 135 []=
    some (s6Step241ExitGvAfter,s6Step241ExitGvOut,shrinkRow 775 s6Step241ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step241ExitGvBefore s6Step241ExitGvRow 135 s6Step241ExitGv_distinct s6Step241ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step241ExitGvRow.payload.take 135) s6Step241ExitGvRow.sign=s6Step241ExitGvOut := by decide +kernel
  have hi : s6Step241ExitGvRow.payload.drop 135=s6Step241ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step241ExitGv_retired] at result
  exact result

private theorem s6Step241ExitBank_rows : planWindowRowsLog s6Step241ExitGBefore [(s6Step241ExitGRow,149),(s6Step241ExitFRow,150),(s6Step241ExitFvRow,135),(s6Step241ExitGvRow,135)] [[],[],[],[]]=
    some (s6Step241ExitGvAfter,[s6Step241ExitGOut,s6Step241ExitFOut,s6Step241ExitFvOut,s6Step241ExitGvOut],(shrinkRow 777 s6Step241ExitGExtra ++ (shrinkRow 795 s6Step241ExitFExtra ++ (shrinkRow 776 s6Step241ExitFvExtra ++ (shrinkRow 775 s6Step241ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step241ExitGvAfter [] []=some (s6Step241ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step241ExitGvBefore s6Step241ExitGvAfter s6Step241ExitGvAfter
    s6Step241ExitGvRow s6Step241ExitGvOut 135 [] [] [] []
    (shrinkRow 775 s6Step241ExitGvExtra) ([]) s6Step241ExitGv_Incoming s6Step241ExitGv_checked h4 s6Step241ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step241ExitFvBefore s6Step241ExitFvAfter s6Step241ExitGvAfter
    s6Step241ExitFvRow s6Step241ExitFvOut 135 [] [(s6Step241ExitGvRow,135)] [[]] [s6Step241ExitGvOut]
    (shrinkRow 776 s6Step241ExitFvExtra) ((shrinkRow 775 s6Step241ExitGvExtra ++ [])) s6Step241ExitFv_Incoming s6Step241ExitFv_checked h3 s6Step241ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step241ExitFBefore s6Step241ExitFAfter s6Step241ExitGvAfter
    s6Step241ExitFRow s6Step241ExitFOut 150 [] [(s6Step241ExitFvRow,135),(s6Step241ExitGvRow,135)] [[],[]] [s6Step241ExitFvOut,s6Step241ExitGvOut]
    (shrinkRow 795 s6Step241ExitFExtra) ((shrinkRow 776 s6Step241ExitFvExtra ++ (shrinkRow 775 s6Step241ExitGvExtra ++ []))) s6Step241ExitF_Incoming s6Step241ExitF_checked h2 s6Step241ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step241ExitGBefore s6Step241ExitGAfter s6Step241ExitGvAfter
    s6Step241ExitGRow s6Step241ExitGOut 149 [] [(s6Step241ExitFRow,150),(s6Step241ExitFvRow,135),(s6Step241ExitGvRow,135)] [[],[],[]] [s6Step241ExitFOut,s6Step241ExitFvOut,s6Step241ExitGvOut]
    (shrinkRow 777 s6Step241ExitGExtra) ((shrinkRow 795 s6Step241ExitFExtra ++ (shrinkRow 776 s6Step241ExitFvExtra ++ (shrinkRow 775 s6Step241ExitGvExtra ++ [])))) s6Step241ExitG_Incoming s6Step241ExitG_checked h1 s6Step241ExitG_Outgoing
  exact h0

private theorem s6Step241ExitBank_checked : compileHmrBankResizeLog .exit s6Step241ExitGBefore ⟨s6Step241ExitFRow,s6Step241ExitGRow,s6Step241ExitFvRow,s6Step241ExitGvRow⟩ ⟨150,149,135,135⟩ [[],[],[],[]]=
    some (s6Step241ExitGvAfter,⟨s6Step241ExitFOut,s6Step241ExitGOut,s6Step241ExitFvOut,s6Step241ExitGvOut⟩,(shrinkRow 777 s6Step241ExitGExtra ++ (shrinkRow 795 s6Step241ExitFExtra ++ (shrinkRow 776 s6Step241ExitFvExtra ++ (shrinkRow 775 s6Step241ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step241ExitBank_rows]
  rfl

private theorem s6Step241Add0_apart : Disjoint s6Step241Add0Arena.live s6Step241Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step241Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step241Add0_card : s6Step241Add0Arena.live.card=893 := by
  decide +kernel

private theorem s6Step241Add0_borrowed : s6Step241Add0Arena.checkBorrow (hmrHybridCount s6Step241Add0Arena s6Step241Add0B.length) s6Step241Add0Work=some s6Step241Add0During := by
  have len : s6Step241Add0Work.length=hmrHybridCount s6Step241Add0Arena s6Step241Add0B.length := by
    rw [hmrHybridCount,s6Step241Add0_card]
    decide +kernel
  have nd : s6Step241Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step241Add0Arena s6Step241Add0During s6Step241Add0Work.toFinset s6Step241Add0_bounded s6Step241Add0_apart rfl

private theorem s6Step241Add0_distinct : (822::841::869::(s6Step241Add0A++s6Step241Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step241Add0_owned : (822::841::869::(s6Step241Add0A++s6Step241Add0B)).toFinset⊆s6Step241Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step241Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step241Add0_checked : compileHmrHybridCinLog s6Step241Add0Arena 841 822 869 s6Step241Add0A s6Step241Add0B s6Step241Add0Work=some s6Step241Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step241Add0Arena s6Step241Add0During 841 822 869 s6Step241Add0A s6Step241Add0B s6Step241Add0Work
    (by decide +kernel) (by decide +kernel) s6Step241Add0_distinct
    (fun q hq => s6Step241Add0_owned (List.mem_toFinset.mpr hq)) s6Step241Add0_borrowed

private theorem s6Step241Add1_apart : Disjoint s6Step241Add1Arena.live s6Step241Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step241Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step241Add1_card : s6Step241Add1Arena.live.card=893 := by
  decide +kernel

private theorem s6Step241Add1_borrowed : s6Step241Add1Arena.checkBorrow (hmrHybridCount s6Step241Add1Arena s6Step241Add1B.length) s6Step241Add1Work=some s6Step241Add1During := by
  have len : s6Step241Add1Work.length=hmrHybridCount s6Step241Add1Arena s6Step241Add1B.length := by
    rw [hmrHybridCount,s6Step241Add1_card]
    decide +kernel
  have nd : s6Step241Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step241Add1Arena s6Step241Add1During s6Step241Add1Work.toFinset s6Step241Add1_bounded s6Step241Add1_apart rfl

private theorem s6Step241Add1_distinct : (822::841::869::(s6Step241Add1A++s6Step241Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step241Add1_owned : (822::841::869::(s6Step241Add1A++s6Step241Add1B)).toFinset⊆s6Step241Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step241Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step241Add1_checked : compileHmrHybridCinLog s6Step241Add1Arena 841 822 869 s6Step241Add1A s6Step241Add1B s6Step241Add1Work=some s6Step241Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step241Add1Arena s6Step241Add1During 841 822 869 s6Step241Add1A s6Step241Add1B s6Step241Add1Work
    (by decide +kernel) (by decide +kernel) s6Step241Add1_distinct
    (fun q hq => s6Step241Add1_owned (List.mem_toFinset.mpr hq)) s6Step241Add1_borrowed

private theorem s6Step241F4_apart : Disjoint (s6Step241Add0A++s6Step241Add0B).toFinset (s6Step241Add1A++s6Step241Add1B).toFinset := by
  have nd : ((s6Step241Add0A++s6Step241Add0B)++(s6Step241Add1A++s6Step241Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step241F4_carry : s6Step241F4FlagArena.checkBorrow 1 [869]=some s6Step241Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step241F4FlagArena,s6Step241HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step241F4FlagArena,s6Step241HeadFvAfter,s6Step241Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step241F4_distinct : (786::841::822::869::((s6Step241Add0A++s6Step241Add1A)++(s6Step241Add0B++s6Step241Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step241F4_flag : s6Step241HeadFvAfter.checkBorrow 1 [822]=some s6Step241F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step241HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step241F4_owned : (786::841::((s6Step241Add0A++s6Step241Add1A)++(s6Step241Add0B++s6Step241Add1B))).toFinset⊆s6Step241HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step241HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step241F4_checked : compileHmrHybridF4Log s6Step241HeadFvAfter 786 841 s6Step241Add0A s6Step241Add0B s6Step241Add1A s6Step241Add1B [822] [869] s6Step241Add0Work s6Step241Add1Work=some s6Step241F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step241HeadFvAfter s6Step241F4FlagArena s6Step241Add0Arena s6Step241Add0During s6Step241Add1During 786 841
    s6Step241Add0A s6Step241Add0B s6Step241Add1A s6Step241Add1B [822] [869] s6Step241Add0Work s6Step241Add1Work
    (fun q hq => s6Step241F4_owned (List.mem_toFinset.mpr hq)) s6Step241F4_flag s6Step241F4_carry
    s6Step241F4_distinct s6Step241F4_apart s6Step241Add0_checked s6Step241Add1_checked

private theorem s6Step241Front_branch : s6Step241FrontSigmaArena.checkBorrow 1 [841]=some s6Step241HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step241FrontSigmaArena,s6Step241EntryGvAfter,s6Step241EntryFBefore,arenaWires]
  · ext q
    simp only [s6Step241FrontSigmaArena,s6Step241EntryGvAfter,s6Step241EntryFBefore,s6Step241HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step241Front_entry : HmrFrontEntryValid s6Step241EntryFBefore s6Step241FrontBank 150 135 ⟨150,149,135,135⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step241FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step241EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step241EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step241FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step241Front_sigma : s6Step241EntryGvAfter.checkBorrow 1 [786]=some s6Step241FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step241EntryGvAfter,s6Step241EntryFBefore,arenaWires]
  · rfl

private def s6Step241HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step241HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step241HeadFBefore : Arena := s6Step241HeadGAfter

private def s6Step241HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405],795⟩

private def s6Step241HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848],776⟩

private def s6Step241HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149],777⟩

private def s6Step241HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908],775⟩

private theorem s6Step241HeadBank_incomingDistinct : ([s6Step241HeadGRow,s6Step241HeadFRow,s6Step241HeadGvRow,s6Step241HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step241HeadF_Incoming : rowsOwned s6Step241HeadFBefore [s6Step241HeadFRow,s6Step241HeadGvRow,s6Step241HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step241HeadGRow,s6Step241HeadFRow,s6Step241HeadGvRow,s6Step241HeadFvRow] 1 s6Step241HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step241HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step241HeadBank_outgoingOwned : rowsOwned s6Step241HeadFvAfter [s6Step241HeadGOut,s6Step241HeadFOut,s6Step241HeadGvOut,s6Step241HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step241HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step241HeadF_Outgoing : rowsOwned s6Step241HeadFvAfter [s6Step241HeadFOut,s6Step241HeadGvOut,s6Step241HeadFvOut] :=
  hmrRows_owned_drop s6Step241HeadFvAfter [s6Step241HeadGOut,s6Step241HeadFOut,s6Step241HeadGvOut,s6Step241HeadFvOut] 1 s6Step241HeadBank_outgoingOwned

private theorem s6Step241HeadF_distinct : (s6Step241HeadFRow.sign::s6Step241HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step241HeadF_owned : (s6Step241HeadFRow.sign::s6Step241HeadFRow.payload).toFinset⊆s6Step241HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step241HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step241HeadF_reserved : s6Step241HeadFBefore.reserve s6Step241HeadFFresh.toFinset=some s6Step241HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step241HeadFFresh,arenaWires]
  · norm_num [s6Step241HeadFBefore,s6Step241HeadGAfter,s6Step241HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step241HeadFAfter,s6Step241HeadFBefore,s6Step241HeadGAfter,s6Step241HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step241HeadF_checked : planRowResizeLog s6Step241HeadFBefore s6Step241HeadFRow 151 s6Step241HeadFFresh=
    some (s6Step241HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 864],795⟩,growRow 795 s6Step241HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step241HeadFBefore s6Step241HeadFAfter s6Step241HeadFRow 151 s6Step241HeadFFresh
    s6Step241HeadF_distinct s6Step241HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step241HeadF_reserved
  have rowEq : WindowRow.mk (s6Step241HeadFRow.payload++s6Step241HeadFFresh) s6Step241HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 864],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step241HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step241HeadFvBefore : Arena := s6Step241HeadGvAfter

private theorem s6Step241HeadFv_Incoming : rowsOwned s6Step241HeadFvBefore [s6Step241HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step241HeadGRow,s6Step241HeadFRow,s6Step241HeadGvRow,s6Step241HeadFvRow] 3 s6Step241HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step241HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step241HeadFv_Outgoing : rowsOwned s6Step241HeadFvAfter [s6Step241HeadFvOut] :=
  hmrRows_owned_drop s6Step241HeadFvAfter [s6Step241HeadGOut,s6Step241HeadFOut,s6Step241HeadGvOut,s6Step241HeadFvOut] 3 s6Step241HeadBank_outgoingOwned

private theorem s6Step241HeadFv_distinct : (s6Step241HeadFvRow.sign::s6Step241HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step241HeadFv_owned : (s6Step241HeadFvRow.sign::s6Step241HeadFvRow.payload).toFinset⊆s6Step241HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step241HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step241HeadFv_reserved : s6Step241HeadFvBefore.reserve s6Step241HeadFvFresh.toFinset=some s6Step241HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step241HeadFvFresh,arenaWires]
  · norm_num [s6Step241HeadFvBefore,s6Step241HeadGvAfter,s6Step241HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step241HeadFvAfter,s6Step241HeadFvBefore,s6Step241HeadGvAfter,s6Step241HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step241HeadFv_checked : planRowResizeLog s6Step241HeadFvBefore s6Step241HeadFvRow 136 s6Step241HeadFvFresh=
    some (s6Step241HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 888],776⟩,growRow 776 s6Step241HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step241HeadFvBefore s6Step241HeadFvAfter s6Step241HeadFvRow 136 s6Step241HeadFvFresh
    s6Step241HeadFv_distinct s6Step241HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step241HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step241HeadFvRow.payload++s6Step241HeadFvFresh) s6Step241HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 888],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step241HeadG_Incoming : rowsOwned s6Step241HeadGBefore [s6Step241HeadGRow,s6Step241HeadFRow,s6Step241HeadGvRow,s6Step241HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step241HeadGRow,s6Step241HeadFRow,s6Step241HeadGvRow,s6Step241HeadFvRow] 0 s6Step241HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step241HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step241HeadG_Outgoing : rowsOwned s6Step241HeadFvAfter [s6Step241HeadGOut,s6Step241HeadFOut,s6Step241HeadGvOut,s6Step241HeadFvOut] :=
  hmrRows_owned_drop s6Step241HeadFvAfter [s6Step241HeadGOut,s6Step241HeadFOut,s6Step241HeadGvOut,s6Step241HeadFvOut] 0 s6Step241HeadBank_outgoingOwned

private theorem s6Step241HeadG_distinct : (s6Step241HeadGRow.sign::s6Step241HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step241HeadG_owned : (s6Step241HeadGRow.sign::s6Step241HeadGRow.payload).toFinset⊆s6Step241HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step241HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step241HeadG_reserved : s6Step241HeadGBefore.reserve s6Step241HeadGFresh.toFinset=some s6Step241HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step241HeadGFresh,arenaWires]
  · norm_num [s6Step241HeadGBefore,s6Step241HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step241HeadGAfter,s6Step241HeadGBefore,s6Step241HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step241HeadG_checked : planRowResizeLog s6Step241HeadGBefore s6Step241HeadGRow 151 s6Step241HeadGFresh=
    some (s6Step241HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 857],777⟩,growRow 777 s6Step241HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step241HeadGBefore s6Step241HeadGAfter s6Step241HeadGRow 151 s6Step241HeadGFresh
    s6Step241HeadG_distinct s6Step241HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step241HeadG_reserved
  have rowEq : WindowRow.mk (s6Step241HeadGRow.payload++s6Step241HeadGFresh) s6Step241HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 857],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step241HeadGvBefore : Arena := s6Step241HeadFAfter

private theorem s6Step241HeadGv_Incoming : rowsOwned s6Step241HeadGvBefore [s6Step241HeadGvRow,s6Step241HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step241HeadGRow,s6Step241HeadFRow,s6Step241HeadGvRow,s6Step241HeadFvRow] 2 s6Step241HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step241HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step241HeadGv_Outgoing : rowsOwned s6Step241HeadFvAfter [s6Step241HeadGvOut,s6Step241HeadFvOut] :=
  hmrRows_owned_drop s6Step241HeadFvAfter [s6Step241HeadGOut,s6Step241HeadFOut,s6Step241HeadGvOut,s6Step241HeadFvOut] 2 s6Step241HeadBank_outgoingOwned

private theorem s6Step241HeadGv_distinct : (s6Step241HeadGvRow.sign::s6Step241HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step241HeadGv_owned : (s6Step241HeadGvRow.sign::s6Step241HeadGvRow.payload).toFinset⊆s6Step241HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step241HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step241HeadGv_reserved : s6Step241HeadGvBefore.reserve s6Step241HeadGvFresh.toFinset=some s6Step241HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step241HeadGvFresh,arenaWires]
  · norm_num [s6Step241HeadGvBefore,s6Step241HeadFAfter,s6Step241HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step241HeadGvAfter,s6Step241HeadGvBefore,s6Step241HeadFAfter,s6Step241HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step241HeadGv_checked : planRowResizeLog s6Step241HeadGvBefore s6Step241HeadGvRow 136 s6Step241HeadGvFresh=
    some (s6Step241HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 818],775⟩,growRow 775 s6Step241HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step241HeadGvBefore s6Step241HeadGvAfter s6Step241HeadGvRow 136 s6Step241HeadGvFresh
    s6Step241HeadGv_distinct s6Step241HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step241HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step241HeadGvRow.payload++s6Step241HeadGvFresh) s6Step241HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 818],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step241HeadBank_rows : planWindowRowsLog s6Step241HeadGBefore [(s6Step241HeadGRow,151),(s6Step241HeadFRow,151),(s6Step241HeadGvRow,136),(s6Step241HeadFvRow,136)] [s6Step241HeadGFresh,s6Step241HeadFFresh,s6Step241HeadGvFresh,s6Step241HeadFvFresh]=
    some (s6Step241HeadFvAfter,[s6Step241HeadGOut,s6Step241HeadFOut,s6Step241HeadGvOut,s6Step241HeadFvOut],(growRow 777 s6Step241HeadGFresh ++ (growRow 795 s6Step241HeadFFresh ++ (growRow 775 s6Step241HeadGvFresh ++ (growRow 776 s6Step241HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step241HeadFvAfter [] []=some (s6Step241HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step241HeadFvBefore s6Step241HeadFvAfter s6Step241HeadFvAfter
    s6Step241HeadFvRow s6Step241HeadFvOut 136 s6Step241HeadFvFresh [] [] []
    (growRow 776 s6Step241HeadFvFresh) ([]) s6Step241HeadFv_Incoming s6Step241HeadFv_checked h4 s6Step241HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step241HeadGvBefore s6Step241HeadGvAfter s6Step241HeadFvAfter
    s6Step241HeadGvRow s6Step241HeadGvOut 136 s6Step241HeadGvFresh [(s6Step241HeadFvRow,136)] [s6Step241HeadFvFresh] [s6Step241HeadFvOut]
    (growRow 775 s6Step241HeadGvFresh) ((growRow 776 s6Step241HeadFvFresh ++ [])) s6Step241HeadGv_Incoming s6Step241HeadGv_checked h3 s6Step241HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step241HeadFBefore s6Step241HeadFAfter s6Step241HeadFvAfter
    s6Step241HeadFRow s6Step241HeadFOut 151 s6Step241HeadFFresh [(s6Step241HeadGvRow,136),(s6Step241HeadFvRow,136)] [s6Step241HeadGvFresh,s6Step241HeadFvFresh] [s6Step241HeadGvOut,s6Step241HeadFvOut]
    (growRow 795 s6Step241HeadFFresh) ((growRow 775 s6Step241HeadGvFresh ++ (growRow 776 s6Step241HeadFvFresh ++ []))) s6Step241HeadF_Incoming s6Step241HeadF_checked h2 s6Step241HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step241HeadGBefore s6Step241HeadGAfter s6Step241HeadFvAfter
    s6Step241HeadGRow s6Step241HeadGOut 151 s6Step241HeadGFresh [(s6Step241HeadFRow,151),(s6Step241HeadGvRow,136),(s6Step241HeadFvRow,136)] [s6Step241HeadFFresh,s6Step241HeadGvFresh,s6Step241HeadFvFresh] [s6Step241HeadFOut,s6Step241HeadGvOut,s6Step241HeadFvOut]
    (growRow 777 s6Step241HeadGFresh) ((growRow 795 s6Step241HeadFFresh ++ (growRow 775 s6Step241HeadGvFresh ++ (growRow 776 s6Step241HeadFvFresh ++ [])))) s6Step241HeadG_Incoming s6Step241HeadG_checked h1 s6Step241HeadG_Outgoing
  exact h0

private theorem s6Step241HeadBank_checked : compileHmrBankResizeLog .headroom s6Step241HeadGBefore ⟨s6Step241HeadFRow,s6Step241HeadGRow,s6Step241HeadFvRow,s6Step241HeadGvRow⟩ ⟨151,151,136,136⟩ [s6Step241HeadGFresh,s6Step241HeadFFresh,s6Step241HeadGvFresh,s6Step241HeadFvFresh]=
    some (s6Step241HeadFvAfter,⟨s6Step241HeadFOut,s6Step241HeadGOut,s6Step241HeadFvOut,s6Step241HeadGvOut⟩,(growRow 777 s6Step241HeadGFresh ++ (growRow 795 s6Step241HeadFFresh ++ (growRow 775 s6Step241HeadGvFresh ++ (growRow 776 s6Step241HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step241HeadBank_rows]
  rfl

private theorem s6Step241Front_checked : compileHmrSourceFrontLog s6Step241EntryFBefore s6Step241FrontBank 150 135 ⟨150,149,135,135⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step241FrontLog=some s6Step241FrontPlan := by
  have pairEq : s6Step241FrontPair=⟨s6Step241HeadFRow,s6Step241HeadGRow,s6Step241HeadFvRow,s6Step241HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step241FrontHead=⟨s6Step241ExitFRow,s6Step241ExitGRow,s6Step241ExitFvRow,s6Step241ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step241Add0A=s6Step241FrontHead.f.wires := by decide +kernel
  have gEq : s6Step241Add0B=s6Step241FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step241Add1A=s6Step241FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step241Add1B=s6Step241FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step241EntryFBefore s6Step241FrontBank 150 135 ⟨150,149,135,135⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step241FrontLog s6Step241FrontPlan
  · exact s6Step241Front_entry
  · exact s6Step241EntryBank_checked
  · exact s6Step241Front_sigma
  · rfl
  · exact s6Step241Front_branch
  · rfl
  · simpa only [s6Step241FrontPlan,pairEq] using s6Step241HeadBank_checked
  · simpa only [s6Step241FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step241F4_checked
  · exact s6Step241Counter_checked
  · rfl
  · simpa only [s6Step241FrontPlan,headEq] using s6Step241ExitBank_checked

private theorem s6Step241Complete_explicit_checked : compileHmrEarlyStepLog s6Step241EntryFBefore s6Step241FrontBank 150 135 ⟨150,149,135,135⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] 49 s6Step241CompleteLog=some s6Step241CompletePlan := by
  let Q := s6Step241EarlyControlPlan
  have hq := s6Step241EarlyControl_plan_checked
  have fv1 : s6Step241CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step241CompleteOut.fv.payload[2]?.getD s6Step241CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step241CompleteOut.fv.payload[3]?.getD s6Step241CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step241CompleteOut.fv.payload[4]?.getD s6Step241CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step241EntryFBefore s6Step241EarlyControlArena s6Step241FrontBank 150 135 ⟨150,149,135,135⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] 49 s6Step241CompleteLog s6Step241FrontPlan Q
    s6Step241Front_checked s6Step241Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step241Complete_owned s6Step241Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step241EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] 769 786 s6Step241CompleteOut.fv.second (s6Step241CompleteOut.fv.payload[2]?.getD s6Step241CompleteOut.fv.sign) (s6Step241CompleteOut.fv.payload[3]?.getD s6Step241CompleteOut.fv.sign) (s6Step241CompleteOut.fv.payload[4]?.getD s6Step241CompleteOut.fv.sign) 841 49 s6Step241EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep241Arena : Arena := s6Step241EntryFBefore
def s6PrivateStep241Bank : WindowBank := s6Step241FrontBank
def s6PrivateStep241Spec : HmrSourceWalkStepLog := ⟨150,135,⟨150,149,135,135⟩,49,.early s6Step241CompleteLog⟩
def s6PrivateStep241Plan : HmrSourceStepPlan := .early s6Step241CompletePlan
theorem s6PrivateStep241_source : s6PrivateStep241Spec=s6ObservedLogs240[1] := rfl
theorem s6PrivateStep241_checked : compileHmrSourceStepLog s6PrivateStep241Arena s6PrivateStep241Bank
    s6PrivateStep241Spec.fgWidth s6PrivateStep241Spec.vWidth s6PrivateStep241Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900]
    6 498 241 s6PrivateStep241Spec.need none s6PrivateStep241Spec.log=some s6PrivateStep241Plan := by
  change compileHmrSourceStepLog s6Step241EntryFBefore s6Step241FrontBank 150 135 ⟨150,149,135,135⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] 6 498 241 49 none (.early s6Step241CompleteLog)=some (.early s6Step241CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 241<498)]
  rw [s6Step241Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
