import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep110
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
import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2WalkLogs

namespace ECDSAAdd.Arithmetic.Paper935
private local instance privateStepDisjoint (xs ys : List Wire) : Decidable (List.Disjoint xs ys) :=
  decidable_of_iff (∀ q ∈ xs, q ∉ ys) List.disjoint_left.symm

private def s2Step112CompleteMoves : List (Wire × Wire) := [(820,211)]

private def s2Step112EarlyControlLog : HmrEarlyControlLog := ⟨[820, 846, 812, 807, 794],[792],[815],[809, 781, 849, 806, 802, 867],[]⟩

private def s2Step112FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[807], [812], [846], [808]],[[], [], [], []]⟩,[787],[805],[794],[792],[815, 809, 781, 849, 806, 802, 867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[815, 809, 781, 849, 806, 802, 867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[794, 792, 815, 809]⟩

private def s2Step112CompleteLog : HmrEarlyStepLog := ⟨s2Step112FrontLog,s2Step112CompleteMoves,s2Step112EarlyControlLog⟩

private def s2Step112ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723],768⟩

private def s2Step112ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808],770⟩

private def s2Step112ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210],769⟩

private def s2Step112ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800],771⟩

private def s2Step112FrontOut : WindowBank := ⟨s2Step112ExitFOut,s2Step112ExitGOut,s2Step112ExitFvOut,s2Step112ExitGvOut⟩

private def s2Step112CompleteOut : WindowBank := s2Step112FrontOut.repacked s2Step112CompleteMoves

private def s2Step112EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<820) ∨ (821≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step112EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step112EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step112EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step112EarlyControlPositiveArena,[792],s2Step112EarlyControlEqualityArena,[815],⟨⟨787,false⟩,[⟨⟨792,false⟩,815⟩]⟩⟩

private def s2Step112EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step112EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step112EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<820) ∨ (821≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step112EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<820) ∨ (821≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step112EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<820) ∨ (821≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step112EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step112EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,820⟩,⟨⟨774,false⟩,846⟩,⟨⟨775,false⟩,812⟩,⟨⟨776,false⟩,807⟩,⟨⟨777,false⟩,794⟩]⟩

private def s2Step112EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step112EarlyControlZeroArena,s2Step112EarlyControlZeroPlan,s2Step112EarlyControlClassPlan,s2Step112EarlyControlFlagArena,s2Step112EarlyControlFittedArena,s2Step112EarlyControlHistoryArena,s2Step112EarlyControlSigmaArena,s2Step112EarlyControlOutputArena,s2Step112EarlyControlLog⟩

private def s2Step112CounterWork : List Wire := [794, 792, 815, 809]

private theorem s2Step112Counter_bounded : s2Step112CounterWork.toFinset⊆arenaWires := by norm_num [s2Step112CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step112HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step112CounterDuring : Arena := ⟨s2Step112HeadFvAfter.live∪s2Step112CounterWork.toFinset,Finset.union_subset s2Step112HeadFvAfter.bounded s2Step112Counter_bounded⟩

private def s2Step112EntryFFresh : List Wire := []

private def s2Step112EntryFvFresh : List Wire := []

private def s2Step112EntryGFresh : List Wire := []

private def s2Step112EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step112EntryGvAfter : Arena := s2Step112EntryFBefore

private def s2Step112EntryGvFresh : List Wire := []

private def s2Step112ExitFExtra : List Wire := [812]

private def s2Step112ExitGExtra : List Wire := [211, 807]

private def s2Step112ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<211) ∨ (212≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step112ExitGvExtra : List Wire := [846]

private def s2Step112Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step112Add0Work : List Wire := [815, 809, 781, 849, 806, 802, 867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step112Add0_bounded : s2Step112Add0Work.toFinset⊆arenaWires := by
  have h : s2Step112Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step112Add0During : Arena := ⟨s2Step112Add0Arena.live∪s2Step112Add0Work.toFinset,Finset.union_subset s2Step112Add0Arena.bounded s2Step112Add0_bounded⟩

private def s2Step112Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step112Add1Work : List Wire := [815, 809, 781, 849, 806, 802, 867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step112Add1_bounded : s2Step112Add1Work.toFinset⊆arenaWires := by
  have h : s2Step112Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step112Add1During : Arena := ⟨s2Step112Add1Arena.live∪s2Step112Add1Work.toFinset,Finset.union_subset s2Step112Add1Arena.bounded s2Step112Add1_bounded⟩

private def s2Step112F4FlagArena : Arena := ⟨s2Step112HeadFvAfter.live∪{794},Finset.union_subset s2Step112HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step112F4Plan : HmrHybridF4Plan := ⟨s2Step112F4FlagArena,[794],s2Step112Add0Arena,[792],s2Step112Add0During,s2Step112Add0Work,s2Step112Add1During,s2Step112Add1Work⟩

private def s2Step112HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 812],768⟩

private def s2Step112HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808],770⟩

private def s2Step112HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 807],769⟩

private def s2Step112HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 846],771⟩

private def s2Step112FrontHead : WindowBank := ⟨s2Step112HeadFOut,s2Step112HeadGOut,s2Step112HeadFvOut,s2Step112HeadGvOut⟩

private def s2Step112EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723],768⟩

private def s2Step112EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810],770⟩

private def s2Step112EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211],769⟩

private def s2Step112EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800],771⟩

private def s2Step112FrontPair : WindowBank := ⟨s2Step112EntryFOut,s2Step112EntryGOut,s2Step112EntryFvOut,s2Step112EntryGvOut⟩

private def s2Step112FrontSigmaArena : Arena := ⟨s2Step112EntryGvAfter.live∪{787},Finset.union_subset s2Step112EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step112HeadFFresh : List Wire := [812]

private def s2Step112HeadFvFresh : List Wire := [808]

private def s2Step112HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step112HeadGFresh : List Wire := [807]

private def s2Step112HeadGvFresh : List Wire := [846]

private def s2Step112FrontPlan : HmrSourceFront := ⟨s2Step112EntryGvAfter,s2Step112FrontPair,(growRow 768 s2Step112EntryFFresh ++ (growRow 769 s2Step112EntryGFresh ++ (growRow 770 s2Step112EntryFvFresh ++ (growRow 771 s2Step112EntryGvFresh ++ [])))),s2Step112FrontSigmaArena,[787],s2Step112HeadGBefore,[805],
  s2Step112HeadFvAfter,s2Step112FrontHead,(growRow 769 s2Step112HeadGFresh ++ (growRow 768 s2Step112HeadFFresh ++ (growRow 771 s2Step112HeadGvFresh ++ (growRow 770 s2Step112HeadFvFresh ++ [])))),s2Step112F4Plan,s2Step112CounterDuring,s2Step112CounterWork,s2Step112ExitGvAfter,s2Step112FrontOut,(shrinkRow 769 s2Step112ExitGExtra ++ (shrinkRow 768 s2Step112ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step112ExitGvExtra ++ []))))⟩

private def s2Step112CompletePlan : HmrEarlyStepPlan := ⟨s2Step112FrontPlan,s2Step112EarlyControlArena,s2Step112EarlyControlPlan,s2Step112CompleteMoves⟩

private theorem s2Step112Complete_apart : List.Disjoint (s2Step112CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [787, 805, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] := by
  have nd : ((s2Step112CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[787, 805, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step112Complete_owned : (s2Step112CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step112EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step112EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<820) ∨ (821≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private def s2Step112CompleteMoveArena : Arena := ⟨s2Step112ExitGvAfter.live∪{211},Finset.union_subset s2Step112ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step112Complete_repack : s2Step112ExitGvAfter.checkRepack s2Step112CompleteMoves=some s2Step112EarlyControlArena := by
  have owned : 820∈s2Step112ExitGvAfter.live := by norm_num [s2Step112ExitGvAfter,arenaWires]
  have reserve : s2Step112ExitGvAfter.reserve {211}=some s2Step112CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step112ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step112CompleteMoveArena.retireSet {820}=s2Step112EarlyControlArena := by
    unfold Arena.retireSet s2Step112EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step112CompleteMoveArena,s2Step112ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step112CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step112CompleteMoveArena.retireSet {820}).checkRepack []=some s2Step112EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step112EarlyControl_branchOwned : ([805] : List Wire).toFinset⊆s2Step112EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step112EarlyControlSigmaArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<820) ∨ (821≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step112EarlyControl_branch : compileHmrBranchRetirement s2Step112EarlyControlSigmaArena 805=some s2Step112EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step112EarlyControl_branchOwned
  · ext q
    simp [s2Step112EarlyControlOutputArena,s2Step112EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step112EarlyControl_classEqualityBorrow : s2Step112EarlyControlPositiveArena.checkBorrow (([787, 792] : List Wire).length-1) s2Step112EarlyControlLog.classWork=some s2Step112EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step112EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step112EarlyControlPositiveArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step112EarlyControlEqualityArena,s2Step112EarlyControlPositiveArena,s2Step112EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step112EarlyControl_classEqualityOwned : ([787, 792] : List Wire).toFinset⊆s2Step112EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step112EarlyControlPositiveArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step112EarlyControl_classEquality : compileHmrEqualityLog s2Step112EarlyControlPositiveArena [787, 792] 0 s2Step112EarlyControlLog.classWork=some (s2Step112EarlyControlEqualityArena,s2Step112EarlyControlLog.classWork,s2Step112EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step112EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step112EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step112EarlyControl_classOwned : ([777, 794, 787] : List Wire).toFinset⊆s2Step112EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step112EarlyControlZeroArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step112EarlyControl_positiveBorrow : s2Step112EarlyControlZeroArena.checkBorrow (1) s2Step112EarlyControlLog.positiveWork=some s2Step112EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step112EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step112EarlyControlZeroArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step112EarlyControlPositiveArena,s2Step112EarlyControlZeroArena,s2Step112EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step112EarlyControl_class : compileHmrSourceClassLog s2Step112EarlyControlZeroArena false 777 s2Step112EarlyControlZeroPlan.top 0 787 s2Step112EarlyControlLog.positiveWork s2Step112EarlyControlLog.classWork=some s2Step112EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step112EarlyControlClassPlan s2Step112EarlyControlZeroArena false 777 s2Step112EarlyControlZeroPlan.top 0 787
  constructor
  · decide +kernel
  · exact s2Step112EarlyControl_classOwned
  · exact s2Step112EarlyControl_positiveBorrow
  · exact s2Step112EarlyControl_classEquality

private theorem s2Step112EarlyControl_entryRecordOwned : ([805, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).toFinset⊆s2Step112EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step112EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<820) ∨ (821≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step112EarlyControl_entrySigmaOwned : ([787, 254] : List Wire).toFinset⊆s2Step112EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step112EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<820) ∨ (821≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step112EarlyControl_fitBorrow : s2Step112EarlyControlFlagArena.checkBorrow ((37-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).length)) s2Step112EarlyControlLog.recordFresh=some s2Step112EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step112EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step112EarlyControlFlagArena (fun q => (0≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step112EarlyControlFittedArena,s2Step112EarlyControlFlagArena,s2Step112EarlyControlLog,arenaWires]

private theorem s2Step112EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).toFinset⊆s2Step112EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step112EarlyControlFlagArena (fun q => (0≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step112EarlyControl_fit : compileHmrRecordGrowLog s2Step112EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step112EarlyControlLog.recordFresh=some s2Step112EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step112EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step112EarlyControl_fitBorrow

private theorem s2Step112EarlyControl_flagsBorrow : s2Step112EarlyControlEqualityArena.checkBorrow (6) s2Step112EarlyControlLog.flagWork=some s2Step112EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step112EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step112EarlyControlEqualityArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step112EarlyControlFlagArena,s2Step112EarlyControlEqualityArena,s2Step112EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step112EarlyControl_flagsOwned : ([815, 253, 252, 251] : List Wire).toFinset⊆s2Step112EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step112EarlyControlEqualityArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step112EarlyControl_flags : compileHmrFlagsLog s2Step112EarlyControlClassPlan.equalityArena s2Step112EarlyControlClassPlan.equality.top 253 252 251 s2Step112EarlyControlLog.flagWork=some s2Step112EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step112EarlyControl_flagsOwned⟩
  · exact s2Step112EarlyControl_flagsBorrow

private theorem s2Step112EarlyControl_historyBorrow : s2Step112EarlyControlArena.checkBorrow ((37-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).length)) s2Step112EarlyControlLog.recordFresh=some s2Step112EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step112EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step112EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<820) ∨ (821≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step112EarlyControlHistoryArena,s2Step112EarlyControlArena,s2Step112EarlyControlLog,arenaWires]

private theorem s2Step112EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).toFinset⊆s2Step112EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step112EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<820) ∨ (821≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step112EarlyControl_history : compileHmrRecordGrowLog s2Step112EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step112EarlyControlLog.recordFresh=some s2Step112EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step112EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step112EarlyControl_historyBorrow

private theorem s2Step112EarlyControl_sigmaOwned : ([254, 787] : List Wire).toFinset⊆s2Step112EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step112EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<820) ∨ (821≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step112EarlyControl_sigmaReleaseOwned : ([787] : List Wire).toFinset⊆s2Step112EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step112EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<820) ∨ (821≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step112EarlyControl_sigmaRelease : s2Step112EarlyControlHistoryArena.release {787} (fun _ => false)=some s2Step112EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step112EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step112EarlyControlSigmaArena,s2Step112EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step112EarlyControl_sigma : compileHmrSigmaDropLog s2Step112EarlyControlHistoryArena false 0 0 254 787 []=some s2Step112EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step112EarlyControl_sigmaOwned⟩
  · exact s2Step112EarlyControl_sigmaRelease

private theorem s2Step112EarlyControl_zeroBorrow : s2Step112EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step112EarlyControlLog.zeroWork=some s2Step112EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step112EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step112EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<820) ∨ (821≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step112EarlyControlZeroArena,s2Step112EarlyControlArena,s2Step112EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step112EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step112EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step112EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<820) ∨ (821≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step112EarlyControl_zero : compileHmrEqualityLog s2Step112EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step112EarlyControlLog.zeroWork=some (s2Step112EarlyControlZeroArena,s2Step112EarlyControlLog.zeroWork,s2Step112EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step112EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step112EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step112EarlyControl_logged : s2Step112EarlyControlPlan.Logged s2Step112EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 787 254 253 252 251 805 37 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step112EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step112EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step112EarlyControl_zero
  · exact s2Step112EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step112EarlyControl_flags
  · exact s2Step112EarlyControl_fit
  · exact s2Step112EarlyControl_history
  · exact s2Step112EarlyControl_sigma
  · exact s2Step112EarlyControl_branch

private theorem s2Step112EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step112EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 787 254 253 252 251 805 37 s2Step112EarlyControlLog=some s2Step112EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step112EarlyControlPlan s2Step112EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 787 254 253 252 251 805 37 s2Step112EarlyControl_logged

private def s2Step112EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723],768⟩

private def s2Step112EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810],770⟩

private def s2Step112EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211],769⟩

private def s2Step112EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800],771⟩

private def s2Step112FrontBank : WindowBank := ⟨s2Step112EntryFRow,s2Step112EntryGRow,s2Step112EntryFvRow,s2Step112EntryGvRow⟩

private def s2Step112Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 812, 768]

private def s2Step112Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 807, 769]

private def s2Step112Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 770]

private def s2Step112Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 846, 771]

private theorem s2Step112Counter_apart : Disjoint s2Step112HeadFvAfter.live s2Step112CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step112HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step112Counter_borrowed : s2Step112HeadFvAfter.checkBorrow 4 s2Step112CounterWork=some s2Step112CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step112HeadFvAfter s2Step112CounterDuring s2Step112CounterWork.toFinset s2Step112Counter_bounded s2Step112Counter_apart rfl

private theorem s2Step112Counter_owned : (787::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step112HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step112HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step112Counter_checked : compileHmrCounterStepLog s2Step112HeadFvAfter true 787 [772, 773, 774, 775, 776, 777] s2Step112CounterWork=some s2Step112CounterDuring := by
  have owned : ∀q∈787::[772, 773, 774, 775, 776, 777],q∈s2Step112HeadFvAfter.live := fun q hq => s2Step112Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step112Counter_borrowed

private def s2Step112EntryFAfter : Arena := s2Step112EntryFBefore

private theorem s2Step112EntryBank_incomingDistinct : ([s2Step112EntryFRow,s2Step112EntryGRow,s2Step112EntryFvRow,s2Step112EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step112EntryF_Incoming : rowsOwned s2Step112EntryFBefore [s2Step112EntryFRow,s2Step112EntryGRow,s2Step112EntryFvRow,s2Step112EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step112EntryFRow,s2Step112EntryGRow,s2Step112EntryFvRow,s2Step112EntryGvRow] 0 s2Step112EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step112EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step112EntryBank_outgoingOwned : rowsOwned s2Step112EntryGvAfter [s2Step112EntryFOut,s2Step112EntryGOut,s2Step112EntryFvOut,s2Step112EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step112EntryGvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step112EntryF_Outgoing : rowsOwned s2Step112EntryGvAfter [s2Step112EntryFOut,s2Step112EntryGOut,s2Step112EntryFvOut,s2Step112EntryGvOut] :=
  hmrRows_owned_drop s2Step112EntryGvAfter [s2Step112EntryFOut,s2Step112EntryGOut,s2Step112EntryFvOut,s2Step112EntryGvOut] 0 s2Step112EntryBank_outgoingOwned

private theorem s2Step112EntryF_distinct : (s2Step112EntryFRow.sign::s2Step112EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step112EntryF_owned : (s2Step112EntryFRow.sign::s2Step112EntryFRow.payload).toFinset⊆s2Step112EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step112EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step112EntryF_reserved : s2Step112EntryFBefore.reserve s2Step112EntryFFresh.toFinset=some s2Step112EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step112EntryFFresh,arenaWires]
  · norm_num [s2Step112EntryFBefore,s2Step112EntryFFresh,arenaWires]
  · simp only [s2Step112EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step112EntryF_checked : planRowResizeLog s2Step112EntryFBefore s2Step112EntryFRow 212 s2Step112EntryFFresh=
    some (s2Step112EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723],768⟩,growRow 768 s2Step112EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step112EntryFBefore s2Step112EntryFAfter s2Step112EntryFRow 212 s2Step112EntryFFresh
    s2Step112EntryF_distinct s2Step112EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step112EntryF_reserved
  have rowEq : WindowRow.mk (s2Step112EntryFRow.payload++s2Step112EntryFFresh) s2Step112EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step112EntryFvAfter : Arena := s2Step112EntryFBefore

private def s2Step112EntryFvBefore : Arena := s2Step112EntryFBefore

private theorem s2Step112EntryFv_Incoming : rowsOwned s2Step112EntryFvBefore [s2Step112EntryFvRow,s2Step112EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step112EntryFRow,s2Step112EntryGRow,s2Step112EntryFvRow,s2Step112EntryGvRow] 2 s2Step112EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step112EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step112EntryFv_Outgoing : rowsOwned s2Step112EntryGvAfter [s2Step112EntryFvOut,s2Step112EntryGvOut] :=
  hmrRows_owned_drop s2Step112EntryGvAfter [s2Step112EntryFOut,s2Step112EntryGOut,s2Step112EntryFvOut,s2Step112EntryGvOut] 2 s2Step112EntryBank_outgoingOwned

private theorem s2Step112EntryFv_distinct : (s2Step112EntryFvRow.sign::s2Step112EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step112EntryFv_owned : (s2Step112EntryFvRow.sign::s2Step112EntryFvRow.payload).toFinset⊆s2Step112EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step112EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step112EntryFv_reserved : s2Step112EntryFvBefore.reserve s2Step112EntryFvFresh.toFinset=some s2Step112EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step112EntryFvFresh,arenaWires]
  · norm_num [s2Step112EntryFvBefore,s2Step112EntryFBefore,s2Step112EntryFvFresh,arenaWires]
  · simp only [s2Step112EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step112EntryFv_checked : planRowResizeLog s2Step112EntryFvBefore s2Step112EntryFvRow 69 s2Step112EntryFvFresh=
    some (s2Step112EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810],770⟩,growRow 770 s2Step112EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step112EntryFvBefore s2Step112EntryFvAfter s2Step112EntryFvRow 69 s2Step112EntryFvFresh
    s2Step112EntryFv_distinct s2Step112EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step112EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step112EntryFvRow.payload++s2Step112EntryFvFresh) s2Step112EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step112EntryGAfter : Arena := s2Step112EntryFBefore

private def s2Step112EntryGBefore : Arena := s2Step112EntryFBefore

private theorem s2Step112EntryG_Incoming : rowsOwned s2Step112EntryGBefore [s2Step112EntryGRow,s2Step112EntryFvRow,s2Step112EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step112EntryFRow,s2Step112EntryGRow,s2Step112EntryFvRow,s2Step112EntryGvRow] 1 s2Step112EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step112EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step112EntryG_Outgoing : rowsOwned s2Step112EntryGvAfter [s2Step112EntryGOut,s2Step112EntryFvOut,s2Step112EntryGvOut] :=
  hmrRows_owned_drop s2Step112EntryGvAfter [s2Step112EntryFOut,s2Step112EntryGOut,s2Step112EntryFvOut,s2Step112EntryGvOut] 1 s2Step112EntryBank_outgoingOwned

private theorem s2Step112EntryG_distinct : (s2Step112EntryGRow.sign::s2Step112EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step112EntryG_owned : (s2Step112EntryGRow.sign::s2Step112EntryGRow.payload).toFinset⊆s2Step112EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step112EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step112EntryG_reserved : s2Step112EntryGBefore.reserve s2Step112EntryGFresh.toFinset=some s2Step112EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step112EntryGFresh,arenaWires]
  · norm_num [s2Step112EntryGBefore,s2Step112EntryFBefore,s2Step112EntryGFresh,arenaWires]
  · simp only [s2Step112EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step112EntryG_checked : planRowResizeLog s2Step112EntryGBefore s2Step112EntryGRow 212 s2Step112EntryGFresh=
    some (s2Step112EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211],769⟩,growRow 769 s2Step112EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step112EntryGBefore s2Step112EntryGAfter s2Step112EntryGRow 212 s2Step112EntryGFresh
    s2Step112EntryG_distinct s2Step112EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step112EntryG_reserved
  have rowEq : WindowRow.mk (s2Step112EntryGRow.payload++s2Step112EntryGFresh) s2Step112EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step112EntryGvBefore : Arena := s2Step112EntryFBefore

private theorem s2Step112EntryGv_Incoming : rowsOwned s2Step112EntryGvBefore [s2Step112EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step112EntryFRow,s2Step112EntryGRow,s2Step112EntryFvRow,s2Step112EntryGvRow] 3 s2Step112EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step112EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step112EntryGv_Outgoing : rowsOwned s2Step112EntryGvAfter [s2Step112EntryGvOut] :=
  hmrRows_owned_drop s2Step112EntryGvAfter [s2Step112EntryFOut,s2Step112EntryGOut,s2Step112EntryFvOut,s2Step112EntryGvOut] 3 s2Step112EntryBank_outgoingOwned

private theorem s2Step112EntryGv_distinct : (s2Step112EntryGvRow.sign::s2Step112EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step112EntryGv_owned : (s2Step112EntryGvRow.sign::s2Step112EntryGvRow.payload).toFinset⊆s2Step112EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step112EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step112EntryGv_reserved : s2Step112EntryGvBefore.reserve s2Step112EntryGvFresh.toFinset=some s2Step112EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step112EntryGvFresh,arenaWires]
  · norm_num [s2Step112EntryGvBefore,s2Step112EntryFBefore,s2Step112EntryGvFresh,arenaWires]
  · simp only [s2Step112EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step112EntryGv_checked : planRowResizeLog s2Step112EntryGvBefore s2Step112EntryGvRow 69 s2Step112EntryGvFresh=
    some (s2Step112EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800],771⟩,growRow 771 s2Step112EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step112EntryGvBefore s2Step112EntryGvAfter s2Step112EntryGvRow 69 s2Step112EntryGvFresh
    s2Step112EntryGv_distinct s2Step112EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step112EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step112EntryGvRow.payload++s2Step112EntryGvFresh) s2Step112EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step112EntryBank_rows : planWindowRowsLog s2Step112EntryFBefore [(s2Step112EntryFRow,212),(s2Step112EntryGRow,212),(s2Step112EntryFvRow,69),(s2Step112EntryGvRow,69)] [s2Step112EntryFFresh,s2Step112EntryGFresh,s2Step112EntryFvFresh,s2Step112EntryGvFresh]=
    some (s2Step112EntryGvAfter,[s2Step112EntryFOut,s2Step112EntryGOut,s2Step112EntryFvOut,s2Step112EntryGvOut],(growRow 768 s2Step112EntryFFresh ++ (growRow 769 s2Step112EntryGFresh ++ (growRow 770 s2Step112EntryFvFresh ++ (growRow 771 s2Step112EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step112EntryGvAfter [] []=some (s2Step112EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step112EntryGvBefore s2Step112EntryGvAfter s2Step112EntryGvAfter
    s2Step112EntryGvRow s2Step112EntryGvOut 69 s2Step112EntryGvFresh [] [] []
    (growRow 771 s2Step112EntryGvFresh) ([]) s2Step112EntryGv_Incoming s2Step112EntryGv_checked h4 s2Step112EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step112EntryFvBefore s2Step112EntryFvAfter s2Step112EntryGvAfter
    s2Step112EntryFvRow s2Step112EntryFvOut 69 s2Step112EntryFvFresh [(s2Step112EntryGvRow,69)] [s2Step112EntryGvFresh] [s2Step112EntryGvOut]
    (growRow 770 s2Step112EntryFvFresh) ((growRow 771 s2Step112EntryGvFresh ++ [])) s2Step112EntryFv_Incoming s2Step112EntryFv_checked h3 s2Step112EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step112EntryGBefore s2Step112EntryGAfter s2Step112EntryGvAfter
    s2Step112EntryGRow s2Step112EntryGOut 212 s2Step112EntryGFresh [(s2Step112EntryFvRow,69),(s2Step112EntryGvRow,69)] [s2Step112EntryFvFresh,s2Step112EntryGvFresh] [s2Step112EntryFvOut,s2Step112EntryGvOut]
    (growRow 769 s2Step112EntryGFresh) ((growRow 770 s2Step112EntryFvFresh ++ (growRow 771 s2Step112EntryGvFresh ++ []))) s2Step112EntryG_Incoming s2Step112EntryG_checked h2 s2Step112EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step112EntryFBefore s2Step112EntryFAfter s2Step112EntryGvAfter
    s2Step112EntryFRow s2Step112EntryFOut 212 s2Step112EntryFFresh [(s2Step112EntryGRow,212),(s2Step112EntryFvRow,69),(s2Step112EntryGvRow,69)] [s2Step112EntryGFresh,s2Step112EntryFvFresh,s2Step112EntryGvFresh] [s2Step112EntryGOut,s2Step112EntryFvOut,s2Step112EntryGvOut]
    (growRow 768 s2Step112EntryFFresh) ((growRow 769 s2Step112EntryGFresh ++ (growRow 770 s2Step112EntryFvFresh ++ (growRow 771 s2Step112EntryGvFresh ++ [])))) s2Step112EntryF_Incoming s2Step112EntryF_checked h1 s2Step112EntryF_Outgoing
  exact h0

private theorem s2Step112EntryBank_checked : compileHmrBankResizeLog .entry s2Step112EntryFBefore ⟨s2Step112EntryFRow,s2Step112EntryGRow,s2Step112EntryFvRow,s2Step112EntryGvRow⟩ ⟨212,212,69,69⟩ [s2Step112EntryFFresh,s2Step112EntryGFresh,s2Step112EntryFvFresh,s2Step112EntryGvFresh]=
    some (s2Step112EntryGvAfter,⟨s2Step112EntryFOut,s2Step112EntryGOut,s2Step112EntryFvOut,s2Step112EntryGvOut⟩,(growRow 768 s2Step112EntryFFresh ++ (growRow 769 s2Step112EntryGFresh ++ (growRow 770 s2Step112EntryFvFresh ++ (growRow 771 s2Step112EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step112EntryBank_rows]
  rfl

private def s2Step112ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<211) ∨ (212≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step112ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<211) ∨ (212≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step112ExitFBefore : Arena := s2Step112ExitGAfter

private def s2Step112ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 812],768⟩

private def s2Step112ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808],770⟩

private def s2Step112ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 807],769⟩

private def s2Step112ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 846],771⟩

private theorem s2Step112ExitBank_incomingDistinct : ([s2Step112ExitGRow,s2Step112ExitFRow,s2Step112ExitFvRow,s2Step112ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step112ExitF_Incoming : rowsOwned s2Step112ExitFBefore [s2Step112ExitFRow,s2Step112ExitFvRow,s2Step112ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step112ExitGRow,s2Step112ExitFRow,s2Step112ExitFvRow,s2Step112ExitGvRow] 1 s2Step112ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step112ExitFBefore (fun q => (0≤q ∧ q<211) ∨ (212≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step112ExitBank_outgoingOwned : rowsOwned s2Step112ExitGvAfter [s2Step112ExitGOut,s2Step112ExitFOut,s2Step112ExitFvOut,s2Step112ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step112ExitGvAfter (fun q => (0≤q ∧ q<211) ∨ (212≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step112ExitF_Outgoing : rowsOwned s2Step112ExitGvAfter [s2Step112ExitFOut,s2Step112ExitFvOut,s2Step112ExitGvOut] :=
  hmrRows_owned_drop s2Step112ExitGvAfter [s2Step112ExitGOut,s2Step112ExitFOut,s2Step112ExitFvOut,s2Step112ExitGvOut] 1 s2Step112ExitBank_outgoingOwned

private theorem s2Step112ExitF_distinct : (s2Step112ExitFRow.sign::s2Step112ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step112ExitF_owned : (s2Step112ExitFRow.sign::s2Step112ExitFRow.payload).toFinset⊆s2Step112ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step112ExitFBefore (fun q => (0≤q ∧ q<211) ∨ (212≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step112ExitF_retired : s2Step112ExitFBefore.retireSet s2Step112ExitFExtra.toFinset=s2Step112ExitFAfter := by
  unfold Arena.retireSet s2Step112ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step112ExitFBefore,s2Step112ExitGAfter,s2Step112ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step112ExitF_checked : planRowResizeLog s2Step112ExitFBefore s2Step112ExitFRow 212 []=
    some (s2Step112ExitFAfter,s2Step112ExitFOut,shrinkRow 768 s2Step112ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step112ExitFBefore s2Step112ExitFRow 212 s2Step112ExitF_distinct s2Step112ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step112ExitFRow.payload.take 212) s2Step112ExitFRow.sign=s2Step112ExitFOut := by decide +kernel
  have hi : s2Step112ExitFRow.payload.drop 212=s2Step112ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step112ExitF_retired] at result
  exact result

private def s2Step112ExitFvAfter : Arena := s2Step112ExitFAfter

private def s2Step112ExitFvBefore : Arena := s2Step112ExitFAfter

private theorem s2Step112ExitFv_Incoming : rowsOwned s2Step112ExitFvBefore [s2Step112ExitFvRow,s2Step112ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step112ExitGRow,s2Step112ExitFRow,s2Step112ExitFvRow,s2Step112ExitGvRow] 2 s2Step112ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step112ExitFvBefore (fun q => (0≤q ∧ q<211) ∨ (212≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step112ExitFv_Outgoing : rowsOwned s2Step112ExitGvAfter [s2Step112ExitFvOut,s2Step112ExitGvOut] :=
  hmrRows_owned_drop s2Step112ExitGvAfter [s2Step112ExitGOut,s2Step112ExitFOut,s2Step112ExitFvOut,s2Step112ExitGvOut] 2 s2Step112ExitBank_outgoingOwned

private theorem s2Step112ExitFv_distinct : (s2Step112ExitFvRow.sign::s2Step112ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step112ExitFv_owned : (s2Step112ExitFvRow.sign::s2Step112ExitFvRow.payload).toFinset⊆s2Step112ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step112ExitFvBefore (fun q => (0≤q ∧ q<211) ∨ (212≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step112ExitFv_reserved : s2Step112ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step112ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step112ExitFv_checked : planRowResizeLog s2Step112ExitFvBefore s2Step112ExitFvRow 70 []=
    some (s2Step112ExitFvAfter,s2Step112ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step112ExitFvBefore s2Step112ExitFvAfter s2Step112ExitFvRow 70 []
    s2Step112ExitFv_distinct s2Step112ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step112ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step112ExitFvRow.payload++[]) s2Step112ExitFvRow.sign=s2Step112ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step112ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private theorem s2Step112ExitG_Incoming : rowsOwned s2Step112ExitGBefore [s2Step112ExitGRow,s2Step112ExitFRow,s2Step112ExitFvRow,s2Step112ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step112ExitGRow,s2Step112ExitFRow,s2Step112ExitFvRow,s2Step112ExitGvRow] 0 s2Step112ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step112ExitGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step112ExitG_Outgoing : rowsOwned s2Step112ExitGvAfter [s2Step112ExitGOut,s2Step112ExitFOut,s2Step112ExitFvOut,s2Step112ExitGvOut] :=
  hmrRows_owned_drop s2Step112ExitGvAfter [s2Step112ExitGOut,s2Step112ExitFOut,s2Step112ExitFvOut,s2Step112ExitGvOut] 0 s2Step112ExitBank_outgoingOwned

private theorem s2Step112ExitG_distinct : (s2Step112ExitGRow.sign::s2Step112ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step112ExitG_owned : (s2Step112ExitGRow.sign::s2Step112ExitGRow.payload).toFinset⊆s2Step112ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step112ExitGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step112ExitG_retired : s2Step112ExitGBefore.retireSet s2Step112ExitGExtra.toFinset=s2Step112ExitGAfter := by
  unfold Arena.retireSet s2Step112ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step112ExitGBefore,s2Step112ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step112ExitG_checked : planRowResizeLog s2Step112ExitGBefore s2Step112ExitGRow 211 []=
    some (s2Step112ExitGAfter,s2Step112ExitGOut,shrinkRow 769 s2Step112ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step112ExitGBefore s2Step112ExitGRow 211 s2Step112ExitG_distinct s2Step112ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step112ExitGRow.payload.take 211) s2Step112ExitGRow.sign=s2Step112ExitGOut := by decide +kernel
  have hi : s2Step112ExitGRow.payload.drop 211=s2Step112ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step112ExitG_retired] at result
  exact result

private def s2Step112ExitGvBefore : Arena := s2Step112ExitFAfter

private theorem s2Step112ExitGv_Incoming : rowsOwned s2Step112ExitGvBefore [s2Step112ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step112ExitGRow,s2Step112ExitFRow,s2Step112ExitFvRow,s2Step112ExitGvRow] 3 s2Step112ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step112ExitGvBefore (fun q => (0≤q ∧ q<211) ∨ (212≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step112ExitGv_Outgoing : rowsOwned s2Step112ExitGvAfter [s2Step112ExitGvOut] :=
  hmrRows_owned_drop s2Step112ExitGvAfter [s2Step112ExitGOut,s2Step112ExitFOut,s2Step112ExitFvOut,s2Step112ExitGvOut] 3 s2Step112ExitBank_outgoingOwned

private theorem s2Step112ExitGv_distinct : (s2Step112ExitGvRow.sign::s2Step112ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step112ExitGv_owned : (s2Step112ExitGvRow.sign::s2Step112ExitGvRow.payload).toFinset⊆s2Step112ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step112ExitGvBefore (fun q => (0≤q ∧ q<211) ∨ (212≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step112ExitGv_retired : s2Step112ExitGvBefore.retireSet s2Step112ExitGvExtra.toFinset=s2Step112ExitGvAfter := by
  unfold Arena.retireSet s2Step112ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step112ExitGvBefore,s2Step112ExitFAfter,s2Step112ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step112ExitGv_checked : planRowResizeLog s2Step112ExitGvBefore s2Step112ExitGvRow 69 []=
    some (s2Step112ExitGvAfter,s2Step112ExitGvOut,shrinkRow 771 s2Step112ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step112ExitGvBefore s2Step112ExitGvRow 69 s2Step112ExitGv_distinct s2Step112ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step112ExitGvRow.payload.take 69) s2Step112ExitGvRow.sign=s2Step112ExitGvOut := by decide +kernel
  have hi : s2Step112ExitGvRow.payload.drop 69=s2Step112ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step112ExitGv_retired] at result
  exact result

private theorem s2Step112ExitBank_rows : planWindowRowsLog s2Step112ExitGBefore [(s2Step112ExitGRow,211),(s2Step112ExitFRow,212),(s2Step112ExitFvRow,70),(s2Step112ExitGvRow,69)] [[],[],[],[]]=
    some (s2Step112ExitGvAfter,[s2Step112ExitGOut,s2Step112ExitFOut,s2Step112ExitFvOut,s2Step112ExitGvOut],(shrinkRow 769 s2Step112ExitGExtra ++ (shrinkRow 768 s2Step112ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step112ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step112ExitGvAfter [] []=some (s2Step112ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step112ExitGvBefore s2Step112ExitGvAfter s2Step112ExitGvAfter
    s2Step112ExitGvRow s2Step112ExitGvOut 69 [] [] [] []
    (shrinkRow 771 s2Step112ExitGvExtra) ([]) s2Step112ExitGv_Incoming s2Step112ExitGv_checked h4 s2Step112ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step112ExitFvBefore s2Step112ExitFvAfter s2Step112ExitGvAfter
    s2Step112ExitFvRow s2Step112ExitFvOut 70 [] [(s2Step112ExitGvRow,69)] [[]] [s2Step112ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step112ExitGvExtra ++ [])) s2Step112ExitFv_Incoming s2Step112ExitFv_checked h3 s2Step112ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step112ExitFBefore s2Step112ExitFAfter s2Step112ExitGvAfter
    s2Step112ExitFRow s2Step112ExitFOut 212 [] [(s2Step112ExitFvRow,70),(s2Step112ExitGvRow,69)] [[],[]] [s2Step112ExitFvOut,s2Step112ExitGvOut]
    (shrinkRow 768 s2Step112ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step112ExitGvExtra ++ []))) s2Step112ExitF_Incoming s2Step112ExitF_checked h2 s2Step112ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step112ExitGBefore s2Step112ExitGAfter s2Step112ExitGvAfter
    s2Step112ExitGRow s2Step112ExitGOut 211 [] [(s2Step112ExitFRow,212),(s2Step112ExitFvRow,70),(s2Step112ExitGvRow,69)] [[],[],[]] [s2Step112ExitFOut,s2Step112ExitFvOut,s2Step112ExitGvOut]
    (shrinkRow 769 s2Step112ExitGExtra) ((shrinkRow 768 s2Step112ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step112ExitGvExtra ++ [])))) s2Step112ExitG_Incoming s2Step112ExitG_checked h1 s2Step112ExitG_Outgoing
  exact h0

private theorem s2Step112ExitBank_checked : compileHmrBankResizeLog .exit s2Step112ExitGBefore ⟨s2Step112ExitFRow,s2Step112ExitGRow,s2Step112ExitFvRow,s2Step112ExitGvRow⟩ ⟨212,211,70,69⟩ [[],[],[],[]]=
    some (s2Step112ExitGvAfter,⟨s2Step112ExitFOut,s2Step112ExitGOut,s2Step112ExitFvOut,s2Step112ExitGvOut⟩,(shrinkRow 769 s2Step112ExitGExtra ++ (shrinkRow 768 s2Step112ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step112ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step112ExitBank_rows]
  rfl

private theorem s2Step112Add0_apart : Disjoint s2Step112Add0Arena.live s2Step112Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step112Add0Arena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step112Add0_card : s2Step112Add0Arena.live.card=873 := by
  decide +kernel

private theorem s2Step112Add0_borrowed : s2Step112Add0Arena.checkBorrow (hmrHybridCount s2Step112Add0Arena s2Step112Add0B.length) s2Step112Add0Work=some s2Step112Add0During := by
  have len : s2Step112Add0Work.length=hmrHybridCount s2Step112Add0Arena s2Step112Add0B.length := by
    rw [hmrHybridCount,s2Step112Add0_card]
    decide +kernel
  have nd : s2Step112Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step112Add0Arena s2Step112Add0During s2Step112Add0Work.toFinset s2Step112Add0_bounded s2Step112Add0_apart rfl

private theorem s2Step112Add0_distinct : (794::805::792::(s2Step112Add0A++s2Step112Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step112Add0_owned : (794::805::792::(s2Step112Add0A++s2Step112Add0B)).toFinset⊆s2Step112Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step112Add0Arena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step112Add0_checked : compileHmrHybridCinLog s2Step112Add0Arena 805 794 792 s2Step112Add0A s2Step112Add0B s2Step112Add0Work=some s2Step112Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step112Add0Arena s2Step112Add0During 805 794 792 s2Step112Add0A s2Step112Add0B s2Step112Add0Work
    (by decide +kernel) (by decide +kernel) s2Step112Add0_distinct
    (fun q hq => s2Step112Add0_owned (List.mem_toFinset.mpr hq)) s2Step112Add0_borrowed

private theorem s2Step112Add1_apart : Disjoint s2Step112Add1Arena.live s2Step112Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step112Add1Arena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step112Add1_card : s2Step112Add1Arena.live.card=873 := by
  decide +kernel

private theorem s2Step112Add1_borrowed : s2Step112Add1Arena.checkBorrow (hmrHybridCount s2Step112Add1Arena s2Step112Add1B.length) s2Step112Add1Work=some s2Step112Add1During := by
  have len : s2Step112Add1Work.length=hmrHybridCount s2Step112Add1Arena s2Step112Add1B.length := by
    rw [hmrHybridCount,s2Step112Add1_card]
    decide +kernel
  have nd : s2Step112Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step112Add1Arena s2Step112Add1During s2Step112Add1Work.toFinset s2Step112Add1_bounded s2Step112Add1_apart rfl

private theorem s2Step112Add1_distinct : (794::805::792::(s2Step112Add1A++s2Step112Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step112Add1_owned : (794::805::792::(s2Step112Add1A++s2Step112Add1B)).toFinset⊆s2Step112Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step112Add1Arena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step112Add1_checked : compileHmrHybridCinLog s2Step112Add1Arena 805 794 792 s2Step112Add1A s2Step112Add1B s2Step112Add1Work=some s2Step112Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step112Add1Arena s2Step112Add1During 805 794 792 s2Step112Add1A s2Step112Add1B s2Step112Add1Work
    (by decide +kernel) (by decide +kernel) s2Step112Add1_distinct
    (fun q hq => s2Step112Add1_owned (List.mem_toFinset.mpr hq)) s2Step112Add1_borrowed

private theorem s2Step112F4_apart : Disjoint (s2Step112Add0A++s2Step112Add0B).toFinset (s2Step112Add1A++s2Step112Add1B).toFinset := by
  have nd : ((s2Step112Add0A++s2Step112Add0B)++(s2Step112Add1A++s2Step112Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step112F4_carry : s2Step112F4FlagArena.checkBorrow 1 [792]=some s2Step112Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step112F4FlagArena,s2Step112HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step112F4FlagArena,s2Step112HeadFvAfter,s2Step112Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step112F4_distinct : (787::805::794::792::((s2Step112Add0A++s2Step112Add1A)++(s2Step112Add0B++s2Step112Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step112F4_flag : s2Step112HeadFvAfter.checkBorrow 1 [794]=some s2Step112F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step112HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step112F4_owned : (787::805::((s2Step112Add0A++s2Step112Add1A)++(s2Step112Add0B++s2Step112Add1B))).toFinset⊆s2Step112HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step112HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step112F4_checked : compileHmrHybridF4Log s2Step112HeadFvAfter 787 805 s2Step112Add0A s2Step112Add0B s2Step112Add1A s2Step112Add1B [794] [792] s2Step112Add0Work s2Step112Add1Work=some s2Step112F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step112HeadFvAfter s2Step112F4FlagArena s2Step112Add0Arena s2Step112Add0During s2Step112Add1During 787 805
    s2Step112Add0A s2Step112Add0B s2Step112Add1A s2Step112Add1B [794] [792] s2Step112Add0Work s2Step112Add1Work
    (fun q hq => s2Step112F4_owned (List.mem_toFinset.mpr hq)) s2Step112F4_flag s2Step112F4_carry
    s2Step112F4_distinct s2Step112F4_apart s2Step112Add0_checked s2Step112Add1_checked

private theorem s2Step112Front_branch : s2Step112FrontSigmaArena.checkBorrow 1 [805]=some s2Step112HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step112FrontSigmaArena,s2Step112EntryGvAfter,s2Step112EntryFBefore,arenaWires]
  · ext q
    simp only [s2Step112FrontSigmaArena,s2Step112EntryGvAfter,s2Step112EntryFBefore,s2Step112HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step112Front_entry : HmrFrontEntryValid s2Step112EntryFBefore s2Step112FrontBank 212 69 ⟨212,211,70,69⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step112FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step112EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step112EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step112FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step112Front_sigma : s2Step112EntryGvAfter.checkBorrow 1 [787]=some s2Step112FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step112EntryGvAfter,s2Step112EntryFBefore,arenaWires]
  · rfl

private def s2Step112HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step112HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step112HeadFBefore : Arena := s2Step112HeadGAfter

private def s2Step112HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723],768⟩

private def s2Step112HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810],770⟩

private def s2Step112HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211],769⟩

private def s2Step112HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800],771⟩

private theorem s2Step112HeadBank_incomingDistinct : ([s2Step112HeadGRow,s2Step112HeadFRow,s2Step112HeadGvRow,s2Step112HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step112HeadF_Incoming : rowsOwned s2Step112HeadFBefore [s2Step112HeadFRow,s2Step112HeadGvRow,s2Step112HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step112HeadGRow,s2Step112HeadFRow,s2Step112HeadGvRow,s2Step112HeadFvRow] 1 s2Step112HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step112HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step112HeadBank_outgoingOwned : rowsOwned s2Step112HeadFvAfter [s2Step112HeadGOut,s2Step112HeadFOut,s2Step112HeadGvOut,s2Step112HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step112HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step112HeadF_Outgoing : rowsOwned s2Step112HeadFvAfter [s2Step112HeadFOut,s2Step112HeadGvOut,s2Step112HeadFvOut] :=
  hmrRows_owned_drop s2Step112HeadFvAfter [s2Step112HeadGOut,s2Step112HeadFOut,s2Step112HeadGvOut,s2Step112HeadFvOut] 1 s2Step112HeadBank_outgoingOwned

private theorem s2Step112HeadF_distinct : (s2Step112HeadFRow.sign::s2Step112HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step112HeadF_owned : (s2Step112HeadFRow.sign::s2Step112HeadFRow.payload).toFinset⊆s2Step112HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step112HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step112HeadF_reserved : s2Step112HeadFBefore.reserve s2Step112HeadFFresh.toFinset=some s2Step112HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step112HeadFFresh,arenaWires]
  · norm_num [s2Step112HeadFBefore,s2Step112HeadGAfter,s2Step112HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step112HeadFAfter,s2Step112HeadFBefore,s2Step112HeadGAfter,s2Step112HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step112HeadF_checked : planRowResizeLog s2Step112HeadFBefore s2Step112HeadFRow 213 s2Step112HeadFFresh=
    some (s2Step112HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 812],768⟩,growRow 768 s2Step112HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step112HeadFBefore s2Step112HeadFAfter s2Step112HeadFRow 213 s2Step112HeadFFresh
    s2Step112HeadF_distinct s2Step112HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step112HeadF_reserved
  have rowEq : WindowRow.mk (s2Step112HeadFRow.payload++s2Step112HeadFFresh) s2Step112HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 812],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step112HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step112HeadFvBefore : Arena := s2Step112HeadGvAfter

private theorem s2Step112HeadFv_Incoming : rowsOwned s2Step112HeadFvBefore [s2Step112HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step112HeadGRow,s2Step112HeadFRow,s2Step112HeadGvRow,s2Step112HeadFvRow] 3 s2Step112HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step112HeadFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step112HeadFv_Outgoing : rowsOwned s2Step112HeadFvAfter [s2Step112HeadFvOut] :=
  hmrRows_owned_drop s2Step112HeadFvAfter [s2Step112HeadGOut,s2Step112HeadFOut,s2Step112HeadGvOut,s2Step112HeadFvOut] 3 s2Step112HeadBank_outgoingOwned

private theorem s2Step112HeadFv_distinct : (s2Step112HeadFvRow.sign::s2Step112HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step112HeadFv_owned : (s2Step112HeadFvRow.sign::s2Step112HeadFvRow.payload).toFinset⊆s2Step112HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step112HeadFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step112HeadFv_reserved : s2Step112HeadFvBefore.reserve s2Step112HeadFvFresh.toFinset=some s2Step112HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step112HeadFvFresh,arenaWires]
  · norm_num [s2Step112HeadFvBefore,s2Step112HeadGvAfter,s2Step112HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step112HeadFvAfter,s2Step112HeadFvBefore,s2Step112HeadGvAfter,s2Step112HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step112HeadFv_checked : planRowResizeLog s2Step112HeadFvBefore s2Step112HeadFvRow 70 s2Step112HeadFvFresh=
    some (s2Step112HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808],770⟩,growRow 770 s2Step112HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step112HeadFvBefore s2Step112HeadFvAfter s2Step112HeadFvRow 70 s2Step112HeadFvFresh
    s2Step112HeadFv_distinct s2Step112HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step112HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step112HeadFvRow.payload++s2Step112HeadFvFresh) s2Step112HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step112HeadG_Incoming : rowsOwned s2Step112HeadGBefore [s2Step112HeadGRow,s2Step112HeadFRow,s2Step112HeadGvRow,s2Step112HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step112HeadGRow,s2Step112HeadFRow,s2Step112HeadGvRow,s2Step112HeadFvRow] 0 s2Step112HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step112HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step112HeadG_Outgoing : rowsOwned s2Step112HeadFvAfter [s2Step112HeadGOut,s2Step112HeadFOut,s2Step112HeadGvOut,s2Step112HeadFvOut] :=
  hmrRows_owned_drop s2Step112HeadFvAfter [s2Step112HeadGOut,s2Step112HeadFOut,s2Step112HeadGvOut,s2Step112HeadFvOut] 0 s2Step112HeadBank_outgoingOwned

private theorem s2Step112HeadG_distinct : (s2Step112HeadGRow.sign::s2Step112HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step112HeadG_owned : (s2Step112HeadGRow.sign::s2Step112HeadGRow.payload).toFinset⊆s2Step112HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step112HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step112HeadG_reserved : s2Step112HeadGBefore.reserve s2Step112HeadGFresh.toFinset=some s2Step112HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step112HeadGFresh,arenaWires]
  · norm_num [s2Step112HeadGBefore,s2Step112HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step112HeadGAfter,s2Step112HeadGBefore,s2Step112HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step112HeadG_checked : planRowResizeLog s2Step112HeadGBefore s2Step112HeadGRow 213 s2Step112HeadGFresh=
    some (s2Step112HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 807],769⟩,growRow 769 s2Step112HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step112HeadGBefore s2Step112HeadGAfter s2Step112HeadGRow 213 s2Step112HeadGFresh
    s2Step112HeadG_distinct s2Step112HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step112HeadG_reserved
  have rowEq : WindowRow.mk (s2Step112HeadGRow.payload++s2Step112HeadGFresh) s2Step112HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 807],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step112HeadGvBefore : Arena := s2Step112HeadFAfter

private theorem s2Step112HeadGv_Incoming : rowsOwned s2Step112HeadGvBefore [s2Step112HeadGvRow,s2Step112HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step112HeadGRow,s2Step112HeadFRow,s2Step112HeadGvRow,s2Step112HeadFvRow] 2 s2Step112HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step112HeadGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step112HeadGv_Outgoing : rowsOwned s2Step112HeadFvAfter [s2Step112HeadGvOut,s2Step112HeadFvOut] :=
  hmrRows_owned_drop s2Step112HeadFvAfter [s2Step112HeadGOut,s2Step112HeadFOut,s2Step112HeadGvOut,s2Step112HeadFvOut] 2 s2Step112HeadBank_outgoingOwned

private theorem s2Step112HeadGv_distinct : (s2Step112HeadGvRow.sign::s2Step112HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step112HeadGv_owned : (s2Step112HeadGvRow.sign::s2Step112HeadGvRow.payload).toFinset⊆s2Step112HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step112HeadGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step112HeadGv_reserved : s2Step112HeadGvBefore.reserve s2Step112HeadGvFresh.toFinset=some s2Step112HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step112HeadGvFresh,arenaWires]
  · norm_num [s2Step112HeadGvBefore,s2Step112HeadFAfter,s2Step112HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step112HeadGvAfter,s2Step112HeadGvBefore,s2Step112HeadFAfter,s2Step112HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step112HeadGv_checked : planRowResizeLog s2Step112HeadGvBefore s2Step112HeadGvRow 70 s2Step112HeadGvFresh=
    some (s2Step112HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 846],771⟩,growRow 771 s2Step112HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step112HeadGvBefore s2Step112HeadGvAfter s2Step112HeadGvRow 70 s2Step112HeadGvFresh
    s2Step112HeadGv_distinct s2Step112HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step112HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step112HeadGvRow.payload++s2Step112HeadGvFresh) s2Step112HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 846],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step112HeadBank_rows : planWindowRowsLog s2Step112HeadGBefore [(s2Step112HeadGRow,213),(s2Step112HeadFRow,213),(s2Step112HeadGvRow,70),(s2Step112HeadFvRow,70)] [s2Step112HeadGFresh,s2Step112HeadFFresh,s2Step112HeadGvFresh,s2Step112HeadFvFresh]=
    some (s2Step112HeadFvAfter,[s2Step112HeadGOut,s2Step112HeadFOut,s2Step112HeadGvOut,s2Step112HeadFvOut],(growRow 769 s2Step112HeadGFresh ++ (growRow 768 s2Step112HeadFFresh ++ (growRow 771 s2Step112HeadGvFresh ++ (growRow 770 s2Step112HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step112HeadFvAfter [] []=some (s2Step112HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step112HeadFvBefore s2Step112HeadFvAfter s2Step112HeadFvAfter
    s2Step112HeadFvRow s2Step112HeadFvOut 70 s2Step112HeadFvFresh [] [] []
    (growRow 770 s2Step112HeadFvFresh) ([]) s2Step112HeadFv_Incoming s2Step112HeadFv_checked h4 s2Step112HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step112HeadGvBefore s2Step112HeadGvAfter s2Step112HeadFvAfter
    s2Step112HeadGvRow s2Step112HeadGvOut 70 s2Step112HeadGvFresh [(s2Step112HeadFvRow,70)] [s2Step112HeadFvFresh] [s2Step112HeadFvOut]
    (growRow 771 s2Step112HeadGvFresh) ((growRow 770 s2Step112HeadFvFresh ++ [])) s2Step112HeadGv_Incoming s2Step112HeadGv_checked h3 s2Step112HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step112HeadFBefore s2Step112HeadFAfter s2Step112HeadFvAfter
    s2Step112HeadFRow s2Step112HeadFOut 213 s2Step112HeadFFresh [(s2Step112HeadGvRow,70),(s2Step112HeadFvRow,70)] [s2Step112HeadGvFresh,s2Step112HeadFvFresh] [s2Step112HeadGvOut,s2Step112HeadFvOut]
    (growRow 768 s2Step112HeadFFresh) ((growRow 771 s2Step112HeadGvFresh ++ (growRow 770 s2Step112HeadFvFresh ++ []))) s2Step112HeadF_Incoming s2Step112HeadF_checked h2 s2Step112HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step112HeadGBefore s2Step112HeadGAfter s2Step112HeadFvAfter
    s2Step112HeadGRow s2Step112HeadGOut 213 s2Step112HeadGFresh [(s2Step112HeadFRow,213),(s2Step112HeadGvRow,70),(s2Step112HeadFvRow,70)] [s2Step112HeadFFresh,s2Step112HeadGvFresh,s2Step112HeadFvFresh] [s2Step112HeadFOut,s2Step112HeadGvOut,s2Step112HeadFvOut]
    (growRow 769 s2Step112HeadGFresh) ((growRow 768 s2Step112HeadFFresh ++ (growRow 771 s2Step112HeadGvFresh ++ (growRow 770 s2Step112HeadFvFresh ++ [])))) s2Step112HeadG_Incoming s2Step112HeadG_checked h1 s2Step112HeadG_Outgoing
  exact h0

private theorem s2Step112HeadBank_checked : compileHmrBankResizeLog .headroom s2Step112HeadGBefore ⟨s2Step112HeadFRow,s2Step112HeadGRow,s2Step112HeadFvRow,s2Step112HeadGvRow⟩ ⟨213,213,70,70⟩ [s2Step112HeadGFresh,s2Step112HeadFFresh,s2Step112HeadGvFresh,s2Step112HeadFvFresh]=
    some (s2Step112HeadFvAfter,⟨s2Step112HeadFOut,s2Step112HeadGOut,s2Step112HeadFvOut,s2Step112HeadGvOut⟩,(growRow 769 s2Step112HeadGFresh ++ (growRow 768 s2Step112HeadFFresh ++ (growRow 771 s2Step112HeadGvFresh ++ (growRow 770 s2Step112HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step112HeadBank_rows]
  rfl

private theorem s2Step112Front_checked : compileHmrSourceFrontLog s2Step112EntryFBefore s2Step112FrontBank 212 69 ⟨212,211,70,69⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step112FrontLog=some s2Step112FrontPlan := by
  have pairEq : s2Step112FrontPair=⟨s2Step112HeadFRow,s2Step112HeadGRow,s2Step112HeadFvRow,s2Step112HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step112FrontHead=⟨s2Step112ExitFRow,s2Step112ExitGRow,s2Step112ExitFvRow,s2Step112ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step112Add0A=s2Step112FrontHead.f.wires := by decide +kernel
  have gEq : s2Step112Add0B=s2Step112FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step112Add1A=s2Step112FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step112Add1B=s2Step112FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step112EntryFBefore s2Step112FrontBank 212 69 ⟨212,211,70,69⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step112FrontLog s2Step112FrontPlan
  · exact s2Step112Front_entry
  · exact s2Step112EntryBank_checked
  · exact s2Step112Front_sigma
  · rfl
  · exact s2Step112Front_branch
  · rfl
  · simpa only [s2Step112FrontPlan,pairEq] using s2Step112HeadBank_checked
  · simpa only [s2Step112FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step112F4_checked
  · exact s2Step112Counter_checked
  · rfl
  · simpa only [s2Step112FrontPlan,headEq] using s2Step112ExitBank_checked

private theorem s2Step112Complete_explicit_checked : compileHmrEarlyStepLog s2Step112EntryFBefore s2Step112FrontBank 212 69 ⟨212,211,70,69⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step112CompleteLog=some s2Step112CompletePlan := by
  let Q := s2Step112EarlyControlPlan
  have hq := s2Step112EarlyControl_plan_checked
  have fv1 : s2Step112CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step112CompleteOut.fv.payload[2]?.getD s2Step112CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step112CompleteOut.fv.payload[3]?.getD s2Step112CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step112CompleteOut.fv.payload[4]?.getD s2Step112CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step112EntryFBefore s2Step112EarlyControlArena s2Step112FrontBank 212 69 ⟨212,211,70,69⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step112CompleteLog s2Step112FrontPlan Q
    s2Step112Front_checked s2Step112Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step112Complete_owned s2Step112Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step112EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 787 s2Step112CompleteOut.fv.second (s2Step112CompleteOut.fv.payload[2]?.getD s2Step112CompleteOut.fv.sign) (s2Step112CompleteOut.fv.payload[3]?.getD s2Step112CompleteOut.fv.sign) (s2Step112CompleteOut.fv.payload[4]?.getD s2Step112CompleteOut.fv.sign) 805 37 s2Step112EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep112Arena : Arena := s2Step112EntryFBefore
def s2PrivateStep112Bank : WindowBank := s2Step112FrontBank
def s2PrivateStep112Spec : HmrSourceWalkStepLog := ⟨212,69,⟨212,211,70,69⟩,37,.early s2Step112CompleteLog⟩
def s2PrivateStep112Plan : HmrSourceStepPlan := .early s2Step112CompletePlan
theorem s2PrivateStep112_source : s2PrivateStep112Spec=s2ObservedLogs112[0] := rfl
theorem s2PrivateStep112_checked : compileHmrSourceStepLog s2PrivateStep112Arena s2PrivateStep112Bank
    s2PrivateStep112Spec.fgWidth s2PrivateStep112Spec.vWidth s2PrivateStep112Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881]
    6 498 112 s2PrivateStep112Spec.need none s2PrivateStep112Spec.log=some s2PrivateStep112Plan := by
  change compileHmrSourceStepLog s2Step112EntryFBefore s2Step112FrontBank 212 69 ⟨212,211,70,69⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 6 498 112 37 none (.early s2Step112CompleteLog)=some (.early s2Step112CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 112<498)]
  rw [s2Step112Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
