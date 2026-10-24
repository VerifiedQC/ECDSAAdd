import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep288
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

private def s6Step290CompleteMoves : List (Wire × Wire) := [(823,125)]

private def s6Step290EarlyControlLog : HmrEarlyControlLog := ⟨[823, 892, 779, 858, 879],[875],[828],[887, 830, 805, 817, 812, 915],[]⟩

private def s6Step290FrontLog : HmrFrontAllocationLog := ⟨⟨[[858], [], [], [789]],[[875], [879], [892], [779]],[[], [], [], []]⟩,[922],[807],[828],[887],[830, 805, 817, 812, 915, 906, 899, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[830, 805, 817, 812, 915, 906, 899, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[828, 887, 830, 805]⟩

private def s6Step290CompleteLog : HmrEarlyStepLog := ⟨s6Step290FrontLog,s6Step290CompleteMoves,s6Step290EarlyControlLog⟩

private def s6Step290ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380],795⟩

private def s6Step290ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882],776⟩

private def s6Step290ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124],777⟩

private def s6Step290ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789],775⟩

private def s6Step290FrontOut : WindowBank := ⟨s6Step290ExitFOut,s6Step290ExitGOut,s6Step290ExitFvOut,s6Step290ExitGvOut⟩

private def s6Step290CompleteOut : WindowBank := s6Step290FrontOut.repacked s6Step290CompleteMoves

private def s6Step290EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,779),(780,782),(783,790),(791,792),(793,797),(799,800),(802,805),(806,808),(809,811),(813,815),(818,819),(821,823),(824,828),(829,830),(831,832),(833,842),(843,849),(850,858),(859,875),(876,879),(880,887),(888,892),(893,896),(897,899),(900,906),(907,914),(917,918),(919,920),(921,925),(926,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step290EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step290EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step290EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step290EarlyControlPositiveArena,[875],s6Step290EarlyControlEqualityArena,[828],⟨⟨922,false⟩,[⟨⟨875,false⟩,828⟩]⟩⟩

private def s6Step290EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step290EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step290EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,779),(780,782),(783,790),(791,792),(793,797),(799,800),(802,805),(806,808),(809,811),(813,815),(818,819),(821,823),(824,828),(829,830),(831,832),(833,842),(843,849),(850,858),(859,875),(876,879),(880,887),(888,892),(893,896),(897,899),(900,906),(907,914),(917,918),(919,920),(921,925),(926,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step290EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,779),(780,782),(783,790),(791,792),(793,797),(799,800),(802,805),(806,807),(809,811),(813,815),(818,819),(821,823),(824,828),(829,830),(831,832),(833,842),(843,849),(850,858),(859,875),(876,879),(880,887),(888,892),(893,896),(897,899),(900,906),(907,914),(917,918),(919,920),(921,922),(923,925),(926,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step290EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,779),(780,782),(783,790),(791,792),(793,797),(799,800),(802,805),(806,808),(809,811),(813,815),(818,819),(821,823),(824,828),(829,830),(831,832),(833,842),(843,849),(850,858),(859,875),(876,879),(880,887),(888,892),(893,896),(897,899),(900,906),(907,914),(917,918),(919,920),(921,922),(923,925),(926,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step290EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step290EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,823⟩,⟨⟨772,false⟩,892⟩,⟨⟨771,false⟩,779⟩,⟨⟨770,false⟩,858⟩,⟨⟨769,false⟩,879⟩]⟩

private def s6Step290EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step290EarlyControlZeroArena,s6Step290EarlyControlZeroPlan,s6Step290EarlyControlClassPlan,s6Step290EarlyControlFlagArena,s6Step290EarlyControlFittedArena,s6Step290EarlyControlHistoryArena,s6Step290EarlyControlSigmaArena,s6Step290EarlyControlOutputArena,s6Step290EarlyControlLog⟩

private def s6Step290CounterWork : List Wire := [828, 887, 830, 805]

private theorem s6Step290Counter_bounded : s6Step290CounterWork.toFinset⊆arenaWires := by norm_num [s6Step290CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step290HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step290CounterDuring : Arena := ⟨s6Step290HeadFvAfter.live∪s6Step290CounterWork.toFinset,Finset.union_subset s6Step290HeadFvAfter.bounded s6Step290Counter_bounded⟩

private def s6Step290EntryFFresh : List Wire := [858]

private def s6Step290EntryFvFresh : List Wire := []

private def s6Step290EntryGFresh : List Wire := []

private def s6Step290EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step290EntryGvFresh : List Wire := [789]

private def s6Step290ExitFExtra : List Wire := [858, 879]

private def s6Step290ExitFvExtra : List Wire := [779]

private def s6Step290ExitGExtra : List Wire := [125, 875]

private def s6Step290ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,125),(126,779),(780,782),(783,790),(791,792),(793,797),(799,800),(802,805),(806,808),(809,811),(813,815),(818,819),(821,828),(829,830),(831,832),(833,842),(843,849),(850,858),(859,875),(876,879),(880,887),(888,892),(893,896),(897,899),(900,906),(907,914),(917,918),(919,920),(921,925),(926,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step290ExitGvExtra : List Wire := [892]

private def s6Step290Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step290Add0Work : List Wire := [830, 805, 817, 812, 915, 906, 899, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step290Add0_bounded : s6Step290Add0Work.toFinset⊆arenaWires := by
  have h : s6Step290Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step290Add0During : Arena := ⟨s6Step290Add0Arena.live∪s6Step290Add0Work.toFinset,Finset.union_subset s6Step290Add0Arena.bounded s6Step290Add0_bounded⟩

private def s6Step290Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step290Add1Work : List Wire := [830, 805, 817, 812, 915, 906, 899, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step290Add1_bounded : s6Step290Add1Work.toFinset⊆arenaWires := by
  have h : s6Step290Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step290Add1During : Arena := ⟨s6Step290Add1Arena.live∪s6Step290Add1Work.toFinset,Finset.union_subset s6Step290Add1Arena.bounded s6Step290Add1_bounded⟩

private def s6Step290F4FlagArena : Arena := ⟨s6Step290HeadFvAfter.live∪{828},Finset.union_subset s6Step290HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step290F4Plan : HmrHybridF4Plan := ⟨s6Step290F4FlagArena,[828],s6Step290Add0Arena,[887],s6Step290Add0During,s6Step290Add0Work,s6Step290Add1During,s6Step290Add1Work⟩

private def s6Step290HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 858, 879],795⟩

private def s6Step290HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 779],776⟩

private def s6Step290HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 875],777⟩

private def s6Step290HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 892],775⟩

private def s6Step290FrontHead : WindowBank := ⟨s6Step290HeadFOut,s6Step290HeadGOut,s6Step290HeadFvOut,s6Step290HeadGvOut⟩

private def s6Step290EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 858],795⟩

private def s6Step290EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882],776⟩

private def s6Step290EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125],777⟩

private def s6Step290EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789],775⟩

private def s6Step290FrontPair : WindowBank := ⟨s6Step290EntryFOut,s6Step290EntryGOut,s6Step290EntryFvOut,s6Step290EntryGvOut⟩

private def s6Step290FrontSigmaArena : Arena := ⟨s6Step290EntryGvAfter.live∪{922},Finset.union_subset s6Step290EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step290HeadFFresh : List Wire := [879]

private def s6Step290HeadFvFresh : List Wire := [779]

private def s6Step290HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step290HeadGFresh : List Wire := [875]

private def s6Step290HeadGvFresh : List Wire := [892]

private def s6Step290FrontPlan : HmrSourceFront := ⟨s6Step290EntryGvAfter,s6Step290FrontPair,(growRow 795 s6Step290EntryFFresh ++ (growRow 777 s6Step290EntryGFresh ++ (growRow 776 s6Step290EntryFvFresh ++ (growRow 775 s6Step290EntryGvFresh ++ [])))),s6Step290FrontSigmaArena,[922],s6Step290HeadGBefore,[807],
  s6Step290HeadFvAfter,s6Step290FrontHead,(growRow 777 s6Step290HeadGFresh ++ (growRow 795 s6Step290HeadFFresh ++ (growRow 775 s6Step290HeadGvFresh ++ (growRow 776 s6Step290HeadFvFresh ++ [])))),s6Step290F4Plan,s6Step290CounterDuring,s6Step290CounterWork,s6Step290ExitGvAfter,s6Step290FrontOut,(shrinkRow 777 s6Step290ExitGExtra ++ (shrinkRow 795 s6Step290ExitFExtra ++ (shrinkRow 776 s6Step290ExitFvExtra ++ (shrinkRow 775 s6Step290ExitGvExtra ++ []))))⟩

private def s6Step290CompletePlan : HmrEarlyStepPlan := ⟨s6Step290FrontPlan,s6Step290EarlyControlArena,s6Step290EarlyControlPlan,s6Step290CompleteMoves⟩

private theorem s6Step290Complete_apart : List.Disjoint (s6Step290CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [922, 807, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] := by
  have nd : ((s6Step290CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[922, 807, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step290Complete_owned : (s6Step290CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step290EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step290EarlyControlArena (fun q => ([(0,779),(780,782),(783,790),(791,792),(793,797),(799,800),(802,805),(806,808),(809,811),(813,815),(818,819),(821,823),(824,828),(829,830),(831,832),(833,842),(843,849),(850,858),(859,875),(876,879),(880,887),(888,892),(893,896),(897,899),(900,906),(907,914),(917,918),(919,920),(921,925),(926,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private def s6Step290CompleteRelocationMove0Borrowed : Arena := ⟨s6Step290ExitGvAfter.live∪{125},Finset.union_subset s6Step290ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step290CompleteRelocation_move0_owned : 823∈s6Step290ExitGvAfter.live := by norm_num [s6Step290ExitGvAfter,arenaWires]

private theorem s6Step290CompleteRelocation_move0_reserve : s6Step290ExitGvAfter.reserve {125}=some s6Step290CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step290ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step290CompleteRelocation_move0_retire : s6Step290CompleteRelocationMove0Borrowed.retireSet {823}=s6Step290EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step290CompleteRelocationMove0Borrowed s6Step290EarlyControlArena {823}
  change s6Step290EarlyControlArena.live=(s6Step290ExitGvAfter.live∪{125})\{823}
  apply hmrArena_update_of_filter_check s6Step290ExitGvAfter s6Step290EarlyControlArena (fun q => ([(0,125),(126,779),(780,782),(783,790),(791,792),(793,797),(799,800),(802,805),(806,808),(809,811),(813,815),(818,819),(821,828),(829,830),(831,832),(833,842),(843,849),(850,858),(859,875),(876,879),(880,887),(888,892),(893,896),(897,899),(900,906),(907,914),(917,918),(919,920),(921,925),(926,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,779),(780,782),(783,790),(791,792),(793,797),(799,800),(802,805),(806,808),(809,811),(813,815),(818,819),(821,823),(824,828),(829,830),(831,832),(833,842),(843,849),(850,858),(859,875),(876,879),(880,887),(888,892),(893,896),(897,899),(900,906),(907,914),(917,918),(919,920),(921,925),(926,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [125] [823] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step290CompleteRelocation_checked : s6Step290ExitGvAfter.checkRepack [(823,125)]=some s6Step290EarlyControlArena := by
  have tail1 : s6Step290EarlyControlArena.checkRepack []=some s6Step290EarlyControlArena := rfl
  have tail0 := Arena.checkRepack_cons_of_parts s6Step290ExitGvAfter s6Step290CompleteRelocationMove0Borrowed s6Step290EarlyControlArena s6Step290EarlyControlArena 823 125 []
    s6Step290CompleteRelocation_move0_owned s6Step290CompleteRelocation_move0_reserve s6Step290CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step290Complete_repack : s6Step290ExitGvAfter.checkRepack s6Step290CompleteMoves=some s6Step290EarlyControlArena := by
  simpa only [s6Step290CompleteMoves] using s6Step290CompleteRelocation_checked

private theorem s6Step290EarlyControl_branchOwned : ([807] : List Wire).toFinset⊆s6Step290EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step290EarlyControlSigmaArena (fun q => ([(0,779),(780,782),(783,790),(791,792),(793,797),(799,800),(802,805),(806,808),(809,811),(813,815),(818,819),(821,823),(824,828),(829,830),(831,832),(833,842),(843,849),(850,858),(859,875),(876,879),(880,887),(888,892),(893,896),(897,899),(900,906),(907,914),(917,918),(919,920),(921,922),(923,925),(926,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step290EarlyControl_branch : compileHmrBranchRetirement s6Step290EarlyControlSigmaArena 807=some s6Step290EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step290EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step290EarlyControlSigmaArena s6Step290EarlyControlOutputArena (fun q => ([(0,779),(780,782),(783,790),(791,792),(793,797),(799,800),(802,805),(806,808),(809,811),(813,815),(818,819),(821,823),(824,828),(829,830),(831,832),(833,842),(843,849),(850,858),(859,875),(876,879),(880,887),(888,892),(893,896),(897,899),(900,906),(907,914),(917,918),(919,920),(921,922),(923,925),(926,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,779),(780,782),(783,790),(791,792),(793,797),(799,800),(802,805),(806,807),(809,811),(813,815),(818,819),(821,823),(824,828),(829,830),(831,832),(833,842),(843,849),(850,858),(859,875),(876,879),(880,887),(888,892),(893,896),(897,899),(900,906),(907,914),(917,918),(919,920),(921,922),(923,925),(926,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [807] rfl rfl
    decide +kernel

private theorem s6Step290EarlyControl_classEqualityBorrow : s6Step290EarlyControlPositiveArena.checkBorrow (([922, 875] : List Wire).length-1) s6Step290EarlyControlLog.classWork=some s6Step290EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step290EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step290EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step290EarlyControlEqualityArena,s6Step290EarlyControlPositiveArena,s6Step290EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step290EarlyControl_classEqualityOwned : ([922, 875] : List Wire).toFinset⊆s6Step290EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step290EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step290EarlyControl_classEquality : compileHmrEqualityLog s6Step290EarlyControlPositiveArena [922, 875] 0 s6Step290EarlyControlLog.classWork=some (s6Step290EarlyControlEqualityArena,s6Step290EarlyControlLog.classWork,s6Step290EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step290EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step290EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step290EarlyControl_classOwned : ([769, 879, 922] : List Wire).toFinset⊆s6Step290EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step290EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step290EarlyControl_positiveBorrow : s6Step290EarlyControlZeroArena.checkBorrow (1) s6Step290EarlyControlLog.positiveWork=some s6Step290EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step290EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step290EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step290EarlyControlPositiveArena,s6Step290EarlyControlZeroArena,s6Step290EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step290EarlyControl_class : compileHmrSourceClassLog s6Step290EarlyControlZeroArena false 769 s6Step290EarlyControlZeroPlan.top 0 922 s6Step290EarlyControlLog.positiveWork s6Step290EarlyControlLog.classWork=some s6Step290EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step290EarlyControlClassPlan s6Step290EarlyControlZeroArena false 769 s6Step290EarlyControlZeroPlan.top 0 922
  constructor
  · decide +kernel
  · exact s6Step290EarlyControl_classOwned
  · exact s6Step290EarlyControl_positiveBorrow
  · exact s6Step290EarlyControl_classEquality

private theorem s6Step290EarlyControl_entryRecordOwned : ([807, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] : List Wire).toFinset⊆s6Step290EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step290EarlyControlArena (fun q => ([(0,779),(780,782),(783,790),(791,792),(793,797),(799,800),(802,805),(806,808),(809,811),(813,815),(818,819),(821,823),(824,828),(829,830),(831,832),(833,842),(843,849),(850,858),(859,875),(876,879),(880,887),(888,892),(893,896),(897,899),(900,906),(907,914),(917,918),(919,920),(921,925),(926,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step290EarlyControl_entrySigmaOwned : ([922, 254] : List Wire).toFinset⊆s6Step290EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step290EarlyControlArena (fun q => ([(0,779),(780,782),(783,790),(791,792),(793,797),(799,800),(802,805),(806,808),(809,811),(813,815),(818,819),(821,823),(824,828),(829,830),(831,832),(833,842),(843,849),(850,858),(859,875),(876,879),(880,887),(888,892),(893,896),(897,899),(900,906),(907,914),(917,918),(919,920),(921,925),(926,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step290EarlyControl_fitBorrow : s6Step290EarlyControlFlagArena.checkBorrow ((54-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] : List Wire).length)) s6Step290EarlyControlLog.recordFresh=some s6Step290EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step290EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step290EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step290EarlyControlFittedArena,s6Step290EarlyControlFlagArena,s6Step290EarlyControlLog,arenaWires]

private theorem s6Step290EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] : List Wire).toFinset⊆s6Step290EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step290EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step290EarlyControl_fit : compileHmrRecordGrowLog s6Step290EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] 54 s6Step290EarlyControlLog.recordFresh=some s6Step290EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step290EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step290EarlyControl_fitBorrow

private theorem s6Step290EarlyControl_flagsBorrow : s6Step290EarlyControlEqualityArena.checkBorrow (6) s6Step290EarlyControlLog.flagWork=some s6Step290EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step290EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step290EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step290EarlyControlFlagArena,s6Step290EarlyControlEqualityArena,s6Step290EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step290EarlyControl_flagsOwned : ([828, 253, 252, 251] : List Wire).toFinset⊆s6Step290EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step290EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step290EarlyControl_flags : compileHmrFlagsLog s6Step290EarlyControlClassPlan.equalityArena s6Step290EarlyControlClassPlan.equality.top 253 252 251 s6Step290EarlyControlLog.flagWork=some s6Step290EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step290EarlyControl_flagsOwned⟩
  · exact s6Step290EarlyControl_flagsBorrow

private theorem s6Step290EarlyControl_historyBorrow : s6Step290EarlyControlArena.checkBorrow ((54-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] : List Wire).length)) s6Step290EarlyControlLog.recordFresh=some s6Step290EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step290EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step290EarlyControlArena (fun q => ([(0,779),(780,782),(783,790),(791,792),(793,797),(799,800),(802,805),(806,808),(809,811),(813,815),(818,819),(821,823),(824,828),(829,830),(831,832),(833,842),(843,849),(850,858),(859,875),(876,879),(880,887),(888,892),(893,896),(897,899),(900,906),(907,914),(917,918),(919,920),(921,925),(926,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step290EarlyControlArena s6Step290EarlyControlHistoryArena (fun q => ([(0,779),(780,782),(783,790),(791,792),(793,797),(799,800),(802,805),(806,808),(809,811),(813,815),(818,819),(821,823),(824,828),(829,830),(831,832),(833,842),(843,849),(850,858),(859,875),(876,879),(880,887),(888,892),(893,896),(897,899),(900,906),(907,914),(917,918),(919,920),(921,925),(926,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,779),(780,782),(783,790),(791,792),(793,797),(799,800),(802,805),(806,808),(809,811),(813,815),(818,819),(821,823),(824,828),(829,830),(831,832),(833,842),(843,849),(850,858),(859,875),(876,879),(880,887),(888,892),(893,896),(897,899),(900,906),(907,914),(917,918),(919,920),(921,925),(926,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step290EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step290EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step290EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] : List Wire).toFinset⊆s6Step290EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step290EarlyControlArena (fun q => ([(0,779),(780,782),(783,790),(791,792),(793,797),(799,800),(802,805),(806,808),(809,811),(813,815),(818,819),(821,823),(824,828),(829,830),(831,832),(833,842),(843,849),(850,858),(859,875),(876,879),(880,887),(888,892),(893,896),(897,899),(900,906),(907,914),(917,918),(919,920),(921,925),(926,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step290EarlyControl_history : compileHmrRecordGrowLog s6Step290EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] 54 s6Step290EarlyControlLog.recordFresh=some s6Step290EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step290EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step290EarlyControl_historyBorrow

private theorem s6Step290EarlyControl_sigmaOwned : ([254, 922] : List Wire).toFinset⊆s6Step290EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step290EarlyControlHistoryArena (fun q => ([(0,779),(780,782),(783,790),(791,792),(793,797),(799,800),(802,805),(806,808),(809,811),(813,815),(818,819),(821,823),(824,828),(829,830),(831,832),(833,842),(843,849),(850,858),(859,875),(876,879),(880,887),(888,892),(893,896),(897,899),(900,906),(907,914),(917,918),(919,920),(921,925),(926,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step290EarlyControl_sigmaReleaseOwned : ([922] : List Wire).toFinset⊆s6Step290EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step290EarlyControlHistoryArena (fun q => ([(0,779),(780,782),(783,790),(791,792),(793,797),(799,800),(802,805),(806,808),(809,811),(813,815),(818,819),(821,823),(824,828),(829,830),(831,832),(833,842),(843,849),(850,858),(859,875),(876,879),(880,887),(888,892),(893,896),(897,899),(900,906),(907,914),(917,918),(919,920),(921,925),(926,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step290EarlyControl_sigmaRelease : s6Step290EarlyControlHistoryArena.release {922} (fun _ => false)=some s6Step290EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step290EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step290EarlyControlHistoryArena s6Step290EarlyControlSigmaArena (fun q => ([(0,779),(780,782),(783,790),(791,792),(793,797),(799,800),(802,805),(806,808),(809,811),(813,815),(818,819),(821,823),(824,828),(829,830),(831,832),(833,842),(843,849),(850,858),(859,875),(876,879),(880,887),(888,892),(893,896),(897,899),(900,906),(907,914),(917,918),(919,920),(921,925),(926,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,779),(780,782),(783,790),(791,792),(793,797),(799,800),(802,805),(806,808),(809,811),(813,815),(818,819),(821,823),(824,828),(829,830),(831,832),(833,842),(843,849),(850,858),(859,875),(876,879),(880,887),(888,892),(893,896),(897,899),(900,906),(907,914),(917,918),(919,920),(921,922),(923,925),(926,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [922] rfl rfl
    decide +kernel

private theorem s6Step290EarlyControl_sigma : compileHmrSigmaDropLog s6Step290EarlyControlHistoryArena false 0 0 254 922 []=some s6Step290EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step290EarlyControl_sigmaOwned⟩
  · exact s6Step290EarlyControl_sigmaRelease

private theorem s6Step290EarlyControl_zeroBorrow : s6Step290EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step290EarlyControlLog.zeroWork=some s6Step290EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step290EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step290EarlyControlArena (fun q => ([(0,779),(780,782),(783,790),(791,792),(793,797),(799,800),(802,805),(806,808),(809,811),(813,815),(818,819),(821,823),(824,828),(829,830),(831,832),(833,842),(843,849),(850,858),(859,875),(876,879),(880,887),(888,892),(893,896),(897,899),(900,906),(907,914),(917,918),(919,920),(921,925),(926,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step290EarlyControlArena s6Step290EarlyControlZeroArena (fun q => ([(0,779),(780,782),(783,790),(791,792),(793,797),(799,800),(802,805),(806,808),(809,811),(813,815),(818,819),(821,823),(824,828),(829,830),(831,832),(833,842),(843,849),(850,858),(859,875),(876,879),(880,887),(888,892),(893,896),(897,899),(900,906),(907,914),(917,918),(919,920),(921,925),(926,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) s6Step290EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step290EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step290EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step290EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step290EarlyControlArena (fun q => ([(0,779),(780,782),(783,790),(791,792),(793,797),(799,800),(802,805),(806,808),(809,811),(813,815),(818,819),(821,823),(824,828),(829,830),(831,832),(833,842),(843,849),(850,858),(859,875),(876,879),(880,887),(888,892),(893,896),(897,899),(900,906),(907,914),(917,918),(919,920),(921,925),(926,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step290EarlyControl_zero : compileHmrEqualityLog s6Step290EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step290EarlyControlLog.zeroWork=some (s6Step290EarlyControlZeroArena,s6Step290EarlyControlLog.zeroWork,s6Step290EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step290EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step290EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step290EarlyControl_logged : s6Step290EarlyControlPlan.Logged s6Step290EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] 769 922 254 253 252 251 807 54 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step290EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step290EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step290EarlyControl_zero
  · exact s6Step290EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step290EarlyControl_flags
  · exact s6Step290EarlyControl_fit
  · exact s6Step290EarlyControl_history
  · exact s6Step290EarlyControl_sigma
  · exact s6Step290EarlyControl_branch

private theorem s6Step290EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step290EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] 769 922 254 253 252 251 807 54 s6Step290EarlyControlLog=some s6Step290EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step290EarlyControlPlan s6Step290EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] 769 922 254 253 252 251 807 54 s6Step290EarlyControl_logged

private def s6Step290EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,779),(780,782),(783,789),(791,792),(793,797),(799,800),(802,805),(806,807),(809,811),(813,815),(818,819),(821,828),(829,830),(831,832),(833,842),(843,849),(850,858),(859,875),(876,879),(880,887),(888,892),(893,896),(897,899),(900,906),(907,914),(917,918),(919,920),(921,922),(923,925),(926,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step290EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380],795⟩

private def s6Step290EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882],776⟩

private def s6Step290EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125],777⟩

private def s6Step290EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856],775⟩

private def s6Step290FrontBank : WindowBank := ⟨s6Step290EntryFRow,s6Step290EntryGRow,s6Step290EntryFvRow,s6Step290EntryGvRow⟩

private def s6Step290Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 858, 879, 795]

private def s6Step290Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 875, 777]

private def s6Step290Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 779, 776]

private def s6Step290Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 892, 775]

private theorem s6Step290Counter_apart : Disjoint s6Step290HeadFvAfter.live s6Step290CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step290HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step290Counter_borrowed : s6Step290HeadFvAfter.checkBorrow 4 s6Step290CounterWork=some s6Step290CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step290HeadFvAfter s6Step290CounterDuring s6Step290CounterWork.toFinset s6Step290Counter_bounded s6Step290Counter_apart rfl

private theorem s6Step290Counter_owned : (922::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step290HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step290HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step290Counter_checked : compileHmrCounterStepLog s6Step290HeadFvAfter true 922 [774, 773, 772, 771, 770, 769] s6Step290CounterWork=some s6Step290CounterDuring := by
  have owned : ∀q∈922::[774, 773, 772, 771, 770, 769],q∈s6Step290HeadFvAfter.live := fun q hq => s6Step290Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step290Counter_borrowed

private def s6Step290EntryFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step290EntryBank_incomingDistinct : ([s6Step290EntryFRow,s6Step290EntryGRow,s6Step290EntryFvRow,s6Step290EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step290EntryF_Incoming : rowsOwned s6Step290EntryFBefore [s6Step290EntryFRow,s6Step290EntryGRow,s6Step290EntryFvRow,s6Step290EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step290EntryFRow,s6Step290EntryGRow,s6Step290EntryFvRow,s6Step290EntryGvRow] 0 s6Step290EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step290EntryFBefore (fun q => ([(0,779),(780,782),(783,789),(791,792),(793,797),(799,800),(802,805),(806,807),(809,811),(813,815),(818,819),(821,828),(829,830),(831,832),(833,842),(843,849),(850,858),(859,875),(876,879),(880,887),(888,892),(893,896),(897,899),(900,906),(907,914),(917,918),(919,920),(921,922),(923,925),(926,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step290EntryBank_outgoingOwned : rowsOwned s6Step290EntryGvAfter [s6Step290EntryFOut,s6Step290EntryGOut,s6Step290EntryFvOut,s6Step290EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step290EntryGvAfter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step290EntryF_Outgoing : rowsOwned s6Step290EntryGvAfter [s6Step290EntryFOut,s6Step290EntryGOut,s6Step290EntryFvOut,s6Step290EntryGvOut] :=
  hmrRows_owned_drop s6Step290EntryGvAfter [s6Step290EntryFOut,s6Step290EntryGOut,s6Step290EntryFvOut,s6Step290EntryGvOut] 0 s6Step290EntryBank_outgoingOwned

private theorem s6Step290EntryF_distinct : (s6Step290EntryFRow.sign::s6Step290EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step290EntryF_owned : (s6Step290EntryFRow.sign::s6Step290EntryFRow.payload).toFinset⊆s6Step290EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step290EntryFBefore (fun q => ([(0,779),(780,782),(783,789),(791,792),(793,797),(799,800),(802,805),(806,807),(809,811),(813,815),(818,819),(821,828),(829,830),(831,832),(833,842),(843,849),(850,858),(859,875),(876,879),(880,887),(888,892),(893,896),(897,899),(900,906),(907,914),(917,918),(919,920),(921,922),(923,925),(926,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step290EntryF_reserved : s6Step290EntryFBefore.reserve s6Step290EntryFFresh.toFinset=some s6Step290EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step290EntryFFresh,arenaWires]
  · norm_num [s6Step290EntryFBefore,s6Step290EntryFFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step290EntryFBefore s6Step290EntryFAfter (fun q => ([(0,779),(780,782),(783,789),(791,792),(793,797),(799,800),(802,805),(806,807),(809,811),(813,815),(818,819),(821,828),(829,830),(831,832),(833,842),(843,849),(850,858),(859,875),(876,879),(880,887),(888,892),(893,896),(897,899),(900,906),(907,914),(917,918),(919,920),(921,922),(923,925),(926,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) s6Step290EntryFFresh rfl rfl
    · norm_num [s6Step290EntryFFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step290EntryF_checked : planRowResizeLog s6Step290EntryFBefore s6Step290EntryFRow 126 s6Step290EntryFFresh=
    some (s6Step290EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 858],795⟩,growRow 795 s6Step290EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step290EntryFBefore s6Step290EntryFAfter s6Step290EntryFRow 126 s6Step290EntryFFresh
    s6Step290EntryF_distinct s6Step290EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step290EntryF_reserved
  have rowEq : WindowRow.mk (s6Step290EntryFRow.payload++s6Step290EntryFFresh) s6Step290EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 858],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step290EntryFvAfter : Arena := s6Step290EntryFAfter

private def s6Step290EntryFvBefore : Arena := s6Step290EntryFAfter

private theorem s6Step290EntryFv_Incoming : rowsOwned s6Step290EntryFvBefore [s6Step290EntryFvRow,s6Step290EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step290EntryFRow,s6Step290EntryGRow,s6Step290EntryFvRow,s6Step290EntryGvRow] 2 s6Step290EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step290EntryFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step290EntryFv_Outgoing : rowsOwned s6Step290EntryGvAfter [s6Step290EntryFvOut,s6Step290EntryGvOut] :=
  hmrRows_owned_drop s6Step290EntryGvAfter [s6Step290EntryFOut,s6Step290EntryGOut,s6Step290EntryFvOut,s6Step290EntryGvOut] 2 s6Step290EntryBank_outgoingOwned

private theorem s6Step290EntryFv_distinct : (s6Step290EntryFvRow.sign::s6Step290EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step290EntryFv_owned : (s6Step290EntryFvRow.sign::s6Step290EntryFvRow.payload).toFinset⊆s6Step290EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step290EntryFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step290EntryFv_reserved : s6Step290EntryFvBefore.reserve s6Step290EntryFvFresh.toFinset=some s6Step290EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step290EntryFvFresh,arenaWires]
  · norm_num [s6Step290EntryFvBefore,s6Step290EntryFAfter,s6Step290EntryFvFresh,arenaWires]
  · simp only [s6Step290EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step290EntryFv_checked : planRowResizeLog s6Step290EntryFvBefore s6Step290EntryFvRow 160 s6Step290EntryFvFresh=
    some (s6Step290EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882],776⟩,growRow 776 s6Step290EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step290EntryFvBefore s6Step290EntryFvAfter s6Step290EntryFvRow 160 s6Step290EntryFvFresh
    s6Step290EntryFv_distinct s6Step290EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step290EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step290EntryFvRow.payload++s6Step290EntryFvFresh) s6Step290EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step290EntryGAfter : Arena := s6Step290EntryFAfter

private def s6Step290EntryGBefore : Arena := s6Step290EntryFAfter

private theorem s6Step290EntryG_Incoming : rowsOwned s6Step290EntryGBefore [s6Step290EntryGRow,s6Step290EntryFvRow,s6Step290EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step290EntryFRow,s6Step290EntryGRow,s6Step290EntryFvRow,s6Step290EntryGvRow] 1 s6Step290EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step290EntryGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step290EntryG_Outgoing : rowsOwned s6Step290EntryGvAfter [s6Step290EntryGOut,s6Step290EntryFvOut,s6Step290EntryGvOut] :=
  hmrRows_owned_drop s6Step290EntryGvAfter [s6Step290EntryFOut,s6Step290EntryGOut,s6Step290EntryFvOut,s6Step290EntryGvOut] 1 s6Step290EntryBank_outgoingOwned

private theorem s6Step290EntryG_distinct : (s6Step290EntryGRow.sign::s6Step290EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step290EntryG_owned : (s6Step290EntryGRow.sign::s6Step290EntryGRow.payload).toFinset⊆s6Step290EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step290EntryGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step290EntryG_reserved : s6Step290EntryGBefore.reserve s6Step290EntryGFresh.toFinset=some s6Step290EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step290EntryGFresh,arenaWires]
  · norm_num [s6Step290EntryGBefore,s6Step290EntryFAfter,s6Step290EntryGFresh,arenaWires]
  · simp only [s6Step290EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step290EntryG_checked : planRowResizeLog s6Step290EntryGBefore s6Step290EntryGRow 126 s6Step290EntryGFresh=
    some (s6Step290EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125],777⟩,growRow 777 s6Step290EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step290EntryGBefore s6Step290EntryGAfter s6Step290EntryGRow 126 s6Step290EntryGFresh
    s6Step290EntryG_distinct s6Step290EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step290EntryG_reserved
  have rowEq : WindowRow.mk (s6Step290EntryGRow.payload++s6Step290EntryGFresh) s6Step290EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step290EntryGvBefore : Arena := s6Step290EntryFAfter

private theorem s6Step290EntryGv_Incoming : rowsOwned s6Step290EntryGvBefore [s6Step290EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step290EntryFRow,s6Step290EntryGRow,s6Step290EntryFvRow,s6Step290EntryGvRow] 3 s6Step290EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step290EntryGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step290EntryGv_Outgoing : rowsOwned s6Step290EntryGvAfter [s6Step290EntryGvOut] :=
  hmrRows_owned_drop s6Step290EntryGvAfter [s6Step290EntryFOut,s6Step290EntryGOut,s6Step290EntryFvOut,s6Step290EntryGvOut] 3 s6Step290EntryBank_outgoingOwned

private theorem s6Step290EntryGv_distinct : (s6Step290EntryGvRow.sign::s6Step290EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step290EntryGv_owned : (s6Step290EntryGvRow.sign::s6Step290EntryGvRow.payload).toFinset⊆s6Step290EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step290EntryGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step290EntryGv_reserved : s6Step290EntryGvBefore.reserve s6Step290EntryGvFresh.toFinset=some s6Step290EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step290EntryGvFresh,arenaWires]
  · norm_num [s6Step290EntryGvBefore,s6Step290EntryFAfter,s6Step290EntryGvFresh,arenaWires]
  · ext q
    simp only [s6Step290EntryGvAfter,s6Step290EntryGvBefore,s6Step290EntryFAfter,s6Step290EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step290EntryGv_checked : planRowResizeLog s6Step290EntryGvBefore s6Step290EntryGvRow 160 s6Step290EntryGvFresh=
    some (s6Step290EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789],775⟩,growRow 775 s6Step290EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step290EntryGvBefore s6Step290EntryGvAfter s6Step290EntryGvRow 160 s6Step290EntryGvFresh
    s6Step290EntryGv_distinct s6Step290EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step290EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step290EntryGvRow.payload++s6Step290EntryGvFresh) s6Step290EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step290EntryBank_rows : planWindowRowsLog s6Step290EntryFBefore [(s6Step290EntryFRow,126),(s6Step290EntryGRow,126),(s6Step290EntryFvRow,160),(s6Step290EntryGvRow,160)] [s6Step290EntryFFresh,s6Step290EntryGFresh,s6Step290EntryFvFresh,s6Step290EntryGvFresh]=
    some (s6Step290EntryGvAfter,[s6Step290EntryFOut,s6Step290EntryGOut,s6Step290EntryFvOut,s6Step290EntryGvOut],(growRow 795 s6Step290EntryFFresh ++ (growRow 777 s6Step290EntryGFresh ++ (growRow 776 s6Step290EntryFvFresh ++ (growRow 775 s6Step290EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step290EntryGvAfter [] []=some (s6Step290EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step290EntryGvBefore s6Step290EntryGvAfter s6Step290EntryGvAfter
    s6Step290EntryGvRow s6Step290EntryGvOut 160 s6Step290EntryGvFresh [] [] []
    (growRow 775 s6Step290EntryGvFresh) ([]) s6Step290EntryGv_Incoming s6Step290EntryGv_checked h4 s6Step290EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step290EntryFvBefore s6Step290EntryFvAfter s6Step290EntryGvAfter
    s6Step290EntryFvRow s6Step290EntryFvOut 160 s6Step290EntryFvFresh [(s6Step290EntryGvRow,160)] [s6Step290EntryGvFresh] [s6Step290EntryGvOut]
    (growRow 776 s6Step290EntryFvFresh) ((growRow 775 s6Step290EntryGvFresh ++ [])) s6Step290EntryFv_Incoming s6Step290EntryFv_checked h3 s6Step290EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step290EntryGBefore s6Step290EntryGAfter s6Step290EntryGvAfter
    s6Step290EntryGRow s6Step290EntryGOut 126 s6Step290EntryGFresh [(s6Step290EntryFvRow,160),(s6Step290EntryGvRow,160)] [s6Step290EntryFvFresh,s6Step290EntryGvFresh] [s6Step290EntryFvOut,s6Step290EntryGvOut]
    (growRow 777 s6Step290EntryGFresh) ((growRow 776 s6Step290EntryFvFresh ++ (growRow 775 s6Step290EntryGvFresh ++ []))) s6Step290EntryG_Incoming s6Step290EntryG_checked h2 s6Step290EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step290EntryFBefore s6Step290EntryFAfter s6Step290EntryGvAfter
    s6Step290EntryFRow s6Step290EntryFOut 126 s6Step290EntryFFresh [(s6Step290EntryGRow,126),(s6Step290EntryFvRow,160),(s6Step290EntryGvRow,160)] [s6Step290EntryGFresh,s6Step290EntryFvFresh,s6Step290EntryGvFresh] [s6Step290EntryGOut,s6Step290EntryFvOut,s6Step290EntryGvOut]
    (growRow 795 s6Step290EntryFFresh) ((growRow 777 s6Step290EntryGFresh ++ (growRow 776 s6Step290EntryFvFresh ++ (growRow 775 s6Step290EntryGvFresh ++ [])))) s6Step290EntryF_Incoming s6Step290EntryF_checked h1 s6Step290EntryF_Outgoing
  exact h0

private theorem s6Step290EntryBank_checked : compileHmrBankResizeLog .entry s6Step290EntryFBefore ⟨s6Step290EntryFRow,s6Step290EntryGRow,s6Step290EntryFvRow,s6Step290EntryGvRow⟩ ⟨126,126,160,160⟩ [s6Step290EntryFFresh,s6Step290EntryGFresh,s6Step290EntryFvFresh,s6Step290EntryGvFresh]=
    some (s6Step290EntryGvAfter,⟨s6Step290EntryFOut,s6Step290EntryGOut,s6Step290EntryFvOut,s6Step290EntryGvOut⟩,(growRow 795 s6Step290EntryFFresh ++ (growRow 777 s6Step290EntryGFresh ++ (growRow 776 s6Step290EntryFvFresh ++ (growRow 775 s6Step290EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step290EntryBank_rows]
  rfl

private def s6Step290ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<125) ∨ (126≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step290ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<125) ∨ (126≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step290ExitFBefore : Arena := s6Step290ExitGAfter

private def s6Step290ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 858, 879],795⟩

private def s6Step290ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 779],776⟩

private def s6Step290ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 875],777⟩

private def s6Step290ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 892],775⟩

private theorem s6Step290ExitBank_incomingDistinct : ([s6Step290ExitGRow,s6Step290ExitFRow,s6Step290ExitFvRow,s6Step290ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step290ExitF_Incoming : rowsOwned s6Step290ExitFBefore [s6Step290ExitFRow,s6Step290ExitFvRow,s6Step290ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step290ExitGRow,s6Step290ExitFRow,s6Step290ExitFvRow,s6Step290ExitGvRow] 1 s6Step290ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step290ExitFBefore (fun q => (0≤q ∧ q<125) ∨ (126≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step290ExitBank_outgoingOwned : rowsOwned s6Step290ExitGvAfter [s6Step290ExitGOut,s6Step290ExitFOut,s6Step290ExitFvOut,s6Step290ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step290ExitGvAfter (fun q => ([(0,125),(126,779),(780,782),(783,790),(791,792),(793,797),(799,800),(802,805),(806,808),(809,811),(813,815),(818,819),(821,828),(829,830),(831,832),(833,842),(843,849),(850,858),(859,875),(876,879),(880,887),(888,892),(893,896),(897,899),(900,906),(907,914),(917,918),(919,920),(921,925),(926,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step290ExitF_Outgoing : rowsOwned s6Step290ExitGvAfter [s6Step290ExitFOut,s6Step290ExitFvOut,s6Step290ExitGvOut] :=
  hmrRows_owned_drop s6Step290ExitGvAfter [s6Step290ExitGOut,s6Step290ExitFOut,s6Step290ExitFvOut,s6Step290ExitGvOut] 1 s6Step290ExitBank_outgoingOwned

private theorem s6Step290ExitF_distinct : (s6Step290ExitFRow.sign::s6Step290ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step290ExitF_owned : (s6Step290ExitFRow.sign::s6Step290ExitFRow.payload).toFinset⊆s6Step290ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step290ExitFBefore (fun q => (0≤q ∧ q<125) ∨ (126≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step290ExitF_retired : s6Step290ExitFBefore.retireSet s6Step290ExitFExtra.toFinset=s6Step290ExitFAfter := by
  unfold Arena.retireSet s6Step290ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step290ExitFBefore,s6Step290ExitGAfter,s6Step290ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step290ExitF_checked : planRowResizeLog s6Step290ExitFBefore s6Step290ExitFRow 125 []=
    some (s6Step290ExitFAfter,s6Step290ExitFOut,shrinkRow 795 s6Step290ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step290ExitFBefore s6Step290ExitFRow 125 s6Step290ExitF_distinct s6Step290ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step290ExitFRow.payload.take 125) s6Step290ExitFRow.sign=s6Step290ExitFOut := by decide +kernel
  have hi : s6Step290ExitFRow.payload.drop 125=s6Step290ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step290ExitF_retired] at result
  exact result

private def s6Step290ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<125) ∨ (126≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step290ExitFvBefore : Arena := s6Step290ExitFAfter

private theorem s6Step290ExitFv_Incoming : rowsOwned s6Step290ExitFvBefore [s6Step290ExitFvRow,s6Step290ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step290ExitGRow,s6Step290ExitFRow,s6Step290ExitFvRow,s6Step290ExitGvRow] 2 s6Step290ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step290ExitFvBefore (fun q => (0≤q ∧ q<125) ∨ (126≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step290ExitFv_Outgoing : rowsOwned s6Step290ExitGvAfter [s6Step290ExitFvOut,s6Step290ExitGvOut] :=
  hmrRows_owned_drop s6Step290ExitGvAfter [s6Step290ExitGOut,s6Step290ExitFOut,s6Step290ExitFvOut,s6Step290ExitGvOut] 2 s6Step290ExitBank_outgoingOwned

private theorem s6Step290ExitFv_distinct : (s6Step290ExitFvRow.sign::s6Step290ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step290ExitFv_owned : (s6Step290ExitFvRow.sign::s6Step290ExitFvRow.payload).toFinset⊆s6Step290ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step290ExitFvBefore (fun q => (0≤q ∧ q<125) ∨ (126≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step290ExitFv_retired : s6Step290ExitFvBefore.retireSet s6Step290ExitFvExtra.toFinset=s6Step290ExitFvAfter := by
  unfold Arena.retireSet s6Step290ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step290ExitFvBefore,s6Step290ExitFAfter,s6Step290ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step290ExitFv_checked : planRowResizeLog s6Step290ExitFvBefore s6Step290ExitFvRow 160 []=
    some (s6Step290ExitFvAfter,s6Step290ExitFvOut,shrinkRow 776 s6Step290ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step290ExitFvBefore s6Step290ExitFvRow 160 s6Step290ExitFv_distinct s6Step290ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step290ExitFvRow.payload.take 160) s6Step290ExitFvRow.sign=s6Step290ExitFvOut := by decide +kernel
  have hi : s6Step290ExitFvRow.payload.drop 160=s6Step290ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step290ExitFv_retired] at result
  exact result

private def s6Step290ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step290ExitG_Incoming : rowsOwned s6Step290ExitGBefore [s6Step290ExitGRow,s6Step290ExitFRow,s6Step290ExitFvRow,s6Step290ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step290ExitGRow,s6Step290ExitFRow,s6Step290ExitFvRow,s6Step290ExitGvRow] 0 s6Step290ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step290ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step290ExitG_Outgoing : rowsOwned s6Step290ExitGvAfter [s6Step290ExitGOut,s6Step290ExitFOut,s6Step290ExitFvOut,s6Step290ExitGvOut] :=
  hmrRows_owned_drop s6Step290ExitGvAfter [s6Step290ExitGOut,s6Step290ExitFOut,s6Step290ExitFvOut,s6Step290ExitGvOut] 0 s6Step290ExitBank_outgoingOwned

private theorem s6Step290ExitG_distinct : (s6Step290ExitGRow.sign::s6Step290ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step290ExitG_owned : (s6Step290ExitGRow.sign::s6Step290ExitGRow.payload).toFinset⊆s6Step290ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step290ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step290ExitG_retired : s6Step290ExitGBefore.retireSet s6Step290ExitGExtra.toFinset=s6Step290ExitGAfter := by
  unfold Arena.retireSet s6Step290ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step290ExitGBefore,s6Step290ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step290ExitG_checked : planRowResizeLog s6Step290ExitGBefore s6Step290ExitGRow 125 []=
    some (s6Step290ExitGAfter,s6Step290ExitGOut,shrinkRow 777 s6Step290ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step290ExitGBefore s6Step290ExitGRow 125 s6Step290ExitG_distinct s6Step290ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step290ExitGRow.payload.take 125) s6Step290ExitGRow.sign=s6Step290ExitGOut := by decide +kernel
  have hi : s6Step290ExitGRow.payload.drop 125=s6Step290ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step290ExitG_retired] at result
  exact result

private def s6Step290ExitGvBefore : Arena := s6Step290ExitFvAfter

private theorem s6Step290ExitGv_Incoming : rowsOwned s6Step290ExitGvBefore [s6Step290ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step290ExitGRow,s6Step290ExitFRow,s6Step290ExitFvRow,s6Step290ExitGvRow] 3 s6Step290ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step290ExitGvBefore (fun q => (0≤q ∧ q<125) ∨ (126≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step290ExitGv_Outgoing : rowsOwned s6Step290ExitGvAfter [s6Step290ExitGvOut] :=
  hmrRows_owned_drop s6Step290ExitGvAfter [s6Step290ExitGOut,s6Step290ExitFOut,s6Step290ExitFvOut,s6Step290ExitGvOut] 3 s6Step290ExitBank_outgoingOwned

private theorem s6Step290ExitGv_distinct : (s6Step290ExitGvRow.sign::s6Step290ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step290ExitGv_owned : (s6Step290ExitGvRow.sign::s6Step290ExitGvRow.payload).toFinset⊆s6Step290ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step290ExitGvBefore (fun q => (0≤q ∧ q<125) ∨ (126≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step290ExitGv_retired : s6Step290ExitGvBefore.retireSet s6Step290ExitGvExtra.toFinset=s6Step290ExitGvAfter := by
  apply hmrArena_retireSet_of_live s6Step290ExitGvBefore s6Step290ExitGvAfter s6Step290ExitGvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step290ExitGvBefore s6Step290ExitGvAfter (fun q => (0≤q ∧ q<125) ∨ (126≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) (fun q => ([(0,125),(126,779),(780,782),(783,790),(791,792),(793,797),(799,800),(802,805),(806,808),(809,811),(813,815),(818,819),(821,828),(829,830),(831,832),(833,842),(843,849),(850,858),(859,875),(876,879),(880,887),(888,892),(893,896),(897,899),(900,906),(907,914),(917,918),(919,920),(921,925),(926,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step290ExitGvExtra rfl rfl
  decide +kernel

private theorem s6Step290ExitGv_checked : planRowResizeLog s6Step290ExitGvBefore s6Step290ExitGvRow 160 []=
    some (s6Step290ExitGvAfter,s6Step290ExitGvOut,shrinkRow 775 s6Step290ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step290ExitGvBefore s6Step290ExitGvRow 160 s6Step290ExitGv_distinct s6Step290ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step290ExitGvRow.payload.take 160) s6Step290ExitGvRow.sign=s6Step290ExitGvOut := by decide +kernel
  have hi : s6Step290ExitGvRow.payload.drop 160=s6Step290ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step290ExitGv_retired] at result
  exact result

private theorem s6Step290ExitBank_rows : planWindowRowsLog s6Step290ExitGBefore [(s6Step290ExitGRow,125),(s6Step290ExitFRow,125),(s6Step290ExitFvRow,160),(s6Step290ExitGvRow,160)] [[],[],[],[]]=
    some (s6Step290ExitGvAfter,[s6Step290ExitGOut,s6Step290ExitFOut,s6Step290ExitFvOut,s6Step290ExitGvOut],(shrinkRow 777 s6Step290ExitGExtra ++ (shrinkRow 795 s6Step290ExitFExtra ++ (shrinkRow 776 s6Step290ExitFvExtra ++ (shrinkRow 775 s6Step290ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step290ExitGvAfter [] []=some (s6Step290ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step290ExitGvBefore s6Step290ExitGvAfter s6Step290ExitGvAfter
    s6Step290ExitGvRow s6Step290ExitGvOut 160 [] [] [] []
    (shrinkRow 775 s6Step290ExitGvExtra) ([]) s6Step290ExitGv_Incoming s6Step290ExitGv_checked h4 s6Step290ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step290ExitFvBefore s6Step290ExitFvAfter s6Step290ExitGvAfter
    s6Step290ExitFvRow s6Step290ExitFvOut 160 [] [(s6Step290ExitGvRow,160)] [[]] [s6Step290ExitGvOut]
    (shrinkRow 776 s6Step290ExitFvExtra) ((shrinkRow 775 s6Step290ExitGvExtra ++ [])) s6Step290ExitFv_Incoming s6Step290ExitFv_checked h3 s6Step290ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step290ExitFBefore s6Step290ExitFAfter s6Step290ExitGvAfter
    s6Step290ExitFRow s6Step290ExitFOut 125 [] [(s6Step290ExitFvRow,160),(s6Step290ExitGvRow,160)] [[],[]] [s6Step290ExitFvOut,s6Step290ExitGvOut]
    (shrinkRow 795 s6Step290ExitFExtra) ((shrinkRow 776 s6Step290ExitFvExtra ++ (shrinkRow 775 s6Step290ExitGvExtra ++ []))) s6Step290ExitF_Incoming s6Step290ExitF_checked h2 s6Step290ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step290ExitGBefore s6Step290ExitGAfter s6Step290ExitGvAfter
    s6Step290ExitGRow s6Step290ExitGOut 125 [] [(s6Step290ExitFRow,125),(s6Step290ExitFvRow,160),(s6Step290ExitGvRow,160)] [[],[],[]] [s6Step290ExitFOut,s6Step290ExitFvOut,s6Step290ExitGvOut]
    (shrinkRow 777 s6Step290ExitGExtra) ((shrinkRow 795 s6Step290ExitFExtra ++ (shrinkRow 776 s6Step290ExitFvExtra ++ (shrinkRow 775 s6Step290ExitGvExtra ++ [])))) s6Step290ExitG_Incoming s6Step290ExitG_checked h1 s6Step290ExitG_Outgoing
  exact h0

private theorem s6Step290ExitBank_checked : compileHmrBankResizeLog .exit s6Step290ExitGBefore ⟨s6Step290ExitFRow,s6Step290ExitGRow,s6Step290ExitFvRow,s6Step290ExitGvRow⟩ ⟨125,125,160,160⟩ [[],[],[],[]]=
    some (s6Step290ExitGvAfter,⟨s6Step290ExitFOut,s6Step290ExitGOut,s6Step290ExitFvOut,s6Step290ExitGvOut⟩,(shrinkRow 777 s6Step290ExitGExtra ++ (shrinkRow 795 s6Step290ExitFExtra ++ (shrinkRow 776 s6Step290ExitFvExtra ++ (shrinkRow 775 s6Step290ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step290ExitBank_rows]
  rfl

private theorem s6Step290Add0_apart : Disjoint s6Step290Add0Arena.live s6Step290Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step290Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step290Add0_card : s6Step290Add0Arena.live.card=900 := by
  decide +kernel

private theorem s6Step290Add0_borrowed : s6Step290Add0Arena.checkBorrow (hmrHybridCount s6Step290Add0Arena s6Step290Add0B.length) s6Step290Add0Work=some s6Step290Add0During := by
  have len : s6Step290Add0Work.length=hmrHybridCount s6Step290Add0Arena s6Step290Add0B.length := by
    rw [hmrHybridCount,s6Step290Add0_card]
    decide +kernel
  have nd : s6Step290Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step290Add0Arena s6Step290Add0During s6Step290Add0Work.toFinset s6Step290Add0_bounded s6Step290Add0_apart rfl

private theorem s6Step290Add0_distinct : (828::807::887::(s6Step290Add0A++s6Step290Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step290Add0_owned : (828::807::887::(s6Step290Add0A++s6Step290Add0B)).toFinset⊆s6Step290Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step290Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step290Add0_checked : compileHmrHybridCinLog s6Step290Add0Arena 807 828 887 s6Step290Add0A s6Step290Add0B s6Step290Add0Work=some s6Step290Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step290Add0Arena s6Step290Add0During 807 828 887 s6Step290Add0A s6Step290Add0B s6Step290Add0Work
    (by decide +kernel) (by decide +kernel) s6Step290Add0_distinct
    (fun q hq => s6Step290Add0_owned (List.mem_toFinset.mpr hq)) s6Step290Add0_borrowed

private theorem s6Step290Add1_apart : Disjoint s6Step290Add1Arena.live s6Step290Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step290Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step290Add1_card : s6Step290Add1Arena.live.card=900 := by
  decide +kernel

private theorem s6Step290Add1_borrowed : s6Step290Add1Arena.checkBorrow (hmrHybridCount s6Step290Add1Arena s6Step290Add1B.length) s6Step290Add1Work=some s6Step290Add1During := by
  have len : s6Step290Add1Work.length=hmrHybridCount s6Step290Add1Arena s6Step290Add1B.length := by
    rw [hmrHybridCount,s6Step290Add1_card]
    decide +kernel
  have nd : s6Step290Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step290Add1Arena s6Step290Add1During s6Step290Add1Work.toFinset s6Step290Add1_bounded s6Step290Add1_apart rfl

private theorem s6Step290Add1_distinct : (828::807::887::(s6Step290Add1A++s6Step290Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step290Add1_owned : (828::807::887::(s6Step290Add1A++s6Step290Add1B)).toFinset⊆s6Step290Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step290Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step290Add1_checked : compileHmrHybridCinLog s6Step290Add1Arena 807 828 887 s6Step290Add1A s6Step290Add1B s6Step290Add1Work=some s6Step290Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step290Add1Arena s6Step290Add1During 807 828 887 s6Step290Add1A s6Step290Add1B s6Step290Add1Work
    (by decide +kernel) (by decide +kernel) s6Step290Add1_distinct
    (fun q hq => s6Step290Add1_owned (List.mem_toFinset.mpr hq)) s6Step290Add1_borrowed

private theorem s6Step290F4_apart : Disjoint (s6Step290Add0A++s6Step290Add0B).toFinset (s6Step290Add1A++s6Step290Add1B).toFinset := by
  have nd : ((s6Step290Add0A++s6Step290Add0B)++(s6Step290Add1A++s6Step290Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step290F4_carry : s6Step290F4FlagArena.checkBorrow 1 [887]=some s6Step290Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step290F4FlagArena,s6Step290HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step290F4FlagArena,s6Step290HeadFvAfter,s6Step290Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step290F4_distinct : (922::807::828::887::((s6Step290Add0A++s6Step290Add1A)++(s6Step290Add0B++s6Step290Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step290F4_flag : s6Step290HeadFvAfter.checkBorrow 1 [828]=some s6Step290F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step290HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step290F4_owned : (922::807::((s6Step290Add0A++s6Step290Add1A)++(s6Step290Add0B++s6Step290Add1B))).toFinset⊆s6Step290HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step290HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step290F4_checked : compileHmrHybridF4Log s6Step290HeadFvAfter 922 807 s6Step290Add0A s6Step290Add0B s6Step290Add1A s6Step290Add1B [828] [887] s6Step290Add0Work s6Step290Add1Work=some s6Step290F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step290HeadFvAfter s6Step290F4FlagArena s6Step290Add0Arena s6Step290Add0During s6Step290Add1During 922 807
    s6Step290Add0A s6Step290Add0B s6Step290Add1A s6Step290Add1B [828] [887] s6Step290Add0Work s6Step290Add1Work
    (fun q hq => s6Step290F4_owned (List.mem_toFinset.mpr hq)) s6Step290F4_flag s6Step290F4_carry
    s6Step290F4_distinct s6Step290F4_apart s6Step290Add0_checked s6Step290Add1_checked

private theorem s6Step290Front_branch : s6Step290FrontSigmaArena.checkBorrow 1 [807]=some s6Step290HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step290FrontSigmaArena,s6Step290EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step290FrontSigmaArena,s6Step290EntryGvAfter,s6Step290HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step290Front_entry : HmrFrontEntryValid s6Step290EntryFBefore s6Step290FrontBank 126 160 ⟨125,125,160,160⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step290FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step290EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step290EntryFBefore (fun q => ([(0,779),(780,782),(783,789),(791,792),(793,797),(799,800),(802,805),(806,807),(809,811),(813,815),(818,819),(821,828),(829,830),(831,832),(833,842),(843,849),(850,858),(859,875),(876,879),(880,887),(888,892),(893,896),(897,899),(900,906),(907,914),(917,918),(919,920),(921,922),(923,925),(926,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step290FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step290Front_sigma : s6Step290EntryGvAfter.checkBorrow 1 [922]=some s6Step290FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step290EntryGvAfter,arenaWires]
  · rfl

private def s6Step290HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step290HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step290HeadFBefore : Arena := s6Step290HeadGAfter

private def s6Step290HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 858],795⟩

private def s6Step290HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882],776⟩

private def s6Step290HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125],777⟩

private def s6Step290HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789],775⟩

private theorem s6Step290HeadBank_incomingDistinct : ([s6Step290HeadGRow,s6Step290HeadFRow,s6Step290HeadGvRow,s6Step290HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step290HeadF_Incoming : rowsOwned s6Step290HeadFBefore [s6Step290HeadFRow,s6Step290HeadGvRow,s6Step290HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step290HeadGRow,s6Step290HeadFRow,s6Step290HeadGvRow,s6Step290HeadFvRow] 1 s6Step290HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step290HeadFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step290HeadBank_outgoingOwned : rowsOwned s6Step290HeadFvAfter [s6Step290HeadGOut,s6Step290HeadFOut,s6Step290HeadGvOut,s6Step290HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step290HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step290HeadF_Outgoing : rowsOwned s6Step290HeadFvAfter [s6Step290HeadFOut,s6Step290HeadGvOut,s6Step290HeadFvOut] :=
  hmrRows_owned_drop s6Step290HeadFvAfter [s6Step290HeadGOut,s6Step290HeadFOut,s6Step290HeadGvOut,s6Step290HeadFvOut] 1 s6Step290HeadBank_outgoingOwned

private theorem s6Step290HeadF_distinct : (s6Step290HeadFRow.sign::s6Step290HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step290HeadF_owned : (s6Step290HeadFRow.sign::s6Step290HeadFRow.payload).toFinset⊆s6Step290HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step290HeadFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step290HeadF_reserved : s6Step290HeadFBefore.reserve s6Step290HeadFFresh.toFinset=some s6Step290HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step290HeadFFresh,arenaWires]
  · norm_num [s6Step290HeadFBefore,s6Step290HeadGAfter,s6Step290HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step290HeadFAfter,s6Step290HeadFBefore,s6Step290HeadGAfter,s6Step290HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step290HeadF_checked : planRowResizeLog s6Step290HeadFBefore s6Step290HeadFRow 127 s6Step290HeadFFresh=
    some (s6Step290HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 858, 879],795⟩,growRow 795 s6Step290HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step290HeadFBefore s6Step290HeadFAfter s6Step290HeadFRow 127 s6Step290HeadFFresh
    s6Step290HeadF_distinct s6Step290HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step290HeadF_reserved
  have rowEq : WindowRow.mk (s6Step290HeadFRow.payload++s6Step290HeadFFresh) s6Step290HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 858, 879],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step290HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step290HeadFvBefore : Arena := s6Step290HeadGvAfter

private theorem s6Step290HeadFv_Incoming : rowsOwned s6Step290HeadFvBefore [s6Step290HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step290HeadGRow,s6Step290HeadFRow,s6Step290HeadGvRow,s6Step290HeadFvRow] 3 s6Step290HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step290HeadFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step290HeadFv_Outgoing : rowsOwned s6Step290HeadFvAfter [s6Step290HeadFvOut] :=
  hmrRows_owned_drop s6Step290HeadFvAfter [s6Step290HeadGOut,s6Step290HeadFOut,s6Step290HeadGvOut,s6Step290HeadFvOut] 3 s6Step290HeadBank_outgoingOwned

private theorem s6Step290HeadFv_distinct : (s6Step290HeadFvRow.sign::s6Step290HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step290HeadFv_owned : (s6Step290HeadFvRow.sign::s6Step290HeadFvRow.payload).toFinset⊆s6Step290HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step290HeadFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step290HeadFv_reserved : s6Step290HeadFvBefore.reserve s6Step290HeadFvFresh.toFinset=some s6Step290HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step290HeadFvFresh,arenaWires]
  · norm_num [s6Step290HeadFvBefore,s6Step290HeadGvAfter,s6Step290HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step290HeadFvAfter,s6Step290HeadFvBefore,s6Step290HeadGvAfter,s6Step290HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step290HeadFv_checked : planRowResizeLog s6Step290HeadFvBefore s6Step290HeadFvRow 161 s6Step290HeadFvFresh=
    some (s6Step290HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 779],776⟩,growRow 776 s6Step290HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step290HeadFvBefore s6Step290HeadFvAfter s6Step290HeadFvRow 161 s6Step290HeadFvFresh
    s6Step290HeadFv_distinct s6Step290HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step290HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step290HeadFvRow.payload++s6Step290HeadFvFresh) s6Step290HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 779],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step290HeadG_Incoming : rowsOwned s6Step290HeadGBefore [s6Step290HeadGRow,s6Step290HeadFRow,s6Step290HeadGvRow,s6Step290HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step290HeadGRow,s6Step290HeadFRow,s6Step290HeadGvRow,s6Step290HeadFvRow] 0 s6Step290HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step290HeadGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step290HeadG_Outgoing : rowsOwned s6Step290HeadFvAfter [s6Step290HeadGOut,s6Step290HeadFOut,s6Step290HeadGvOut,s6Step290HeadFvOut] :=
  hmrRows_owned_drop s6Step290HeadFvAfter [s6Step290HeadGOut,s6Step290HeadFOut,s6Step290HeadGvOut,s6Step290HeadFvOut] 0 s6Step290HeadBank_outgoingOwned

private theorem s6Step290HeadG_distinct : (s6Step290HeadGRow.sign::s6Step290HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step290HeadG_owned : (s6Step290HeadGRow.sign::s6Step290HeadGRow.payload).toFinset⊆s6Step290HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step290HeadGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step290HeadG_reserved : s6Step290HeadGBefore.reserve s6Step290HeadGFresh.toFinset=some s6Step290HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step290HeadGFresh,arenaWires]
  · norm_num [s6Step290HeadGBefore,s6Step290HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step290HeadGAfter,s6Step290HeadGBefore,s6Step290HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step290HeadG_checked : planRowResizeLog s6Step290HeadGBefore s6Step290HeadGRow 127 s6Step290HeadGFresh=
    some (s6Step290HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 875],777⟩,growRow 777 s6Step290HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step290HeadGBefore s6Step290HeadGAfter s6Step290HeadGRow 127 s6Step290HeadGFresh
    s6Step290HeadG_distinct s6Step290HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step290HeadG_reserved
  have rowEq : WindowRow.mk (s6Step290HeadGRow.payload++s6Step290HeadGFresh) s6Step290HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 875],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step290HeadGvBefore : Arena := s6Step290HeadFAfter

private theorem s6Step290HeadGv_Incoming : rowsOwned s6Step290HeadGvBefore [s6Step290HeadGvRow,s6Step290HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step290HeadGRow,s6Step290HeadFRow,s6Step290HeadGvRow,s6Step290HeadFvRow] 2 s6Step290HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step290HeadGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step290HeadGv_Outgoing : rowsOwned s6Step290HeadFvAfter [s6Step290HeadGvOut,s6Step290HeadFvOut] :=
  hmrRows_owned_drop s6Step290HeadFvAfter [s6Step290HeadGOut,s6Step290HeadFOut,s6Step290HeadGvOut,s6Step290HeadFvOut] 2 s6Step290HeadBank_outgoingOwned

private theorem s6Step290HeadGv_distinct : (s6Step290HeadGvRow.sign::s6Step290HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step290HeadGv_owned : (s6Step290HeadGvRow.sign::s6Step290HeadGvRow.payload).toFinset⊆s6Step290HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step290HeadGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step290HeadGv_reserved : s6Step290HeadGvBefore.reserve s6Step290HeadGvFresh.toFinset=some s6Step290HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step290HeadGvFresh,arenaWires]
  · norm_num [s6Step290HeadGvBefore,s6Step290HeadFAfter,s6Step290HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step290HeadGvAfter,s6Step290HeadGvBefore,s6Step290HeadFAfter,s6Step290HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step290HeadGv_checked : planRowResizeLog s6Step290HeadGvBefore s6Step290HeadGvRow 161 s6Step290HeadGvFresh=
    some (s6Step290HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 892],775⟩,growRow 775 s6Step290HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step290HeadGvBefore s6Step290HeadGvAfter s6Step290HeadGvRow 161 s6Step290HeadGvFresh
    s6Step290HeadGv_distinct s6Step290HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step290HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step290HeadGvRow.payload++s6Step290HeadGvFresh) s6Step290HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 892],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step290HeadBank_rows : planWindowRowsLog s6Step290HeadGBefore [(s6Step290HeadGRow,127),(s6Step290HeadFRow,127),(s6Step290HeadGvRow,161),(s6Step290HeadFvRow,161)] [s6Step290HeadGFresh,s6Step290HeadFFresh,s6Step290HeadGvFresh,s6Step290HeadFvFresh]=
    some (s6Step290HeadFvAfter,[s6Step290HeadGOut,s6Step290HeadFOut,s6Step290HeadGvOut,s6Step290HeadFvOut],(growRow 777 s6Step290HeadGFresh ++ (growRow 795 s6Step290HeadFFresh ++ (growRow 775 s6Step290HeadGvFresh ++ (growRow 776 s6Step290HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step290HeadFvAfter [] []=some (s6Step290HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step290HeadFvBefore s6Step290HeadFvAfter s6Step290HeadFvAfter
    s6Step290HeadFvRow s6Step290HeadFvOut 161 s6Step290HeadFvFresh [] [] []
    (growRow 776 s6Step290HeadFvFresh) ([]) s6Step290HeadFv_Incoming s6Step290HeadFv_checked h4 s6Step290HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step290HeadGvBefore s6Step290HeadGvAfter s6Step290HeadFvAfter
    s6Step290HeadGvRow s6Step290HeadGvOut 161 s6Step290HeadGvFresh [(s6Step290HeadFvRow,161)] [s6Step290HeadFvFresh] [s6Step290HeadFvOut]
    (growRow 775 s6Step290HeadGvFresh) ((growRow 776 s6Step290HeadFvFresh ++ [])) s6Step290HeadGv_Incoming s6Step290HeadGv_checked h3 s6Step290HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step290HeadFBefore s6Step290HeadFAfter s6Step290HeadFvAfter
    s6Step290HeadFRow s6Step290HeadFOut 127 s6Step290HeadFFresh [(s6Step290HeadGvRow,161),(s6Step290HeadFvRow,161)] [s6Step290HeadGvFresh,s6Step290HeadFvFresh] [s6Step290HeadGvOut,s6Step290HeadFvOut]
    (growRow 795 s6Step290HeadFFresh) ((growRow 775 s6Step290HeadGvFresh ++ (growRow 776 s6Step290HeadFvFresh ++ []))) s6Step290HeadF_Incoming s6Step290HeadF_checked h2 s6Step290HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step290HeadGBefore s6Step290HeadGAfter s6Step290HeadFvAfter
    s6Step290HeadGRow s6Step290HeadGOut 127 s6Step290HeadGFresh [(s6Step290HeadFRow,127),(s6Step290HeadGvRow,161),(s6Step290HeadFvRow,161)] [s6Step290HeadFFresh,s6Step290HeadGvFresh,s6Step290HeadFvFresh] [s6Step290HeadFOut,s6Step290HeadGvOut,s6Step290HeadFvOut]
    (growRow 777 s6Step290HeadGFresh) ((growRow 795 s6Step290HeadFFresh ++ (growRow 775 s6Step290HeadGvFresh ++ (growRow 776 s6Step290HeadFvFresh ++ [])))) s6Step290HeadG_Incoming s6Step290HeadG_checked h1 s6Step290HeadG_Outgoing
  exact h0

private theorem s6Step290HeadBank_checked : compileHmrBankResizeLog .headroom s6Step290HeadGBefore ⟨s6Step290HeadFRow,s6Step290HeadGRow,s6Step290HeadFvRow,s6Step290HeadGvRow⟩ ⟨127,127,161,161⟩ [s6Step290HeadGFresh,s6Step290HeadFFresh,s6Step290HeadGvFresh,s6Step290HeadFvFresh]=
    some (s6Step290HeadFvAfter,⟨s6Step290HeadFOut,s6Step290HeadGOut,s6Step290HeadFvOut,s6Step290HeadGvOut⟩,(growRow 777 s6Step290HeadGFresh ++ (growRow 795 s6Step290HeadFFresh ++ (growRow 775 s6Step290HeadGvFresh ++ (growRow 776 s6Step290HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step290HeadBank_rows]
  rfl

private theorem s6Step290Front_checked : compileHmrSourceFrontLog s6Step290EntryFBefore s6Step290FrontBank 126 160 ⟨125,125,160,160⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step290FrontLog=some s6Step290FrontPlan := by
  have pairEq : s6Step290FrontPair=⟨s6Step290HeadFRow,s6Step290HeadGRow,s6Step290HeadFvRow,s6Step290HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step290FrontHead=⟨s6Step290ExitFRow,s6Step290ExitGRow,s6Step290ExitFvRow,s6Step290ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step290Add0A=s6Step290FrontHead.f.wires := by decide +kernel
  have gEq : s6Step290Add0B=s6Step290FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step290Add1A=s6Step290FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step290Add1B=s6Step290FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step290EntryFBefore s6Step290FrontBank 126 160 ⟨125,125,160,160⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step290FrontLog s6Step290FrontPlan
  · exact s6Step290Front_entry
  · exact s6Step290EntryBank_checked
  · exact s6Step290Front_sigma
  · rfl
  · exact s6Step290Front_branch
  · rfl
  · simpa only [s6Step290FrontPlan,pairEq] using s6Step290HeadBank_checked
  · simpa only [s6Step290FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step290F4_checked
  · exact s6Step290Counter_checked
  · rfl
  · simpa only [s6Step290FrontPlan,headEq] using s6Step290ExitBank_checked

private theorem s6Step290Complete_explicit_checked : compileHmrEarlyStepLog s6Step290EntryFBefore s6Step290FrontBank 126 160 ⟨125,125,160,160⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] 54 s6Step290CompleteLog=some s6Step290CompletePlan := by
  let Q := s6Step290EarlyControlPlan
  have hq := s6Step290EarlyControl_plan_checked
  have fv1 : s6Step290CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step290CompleteOut.fv.payload[2]?.getD s6Step290CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step290CompleteOut.fv.payload[3]?.getD s6Step290CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step290CompleteOut.fv.payload[4]?.getD s6Step290CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step290EntryFBefore s6Step290EarlyControlArena s6Step290FrontBank 126 160 ⟨125,125,160,160⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] 54 s6Step290CompleteLog s6Step290FrontPlan Q
    s6Step290Front_checked s6Step290Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step290Complete_owned s6Step290Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step290EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] 769 922 s6Step290CompleteOut.fv.second (s6Step290CompleteOut.fv.payload[2]?.getD s6Step290CompleteOut.fv.sign) (s6Step290CompleteOut.fv.payload[3]?.getD s6Step290CompleteOut.fv.sign) (s6Step290CompleteOut.fv.payload[4]?.getD s6Step290CompleteOut.fv.sign) 807 54 s6Step290EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep290Arena : Arena := s6Step290EntryFBefore
def s6PrivateStep290Bank : WindowBank := s6Step290FrontBank
def s6PrivateStep290Spec : HmrSourceWalkStepLog := ⟨126,160,⟨125,125,160,160⟩,54,.early s6Step290CompleteLog⟩
def s6PrivateStep290Plan : HmrSourceStepPlan := .early s6Step290CompletePlan
theorem s6PrivateStep290_source : s6PrivateStep290Spec=s6ObservedLogs288[2] := rfl
theorem s6PrivateStep290_checked : compileHmrSourceStepLog s6PrivateStep290Arena s6PrivateStep290Bank
    s6PrivateStep290Spec.fgWidth s6PrivateStep290Spec.vWidth s6PrivateStep290Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926]
    6 498 290 s6PrivateStep290Spec.need none s6PrivateStep290Spec.log=some s6PrivateStep290Plan := by
  change compileHmrSourceStepLog s6Step290EntryFBefore s6Step290FrontBank 126 160 ⟨125,125,160,160⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] 6 498 290 54 none (.early s6Step290CompleteLog)=some (.early s6Step290CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 290<498)]
  rw [s6Step290Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
