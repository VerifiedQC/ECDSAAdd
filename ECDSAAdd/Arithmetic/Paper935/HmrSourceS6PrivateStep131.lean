import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep129
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

private def s6Step131CompleteMoves : List (Wire × Wire) := [(807,202)]

private def s6Step131EarlyControlLog : HmrEarlyControlLog := ⟨[807, 838, 833, 843, 853],[822],[813],[850, 879, 875, 882, 891, 903],[]⟩

private def s6Step131FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[853], [843], [838], [833]],[[], [], [], []]⟩,[839],[854],[822],[813],[850, 879, 875, 882, 891, 903, 791, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[850, 879, 875, 882, 891, 903, 791, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[822, 813, 850, 879]⟩

private def s6Step131CompleteLog : HmrEarlyStepLog := ⟨s6Step131FrontLog,s6Step131CompleteMoves,s6Step131EarlyControlLog⟩

private def s6Step131ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458],795⟩

private def s6Step131ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841],776⟩

private def s6Step131ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201],777⟩

private def s6Step131ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898],775⟩

private def s6Step131FrontOut : WindowBank := ⟨s6Step131ExitFOut,s6Step131ExitGOut,s6Step131ExitFvOut,s6Step131ExitGvOut⟩

private def s6Step131CompleteOut : WindowBank := s6Step131FrontOut.repacked s6Step131CompleteMoves

private def s6Step131EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(844,849),(851,853),(854,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step131EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step131EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step131EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step131EarlyControlPositiveArena,[822],s6Step131EarlyControlEqualityArena,[813],⟨⟨839,false⟩,[⟨⟨822,false⟩,813⟩]⟩⟩

private def s6Step131EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step131EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step131EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(844,849),(851,853),(854,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step131EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(840,842),(844,849),(851,853),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step131EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(840,842),(844,849),(851,853),(854,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step131EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step131EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,807⟩,⟨⟨772,false⟩,838⟩,⟨⟨771,false⟩,833⟩,⟨⟨770,false⟩,843⟩,⟨⟨769,false⟩,853⟩]⟩

private def s6Step131EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step131EarlyControlZeroArena,s6Step131EarlyControlZeroPlan,s6Step131EarlyControlClassPlan,s6Step131EarlyControlFlagArena,s6Step131EarlyControlFittedArena,s6Step131EarlyControlHistoryArena,s6Step131EarlyControlSigmaArena,s6Step131EarlyControlOutputArena,s6Step131EarlyControlLog⟩

private def s6Step131CounterWork : List Wire := [822, 813, 850, 879]

private theorem s6Step131Counter_bounded : s6Step131CounterWork.toFinset⊆arenaWires := by norm_num [s6Step131CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step131HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step131CounterDuring : Arena := ⟨s6Step131HeadFvAfter.live∪s6Step131CounterWork.toFinset,Finset.union_subset s6Step131HeadFvAfter.bounded s6Step131Counter_bounded⟩

private def s6Step131EntryFFresh : List Wire := []

private def s6Step131EntryFvFresh : List Wire := []

private def s6Step131EntryGFresh : List Wire := []

private def s6Step131EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(840,842),(844,849),(851,853),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step131EntryGvAfter : Arena := s6Step131EntryFBefore

private def s6Step131EntryGvFresh : List Wire := []

private def s6Step131ExitFExtra : List Wire := [843]

private def s6Step131ExitFvExtra : List Wire := [833]

private def s6Step131ExitGExtra : List Wire := [202, 853]

private def s6Step131ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,202),(203,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(844,849),(851,853),(854,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step131ExitGvExtra : List Wire := [838]

private def s6Step131Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step131Add0Work : List Wire := [850, 879, 875, 882, 891, 903, 791, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step131Add0_bounded : s6Step131Add0Work.toFinset⊆arenaWires := by
  have h : s6Step131Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step131Add0During : Arena := ⟨s6Step131Add0Arena.live∪s6Step131Add0Work.toFinset,Finset.union_subset s6Step131Add0Arena.bounded s6Step131Add0_bounded⟩

private def s6Step131Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step131Add1Work : List Wire := [850, 879, 875, 882, 891, 903, 791, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step131Add1_bounded : s6Step131Add1Work.toFinset⊆arenaWires := by
  have h : s6Step131Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step131Add1During : Arena := ⟨s6Step131Add1Arena.live∪s6Step131Add1Work.toFinset,Finset.union_subset s6Step131Add1Arena.bounded s6Step131Add1_bounded⟩

private def s6Step131F4FlagArena : Arena := ⟨s6Step131HeadFvAfter.live∪{822},Finset.union_subset s6Step131HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step131F4Plan : HmrHybridF4Plan := ⟨s6Step131F4FlagArena,[822],s6Step131Add0Arena,[813],s6Step131Add0During,s6Step131Add0Work,s6Step131Add1During,s6Step131Add1Work⟩

private def s6Step131HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 843],795⟩

private def s6Step131HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 833],776⟩

private def s6Step131HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 853],777⟩

private def s6Step131HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 838],775⟩

private def s6Step131FrontHead : WindowBank := ⟨s6Step131HeadFOut,s6Step131HeadGOut,s6Step131HeadFvOut,s6Step131HeadGvOut⟩

private def s6Step131EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458],795⟩

private def s6Step131EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841],776⟩

private def s6Step131EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202],777⟩

private def s6Step131EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898],775⟩

private def s6Step131FrontPair : WindowBank := ⟨s6Step131EntryFOut,s6Step131EntryGOut,s6Step131EntryFvOut,s6Step131EntryGvOut⟩

private def s6Step131FrontSigmaArena : Arena := ⟨s6Step131EntryGvAfter.live∪{839},Finset.union_subset s6Step131EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step131HeadFFresh : List Wire := [843]

private def s6Step131HeadFvFresh : List Wire := [833]

private def s6Step131HeadGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(844,849),(851,853),(854,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step131HeadGFresh : List Wire := [853]

private def s6Step131HeadGvFresh : List Wire := [838]

private def s6Step131FrontPlan : HmrSourceFront := ⟨s6Step131EntryGvAfter,s6Step131FrontPair,(growRow 795 s6Step131EntryFFresh ++ (growRow 777 s6Step131EntryGFresh ++ (growRow 776 s6Step131EntryFvFresh ++ (growRow 775 s6Step131EntryGvFresh ++ [])))),s6Step131FrontSigmaArena,[839],s6Step131HeadGBefore,[854],
  s6Step131HeadFvAfter,s6Step131FrontHead,(growRow 777 s6Step131HeadGFresh ++ (growRow 795 s6Step131HeadFFresh ++ (growRow 775 s6Step131HeadGvFresh ++ (growRow 776 s6Step131HeadFvFresh ++ [])))),s6Step131F4Plan,s6Step131CounterDuring,s6Step131CounterWork,s6Step131ExitGvAfter,s6Step131FrontOut,(shrinkRow 777 s6Step131ExitGExtra ++ (shrinkRow 795 s6Step131ExitFExtra ++ (shrinkRow 776 s6Step131ExitFvExtra ++ (shrinkRow 775 s6Step131ExitGvExtra ++ []))))⟩

private def s6Step131CompletePlan : HmrEarlyStepPlan := ⟨s6Step131FrontPlan,s6Step131EarlyControlArena,s6Step131EarlyControlPlan,s6Step131CompleteMoves⟩

private theorem s6Step131Complete_apart : List.Disjoint (s6Step131CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [839, 854, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] := by
  have nd : ((s6Step131CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[839, 854, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step131Complete_owned : (s6Step131CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step131EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step131EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(844,849),(851,853),(854,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private def s6Step131CompleteRelocationMove0Borrowed : Arena := ⟨s6Step131ExitGvAfter.live∪{202},Finset.union_subset s6Step131ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step131CompleteRelocation_move0_owned : 807∈s6Step131ExitGvAfter.live := by norm_num [s6Step131ExitGvAfter,arenaWires]

private theorem s6Step131CompleteRelocation_move0_reserve : s6Step131ExitGvAfter.reserve {202}=some s6Step131CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step131ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step131CompleteRelocation_move0_retire : s6Step131CompleteRelocationMove0Borrowed.retireSet {807}=s6Step131EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step131CompleteRelocationMove0Borrowed s6Step131EarlyControlArena {807}
  change s6Step131EarlyControlArena.live=(s6Step131ExitGvAfter.live∪{202})\{807}
  apply hmrArena_update_of_filter_check s6Step131ExitGvAfter s6Step131EarlyControlArena (fun q => ([(0,202),(203,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(844,849),(851,853),(854,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(844,849),(851,853),(854,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [202] [807] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step131CompleteRelocation_checked : s6Step131ExitGvAfter.checkRepack [(807,202)]=some s6Step131EarlyControlArena := by
  have tail1 : s6Step131EarlyControlArena.checkRepack []=some s6Step131EarlyControlArena := rfl
  have tail0 := Arena.checkRepack_cons_of_parts s6Step131ExitGvAfter s6Step131CompleteRelocationMove0Borrowed s6Step131EarlyControlArena s6Step131EarlyControlArena 807 202 []
    s6Step131CompleteRelocation_move0_owned s6Step131CompleteRelocation_move0_reserve s6Step131CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step131Complete_repack : s6Step131ExitGvAfter.checkRepack s6Step131CompleteMoves=some s6Step131EarlyControlArena := by
  simpa only [s6Step131CompleteMoves] using s6Step131CompleteRelocation_checked

private theorem s6Step131EarlyControl_branchOwned : ([854] : List Wire).toFinset⊆s6Step131EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step131EarlyControlSigmaArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(840,842),(844,849),(851,853),(854,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step131EarlyControl_branch : compileHmrBranchRetirement s6Step131EarlyControlSigmaArena 854=some s6Step131EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step131EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step131EarlyControlSigmaArena s6Step131EarlyControlOutputArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(840,842),(844,849),(851,853),(854,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(840,842),(844,849),(851,853),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [854] rfl rfl
    decide +kernel

private theorem s6Step131EarlyControl_classEqualityBorrow : s6Step131EarlyControlPositiveArena.checkBorrow (([839, 822] : List Wire).length-1) s6Step131EarlyControlLog.classWork=some s6Step131EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step131EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step131EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step131EarlyControlEqualityArena,s6Step131EarlyControlPositiveArena,s6Step131EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step131EarlyControl_classEqualityOwned : ([839, 822] : List Wire).toFinset⊆s6Step131EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step131EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step131EarlyControl_classEquality : compileHmrEqualityLog s6Step131EarlyControlPositiveArena [839, 822] 0 s6Step131EarlyControlLog.classWork=some (s6Step131EarlyControlEqualityArena,s6Step131EarlyControlLog.classWork,s6Step131EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step131EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step131EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step131EarlyControl_classOwned : ([769, 853, 839] : List Wire).toFinset⊆s6Step131EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step131EarlyControlZeroArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step131EarlyControl_positiveBorrow : s6Step131EarlyControlZeroArena.checkBorrow (1) s6Step131EarlyControlLog.positiveWork=some s6Step131EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step131EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step131EarlyControlZeroArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step131EarlyControlZeroArena s6Step131EarlyControlPositiveArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) s6Step131EarlyControlLog.positiveWork rfl rfl
      · norm_num [s6Step131EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step131EarlyControl_class : compileHmrSourceClassLog s6Step131EarlyControlZeroArena false 769 s6Step131EarlyControlZeroPlan.top 0 839 s6Step131EarlyControlLog.positiveWork s6Step131EarlyControlLog.classWork=some s6Step131EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step131EarlyControlClassPlan s6Step131EarlyControlZeroArena false 769 s6Step131EarlyControlZeroPlan.top 0 839
  constructor
  · decide +kernel
  · exact s6Step131EarlyControl_classOwned
  · exact s6Step131EarlyControl_positiveBorrow
  · exact s6Step131EarlyControl_classEquality

private theorem s6Step131EarlyControl_entryRecordOwned : ([854, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).toFinset⊆s6Step131EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step131EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(844,849),(851,853),(854,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step131EarlyControl_entrySigmaOwned : ([839, 254] : List Wire).toFinset⊆s6Step131EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step131EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(844,849),(851,853),(854,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step131EarlyControl_fitBorrow : s6Step131EarlyControlFlagArena.checkBorrow ((37-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).length)) s6Step131EarlyControlLog.recordFresh=some s6Step131EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step131EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step131EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step131EarlyControlFittedArena,s6Step131EarlyControlFlagArena,s6Step131EarlyControlLog,arenaWires]

private theorem s6Step131EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).toFinset⊆s6Step131EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step131EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step131EarlyControl_fit : compileHmrRecordGrowLog s6Step131EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 37 s6Step131EarlyControlLog.recordFresh=some s6Step131EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step131EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step131EarlyControl_fitBorrow

private theorem s6Step131EarlyControl_flagsBorrow : s6Step131EarlyControlEqualityArena.checkBorrow (6) s6Step131EarlyControlLog.flagWork=some s6Step131EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step131EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step131EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step131EarlyControlFlagArena,s6Step131EarlyControlEqualityArena,s6Step131EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step131EarlyControl_flagsOwned : ([813, 253, 252, 251] : List Wire).toFinset⊆s6Step131EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step131EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step131EarlyControl_flags : compileHmrFlagsLog s6Step131EarlyControlClassPlan.equalityArena s6Step131EarlyControlClassPlan.equality.top 253 252 251 s6Step131EarlyControlLog.flagWork=some s6Step131EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step131EarlyControl_flagsOwned⟩
  · exact s6Step131EarlyControl_flagsBorrow

private theorem s6Step131EarlyControl_historyBorrow : s6Step131EarlyControlArena.checkBorrow ((37-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).length)) s6Step131EarlyControlLog.recordFresh=some s6Step131EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step131EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step131EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(844,849),(851,853),(854,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step131EarlyControlArena s6Step131EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(844,849),(851,853),(854,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(844,849),(851,853),(854,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step131EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step131EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step131EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).toFinset⊆s6Step131EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step131EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(844,849),(851,853),(854,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step131EarlyControl_history : compileHmrRecordGrowLog s6Step131EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 37 s6Step131EarlyControlLog.recordFresh=some s6Step131EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step131EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step131EarlyControl_historyBorrow

private theorem s6Step131EarlyControl_sigmaOwned : ([254, 839] : List Wire).toFinset⊆s6Step131EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step131EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(844,849),(851,853),(854,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step131EarlyControl_sigmaReleaseOwned : ([839] : List Wire).toFinset⊆s6Step131EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step131EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(844,849),(851,853),(854,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step131EarlyControl_sigmaRelease : s6Step131EarlyControlHistoryArena.release {839} (fun _ => false)=some s6Step131EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step131EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step131EarlyControlHistoryArena s6Step131EarlyControlSigmaArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(844,849),(851,853),(854,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(840,842),(844,849),(851,853),(854,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [839] rfl rfl
    decide +kernel

private theorem s6Step131EarlyControl_sigma : compileHmrSigmaDropLog s6Step131EarlyControlHistoryArena false 0 0 254 839 []=some s6Step131EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step131EarlyControl_sigmaOwned⟩
  · exact s6Step131EarlyControl_sigmaRelease

private theorem s6Step131EarlyControl_zeroBorrow : s6Step131EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step131EarlyControlLog.zeroWork=some s6Step131EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step131EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step131EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(844,849),(851,853),(854,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step131EarlyControlArena s6Step131EarlyControlZeroArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(844,849),(851,853),(854,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step131EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step131EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step131EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step131EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step131EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(844,849),(851,853),(854,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step131EarlyControl_zero : compileHmrEqualityLog s6Step131EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step131EarlyControlLog.zeroWork=some (s6Step131EarlyControlZeroArena,s6Step131EarlyControlLog.zeroWork,s6Step131EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step131EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step131EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step131EarlyControl_logged : s6Step131EarlyControlPlan.Logged s6Step131EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 769 839 254 253 252 251 854 37 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step131EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step131EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step131EarlyControl_zero
  · exact s6Step131EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step131EarlyControl_flags
  · exact s6Step131EarlyControl_fit
  · exact s6Step131EarlyControl_history
  · exact s6Step131EarlyControl_sigma
  · exact s6Step131EarlyControl_branch

private theorem s6Step131EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step131EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 769 839 254 253 252 251 854 37 s6Step131EarlyControlLog=some s6Step131EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step131EarlyControlPlan s6Step131EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 769 839 254 253 252 251 854 37 s6Step131EarlyControl_logged

private def s6Step131EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458],795⟩

private def s6Step131EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841],776⟩

private def s6Step131EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202],777⟩

private def s6Step131EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898],775⟩

private def s6Step131FrontBank : WindowBank := ⟨s6Step131EntryFRow,s6Step131EntryGRow,s6Step131EntryFvRow,s6Step131EntryGvRow⟩

private def s6Step131Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 843, 795]

private def s6Step131Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 853, 777]

private def s6Step131Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 833, 776]

private def s6Step131Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 838, 775]

private theorem s6Step131Counter_apart : Disjoint s6Step131HeadFvAfter.live s6Step131CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step131HeadFvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step131Counter_borrowed : s6Step131HeadFvAfter.checkBorrow 4 s6Step131CounterWork=some s6Step131CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step131HeadFvAfter s6Step131CounterDuring s6Step131CounterWork.toFinset s6Step131Counter_bounded s6Step131Counter_apart rfl

private theorem s6Step131Counter_owned : (839::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step131HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step131HeadFvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step131Counter_checked : compileHmrCounterStepLog s6Step131HeadFvAfter true 839 [774, 773, 772, 771, 770, 769] s6Step131CounterWork=some s6Step131CounterDuring := by
  have owned : ∀q∈839::[774, 773, 772, 771, 770, 769],q∈s6Step131HeadFvAfter.live := fun q hq => s6Step131Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step131Counter_borrowed

private def s6Step131EntryFAfter : Arena := s6Step131EntryFBefore

private theorem s6Step131EntryBank_incomingDistinct : ([s6Step131EntryFRow,s6Step131EntryGRow,s6Step131EntryFvRow,s6Step131EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step131EntryF_Incoming : rowsOwned s6Step131EntryFBefore [s6Step131EntryFRow,s6Step131EntryGRow,s6Step131EntryFvRow,s6Step131EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step131EntryFRow,s6Step131EntryGRow,s6Step131EntryFvRow,s6Step131EntryGvRow] 0 s6Step131EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step131EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(840,842),(844,849),(851,853),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step131EntryBank_outgoingOwned : rowsOwned s6Step131EntryGvAfter [s6Step131EntryFOut,s6Step131EntryGOut,s6Step131EntryFvOut,s6Step131EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step131EntryGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(840,842),(844,849),(851,853),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step131EntryF_Outgoing : rowsOwned s6Step131EntryGvAfter [s6Step131EntryFOut,s6Step131EntryGOut,s6Step131EntryFvOut,s6Step131EntryGvOut] :=
  hmrRows_owned_drop s6Step131EntryGvAfter [s6Step131EntryFOut,s6Step131EntryGOut,s6Step131EntryFvOut,s6Step131EntryGvOut] 0 s6Step131EntryBank_outgoingOwned

private theorem s6Step131EntryF_distinct : (s6Step131EntryFRow.sign::s6Step131EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step131EntryF_owned : (s6Step131EntryFRow.sign::s6Step131EntryFRow.payload).toFinset⊆s6Step131EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step131EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(840,842),(844,849),(851,853),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step131EntryF_reserved : s6Step131EntryFBefore.reserve s6Step131EntryFFresh.toFinset=some s6Step131EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step131EntryFFresh,arenaWires]
  · norm_num [s6Step131EntryFBefore,s6Step131EntryFFresh,arenaWires]
  · simp only [s6Step131EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step131EntryF_checked : planRowResizeLog s6Step131EntryFBefore s6Step131EntryFRow 203 s6Step131EntryFFresh=
    some (s6Step131EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458],795⟩,growRow 795 s6Step131EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step131EntryFBefore s6Step131EntryFAfter s6Step131EntryFRow 203 s6Step131EntryFFresh
    s6Step131EntryF_distinct s6Step131EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step131EntryF_reserved
  have rowEq : WindowRow.mk (s6Step131EntryFRow.payload++s6Step131EntryFFresh) s6Step131EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step131EntryFvAfter : Arena := s6Step131EntryFBefore

private def s6Step131EntryFvBefore : Arena := s6Step131EntryFBefore

private theorem s6Step131EntryFv_Incoming : rowsOwned s6Step131EntryFvBefore [s6Step131EntryFvRow,s6Step131EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step131EntryFRow,s6Step131EntryGRow,s6Step131EntryFvRow,s6Step131EntryGvRow] 2 s6Step131EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step131EntryFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(840,842),(844,849),(851,853),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step131EntryFv_Outgoing : rowsOwned s6Step131EntryGvAfter [s6Step131EntryFvOut,s6Step131EntryGvOut] :=
  hmrRows_owned_drop s6Step131EntryGvAfter [s6Step131EntryFOut,s6Step131EntryGOut,s6Step131EntryFvOut,s6Step131EntryGvOut] 2 s6Step131EntryBank_outgoingOwned

private theorem s6Step131EntryFv_distinct : (s6Step131EntryFvRow.sign::s6Step131EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step131EntryFv_owned : (s6Step131EntryFvRow.sign::s6Step131EntryFvRow.payload).toFinset⊆s6Step131EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step131EntryFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(840,842),(844,849),(851,853),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step131EntryFv_reserved : s6Step131EntryFvBefore.reserve s6Step131EntryFvFresh.toFinset=some s6Step131EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step131EntryFvFresh,arenaWires]
  · norm_num [s6Step131EntryFvBefore,s6Step131EntryFBefore,s6Step131EntryFvFresh,arenaWires]
  · simp only [s6Step131EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step131EntryFv_checked : planRowResizeLog s6Step131EntryFvBefore s6Step131EntryFvRow 79 s6Step131EntryFvFresh=
    some (s6Step131EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841],776⟩,growRow 776 s6Step131EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step131EntryFvBefore s6Step131EntryFvAfter s6Step131EntryFvRow 79 s6Step131EntryFvFresh
    s6Step131EntryFv_distinct s6Step131EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step131EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step131EntryFvRow.payload++s6Step131EntryFvFresh) s6Step131EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step131EntryGAfter : Arena := s6Step131EntryFBefore

private def s6Step131EntryGBefore : Arena := s6Step131EntryFBefore

private theorem s6Step131EntryG_Incoming : rowsOwned s6Step131EntryGBefore [s6Step131EntryGRow,s6Step131EntryFvRow,s6Step131EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step131EntryFRow,s6Step131EntryGRow,s6Step131EntryFvRow,s6Step131EntryGvRow] 1 s6Step131EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step131EntryGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(840,842),(844,849),(851,853),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step131EntryG_Outgoing : rowsOwned s6Step131EntryGvAfter [s6Step131EntryGOut,s6Step131EntryFvOut,s6Step131EntryGvOut] :=
  hmrRows_owned_drop s6Step131EntryGvAfter [s6Step131EntryFOut,s6Step131EntryGOut,s6Step131EntryFvOut,s6Step131EntryGvOut] 1 s6Step131EntryBank_outgoingOwned

private theorem s6Step131EntryG_distinct : (s6Step131EntryGRow.sign::s6Step131EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step131EntryG_owned : (s6Step131EntryGRow.sign::s6Step131EntryGRow.payload).toFinset⊆s6Step131EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step131EntryGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(840,842),(844,849),(851,853),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step131EntryG_reserved : s6Step131EntryGBefore.reserve s6Step131EntryGFresh.toFinset=some s6Step131EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step131EntryGFresh,arenaWires]
  · norm_num [s6Step131EntryGBefore,s6Step131EntryFBefore,s6Step131EntryGFresh,arenaWires]
  · simp only [s6Step131EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step131EntryG_checked : planRowResizeLog s6Step131EntryGBefore s6Step131EntryGRow 203 s6Step131EntryGFresh=
    some (s6Step131EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202],777⟩,growRow 777 s6Step131EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step131EntryGBefore s6Step131EntryGAfter s6Step131EntryGRow 203 s6Step131EntryGFresh
    s6Step131EntryG_distinct s6Step131EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step131EntryG_reserved
  have rowEq : WindowRow.mk (s6Step131EntryGRow.payload++s6Step131EntryGFresh) s6Step131EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step131EntryGvBefore : Arena := s6Step131EntryFBefore

private theorem s6Step131EntryGv_Incoming : rowsOwned s6Step131EntryGvBefore [s6Step131EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step131EntryFRow,s6Step131EntryGRow,s6Step131EntryFvRow,s6Step131EntryGvRow] 3 s6Step131EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step131EntryGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(840,842),(844,849),(851,853),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step131EntryGv_Outgoing : rowsOwned s6Step131EntryGvAfter [s6Step131EntryGvOut] :=
  hmrRows_owned_drop s6Step131EntryGvAfter [s6Step131EntryFOut,s6Step131EntryGOut,s6Step131EntryFvOut,s6Step131EntryGvOut] 3 s6Step131EntryBank_outgoingOwned

private theorem s6Step131EntryGv_distinct : (s6Step131EntryGvRow.sign::s6Step131EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step131EntryGv_owned : (s6Step131EntryGvRow.sign::s6Step131EntryGvRow.payload).toFinset⊆s6Step131EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step131EntryGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(840,842),(844,849),(851,853),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step131EntryGv_reserved : s6Step131EntryGvBefore.reserve s6Step131EntryGvFresh.toFinset=some s6Step131EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step131EntryGvFresh,arenaWires]
  · norm_num [s6Step131EntryGvBefore,s6Step131EntryFBefore,s6Step131EntryGvFresh,arenaWires]
  · simp only [s6Step131EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step131EntryGv_checked : planRowResizeLog s6Step131EntryGvBefore s6Step131EntryGvRow 79 s6Step131EntryGvFresh=
    some (s6Step131EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898],775⟩,growRow 775 s6Step131EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step131EntryGvBefore s6Step131EntryGvAfter s6Step131EntryGvRow 79 s6Step131EntryGvFresh
    s6Step131EntryGv_distinct s6Step131EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step131EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step131EntryGvRow.payload++s6Step131EntryGvFresh) s6Step131EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step131EntryBank_rows : planWindowRowsLog s6Step131EntryFBefore [(s6Step131EntryFRow,203),(s6Step131EntryGRow,203),(s6Step131EntryFvRow,79),(s6Step131EntryGvRow,79)] [s6Step131EntryFFresh,s6Step131EntryGFresh,s6Step131EntryFvFresh,s6Step131EntryGvFresh]=
    some (s6Step131EntryGvAfter,[s6Step131EntryFOut,s6Step131EntryGOut,s6Step131EntryFvOut,s6Step131EntryGvOut],(growRow 795 s6Step131EntryFFresh ++ (growRow 777 s6Step131EntryGFresh ++ (growRow 776 s6Step131EntryFvFresh ++ (growRow 775 s6Step131EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step131EntryGvAfter [] []=some (s6Step131EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step131EntryGvBefore s6Step131EntryGvAfter s6Step131EntryGvAfter
    s6Step131EntryGvRow s6Step131EntryGvOut 79 s6Step131EntryGvFresh [] [] []
    (growRow 775 s6Step131EntryGvFresh) ([]) s6Step131EntryGv_Incoming s6Step131EntryGv_checked h4 s6Step131EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step131EntryFvBefore s6Step131EntryFvAfter s6Step131EntryGvAfter
    s6Step131EntryFvRow s6Step131EntryFvOut 79 s6Step131EntryFvFresh [(s6Step131EntryGvRow,79)] [s6Step131EntryGvFresh] [s6Step131EntryGvOut]
    (growRow 776 s6Step131EntryFvFresh) ((growRow 775 s6Step131EntryGvFresh ++ [])) s6Step131EntryFv_Incoming s6Step131EntryFv_checked h3 s6Step131EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step131EntryGBefore s6Step131EntryGAfter s6Step131EntryGvAfter
    s6Step131EntryGRow s6Step131EntryGOut 203 s6Step131EntryGFresh [(s6Step131EntryFvRow,79),(s6Step131EntryGvRow,79)] [s6Step131EntryFvFresh,s6Step131EntryGvFresh] [s6Step131EntryFvOut,s6Step131EntryGvOut]
    (growRow 777 s6Step131EntryGFresh) ((growRow 776 s6Step131EntryFvFresh ++ (growRow 775 s6Step131EntryGvFresh ++ []))) s6Step131EntryG_Incoming s6Step131EntryG_checked h2 s6Step131EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step131EntryFBefore s6Step131EntryFAfter s6Step131EntryGvAfter
    s6Step131EntryFRow s6Step131EntryFOut 203 s6Step131EntryFFresh [(s6Step131EntryGRow,203),(s6Step131EntryFvRow,79),(s6Step131EntryGvRow,79)] [s6Step131EntryGFresh,s6Step131EntryFvFresh,s6Step131EntryGvFresh] [s6Step131EntryGOut,s6Step131EntryFvOut,s6Step131EntryGvOut]
    (growRow 795 s6Step131EntryFFresh) ((growRow 777 s6Step131EntryGFresh ++ (growRow 776 s6Step131EntryFvFresh ++ (growRow 775 s6Step131EntryGvFresh ++ [])))) s6Step131EntryF_Incoming s6Step131EntryF_checked h1 s6Step131EntryF_Outgoing
  exact h0

private theorem s6Step131EntryBank_checked : compileHmrBankResizeLog .entry s6Step131EntryFBefore ⟨s6Step131EntryFRow,s6Step131EntryGRow,s6Step131EntryFvRow,s6Step131EntryGvRow⟩ ⟨203,203,79,79⟩ [s6Step131EntryFFresh,s6Step131EntryGFresh,s6Step131EntryFvFresh,s6Step131EntryGvFresh]=
    some (s6Step131EntryGvAfter,⟨s6Step131EntryFOut,s6Step131EntryGOut,s6Step131EntryFvOut,s6Step131EntryGvOut⟩,(growRow 795 s6Step131EntryFFresh ++ (growRow 777 s6Step131EntryGFresh ++ (growRow 776 s6Step131EntryFvFresh ++ (growRow 775 s6Step131EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step131EntryBank_rows]
  rfl

private def s6Step131ExitFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,202),(203,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(844,849),(851,853),(854,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step131ExitGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,202),(203,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,853),(854,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step131ExitFBefore : Arena := s6Step131ExitGAfter

private def s6Step131ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 843],795⟩

private def s6Step131ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 833],776⟩

private def s6Step131ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 853],777⟩

private def s6Step131ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 838],775⟩

private theorem s6Step131ExitBank_incomingDistinct : ([s6Step131ExitGRow,s6Step131ExitFRow,s6Step131ExitFvRow,s6Step131ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step131ExitF_Incoming : rowsOwned s6Step131ExitFBefore [s6Step131ExitFRow,s6Step131ExitFvRow,s6Step131ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step131ExitGRow,s6Step131ExitFRow,s6Step131ExitFvRow,s6Step131ExitGvRow] 1 s6Step131ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step131ExitFBefore (fun q => ([(0,202),(203,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,853),(854,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step131ExitBank_outgoingOwned : rowsOwned s6Step131ExitGvAfter [s6Step131ExitGOut,s6Step131ExitFOut,s6Step131ExitFvOut,s6Step131ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step131ExitGvAfter (fun q => ([(0,202),(203,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(844,849),(851,853),(854,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step131ExitF_Outgoing : rowsOwned s6Step131ExitGvAfter [s6Step131ExitFOut,s6Step131ExitFvOut,s6Step131ExitGvOut] :=
  hmrRows_owned_drop s6Step131ExitGvAfter [s6Step131ExitGOut,s6Step131ExitFOut,s6Step131ExitFvOut,s6Step131ExitGvOut] 1 s6Step131ExitBank_outgoingOwned

private theorem s6Step131ExitF_distinct : (s6Step131ExitFRow.sign::s6Step131ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step131ExitF_owned : (s6Step131ExitFRow.sign::s6Step131ExitFRow.payload).toFinset⊆s6Step131ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step131ExitFBefore (fun q => ([(0,202),(203,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,853),(854,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step131ExitF_retired : s6Step131ExitFBefore.retireSet s6Step131ExitFExtra.toFinset=s6Step131ExitFAfter := by
  apply hmrArena_retireSet_of_live s6Step131ExitFBefore s6Step131ExitFAfter s6Step131ExitFExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step131ExitFBefore s6Step131ExitFAfter (fun q => ([(0,202),(203,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,853),(854,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,202),(203,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(844,849),(851,853),(854,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step131ExitFExtra rfl rfl
  decide +kernel

private theorem s6Step131ExitF_checked : planRowResizeLog s6Step131ExitFBefore s6Step131ExitFRow 203 []=
    some (s6Step131ExitFAfter,s6Step131ExitFOut,shrinkRow 795 s6Step131ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step131ExitFBefore s6Step131ExitFRow 203 s6Step131ExitF_distinct s6Step131ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step131ExitFRow.payload.take 203) s6Step131ExitFRow.sign=s6Step131ExitFOut := by decide +kernel
  have hi : s6Step131ExitFRow.payload.drop 203=s6Step131ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step131ExitF_retired] at result
  exact result

private def s6Step131ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,202),(203,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,842),(844,849),(851,853),(854,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step131ExitFvBefore : Arena := s6Step131ExitFAfter

private theorem s6Step131ExitFv_Incoming : rowsOwned s6Step131ExitFvBefore [s6Step131ExitFvRow,s6Step131ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step131ExitGRow,s6Step131ExitFRow,s6Step131ExitFvRow,s6Step131ExitGvRow] 2 s6Step131ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step131ExitFvBefore (fun q => ([(0,202),(203,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(844,849),(851,853),(854,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step131ExitFv_Outgoing : rowsOwned s6Step131ExitGvAfter [s6Step131ExitFvOut,s6Step131ExitGvOut] :=
  hmrRows_owned_drop s6Step131ExitGvAfter [s6Step131ExitGOut,s6Step131ExitFOut,s6Step131ExitFvOut,s6Step131ExitGvOut] 2 s6Step131ExitBank_outgoingOwned

private theorem s6Step131ExitFv_distinct : (s6Step131ExitFvRow.sign::s6Step131ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step131ExitFv_owned : (s6Step131ExitFvRow.sign::s6Step131ExitFvRow.payload).toFinset⊆s6Step131ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step131ExitFvBefore (fun q => ([(0,202),(203,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(844,849),(851,853),(854,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step131ExitFv_retired : s6Step131ExitFvBefore.retireSet s6Step131ExitFvExtra.toFinset=s6Step131ExitFvAfter := by
  apply hmrArena_retireSet_of_live s6Step131ExitFvBefore s6Step131ExitFvAfter s6Step131ExitFvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step131ExitFvBefore s6Step131ExitFvAfter (fun q => ([(0,202),(203,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(844,849),(851,853),(854,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,202),(203,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,842),(844,849),(851,853),(854,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step131ExitFvExtra rfl rfl
  decide +kernel

private theorem s6Step131ExitFv_checked : planRowResizeLog s6Step131ExitFvBefore s6Step131ExitFvRow 79 []=
    some (s6Step131ExitFvAfter,s6Step131ExitFvOut,shrinkRow 776 s6Step131ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step131ExitFvBefore s6Step131ExitFvRow 79 s6Step131ExitFv_distinct s6Step131ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step131ExitFvRow.payload.take 79) s6Step131ExitFvRow.sign=s6Step131ExitFvOut := by decide +kernel
  have hi : s6Step131ExitFvRow.payload.drop 79=s6Step131ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step131ExitFv_retired] at result
  exact result

private def s6Step131ExitGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private theorem s6Step131ExitG_Incoming : rowsOwned s6Step131ExitGBefore [s6Step131ExitGRow,s6Step131ExitFRow,s6Step131ExitFvRow,s6Step131ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step131ExitGRow,s6Step131ExitFRow,s6Step131ExitFvRow,s6Step131ExitGvRow] 0 s6Step131ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step131ExitGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step131ExitG_Outgoing : rowsOwned s6Step131ExitGvAfter [s6Step131ExitGOut,s6Step131ExitFOut,s6Step131ExitFvOut,s6Step131ExitGvOut] :=
  hmrRows_owned_drop s6Step131ExitGvAfter [s6Step131ExitGOut,s6Step131ExitFOut,s6Step131ExitFvOut,s6Step131ExitGvOut] 0 s6Step131ExitBank_outgoingOwned

private theorem s6Step131ExitG_distinct : (s6Step131ExitGRow.sign::s6Step131ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step131ExitG_owned : (s6Step131ExitGRow.sign::s6Step131ExitGRow.payload).toFinset⊆s6Step131ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step131ExitGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step131ExitG_retired : s6Step131ExitGBefore.retireSet s6Step131ExitGExtra.toFinset=s6Step131ExitGAfter := by
  apply hmrArena_retireSet_of_live s6Step131ExitGBefore s6Step131ExitGAfter s6Step131ExitGExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step131ExitGBefore s6Step131ExitGAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,202),(203,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,853),(854,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step131ExitGExtra rfl rfl
  decide +kernel

private theorem s6Step131ExitG_checked : planRowResizeLog s6Step131ExitGBefore s6Step131ExitGRow 202 []=
    some (s6Step131ExitGAfter,s6Step131ExitGOut,shrinkRow 777 s6Step131ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step131ExitGBefore s6Step131ExitGRow 202 s6Step131ExitG_distinct s6Step131ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step131ExitGRow.payload.take 202) s6Step131ExitGRow.sign=s6Step131ExitGOut := by decide +kernel
  have hi : s6Step131ExitGRow.payload.drop 202=s6Step131ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step131ExitG_retired] at result
  exact result

private def s6Step131ExitGvBefore : Arena := s6Step131ExitFvAfter

private theorem s6Step131ExitGv_Incoming : rowsOwned s6Step131ExitGvBefore [s6Step131ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step131ExitGRow,s6Step131ExitFRow,s6Step131ExitFvRow,s6Step131ExitGvRow] 3 s6Step131ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step131ExitGvBefore (fun q => ([(0,202),(203,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,842),(844,849),(851,853),(854,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step131ExitGv_Outgoing : rowsOwned s6Step131ExitGvAfter [s6Step131ExitGvOut] :=
  hmrRows_owned_drop s6Step131ExitGvAfter [s6Step131ExitGOut,s6Step131ExitFOut,s6Step131ExitFvOut,s6Step131ExitGvOut] 3 s6Step131ExitBank_outgoingOwned

private theorem s6Step131ExitGv_distinct : (s6Step131ExitGvRow.sign::s6Step131ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step131ExitGv_owned : (s6Step131ExitGvRow.sign::s6Step131ExitGvRow.payload).toFinset⊆s6Step131ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step131ExitGvBefore (fun q => ([(0,202),(203,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,842),(844,849),(851,853),(854,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step131ExitGv_retired : s6Step131ExitGvBefore.retireSet s6Step131ExitGvExtra.toFinset=s6Step131ExitGvAfter := by
  apply hmrArena_retireSet_of_live s6Step131ExitGvBefore s6Step131ExitGvAfter s6Step131ExitGvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step131ExitGvBefore s6Step131ExitGvAfter (fun q => ([(0,202),(203,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,842),(844,849),(851,853),(854,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,202),(203,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(844,849),(851,853),(854,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step131ExitGvExtra rfl rfl
  decide +kernel

private theorem s6Step131ExitGv_checked : planRowResizeLog s6Step131ExitGvBefore s6Step131ExitGvRow 79 []=
    some (s6Step131ExitGvAfter,s6Step131ExitGvOut,shrinkRow 775 s6Step131ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step131ExitGvBefore s6Step131ExitGvRow 79 s6Step131ExitGv_distinct s6Step131ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step131ExitGvRow.payload.take 79) s6Step131ExitGvRow.sign=s6Step131ExitGvOut := by decide +kernel
  have hi : s6Step131ExitGvRow.payload.drop 79=s6Step131ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step131ExitGv_retired] at result
  exact result

private theorem s6Step131ExitBank_rows : planWindowRowsLog s6Step131ExitGBefore [(s6Step131ExitGRow,202),(s6Step131ExitFRow,203),(s6Step131ExitFvRow,79),(s6Step131ExitGvRow,79)] [[],[],[],[]]=
    some (s6Step131ExitGvAfter,[s6Step131ExitGOut,s6Step131ExitFOut,s6Step131ExitFvOut,s6Step131ExitGvOut],(shrinkRow 777 s6Step131ExitGExtra ++ (shrinkRow 795 s6Step131ExitFExtra ++ (shrinkRow 776 s6Step131ExitFvExtra ++ (shrinkRow 775 s6Step131ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step131ExitGvAfter [] []=some (s6Step131ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step131ExitGvBefore s6Step131ExitGvAfter s6Step131ExitGvAfter
    s6Step131ExitGvRow s6Step131ExitGvOut 79 [] [] [] []
    (shrinkRow 775 s6Step131ExitGvExtra) ([]) s6Step131ExitGv_Incoming s6Step131ExitGv_checked h4 s6Step131ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step131ExitFvBefore s6Step131ExitFvAfter s6Step131ExitGvAfter
    s6Step131ExitFvRow s6Step131ExitFvOut 79 [] [(s6Step131ExitGvRow,79)] [[]] [s6Step131ExitGvOut]
    (shrinkRow 776 s6Step131ExitFvExtra) ((shrinkRow 775 s6Step131ExitGvExtra ++ [])) s6Step131ExitFv_Incoming s6Step131ExitFv_checked h3 s6Step131ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step131ExitFBefore s6Step131ExitFAfter s6Step131ExitGvAfter
    s6Step131ExitFRow s6Step131ExitFOut 203 [] [(s6Step131ExitFvRow,79),(s6Step131ExitGvRow,79)] [[],[]] [s6Step131ExitFvOut,s6Step131ExitGvOut]
    (shrinkRow 795 s6Step131ExitFExtra) ((shrinkRow 776 s6Step131ExitFvExtra ++ (shrinkRow 775 s6Step131ExitGvExtra ++ []))) s6Step131ExitF_Incoming s6Step131ExitF_checked h2 s6Step131ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step131ExitGBefore s6Step131ExitGAfter s6Step131ExitGvAfter
    s6Step131ExitGRow s6Step131ExitGOut 202 [] [(s6Step131ExitFRow,203),(s6Step131ExitFvRow,79),(s6Step131ExitGvRow,79)] [[],[],[]] [s6Step131ExitFOut,s6Step131ExitFvOut,s6Step131ExitGvOut]
    (shrinkRow 777 s6Step131ExitGExtra) ((shrinkRow 795 s6Step131ExitFExtra ++ (shrinkRow 776 s6Step131ExitFvExtra ++ (shrinkRow 775 s6Step131ExitGvExtra ++ [])))) s6Step131ExitG_Incoming s6Step131ExitG_checked h1 s6Step131ExitG_Outgoing
  exact h0

private theorem s6Step131ExitBank_checked : compileHmrBankResizeLog .exit s6Step131ExitGBefore ⟨s6Step131ExitFRow,s6Step131ExitGRow,s6Step131ExitFvRow,s6Step131ExitGvRow⟩ ⟨203,202,79,79⟩ [[],[],[],[]]=
    some (s6Step131ExitGvAfter,⟨s6Step131ExitFOut,s6Step131ExitGOut,s6Step131ExitFvOut,s6Step131ExitGvOut⟩,(shrinkRow 777 s6Step131ExitGExtra ++ (shrinkRow 795 s6Step131ExitFExtra ++ (shrinkRow 776 s6Step131ExitFvExtra ++ (shrinkRow 775 s6Step131ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step131ExitBank_rows]
  rfl

private theorem s6Step131Add0_apart : Disjoint s6Step131Add0Arena.live s6Step131Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step131Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step131Add0_card : s6Step131Add0Arena.live.card=875 := by
  decide +kernel

private theorem s6Step131Add0_borrowed : s6Step131Add0Arena.checkBorrow (hmrHybridCount s6Step131Add0Arena s6Step131Add0B.length) s6Step131Add0Work=some s6Step131Add0During := by
  have len : s6Step131Add0Work.length=hmrHybridCount s6Step131Add0Arena s6Step131Add0B.length := by
    rw [hmrHybridCount,s6Step131Add0_card]
    decide +kernel
  have nd : s6Step131Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step131Add0Arena s6Step131Add0During s6Step131Add0Work.toFinset s6Step131Add0_bounded s6Step131Add0_apart rfl

private theorem s6Step131Add0_distinct : (822::854::813::(s6Step131Add0A++s6Step131Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step131Add0_owned : (822::854::813::(s6Step131Add0A++s6Step131Add0B)).toFinset⊆s6Step131Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step131Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step131Add0_checked : compileHmrHybridCinLog s6Step131Add0Arena 854 822 813 s6Step131Add0A s6Step131Add0B s6Step131Add0Work=some s6Step131Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step131Add0Arena s6Step131Add0During 854 822 813 s6Step131Add0A s6Step131Add0B s6Step131Add0Work
    (by decide +kernel) (by decide +kernel) s6Step131Add0_distinct
    (fun q hq => s6Step131Add0_owned (List.mem_toFinset.mpr hq)) s6Step131Add0_borrowed

private theorem s6Step131Add1_apart : Disjoint s6Step131Add1Arena.live s6Step131Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step131Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step131Add1_card : s6Step131Add1Arena.live.card=875 := by
  decide +kernel

private theorem s6Step131Add1_borrowed : s6Step131Add1Arena.checkBorrow (hmrHybridCount s6Step131Add1Arena s6Step131Add1B.length) s6Step131Add1Work=some s6Step131Add1During := by
  have len : s6Step131Add1Work.length=hmrHybridCount s6Step131Add1Arena s6Step131Add1B.length := by
    rw [hmrHybridCount,s6Step131Add1_card]
    decide +kernel
  have nd : s6Step131Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step131Add1Arena s6Step131Add1During s6Step131Add1Work.toFinset s6Step131Add1_bounded s6Step131Add1_apart rfl

private theorem s6Step131Add1_distinct : (822::854::813::(s6Step131Add1A++s6Step131Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step131Add1_owned : (822::854::813::(s6Step131Add1A++s6Step131Add1B)).toFinset⊆s6Step131Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step131Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step131Add1_checked : compileHmrHybridCinLog s6Step131Add1Arena 854 822 813 s6Step131Add1A s6Step131Add1B s6Step131Add1Work=some s6Step131Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step131Add1Arena s6Step131Add1During 854 822 813 s6Step131Add1A s6Step131Add1B s6Step131Add1Work
    (by decide +kernel) (by decide +kernel) s6Step131Add1_distinct
    (fun q hq => s6Step131Add1_owned (List.mem_toFinset.mpr hq)) s6Step131Add1_borrowed

private theorem s6Step131F4_apart : Disjoint (s6Step131Add0A++s6Step131Add0B).toFinset (s6Step131Add1A++s6Step131Add1B).toFinset := by
  have nd : ((s6Step131Add0A++s6Step131Add0B)++(s6Step131Add1A++s6Step131Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step131F4_carry : s6Step131F4FlagArena.checkBorrow 1 [813]=some s6Step131Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step131F4FlagArena,s6Step131HeadFvAfter,arenaWires]
  · change s6Step131Add0Arena.live=(s6Step131HeadFvAfter.live∪{822})∪{813}
    apply hmrArena_union_pair_of_filter_check s6Step131HeadFvAfter s6Step131Add0Arena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) 822 813 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step131F4_distinct : (839::854::822::813::((s6Step131Add0A++s6Step131Add1A)++(s6Step131Add0B++s6Step131Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step131F4_flag : s6Step131HeadFvAfter.checkBorrow 1 [822]=some s6Step131F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step131HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step131F4_owned : (839::854::((s6Step131Add0A++s6Step131Add1A)++(s6Step131Add0B++s6Step131Add1B))).toFinset⊆s6Step131HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step131HeadFvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step131F4_checked : compileHmrHybridF4Log s6Step131HeadFvAfter 839 854 s6Step131Add0A s6Step131Add0B s6Step131Add1A s6Step131Add1B [822] [813] s6Step131Add0Work s6Step131Add1Work=some s6Step131F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step131HeadFvAfter s6Step131F4FlagArena s6Step131Add0Arena s6Step131Add0During s6Step131Add1During 839 854
    s6Step131Add0A s6Step131Add0B s6Step131Add1A s6Step131Add1B [822] [813] s6Step131Add0Work s6Step131Add1Work
    (fun q hq => s6Step131F4_owned (List.mem_toFinset.mpr hq)) s6Step131F4_flag s6Step131F4_carry
    s6Step131F4_distinct s6Step131F4_apart s6Step131Add0_checked s6Step131Add1_checked

private theorem s6Step131Front_branch : s6Step131FrontSigmaArena.checkBorrow 1 [854]=some s6Step131HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step131FrontSigmaArena,s6Step131EntryGvAfter,s6Step131EntryFBefore,arenaWires]
  · change s6Step131HeadGBefore.live=(s6Step131EntryGvAfter.live∪{839})∪{854}
    apply hmrArena_union_pair_of_filter_check s6Step131EntryGvAfter s6Step131HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(840,842),(844,849),(851,853),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(844,849),(851,853),(854,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 839 854 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step131Front_entry : HmrFrontEntryValid s6Step131EntryFBefore s6Step131FrontBank 203 79 ⟨203,202,79,79⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step131FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step131EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step131EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(840,842),(844,849),(851,853),(855,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step131FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step131Front_sigma : s6Step131EntryGvAfter.checkBorrow 1 [839]=some s6Step131FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step131EntryGvAfter,s6Step131EntryFBefore,arenaWires]
  · rfl

private def s6Step131HeadFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step131HeadGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(844,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step131HeadFBefore : Arena := s6Step131HeadGAfter

private def s6Step131HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458],795⟩

private def s6Step131HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841],776⟩

private def s6Step131HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202],777⟩

private def s6Step131HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898],775⟩

private theorem s6Step131HeadBank_incomingDistinct : ([s6Step131HeadGRow,s6Step131HeadFRow,s6Step131HeadGvRow,s6Step131HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step131HeadF_Incoming : rowsOwned s6Step131HeadFBefore [s6Step131HeadFRow,s6Step131HeadGvRow,s6Step131HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step131HeadGRow,s6Step131HeadFRow,s6Step131HeadGvRow,s6Step131HeadFvRow] 1 s6Step131HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step131HeadFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(844,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step131HeadBank_outgoingOwned : rowsOwned s6Step131HeadFvAfter [s6Step131HeadGOut,s6Step131HeadFOut,s6Step131HeadGvOut,s6Step131HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step131HeadFvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step131HeadF_Outgoing : rowsOwned s6Step131HeadFvAfter [s6Step131HeadFOut,s6Step131HeadGvOut,s6Step131HeadFvOut] :=
  hmrRows_owned_drop s6Step131HeadFvAfter [s6Step131HeadGOut,s6Step131HeadFOut,s6Step131HeadGvOut,s6Step131HeadFvOut] 1 s6Step131HeadBank_outgoingOwned

private theorem s6Step131HeadF_distinct : (s6Step131HeadFRow.sign::s6Step131HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step131HeadF_owned : (s6Step131HeadFRow.sign::s6Step131HeadFRow.payload).toFinset⊆s6Step131HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step131HeadFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(844,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step131HeadF_reserved : s6Step131HeadFBefore.reserve s6Step131HeadFFresh.toFinset=some s6Step131HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step131HeadFFresh,arenaWires]
  · norm_num [s6Step131HeadFBefore,s6Step131HeadGAfter,s6Step131HeadFFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step131HeadFBefore s6Step131HeadFAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(844,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step131HeadFFresh rfl rfl
    · norm_num [s6Step131HeadFFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step131HeadF_checked : planRowResizeLog s6Step131HeadFBefore s6Step131HeadFRow 204 s6Step131HeadFFresh=
    some (s6Step131HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 843],795⟩,growRow 795 s6Step131HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step131HeadFBefore s6Step131HeadFAfter s6Step131HeadFRow 204 s6Step131HeadFFresh
    s6Step131HeadF_distinct s6Step131HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step131HeadF_reserved
  have rowEq : WindowRow.mk (s6Step131HeadFRow.payload++s6Step131HeadFFresh) s6Step131HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 843],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step131HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step131HeadFvBefore : Arena := s6Step131HeadGvAfter

private theorem s6Step131HeadFv_Incoming : rowsOwned s6Step131HeadFvBefore [s6Step131HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step131HeadGRow,s6Step131HeadFRow,s6Step131HeadGvRow,s6Step131HeadFvRow] 3 s6Step131HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step131HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step131HeadFv_Outgoing : rowsOwned s6Step131HeadFvAfter [s6Step131HeadFvOut] :=
  hmrRows_owned_drop s6Step131HeadFvAfter [s6Step131HeadGOut,s6Step131HeadFOut,s6Step131HeadGvOut,s6Step131HeadFvOut] 3 s6Step131HeadBank_outgoingOwned

private theorem s6Step131HeadFv_distinct : (s6Step131HeadFvRow.sign::s6Step131HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step131HeadFv_owned : (s6Step131HeadFvRow.sign::s6Step131HeadFvRow.payload).toFinset⊆s6Step131HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step131HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step131HeadFv_reserved : s6Step131HeadFvBefore.reserve s6Step131HeadFvFresh.toFinset=some s6Step131HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step131HeadFvFresh,arenaWires]
  · norm_num [s6Step131HeadFvBefore,s6Step131HeadGvAfter,s6Step131HeadFvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step131HeadFvBefore s6Step131HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(833,834),(835,836),(837,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step131HeadFvFresh rfl rfl
    · norm_num [s6Step131HeadFvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step131HeadFv_checked : planRowResizeLog s6Step131HeadFvBefore s6Step131HeadFvRow 80 s6Step131HeadFvFresh=
    some (s6Step131HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 833],776⟩,growRow 776 s6Step131HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step131HeadFvBefore s6Step131HeadFvAfter s6Step131HeadFvRow 80 s6Step131HeadFvFresh
    s6Step131HeadFv_distinct s6Step131HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step131HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step131HeadFvRow.payload++s6Step131HeadFvFresh) s6Step131HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 833],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step131HeadG_Incoming : rowsOwned s6Step131HeadGBefore [s6Step131HeadGRow,s6Step131HeadFRow,s6Step131HeadGvRow,s6Step131HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step131HeadGRow,s6Step131HeadFRow,s6Step131HeadGvRow,s6Step131HeadFvRow] 0 s6Step131HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step131HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(844,849),(851,853),(854,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step131HeadG_Outgoing : rowsOwned s6Step131HeadFvAfter [s6Step131HeadGOut,s6Step131HeadFOut,s6Step131HeadGvOut,s6Step131HeadFvOut] :=
  hmrRows_owned_drop s6Step131HeadFvAfter [s6Step131HeadGOut,s6Step131HeadFOut,s6Step131HeadGvOut,s6Step131HeadFvOut] 0 s6Step131HeadBank_outgoingOwned

private theorem s6Step131HeadG_distinct : (s6Step131HeadGRow.sign::s6Step131HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step131HeadG_owned : (s6Step131HeadGRow.sign::s6Step131HeadGRow.payload).toFinset⊆s6Step131HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step131HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(844,849),(851,853),(854,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step131HeadG_reserved : s6Step131HeadGBefore.reserve s6Step131HeadGFresh.toFinset=some s6Step131HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step131HeadGFresh,arenaWires]
  · norm_num [s6Step131HeadGBefore,s6Step131HeadGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step131HeadGBefore s6Step131HeadGAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(844,849),(851,853),(854,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(844,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step131HeadGFresh rfl rfl
    · norm_num [s6Step131HeadGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step131HeadG_checked : planRowResizeLog s6Step131HeadGBefore s6Step131HeadGRow 204 s6Step131HeadGFresh=
    some (s6Step131HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 853],777⟩,growRow 777 s6Step131HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step131HeadGBefore s6Step131HeadGAfter s6Step131HeadGRow 204 s6Step131HeadGFresh
    s6Step131HeadG_distinct s6Step131HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step131HeadG_reserved
  have rowEq : WindowRow.mk (s6Step131HeadGRow.payload++s6Step131HeadGFresh) s6Step131HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 853],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step131HeadGvBefore : Arena := s6Step131HeadFAfter

private theorem s6Step131HeadGv_Incoming : rowsOwned s6Step131HeadGvBefore [s6Step131HeadGvRow,s6Step131HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step131HeadGRow,s6Step131HeadFRow,s6Step131HeadGvRow,s6Step131HeadFvRow] 2 s6Step131HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step131HeadGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step131HeadGv_Outgoing : rowsOwned s6Step131HeadFvAfter [s6Step131HeadGvOut,s6Step131HeadFvOut] :=
  hmrRows_owned_drop s6Step131HeadFvAfter [s6Step131HeadGOut,s6Step131HeadFOut,s6Step131HeadGvOut,s6Step131HeadFvOut] 2 s6Step131HeadBank_outgoingOwned

private theorem s6Step131HeadGv_distinct : (s6Step131HeadGvRow.sign::s6Step131HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step131HeadGv_owned : (s6Step131HeadGvRow.sign::s6Step131HeadGvRow.payload).toFinset⊆s6Step131HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step131HeadGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step131HeadGv_reserved : s6Step131HeadGvBefore.reserve s6Step131HeadGvFresh.toFinset=some s6Step131HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step131HeadGvFresh,arenaWires]
  · norm_num [s6Step131HeadGvBefore,s6Step131HeadFAfter,s6Step131HeadGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step131HeadGvBefore s6Step131HeadGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,842),(843,849),(851,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) s6Step131HeadGvFresh rfl rfl
    · norm_num [s6Step131HeadGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step131HeadGv_checked : planRowResizeLog s6Step131HeadGvBefore s6Step131HeadGvRow 80 s6Step131HeadGvFresh=
    some (s6Step131HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 838],775⟩,growRow 775 s6Step131HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step131HeadGvBefore s6Step131HeadGvAfter s6Step131HeadGvRow 80 s6Step131HeadGvFresh
    s6Step131HeadGv_distinct s6Step131HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step131HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step131HeadGvRow.payload++s6Step131HeadGvFresh) s6Step131HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 838],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step131HeadBank_rows : planWindowRowsLog s6Step131HeadGBefore [(s6Step131HeadGRow,204),(s6Step131HeadFRow,204),(s6Step131HeadGvRow,80),(s6Step131HeadFvRow,80)] [s6Step131HeadGFresh,s6Step131HeadFFresh,s6Step131HeadGvFresh,s6Step131HeadFvFresh]=
    some (s6Step131HeadFvAfter,[s6Step131HeadGOut,s6Step131HeadFOut,s6Step131HeadGvOut,s6Step131HeadFvOut],(growRow 777 s6Step131HeadGFresh ++ (growRow 795 s6Step131HeadFFresh ++ (growRow 775 s6Step131HeadGvFresh ++ (growRow 776 s6Step131HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step131HeadFvAfter [] []=some (s6Step131HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step131HeadFvBefore s6Step131HeadFvAfter s6Step131HeadFvAfter
    s6Step131HeadFvRow s6Step131HeadFvOut 80 s6Step131HeadFvFresh [] [] []
    (growRow 776 s6Step131HeadFvFresh) ([]) s6Step131HeadFv_Incoming s6Step131HeadFv_checked h4 s6Step131HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step131HeadGvBefore s6Step131HeadGvAfter s6Step131HeadFvAfter
    s6Step131HeadGvRow s6Step131HeadGvOut 80 s6Step131HeadGvFresh [(s6Step131HeadFvRow,80)] [s6Step131HeadFvFresh] [s6Step131HeadFvOut]
    (growRow 775 s6Step131HeadGvFresh) ((growRow 776 s6Step131HeadFvFresh ++ [])) s6Step131HeadGv_Incoming s6Step131HeadGv_checked h3 s6Step131HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step131HeadFBefore s6Step131HeadFAfter s6Step131HeadFvAfter
    s6Step131HeadFRow s6Step131HeadFOut 204 s6Step131HeadFFresh [(s6Step131HeadGvRow,80),(s6Step131HeadFvRow,80)] [s6Step131HeadGvFresh,s6Step131HeadFvFresh] [s6Step131HeadGvOut,s6Step131HeadFvOut]
    (growRow 795 s6Step131HeadFFresh) ((growRow 775 s6Step131HeadGvFresh ++ (growRow 776 s6Step131HeadFvFresh ++ []))) s6Step131HeadF_Incoming s6Step131HeadF_checked h2 s6Step131HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step131HeadGBefore s6Step131HeadGAfter s6Step131HeadFvAfter
    s6Step131HeadGRow s6Step131HeadGOut 204 s6Step131HeadGFresh [(s6Step131HeadFRow,204),(s6Step131HeadGvRow,80),(s6Step131HeadFvRow,80)] [s6Step131HeadFFresh,s6Step131HeadGvFresh,s6Step131HeadFvFresh] [s6Step131HeadFOut,s6Step131HeadGvOut,s6Step131HeadFvOut]
    (growRow 777 s6Step131HeadGFresh) ((growRow 795 s6Step131HeadFFresh ++ (growRow 775 s6Step131HeadGvFresh ++ (growRow 776 s6Step131HeadFvFresh ++ [])))) s6Step131HeadG_Incoming s6Step131HeadG_checked h1 s6Step131HeadG_Outgoing
  exact h0

private theorem s6Step131HeadBank_checked : compileHmrBankResizeLog .headroom s6Step131HeadGBefore ⟨s6Step131HeadFRow,s6Step131HeadGRow,s6Step131HeadFvRow,s6Step131HeadGvRow⟩ ⟨204,204,80,80⟩ [s6Step131HeadGFresh,s6Step131HeadFFresh,s6Step131HeadGvFresh,s6Step131HeadFvFresh]=
    some (s6Step131HeadFvAfter,⟨s6Step131HeadFOut,s6Step131HeadGOut,s6Step131HeadFvOut,s6Step131HeadGvOut⟩,(growRow 777 s6Step131HeadGFresh ++ (growRow 795 s6Step131HeadFFresh ++ (growRow 775 s6Step131HeadGvFresh ++ (growRow 776 s6Step131HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step131HeadBank_rows]
  rfl

private theorem s6Step131Front_checked : compileHmrSourceFrontLog s6Step131EntryFBefore s6Step131FrontBank 203 79 ⟨203,202,79,79⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step131FrontLog=some s6Step131FrontPlan := by
  have pairEq : s6Step131FrontPair=⟨s6Step131HeadFRow,s6Step131HeadGRow,s6Step131HeadFvRow,s6Step131HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step131FrontHead=⟨s6Step131ExitFRow,s6Step131ExitGRow,s6Step131ExitFvRow,s6Step131ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step131Add0A=s6Step131FrontHead.f.wires := by decide +kernel
  have gEq : s6Step131Add0B=s6Step131FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step131Add1A=s6Step131FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step131Add1B=s6Step131FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step131EntryFBefore s6Step131FrontBank 203 79 ⟨203,202,79,79⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step131FrontLog s6Step131FrontPlan
  · exact s6Step131Front_entry
  · exact s6Step131EntryBank_checked
  · exact s6Step131Front_sigma
  · rfl
  · exact s6Step131Front_branch
  · rfl
  · simpa only [s6Step131FrontPlan,pairEq] using s6Step131HeadBank_checked
  · simpa only [s6Step131FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step131F4_checked
  · exact s6Step131Counter_checked
  · rfl
  · simpa only [s6Step131FrontPlan,headEq] using s6Step131ExitBank_checked

private theorem s6Step131Complete_explicit_checked : compileHmrEarlyStepLog s6Step131EntryFBefore s6Step131FrontBank 203 79 ⟨203,202,79,79⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 37 s6Step131CompleteLog=some s6Step131CompletePlan := by
  let Q := s6Step131EarlyControlPlan
  have hq := s6Step131EarlyControl_plan_checked
  have fv1 : s6Step131CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step131CompleteOut.fv.payload[2]?.getD s6Step131CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step131CompleteOut.fv.payload[3]?.getD s6Step131CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step131CompleteOut.fv.payload[4]?.getD s6Step131CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step131EntryFBefore s6Step131EarlyControlArena s6Step131FrontBank 203 79 ⟨203,202,79,79⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 37 s6Step131CompleteLog s6Step131FrontPlan Q
    s6Step131Front_checked s6Step131Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step131Complete_owned s6Step131Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step131EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 769 839 s6Step131CompleteOut.fv.second (s6Step131CompleteOut.fv.payload[2]?.getD s6Step131CompleteOut.fv.sign) (s6Step131CompleteOut.fv.payload[3]?.getD s6Step131CompleteOut.fv.sign) (s6Step131CompleteOut.fv.payload[4]?.getD s6Step131CompleteOut.fv.sign) 854 37 s6Step131EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep131Arena : Arena := s6Step131EntryFBefore
def s6PrivateStep131Bank : WindowBank := s6Step131FrontBank
def s6PrivateStep131Spec : HmrSourceWalkStepLog := ⟨203,79,⟨203,202,79,79⟩,37,.early s6Step131CompleteLog⟩
def s6PrivateStep131Plan : HmrSourceStepPlan := .early s6Step131CompletePlan
theorem s6PrivateStep131_source : s6PrivateStep131Spec=s6ObservedLogs128[3] := rfl
theorem s6PrivateStep131_checked : compileHmrSourceStepLog s6PrivateStep131Arena s6PrivateStep131Bank
    s6PrivateStep131Spec.fgWidth s6PrivateStep131Spec.vWidth s6PrivateStep131Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844]
    6 498 131 s6PrivateStep131Spec.need none s6PrivateStep131Spec.log=some s6PrivateStep131Plan := by
  change compileHmrSourceStepLog s6Step131EntryFBefore s6Step131FrontBank 203 79 ⟨203,202,79,79⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 6 498 131 37 none (.early s6Step131CompleteLog)=some (.early s6Step131CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 131<498)]
  rw [s6Step131Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
