import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep118
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

private def s6Step120CompleteMoves : List (Wire × Wire) := [(830,208)]

private def s6Step120EarlyControlLog : HmrEarlyControlLog := ⟨[830, 888, 868, 833, 882],[813],[865],[796, 891, 903, 791, 825, 836],[]⟩

private def s6Step120FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [882], [], [888]],[[813], [833], [868], [879]],[[], [], [], []]⟩,[875],[880],[865],[796],[891, 903, 791, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[891, 903, 791, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[865, 796, 891, 903]⟩

private def s6Step120CompleteLog : HmrEarlyStepLog := ⟨s6Step120FrontLog,s6Step120CompleteMoves,s6Step120EarlyControlLog⟩

private def s6Step120ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465],795⟩

private def s6Step120ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 879],776⟩

private def s6Step120ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207],777⟩

private def s6Step120ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907],775⟩

private def s6Step120FrontOut : WindowBank := ⟨s6Step120ExitFOut,s6Step120ExitGOut,s6Step120ExitFvOut,s6Step120ExitGvOut⟩

private def s6Step120CompleteOut : WindowBank := s6Step120FrontOut.repacked s6Step120CompleteMoves

private def s6Step120EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,830),(831,832),(835,836),(837,842),(843,849),(850,865),(866,868),(869,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step120EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step120EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step120EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step120EarlyControlPositiveArena,[813],s6Step120EarlyControlEqualityArena,[865],⟨⟨875,false⟩,[⟨⟨813,false⟩,865⟩]⟩⟩

private def s6Step120EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step120EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step120EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,830),(831,832),(835,836),(837,842),(843,849),(850,865),(866,868),(869,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step120EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,830),(831,832),(835,836),(837,842),(843,849),(850,865),(866,868),(869,875),(876,880),(881,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step120EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,830),(831,832),(835,836),(837,842),(843,849),(850,865),(866,868),(869,875),(876,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step120EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step120EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,830⟩,⟨⟨772,false⟩,888⟩,⟨⟨771,false⟩,868⟩,⟨⟨770,false⟩,833⟩,⟨⟨769,false⟩,882⟩]⟩

private def s6Step120EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step120EarlyControlZeroArena,s6Step120EarlyControlZeroPlan,s6Step120EarlyControlClassPlan,s6Step120EarlyControlFlagArena,s6Step120EarlyControlFittedArena,s6Step120EarlyControlHistoryArena,s6Step120EarlyControlSigmaArena,s6Step120EarlyControlOutputArena,s6Step120EarlyControlLog⟩

private def s6Step120CounterWork : List Wire := [865, 796, 891, 903]

private theorem s6Step120Counter_bounded : s6Step120CounterWork.toFinset⊆arenaWires := by norm_num [s6Step120CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step120HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step120CounterDuring : Arena := ⟨s6Step120HeadFvAfter.live∪s6Step120CounterWork.toFinset,Finset.union_subset s6Step120HeadFvAfter.bounded s6Step120Counter_bounded⟩

private def s6Step120EntryFFresh : List Wire := []

private def s6Step120EntryFvFresh : List Wire := []

private def s6Step120EntryGFresh : List Wire := [882]

private def s6Step120EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step120EntryGvFresh : List Wire := [888]

private def s6Step120ExitFExtra : List Wire := [833]

private def s6Step120ExitGExtra : List Wire := [208, 882, 813]

private def s6Step120ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,208),(209,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(835,836),(837,842),(843,849),(850,865),(866,868),(869,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step120ExitGvExtra : List Wire := [888, 868]

private def s6Step120Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step120Add0Work : List Wire := [891, 903, 791, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step120Add0_bounded : s6Step120Add0Work.toFinset⊆arenaWires := by
  have h : s6Step120Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step120Add0During : Arena := ⟨s6Step120Add0Arena.live∪s6Step120Add0Work.toFinset,Finset.union_subset s6Step120Add0Arena.bounded s6Step120Add0_bounded⟩

private def s6Step120Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step120Add1Work : List Wire := [891, 903, 791, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step120Add1_bounded : s6Step120Add1Work.toFinset⊆arenaWires := by
  have h : s6Step120Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step120Add1During : Arena := ⟨s6Step120Add1Arena.live∪s6Step120Add1Work.toFinset,Finset.union_subset s6Step120Add1Arena.bounded s6Step120Add1_bounded⟩

private def s6Step120F4FlagArena : Arena := ⟨s6Step120HeadFvAfter.live∪{865},Finset.union_subset s6Step120HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step120F4Plan : HmrHybridF4Plan := ⟨s6Step120F4FlagArena,[865],s6Step120Add0Arena,[796],s6Step120Add0During,s6Step120Add0Work,s6Step120Add1During,s6Step120Add1Work⟩

private def s6Step120HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 833],795⟩

private def s6Step120HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 879],776⟩

private def s6Step120HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 882, 813],777⟩

private def s6Step120HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 888, 868],775⟩

private def s6Step120FrontHead : WindowBank := ⟨s6Step120HeadFOut,s6Step120HeadGOut,s6Step120HeadFvOut,s6Step120HeadGvOut⟩

private def s6Step120EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465],795⟩

private def s6Step120EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778],776⟩

private def s6Step120EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 882],777⟩

private def s6Step120EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 888],775⟩

private def s6Step120FrontPair : WindowBank := ⟨s6Step120EntryFOut,s6Step120EntryGOut,s6Step120EntryFvOut,s6Step120EntryGvOut⟩

private def s6Step120FrontSigmaArena : Arena := ⟨s6Step120EntryGvAfter.live∪{875},Finset.union_subset s6Step120EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step120HeadFFresh : List Wire := [833]

private def s6Step120HeadFvFresh : List Wire := [879]

private def s6Step120HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step120HeadGFresh : List Wire := [813]

private def s6Step120HeadGvFresh : List Wire := [868]

private def s6Step120FrontPlan : HmrSourceFront := ⟨s6Step120EntryGvAfter,s6Step120FrontPair,(growRow 795 s6Step120EntryFFresh ++ (growRow 777 s6Step120EntryGFresh ++ (growRow 776 s6Step120EntryFvFresh ++ (growRow 775 s6Step120EntryGvFresh ++ [])))),s6Step120FrontSigmaArena,[875],s6Step120HeadGBefore,[880],
  s6Step120HeadFvAfter,s6Step120FrontHead,(growRow 777 s6Step120HeadGFresh ++ (growRow 795 s6Step120HeadFFresh ++ (growRow 775 s6Step120HeadGvFresh ++ (growRow 776 s6Step120HeadFvFresh ++ [])))),s6Step120F4Plan,s6Step120CounterDuring,s6Step120CounterWork,s6Step120ExitGvAfter,s6Step120FrontOut,(shrinkRow 777 s6Step120ExitGExtra ++ (shrinkRow 795 s6Step120ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step120ExitGvExtra ++ []))))⟩

private def s6Step120CompletePlan : HmrEarlyStepPlan := ⟨s6Step120FrontPlan,s6Step120EarlyControlArena,s6Step120EarlyControlPlan,s6Step120CompleteMoves⟩

private theorem s6Step120Complete_apart : List.Disjoint (s6Step120CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [875, 880, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] := by
  have nd : ((s6Step120CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[875, 880, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step120Complete_owned : (s6Step120CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step120EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step120EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,830),(831,832),(835,836),(837,842),(843,849),(850,865),(866,868),(869,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private def s6Step120CompleteRelocationMove0Borrowed : Arena := ⟨s6Step120ExitGvAfter.live∪{208},Finset.union_subset s6Step120ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step120CompleteRelocation_move0_owned : 830∈s6Step120ExitGvAfter.live := by norm_num [s6Step120ExitGvAfter,arenaWires]

private theorem s6Step120CompleteRelocation_move0_reserve : s6Step120ExitGvAfter.reserve {208}=some s6Step120CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step120ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step120CompleteRelocation_move0_retire : s6Step120CompleteRelocationMove0Borrowed.retireSet {830}=s6Step120EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step120CompleteRelocationMove0Borrowed s6Step120EarlyControlArena {830}
  change s6Step120EarlyControlArena.live=(s6Step120ExitGvAfter.live∪{208})\{830}
  apply hmrArena_update_of_filter_check s6Step120ExitGvAfter s6Step120EarlyControlArena (fun q => ([(0,208),(209,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(835,836),(837,842),(843,849),(850,865),(866,868),(869,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,830),(831,832),(835,836),(837,842),(843,849),(850,865),(866,868),(869,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [208] [830] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step120CompleteRelocation_checked : s6Step120ExitGvAfter.checkRepack [(830,208)]=some s6Step120EarlyControlArena := by
  have tail1 : s6Step120EarlyControlArena.checkRepack []=some s6Step120EarlyControlArena := rfl
  have tail0 := Arena.checkRepack_cons_of_parts s6Step120ExitGvAfter s6Step120CompleteRelocationMove0Borrowed s6Step120EarlyControlArena s6Step120EarlyControlArena 830 208 []
    s6Step120CompleteRelocation_move0_owned s6Step120CompleteRelocation_move0_reserve s6Step120CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step120Complete_repack : s6Step120ExitGvAfter.checkRepack s6Step120CompleteMoves=some s6Step120EarlyControlArena := by
  simpa only [s6Step120CompleteMoves] using s6Step120CompleteRelocation_checked

private theorem s6Step120EarlyControl_branchOwned : ([880] : List Wire).toFinset⊆s6Step120EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step120EarlyControlSigmaArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,830),(831,832),(835,836),(837,842),(843,849),(850,865),(866,868),(869,875),(876,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step120EarlyControl_branch : compileHmrBranchRetirement s6Step120EarlyControlSigmaArena 880=some s6Step120EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step120EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step120EarlyControlSigmaArena s6Step120EarlyControlOutputArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,830),(831,832),(835,836),(837,842),(843,849),(850,865),(866,868),(869,875),(876,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,830),(831,832),(835,836),(837,842),(843,849),(850,865),(866,868),(869,875),(876,880),(881,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [880] rfl rfl
    decide +kernel

private theorem s6Step120EarlyControl_classEqualityBorrow : s6Step120EarlyControlPositiveArena.checkBorrow (([875, 813] : List Wire).length-1) s6Step120EarlyControlLog.classWork=some s6Step120EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step120EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step120EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step120EarlyControlEqualityArena,s6Step120EarlyControlPositiveArena,s6Step120EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step120EarlyControl_classEqualityOwned : ([875, 813] : List Wire).toFinset⊆s6Step120EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step120EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step120EarlyControl_classEquality : compileHmrEqualityLog s6Step120EarlyControlPositiveArena [875, 813] 0 s6Step120EarlyControlLog.classWork=some (s6Step120EarlyControlEqualityArena,s6Step120EarlyControlLog.classWork,s6Step120EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step120EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step120EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step120EarlyControl_classOwned : ([769, 882, 875] : List Wire).toFinset⊆s6Step120EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step120EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step120EarlyControl_positiveBorrow : s6Step120EarlyControlZeroArena.checkBorrow (1) s6Step120EarlyControlLog.positiveWork=some s6Step120EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step120EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step120EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step120EarlyControlPositiveArena,s6Step120EarlyControlZeroArena,s6Step120EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step120EarlyControl_class : compileHmrSourceClassLog s6Step120EarlyControlZeroArena false 769 s6Step120EarlyControlZeroPlan.top 0 875 s6Step120EarlyControlLog.positiveWork s6Step120EarlyControlLog.classWork=some s6Step120EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step120EarlyControlClassPlan s6Step120EarlyControlZeroArena false 769 s6Step120EarlyControlZeroPlan.top 0 875
  constructor
  · decide +kernel
  · exact s6Step120EarlyControl_classOwned
  · exact s6Step120EarlyControl_positiveBorrow
  · exact s6Step120EarlyControl_classEquality

private theorem s6Step120EarlyControl_entryRecordOwned : ([880, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).toFinset⊆s6Step120EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step120EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,830),(831,832),(835,836),(837,842),(843,849),(850,865),(866,868),(869,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step120EarlyControl_entrySigmaOwned : ([875, 254] : List Wire).toFinset⊆s6Step120EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step120EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,830),(831,832),(835,836),(837,842),(843,849),(850,865),(866,868),(869,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step120EarlyControl_fitBorrow : s6Step120EarlyControlFlagArena.checkBorrow ((37-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).length)) s6Step120EarlyControlLog.recordFresh=some s6Step120EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step120EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step120EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step120EarlyControlFittedArena,s6Step120EarlyControlFlagArena,s6Step120EarlyControlLog,arenaWires]

private theorem s6Step120EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).toFinset⊆s6Step120EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step120EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step120EarlyControl_fit : compileHmrRecordGrowLog s6Step120EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 37 s6Step120EarlyControlLog.recordFresh=some s6Step120EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step120EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step120EarlyControl_fitBorrow

private theorem s6Step120EarlyControl_flagsBorrow : s6Step120EarlyControlEqualityArena.checkBorrow (6) s6Step120EarlyControlLog.flagWork=some s6Step120EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step120EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step120EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step120EarlyControlFlagArena,s6Step120EarlyControlEqualityArena,s6Step120EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step120EarlyControl_flagsOwned : ([865, 253, 252, 251] : List Wire).toFinset⊆s6Step120EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step120EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step120EarlyControl_flags : compileHmrFlagsLog s6Step120EarlyControlClassPlan.equalityArena s6Step120EarlyControlClassPlan.equality.top 253 252 251 s6Step120EarlyControlLog.flagWork=some s6Step120EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step120EarlyControl_flagsOwned⟩
  · exact s6Step120EarlyControl_flagsBorrow

private theorem s6Step120EarlyControl_historyBorrow : s6Step120EarlyControlArena.checkBorrow ((37-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).length)) s6Step120EarlyControlLog.recordFresh=some s6Step120EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step120EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step120EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,830),(831,832),(835,836),(837,842),(843,849),(850,865),(866,868),(869,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step120EarlyControlArena s6Step120EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,830),(831,832),(835,836),(837,842),(843,849),(850,865),(866,868),(869,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,830),(831,832),(835,836),(837,842),(843,849),(850,865),(866,868),(869,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step120EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step120EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step120EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).toFinset⊆s6Step120EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step120EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,830),(831,832),(835,836),(837,842),(843,849),(850,865),(866,868),(869,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step120EarlyControl_history : compileHmrRecordGrowLog s6Step120EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 37 s6Step120EarlyControlLog.recordFresh=some s6Step120EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step120EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step120EarlyControl_historyBorrow

private theorem s6Step120EarlyControl_sigmaOwned : ([254, 875] : List Wire).toFinset⊆s6Step120EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step120EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,830),(831,832),(835,836),(837,842),(843,849),(850,865),(866,868),(869,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step120EarlyControl_sigmaReleaseOwned : ([875] : List Wire).toFinset⊆s6Step120EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step120EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,830),(831,832),(835,836),(837,842),(843,849),(850,865),(866,868),(869,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step120EarlyControl_sigmaRelease : s6Step120EarlyControlHistoryArena.release {875} (fun _ => false)=some s6Step120EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step120EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step120EarlyControlHistoryArena s6Step120EarlyControlSigmaArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,830),(831,832),(835,836),(837,842),(843,849),(850,865),(866,868),(869,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,830),(831,832),(835,836),(837,842),(843,849),(850,865),(866,868),(869,875),(876,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [875] rfl rfl
    decide +kernel

private theorem s6Step120EarlyControl_sigma : compileHmrSigmaDropLog s6Step120EarlyControlHistoryArena false 0 0 254 875 []=some s6Step120EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step120EarlyControl_sigmaOwned⟩
  · exact s6Step120EarlyControl_sigmaRelease

private theorem s6Step120EarlyControl_zeroBorrow : s6Step120EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step120EarlyControlLog.zeroWork=some s6Step120EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step120EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step120EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,830),(831,832),(835,836),(837,842),(843,849),(850,865),(866,868),(869,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step120EarlyControlArena s6Step120EarlyControlZeroArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,830),(831,832),(835,836),(837,842),(843,849),(850,865),(866,868),(869,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) s6Step120EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step120EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step120EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step120EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step120EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,830),(831,832),(835,836),(837,842),(843,849),(850,865),(866,868),(869,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step120EarlyControl_zero : compileHmrEqualityLog s6Step120EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step120EarlyControlLog.zeroWork=some (s6Step120EarlyControlZeroArena,s6Step120EarlyControlLog.zeroWork,s6Step120EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step120EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step120EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step120EarlyControl_logged : s6Step120EarlyControlPlan.Logged s6Step120EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 769 875 254 253 252 251 880 37 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step120EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step120EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step120EarlyControl_zero
  · exact s6Step120EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step120EarlyControl_flags
  · exact s6Step120EarlyControl_fit
  · exact s6Step120EarlyControl_history
  · exact s6Step120EarlyControl_sigma
  · exact s6Step120EarlyControl_branch

private theorem s6Step120EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step120EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 769 875 254 253 252 251 880 37 s6Step120EarlyControlLog=some s6Step120EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step120EarlyControlPlan s6Step120EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 769 875 254 253 252 251 880 37 s6Step120EarlyControl_logged

private def s6Step120EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(835,836),(837,842),(843,849),(850,865),(866,868),(869,875),(876,879),(881,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step120EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465],795⟩

private def s6Step120EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778],776⟩

private def s6Step120EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208],777⟩

private def s6Step120EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907],775⟩

private def s6Step120FrontBank : WindowBank := ⟨s6Step120EntryFRow,s6Step120EntryGRow,s6Step120EntryFvRow,s6Step120EntryGvRow⟩

private def s6Step120Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 833, 795]

private def s6Step120Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 882, 813, 777]

private def s6Step120Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 879, 776]

private def s6Step120Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 888, 868, 775]

private theorem s6Step120Counter_apart : Disjoint s6Step120HeadFvAfter.live s6Step120CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step120HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step120Counter_borrowed : s6Step120HeadFvAfter.checkBorrow 4 s6Step120CounterWork=some s6Step120CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step120HeadFvAfter s6Step120CounterDuring s6Step120CounterWork.toFinset s6Step120Counter_bounded s6Step120Counter_apart rfl

private theorem s6Step120Counter_owned : (875::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step120HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step120HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step120Counter_checked : compileHmrCounterStepLog s6Step120HeadFvAfter true 875 [774, 773, 772, 771, 770, 769] s6Step120CounterWork=some s6Step120CounterDuring := by
  have owned : ∀q∈875::[774, 773, 772, 771, 770, 769],q∈s6Step120HeadFvAfter.live := fun q hq => s6Step120Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step120Counter_borrowed

private def s6Step120EntryFAfter : Arena := s6Step120EntryFBefore

private theorem s6Step120EntryBank_incomingDistinct : ([s6Step120EntryFRow,s6Step120EntryGRow,s6Step120EntryFvRow,s6Step120EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step120EntryF_Incoming : rowsOwned s6Step120EntryFBefore [s6Step120EntryFRow,s6Step120EntryGRow,s6Step120EntryFvRow,s6Step120EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step120EntryFRow,s6Step120EntryGRow,s6Step120EntryFvRow,s6Step120EntryGvRow] 0 s6Step120EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step120EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(835,836),(837,842),(843,849),(850,865),(866,868),(869,875),(876,879),(881,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step120EntryBank_outgoingOwned : rowsOwned s6Step120EntryGvAfter [s6Step120EntryFOut,s6Step120EntryGOut,s6Step120EntryFvOut,s6Step120EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step120EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step120EntryF_Outgoing : rowsOwned s6Step120EntryGvAfter [s6Step120EntryFOut,s6Step120EntryGOut,s6Step120EntryFvOut,s6Step120EntryGvOut] :=
  hmrRows_owned_drop s6Step120EntryGvAfter [s6Step120EntryFOut,s6Step120EntryGOut,s6Step120EntryFvOut,s6Step120EntryGvOut] 0 s6Step120EntryBank_outgoingOwned

private theorem s6Step120EntryF_distinct : (s6Step120EntryFRow.sign::s6Step120EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step120EntryF_owned : (s6Step120EntryFRow.sign::s6Step120EntryFRow.payload).toFinset⊆s6Step120EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step120EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(835,836),(837,842),(843,849),(850,865),(866,868),(869,875),(876,879),(881,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step120EntryF_reserved : s6Step120EntryFBefore.reserve s6Step120EntryFFresh.toFinset=some s6Step120EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step120EntryFFresh,arenaWires]
  · norm_num [s6Step120EntryFBefore,s6Step120EntryFFresh,arenaWires]
  · simp only [s6Step120EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step120EntryF_checked : planRowResizeLog s6Step120EntryFBefore s6Step120EntryFRow 210 s6Step120EntryFFresh=
    some (s6Step120EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465],795⟩,growRow 795 s6Step120EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step120EntryFBefore s6Step120EntryFAfter s6Step120EntryFRow 210 s6Step120EntryFFresh
    s6Step120EntryF_distinct s6Step120EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step120EntryF_reserved
  have rowEq : WindowRow.mk (s6Step120EntryFRow.payload++s6Step120EntryFFresh) s6Step120EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step120EntryGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(835,836),(837,842),(843,849),(850,865),(866,868),(869,875),(876,879),(881,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step120EntryFvAfter : Arena := s6Step120EntryGAfter

private def s6Step120EntryFvBefore : Arena := s6Step120EntryGAfter

private theorem s6Step120EntryFv_Incoming : rowsOwned s6Step120EntryFvBefore [s6Step120EntryFvRow,s6Step120EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step120EntryFRow,s6Step120EntryGRow,s6Step120EntryFvRow,s6Step120EntryGvRow] 2 s6Step120EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step120EntryFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(835,836),(837,842),(843,849),(850,865),(866,868),(869,875),(876,879),(881,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step120EntryFv_Outgoing : rowsOwned s6Step120EntryGvAfter [s6Step120EntryFvOut,s6Step120EntryGvOut] :=
  hmrRows_owned_drop s6Step120EntryGvAfter [s6Step120EntryFOut,s6Step120EntryGOut,s6Step120EntryFvOut,s6Step120EntryGvOut] 2 s6Step120EntryBank_outgoingOwned

private theorem s6Step120EntryFv_distinct : (s6Step120EntryFvRow.sign::s6Step120EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step120EntryFv_owned : (s6Step120EntryFvRow.sign::s6Step120EntryFvRow.payload).toFinset⊆s6Step120EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step120EntryFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(835,836),(837,842),(843,849),(850,865),(866,868),(869,875),(876,879),(881,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step120EntryFv_reserved : s6Step120EntryFvBefore.reserve s6Step120EntryFvFresh.toFinset=some s6Step120EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step120EntryFvFresh,arenaWires]
  · norm_num [s6Step120EntryFvBefore,s6Step120EntryGAfter,s6Step120EntryFvFresh,arenaWires]
  · simp only [s6Step120EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step120EntryFv_checked : planRowResizeLog s6Step120EntryFvBefore s6Step120EntryFvRow 74 s6Step120EntryFvFresh=
    some (s6Step120EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778],776⟩,growRow 776 s6Step120EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step120EntryFvBefore s6Step120EntryFvAfter s6Step120EntryFvRow 74 s6Step120EntryFvFresh
    s6Step120EntryFv_distinct s6Step120EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step120EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step120EntryFvRow.payload++s6Step120EntryFvFresh) s6Step120EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step120EntryGBefore : Arena := s6Step120EntryFBefore

private theorem s6Step120EntryG_Incoming : rowsOwned s6Step120EntryGBefore [s6Step120EntryGRow,s6Step120EntryFvRow,s6Step120EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step120EntryFRow,s6Step120EntryGRow,s6Step120EntryFvRow,s6Step120EntryGvRow] 1 s6Step120EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step120EntryGBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(835,836),(837,842),(843,849),(850,865),(866,868),(869,875),(876,879),(881,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step120EntryG_Outgoing : rowsOwned s6Step120EntryGvAfter [s6Step120EntryGOut,s6Step120EntryFvOut,s6Step120EntryGvOut] :=
  hmrRows_owned_drop s6Step120EntryGvAfter [s6Step120EntryFOut,s6Step120EntryGOut,s6Step120EntryFvOut,s6Step120EntryGvOut] 1 s6Step120EntryBank_outgoingOwned

private theorem s6Step120EntryG_distinct : (s6Step120EntryGRow.sign::s6Step120EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step120EntryG_owned : (s6Step120EntryGRow.sign::s6Step120EntryGRow.payload).toFinset⊆s6Step120EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step120EntryGBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(835,836),(837,842),(843,849),(850,865),(866,868),(869,875),(876,879),(881,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step120EntryG_reserved : s6Step120EntryGBefore.reserve s6Step120EntryGFresh.toFinset=some s6Step120EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step120EntryGFresh,arenaWires]
  · norm_num [s6Step120EntryGBefore,s6Step120EntryFBefore,s6Step120EntryGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step120EntryGBefore s6Step120EntryGAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(835,836),(837,842),(843,849),(850,865),(866,868),(869,875),(876,879),(881,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(835,836),(837,842),(843,849),(850,865),(866,868),(869,875),(876,879),(881,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step120EntryGFresh rfl rfl
    · norm_num [s6Step120EntryGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step120EntryG_checked : planRowResizeLog s6Step120EntryGBefore s6Step120EntryGRow 210 s6Step120EntryGFresh=
    some (s6Step120EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 882],777⟩,growRow 777 s6Step120EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step120EntryGBefore s6Step120EntryGAfter s6Step120EntryGRow 210 s6Step120EntryGFresh
    s6Step120EntryG_distinct s6Step120EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step120EntryG_reserved
  have rowEq : WindowRow.mk (s6Step120EntryGRow.payload++s6Step120EntryGFresh) s6Step120EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 882],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step120EntryGvBefore : Arena := s6Step120EntryGAfter

private theorem s6Step120EntryGv_Incoming : rowsOwned s6Step120EntryGvBefore [s6Step120EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step120EntryFRow,s6Step120EntryGRow,s6Step120EntryFvRow,s6Step120EntryGvRow] 3 s6Step120EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step120EntryGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(835,836),(837,842),(843,849),(850,865),(866,868),(869,875),(876,879),(881,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step120EntryGv_Outgoing : rowsOwned s6Step120EntryGvAfter [s6Step120EntryGvOut] :=
  hmrRows_owned_drop s6Step120EntryGvAfter [s6Step120EntryFOut,s6Step120EntryGOut,s6Step120EntryFvOut,s6Step120EntryGvOut] 3 s6Step120EntryBank_outgoingOwned

private theorem s6Step120EntryGv_distinct : (s6Step120EntryGvRow.sign::s6Step120EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step120EntryGv_owned : (s6Step120EntryGvRow.sign::s6Step120EntryGvRow.payload).toFinset⊆s6Step120EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step120EntryGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(835,836),(837,842),(843,849),(850,865),(866,868),(869,875),(876,879),(881,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step120EntryGv_reserved : s6Step120EntryGvBefore.reserve s6Step120EntryGvFresh.toFinset=some s6Step120EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step120EntryGvFresh,arenaWires]
  · norm_num [s6Step120EntryGvBefore,s6Step120EntryGAfter,s6Step120EntryGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step120EntryGvBefore s6Step120EntryGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(835,836),(837,842),(843,849),(850,865),(866,868),(869,875),(876,879),(881,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) s6Step120EntryGvFresh rfl rfl
    · norm_num [s6Step120EntryGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step120EntryGv_checked : planRowResizeLog s6Step120EntryGvBefore s6Step120EntryGvRow 74 s6Step120EntryGvFresh=
    some (s6Step120EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 888],775⟩,growRow 775 s6Step120EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step120EntryGvBefore s6Step120EntryGvAfter s6Step120EntryGvRow 74 s6Step120EntryGvFresh
    s6Step120EntryGv_distinct s6Step120EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step120EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step120EntryGvRow.payload++s6Step120EntryGvFresh) s6Step120EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 888],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step120EntryBank_rows : planWindowRowsLog s6Step120EntryFBefore [(s6Step120EntryFRow,210),(s6Step120EntryGRow,210),(s6Step120EntryFvRow,74),(s6Step120EntryGvRow,74)] [s6Step120EntryFFresh,s6Step120EntryGFresh,s6Step120EntryFvFresh,s6Step120EntryGvFresh]=
    some (s6Step120EntryGvAfter,[s6Step120EntryFOut,s6Step120EntryGOut,s6Step120EntryFvOut,s6Step120EntryGvOut],(growRow 795 s6Step120EntryFFresh ++ (growRow 777 s6Step120EntryGFresh ++ (growRow 776 s6Step120EntryFvFresh ++ (growRow 775 s6Step120EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step120EntryGvAfter [] []=some (s6Step120EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step120EntryGvBefore s6Step120EntryGvAfter s6Step120EntryGvAfter
    s6Step120EntryGvRow s6Step120EntryGvOut 74 s6Step120EntryGvFresh [] [] []
    (growRow 775 s6Step120EntryGvFresh) ([]) s6Step120EntryGv_Incoming s6Step120EntryGv_checked h4 s6Step120EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step120EntryFvBefore s6Step120EntryFvAfter s6Step120EntryGvAfter
    s6Step120EntryFvRow s6Step120EntryFvOut 74 s6Step120EntryFvFresh [(s6Step120EntryGvRow,74)] [s6Step120EntryGvFresh] [s6Step120EntryGvOut]
    (growRow 776 s6Step120EntryFvFresh) ((growRow 775 s6Step120EntryGvFresh ++ [])) s6Step120EntryFv_Incoming s6Step120EntryFv_checked h3 s6Step120EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step120EntryGBefore s6Step120EntryGAfter s6Step120EntryGvAfter
    s6Step120EntryGRow s6Step120EntryGOut 210 s6Step120EntryGFresh [(s6Step120EntryFvRow,74),(s6Step120EntryGvRow,74)] [s6Step120EntryFvFresh,s6Step120EntryGvFresh] [s6Step120EntryFvOut,s6Step120EntryGvOut]
    (growRow 777 s6Step120EntryGFresh) ((growRow 776 s6Step120EntryFvFresh ++ (growRow 775 s6Step120EntryGvFresh ++ []))) s6Step120EntryG_Incoming s6Step120EntryG_checked h2 s6Step120EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step120EntryFBefore s6Step120EntryFAfter s6Step120EntryGvAfter
    s6Step120EntryFRow s6Step120EntryFOut 210 s6Step120EntryFFresh [(s6Step120EntryGRow,210),(s6Step120EntryFvRow,74),(s6Step120EntryGvRow,74)] [s6Step120EntryGFresh,s6Step120EntryFvFresh,s6Step120EntryGvFresh] [s6Step120EntryGOut,s6Step120EntryFvOut,s6Step120EntryGvOut]
    (growRow 795 s6Step120EntryFFresh) ((growRow 777 s6Step120EntryGFresh ++ (growRow 776 s6Step120EntryFvFresh ++ (growRow 775 s6Step120EntryGvFresh ++ [])))) s6Step120EntryF_Incoming s6Step120EntryF_checked h1 s6Step120EntryF_Outgoing
  exact h0

private theorem s6Step120EntryBank_checked : compileHmrBankResizeLog .entry s6Step120EntryFBefore ⟨s6Step120EntryFRow,s6Step120EntryGRow,s6Step120EntryFvRow,s6Step120EntryGvRow⟩ ⟨210,210,74,74⟩ [s6Step120EntryFFresh,s6Step120EntryGFresh,s6Step120EntryFvFresh,s6Step120EntryGvFresh]=
    some (s6Step120EntryGvAfter,⟨s6Step120EntryFOut,s6Step120EntryGOut,s6Step120EntryFvOut,s6Step120EntryGvOut⟩,(growRow 795 s6Step120EntryFFresh ++ (growRow 777 s6Step120EntryGFresh ++ (growRow 776 s6Step120EntryFvFresh ++ (growRow 775 s6Step120EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step120EntryBank_rows]
  rfl

private def s6Step120ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<208) ∨ (209≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step120ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<208) ∨ (209≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step120ExitFBefore : Arena := s6Step120ExitGAfter

private def s6Step120ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 833],795⟩

private def s6Step120ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 879],776⟩

private def s6Step120ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 882, 813],777⟩

private def s6Step120ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 888, 868],775⟩

private theorem s6Step120ExitBank_incomingDistinct : ([s6Step120ExitGRow,s6Step120ExitFRow,s6Step120ExitFvRow,s6Step120ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step120ExitF_Incoming : rowsOwned s6Step120ExitFBefore [s6Step120ExitFRow,s6Step120ExitFvRow,s6Step120ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step120ExitGRow,s6Step120ExitFRow,s6Step120ExitFvRow,s6Step120ExitGvRow] 1 s6Step120ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step120ExitFBefore (fun q => (0≤q ∧ q<208) ∨ (209≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step120ExitBank_outgoingOwned : rowsOwned s6Step120ExitGvAfter [s6Step120ExitGOut,s6Step120ExitFOut,s6Step120ExitFvOut,s6Step120ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step120ExitGvAfter (fun q => ([(0,208),(209,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(835,836),(837,842),(843,849),(850,865),(866,868),(869,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step120ExitF_Outgoing : rowsOwned s6Step120ExitGvAfter [s6Step120ExitFOut,s6Step120ExitFvOut,s6Step120ExitGvOut] :=
  hmrRows_owned_drop s6Step120ExitGvAfter [s6Step120ExitGOut,s6Step120ExitFOut,s6Step120ExitFvOut,s6Step120ExitGvOut] 1 s6Step120ExitBank_outgoingOwned

private theorem s6Step120ExitF_distinct : (s6Step120ExitFRow.sign::s6Step120ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step120ExitF_owned : (s6Step120ExitFRow.sign::s6Step120ExitFRow.payload).toFinset⊆s6Step120ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step120ExitFBefore (fun q => (0≤q ∧ q<208) ∨ (209≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step120ExitF_retired : s6Step120ExitFBefore.retireSet s6Step120ExitFExtra.toFinset=s6Step120ExitFAfter := by
  unfold Arena.retireSet s6Step120ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step120ExitFBefore,s6Step120ExitGAfter,s6Step120ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step120ExitF_checked : planRowResizeLog s6Step120ExitFBefore s6Step120ExitFRow 210 []=
    some (s6Step120ExitFAfter,s6Step120ExitFOut,shrinkRow 795 s6Step120ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step120ExitFBefore s6Step120ExitFRow 210 s6Step120ExitF_distinct s6Step120ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step120ExitFRow.payload.take 210) s6Step120ExitFRow.sign=s6Step120ExitFOut := by decide +kernel
  have hi : s6Step120ExitFRow.payload.drop 210=s6Step120ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step120ExitF_retired] at result
  exact result

private def s6Step120ExitFvAfter : Arena := s6Step120ExitFAfter

private def s6Step120ExitFvBefore : Arena := s6Step120ExitFAfter

private theorem s6Step120ExitFv_Incoming : rowsOwned s6Step120ExitFvBefore [s6Step120ExitFvRow,s6Step120ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step120ExitGRow,s6Step120ExitFRow,s6Step120ExitFvRow,s6Step120ExitGvRow] 2 s6Step120ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step120ExitFvBefore (fun q => (0≤q ∧ q<208) ∨ (209≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step120ExitFv_Outgoing : rowsOwned s6Step120ExitGvAfter [s6Step120ExitFvOut,s6Step120ExitGvOut] :=
  hmrRows_owned_drop s6Step120ExitGvAfter [s6Step120ExitGOut,s6Step120ExitFOut,s6Step120ExitFvOut,s6Step120ExitGvOut] 2 s6Step120ExitBank_outgoingOwned

private theorem s6Step120ExitFv_distinct : (s6Step120ExitFvRow.sign::s6Step120ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step120ExitFv_owned : (s6Step120ExitFvRow.sign::s6Step120ExitFvRow.payload).toFinset⊆s6Step120ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step120ExitFvBefore (fun q => (0≤q ∧ q<208) ∨ (209≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step120ExitFv_reserved : s6Step120ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step120ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step120ExitFv_checked : planRowResizeLog s6Step120ExitFvBefore s6Step120ExitFvRow 75 []=
    some (s6Step120ExitFvAfter,s6Step120ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step120ExitFvBefore s6Step120ExitFvAfter s6Step120ExitFvRow 75 []
    s6Step120ExitFv_distinct s6Step120ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step120ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step120ExitFvRow.payload++[]) s6Step120ExitFvRow.sign=s6Step120ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step120ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step120ExitG_Incoming : rowsOwned s6Step120ExitGBefore [s6Step120ExitGRow,s6Step120ExitFRow,s6Step120ExitFvRow,s6Step120ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step120ExitGRow,s6Step120ExitFRow,s6Step120ExitFvRow,s6Step120ExitGvRow] 0 s6Step120ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step120ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step120ExitG_Outgoing : rowsOwned s6Step120ExitGvAfter [s6Step120ExitGOut,s6Step120ExitFOut,s6Step120ExitFvOut,s6Step120ExitGvOut] :=
  hmrRows_owned_drop s6Step120ExitGvAfter [s6Step120ExitGOut,s6Step120ExitFOut,s6Step120ExitFvOut,s6Step120ExitGvOut] 0 s6Step120ExitBank_outgoingOwned

private theorem s6Step120ExitG_distinct : (s6Step120ExitGRow.sign::s6Step120ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step120ExitG_owned : (s6Step120ExitGRow.sign::s6Step120ExitGRow.payload).toFinset⊆s6Step120ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step120ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step120ExitG_retired : s6Step120ExitGBefore.retireSet s6Step120ExitGExtra.toFinset=s6Step120ExitGAfter := by
  unfold Arena.retireSet s6Step120ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step120ExitGBefore,s6Step120ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step120ExitG_checked : planRowResizeLog s6Step120ExitGBefore s6Step120ExitGRow 208 []=
    some (s6Step120ExitGAfter,s6Step120ExitGOut,shrinkRow 777 s6Step120ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step120ExitGBefore s6Step120ExitGRow 208 s6Step120ExitG_distinct s6Step120ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step120ExitGRow.payload.take 208) s6Step120ExitGRow.sign=s6Step120ExitGOut := by decide +kernel
  have hi : s6Step120ExitGRow.payload.drop 208=s6Step120ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step120ExitG_retired] at result
  exact result

private def s6Step120ExitGvBefore : Arena := s6Step120ExitFAfter

private theorem s6Step120ExitGv_Incoming : rowsOwned s6Step120ExitGvBefore [s6Step120ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step120ExitGRow,s6Step120ExitFRow,s6Step120ExitFvRow,s6Step120ExitGvRow] 3 s6Step120ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step120ExitGvBefore (fun q => (0≤q ∧ q<208) ∨ (209≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step120ExitGv_Outgoing : rowsOwned s6Step120ExitGvAfter [s6Step120ExitGvOut] :=
  hmrRows_owned_drop s6Step120ExitGvAfter [s6Step120ExitGOut,s6Step120ExitFOut,s6Step120ExitFvOut,s6Step120ExitGvOut] 3 s6Step120ExitBank_outgoingOwned

private theorem s6Step120ExitGv_distinct : (s6Step120ExitGvRow.sign::s6Step120ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step120ExitGv_owned : (s6Step120ExitGvRow.sign::s6Step120ExitGvRow.payload).toFinset⊆s6Step120ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step120ExitGvBefore (fun q => (0≤q ∧ q<208) ∨ (209≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step120ExitGv_retired : s6Step120ExitGvBefore.retireSet s6Step120ExitGvExtra.toFinset=s6Step120ExitGvAfter := by
  apply hmrArena_retireSet_of_live s6Step120ExitGvBefore s6Step120ExitGvAfter s6Step120ExitGvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step120ExitGvBefore s6Step120ExitGvAfter (fun q => (0≤q ∧ q<208) ∨ (209≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) (fun q => ([(0,208),(209,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(835,836),(837,842),(843,849),(850,865),(866,868),(869,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step120ExitGvExtra rfl rfl
  decide +kernel

private theorem s6Step120ExitGv_checked : planRowResizeLog s6Step120ExitGvBefore s6Step120ExitGvRow 73 []=
    some (s6Step120ExitGvAfter,s6Step120ExitGvOut,shrinkRow 775 s6Step120ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step120ExitGvBefore s6Step120ExitGvRow 73 s6Step120ExitGv_distinct s6Step120ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step120ExitGvRow.payload.take 73) s6Step120ExitGvRow.sign=s6Step120ExitGvOut := by decide +kernel
  have hi : s6Step120ExitGvRow.payload.drop 73=s6Step120ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step120ExitGv_retired] at result
  exact result

private theorem s6Step120ExitBank_rows : planWindowRowsLog s6Step120ExitGBefore [(s6Step120ExitGRow,208),(s6Step120ExitFRow,210),(s6Step120ExitFvRow,75),(s6Step120ExitGvRow,73)] [[],[],[],[]]=
    some (s6Step120ExitGvAfter,[s6Step120ExitGOut,s6Step120ExitFOut,s6Step120ExitFvOut,s6Step120ExitGvOut],(shrinkRow 777 s6Step120ExitGExtra ++ (shrinkRow 795 s6Step120ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step120ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step120ExitGvAfter [] []=some (s6Step120ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step120ExitGvBefore s6Step120ExitGvAfter s6Step120ExitGvAfter
    s6Step120ExitGvRow s6Step120ExitGvOut 73 [] [] [] []
    (shrinkRow 775 s6Step120ExitGvExtra) ([]) s6Step120ExitGv_Incoming s6Step120ExitGv_checked h4 s6Step120ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step120ExitFvBefore s6Step120ExitFvAfter s6Step120ExitGvAfter
    s6Step120ExitFvRow s6Step120ExitFvOut 75 [] [(s6Step120ExitGvRow,73)] [[]] [s6Step120ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step120ExitGvExtra ++ [])) s6Step120ExitFv_Incoming s6Step120ExitFv_checked h3 s6Step120ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step120ExitFBefore s6Step120ExitFAfter s6Step120ExitGvAfter
    s6Step120ExitFRow s6Step120ExitFOut 210 [] [(s6Step120ExitFvRow,75),(s6Step120ExitGvRow,73)] [[],[]] [s6Step120ExitFvOut,s6Step120ExitGvOut]
    (shrinkRow 795 s6Step120ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step120ExitGvExtra ++ []))) s6Step120ExitF_Incoming s6Step120ExitF_checked h2 s6Step120ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step120ExitGBefore s6Step120ExitGAfter s6Step120ExitGvAfter
    s6Step120ExitGRow s6Step120ExitGOut 208 [] [(s6Step120ExitFRow,210),(s6Step120ExitFvRow,75),(s6Step120ExitGvRow,73)] [[],[],[]] [s6Step120ExitFOut,s6Step120ExitFvOut,s6Step120ExitGvOut]
    (shrinkRow 777 s6Step120ExitGExtra) ((shrinkRow 795 s6Step120ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step120ExitGvExtra ++ [])))) s6Step120ExitG_Incoming s6Step120ExitG_checked h1 s6Step120ExitG_Outgoing
  exact h0

private theorem s6Step120ExitBank_checked : compileHmrBankResizeLog .exit s6Step120ExitGBefore ⟨s6Step120ExitFRow,s6Step120ExitGRow,s6Step120ExitFvRow,s6Step120ExitGvRow⟩ ⟨210,208,75,73⟩ [[],[],[],[]]=
    some (s6Step120ExitGvAfter,⟨s6Step120ExitFOut,s6Step120ExitGOut,s6Step120ExitFvOut,s6Step120ExitGvOut⟩,(shrinkRow 777 s6Step120ExitGExtra ++ (shrinkRow 795 s6Step120ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step120ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step120ExitBank_rows]
  rfl

private theorem s6Step120Add0_apart : Disjoint s6Step120Add0Arena.live s6Step120Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step120Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step120Add0_card : s6Step120Add0Arena.live.card=879 := by
  decide +kernel

private theorem s6Step120Add0_borrowed : s6Step120Add0Arena.checkBorrow (hmrHybridCount s6Step120Add0Arena s6Step120Add0B.length) s6Step120Add0Work=some s6Step120Add0During := by
  have len : s6Step120Add0Work.length=hmrHybridCount s6Step120Add0Arena s6Step120Add0B.length := by
    rw [hmrHybridCount,s6Step120Add0_card]
    decide +kernel
  have nd : s6Step120Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step120Add0Arena s6Step120Add0During s6Step120Add0Work.toFinset s6Step120Add0_bounded s6Step120Add0_apart rfl

private theorem s6Step120Add0_distinct : (865::880::796::(s6Step120Add0A++s6Step120Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step120Add0_owned : (865::880::796::(s6Step120Add0A++s6Step120Add0B)).toFinset⊆s6Step120Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step120Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step120Add0_checked : compileHmrHybridCinLog s6Step120Add0Arena 880 865 796 s6Step120Add0A s6Step120Add0B s6Step120Add0Work=some s6Step120Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step120Add0Arena s6Step120Add0During 880 865 796 s6Step120Add0A s6Step120Add0B s6Step120Add0Work
    (by decide +kernel) (by decide +kernel) s6Step120Add0_distinct
    (fun q hq => s6Step120Add0_owned (List.mem_toFinset.mpr hq)) s6Step120Add0_borrowed

private theorem s6Step120Add1_apart : Disjoint s6Step120Add1Arena.live s6Step120Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step120Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step120Add1_card : s6Step120Add1Arena.live.card=879 := by
  decide +kernel

private theorem s6Step120Add1_borrowed : s6Step120Add1Arena.checkBorrow (hmrHybridCount s6Step120Add1Arena s6Step120Add1B.length) s6Step120Add1Work=some s6Step120Add1During := by
  have len : s6Step120Add1Work.length=hmrHybridCount s6Step120Add1Arena s6Step120Add1B.length := by
    rw [hmrHybridCount,s6Step120Add1_card]
    decide +kernel
  have nd : s6Step120Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step120Add1Arena s6Step120Add1During s6Step120Add1Work.toFinset s6Step120Add1_bounded s6Step120Add1_apart rfl

private theorem s6Step120Add1_distinct : (865::880::796::(s6Step120Add1A++s6Step120Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step120Add1_owned : (865::880::796::(s6Step120Add1A++s6Step120Add1B)).toFinset⊆s6Step120Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step120Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step120Add1_checked : compileHmrHybridCinLog s6Step120Add1Arena 880 865 796 s6Step120Add1A s6Step120Add1B s6Step120Add1Work=some s6Step120Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step120Add1Arena s6Step120Add1During 880 865 796 s6Step120Add1A s6Step120Add1B s6Step120Add1Work
    (by decide +kernel) (by decide +kernel) s6Step120Add1_distinct
    (fun q hq => s6Step120Add1_owned (List.mem_toFinset.mpr hq)) s6Step120Add1_borrowed

private theorem s6Step120F4_apart : Disjoint (s6Step120Add0A++s6Step120Add0B).toFinset (s6Step120Add1A++s6Step120Add1B).toFinset := by
  have nd : ((s6Step120Add0A++s6Step120Add0B)++(s6Step120Add1A++s6Step120Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step120F4_carry : s6Step120F4FlagArena.checkBorrow 1 [796]=some s6Step120Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step120F4FlagArena,s6Step120HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step120F4FlagArena,s6Step120HeadFvAfter,s6Step120Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step120F4_distinct : (875::880::865::796::((s6Step120Add0A++s6Step120Add1A)++(s6Step120Add0B++s6Step120Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step120F4_flag : s6Step120HeadFvAfter.checkBorrow 1 [865]=some s6Step120F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step120HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step120F4_owned : (875::880::((s6Step120Add0A++s6Step120Add1A)++(s6Step120Add0B++s6Step120Add1B))).toFinset⊆s6Step120HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step120HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step120F4_checked : compileHmrHybridF4Log s6Step120HeadFvAfter 875 880 s6Step120Add0A s6Step120Add0B s6Step120Add1A s6Step120Add1B [865] [796] s6Step120Add0Work s6Step120Add1Work=some s6Step120F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step120HeadFvAfter s6Step120F4FlagArena s6Step120Add0Arena s6Step120Add0During s6Step120Add1During 875 880
    s6Step120Add0A s6Step120Add0B s6Step120Add1A s6Step120Add1B [865] [796] s6Step120Add0Work s6Step120Add1Work
    (fun q hq => s6Step120F4_owned (List.mem_toFinset.mpr hq)) s6Step120F4_flag s6Step120F4_carry
    s6Step120F4_distinct s6Step120F4_apart s6Step120Add0_checked s6Step120Add1_checked

private theorem s6Step120Front_branch : s6Step120FrontSigmaArena.checkBorrow 1 [880]=some s6Step120HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step120FrontSigmaArena,s6Step120EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step120FrontSigmaArena,s6Step120EntryGvAfter,s6Step120HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step120Front_entry : HmrFrontEntryValid s6Step120EntryFBefore s6Step120FrontBank 210 74 ⟨210,208,75,73⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step120FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step120EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step120EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(835,836),(837,842),(843,849),(850,865),(866,868),(869,875),(876,879),(881,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step120FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step120Front_sigma : s6Step120EntryGvAfter.checkBorrow 1 [875]=some s6Step120FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step120EntryGvAfter,arenaWires]
  · rfl

private def s6Step120HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step120HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step120HeadFBefore : Arena := s6Step120HeadGAfter

private def s6Step120HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465],795⟩

private def s6Step120HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778],776⟩

private def s6Step120HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 882],777⟩

private def s6Step120HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 888],775⟩

private theorem s6Step120HeadBank_incomingDistinct : ([s6Step120HeadGRow,s6Step120HeadFRow,s6Step120HeadGvRow,s6Step120HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step120HeadF_Incoming : rowsOwned s6Step120HeadFBefore [s6Step120HeadFRow,s6Step120HeadGvRow,s6Step120HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step120HeadGRow,s6Step120HeadFRow,s6Step120HeadGvRow,s6Step120HeadFvRow] 1 s6Step120HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step120HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step120HeadBank_outgoingOwned : rowsOwned s6Step120HeadFvAfter [s6Step120HeadGOut,s6Step120HeadFOut,s6Step120HeadGvOut,s6Step120HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step120HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step120HeadF_Outgoing : rowsOwned s6Step120HeadFvAfter [s6Step120HeadFOut,s6Step120HeadGvOut,s6Step120HeadFvOut] :=
  hmrRows_owned_drop s6Step120HeadFvAfter [s6Step120HeadGOut,s6Step120HeadFOut,s6Step120HeadGvOut,s6Step120HeadFvOut] 1 s6Step120HeadBank_outgoingOwned

private theorem s6Step120HeadF_distinct : (s6Step120HeadFRow.sign::s6Step120HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step120HeadF_owned : (s6Step120HeadFRow.sign::s6Step120HeadFRow.payload).toFinset⊆s6Step120HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step120HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step120HeadF_reserved : s6Step120HeadFBefore.reserve s6Step120HeadFFresh.toFinset=some s6Step120HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step120HeadFFresh,arenaWires]
  · norm_num [s6Step120HeadFBefore,s6Step120HeadGAfter,s6Step120HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step120HeadFAfter,s6Step120HeadFBefore,s6Step120HeadGAfter,s6Step120HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step120HeadF_checked : planRowResizeLog s6Step120HeadFBefore s6Step120HeadFRow 211 s6Step120HeadFFresh=
    some (s6Step120HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 833],795⟩,growRow 795 s6Step120HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step120HeadFBefore s6Step120HeadFAfter s6Step120HeadFRow 211 s6Step120HeadFFresh
    s6Step120HeadF_distinct s6Step120HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step120HeadF_reserved
  have rowEq : WindowRow.mk (s6Step120HeadFRow.payload++s6Step120HeadFFresh) s6Step120HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 833],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step120HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step120HeadFvBefore : Arena := s6Step120HeadGvAfter

private theorem s6Step120HeadFv_Incoming : rowsOwned s6Step120HeadFvBefore [s6Step120HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step120HeadGRow,s6Step120HeadFRow,s6Step120HeadGvRow,s6Step120HeadFvRow] 3 s6Step120HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step120HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step120HeadFv_Outgoing : rowsOwned s6Step120HeadFvAfter [s6Step120HeadFvOut] :=
  hmrRows_owned_drop s6Step120HeadFvAfter [s6Step120HeadGOut,s6Step120HeadFOut,s6Step120HeadGvOut,s6Step120HeadFvOut] 3 s6Step120HeadBank_outgoingOwned

private theorem s6Step120HeadFv_distinct : (s6Step120HeadFvRow.sign::s6Step120HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step120HeadFv_owned : (s6Step120HeadFvRow.sign::s6Step120HeadFvRow.payload).toFinset⊆s6Step120HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step120HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step120HeadFv_reserved : s6Step120HeadFvBefore.reserve s6Step120HeadFvFresh.toFinset=some s6Step120HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step120HeadFvFresh,arenaWires]
  · norm_num [s6Step120HeadFvBefore,s6Step120HeadGvAfter,s6Step120HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step120HeadFvAfter,s6Step120HeadFvBefore,s6Step120HeadGvAfter,s6Step120HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step120HeadFv_checked : planRowResizeLog s6Step120HeadFvBefore s6Step120HeadFvRow 75 s6Step120HeadFvFresh=
    some (s6Step120HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 879],776⟩,growRow 776 s6Step120HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step120HeadFvBefore s6Step120HeadFvAfter s6Step120HeadFvRow 75 s6Step120HeadFvFresh
    s6Step120HeadFv_distinct s6Step120HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step120HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step120HeadFvRow.payload++s6Step120HeadFvFresh) s6Step120HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 830, 821, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 879],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step120HeadG_Incoming : rowsOwned s6Step120HeadGBefore [s6Step120HeadGRow,s6Step120HeadFRow,s6Step120HeadGvRow,s6Step120HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step120HeadGRow,s6Step120HeadFRow,s6Step120HeadGvRow,s6Step120HeadFvRow] 0 s6Step120HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step120HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step120HeadG_Outgoing : rowsOwned s6Step120HeadFvAfter [s6Step120HeadGOut,s6Step120HeadFOut,s6Step120HeadGvOut,s6Step120HeadFvOut] :=
  hmrRows_owned_drop s6Step120HeadFvAfter [s6Step120HeadGOut,s6Step120HeadFOut,s6Step120HeadGvOut,s6Step120HeadFvOut] 0 s6Step120HeadBank_outgoingOwned

private theorem s6Step120HeadG_distinct : (s6Step120HeadGRow.sign::s6Step120HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step120HeadG_owned : (s6Step120HeadGRow.sign::s6Step120HeadGRow.payload).toFinset⊆s6Step120HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step120HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step120HeadG_reserved : s6Step120HeadGBefore.reserve s6Step120HeadGFresh.toFinset=some s6Step120HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step120HeadGFresh,arenaWires]
  · norm_num [s6Step120HeadGBefore,s6Step120HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step120HeadGAfter,s6Step120HeadGBefore,s6Step120HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step120HeadG_checked : planRowResizeLog s6Step120HeadGBefore s6Step120HeadGRow 211 s6Step120HeadGFresh=
    some (s6Step120HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 882, 813],777⟩,growRow 777 s6Step120HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step120HeadGBefore s6Step120HeadGAfter s6Step120HeadGRow 211 s6Step120HeadGFresh
    s6Step120HeadG_distinct s6Step120HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step120HeadG_reserved
  have rowEq : WindowRow.mk (s6Step120HeadGRow.payload++s6Step120HeadGFresh) s6Step120HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 882, 813],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step120HeadGvBefore : Arena := s6Step120HeadFAfter

private theorem s6Step120HeadGv_Incoming : rowsOwned s6Step120HeadGvBefore [s6Step120HeadGvRow,s6Step120HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step120HeadGRow,s6Step120HeadFRow,s6Step120HeadGvRow,s6Step120HeadFvRow] 2 s6Step120HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step120HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step120HeadGv_Outgoing : rowsOwned s6Step120HeadFvAfter [s6Step120HeadGvOut,s6Step120HeadFvOut] :=
  hmrRows_owned_drop s6Step120HeadFvAfter [s6Step120HeadGOut,s6Step120HeadFOut,s6Step120HeadGvOut,s6Step120HeadFvOut] 2 s6Step120HeadBank_outgoingOwned

private theorem s6Step120HeadGv_distinct : (s6Step120HeadGvRow.sign::s6Step120HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step120HeadGv_owned : (s6Step120HeadGvRow.sign::s6Step120HeadGvRow.payload).toFinset⊆s6Step120HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step120HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step120HeadGv_reserved : s6Step120HeadGvBefore.reserve s6Step120HeadGvFresh.toFinset=some s6Step120HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step120HeadGvFresh,arenaWires]
  · norm_num [s6Step120HeadGvBefore,s6Step120HeadFAfter,s6Step120HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step120HeadGvAfter,s6Step120HeadGvBefore,s6Step120HeadFAfter,s6Step120HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step120HeadGv_checked : planRowResizeLog s6Step120HeadGvBefore s6Step120HeadGvRow 75 s6Step120HeadGvFresh=
    some (s6Step120HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 888, 868],775⟩,growRow 775 s6Step120HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step120HeadGvBefore s6Step120HeadGvAfter s6Step120HeadGvRow 75 s6Step120HeadGvFresh
    s6Step120HeadGv_distinct s6Step120HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step120HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step120HeadGvRow.payload++s6Step120HeadGvFresh) s6Step120HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 888, 868],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step120HeadBank_rows : planWindowRowsLog s6Step120HeadGBefore [(s6Step120HeadGRow,211),(s6Step120HeadFRow,211),(s6Step120HeadGvRow,75),(s6Step120HeadFvRow,75)] [s6Step120HeadGFresh,s6Step120HeadFFresh,s6Step120HeadGvFresh,s6Step120HeadFvFresh]=
    some (s6Step120HeadFvAfter,[s6Step120HeadGOut,s6Step120HeadFOut,s6Step120HeadGvOut,s6Step120HeadFvOut],(growRow 777 s6Step120HeadGFresh ++ (growRow 795 s6Step120HeadFFresh ++ (growRow 775 s6Step120HeadGvFresh ++ (growRow 776 s6Step120HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step120HeadFvAfter [] []=some (s6Step120HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step120HeadFvBefore s6Step120HeadFvAfter s6Step120HeadFvAfter
    s6Step120HeadFvRow s6Step120HeadFvOut 75 s6Step120HeadFvFresh [] [] []
    (growRow 776 s6Step120HeadFvFresh) ([]) s6Step120HeadFv_Incoming s6Step120HeadFv_checked h4 s6Step120HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step120HeadGvBefore s6Step120HeadGvAfter s6Step120HeadFvAfter
    s6Step120HeadGvRow s6Step120HeadGvOut 75 s6Step120HeadGvFresh [(s6Step120HeadFvRow,75)] [s6Step120HeadFvFresh] [s6Step120HeadFvOut]
    (growRow 775 s6Step120HeadGvFresh) ((growRow 776 s6Step120HeadFvFresh ++ [])) s6Step120HeadGv_Incoming s6Step120HeadGv_checked h3 s6Step120HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step120HeadFBefore s6Step120HeadFAfter s6Step120HeadFvAfter
    s6Step120HeadFRow s6Step120HeadFOut 211 s6Step120HeadFFresh [(s6Step120HeadGvRow,75),(s6Step120HeadFvRow,75)] [s6Step120HeadGvFresh,s6Step120HeadFvFresh] [s6Step120HeadGvOut,s6Step120HeadFvOut]
    (growRow 795 s6Step120HeadFFresh) ((growRow 775 s6Step120HeadGvFresh ++ (growRow 776 s6Step120HeadFvFresh ++ []))) s6Step120HeadF_Incoming s6Step120HeadF_checked h2 s6Step120HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step120HeadGBefore s6Step120HeadGAfter s6Step120HeadFvAfter
    s6Step120HeadGRow s6Step120HeadGOut 211 s6Step120HeadGFresh [(s6Step120HeadFRow,211),(s6Step120HeadGvRow,75),(s6Step120HeadFvRow,75)] [s6Step120HeadFFresh,s6Step120HeadGvFresh,s6Step120HeadFvFresh] [s6Step120HeadFOut,s6Step120HeadGvOut,s6Step120HeadFvOut]
    (growRow 777 s6Step120HeadGFresh) ((growRow 795 s6Step120HeadFFresh ++ (growRow 775 s6Step120HeadGvFresh ++ (growRow 776 s6Step120HeadFvFresh ++ [])))) s6Step120HeadG_Incoming s6Step120HeadG_checked h1 s6Step120HeadG_Outgoing
  exact h0

private theorem s6Step120HeadBank_checked : compileHmrBankResizeLog .headroom s6Step120HeadGBefore ⟨s6Step120HeadFRow,s6Step120HeadGRow,s6Step120HeadFvRow,s6Step120HeadGvRow⟩ ⟨211,211,75,75⟩ [s6Step120HeadGFresh,s6Step120HeadFFresh,s6Step120HeadGvFresh,s6Step120HeadFvFresh]=
    some (s6Step120HeadFvAfter,⟨s6Step120HeadFOut,s6Step120HeadGOut,s6Step120HeadFvOut,s6Step120HeadGvOut⟩,(growRow 777 s6Step120HeadGFresh ++ (growRow 795 s6Step120HeadFFresh ++ (growRow 775 s6Step120HeadGvFresh ++ (growRow 776 s6Step120HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step120HeadBank_rows]
  rfl

private theorem s6Step120Front_checked : compileHmrSourceFrontLog s6Step120EntryFBefore s6Step120FrontBank 210 74 ⟨210,208,75,73⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step120FrontLog=some s6Step120FrontPlan := by
  have pairEq : s6Step120FrontPair=⟨s6Step120HeadFRow,s6Step120HeadGRow,s6Step120HeadFvRow,s6Step120HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step120FrontHead=⟨s6Step120ExitFRow,s6Step120ExitGRow,s6Step120ExitFvRow,s6Step120ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step120Add0A=s6Step120FrontHead.f.wires := by decide +kernel
  have gEq : s6Step120Add0B=s6Step120FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step120Add1A=s6Step120FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step120Add1B=s6Step120FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step120EntryFBefore s6Step120FrontBank 210 74 ⟨210,208,75,73⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step120FrontLog s6Step120FrontPlan
  · exact s6Step120Front_entry
  · exact s6Step120EntryBank_checked
  · exact s6Step120Front_sigma
  · rfl
  · exact s6Step120Front_branch
  · rfl
  · simpa only [s6Step120FrontPlan,pairEq] using s6Step120HeadBank_checked
  · simpa only [s6Step120FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step120F4_checked
  · exact s6Step120Counter_checked
  · rfl
  · simpa only [s6Step120FrontPlan,headEq] using s6Step120ExitBank_checked

private theorem s6Step120Complete_explicit_checked : compileHmrEarlyStepLog s6Step120EntryFBefore s6Step120FrontBank 210 74 ⟨210,208,75,73⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 37 s6Step120CompleteLog=some s6Step120CompletePlan := by
  let Q := s6Step120EarlyControlPlan
  have hq := s6Step120EarlyControl_plan_checked
  have fv1 : s6Step120CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step120CompleteOut.fv.payload[2]?.getD s6Step120CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step120CompleteOut.fv.payload[3]?.getD s6Step120CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step120CompleteOut.fv.payload[4]?.getD s6Step120CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step120EntryFBefore s6Step120EarlyControlArena s6Step120FrontBank 210 74 ⟨210,208,75,73⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 37 s6Step120CompleteLog s6Step120FrontPlan Q
    s6Step120Front_checked s6Step120Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step120Complete_owned s6Step120Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step120EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 769 875 s6Step120CompleteOut.fv.second (s6Step120CompleteOut.fv.payload[2]?.getD s6Step120CompleteOut.fv.sign) (s6Step120CompleteOut.fv.payload[3]?.getD s6Step120CompleteOut.fv.sign) (s6Step120CompleteOut.fv.payload[4]?.getD s6Step120CompleteOut.fv.sign) 880 37 s6Step120EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep120Arena : Arena := s6Step120EntryFBefore
def s6PrivateStep120Bank : WindowBank := s6Step120FrontBank
def s6PrivateStep120Spec : HmrSourceWalkStepLog := ⟨210,74,⟨210,208,75,73⟩,37,.early s6Step120CompleteLog⟩
def s6PrivateStep120Plan : HmrSourceStepPlan := .early s6Step120CompletePlan
theorem s6PrivateStep120_source : s6PrivateStep120Spec=s6ObservedLogs112[8] := rfl
theorem s6PrivateStep120_checked : compileHmrSourceStepLog s6PrivateStep120Arena s6PrivateStep120Bank
    s6PrivateStep120Spec.fgWidth s6PrivateStep120Spec.vWidth s6PrivateStep120Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844]
    6 498 120 s6PrivateStep120Spec.need none s6PrivateStep120Spec.log=some s6PrivateStep120Plan := by
  change compileHmrSourceStepLog s6Step120EntryFBefore s6Step120FrontBank 210 74 ⟨210,208,75,73⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 6 498 120 37 none (.early s6Step120CompleteLog)=some (.early s6Step120CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 120<498)]
  rw [s6Step120Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
