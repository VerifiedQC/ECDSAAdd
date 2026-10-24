import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep260
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

private def s6Step262CompleteMoves : List (Wire × Wire) := [(791,138)]

private def s6Step262EarlyControlLog : HmrEarlyControlLog := ⟨[791, 907, 903, 794, 809],[891],[854],[810, 862, 833, 830, 805, 817],[]⟩

private def s6Step262FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[794], [903], [907], [868]],[[], [], [], []]⟩,[822],[927],[809],[891],[854, 810, 862, 833, 830, 805, 817, 812, 915, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[854, 810, 862, 833, 830, 805, 817, 812, 915, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[809, 891, 854, 810]⟩

private def s6Step262CompleteLog : HmrEarlyStepLog := ⟨s6Step262FrontLog,s6Step262CompleteMoves,s6Step262EarlyControlLog⟩

private def s6Step262ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394],795⟩

private def s6Step262ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868],776⟩

private def s6Step262ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137],777⟩

private def s6Step262ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853],775⟩

private def s6Step262FrontOut : WindowBank := ⟨s6Step262ExitFOut,s6Step262ExitGOut,s6Step262ExitFvOut,s6Step262ExitGvOut⟩

private def s6Step262CompleteOut : WindowBank := s6Step262FrontOut.repacked s6Step262CompleteMoves

private def s6Step262EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step262EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step262EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step262EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step262EarlyControlPositiveArena,[891],s6Step262EarlyControlEqualityArena,[854],⟨⟨822,false⟩,[⟨⟨891,false⟩,854⟩]⟩⟩

private def s6Step262EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step262EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step262EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step262EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step262EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step262EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step262EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,791⟩,⟨⟨772,false⟩,907⟩,⟨⟨771,false⟩,903⟩,⟨⟨770,false⟩,794⟩,⟨⟨769,false⟩,809⟩]⟩

private def s6Step262EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step262EarlyControlZeroArena,s6Step262EarlyControlZeroPlan,s6Step262EarlyControlClassPlan,s6Step262EarlyControlFlagArena,s6Step262EarlyControlFittedArena,s6Step262EarlyControlHistoryArena,s6Step262EarlyControlSigmaArena,s6Step262EarlyControlOutputArena,s6Step262EarlyControlLog⟩

private def s6Step262CounterWork : List Wire := [809, 891, 854, 810]

private theorem s6Step262Counter_bounded : s6Step262CounterWork.toFinset⊆arenaWires := by norm_num [s6Step262CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step262HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step262CounterDuring : Arena := ⟨s6Step262HeadFvAfter.live∪s6Step262CounterWork.toFinset,Finset.union_subset s6Step262HeadFvAfter.bounded s6Step262Counter_bounded⟩

private def s6Step262EntryFFresh : List Wire := []

private def s6Step262EntryFvFresh : List Wire := []

private def s6Step262EntryGFresh : List Wire := []

private def s6Step262EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step262EntryGvAfter : Arena := s6Step262EntryFBefore

private def s6Step262EntryGvFresh : List Wire := []

private def s6Step262ExitFExtra : List Wire := [903]

private def s6Step262ExitGExtra : List Wire := [138, 794]

private def s6Step262ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<138) ∨ (139≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step262ExitGvExtra : List Wire := [907]

private def s6Step262Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step262Add0Work : List Wire := [854, 810, 862, 833, 830, 805, 817, 812, 915, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step262Add0_bounded : s6Step262Add0Work.toFinset⊆arenaWires := by
  have h : s6Step262Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step262Add0During : Arena := ⟨s6Step262Add0Arena.live∪s6Step262Add0Work.toFinset,Finset.union_subset s6Step262Add0Arena.bounded s6Step262Add0_bounded⟩

private def s6Step262Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step262Add1Work : List Wire := [854, 810, 862, 833, 830, 805, 817, 812, 915, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step262Add1_bounded : s6Step262Add1Work.toFinset⊆arenaWires := by
  have h : s6Step262Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step262Add1During : Arena := ⟨s6Step262Add1Arena.live∪s6Step262Add1Work.toFinset,Finset.union_subset s6Step262Add1Arena.bounded s6Step262Add1_bounded⟩

private def s6Step262F4FlagArena : Arena := ⟨s6Step262HeadFvAfter.live∪{809},Finset.union_subset s6Step262HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step262F4Plan : HmrHybridF4Plan := ⟨s6Step262F4FlagArena,[809],s6Step262Add0Arena,[891],s6Step262Add0During,s6Step262Add0Work,s6Step262Add1During,s6Step262Add1Work⟩

private def s6Step262HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 903],795⟩

private def s6Step262HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868],776⟩

private def s6Step262HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 794],777⟩

private def s6Step262HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 907],775⟩

private def s6Step262FrontHead : WindowBank := ⟨s6Step262HeadFOut,s6Step262HeadGOut,s6Step262HeadFvOut,s6Step262HeadGvOut⟩

private def s6Step262EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394],795⟩

private def s6Step262EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880],776⟩

private def s6Step262EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138],777⟩

private def s6Step262EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853],775⟩

private def s6Step262FrontPair : WindowBank := ⟨s6Step262EntryFOut,s6Step262EntryGOut,s6Step262EntryFvOut,s6Step262EntryGvOut⟩

private def s6Step262FrontSigmaArena : Arena := ⟨s6Step262EntryGvAfter.live∪{822},Finset.union_subset s6Step262EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step262HeadFFresh : List Wire := [903]

private def s6Step262HeadFvFresh : List Wire := [868]

private def s6Step262HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step262HeadGFresh : List Wire := [794]

private def s6Step262HeadGvFresh : List Wire := [907]

private def s6Step262FrontPlan : HmrSourceFront := ⟨s6Step262EntryGvAfter,s6Step262FrontPair,(growRow 795 s6Step262EntryFFresh ++ (growRow 777 s6Step262EntryGFresh ++ (growRow 776 s6Step262EntryFvFresh ++ (growRow 775 s6Step262EntryGvFresh ++ [])))),s6Step262FrontSigmaArena,[822],s6Step262HeadGBefore,[927],
  s6Step262HeadFvAfter,s6Step262FrontHead,(growRow 777 s6Step262HeadGFresh ++ (growRow 795 s6Step262HeadFFresh ++ (growRow 775 s6Step262HeadGvFresh ++ (growRow 776 s6Step262HeadFvFresh ++ [])))),s6Step262F4Plan,s6Step262CounterDuring,s6Step262CounterWork,s6Step262ExitGvAfter,s6Step262FrontOut,(shrinkRow 777 s6Step262ExitGExtra ++ (shrinkRow 795 s6Step262ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step262ExitGvExtra ++ []))))⟩

private def s6Step262CompletePlan : HmrEarlyStepPlan := ⟨s6Step262FrontPlan,s6Step262EarlyControlArena,s6Step262EarlyControlPlan,s6Step262CompleteMoves⟩

private theorem s6Step262Complete_apart : List.Disjoint (s6Step262CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [822, 927, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932] := by
  have nd : ((s6Step262CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[822, 927, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step262Complete_owned : (s6Step262CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step262EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step262EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private def s6Step262CompleteMoveArena : Arena := ⟨s6Step262ExitGvAfter.live∪{138},Finset.union_subset s6Step262ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step262Complete_repack : s6Step262ExitGvAfter.checkRepack s6Step262CompleteMoves=some s6Step262EarlyControlArena := by
  have owned : 791∈s6Step262ExitGvAfter.live := by norm_num [s6Step262ExitGvAfter,arenaWires]
  have reserve : s6Step262ExitGvAfter.reserve {138}=some s6Step262CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s6Step262ExitGvAfter,arenaWires]
    · rfl
  have retired : s6Step262CompleteMoveArena.retireSet {791}=s6Step262EarlyControlArena := by
    unfold Arena.retireSet s6Step262EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s6Step262CompleteMoveArena,s6Step262ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s6Step262CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s6Step262CompleteMoveArena.retireSet {791}).checkRepack []=some s6Step262EarlyControlArena
  rw [retired]
  rfl

private theorem s6Step262EarlyControl_branchOwned : ([927] : List Wire).toFinset⊆s6Step262EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step262EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step262EarlyControl_branch : compileHmrBranchRetirement s6Step262EarlyControlSigmaArena 927=some s6Step262EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step262EarlyControl_branchOwned
  · ext q
    simp [s6Step262EarlyControlOutputArena,s6Step262EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step262EarlyControl_classEqualityBorrow : s6Step262EarlyControlPositiveArena.checkBorrow (([822, 891] : List Wire).length-1) s6Step262EarlyControlLog.classWork=some s6Step262EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step262EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step262EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step262EarlyControlEqualityArena,s6Step262EarlyControlPositiveArena,s6Step262EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step262EarlyControl_classEqualityOwned : ([822, 891] : List Wire).toFinset⊆s6Step262EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step262EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step262EarlyControl_classEquality : compileHmrEqualityLog s6Step262EarlyControlPositiveArena [822, 891] 0 s6Step262EarlyControlLog.classWork=some (s6Step262EarlyControlEqualityArena,s6Step262EarlyControlLog.classWork,s6Step262EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step262EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step262EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step262EarlyControl_classOwned : ([769, 809, 822] : List Wire).toFinset⊆s6Step262EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step262EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step262EarlyControl_positiveBorrow : s6Step262EarlyControlZeroArena.checkBorrow (1) s6Step262EarlyControlLog.positiveWork=some s6Step262EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step262EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step262EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step262EarlyControlPositiveArena,s6Step262EarlyControlZeroArena,s6Step262EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step262EarlyControl_class : compileHmrSourceClassLog s6Step262EarlyControlZeroArena false 769 s6Step262EarlyControlZeroPlan.top 0 822 s6Step262EarlyControlLog.positiveWork s6Step262EarlyControlLog.classWork=some s6Step262EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step262EarlyControlClassPlan s6Step262EarlyControlZeroArena false 769 s6Step262EarlyControlZeroPlan.top 0 822
  constructor
  · decide +kernel
  · exact s6Step262EarlyControl_classOwned
  · exact s6Step262EarlyControl_positiveBorrow
  · exact s6Step262EarlyControl_classEquality

private theorem s6Step262EarlyControl_entryRecordOwned : ([927, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932] : List Wire).toFinset⊆s6Step262EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step262EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step262EarlyControl_entrySigmaOwned : ([822, 254] : List Wire).toFinset⊆s6Step262EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step262EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step262EarlyControl_fitBorrow : s6Step262EarlyControlFlagArena.checkBorrow ((52-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932] : List Wire).length)) s6Step262EarlyControlLog.recordFresh=some s6Step262EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step262EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step262EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step262EarlyControlFittedArena,s6Step262EarlyControlFlagArena,s6Step262EarlyControlLog,arenaWires]

private theorem s6Step262EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932] : List Wire).toFinset⊆s6Step262EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step262EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step262EarlyControl_fit : compileHmrRecordGrowLog s6Step262EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932] 52 s6Step262EarlyControlLog.recordFresh=some s6Step262EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step262EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step262EarlyControl_fitBorrow

private theorem s6Step262EarlyControl_flagsBorrow : s6Step262EarlyControlEqualityArena.checkBorrow (6) s6Step262EarlyControlLog.flagWork=some s6Step262EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step262EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step262EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step262EarlyControlFlagArena,s6Step262EarlyControlEqualityArena,s6Step262EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step262EarlyControl_flagsOwned : ([854, 253, 252, 251] : List Wire).toFinset⊆s6Step262EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step262EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step262EarlyControl_flags : compileHmrFlagsLog s6Step262EarlyControlClassPlan.equalityArena s6Step262EarlyControlClassPlan.equality.top 253 252 251 s6Step262EarlyControlLog.flagWork=some s6Step262EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step262EarlyControl_flagsOwned⟩
  · exact s6Step262EarlyControl_flagsBorrow

private theorem s6Step262EarlyControl_historyBorrow : s6Step262EarlyControlArena.checkBorrow ((52-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932] : List Wire).length)) s6Step262EarlyControlLog.recordFresh=some s6Step262EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step262EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step262EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step262EarlyControlHistoryArena,s6Step262EarlyControlArena,s6Step262EarlyControlLog,arenaWires]

private theorem s6Step262EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932] : List Wire).toFinset⊆s6Step262EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step262EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step262EarlyControl_history : compileHmrRecordGrowLog s6Step262EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932] 52 s6Step262EarlyControlLog.recordFresh=some s6Step262EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step262EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step262EarlyControl_historyBorrow

private theorem s6Step262EarlyControl_sigmaOwned : ([254, 822] : List Wire).toFinset⊆s6Step262EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step262EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step262EarlyControl_sigmaReleaseOwned : ([822] : List Wire).toFinset⊆s6Step262EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step262EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step262EarlyControl_sigmaRelease : s6Step262EarlyControlHistoryArena.release {822} (fun _ => false)=some s6Step262EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step262EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step262EarlyControlSigmaArena,s6Step262EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step262EarlyControl_sigma : compileHmrSigmaDropLog s6Step262EarlyControlHistoryArena false 0 0 254 822 []=some s6Step262EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step262EarlyControl_sigmaOwned⟩
  · exact s6Step262EarlyControl_sigmaRelease

private theorem s6Step262EarlyControl_zeroBorrow : s6Step262EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step262EarlyControlLog.zeroWork=some s6Step262EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step262EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step262EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step262EarlyControlZeroArena,s6Step262EarlyControlArena,s6Step262EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step262EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step262EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step262EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step262EarlyControl_zero : compileHmrEqualityLog s6Step262EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step262EarlyControlLog.zeroWork=some (s6Step262EarlyControlZeroArena,s6Step262EarlyControlLog.zeroWork,s6Step262EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step262EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step262EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step262EarlyControl_logged : s6Step262EarlyControlPlan.Logged s6Step262EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932] 769 822 254 253 252 251 927 52 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step262EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step262EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step262EarlyControl_zero
  · exact s6Step262EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step262EarlyControl_flags
  · exact s6Step262EarlyControl_fit
  · exact s6Step262EarlyControl_history
  · exact s6Step262EarlyControl_sigma
  · exact s6Step262EarlyControl_branch

private theorem s6Step262EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step262EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932] 769 822 254 253 252 251 927 52 s6Step262EarlyControlLog=some s6Step262EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step262EarlyControlPlan s6Step262EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932] 769 822 254 253 252 251 927 52 s6Step262EarlyControl_logged

private def s6Step262EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394],795⟩

private def s6Step262EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880],776⟩

private def s6Step262EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138],777⟩

private def s6Step262EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853],775⟩

private def s6Step262FrontBank : WindowBank := ⟨s6Step262EntryFRow,s6Step262EntryGRow,s6Step262EntryFvRow,s6Step262EntryGvRow⟩

private def s6Step262Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 903, 795]

private def s6Step262Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 794, 777]

private def s6Step262Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 776]

private def s6Step262Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 907, 775]

private theorem s6Step262Counter_apart : Disjoint s6Step262HeadFvAfter.live s6Step262CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step262HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step262Counter_borrowed : s6Step262HeadFvAfter.checkBorrow 4 s6Step262CounterWork=some s6Step262CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step262HeadFvAfter s6Step262CounterDuring s6Step262CounterWork.toFinset s6Step262Counter_bounded s6Step262Counter_apart rfl

private theorem s6Step262Counter_owned : (822::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step262HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step262HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step262Counter_checked : compileHmrCounterStepLog s6Step262HeadFvAfter true 822 [774, 773, 772, 771, 770, 769] s6Step262CounterWork=some s6Step262CounterDuring := by
  have owned : ∀q∈822::[774, 773, 772, 771, 770, 769],q∈s6Step262HeadFvAfter.live := fun q hq => s6Step262Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step262Counter_borrowed

private def s6Step262EntryFAfter : Arena := s6Step262EntryFBefore

private theorem s6Step262EntryBank_incomingDistinct : ([s6Step262EntryFRow,s6Step262EntryGRow,s6Step262EntryFvRow,s6Step262EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step262EntryF_Incoming : rowsOwned s6Step262EntryFBefore [s6Step262EntryFRow,s6Step262EntryGRow,s6Step262EntryFvRow,s6Step262EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step262EntryFRow,s6Step262EntryGRow,s6Step262EntryFvRow,s6Step262EntryGvRow] 0 s6Step262EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step262EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step262EntryBank_outgoingOwned : rowsOwned s6Step262EntryGvAfter [s6Step262EntryFOut,s6Step262EntryGOut,s6Step262EntryFvOut,s6Step262EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step262EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step262EntryF_Outgoing : rowsOwned s6Step262EntryGvAfter [s6Step262EntryFOut,s6Step262EntryGOut,s6Step262EntryFvOut,s6Step262EntryGvOut] :=
  hmrRows_owned_drop s6Step262EntryGvAfter [s6Step262EntryFOut,s6Step262EntryGOut,s6Step262EntryFvOut,s6Step262EntryGvOut] 0 s6Step262EntryBank_outgoingOwned

private theorem s6Step262EntryF_distinct : (s6Step262EntryFRow.sign::s6Step262EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step262EntryF_owned : (s6Step262EntryFRow.sign::s6Step262EntryFRow.payload).toFinset⊆s6Step262EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step262EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step262EntryF_reserved : s6Step262EntryFBefore.reserve s6Step262EntryFFresh.toFinset=some s6Step262EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step262EntryFFresh,arenaWires]
  · norm_num [s6Step262EntryFBefore,s6Step262EntryFFresh,arenaWires]
  · simp only [s6Step262EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step262EntryF_checked : planRowResizeLog s6Step262EntryFBefore s6Step262EntryFRow 139 s6Step262EntryFFresh=
    some (s6Step262EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394],795⟩,growRow 795 s6Step262EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step262EntryFBefore s6Step262EntryFAfter s6Step262EntryFRow 139 s6Step262EntryFFresh
    s6Step262EntryF_distinct s6Step262EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step262EntryF_reserved
  have rowEq : WindowRow.mk (s6Step262EntryFRow.payload++s6Step262EntryFFresh) s6Step262EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step262EntryFvAfter : Arena := s6Step262EntryFBefore

private def s6Step262EntryFvBefore : Arena := s6Step262EntryFBefore

private theorem s6Step262EntryFv_Incoming : rowsOwned s6Step262EntryFvBefore [s6Step262EntryFvRow,s6Step262EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step262EntryFRow,s6Step262EntryGRow,s6Step262EntryFvRow,s6Step262EntryGvRow] 2 s6Step262EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step262EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step262EntryFv_Outgoing : rowsOwned s6Step262EntryGvAfter [s6Step262EntryFvOut,s6Step262EntryGvOut] :=
  hmrRows_owned_drop s6Step262EntryGvAfter [s6Step262EntryFOut,s6Step262EntryGOut,s6Step262EntryFvOut,s6Step262EntryGvOut] 2 s6Step262EntryBank_outgoingOwned

private theorem s6Step262EntryFv_distinct : (s6Step262EntryFvRow.sign::s6Step262EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step262EntryFv_owned : (s6Step262EntryFvRow.sign::s6Step262EntryFvRow.payload).toFinset⊆s6Step262EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step262EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step262EntryFv_reserved : s6Step262EntryFvBefore.reserve s6Step262EntryFvFresh.toFinset=some s6Step262EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step262EntryFvFresh,arenaWires]
  · norm_num [s6Step262EntryFvBefore,s6Step262EntryFBefore,s6Step262EntryFvFresh,arenaWires]
  · simp only [s6Step262EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step262EntryFv_checked : planRowResizeLog s6Step262EntryFvBefore s6Step262EntryFvRow 145 s6Step262EntryFvFresh=
    some (s6Step262EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880],776⟩,growRow 776 s6Step262EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step262EntryFvBefore s6Step262EntryFvAfter s6Step262EntryFvRow 145 s6Step262EntryFvFresh
    s6Step262EntryFv_distinct s6Step262EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step262EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step262EntryFvRow.payload++s6Step262EntryFvFresh) s6Step262EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step262EntryGAfter : Arena := s6Step262EntryFBefore

private def s6Step262EntryGBefore : Arena := s6Step262EntryFBefore

private theorem s6Step262EntryG_Incoming : rowsOwned s6Step262EntryGBefore [s6Step262EntryGRow,s6Step262EntryFvRow,s6Step262EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step262EntryFRow,s6Step262EntryGRow,s6Step262EntryFvRow,s6Step262EntryGvRow] 1 s6Step262EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step262EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step262EntryG_Outgoing : rowsOwned s6Step262EntryGvAfter [s6Step262EntryGOut,s6Step262EntryFvOut,s6Step262EntryGvOut] :=
  hmrRows_owned_drop s6Step262EntryGvAfter [s6Step262EntryFOut,s6Step262EntryGOut,s6Step262EntryFvOut,s6Step262EntryGvOut] 1 s6Step262EntryBank_outgoingOwned

private theorem s6Step262EntryG_distinct : (s6Step262EntryGRow.sign::s6Step262EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step262EntryG_owned : (s6Step262EntryGRow.sign::s6Step262EntryGRow.payload).toFinset⊆s6Step262EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step262EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step262EntryG_reserved : s6Step262EntryGBefore.reserve s6Step262EntryGFresh.toFinset=some s6Step262EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step262EntryGFresh,arenaWires]
  · norm_num [s6Step262EntryGBefore,s6Step262EntryFBefore,s6Step262EntryGFresh,arenaWires]
  · simp only [s6Step262EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step262EntryG_checked : planRowResizeLog s6Step262EntryGBefore s6Step262EntryGRow 139 s6Step262EntryGFresh=
    some (s6Step262EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138],777⟩,growRow 777 s6Step262EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step262EntryGBefore s6Step262EntryGAfter s6Step262EntryGRow 139 s6Step262EntryGFresh
    s6Step262EntryG_distinct s6Step262EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step262EntryG_reserved
  have rowEq : WindowRow.mk (s6Step262EntryGRow.payload++s6Step262EntryGFresh) s6Step262EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step262EntryGvBefore : Arena := s6Step262EntryFBefore

private theorem s6Step262EntryGv_Incoming : rowsOwned s6Step262EntryGvBefore [s6Step262EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step262EntryFRow,s6Step262EntryGRow,s6Step262EntryFvRow,s6Step262EntryGvRow] 3 s6Step262EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step262EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step262EntryGv_Outgoing : rowsOwned s6Step262EntryGvAfter [s6Step262EntryGvOut] :=
  hmrRows_owned_drop s6Step262EntryGvAfter [s6Step262EntryFOut,s6Step262EntryGOut,s6Step262EntryFvOut,s6Step262EntryGvOut] 3 s6Step262EntryBank_outgoingOwned

private theorem s6Step262EntryGv_distinct : (s6Step262EntryGvRow.sign::s6Step262EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step262EntryGv_owned : (s6Step262EntryGvRow.sign::s6Step262EntryGvRow.payload).toFinset⊆s6Step262EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step262EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step262EntryGv_reserved : s6Step262EntryGvBefore.reserve s6Step262EntryGvFresh.toFinset=some s6Step262EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step262EntryGvFresh,arenaWires]
  · norm_num [s6Step262EntryGvBefore,s6Step262EntryFBefore,s6Step262EntryGvFresh,arenaWires]
  · simp only [s6Step262EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step262EntryGv_checked : planRowResizeLog s6Step262EntryGvBefore s6Step262EntryGvRow 145 s6Step262EntryGvFresh=
    some (s6Step262EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853],775⟩,growRow 775 s6Step262EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step262EntryGvBefore s6Step262EntryGvAfter s6Step262EntryGvRow 145 s6Step262EntryGvFresh
    s6Step262EntryGv_distinct s6Step262EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step262EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step262EntryGvRow.payload++s6Step262EntryGvFresh) s6Step262EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step262EntryBank_rows : planWindowRowsLog s6Step262EntryFBefore [(s6Step262EntryFRow,139),(s6Step262EntryGRow,139),(s6Step262EntryFvRow,145),(s6Step262EntryGvRow,145)] [s6Step262EntryFFresh,s6Step262EntryGFresh,s6Step262EntryFvFresh,s6Step262EntryGvFresh]=
    some (s6Step262EntryGvAfter,[s6Step262EntryFOut,s6Step262EntryGOut,s6Step262EntryFvOut,s6Step262EntryGvOut],(growRow 795 s6Step262EntryFFresh ++ (growRow 777 s6Step262EntryGFresh ++ (growRow 776 s6Step262EntryFvFresh ++ (growRow 775 s6Step262EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step262EntryGvAfter [] []=some (s6Step262EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step262EntryGvBefore s6Step262EntryGvAfter s6Step262EntryGvAfter
    s6Step262EntryGvRow s6Step262EntryGvOut 145 s6Step262EntryGvFresh [] [] []
    (growRow 775 s6Step262EntryGvFresh) ([]) s6Step262EntryGv_Incoming s6Step262EntryGv_checked h4 s6Step262EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step262EntryFvBefore s6Step262EntryFvAfter s6Step262EntryGvAfter
    s6Step262EntryFvRow s6Step262EntryFvOut 145 s6Step262EntryFvFresh [(s6Step262EntryGvRow,145)] [s6Step262EntryGvFresh] [s6Step262EntryGvOut]
    (growRow 776 s6Step262EntryFvFresh) ((growRow 775 s6Step262EntryGvFresh ++ [])) s6Step262EntryFv_Incoming s6Step262EntryFv_checked h3 s6Step262EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step262EntryGBefore s6Step262EntryGAfter s6Step262EntryGvAfter
    s6Step262EntryGRow s6Step262EntryGOut 139 s6Step262EntryGFresh [(s6Step262EntryFvRow,145),(s6Step262EntryGvRow,145)] [s6Step262EntryFvFresh,s6Step262EntryGvFresh] [s6Step262EntryFvOut,s6Step262EntryGvOut]
    (growRow 777 s6Step262EntryGFresh) ((growRow 776 s6Step262EntryFvFresh ++ (growRow 775 s6Step262EntryGvFresh ++ []))) s6Step262EntryG_Incoming s6Step262EntryG_checked h2 s6Step262EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step262EntryFBefore s6Step262EntryFAfter s6Step262EntryGvAfter
    s6Step262EntryFRow s6Step262EntryFOut 139 s6Step262EntryFFresh [(s6Step262EntryGRow,139),(s6Step262EntryFvRow,145),(s6Step262EntryGvRow,145)] [s6Step262EntryGFresh,s6Step262EntryFvFresh,s6Step262EntryGvFresh] [s6Step262EntryGOut,s6Step262EntryFvOut,s6Step262EntryGvOut]
    (growRow 795 s6Step262EntryFFresh) ((growRow 777 s6Step262EntryGFresh ++ (growRow 776 s6Step262EntryFvFresh ++ (growRow 775 s6Step262EntryGvFresh ++ [])))) s6Step262EntryF_Incoming s6Step262EntryF_checked h1 s6Step262EntryF_Outgoing
  exact h0

private theorem s6Step262EntryBank_checked : compileHmrBankResizeLog .entry s6Step262EntryFBefore ⟨s6Step262EntryFRow,s6Step262EntryGRow,s6Step262EntryFvRow,s6Step262EntryGvRow⟩ ⟨139,139,145,145⟩ [s6Step262EntryFFresh,s6Step262EntryGFresh,s6Step262EntryFvFresh,s6Step262EntryGvFresh]=
    some (s6Step262EntryGvAfter,⟨s6Step262EntryFOut,s6Step262EntryGOut,s6Step262EntryFvOut,s6Step262EntryGvOut⟩,(growRow 795 s6Step262EntryFFresh ++ (growRow 777 s6Step262EntryGFresh ++ (growRow 776 s6Step262EntryFvFresh ++ (growRow 775 s6Step262EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step262EntryBank_rows]
  rfl

private def s6Step262ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<138) ∨ (139≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step262ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<138) ∨ (139≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step262ExitFBefore : Arena := s6Step262ExitGAfter

private def s6Step262ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 903],795⟩

private def s6Step262ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868],776⟩

private def s6Step262ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 794],777⟩

private def s6Step262ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 907],775⟩

private theorem s6Step262ExitBank_incomingDistinct : ([s6Step262ExitGRow,s6Step262ExitFRow,s6Step262ExitFvRow,s6Step262ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step262ExitF_Incoming : rowsOwned s6Step262ExitFBefore [s6Step262ExitFRow,s6Step262ExitFvRow,s6Step262ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step262ExitGRow,s6Step262ExitFRow,s6Step262ExitFvRow,s6Step262ExitGvRow] 1 s6Step262ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step262ExitFBefore (fun q => (0≤q ∧ q<138) ∨ (139≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step262ExitBank_outgoingOwned : rowsOwned s6Step262ExitGvAfter [s6Step262ExitGOut,s6Step262ExitFOut,s6Step262ExitFvOut,s6Step262ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step262ExitGvAfter (fun q => (0≤q ∧ q<138) ∨ (139≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step262ExitF_Outgoing : rowsOwned s6Step262ExitGvAfter [s6Step262ExitFOut,s6Step262ExitFvOut,s6Step262ExitGvOut] :=
  hmrRows_owned_drop s6Step262ExitGvAfter [s6Step262ExitGOut,s6Step262ExitFOut,s6Step262ExitFvOut,s6Step262ExitGvOut] 1 s6Step262ExitBank_outgoingOwned

private theorem s6Step262ExitF_distinct : (s6Step262ExitFRow.sign::s6Step262ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step262ExitF_owned : (s6Step262ExitFRow.sign::s6Step262ExitFRow.payload).toFinset⊆s6Step262ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step262ExitFBefore (fun q => (0≤q ∧ q<138) ∨ (139≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step262ExitF_retired : s6Step262ExitFBefore.retireSet s6Step262ExitFExtra.toFinset=s6Step262ExitFAfter := by
  unfold Arena.retireSet s6Step262ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step262ExitFBefore,s6Step262ExitGAfter,s6Step262ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step262ExitF_checked : planRowResizeLog s6Step262ExitFBefore s6Step262ExitFRow 139 []=
    some (s6Step262ExitFAfter,s6Step262ExitFOut,shrinkRow 795 s6Step262ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step262ExitFBefore s6Step262ExitFRow 139 s6Step262ExitF_distinct s6Step262ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step262ExitFRow.payload.take 139) s6Step262ExitFRow.sign=s6Step262ExitFOut := by decide +kernel
  have hi : s6Step262ExitFRow.payload.drop 139=s6Step262ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step262ExitF_retired] at result
  exact result

private def s6Step262ExitFvAfter : Arena := s6Step262ExitFAfter

private def s6Step262ExitFvBefore : Arena := s6Step262ExitFAfter

private theorem s6Step262ExitFv_Incoming : rowsOwned s6Step262ExitFvBefore [s6Step262ExitFvRow,s6Step262ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step262ExitGRow,s6Step262ExitFRow,s6Step262ExitFvRow,s6Step262ExitGvRow] 2 s6Step262ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step262ExitFvBefore (fun q => (0≤q ∧ q<138) ∨ (139≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step262ExitFv_Outgoing : rowsOwned s6Step262ExitGvAfter [s6Step262ExitFvOut,s6Step262ExitGvOut] :=
  hmrRows_owned_drop s6Step262ExitGvAfter [s6Step262ExitGOut,s6Step262ExitFOut,s6Step262ExitFvOut,s6Step262ExitGvOut] 2 s6Step262ExitBank_outgoingOwned

private theorem s6Step262ExitFv_distinct : (s6Step262ExitFvRow.sign::s6Step262ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step262ExitFv_owned : (s6Step262ExitFvRow.sign::s6Step262ExitFvRow.payload).toFinset⊆s6Step262ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step262ExitFvBefore (fun q => (0≤q ∧ q<138) ∨ (139≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step262ExitFv_reserved : s6Step262ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step262ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step262ExitFv_checked : planRowResizeLog s6Step262ExitFvBefore s6Step262ExitFvRow 146 []=
    some (s6Step262ExitFvAfter,s6Step262ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step262ExitFvBefore s6Step262ExitFvAfter s6Step262ExitFvRow 146 []
    s6Step262ExitFv_distinct s6Step262ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step262ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step262ExitFvRow.payload++[]) s6Step262ExitFvRow.sign=s6Step262ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step262ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step262ExitG_Incoming : rowsOwned s6Step262ExitGBefore [s6Step262ExitGRow,s6Step262ExitFRow,s6Step262ExitFvRow,s6Step262ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step262ExitGRow,s6Step262ExitFRow,s6Step262ExitFvRow,s6Step262ExitGvRow] 0 s6Step262ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step262ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step262ExitG_Outgoing : rowsOwned s6Step262ExitGvAfter [s6Step262ExitGOut,s6Step262ExitFOut,s6Step262ExitFvOut,s6Step262ExitGvOut] :=
  hmrRows_owned_drop s6Step262ExitGvAfter [s6Step262ExitGOut,s6Step262ExitFOut,s6Step262ExitFvOut,s6Step262ExitGvOut] 0 s6Step262ExitBank_outgoingOwned

private theorem s6Step262ExitG_distinct : (s6Step262ExitGRow.sign::s6Step262ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step262ExitG_owned : (s6Step262ExitGRow.sign::s6Step262ExitGRow.payload).toFinset⊆s6Step262ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step262ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step262ExitG_retired : s6Step262ExitGBefore.retireSet s6Step262ExitGExtra.toFinset=s6Step262ExitGAfter := by
  unfold Arena.retireSet s6Step262ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step262ExitGBefore,s6Step262ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step262ExitG_checked : planRowResizeLog s6Step262ExitGBefore s6Step262ExitGRow 138 []=
    some (s6Step262ExitGAfter,s6Step262ExitGOut,shrinkRow 777 s6Step262ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step262ExitGBefore s6Step262ExitGRow 138 s6Step262ExitG_distinct s6Step262ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step262ExitGRow.payload.take 138) s6Step262ExitGRow.sign=s6Step262ExitGOut := by decide +kernel
  have hi : s6Step262ExitGRow.payload.drop 138=s6Step262ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step262ExitG_retired] at result
  exact result

private def s6Step262ExitGvBefore : Arena := s6Step262ExitFAfter

private theorem s6Step262ExitGv_Incoming : rowsOwned s6Step262ExitGvBefore [s6Step262ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step262ExitGRow,s6Step262ExitFRow,s6Step262ExitFvRow,s6Step262ExitGvRow] 3 s6Step262ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step262ExitGvBefore (fun q => (0≤q ∧ q<138) ∨ (139≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step262ExitGv_Outgoing : rowsOwned s6Step262ExitGvAfter [s6Step262ExitGvOut] :=
  hmrRows_owned_drop s6Step262ExitGvAfter [s6Step262ExitGOut,s6Step262ExitFOut,s6Step262ExitFvOut,s6Step262ExitGvOut] 3 s6Step262ExitBank_outgoingOwned

private theorem s6Step262ExitGv_distinct : (s6Step262ExitGvRow.sign::s6Step262ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step262ExitGv_owned : (s6Step262ExitGvRow.sign::s6Step262ExitGvRow.payload).toFinset⊆s6Step262ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step262ExitGvBefore (fun q => (0≤q ∧ q<138) ∨ (139≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step262ExitGv_retired : s6Step262ExitGvBefore.retireSet s6Step262ExitGvExtra.toFinset=s6Step262ExitGvAfter := by
  unfold Arena.retireSet s6Step262ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step262ExitGvBefore,s6Step262ExitFAfter,s6Step262ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step262ExitGv_checked : planRowResizeLog s6Step262ExitGvBefore s6Step262ExitGvRow 145 []=
    some (s6Step262ExitGvAfter,s6Step262ExitGvOut,shrinkRow 775 s6Step262ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step262ExitGvBefore s6Step262ExitGvRow 145 s6Step262ExitGv_distinct s6Step262ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step262ExitGvRow.payload.take 145) s6Step262ExitGvRow.sign=s6Step262ExitGvOut := by decide +kernel
  have hi : s6Step262ExitGvRow.payload.drop 145=s6Step262ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step262ExitGv_retired] at result
  exact result

private theorem s6Step262ExitBank_rows : planWindowRowsLog s6Step262ExitGBefore [(s6Step262ExitGRow,138),(s6Step262ExitFRow,139),(s6Step262ExitFvRow,146),(s6Step262ExitGvRow,145)] [[],[],[],[]]=
    some (s6Step262ExitGvAfter,[s6Step262ExitGOut,s6Step262ExitFOut,s6Step262ExitFvOut,s6Step262ExitGvOut],(shrinkRow 777 s6Step262ExitGExtra ++ (shrinkRow 795 s6Step262ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step262ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step262ExitGvAfter [] []=some (s6Step262ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step262ExitGvBefore s6Step262ExitGvAfter s6Step262ExitGvAfter
    s6Step262ExitGvRow s6Step262ExitGvOut 145 [] [] [] []
    (shrinkRow 775 s6Step262ExitGvExtra) ([]) s6Step262ExitGv_Incoming s6Step262ExitGv_checked h4 s6Step262ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step262ExitFvBefore s6Step262ExitFvAfter s6Step262ExitGvAfter
    s6Step262ExitFvRow s6Step262ExitFvOut 146 [] [(s6Step262ExitGvRow,145)] [[]] [s6Step262ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step262ExitGvExtra ++ [])) s6Step262ExitFv_Incoming s6Step262ExitFv_checked h3 s6Step262ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step262ExitFBefore s6Step262ExitFAfter s6Step262ExitGvAfter
    s6Step262ExitFRow s6Step262ExitFOut 139 [] [(s6Step262ExitFvRow,146),(s6Step262ExitGvRow,145)] [[],[]] [s6Step262ExitFvOut,s6Step262ExitGvOut]
    (shrinkRow 795 s6Step262ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step262ExitGvExtra ++ []))) s6Step262ExitF_Incoming s6Step262ExitF_checked h2 s6Step262ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step262ExitGBefore s6Step262ExitGAfter s6Step262ExitGvAfter
    s6Step262ExitGRow s6Step262ExitGOut 138 [] [(s6Step262ExitFRow,139),(s6Step262ExitFvRow,146),(s6Step262ExitGvRow,145)] [[],[],[]] [s6Step262ExitFOut,s6Step262ExitFvOut,s6Step262ExitGvOut]
    (shrinkRow 777 s6Step262ExitGExtra) ((shrinkRow 795 s6Step262ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step262ExitGvExtra ++ [])))) s6Step262ExitG_Incoming s6Step262ExitG_checked h1 s6Step262ExitG_Outgoing
  exact h0

private theorem s6Step262ExitBank_checked : compileHmrBankResizeLog .exit s6Step262ExitGBefore ⟨s6Step262ExitFRow,s6Step262ExitGRow,s6Step262ExitFvRow,s6Step262ExitGvRow⟩ ⟨139,138,146,145⟩ [[],[],[],[]]=
    some (s6Step262ExitGvAfter,⟨s6Step262ExitFOut,s6Step262ExitGOut,s6Step262ExitFvOut,s6Step262ExitGvOut⟩,(shrinkRow 777 s6Step262ExitGExtra ++ (shrinkRow 795 s6Step262ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step262ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step262ExitBank_rows]
  rfl

private theorem s6Step262Add0_apart : Disjoint s6Step262Add0Arena.live s6Step262Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step262Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step262Add0_card : s6Step262Add0Arena.live.card=894 := by
  decide +kernel

private theorem s6Step262Add0_borrowed : s6Step262Add0Arena.checkBorrow (hmrHybridCount s6Step262Add0Arena s6Step262Add0B.length) s6Step262Add0Work=some s6Step262Add0During := by
  have len : s6Step262Add0Work.length=hmrHybridCount s6Step262Add0Arena s6Step262Add0B.length := by
    rw [hmrHybridCount,s6Step262Add0_card]
    decide +kernel
  have nd : s6Step262Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step262Add0Arena s6Step262Add0During s6Step262Add0Work.toFinset s6Step262Add0_bounded s6Step262Add0_apart rfl

private theorem s6Step262Add0_distinct : (809::927::891::(s6Step262Add0A++s6Step262Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step262Add0_owned : (809::927::891::(s6Step262Add0A++s6Step262Add0B)).toFinset⊆s6Step262Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step262Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step262Add0_checked : compileHmrHybridCinLog s6Step262Add0Arena 927 809 891 s6Step262Add0A s6Step262Add0B s6Step262Add0Work=some s6Step262Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step262Add0Arena s6Step262Add0During 927 809 891 s6Step262Add0A s6Step262Add0B s6Step262Add0Work
    (by decide +kernel) (by decide +kernel) s6Step262Add0_distinct
    (fun q hq => s6Step262Add0_owned (List.mem_toFinset.mpr hq)) s6Step262Add0_borrowed

private theorem s6Step262Add1_apart : Disjoint s6Step262Add1Arena.live s6Step262Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step262Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step262Add1_card : s6Step262Add1Arena.live.card=894 := by
  decide +kernel

private theorem s6Step262Add1_borrowed : s6Step262Add1Arena.checkBorrow (hmrHybridCount s6Step262Add1Arena s6Step262Add1B.length) s6Step262Add1Work=some s6Step262Add1During := by
  have len : s6Step262Add1Work.length=hmrHybridCount s6Step262Add1Arena s6Step262Add1B.length := by
    rw [hmrHybridCount,s6Step262Add1_card]
    decide +kernel
  have nd : s6Step262Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step262Add1Arena s6Step262Add1During s6Step262Add1Work.toFinset s6Step262Add1_bounded s6Step262Add1_apart rfl

private theorem s6Step262Add1_distinct : (809::927::891::(s6Step262Add1A++s6Step262Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step262Add1_owned : (809::927::891::(s6Step262Add1A++s6Step262Add1B)).toFinset⊆s6Step262Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step262Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step262Add1_checked : compileHmrHybridCinLog s6Step262Add1Arena 927 809 891 s6Step262Add1A s6Step262Add1B s6Step262Add1Work=some s6Step262Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step262Add1Arena s6Step262Add1During 927 809 891 s6Step262Add1A s6Step262Add1B s6Step262Add1Work
    (by decide +kernel) (by decide +kernel) s6Step262Add1_distinct
    (fun q hq => s6Step262Add1_owned (List.mem_toFinset.mpr hq)) s6Step262Add1_borrowed

private theorem s6Step262F4_apart : Disjoint (s6Step262Add0A++s6Step262Add0B).toFinset (s6Step262Add1A++s6Step262Add1B).toFinset := by
  have nd : ((s6Step262Add0A++s6Step262Add0B)++(s6Step262Add1A++s6Step262Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step262F4_carry : s6Step262F4FlagArena.checkBorrow 1 [891]=some s6Step262Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step262F4FlagArena,s6Step262HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step262F4FlagArena,s6Step262HeadFvAfter,s6Step262Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step262F4_distinct : (822::927::809::891::((s6Step262Add0A++s6Step262Add1A)++(s6Step262Add0B++s6Step262Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step262F4_flag : s6Step262HeadFvAfter.checkBorrow 1 [809]=some s6Step262F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step262HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step262F4_owned : (822::927::((s6Step262Add0A++s6Step262Add1A)++(s6Step262Add0B++s6Step262Add1B))).toFinset⊆s6Step262HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step262HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step262F4_checked : compileHmrHybridF4Log s6Step262HeadFvAfter 822 927 s6Step262Add0A s6Step262Add0B s6Step262Add1A s6Step262Add1B [809] [891] s6Step262Add0Work s6Step262Add1Work=some s6Step262F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step262HeadFvAfter s6Step262F4FlagArena s6Step262Add0Arena s6Step262Add0During s6Step262Add1During 822 927
    s6Step262Add0A s6Step262Add0B s6Step262Add1A s6Step262Add1B [809] [891] s6Step262Add0Work s6Step262Add1Work
    (fun q hq => s6Step262F4_owned (List.mem_toFinset.mpr hq)) s6Step262F4_flag s6Step262F4_carry
    s6Step262F4_distinct s6Step262F4_apart s6Step262Add0_checked s6Step262Add1_checked

private theorem s6Step262Front_branch : s6Step262FrontSigmaArena.checkBorrow 1 [927]=some s6Step262HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step262FrontSigmaArena,s6Step262EntryGvAfter,s6Step262EntryFBefore,arenaWires]
  · ext q
    simp only [s6Step262FrontSigmaArena,s6Step262EntryGvAfter,s6Step262EntryFBefore,s6Step262HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step262Front_entry : HmrFrontEntryValid s6Step262EntryFBefore s6Step262FrontBank 139 145 ⟨139,138,146,145⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step262FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step262EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step262EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step262FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step262Front_sigma : s6Step262EntryGvAfter.checkBorrow 1 [822]=some s6Step262FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step262EntryGvAfter,s6Step262EntryFBefore,arenaWires]
  · rfl

private def s6Step262HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step262HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step262HeadFBefore : Arena := s6Step262HeadGAfter

private def s6Step262HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394],795⟩

private def s6Step262HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880],776⟩

private def s6Step262HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138],777⟩

private def s6Step262HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853],775⟩

private theorem s6Step262HeadBank_incomingDistinct : ([s6Step262HeadGRow,s6Step262HeadFRow,s6Step262HeadGvRow,s6Step262HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step262HeadF_Incoming : rowsOwned s6Step262HeadFBefore [s6Step262HeadFRow,s6Step262HeadGvRow,s6Step262HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step262HeadGRow,s6Step262HeadFRow,s6Step262HeadGvRow,s6Step262HeadFvRow] 1 s6Step262HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step262HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step262HeadBank_outgoingOwned : rowsOwned s6Step262HeadFvAfter [s6Step262HeadGOut,s6Step262HeadFOut,s6Step262HeadGvOut,s6Step262HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step262HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step262HeadF_Outgoing : rowsOwned s6Step262HeadFvAfter [s6Step262HeadFOut,s6Step262HeadGvOut,s6Step262HeadFvOut] :=
  hmrRows_owned_drop s6Step262HeadFvAfter [s6Step262HeadGOut,s6Step262HeadFOut,s6Step262HeadGvOut,s6Step262HeadFvOut] 1 s6Step262HeadBank_outgoingOwned

private theorem s6Step262HeadF_distinct : (s6Step262HeadFRow.sign::s6Step262HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step262HeadF_owned : (s6Step262HeadFRow.sign::s6Step262HeadFRow.payload).toFinset⊆s6Step262HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step262HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step262HeadF_reserved : s6Step262HeadFBefore.reserve s6Step262HeadFFresh.toFinset=some s6Step262HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step262HeadFFresh,arenaWires]
  · norm_num [s6Step262HeadFBefore,s6Step262HeadGAfter,s6Step262HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step262HeadFAfter,s6Step262HeadFBefore,s6Step262HeadGAfter,s6Step262HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step262HeadF_checked : planRowResizeLog s6Step262HeadFBefore s6Step262HeadFRow 140 s6Step262HeadFFresh=
    some (s6Step262HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 903],795⟩,growRow 795 s6Step262HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step262HeadFBefore s6Step262HeadFAfter s6Step262HeadFRow 140 s6Step262HeadFFresh
    s6Step262HeadF_distinct s6Step262HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step262HeadF_reserved
  have rowEq : WindowRow.mk (s6Step262HeadFRow.payload++s6Step262HeadFFresh) s6Step262HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 903],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step262HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step262HeadFvBefore : Arena := s6Step262HeadGvAfter

private theorem s6Step262HeadFv_Incoming : rowsOwned s6Step262HeadFvBefore [s6Step262HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step262HeadGRow,s6Step262HeadFRow,s6Step262HeadGvRow,s6Step262HeadFvRow] 3 s6Step262HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step262HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step262HeadFv_Outgoing : rowsOwned s6Step262HeadFvAfter [s6Step262HeadFvOut] :=
  hmrRows_owned_drop s6Step262HeadFvAfter [s6Step262HeadGOut,s6Step262HeadFOut,s6Step262HeadGvOut,s6Step262HeadFvOut] 3 s6Step262HeadBank_outgoingOwned

private theorem s6Step262HeadFv_distinct : (s6Step262HeadFvRow.sign::s6Step262HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step262HeadFv_owned : (s6Step262HeadFvRow.sign::s6Step262HeadFvRow.payload).toFinset⊆s6Step262HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step262HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step262HeadFv_reserved : s6Step262HeadFvBefore.reserve s6Step262HeadFvFresh.toFinset=some s6Step262HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step262HeadFvFresh,arenaWires]
  · norm_num [s6Step262HeadFvBefore,s6Step262HeadGvAfter,s6Step262HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step262HeadFvAfter,s6Step262HeadFvBefore,s6Step262HeadGvAfter,s6Step262HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step262HeadFv_checked : planRowResizeLog s6Step262HeadFvBefore s6Step262HeadFvRow 146 s6Step262HeadFvFresh=
    some (s6Step262HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868],776⟩,growRow 776 s6Step262HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step262HeadFvBefore s6Step262HeadFvAfter s6Step262HeadFvRow 146 s6Step262HeadFvFresh
    s6Step262HeadFv_distinct s6Step262HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step262HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step262HeadFvRow.payload++s6Step262HeadFvFresh) s6Step262HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step262HeadG_Incoming : rowsOwned s6Step262HeadGBefore [s6Step262HeadGRow,s6Step262HeadFRow,s6Step262HeadGvRow,s6Step262HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step262HeadGRow,s6Step262HeadFRow,s6Step262HeadGvRow,s6Step262HeadFvRow] 0 s6Step262HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step262HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step262HeadG_Outgoing : rowsOwned s6Step262HeadFvAfter [s6Step262HeadGOut,s6Step262HeadFOut,s6Step262HeadGvOut,s6Step262HeadFvOut] :=
  hmrRows_owned_drop s6Step262HeadFvAfter [s6Step262HeadGOut,s6Step262HeadFOut,s6Step262HeadGvOut,s6Step262HeadFvOut] 0 s6Step262HeadBank_outgoingOwned

private theorem s6Step262HeadG_distinct : (s6Step262HeadGRow.sign::s6Step262HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step262HeadG_owned : (s6Step262HeadGRow.sign::s6Step262HeadGRow.payload).toFinset⊆s6Step262HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step262HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step262HeadG_reserved : s6Step262HeadGBefore.reserve s6Step262HeadGFresh.toFinset=some s6Step262HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step262HeadGFresh,arenaWires]
  · norm_num [s6Step262HeadGBefore,s6Step262HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step262HeadGAfter,s6Step262HeadGBefore,s6Step262HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step262HeadG_checked : planRowResizeLog s6Step262HeadGBefore s6Step262HeadGRow 140 s6Step262HeadGFresh=
    some (s6Step262HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 794],777⟩,growRow 777 s6Step262HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step262HeadGBefore s6Step262HeadGAfter s6Step262HeadGRow 140 s6Step262HeadGFresh
    s6Step262HeadG_distinct s6Step262HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step262HeadG_reserved
  have rowEq : WindowRow.mk (s6Step262HeadGRow.payload++s6Step262HeadGFresh) s6Step262HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 794],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step262HeadGvBefore : Arena := s6Step262HeadFAfter

private theorem s6Step262HeadGv_Incoming : rowsOwned s6Step262HeadGvBefore [s6Step262HeadGvRow,s6Step262HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step262HeadGRow,s6Step262HeadFRow,s6Step262HeadGvRow,s6Step262HeadFvRow] 2 s6Step262HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step262HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step262HeadGv_Outgoing : rowsOwned s6Step262HeadFvAfter [s6Step262HeadGvOut,s6Step262HeadFvOut] :=
  hmrRows_owned_drop s6Step262HeadFvAfter [s6Step262HeadGOut,s6Step262HeadFOut,s6Step262HeadGvOut,s6Step262HeadFvOut] 2 s6Step262HeadBank_outgoingOwned

private theorem s6Step262HeadGv_distinct : (s6Step262HeadGvRow.sign::s6Step262HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step262HeadGv_owned : (s6Step262HeadGvRow.sign::s6Step262HeadGvRow.payload).toFinset⊆s6Step262HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step262HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (834≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<862) ∨ (863≤q ∧ q<868) ∨ (869≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step262HeadGv_reserved : s6Step262HeadGvBefore.reserve s6Step262HeadGvFresh.toFinset=some s6Step262HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step262HeadGvFresh,arenaWires]
  · norm_num [s6Step262HeadGvBefore,s6Step262HeadFAfter,s6Step262HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step262HeadGvAfter,s6Step262HeadGvBefore,s6Step262HeadFAfter,s6Step262HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step262HeadGv_checked : planRowResizeLog s6Step262HeadGvBefore s6Step262HeadGvRow 146 s6Step262HeadGvFresh=
    some (s6Step262HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 907],775⟩,growRow 775 s6Step262HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step262HeadGvBefore s6Step262HeadGvAfter s6Step262HeadGvRow 146 s6Step262HeadGvFresh
    s6Step262HeadGv_distinct s6Step262HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step262HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step262HeadGvRow.payload++s6Step262HeadGvFresh) s6Step262HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 907],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step262HeadBank_rows : planWindowRowsLog s6Step262HeadGBefore [(s6Step262HeadGRow,140),(s6Step262HeadFRow,140),(s6Step262HeadGvRow,146),(s6Step262HeadFvRow,146)] [s6Step262HeadGFresh,s6Step262HeadFFresh,s6Step262HeadGvFresh,s6Step262HeadFvFresh]=
    some (s6Step262HeadFvAfter,[s6Step262HeadGOut,s6Step262HeadFOut,s6Step262HeadGvOut,s6Step262HeadFvOut],(growRow 777 s6Step262HeadGFresh ++ (growRow 795 s6Step262HeadFFresh ++ (growRow 775 s6Step262HeadGvFresh ++ (growRow 776 s6Step262HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step262HeadFvAfter [] []=some (s6Step262HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step262HeadFvBefore s6Step262HeadFvAfter s6Step262HeadFvAfter
    s6Step262HeadFvRow s6Step262HeadFvOut 146 s6Step262HeadFvFresh [] [] []
    (growRow 776 s6Step262HeadFvFresh) ([]) s6Step262HeadFv_Incoming s6Step262HeadFv_checked h4 s6Step262HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step262HeadGvBefore s6Step262HeadGvAfter s6Step262HeadFvAfter
    s6Step262HeadGvRow s6Step262HeadGvOut 146 s6Step262HeadGvFresh [(s6Step262HeadFvRow,146)] [s6Step262HeadFvFresh] [s6Step262HeadFvOut]
    (growRow 775 s6Step262HeadGvFresh) ((growRow 776 s6Step262HeadFvFresh ++ [])) s6Step262HeadGv_Incoming s6Step262HeadGv_checked h3 s6Step262HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step262HeadFBefore s6Step262HeadFAfter s6Step262HeadFvAfter
    s6Step262HeadFRow s6Step262HeadFOut 140 s6Step262HeadFFresh [(s6Step262HeadGvRow,146),(s6Step262HeadFvRow,146)] [s6Step262HeadGvFresh,s6Step262HeadFvFresh] [s6Step262HeadGvOut,s6Step262HeadFvOut]
    (growRow 795 s6Step262HeadFFresh) ((growRow 775 s6Step262HeadGvFresh ++ (growRow 776 s6Step262HeadFvFresh ++ []))) s6Step262HeadF_Incoming s6Step262HeadF_checked h2 s6Step262HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step262HeadGBefore s6Step262HeadGAfter s6Step262HeadFvAfter
    s6Step262HeadGRow s6Step262HeadGOut 140 s6Step262HeadGFresh [(s6Step262HeadFRow,140),(s6Step262HeadGvRow,146),(s6Step262HeadFvRow,146)] [s6Step262HeadFFresh,s6Step262HeadGvFresh,s6Step262HeadFvFresh] [s6Step262HeadFOut,s6Step262HeadGvOut,s6Step262HeadFvOut]
    (growRow 777 s6Step262HeadGFresh) ((growRow 795 s6Step262HeadFFresh ++ (growRow 775 s6Step262HeadGvFresh ++ (growRow 776 s6Step262HeadFvFresh ++ [])))) s6Step262HeadG_Incoming s6Step262HeadG_checked h1 s6Step262HeadG_Outgoing
  exact h0

private theorem s6Step262HeadBank_checked : compileHmrBankResizeLog .headroom s6Step262HeadGBefore ⟨s6Step262HeadFRow,s6Step262HeadGRow,s6Step262HeadFvRow,s6Step262HeadGvRow⟩ ⟨140,140,146,146⟩ [s6Step262HeadGFresh,s6Step262HeadFFresh,s6Step262HeadGvFresh,s6Step262HeadFvFresh]=
    some (s6Step262HeadFvAfter,⟨s6Step262HeadFOut,s6Step262HeadGOut,s6Step262HeadFvOut,s6Step262HeadGvOut⟩,(growRow 777 s6Step262HeadGFresh ++ (growRow 795 s6Step262HeadFFresh ++ (growRow 775 s6Step262HeadGvFresh ++ (growRow 776 s6Step262HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step262HeadBank_rows]
  rfl

private theorem s6Step262Front_checked : compileHmrSourceFrontLog s6Step262EntryFBefore s6Step262FrontBank 139 145 ⟨139,138,146,145⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step262FrontLog=some s6Step262FrontPlan := by
  have pairEq : s6Step262FrontPair=⟨s6Step262HeadFRow,s6Step262HeadGRow,s6Step262HeadFvRow,s6Step262HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step262FrontHead=⟨s6Step262ExitFRow,s6Step262ExitGRow,s6Step262ExitFvRow,s6Step262ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step262Add0A=s6Step262FrontHead.f.wires := by decide +kernel
  have gEq : s6Step262Add0B=s6Step262FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step262Add1A=s6Step262FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step262Add1B=s6Step262FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step262EntryFBefore s6Step262FrontBank 139 145 ⟨139,138,146,145⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step262FrontLog s6Step262FrontPlan
  · exact s6Step262Front_entry
  · exact s6Step262EntryBank_checked
  · exact s6Step262Front_sigma
  · rfl
  · exact s6Step262Front_branch
  · rfl
  · simpa only [s6Step262FrontPlan,pairEq] using s6Step262HeadBank_checked
  · simpa only [s6Step262FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step262F4_checked
  · exact s6Step262Counter_checked
  · rfl
  · simpa only [s6Step262FrontPlan,headEq] using s6Step262ExitBank_checked

private theorem s6Step262Complete_explicit_checked : compileHmrEarlyStepLog s6Step262EntryFBefore s6Step262FrontBank 139 145 ⟨139,138,146,145⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932] 52 s6Step262CompleteLog=some s6Step262CompletePlan := by
  let Q := s6Step262EarlyControlPlan
  have hq := s6Step262EarlyControl_plan_checked
  have fv1 : s6Step262CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step262CompleteOut.fv.payload[2]?.getD s6Step262CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step262CompleteOut.fv.payload[3]?.getD s6Step262CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step262CompleteOut.fv.payload[4]?.getD s6Step262CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step262EntryFBefore s6Step262EarlyControlArena s6Step262FrontBank 139 145 ⟨139,138,146,145⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932] 52 s6Step262CompleteLog s6Step262FrontPlan Q
    s6Step262Front_checked s6Step262Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step262Complete_owned s6Step262Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step262EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932] 769 822 s6Step262CompleteOut.fv.second (s6Step262CompleteOut.fv.payload[2]?.getD s6Step262CompleteOut.fv.sign) (s6Step262CompleteOut.fv.payload[3]?.getD s6Step262CompleteOut.fv.sign) (s6Step262CompleteOut.fv.payload[4]?.getD s6Step262CompleteOut.fv.sign) 927 52 s6Step262EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep262Arena : Arena := s6Step262EntryFBefore
def s6PrivateStep262Bank : WindowBank := s6Step262FrontBank
def s6PrivateStep262Spec : HmrSourceWalkStepLog := ⟨139,145,⟨139,138,146,145⟩,52,.early s6Step262CompleteLog⟩
def s6PrivateStep262Plan : HmrSourceStepPlan := .early s6Step262CompletePlan
theorem s6PrivateStep262_source : s6PrivateStep262Spec=s6ObservedLogs256[6] := rfl
theorem s6PrivateStep262_checked : compileHmrSourceStepLog s6PrivateStep262Arena s6PrivateStep262Bank
    s6PrivateStep262Spec.fgWidth s6PrivateStep262Spec.vWidth s6PrivateStep262Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932]
    6 498 262 s6PrivateStep262Spec.need none s6PrivateStep262Spec.log=some s6PrivateStep262Plan := by
  change compileHmrSourceStepLog s6Step262EntryFBefore s6Step262FrontBank 139 145 ⟨139,138,146,145⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932] 6 498 262 52 none (.early s6Step262CompleteLog)=some (.early s6Step262CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 262<498)]
  rw [s6Step262Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
