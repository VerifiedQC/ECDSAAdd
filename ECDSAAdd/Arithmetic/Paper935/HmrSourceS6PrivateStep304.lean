import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep302
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

private def s6Step304CompleteMoves : List (Wire × Wire) := []

private def s6Step304EarlyControlLog : HmrEarlyControlLog := ⟨[869, 865, 793, 857, 823],[830],[805],[817, 812, 915, 906, 792, 849],[]⟩

private def s6Step304FrontLog : HmrFrontAllocationLog := ⟨⟨[[865], [], [], []],[[823], [793], [869], [886]],[[], [], [], []]⟩,[828],[888],[830],[805],[817, 812, 915, 906, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[817, 812, 915, 906, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[830, 805, 817, 812]⟩

private def s6Step304CompleteLog : HmrEarlyStepLog := ⟨s6Step304FrontLog,s6Step304CompleteMoves,s6Step304EarlyControlLog⟩

private def s6Step304ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374],795⟩

private def s6Step304ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886],776⟩

private def s6Step304ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 803],777⟩

private def s6Step304ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898],775⟩

private def s6Step304FrontOut : WindowBank := ⟨s6Step304ExitFOut,s6Step304ExitGOut,s6Step304ExitFvOut,s6Step304ExitGvOut⟩

private def s6Step304CompleteOut : WindowBank := s6Step304FrontOut.repacked s6Step304CompleteMoves

private def s6Step304EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step304EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step304EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step304EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step304EarlyControlPositiveArena,[830],s6Step304EarlyControlEqualityArena,[805],⟨⟨828,false⟩,[⟨⟨830,false⟩,805⟩]⟩⟩

private def s6Step304EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step304EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step304EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step304EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step304EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step304EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step304EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,869⟩,⟨⟨772,false⟩,865⟩,⟨⟨771,false⟩,793⟩,⟨⟨770,false⟩,857⟩,⟨⟨769,false⟩,823⟩]⟩

private def s6Step304EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step304EarlyControlZeroArena,s6Step304EarlyControlZeroPlan,s6Step304EarlyControlClassPlan,s6Step304EarlyControlFlagArena,s6Step304EarlyControlFittedArena,s6Step304EarlyControlHistoryArena,s6Step304EarlyControlSigmaArena,s6Step304EarlyControlOutputArena,s6Step304EarlyControlLog⟩

private def s6Step304CounterWork : List Wire := [830, 805, 817, 812]

private theorem s6Step304Counter_bounded : s6Step304CounterWork.toFinset⊆arenaWires := by norm_num [s6Step304CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step304HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step304CounterDuring : Arena := ⟨s6Step304HeadFvAfter.live∪s6Step304CounterWork.toFinset,Finset.union_subset s6Step304HeadFvAfter.bounded s6Step304Counter_bounded⟩

private def s6Step304EntryFFresh : List Wire := [865]

private def s6Step304EntryFvFresh : List Wire := []

private def s6Step304EntryGFresh : List Wire := []

private def s6Step304EntryFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step304EntryGvAfter : Arena := s6Step304EntryFAfter

private def s6Step304EntryGvFresh : List Wire := []

private def s6Step304ExitFExtra : List Wire := [865, 793]

private def s6Step304ExitGExtra : List Wire := [857, 823]

private def s6Step304ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step304ExitGvExtra : List Wire := [869]

private def s6Step304Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step304Add0Work : List Wire := [817, 812, 915, 906, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step304Add0_bounded : s6Step304Add0Work.toFinset⊆arenaWires := by
  have h : s6Step304Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step304Add0During : Arena := ⟨s6Step304Add0Arena.live∪s6Step304Add0Work.toFinset,Finset.union_subset s6Step304Add0Arena.bounded s6Step304Add0_bounded⟩

private def s6Step304Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step304Add1Work : List Wire := [817, 812, 915, 906, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step304Add1_bounded : s6Step304Add1Work.toFinset⊆arenaWires := by
  have h : s6Step304Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step304Add1During : Arena := ⟨s6Step304Add1Arena.live∪s6Step304Add1Work.toFinset,Finset.union_subset s6Step304Add1Arena.bounded s6Step304Add1_bounded⟩

private def s6Step304F4FlagArena : Arena := ⟨s6Step304HeadFvAfter.live∪{830},Finset.union_subset s6Step304HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step304F4Plan : HmrHybridF4Plan := ⟨s6Step304F4FlagArena,[830],s6Step304Add0Arena,[805],s6Step304Add0During,s6Step304Add0Work,s6Step304Add1During,s6Step304Add1Work⟩

private def s6Step304HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 865, 793],795⟩

private def s6Step304HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886],776⟩

private def s6Step304HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 803, 857, 823],777⟩

private def s6Step304HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 869],775⟩

private def s6Step304FrontHead : WindowBank := ⟨s6Step304HeadFOut,s6Step304HeadGOut,s6Step304HeadFvOut,s6Step304HeadGvOut⟩

private def s6Step304EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 865],795⟩

private def s6Step304EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908],776⟩

private def s6Step304EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 803, 857],777⟩

private def s6Step304EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898],775⟩

private def s6Step304FrontPair : WindowBank := ⟨s6Step304EntryFOut,s6Step304EntryGOut,s6Step304EntryFvOut,s6Step304EntryGvOut⟩

private def s6Step304FrontSigmaArena : Arena := ⟨s6Step304EntryGvAfter.live∪{828},Finset.union_subset s6Step304EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step304HeadFFresh : List Wire := [793]

private def s6Step304HeadFvFresh : List Wire := [886]

private def s6Step304HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step304HeadGFresh : List Wire := [823]

private def s6Step304HeadGvFresh : List Wire := [869]

private def s6Step304FrontPlan : HmrSourceFront := ⟨s6Step304EntryGvAfter,s6Step304FrontPair,(growRow 795 s6Step304EntryFFresh ++ (growRow 777 s6Step304EntryGFresh ++ (growRow 776 s6Step304EntryFvFresh ++ (growRow 775 s6Step304EntryGvFresh ++ [])))),s6Step304FrontSigmaArena,[828],s6Step304HeadGBefore,[888],
  s6Step304HeadFvAfter,s6Step304FrontHead,(growRow 777 s6Step304HeadGFresh ++ (growRow 795 s6Step304HeadFFresh ++ (growRow 775 s6Step304HeadGvFresh ++ (growRow 776 s6Step304HeadFvFresh ++ [])))),s6Step304F4Plan,s6Step304CounterDuring,s6Step304CounterWork,s6Step304ExitGvAfter,s6Step304FrontOut,(shrinkRow 777 s6Step304ExitGExtra ++ (shrinkRow 795 s6Step304ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step304ExitGvExtra ++ []))))⟩

private def s6Step304CompletePlan : HmrEarlyStepPlan := ⟨s6Step304FrontPlan,s6Step304EarlyControlArena,s6Step304EarlyControlPlan,s6Step304CompleteMoves⟩

private theorem s6Step304Complete_apart : List.Disjoint (s6Step304CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [828, 888, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] := by
  have nd : ((s6Step304CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[828, 888, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step304Complete_owned : (s6Step304CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step304EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step304EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step304Complete_repack : s6Step304ExitGvAfter.checkRepack s6Step304CompleteMoves=some s6Step304EarlyControlArena := by rfl

private theorem s6Step304EarlyControl_branchOwned : ([888] : List Wire).toFinset⊆s6Step304EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step304EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step304EarlyControl_branch : compileHmrBranchRetirement s6Step304EarlyControlSigmaArena 888=some s6Step304EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step304EarlyControl_branchOwned
  · ext q
    simp [s6Step304EarlyControlOutputArena,s6Step304EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step304EarlyControl_classEqualityBorrow : s6Step304EarlyControlPositiveArena.checkBorrow (([828, 830] : List Wire).length-1) s6Step304EarlyControlLog.classWork=some s6Step304EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step304EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step304EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step304EarlyControlEqualityArena,s6Step304EarlyControlPositiveArena,s6Step304EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step304EarlyControl_classEqualityOwned : ([828, 830] : List Wire).toFinset⊆s6Step304EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step304EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step304EarlyControl_classEquality : compileHmrEqualityLog s6Step304EarlyControlPositiveArena [828, 830] 0 s6Step304EarlyControlLog.classWork=some (s6Step304EarlyControlEqualityArena,s6Step304EarlyControlLog.classWork,s6Step304EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step304EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step304EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step304EarlyControl_classOwned : ([769, 823, 828] : List Wire).toFinset⊆s6Step304EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step304EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step304EarlyControl_positiveBorrow : s6Step304EarlyControlZeroArena.checkBorrow (1) s6Step304EarlyControlLog.positiveWork=some s6Step304EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step304EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step304EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step304EarlyControlPositiveArena,s6Step304EarlyControlZeroArena,s6Step304EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step304EarlyControl_class : compileHmrSourceClassLog s6Step304EarlyControlZeroArena false 769 s6Step304EarlyControlZeroPlan.top 0 828 s6Step304EarlyControlLog.positiveWork s6Step304EarlyControlLog.classWork=some s6Step304EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step304EarlyControlClassPlan s6Step304EarlyControlZeroArena false 769 s6Step304EarlyControlZeroPlan.top 0 828
  constructor
  · decide +kernel
  · exact s6Step304EarlyControl_classOwned
  · exact s6Step304EarlyControl_positiveBorrow
  · exact s6Step304EarlyControl_classEquality

private theorem s6Step304EarlyControl_entryRecordOwned : ([888, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] : List Wire).toFinset⊆s6Step304EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step304EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step304EarlyControl_entrySigmaOwned : ([828, 254] : List Wire).toFinset⊆s6Step304EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step304EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step304EarlyControl_fitBorrow : s6Step304EarlyControlFlagArena.checkBorrow ((55-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] : List Wire).length)) s6Step304EarlyControlLog.recordFresh=some s6Step304EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step304EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step304EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step304EarlyControlFittedArena,s6Step304EarlyControlFlagArena,s6Step304EarlyControlLog,arenaWires]

private theorem s6Step304EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] : List Wire).toFinset⊆s6Step304EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step304EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step304EarlyControl_fit : compileHmrRecordGrowLog s6Step304EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] 55 s6Step304EarlyControlLog.recordFresh=some s6Step304EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step304EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step304EarlyControl_fitBorrow

private theorem s6Step304EarlyControl_flagsBorrow : s6Step304EarlyControlEqualityArena.checkBorrow (6) s6Step304EarlyControlLog.flagWork=some s6Step304EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step304EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step304EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step304EarlyControlFlagArena,s6Step304EarlyControlEqualityArena,s6Step304EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step304EarlyControl_flagsOwned : ([805, 253, 252, 251] : List Wire).toFinset⊆s6Step304EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step304EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step304EarlyControl_flags : compileHmrFlagsLog s6Step304EarlyControlClassPlan.equalityArena s6Step304EarlyControlClassPlan.equality.top 253 252 251 s6Step304EarlyControlLog.flagWork=some s6Step304EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step304EarlyControl_flagsOwned⟩
  · exact s6Step304EarlyControl_flagsBorrow

private theorem s6Step304EarlyControl_historyBorrow : s6Step304EarlyControlArena.checkBorrow ((55-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] : List Wire).length)) s6Step304EarlyControlLog.recordFresh=some s6Step304EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step304EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step304EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step304EarlyControlHistoryArena,s6Step304EarlyControlArena,s6Step304EarlyControlLog,arenaWires]

private theorem s6Step304EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] : List Wire).toFinset⊆s6Step304EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step304EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step304EarlyControl_history : compileHmrRecordGrowLog s6Step304EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] 55 s6Step304EarlyControlLog.recordFresh=some s6Step304EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step304EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step304EarlyControl_historyBorrow

private theorem s6Step304EarlyControl_sigmaOwned : ([254, 828] : List Wire).toFinset⊆s6Step304EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step304EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step304EarlyControl_sigmaReleaseOwned : ([828] : List Wire).toFinset⊆s6Step304EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step304EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step304EarlyControl_sigmaRelease : s6Step304EarlyControlHistoryArena.release {828} (fun _ => false)=some s6Step304EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step304EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step304EarlyControlSigmaArena,s6Step304EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step304EarlyControl_sigma : compileHmrSigmaDropLog s6Step304EarlyControlHistoryArena false 0 0 254 828 []=some s6Step304EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step304EarlyControl_sigmaOwned⟩
  · exact s6Step304EarlyControl_sigmaRelease

private theorem s6Step304EarlyControl_zeroBorrow : s6Step304EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step304EarlyControlLog.zeroWork=some s6Step304EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step304EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step304EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step304EarlyControlZeroArena,s6Step304EarlyControlArena,s6Step304EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step304EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step304EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step304EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step304EarlyControl_zero : compileHmrEqualityLog s6Step304EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step304EarlyControlLog.zeroWork=some (s6Step304EarlyControlZeroArena,s6Step304EarlyControlLog.zeroWork,s6Step304EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step304EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step304EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step304EarlyControl_logged : s6Step304EarlyControlPlan.Logged s6Step304EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] 769 828 254 253 252 251 888 55 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step304EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step304EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step304EarlyControl_zero
  · exact s6Step304EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step304EarlyControl_flags
  · exact s6Step304EarlyControl_fit
  · exact s6Step304EarlyControl_history
  · exact s6Step304EarlyControl_sigma
  · exact s6Step304EarlyControl_branch

private theorem s6Step304EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step304EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] 769 828 254 253 252 251 888 55 s6Step304EarlyControlLog=some s6Step304EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step304EarlyControlPlan s6Step304EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] 769 828 254 253 252 251 888 55 s6Step304EarlyControl_logged

private def s6Step304EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step304EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374],795⟩

private def s6Step304EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908],776⟩

private def s6Step304EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 803, 857],777⟩

private def s6Step304EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898],775⟩

private def s6Step304FrontBank : WindowBank := ⟨s6Step304EntryFRow,s6Step304EntryGRow,s6Step304EntryFvRow,s6Step304EntryGvRow⟩

private def s6Step304Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 865, 793, 795]

private def s6Step304Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 803, 857, 823, 777]

private def s6Step304Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 776]

private def s6Step304Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 869, 775]

private theorem s6Step304Counter_apart : Disjoint s6Step304HeadFvAfter.live s6Step304CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step304HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step304Counter_borrowed : s6Step304HeadFvAfter.checkBorrow 4 s6Step304CounterWork=some s6Step304CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step304HeadFvAfter s6Step304CounterDuring s6Step304CounterWork.toFinset s6Step304Counter_bounded s6Step304Counter_apart rfl

private theorem s6Step304Counter_owned : (828::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step304HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step304HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step304Counter_checked : compileHmrCounterStepLog s6Step304HeadFvAfter true 828 [774, 773, 772, 771, 770, 769] s6Step304CounterWork=some s6Step304CounterDuring := by
  have owned : ∀q∈828::[774, 773, 772, 771, 770, 769],q∈s6Step304HeadFvAfter.live := fun q hq => s6Step304Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step304Counter_borrowed

private theorem s6Step304EntryBank_incomingDistinct : ([s6Step304EntryFRow,s6Step304EntryGRow,s6Step304EntryFvRow,s6Step304EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step304EntryF_Incoming : rowsOwned s6Step304EntryFBefore [s6Step304EntryFRow,s6Step304EntryGRow,s6Step304EntryFvRow,s6Step304EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step304EntryFRow,s6Step304EntryGRow,s6Step304EntryFvRow,s6Step304EntryGvRow] 0 s6Step304EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step304EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step304EntryBank_outgoingOwned : rowsOwned s6Step304EntryGvAfter [s6Step304EntryFOut,s6Step304EntryGOut,s6Step304EntryFvOut,s6Step304EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step304EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step304EntryF_Outgoing : rowsOwned s6Step304EntryGvAfter [s6Step304EntryFOut,s6Step304EntryGOut,s6Step304EntryFvOut,s6Step304EntryGvOut] :=
  hmrRows_owned_drop s6Step304EntryGvAfter [s6Step304EntryFOut,s6Step304EntryGOut,s6Step304EntryFvOut,s6Step304EntryGvOut] 0 s6Step304EntryBank_outgoingOwned

private theorem s6Step304EntryF_distinct : (s6Step304EntryFRow.sign::s6Step304EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step304EntryF_owned : (s6Step304EntryFRow.sign::s6Step304EntryFRow.payload).toFinset⊆s6Step304EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step304EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step304EntryF_reserved : s6Step304EntryFBefore.reserve s6Step304EntryFFresh.toFinset=some s6Step304EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step304EntryFFresh,arenaWires]
  · norm_num [s6Step304EntryFBefore,s6Step304EntryFFresh,arenaWires]
  · ext q
    simp only [s6Step304EntryFAfter,s6Step304EntryFBefore,s6Step304EntryFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step304EntryF_checked : planRowResizeLog s6Step304EntryFBefore s6Step304EntryFRow 120 s6Step304EntryFFresh=
    some (s6Step304EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 865],795⟩,growRow 795 s6Step304EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step304EntryFBefore s6Step304EntryFAfter s6Step304EntryFRow 120 s6Step304EntryFFresh
    s6Step304EntryF_distinct s6Step304EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step304EntryF_reserved
  have rowEq : WindowRow.mk (s6Step304EntryFRow.payload++s6Step304EntryFFresh) s6Step304EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 865],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step304EntryFvAfter : Arena := s6Step304EntryFAfter

private def s6Step304EntryFvBefore : Arena := s6Step304EntryFAfter

private theorem s6Step304EntryFv_Incoming : rowsOwned s6Step304EntryFvBefore [s6Step304EntryFvRow,s6Step304EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step304EntryFRow,s6Step304EntryGRow,s6Step304EntryFvRow,s6Step304EntryGvRow] 2 s6Step304EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step304EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step304EntryFv_Outgoing : rowsOwned s6Step304EntryGvAfter [s6Step304EntryFvOut,s6Step304EntryGvOut] :=
  hmrRows_owned_drop s6Step304EntryGvAfter [s6Step304EntryFOut,s6Step304EntryGOut,s6Step304EntryFvOut,s6Step304EntryGvOut] 2 s6Step304EntryBank_outgoingOwned

private theorem s6Step304EntryFv_distinct : (s6Step304EntryFvRow.sign::s6Step304EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step304EntryFv_owned : (s6Step304EntryFvRow.sign::s6Step304EntryFvRow.payload).toFinset⊆s6Step304EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step304EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step304EntryFv_reserved : s6Step304EntryFvBefore.reserve s6Step304EntryFvFresh.toFinset=some s6Step304EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step304EntryFvFresh,arenaWires]
  · norm_num [s6Step304EntryFvBefore,s6Step304EntryFAfter,s6Step304EntryFvFresh,arenaWires]
  · simp only [s6Step304EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step304EntryFv_checked : planRowResizeLog s6Step304EntryFvBefore s6Step304EntryFvRow 167 s6Step304EntryFvFresh=
    some (s6Step304EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908],776⟩,growRow 776 s6Step304EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step304EntryFvBefore s6Step304EntryFvAfter s6Step304EntryFvRow 167 s6Step304EntryFvFresh
    s6Step304EntryFv_distinct s6Step304EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step304EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step304EntryFvRow.payload++s6Step304EntryFvFresh) s6Step304EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step304EntryGAfter : Arena := s6Step304EntryFAfter

private def s6Step304EntryGBefore : Arena := s6Step304EntryFAfter

private theorem s6Step304EntryG_Incoming : rowsOwned s6Step304EntryGBefore [s6Step304EntryGRow,s6Step304EntryFvRow,s6Step304EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step304EntryFRow,s6Step304EntryGRow,s6Step304EntryFvRow,s6Step304EntryGvRow] 1 s6Step304EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step304EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step304EntryG_Outgoing : rowsOwned s6Step304EntryGvAfter [s6Step304EntryGOut,s6Step304EntryFvOut,s6Step304EntryGvOut] :=
  hmrRows_owned_drop s6Step304EntryGvAfter [s6Step304EntryFOut,s6Step304EntryGOut,s6Step304EntryFvOut,s6Step304EntryGvOut] 1 s6Step304EntryBank_outgoingOwned

private theorem s6Step304EntryG_distinct : (s6Step304EntryGRow.sign::s6Step304EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step304EntryG_owned : (s6Step304EntryGRow.sign::s6Step304EntryGRow.payload).toFinset⊆s6Step304EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step304EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step304EntryG_reserved : s6Step304EntryGBefore.reserve s6Step304EntryGFresh.toFinset=some s6Step304EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step304EntryGFresh,arenaWires]
  · norm_num [s6Step304EntryGBefore,s6Step304EntryFAfter,s6Step304EntryGFresh,arenaWires]
  · simp only [s6Step304EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step304EntryG_checked : planRowResizeLog s6Step304EntryGBefore s6Step304EntryGRow 120 s6Step304EntryGFresh=
    some (s6Step304EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 803, 857],777⟩,growRow 777 s6Step304EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step304EntryGBefore s6Step304EntryGAfter s6Step304EntryGRow 120 s6Step304EntryGFresh
    s6Step304EntryG_distinct s6Step304EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step304EntryG_reserved
  have rowEq : WindowRow.mk (s6Step304EntryGRow.payload++s6Step304EntryGFresh) s6Step304EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 803, 857],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step304EntryGvBefore : Arena := s6Step304EntryFAfter

private theorem s6Step304EntryGv_Incoming : rowsOwned s6Step304EntryGvBefore [s6Step304EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step304EntryFRow,s6Step304EntryGRow,s6Step304EntryFvRow,s6Step304EntryGvRow] 3 s6Step304EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step304EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step304EntryGv_Outgoing : rowsOwned s6Step304EntryGvAfter [s6Step304EntryGvOut] :=
  hmrRows_owned_drop s6Step304EntryGvAfter [s6Step304EntryFOut,s6Step304EntryGOut,s6Step304EntryFvOut,s6Step304EntryGvOut] 3 s6Step304EntryBank_outgoingOwned

private theorem s6Step304EntryGv_distinct : (s6Step304EntryGvRow.sign::s6Step304EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step304EntryGv_owned : (s6Step304EntryGvRow.sign::s6Step304EntryGvRow.payload).toFinset⊆s6Step304EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step304EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step304EntryGv_reserved : s6Step304EntryGvBefore.reserve s6Step304EntryGvFresh.toFinset=some s6Step304EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step304EntryGvFresh,arenaWires]
  · norm_num [s6Step304EntryGvBefore,s6Step304EntryFAfter,s6Step304EntryGvFresh,arenaWires]
  · simp only [s6Step304EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step304EntryGv_checked : planRowResizeLog s6Step304EntryGvBefore s6Step304EntryGvRow 167 s6Step304EntryGvFresh=
    some (s6Step304EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898],775⟩,growRow 775 s6Step304EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step304EntryGvBefore s6Step304EntryGvAfter s6Step304EntryGvRow 167 s6Step304EntryGvFresh
    s6Step304EntryGv_distinct s6Step304EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step304EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step304EntryGvRow.payload++s6Step304EntryGvFresh) s6Step304EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step304EntryBank_rows : planWindowRowsLog s6Step304EntryFBefore [(s6Step304EntryFRow,120),(s6Step304EntryGRow,120),(s6Step304EntryFvRow,167),(s6Step304EntryGvRow,167)] [s6Step304EntryFFresh,s6Step304EntryGFresh,s6Step304EntryFvFresh,s6Step304EntryGvFresh]=
    some (s6Step304EntryGvAfter,[s6Step304EntryFOut,s6Step304EntryGOut,s6Step304EntryFvOut,s6Step304EntryGvOut],(growRow 795 s6Step304EntryFFresh ++ (growRow 777 s6Step304EntryGFresh ++ (growRow 776 s6Step304EntryFvFresh ++ (growRow 775 s6Step304EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step304EntryGvAfter [] []=some (s6Step304EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step304EntryGvBefore s6Step304EntryGvAfter s6Step304EntryGvAfter
    s6Step304EntryGvRow s6Step304EntryGvOut 167 s6Step304EntryGvFresh [] [] []
    (growRow 775 s6Step304EntryGvFresh) ([]) s6Step304EntryGv_Incoming s6Step304EntryGv_checked h4 s6Step304EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step304EntryFvBefore s6Step304EntryFvAfter s6Step304EntryGvAfter
    s6Step304EntryFvRow s6Step304EntryFvOut 167 s6Step304EntryFvFresh [(s6Step304EntryGvRow,167)] [s6Step304EntryGvFresh] [s6Step304EntryGvOut]
    (growRow 776 s6Step304EntryFvFresh) ((growRow 775 s6Step304EntryGvFresh ++ [])) s6Step304EntryFv_Incoming s6Step304EntryFv_checked h3 s6Step304EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step304EntryGBefore s6Step304EntryGAfter s6Step304EntryGvAfter
    s6Step304EntryGRow s6Step304EntryGOut 120 s6Step304EntryGFresh [(s6Step304EntryFvRow,167),(s6Step304EntryGvRow,167)] [s6Step304EntryFvFresh,s6Step304EntryGvFresh] [s6Step304EntryFvOut,s6Step304EntryGvOut]
    (growRow 777 s6Step304EntryGFresh) ((growRow 776 s6Step304EntryFvFresh ++ (growRow 775 s6Step304EntryGvFresh ++ []))) s6Step304EntryG_Incoming s6Step304EntryG_checked h2 s6Step304EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step304EntryFBefore s6Step304EntryFAfter s6Step304EntryGvAfter
    s6Step304EntryFRow s6Step304EntryFOut 120 s6Step304EntryFFresh [(s6Step304EntryGRow,120),(s6Step304EntryFvRow,167),(s6Step304EntryGvRow,167)] [s6Step304EntryGFresh,s6Step304EntryFvFresh,s6Step304EntryGvFresh] [s6Step304EntryGOut,s6Step304EntryFvOut,s6Step304EntryGvOut]
    (growRow 795 s6Step304EntryFFresh) ((growRow 777 s6Step304EntryGFresh ++ (growRow 776 s6Step304EntryFvFresh ++ (growRow 775 s6Step304EntryGvFresh ++ [])))) s6Step304EntryF_Incoming s6Step304EntryF_checked h1 s6Step304EntryF_Outgoing
  exact h0

private theorem s6Step304EntryBank_checked : compileHmrBankResizeLog .entry s6Step304EntryFBefore ⟨s6Step304EntryFRow,s6Step304EntryGRow,s6Step304EntryFvRow,s6Step304EntryGvRow⟩ ⟨120,120,167,167⟩ [s6Step304EntryFFresh,s6Step304EntryGFresh,s6Step304EntryFvFresh,s6Step304EntryGvFresh]=
    some (s6Step304EntryGvAfter,⟨s6Step304EntryFOut,s6Step304EntryGOut,s6Step304EntryFvOut,s6Step304EntryGvOut⟩,(growRow 795 s6Step304EntryFFresh ++ (growRow 777 s6Step304EntryGFresh ++ (growRow 776 s6Step304EntryFvFresh ++ (growRow 775 s6Step304EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step304EntryBank_rows]
  rfl

private def s6Step304ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step304ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step304ExitFBefore : Arena := s6Step304ExitGAfter

private def s6Step304ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 865, 793],795⟩

private def s6Step304ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886],776⟩

private def s6Step304ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 803, 857, 823],777⟩

private def s6Step304ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 869],775⟩

private theorem s6Step304ExitBank_incomingDistinct : ([s6Step304ExitGRow,s6Step304ExitFRow,s6Step304ExitFvRow,s6Step304ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step304ExitF_Incoming : rowsOwned s6Step304ExitFBefore [s6Step304ExitFRow,s6Step304ExitFvRow,s6Step304ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step304ExitGRow,s6Step304ExitFRow,s6Step304ExitFvRow,s6Step304ExitGvRow] 1 s6Step304ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step304ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step304ExitBank_outgoingOwned : rowsOwned s6Step304ExitGvAfter [s6Step304ExitGOut,s6Step304ExitFOut,s6Step304ExitFvOut,s6Step304ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step304ExitGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step304ExitF_Outgoing : rowsOwned s6Step304ExitGvAfter [s6Step304ExitFOut,s6Step304ExitFvOut,s6Step304ExitGvOut] :=
  hmrRows_owned_drop s6Step304ExitGvAfter [s6Step304ExitGOut,s6Step304ExitFOut,s6Step304ExitFvOut,s6Step304ExitGvOut] 1 s6Step304ExitBank_outgoingOwned

private theorem s6Step304ExitF_distinct : (s6Step304ExitFRow.sign::s6Step304ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step304ExitF_owned : (s6Step304ExitFRow.sign::s6Step304ExitFRow.payload).toFinset⊆s6Step304ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step304ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step304ExitF_retired : s6Step304ExitFBefore.retireSet s6Step304ExitFExtra.toFinset=s6Step304ExitFAfter := by
  unfold Arena.retireSet s6Step304ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step304ExitFBefore,s6Step304ExitGAfter,s6Step304ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step304ExitF_checked : planRowResizeLog s6Step304ExitFBefore s6Step304ExitFRow 119 []=
    some (s6Step304ExitFAfter,s6Step304ExitFOut,shrinkRow 795 s6Step304ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step304ExitFBefore s6Step304ExitFRow 119 s6Step304ExitF_distinct s6Step304ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step304ExitFRow.payload.take 119) s6Step304ExitFRow.sign=s6Step304ExitFOut := by decide +kernel
  have hi : s6Step304ExitFRow.payload.drop 119=s6Step304ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step304ExitF_retired] at result
  exact result

private def s6Step304ExitFvAfter : Arena := s6Step304ExitFAfter

private def s6Step304ExitFvBefore : Arena := s6Step304ExitFAfter

private theorem s6Step304ExitFv_Incoming : rowsOwned s6Step304ExitFvBefore [s6Step304ExitFvRow,s6Step304ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step304ExitGRow,s6Step304ExitFRow,s6Step304ExitFvRow,s6Step304ExitGvRow] 2 s6Step304ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step304ExitFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step304ExitFv_Outgoing : rowsOwned s6Step304ExitGvAfter [s6Step304ExitFvOut,s6Step304ExitGvOut] :=
  hmrRows_owned_drop s6Step304ExitGvAfter [s6Step304ExitGOut,s6Step304ExitFOut,s6Step304ExitFvOut,s6Step304ExitGvOut] 2 s6Step304ExitBank_outgoingOwned

private theorem s6Step304ExitFv_distinct : (s6Step304ExitFvRow.sign::s6Step304ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step304ExitFv_owned : (s6Step304ExitFvRow.sign::s6Step304ExitFvRow.payload).toFinset⊆s6Step304ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step304ExitFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step304ExitFv_reserved : s6Step304ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step304ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step304ExitFv_checked : planRowResizeLog s6Step304ExitFvBefore s6Step304ExitFvRow 168 []=
    some (s6Step304ExitFvAfter,s6Step304ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step304ExitFvBefore s6Step304ExitFvAfter s6Step304ExitFvRow 168 []
    s6Step304ExitFv_distinct s6Step304ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step304ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step304ExitFvRow.payload++[]) s6Step304ExitFvRow.sign=s6Step304ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step304ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step304ExitG_Incoming : rowsOwned s6Step304ExitGBefore [s6Step304ExitGRow,s6Step304ExitFRow,s6Step304ExitFvRow,s6Step304ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step304ExitGRow,s6Step304ExitFRow,s6Step304ExitFvRow,s6Step304ExitGvRow] 0 s6Step304ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step304ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step304ExitG_Outgoing : rowsOwned s6Step304ExitGvAfter [s6Step304ExitGOut,s6Step304ExitFOut,s6Step304ExitFvOut,s6Step304ExitGvOut] :=
  hmrRows_owned_drop s6Step304ExitGvAfter [s6Step304ExitGOut,s6Step304ExitFOut,s6Step304ExitFvOut,s6Step304ExitGvOut] 0 s6Step304ExitBank_outgoingOwned

private theorem s6Step304ExitG_distinct : (s6Step304ExitGRow.sign::s6Step304ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step304ExitG_owned : (s6Step304ExitGRow.sign::s6Step304ExitGRow.payload).toFinset⊆s6Step304ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step304ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step304ExitG_retired : s6Step304ExitGBefore.retireSet s6Step304ExitGExtra.toFinset=s6Step304ExitGAfter := by
  unfold Arena.retireSet s6Step304ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step304ExitGBefore,s6Step304ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step304ExitG_checked : planRowResizeLog s6Step304ExitGBefore s6Step304ExitGRow 119 []=
    some (s6Step304ExitGAfter,s6Step304ExitGOut,shrinkRow 777 s6Step304ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step304ExitGBefore s6Step304ExitGRow 119 s6Step304ExitG_distinct s6Step304ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step304ExitGRow.payload.take 119) s6Step304ExitGRow.sign=s6Step304ExitGOut := by decide +kernel
  have hi : s6Step304ExitGRow.payload.drop 119=s6Step304ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step304ExitG_retired] at result
  exact result

private def s6Step304ExitGvBefore : Arena := s6Step304ExitFAfter

private theorem s6Step304ExitGv_Incoming : rowsOwned s6Step304ExitGvBefore [s6Step304ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step304ExitGRow,s6Step304ExitFRow,s6Step304ExitFvRow,s6Step304ExitGvRow] 3 s6Step304ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step304ExitGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step304ExitGv_Outgoing : rowsOwned s6Step304ExitGvAfter [s6Step304ExitGvOut] :=
  hmrRows_owned_drop s6Step304ExitGvAfter [s6Step304ExitGOut,s6Step304ExitFOut,s6Step304ExitFvOut,s6Step304ExitGvOut] 3 s6Step304ExitBank_outgoingOwned

private theorem s6Step304ExitGv_distinct : (s6Step304ExitGvRow.sign::s6Step304ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step304ExitGv_owned : (s6Step304ExitGvRow.sign::s6Step304ExitGvRow.payload).toFinset⊆s6Step304ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step304ExitGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step304ExitGv_retired : s6Step304ExitGvBefore.retireSet s6Step304ExitGvExtra.toFinset=s6Step304ExitGvAfter := by
  unfold Arena.retireSet s6Step304ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step304ExitGvBefore,s6Step304ExitFAfter,s6Step304ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step304ExitGv_checked : planRowResizeLog s6Step304ExitGvBefore s6Step304ExitGvRow 167 []=
    some (s6Step304ExitGvAfter,s6Step304ExitGvOut,shrinkRow 775 s6Step304ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step304ExitGvBefore s6Step304ExitGvRow 167 s6Step304ExitGv_distinct s6Step304ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step304ExitGvRow.payload.take 167) s6Step304ExitGvRow.sign=s6Step304ExitGvOut := by decide +kernel
  have hi : s6Step304ExitGvRow.payload.drop 167=s6Step304ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step304ExitGv_retired] at result
  exact result

private theorem s6Step304ExitBank_rows : planWindowRowsLog s6Step304ExitGBefore [(s6Step304ExitGRow,119),(s6Step304ExitFRow,119),(s6Step304ExitFvRow,168),(s6Step304ExitGvRow,167)] [[],[],[],[]]=
    some (s6Step304ExitGvAfter,[s6Step304ExitGOut,s6Step304ExitFOut,s6Step304ExitFvOut,s6Step304ExitGvOut],(shrinkRow 777 s6Step304ExitGExtra ++ (shrinkRow 795 s6Step304ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step304ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step304ExitGvAfter [] []=some (s6Step304ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step304ExitGvBefore s6Step304ExitGvAfter s6Step304ExitGvAfter
    s6Step304ExitGvRow s6Step304ExitGvOut 167 [] [] [] []
    (shrinkRow 775 s6Step304ExitGvExtra) ([]) s6Step304ExitGv_Incoming s6Step304ExitGv_checked h4 s6Step304ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step304ExitFvBefore s6Step304ExitFvAfter s6Step304ExitGvAfter
    s6Step304ExitFvRow s6Step304ExitFvOut 168 [] [(s6Step304ExitGvRow,167)] [[]] [s6Step304ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step304ExitGvExtra ++ [])) s6Step304ExitFv_Incoming s6Step304ExitFv_checked h3 s6Step304ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step304ExitFBefore s6Step304ExitFAfter s6Step304ExitGvAfter
    s6Step304ExitFRow s6Step304ExitFOut 119 [] [(s6Step304ExitFvRow,168),(s6Step304ExitGvRow,167)] [[],[]] [s6Step304ExitFvOut,s6Step304ExitGvOut]
    (shrinkRow 795 s6Step304ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step304ExitGvExtra ++ []))) s6Step304ExitF_Incoming s6Step304ExitF_checked h2 s6Step304ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step304ExitGBefore s6Step304ExitGAfter s6Step304ExitGvAfter
    s6Step304ExitGRow s6Step304ExitGOut 119 [] [(s6Step304ExitFRow,119),(s6Step304ExitFvRow,168),(s6Step304ExitGvRow,167)] [[],[],[]] [s6Step304ExitFOut,s6Step304ExitFvOut,s6Step304ExitGvOut]
    (shrinkRow 777 s6Step304ExitGExtra) ((shrinkRow 795 s6Step304ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step304ExitGvExtra ++ [])))) s6Step304ExitG_Incoming s6Step304ExitG_checked h1 s6Step304ExitG_Outgoing
  exact h0

private theorem s6Step304ExitBank_checked : compileHmrBankResizeLog .exit s6Step304ExitGBefore ⟨s6Step304ExitFRow,s6Step304ExitGRow,s6Step304ExitFvRow,s6Step304ExitGvRow⟩ ⟨119,119,168,167⟩ [[],[],[],[]]=
    some (s6Step304ExitGvAfter,⟨s6Step304ExitFOut,s6Step304ExitGOut,s6Step304ExitFvOut,s6Step304ExitGvOut⟩,(shrinkRow 777 s6Step304ExitGExtra ++ (shrinkRow 795 s6Step304ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step304ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step304ExitBank_rows]
  rfl

private theorem s6Step304Add0_apart : Disjoint s6Step304Add0Arena.live s6Step304Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step304Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step304Add0_card : s6Step304Add0Arena.live.card=903 := by
  decide +kernel

private theorem s6Step304Add0_borrowed : s6Step304Add0Arena.checkBorrow (hmrHybridCount s6Step304Add0Arena s6Step304Add0B.length) s6Step304Add0Work=some s6Step304Add0During := by
  have len : s6Step304Add0Work.length=hmrHybridCount s6Step304Add0Arena s6Step304Add0B.length := by
    rw [hmrHybridCount,s6Step304Add0_card]
    decide +kernel
  have nd : s6Step304Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step304Add0Arena s6Step304Add0During s6Step304Add0Work.toFinset s6Step304Add0_bounded s6Step304Add0_apart rfl

private theorem s6Step304Add0_distinct : (830::888::805::(s6Step304Add0A++s6Step304Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step304Add0_owned : (830::888::805::(s6Step304Add0A++s6Step304Add0B)).toFinset⊆s6Step304Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step304Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step304Add0_checked : compileHmrHybridCinLog s6Step304Add0Arena 888 830 805 s6Step304Add0A s6Step304Add0B s6Step304Add0Work=some s6Step304Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step304Add0Arena s6Step304Add0During 888 830 805 s6Step304Add0A s6Step304Add0B s6Step304Add0Work
    (by decide +kernel) (by decide +kernel) s6Step304Add0_distinct
    (fun q hq => s6Step304Add0_owned (List.mem_toFinset.mpr hq)) s6Step304Add0_borrowed

private theorem s6Step304Add1_apart : Disjoint s6Step304Add1Arena.live s6Step304Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step304Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step304Add1_card : s6Step304Add1Arena.live.card=903 := by
  decide +kernel

private theorem s6Step304Add1_borrowed : s6Step304Add1Arena.checkBorrow (hmrHybridCount s6Step304Add1Arena s6Step304Add1B.length) s6Step304Add1Work=some s6Step304Add1During := by
  have len : s6Step304Add1Work.length=hmrHybridCount s6Step304Add1Arena s6Step304Add1B.length := by
    rw [hmrHybridCount,s6Step304Add1_card]
    decide +kernel
  have nd : s6Step304Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step304Add1Arena s6Step304Add1During s6Step304Add1Work.toFinset s6Step304Add1_bounded s6Step304Add1_apart rfl

private theorem s6Step304Add1_distinct : (830::888::805::(s6Step304Add1A++s6Step304Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step304Add1_owned : (830::888::805::(s6Step304Add1A++s6Step304Add1B)).toFinset⊆s6Step304Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step304Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step304Add1_checked : compileHmrHybridCinLog s6Step304Add1Arena 888 830 805 s6Step304Add1A s6Step304Add1B s6Step304Add1Work=some s6Step304Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step304Add1Arena s6Step304Add1During 888 830 805 s6Step304Add1A s6Step304Add1B s6Step304Add1Work
    (by decide +kernel) (by decide +kernel) s6Step304Add1_distinct
    (fun q hq => s6Step304Add1_owned (List.mem_toFinset.mpr hq)) s6Step304Add1_borrowed

private theorem s6Step304F4_apart : Disjoint (s6Step304Add0A++s6Step304Add0B).toFinset (s6Step304Add1A++s6Step304Add1B).toFinset := by
  have nd : ((s6Step304Add0A++s6Step304Add0B)++(s6Step304Add1A++s6Step304Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step304F4_carry : s6Step304F4FlagArena.checkBorrow 1 [805]=some s6Step304Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step304F4FlagArena,s6Step304HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step304F4FlagArena,s6Step304HeadFvAfter,s6Step304Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step304F4_distinct : (828::888::830::805::((s6Step304Add0A++s6Step304Add1A)++(s6Step304Add0B++s6Step304Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step304F4_flag : s6Step304HeadFvAfter.checkBorrow 1 [830]=some s6Step304F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step304HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step304F4_owned : (828::888::((s6Step304Add0A++s6Step304Add1A)++(s6Step304Add0B++s6Step304Add1B))).toFinset⊆s6Step304HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step304HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step304F4_checked : compileHmrHybridF4Log s6Step304HeadFvAfter 828 888 s6Step304Add0A s6Step304Add0B s6Step304Add1A s6Step304Add1B [830] [805] s6Step304Add0Work s6Step304Add1Work=some s6Step304F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step304HeadFvAfter s6Step304F4FlagArena s6Step304Add0Arena s6Step304Add0During s6Step304Add1During 828 888
    s6Step304Add0A s6Step304Add0B s6Step304Add1A s6Step304Add1B [830] [805] s6Step304Add0Work s6Step304Add1Work
    (fun q hq => s6Step304F4_owned (List.mem_toFinset.mpr hq)) s6Step304F4_flag s6Step304F4_carry
    s6Step304F4_distinct s6Step304F4_apart s6Step304Add0_checked s6Step304Add1_checked

private theorem s6Step304Front_branch : s6Step304FrontSigmaArena.checkBorrow 1 [888]=some s6Step304HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step304FrontSigmaArena,s6Step304EntryGvAfter,s6Step304EntryFAfter,arenaWires]
  · ext q
    simp only [s6Step304FrontSigmaArena,s6Step304EntryGvAfter,s6Step304EntryFAfter,s6Step304HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step304Front_entry : HmrFrontEntryValid s6Step304EntryFBefore s6Step304FrontBank 120 167 ⟨119,119,168,167⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step304FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step304EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step304EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step304FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step304Front_sigma : s6Step304EntryGvAfter.checkBorrow 1 [828]=some s6Step304FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step304EntryGvAfter,s6Step304EntryFAfter,arenaWires]
  · rfl

private def s6Step304HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step304HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step304HeadFBefore : Arena := s6Step304HeadGAfter

private def s6Step304HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 865],795⟩

private def s6Step304HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908],776⟩

private def s6Step304HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 803, 857],777⟩

private def s6Step304HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898],775⟩

private theorem s6Step304HeadBank_incomingDistinct : ([s6Step304HeadGRow,s6Step304HeadFRow,s6Step304HeadGvRow,s6Step304HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step304HeadF_Incoming : rowsOwned s6Step304HeadFBefore [s6Step304HeadFRow,s6Step304HeadGvRow,s6Step304HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step304HeadGRow,s6Step304HeadFRow,s6Step304HeadGvRow,s6Step304HeadFvRow] 1 s6Step304HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step304HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step304HeadBank_outgoingOwned : rowsOwned s6Step304HeadFvAfter [s6Step304HeadGOut,s6Step304HeadFOut,s6Step304HeadGvOut,s6Step304HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step304HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step304HeadF_Outgoing : rowsOwned s6Step304HeadFvAfter [s6Step304HeadFOut,s6Step304HeadGvOut,s6Step304HeadFvOut] :=
  hmrRows_owned_drop s6Step304HeadFvAfter [s6Step304HeadGOut,s6Step304HeadFOut,s6Step304HeadGvOut,s6Step304HeadFvOut] 1 s6Step304HeadBank_outgoingOwned

private theorem s6Step304HeadF_distinct : (s6Step304HeadFRow.sign::s6Step304HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step304HeadF_owned : (s6Step304HeadFRow.sign::s6Step304HeadFRow.payload).toFinset⊆s6Step304HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step304HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step304HeadF_reserved : s6Step304HeadFBefore.reserve s6Step304HeadFFresh.toFinset=some s6Step304HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step304HeadFFresh,arenaWires]
  · norm_num [s6Step304HeadFBefore,s6Step304HeadGAfter,s6Step304HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step304HeadFAfter,s6Step304HeadFBefore,s6Step304HeadGAfter,s6Step304HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step304HeadF_checked : planRowResizeLog s6Step304HeadFBefore s6Step304HeadFRow 121 s6Step304HeadFFresh=
    some (s6Step304HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 865, 793],795⟩,growRow 795 s6Step304HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step304HeadFBefore s6Step304HeadFAfter s6Step304HeadFRow 121 s6Step304HeadFFresh
    s6Step304HeadF_distinct s6Step304HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step304HeadF_reserved
  have rowEq : WindowRow.mk (s6Step304HeadFRow.payload++s6Step304HeadFFresh) s6Step304HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 865, 793],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step304HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step304HeadFvBefore : Arena := s6Step304HeadGvAfter

private theorem s6Step304HeadFv_Incoming : rowsOwned s6Step304HeadFvBefore [s6Step304HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step304HeadGRow,s6Step304HeadFRow,s6Step304HeadGvRow,s6Step304HeadFvRow] 3 s6Step304HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step304HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step304HeadFv_Outgoing : rowsOwned s6Step304HeadFvAfter [s6Step304HeadFvOut] :=
  hmrRows_owned_drop s6Step304HeadFvAfter [s6Step304HeadGOut,s6Step304HeadFOut,s6Step304HeadGvOut,s6Step304HeadFvOut] 3 s6Step304HeadBank_outgoingOwned

private theorem s6Step304HeadFv_distinct : (s6Step304HeadFvRow.sign::s6Step304HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step304HeadFv_owned : (s6Step304HeadFvRow.sign::s6Step304HeadFvRow.payload).toFinset⊆s6Step304HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step304HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step304HeadFv_reserved : s6Step304HeadFvBefore.reserve s6Step304HeadFvFresh.toFinset=some s6Step304HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step304HeadFvFresh,arenaWires]
  · norm_num [s6Step304HeadFvBefore,s6Step304HeadGvAfter,s6Step304HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step304HeadFvAfter,s6Step304HeadFvBefore,s6Step304HeadGvAfter,s6Step304HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step304HeadFv_checked : planRowResizeLog s6Step304HeadFvBefore s6Step304HeadFvRow 168 s6Step304HeadFvFresh=
    some (s6Step304HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886],776⟩,growRow 776 s6Step304HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step304HeadFvBefore s6Step304HeadFvAfter s6Step304HeadFvRow 168 s6Step304HeadFvFresh
    s6Step304HeadFv_distinct s6Step304HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step304HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step304HeadFvRow.payload++s6Step304HeadFvFresh) s6Step304HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step304HeadG_Incoming : rowsOwned s6Step304HeadGBefore [s6Step304HeadGRow,s6Step304HeadFRow,s6Step304HeadGvRow,s6Step304HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step304HeadGRow,s6Step304HeadFRow,s6Step304HeadGvRow,s6Step304HeadFvRow] 0 s6Step304HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step304HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step304HeadG_Outgoing : rowsOwned s6Step304HeadFvAfter [s6Step304HeadGOut,s6Step304HeadFOut,s6Step304HeadGvOut,s6Step304HeadFvOut] :=
  hmrRows_owned_drop s6Step304HeadFvAfter [s6Step304HeadGOut,s6Step304HeadFOut,s6Step304HeadGvOut,s6Step304HeadFvOut] 0 s6Step304HeadBank_outgoingOwned

private theorem s6Step304HeadG_distinct : (s6Step304HeadGRow.sign::s6Step304HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step304HeadG_owned : (s6Step304HeadGRow.sign::s6Step304HeadGRow.payload).toFinset⊆s6Step304HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step304HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step304HeadG_reserved : s6Step304HeadGBefore.reserve s6Step304HeadGFresh.toFinset=some s6Step304HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step304HeadGFresh,arenaWires]
  · norm_num [s6Step304HeadGBefore,s6Step304HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step304HeadGAfter,s6Step304HeadGBefore,s6Step304HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step304HeadG_checked : planRowResizeLog s6Step304HeadGBefore s6Step304HeadGRow 121 s6Step304HeadGFresh=
    some (s6Step304HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 803, 857, 823],777⟩,growRow 777 s6Step304HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step304HeadGBefore s6Step304HeadGAfter s6Step304HeadGRow 121 s6Step304HeadGFresh
    s6Step304HeadG_distinct s6Step304HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step304HeadG_reserved
  have rowEq : WindowRow.mk (s6Step304HeadGRow.payload++s6Step304HeadGFresh) s6Step304HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 803, 857, 823],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step304HeadGvBefore : Arena := s6Step304HeadFAfter

private theorem s6Step304HeadGv_Incoming : rowsOwned s6Step304HeadGvBefore [s6Step304HeadGvRow,s6Step304HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step304HeadGRow,s6Step304HeadFRow,s6Step304HeadGvRow,s6Step304HeadFvRow] 2 s6Step304HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step304HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step304HeadGv_Outgoing : rowsOwned s6Step304HeadFvAfter [s6Step304HeadGvOut,s6Step304HeadFvOut] :=
  hmrRows_owned_drop s6Step304HeadFvAfter [s6Step304HeadGOut,s6Step304HeadFOut,s6Step304HeadGvOut,s6Step304HeadFvOut] 2 s6Step304HeadBank_outgoingOwned

private theorem s6Step304HeadGv_distinct : (s6Step304HeadGvRow.sign::s6Step304HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step304HeadGv_owned : (s6Step304HeadGvRow.sign::s6Step304HeadGvRow.payload).toFinset⊆s6Step304HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step304HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step304HeadGv_reserved : s6Step304HeadGvBefore.reserve s6Step304HeadGvFresh.toFinset=some s6Step304HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step304HeadGvFresh,arenaWires]
  · norm_num [s6Step304HeadGvBefore,s6Step304HeadFAfter,s6Step304HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step304HeadGvAfter,s6Step304HeadGvBefore,s6Step304HeadFAfter,s6Step304HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step304HeadGv_checked : planRowResizeLog s6Step304HeadGvBefore s6Step304HeadGvRow 168 s6Step304HeadGvFresh=
    some (s6Step304HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 869],775⟩,growRow 775 s6Step304HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step304HeadGvBefore s6Step304HeadGvAfter s6Step304HeadGvRow 168 s6Step304HeadGvFresh
    s6Step304HeadGv_distinct s6Step304HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step304HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step304HeadGvRow.payload++s6Step304HeadGvFresh) s6Step304HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 869],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step304HeadBank_rows : planWindowRowsLog s6Step304HeadGBefore [(s6Step304HeadGRow,121),(s6Step304HeadFRow,121),(s6Step304HeadGvRow,168),(s6Step304HeadFvRow,168)] [s6Step304HeadGFresh,s6Step304HeadFFresh,s6Step304HeadGvFresh,s6Step304HeadFvFresh]=
    some (s6Step304HeadFvAfter,[s6Step304HeadGOut,s6Step304HeadFOut,s6Step304HeadGvOut,s6Step304HeadFvOut],(growRow 777 s6Step304HeadGFresh ++ (growRow 795 s6Step304HeadFFresh ++ (growRow 775 s6Step304HeadGvFresh ++ (growRow 776 s6Step304HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step304HeadFvAfter [] []=some (s6Step304HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step304HeadFvBefore s6Step304HeadFvAfter s6Step304HeadFvAfter
    s6Step304HeadFvRow s6Step304HeadFvOut 168 s6Step304HeadFvFresh [] [] []
    (growRow 776 s6Step304HeadFvFresh) ([]) s6Step304HeadFv_Incoming s6Step304HeadFv_checked h4 s6Step304HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step304HeadGvBefore s6Step304HeadGvAfter s6Step304HeadFvAfter
    s6Step304HeadGvRow s6Step304HeadGvOut 168 s6Step304HeadGvFresh [(s6Step304HeadFvRow,168)] [s6Step304HeadFvFresh] [s6Step304HeadFvOut]
    (growRow 775 s6Step304HeadGvFresh) ((growRow 776 s6Step304HeadFvFresh ++ [])) s6Step304HeadGv_Incoming s6Step304HeadGv_checked h3 s6Step304HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step304HeadFBefore s6Step304HeadFAfter s6Step304HeadFvAfter
    s6Step304HeadFRow s6Step304HeadFOut 121 s6Step304HeadFFresh [(s6Step304HeadGvRow,168),(s6Step304HeadFvRow,168)] [s6Step304HeadGvFresh,s6Step304HeadFvFresh] [s6Step304HeadGvOut,s6Step304HeadFvOut]
    (growRow 795 s6Step304HeadFFresh) ((growRow 775 s6Step304HeadGvFresh ++ (growRow 776 s6Step304HeadFvFresh ++ []))) s6Step304HeadF_Incoming s6Step304HeadF_checked h2 s6Step304HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step304HeadGBefore s6Step304HeadGAfter s6Step304HeadFvAfter
    s6Step304HeadGRow s6Step304HeadGOut 121 s6Step304HeadGFresh [(s6Step304HeadFRow,121),(s6Step304HeadGvRow,168),(s6Step304HeadFvRow,168)] [s6Step304HeadFFresh,s6Step304HeadGvFresh,s6Step304HeadFvFresh] [s6Step304HeadFOut,s6Step304HeadGvOut,s6Step304HeadFvOut]
    (growRow 777 s6Step304HeadGFresh) ((growRow 795 s6Step304HeadFFresh ++ (growRow 775 s6Step304HeadGvFresh ++ (growRow 776 s6Step304HeadFvFresh ++ [])))) s6Step304HeadG_Incoming s6Step304HeadG_checked h1 s6Step304HeadG_Outgoing
  exact h0

private theorem s6Step304HeadBank_checked : compileHmrBankResizeLog .headroom s6Step304HeadGBefore ⟨s6Step304HeadFRow,s6Step304HeadGRow,s6Step304HeadFvRow,s6Step304HeadGvRow⟩ ⟨121,121,168,168⟩ [s6Step304HeadGFresh,s6Step304HeadFFresh,s6Step304HeadGvFresh,s6Step304HeadFvFresh]=
    some (s6Step304HeadFvAfter,⟨s6Step304HeadFOut,s6Step304HeadGOut,s6Step304HeadFvOut,s6Step304HeadGvOut⟩,(growRow 777 s6Step304HeadGFresh ++ (growRow 795 s6Step304HeadFFresh ++ (growRow 775 s6Step304HeadGvFresh ++ (growRow 776 s6Step304HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step304HeadBank_rows]
  rfl

private theorem s6Step304Front_checked : compileHmrSourceFrontLog s6Step304EntryFBefore s6Step304FrontBank 120 167 ⟨119,119,168,167⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step304FrontLog=some s6Step304FrontPlan := by
  have pairEq : s6Step304FrontPair=⟨s6Step304HeadFRow,s6Step304HeadGRow,s6Step304HeadFvRow,s6Step304HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step304FrontHead=⟨s6Step304ExitFRow,s6Step304ExitGRow,s6Step304ExitFvRow,s6Step304ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step304Add0A=s6Step304FrontHead.f.wires := by decide +kernel
  have gEq : s6Step304Add0B=s6Step304FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step304Add1A=s6Step304FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step304Add1B=s6Step304FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step304EntryFBefore s6Step304FrontBank 120 167 ⟨119,119,168,167⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step304FrontLog s6Step304FrontPlan
  · exact s6Step304Front_entry
  · exact s6Step304EntryBank_checked
  · exact s6Step304Front_sigma
  · rfl
  · exact s6Step304Front_branch
  · rfl
  · simpa only [s6Step304FrontPlan,pairEq] using s6Step304HeadBank_checked
  · simpa only [s6Step304FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step304F4_checked
  · exact s6Step304Counter_checked
  · rfl
  · simpa only [s6Step304FrontPlan,headEq] using s6Step304ExitBank_checked

private theorem s6Step304Complete_explicit_checked : compileHmrEarlyStepLog s6Step304EntryFBefore s6Step304FrontBank 120 167 ⟨119,119,168,167⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] 55 s6Step304CompleteLog=some s6Step304CompletePlan := by
  let Q := s6Step304EarlyControlPlan
  have hq := s6Step304EarlyControl_plan_checked
  have fv1 : s6Step304CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step304CompleteOut.fv.payload[2]?.getD s6Step304CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step304CompleteOut.fv.payload[3]?.getD s6Step304CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step304CompleteOut.fv.payload[4]?.getD s6Step304CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step304EntryFBefore s6Step304EarlyControlArena s6Step304FrontBank 120 167 ⟨119,119,168,167⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] 55 s6Step304CompleteLog s6Step304FrontPlan Q
    s6Step304Front_checked s6Step304Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step304Complete_owned s6Step304Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step304EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] 769 828 s6Step304CompleteOut.fv.second (s6Step304CompleteOut.fv.payload[2]?.getD s6Step304CompleteOut.fv.sign) (s6Step304CompleteOut.fv.payload[3]?.getD s6Step304CompleteOut.fv.sign) (s6Step304CompleteOut.fv.payload[4]?.getD s6Step304CompleteOut.fv.sign) 888 55 s6Step304EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep304Arena : Arena := s6Step304EntryFBefore
def s6PrivateStep304Bank : WindowBank := s6Step304FrontBank
def s6PrivateStep304Spec : HmrSourceWalkStepLog := ⟨120,167,⟨119,119,168,167⟩,55,.early s6Step304CompleteLog⟩
def s6PrivateStep304Plan : HmrSourceStepPlan := .early s6Step304CompletePlan
theorem s6PrivateStep304_source : s6PrivateStep304Spec=s6ObservedLogs304[0] := rfl
theorem s6PrivateStep304_checked : compileHmrSourceStepLog s6PrivateStep304Arena s6PrivateStep304Bank
    s6PrivateStep304Spec.fgWidth s6PrivateStep304Spec.vWidth s6PrivateStep304Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899]
    6 498 304 s6PrivateStep304Spec.need none s6PrivateStep304Spec.log=some s6PrivateStep304Plan := by
  change compileHmrSourceStepLog s6Step304EntryFBefore s6Step304FrontBank 120 167 ⟨119,119,168,167⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] 6 498 304 55 none (.early s6Step304CompleteLog)=some (.early s6Step304CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 304<498)]
  rw [s6Step304Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
