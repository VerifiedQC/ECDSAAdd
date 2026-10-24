import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep69
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

private def s2Step71CompleteMoves : List (Wire × Wire) := [(837,231)]

private def s2Step71EarlyControlLog : HmrEarlyControlLog := ⟨[837, 831, 822, 835, 826],[827],[816],[845, 846, 847, 849, 851, 867],[]⟩

private def s2Step71FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [831]],[[835], [829], [822], [814]],[[], [], [], []]⟩,[844],[834],[826],[827],[816, 845, 846, 847, 849, 851, 867, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[816, 845, 846, 847, 849, 851, 867, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915],[826, 827, 816, 845]⟩

private def s2Step71CompleteLog : HmrEarlyStepLog := ⟨s2Step71FrontLog,s2Step71CompleteMoves,s2Step71EarlyControlLog⟩

private def s2Step71ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 829],768⟩

private def s2Step71ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 814],770⟩

private def s2Step71ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230],769⟩

private def s2Step71ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832],771⟩

private def s2Step71FrontOut : WindowBank := ⟨s2Step71ExitFOut,s2Step71ExitGOut,s2Step71ExitFvOut,s2Step71ExitGvOut⟩

private def s2Step71CompleteOut : WindowBank := s2Step71FrontOut.repacked s2Step71CompleteMoves

private def s2Step71EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step71EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step71EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step71EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step71EarlyControlPositiveArena,[827],s2Step71EarlyControlEqualityArena,[816],⟨⟨844,false⟩,[⟨⟨827,false⟩,816⟩]⟩⟩

private def s2Step71EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step71EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step71EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step71EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step71EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step71EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<827) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step71EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,837⟩,⟨⟨774,false⟩,831⟩,⟨⟨775,false⟩,822⟩,⟨⟨776,false⟩,835⟩,⟨⟨777,false⟩,826⟩]⟩

private def s2Step71EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step71EarlyControlZeroArena,s2Step71EarlyControlZeroPlan,s2Step71EarlyControlClassPlan,s2Step71EarlyControlFlagArena,s2Step71EarlyControlFittedArena,s2Step71EarlyControlHistoryArena,s2Step71EarlyControlSigmaArena,s2Step71EarlyControlOutputArena,s2Step71EarlyControlLog⟩

private def s2Step71CounterWork : List Wire := [826, 827, 816, 845]

private theorem s2Step71Counter_bounded : s2Step71CounterWork.toFinset⊆arenaWires := by norm_num [s2Step71CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step71HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step71CounterDuring : Arena := ⟨s2Step71HeadFvAfter.live∪s2Step71CounterWork.toFinset,Finset.union_subset s2Step71HeadFvAfter.bounded s2Step71Counter_bounded⟩

private def s2Step71EntryFFresh : List Wire := []

private def s2Step71EntryFvFresh : List Wire := []

private def s2Step71EntryGFresh : List Wire := []

private def s2Step71EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (836≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step71EntryGvFresh : List Wire := [831]

private def s2Step71ExitGExtra : List Wire := [231, 835]

private def s2Step71ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<231) ∨ (232≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<835) ∨ (836≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step71ExitGvExtra : List Wire := [831, 822]

private def s2Step71Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step71Add0Work : List Wire := [816, 845, 846, 847, 849, 851, 867, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step71Add0_bounded : s2Step71Add0Work.toFinset⊆arenaWires := by
  have h : s2Step71Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step71Add0During : Arena := ⟨s2Step71Add0Arena.live∪s2Step71Add0Work.toFinset,Finset.union_subset s2Step71Add0Arena.bounded s2Step71Add0_bounded⟩

private def s2Step71Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step71Add1Work : List Wire := [816, 845, 846, 847, 849, 851, 867, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915]

private theorem s2Step71Add1_bounded : s2Step71Add1Work.toFinset⊆arenaWires := by
  have h : s2Step71Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step71Add1During : Arena := ⟨s2Step71Add1Arena.live∪s2Step71Add1Work.toFinset,Finset.union_subset s2Step71Add1Arena.bounded s2Step71Add1_bounded⟩

private def s2Step71F4FlagArena : Arena := ⟨s2Step71HeadFvAfter.live∪{826},Finset.union_subset s2Step71HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step71F4Plan : HmrHybridF4Plan := ⟨s2Step71F4FlagArena,[826],s2Step71Add0Arena,[827],s2Step71Add0During,s2Step71Add0Work,s2Step71Add1During,s2Step71Add1Work⟩

private def s2Step71HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 829],768⟩

private def s2Step71HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 814],770⟩

private def s2Step71HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 835],769⟩

private def s2Step71HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 831, 822],771⟩

private def s2Step71FrontHead : WindowBank := ⟨s2Step71HeadFOut,s2Step71HeadGOut,s2Step71HeadFvOut,s2Step71HeadGvOut⟩

private def s2Step71EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743],768⟩

private def s2Step71EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825],770⟩

private def s2Step71EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231],769⟩

private def s2Step71EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 831],771⟩

private def s2Step71FrontPair : WindowBank := ⟨s2Step71EntryFOut,s2Step71EntryGOut,s2Step71EntryFvOut,s2Step71EntryGvOut⟩

private def s2Step71FrontSigmaArena : Arena := ⟨s2Step71EntryGvAfter.live∪{844},Finset.union_subset s2Step71EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step71HeadFFresh : List Wire := [829]

private def s2Step71HeadFvFresh : List Wire := [814]

private def s2Step71HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<835) ∨ (836≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step71HeadGFresh : List Wire := [835]

private def s2Step71HeadGvFresh : List Wire := [822]

private def s2Step71FrontPlan : HmrSourceFront := ⟨s2Step71EntryGvAfter,s2Step71FrontPair,(growRow 768 s2Step71EntryFFresh ++ (growRow 769 s2Step71EntryGFresh ++ (growRow 770 s2Step71EntryFvFresh ++ (growRow 771 s2Step71EntryGvFresh ++ [])))),s2Step71FrontSigmaArena,[844],s2Step71HeadGBefore,[834],
  s2Step71HeadFvAfter,s2Step71FrontHead,(growRow 769 s2Step71HeadGFresh ++ (growRow 768 s2Step71HeadFFresh ++ (growRow 771 s2Step71HeadGvFresh ++ (growRow 770 s2Step71HeadFvFresh ++ [])))),s2Step71F4Plan,s2Step71CounterDuring,s2Step71CounterWork,s2Step71ExitGvAfter,s2Step71FrontOut,(shrinkRow 769 s2Step71ExitGExtra ++ (growRow 768 [] ++ (growRow 770 [] ++ (shrinkRow 771 s2Step71ExitGvExtra ++ []))))⟩

private def s2Step71CompletePlan : HmrEarlyStepPlan := ⟨s2Step71FrontPlan,s2Step71EarlyControlArena,s2Step71EarlyControlPlan,s2Step71CompleteMoves⟩

private theorem s2Step71Complete_apart : List.Disjoint (s2Step71CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [844, 834, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] := by
  have nd : ((s2Step71CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[844, 834, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step71Complete_owned : (s2Step71CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step71EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step71EarlyControlArena (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private def s2Step71CompleteMoveArena : Arena := ⟨s2Step71ExitGvAfter.live∪{231},Finset.union_subset s2Step71ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step71Complete_repack : s2Step71ExitGvAfter.checkRepack s2Step71CompleteMoves=some s2Step71EarlyControlArena := by
  have owned : 837∈s2Step71ExitGvAfter.live := by norm_num [s2Step71ExitGvAfter,arenaWires]
  have reserve : s2Step71ExitGvAfter.reserve {231}=some s2Step71CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step71ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step71CompleteMoveArena.retireSet {837}=s2Step71EarlyControlArena := by
    unfold Arena.retireSet s2Step71EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step71CompleteMoveArena,s2Step71ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step71CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step71CompleteMoveArena.retireSet {837}).checkRepack []=some s2Step71EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step71EarlyControl_branchOwned : ([834] : List Wire).toFinset⊆s2Step71EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step71EarlyControlSigmaArena (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step71EarlyControl_branch : compileHmrBranchRetirement s2Step71EarlyControlSigmaArena 834=some s2Step71EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step71EarlyControl_branchOwned
  · ext q
    simp [s2Step71EarlyControlOutputArena,s2Step71EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step71EarlyControl_classEqualityBorrow : s2Step71EarlyControlPositiveArena.checkBorrow (([844, 827] : List Wire).length-1) s2Step71EarlyControlLog.classWork=some s2Step71EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step71EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step71EarlyControlPositiveArena (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
      decide +kernel
    · ext q
      simp [s2Step71EarlyControlEqualityArena,s2Step71EarlyControlPositiveArena,s2Step71EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step71EarlyControl_classEqualityOwned : ([844, 827] : List Wire).toFinset⊆s2Step71EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step71EarlyControlPositiveArena (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step71EarlyControl_classEquality : compileHmrEqualityLog s2Step71EarlyControlPositiveArena [844, 827] 0 s2Step71EarlyControlLog.classWork=some (s2Step71EarlyControlEqualityArena,s2Step71EarlyControlLog.classWork,s2Step71EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step71EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step71EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step71EarlyControl_classOwned : ([777, 826, 844] : List Wire).toFinset⊆s2Step71EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step71EarlyControlZeroArena (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<827) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step71EarlyControl_positiveBorrow : s2Step71EarlyControlZeroArena.checkBorrow (1) s2Step71EarlyControlLog.positiveWork=some s2Step71EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step71EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step71EarlyControlZeroArena (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<827) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
      decide +kernel
    · ext q
      simp [s2Step71EarlyControlPositiveArena,s2Step71EarlyControlZeroArena,s2Step71EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step71EarlyControl_class : compileHmrSourceClassLog s2Step71EarlyControlZeroArena false 777 s2Step71EarlyControlZeroPlan.top 0 844 s2Step71EarlyControlLog.positiveWork s2Step71EarlyControlLog.classWork=some s2Step71EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step71EarlyControlClassPlan s2Step71EarlyControlZeroArena false 777 s2Step71EarlyControlZeroPlan.top 0 844
  constructor
  · decide +kernel
  · exact s2Step71EarlyControl_classOwned
  · exact s2Step71EarlyControl_positiveBorrow
  · exact s2Step71EarlyControl_classEquality

private theorem s2Step71EarlyControl_entryRecordOwned : ([834, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] : List Wire).toFinset⊆s2Step71EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step71EarlyControlArena (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step71EarlyControl_entrySigmaOwned : ([844, 254] : List Wire).toFinset⊆s2Step71EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step71EarlyControlArena (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step71EarlyControl_fitBorrow : s2Step71EarlyControlFlagArena.checkBorrow ((30-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] : List Wire).length)) s2Step71EarlyControlLog.recordFresh=some s2Step71EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step71EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step71EarlyControlFlagArena (fun q => (0≤q ∧ q<873)) rfl
      decide +kernel
    · ext q
      simp [s2Step71EarlyControlFittedArena,s2Step71EarlyControlFlagArena,s2Step71EarlyControlLog,arenaWires]

private theorem s2Step71EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] : List Wire).toFinset⊆s2Step71EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step71EarlyControlFlagArena (fun q => (0≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step71EarlyControl_fit : compileHmrRecordGrowLog s2Step71EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 30 s2Step71EarlyControlLog.recordFresh=some s2Step71EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step71EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step71EarlyControl_fitBorrow

private theorem s2Step71EarlyControl_flagsBorrow : s2Step71EarlyControlEqualityArena.checkBorrow (6) s2Step71EarlyControlLog.flagWork=some s2Step71EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step71EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step71EarlyControlEqualityArena (fun q => (0≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
      decide +kernel
    · ext q
      simp [s2Step71EarlyControlFlagArena,s2Step71EarlyControlEqualityArena,s2Step71EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step71EarlyControl_flagsOwned : ([816, 253, 252, 251] : List Wire).toFinset⊆s2Step71EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step71EarlyControlEqualityArena (fun q => (0≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step71EarlyControl_flags : compileHmrFlagsLog s2Step71EarlyControlClassPlan.equalityArena s2Step71EarlyControlClassPlan.equality.top 253 252 251 s2Step71EarlyControlLog.flagWork=some s2Step71EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step71EarlyControl_flagsOwned⟩
  · exact s2Step71EarlyControl_flagsBorrow

private theorem s2Step71EarlyControl_historyBorrow : s2Step71EarlyControlArena.checkBorrow ((30-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] : List Wire).length)) s2Step71EarlyControlLog.recordFresh=some s2Step71EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step71EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step71EarlyControlArena (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
      decide +kernel
    · ext q
      simp [s2Step71EarlyControlHistoryArena,s2Step71EarlyControlArena,s2Step71EarlyControlLog,arenaWires]

private theorem s2Step71EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] : List Wire).toFinset⊆s2Step71EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step71EarlyControlArena (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step71EarlyControl_history : compileHmrRecordGrowLog s2Step71EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 30 s2Step71EarlyControlLog.recordFresh=some s2Step71EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step71EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step71EarlyControl_historyBorrow

private theorem s2Step71EarlyControl_sigmaOwned : ([254, 844] : List Wire).toFinset⊆s2Step71EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step71EarlyControlHistoryArena (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step71EarlyControl_sigmaReleaseOwned : ([844] : List Wire).toFinset⊆s2Step71EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step71EarlyControlHistoryArena (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step71EarlyControl_sigmaRelease : s2Step71EarlyControlHistoryArena.release {844} (fun _ => false)=some s2Step71EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step71EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step71EarlyControlSigmaArena,s2Step71EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step71EarlyControl_sigma : compileHmrSigmaDropLog s2Step71EarlyControlHistoryArena false 0 0 254 844 []=some s2Step71EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step71EarlyControl_sigmaOwned⟩
  · exact s2Step71EarlyControl_sigmaRelease

private theorem s2Step71EarlyControl_zeroBorrow : s2Step71EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step71EarlyControlLog.zeroWork=some s2Step71EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step71EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step71EarlyControlArena (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
      decide +kernel
    · ext q
      simp [s2Step71EarlyControlZeroArena,s2Step71EarlyControlArena,s2Step71EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step71EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step71EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step71EarlyControlArena (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step71EarlyControl_zero : compileHmrEqualityLog s2Step71EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step71EarlyControlLog.zeroWork=some (s2Step71EarlyControlZeroArena,s2Step71EarlyControlLog.zeroWork,s2Step71EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step71EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step71EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step71EarlyControl_logged : s2Step71EarlyControlPlan.Logged s2Step71EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 777 844 254 253 252 251 834 30 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step71EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step71EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step71EarlyControl_zero
  · exact s2Step71EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step71EarlyControl_flags
  · exact s2Step71EarlyControl_fit
  · exact s2Step71EarlyControl_history
  · exact s2Step71EarlyControl_sigma
  · exact s2Step71EarlyControl_branch

private theorem s2Step71EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step71EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 777 844 254 253 252 251 834 30 s2Step71EarlyControlLog=some s2Step71EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step71EarlyControlPlan s2Step71EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 777 844 254 253 252 251 834 30 s2Step71EarlyControl_logged

private def s2Step71EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (836≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step71EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743],768⟩

private def s2Step71EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825],770⟩

private def s2Step71EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231],769⟩

private def s2Step71EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832],771⟩

private def s2Step71FrontBank : WindowBank := ⟨s2Step71EntryFRow,s2Step71EntryGRow,s2Step71EntryFvRow,s2Step71EntryGvRow⟩

private def s2Step71Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 829, 768]

private def s2Step71Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 835, 769]

private def s2Step71Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 814, 770]

private def s2Step71Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 831, 822, 771]

private theorem s2Step71Counter_apart : Disjoint s2Step71HeadFvAfter.live s2Step71CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step71HeadFvAfter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step71Counter_borrowed : s2Step71HeadFvAfter.checkBorrow 4 s2Step71CounterWork=some s2Step71CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step71HeadFvAfter s2Step71CounterDuring s2Step71CounterWork.toFinset s2Step71Counter_bounded s2Step71Counter_apart rfl

private theorem s2Step71Counter_owned : (844::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step71HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step71HeadFvAfter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step71Counter_checked : compileHmrCounterStepLog s2Step71HeadFvAfter true 844 [772, 773, 774, 775, 776, 777] s2Step71CounterWork=some s2Step71CounterDuring := by
  have owned : ∀q∈844::[772, 773, 774, 775, 776, 777],q∈s2Step71HeadFvAfter.live := fun q hq => s2Step71Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step71Counter_borrowed

private def s2Step71EntryFAfter : Arena := s2Step71EntryFBefore

private theorem s2Step71EntryBank_incomingDistinct : ([s2Step71EntryFRow,s2Step71EntryGRow,s2Step71EntryFvRow,s2Step71EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step71EntryF_Incoming : rowsOwned s2Step71EntryFBefore [s2Step71EntryFRow,s2Step71EntryGRow,s2Step71EntryFvRow,s2Step71EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step71EntryFRow,s2Step71EntryGRow,s2Step71EntryFvRow,s2Step71EntryGvRow] 0 s2Step71EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step71EntryFBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (836≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step71EntryBank_outgoingOwned : rowsOwned s2Step71EntryGvAfter [s2Step71EntryFOut,s2Step71EntryGOut,s2Step71EntryFvOut,s2Step71EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step71EntryGvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (836≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step71EntryF_Outgoing : rowsOwned s2Step71EntryGvAfter [s2Step71EntryFOut,s2Step71EntryGOut,s2Step71EntryFvOut,s2Step71EntryGvOut] :=
  hmrRows_owned_drop s2Step71EntryGvAfter [s2Step71EntryFOut,s2Step71EntryGOut,s2Step71EntryFvOut,s2Step71EntryGvOut] 0 s2Step71EntryBank_outgoingOwned

private theorem s2Step71EntryF_distinct : (s2Step71EntryFRow.sign::s2Step71EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step71EntryF_owned : (s2Step71EntryFRow.sign::s2Step71EntryFRow.payload).toFinset⊆s2Step71EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step71EntryFBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (836≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step71EntryF_reserved : s2Step71EntryFBefore.reserve s2Step71EntryFFresh.toFinset=some s2Step71EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step71EntryFFresh,arenaWires]
  · norm_num [s2Step71EntryFBefore,s2Step71EntryFFresh,arenaWires]
  · simp only [s2Step71EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step71EntryF_checked : planRowResizeLog s2Step71EntryFBefore s2Step71EntryFRow 232 s2Step71EntryFFresh=
    some (s2Step71EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743],768⟩,growRow 768 s2Step71EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step71EntryFBefore s2Step71EntryFAfter s2Step71EntryFRow 232 s2Step71EntryFFresh
    s2Step71EntryF_distinct s2Step71EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step71EntryF_reserved
  have rowEq : WindowRow.mk (s2Step71EntryFRow.payload++s2Step71EntryFFresh) s2Step71EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step71EntryFvAfter : Arena := s2Step71EntryFBefore

private def s2Step71EntryFvBefore : Arena := s2Step71EntryFBefore

private theorem s2Step71EntryFv_Incoming : rowsOwned s2Step71EntryFvBefore [s2Step71EntryFvRow,s2Step71EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step71EntryFRow,s2Step71EntryGRow,s2Step71EntryFvRow,s2Step71EntryGvRow] 2 s2Step71EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step71EntryFvBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (836≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step71EntryFv_Outgoing : rowsOwned s2Step71EntryGvAfter [s2Step71EntryFvOut,s2Step71EntryGvOut] :=
  hmrRows_owned_drop s2Step71EntryGvAfter [s2Step71EntryFOut,s2Step71EntryGOut,s2Step71EntryFvOut,s2Step71EntryGvOut] 2 s2Step71EntryBank_outgoingOwned

private theorem s2Step71EntryFv_distinct : (s2Step71EntryFvRow.sign::s2Step71EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step71EntryFv_owned : (s2Step71EntryFvRow.sign::s2Step71EntryFvRow.payload).toFinset⊆s2Step71EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step71EntryFvBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (836≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step71EntryFv_reserved : s2Step71EntryFvBefore.reserve s2Step71EntryFvFresh.toFinset=some s2Step71EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step71EntryFvFresh,arenaWires]
  · norm_num [s2Step71EntryFvBefore,s2Step71EntryFBefore,s2Step71EntryFvFresh,arenaWires]
  · simp only [s2Step71EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step71EntryFv_checked : planRowResizeLog s2Step71EntryFvBefore s2Step71EntryFvRow 49 s2Step71EntryFvFresh=
    some (s2Step71EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825],770⟩,growRow 770 s2Step71EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step71EntryFvBefore s2Step71EntryFvAfter s2Step71EntryFvRow 49 s2Step71EntryFvFresh
    s2Step71EntryFv_distinct s2Step71EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step71EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step71EntryFvRow.payload++s2Step71EntryFvFresh) s2Step71EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step71EntryGAfter : Arena := s2Step71EntryFBefore

private def s2Step71EntryGBefore : Arena := s2Step71EntryFBefore

private theorem s2Step71EntryG_Incoming : rowsOwned s2Step71EntryGBefore [s2Step71EntryGRow,s2Step71EntryFvRow,s2Step71EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step71EntryFRow,s2Step71EntryGRow,s2Step71EntryFvRow,s2Step71EntryGvRow] 1 s2Step71EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step71EntryGBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (836≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step71EntryG_Outgoing : rowsOwned s2Step71EntryGvAfter [s2Step71EntryGOut,s2Step71EntryFvOut,s2Step71EntryGvOut] :=
  hmrRows_owned_drop s2Step71EntryGvAfter [s2Step71EntryFOut,s2Step71EntryGOut,s2Step71EntryFvOut,s2Step71EntryGvOut] 1 s2Step71EntryBank_outgoingOwned

private theorem s2Step71EntryG_distinct : (s2Step71EntryGRow.sign::s2Step71EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step71EntryG_owned : (s2Step71EntryGRow.sign::s2Step71EntryGRow.payload).toFinset⊆s2Step71EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step71EntryGBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (836≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step71EntryG_reserved : s2Step71EntryGBefore.reserve s2Step71EntryGFresh.toFinset=some s2Step71EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step71EntryGFresh,arenaWires]
  · norm_num [s2Step71EntryGBefore,s2Step71EntryFBefore,s2Step71EntryGFresh,arenaWires]
  · simp only [s2Step71EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step71EntryG_checked : planRowResizeLog s2Step71EntryGBefore s2Step71EntryGRow 232 s2Step71EntryGFresh=
    some (s2Step71EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231],769⟩,growRow 769 s2Step71EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step71EntryGBefore s2Step71EntryGAfter s2Step71EntryGRow 232 s2Step71EntryGFresh
    s2Step71EntryG_distinct s2Step71EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step71EntryG_reserved
  have rowEq : WindowRow.mk (s2Step71EntryGRow.payload++s2Step71EntryGFresh) s2Step71EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step71EntryGvBefore : Arena := s2Step71EntryFBefore

private theorem s2Step71EntryGv_Incoming : rowsOwned s2Step71EntryGvBefore [s2Step71EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step71EntryFRow,s2Step71EntryGRow,s2Step71EntryFvRow,s2Step71EntryGvRow] 3 s2Step71EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step71EntryGvBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (836≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step71EntryGv_Outgoing : rowsOwned s2Step71EntryGvAfter [s2Step71EntryGvOut] :=
  hmrRows_owned_drop s2Step71EntryGvAfter [s2Step71EntryFOut,s2Step71EntryGOut,s2Step71EntryFvOut,s2Step71EntryGvOut] 3 s2Step71EntryBank_outgoingOwned

private theorem s2Step71EntryGv_distinct : (s2Step71EntryGvRow.sign::s2Step71EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step71EntryGv_owned : (s2Step71EntryGvRow.sign::s2Step71EntryGvRow.payload).toFinset⊆s2Step71EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step71EntryGvBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (836≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step71EntryGv_reserved : s2Step71EntryGvBefore.reserve s2Step71EntryGvFresh.toFinset=some s2Step71EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step71EntryGvFresh,arenaWires]
  · norm_num [s2Step71EntryGvBefore,s2Step71EntryFBefore,s2Step71EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step71EntryGvAfter,s2Step71EntryGvBefore,s2Step71EntryFBefore,s2Step71EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step71EntryGv_checked : planRowResizeLog s2Step71EntryGvBefore s2Step71EntryGvRow 49 s2Step71EntryGvFresh=
    some (s2Step71EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 831],771⟩,growRow 771 s2Step71EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step71EntryGvBefore s2Step71EntryGvAfter s2Step71EntryGvRow 49 s2Step71EntryGvFresh
    s2Step71EntryGv_distinct s2Step71EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step71EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step71EntryGvRow.payload++s2Step71EntryGvFresh) s2Step71EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 831],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step71EntryBank_rows : planWindowRowsLog s2Step71EntryFBefore [(s2Step71EntryFRow,232),(s2Step71EntryGRow,232),(s2Step71EntryFvRow,49),(s2Step71EntryGvRow,49)] [s2Step71EntryFFresh,s2Step71EntryGFresh,s2Step71EntryFvFresh,s2Step71EntryGvFresh]=
    some (s2Step71EntryGvAfter,[s2Step71EntryFOut,s2Step71EntryGOut,s2Step71EntryFvOut,s2Step71EntryGvOut],(growRow 768 s2Step71EntryFFresh ++ (growRow 769 s2Step71EntryGFresh ++ (growRow 770 s2Step71EntryFvFresh ++ (growRow 771 s2Step71EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step71EntryGvAfter [] []=some (s2Step71EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step71EntryGvBefore s2Step71EntryGvAfter s2Step71EntryGvAfter
    s2Step71EntryGvRow s2Step71EntryGvOut 49 s2Step71EntryGvFresh [] [] []
    (growRow 771 s2Step71EntryGvFresh) ([]) s2Step71EntryGv_Incoming s2Step71EntryGv_checked h4 s2Step71EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step71EntryFvBefore s2Step71EntryFvAfter s2Step71EntryGvAfter
    s2Step71EntryFvRow s2Step71EntryFvOut 49 s2Step71EntryFvFresh [(s2Step71EntryGvRow,49)] [s2Step71EntryGvFresh] [s2Step71EntryGvOut]
    (growRow 770 s2Step71EntryFvFresh) ((growRow 771 s2Step71EntryGvFresh ++ [])) s2Step71EntryFv_Incoming s2Step71EntryFv_checked h3 s2Step71EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step71EntryGBefore s2Step71EntryGAfter s2Step71EntryGvAfter
    s2Step71EntryGRow s2Step71EntryGOut 232 s2Step71EntryGFresh [(s2Step71EntryFvRow,49),(s2Step71EntryGvRow,49)] [s2Step71EntryFvFresh,s2Step71EntryGvFresh] [s2Step71EntryFvOut,s2Step71EntryGvOut]
    (growRow 769 s2Step71EntryGFresh) ((growRow 770 s2Step71EntryFvFresh ++ (growRow 771 s2Step71EntryGvFresh ++ []))) s2Step71EntryG_Incoming s2Step71EntryG_checked h2 s2Step71EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step71EntryFBefore s2Step71EntryFAfter s2Step71EntryGvAfter
    s2Step71EntryFRow s2Step71EntryFOut 232 s2Step71EntryFFresh [(s2Step71EntryGRow,232),(s2Step71EntryFvRow,49),(s2Step71EntryGvRow,49)] [s2Step71EntryGFresh,s2Step71EntryFvFresh,s2Step71EntryGvFresh] [s2Step71EntryGOut,s2Step71EntryFvOut,s2Step71EntryGvOut]
    (growRow 768 s2Step71EntryFFresh) ((growRow 769 s2Step71EntryGFresh ++ (growRow 770 s2Step71EntryFvFresh ++ (growRow 771 s2Step71EntryGvFresh ++ [])))) s2Step71EntryF_Incoming s2Step71EntryF_checked h1 s2Step71EntryF_Outgoing
  exact h0

private theorem s2Step71EntryBank_checked : compileHmrBankResizeLog .entry s2Step71EntryFBefore ⟨s2Step71EntryFRow,s2Step71EntryGRow,s2Step71EntryFvRow,s2Step71EntryGvRow⟩ ⟨232,232,49,49⟩ [s2Step71EntryFFresh,s2Step71EntryGFresh,s2Step71EntryFvFresh,s2Step71EntryGvFresh]=
    some (s2Step71EntryGvAfter,⟨s2Step71EntryFOut,s2Step71EntryGOut,s2Step71EntryFvOut,s2Step71EntryGvOut⟩,(growRow 768 s2Step71EntryFFresh ++ (growRow 769 s2Step71EntryGFresh ++ (growRow 770 s2Step71EntryFvFresh ++ (growRow 771 s2Step71EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step71EntryBank_rows]
  rfl

private def s2Step71ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<231) ∨ (232≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step71ExitFAfter : Arena := s2Step71ExitGAfter

private def s2Step71ExitFBefore : Arena := s2Step71ExitGAfter

private def s2Step71ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 829],768⟩

private def s2Step71ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 814],770⟩

private def s2Step71ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 835],769⟩

private def s2Step71ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 831, 822],771⟩

private theorem s2Step71ExitBank_incomingDistinct : ([s2Step71ExitGRow,s2Step71ExitFRow,s2Step71ExitFvRow,s2Step71ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step71ExitF_Incoming : rowsOwned s2Step71ExitFBefore [s2Step71ExitFRow,s2Step71ExitFvRow,s2Step71ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step71ExitGRow,s2Step71ExitFRow,s2Step71ExitFvRow,s2Step71ExitGvRow] 1 s2Step71ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step71ExitFBefore (fun q => (0≤q ∧ q<231) ∨ (232≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step71ExitBank_outgoingOwned : rowsOwned s2Step71ExitGvAfter [s2Step71ExitGOut,s2Step71ExitFOut,s2Step71ExitFvOut,s2Step71ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step71ExitGvAfter (fun q => (0≤q ∧ q<231) ∨ (232≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<835) ∨ (836≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step71ExitF_Outgoing : rowsOwned s2Step71ExitGvAfter [s2Step71ExitFOut,s2Step71ExitFvOut,s2Step71ExitGvOut] :=
  hmrRows_owned_drop s2Step71ExitGvAfter [s2Step71ExitGOut,s2Step71ExitFOut,s2Step71ExitFvOut,s2Step71ExitGvOut] 1 s2Step71ExitBank_outgoingOwned

private theorem s2Step71ExitF_distinct : (s2Step71ExitFRow.sign::s2Step71ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step71ExitF_owned : (s2Step71ExitFRow.sign::s2Step71ExitFRow.payload).toFinset⊆s2Step71ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step71ExitFBefore (fun q => (0≤q ∧ q<231) ∨ (232≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step71ExitF_reserved : s2Step71ExitFBefore.reserve (∅ : Finset Wire)=some s2Step71ExitFAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step71ExitF_checked : planRowResizeLog s2Step71ExitFBefore s2Step71ExitFRow 233 []=
    some (s2Step71ExitFAfter,s2Step71ExitFOut,growRow 768 []) := by
  have result := planRowResizeLog_of_growth s2Step71ExitFBefore s2Step71ExitFAfter s2Step71ExitFRow 233 []
    s2Step71ExitF_distinct s2Step71ExitF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step71ExitF_reserved
  have rowEq : WindowRow.mk (s2Step71ExitFRow.payload++[]) s2Step71ExitFRow.sign=s2Step71ExitFOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step71ExitFvAfter : Arena := s2Step71ExitGAfter

private def s2Step71ExitFvBefore : Arena := s2Step71ExitGAfter

private theorem s2Step71ExitFv_Incoming : rowsOwned s2Step71ExitFvBefore [s2Step71ExitFvRow,s2Step71ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step71ExitGRow,s2Step71ExitFRow,s2Step71ExitFvRow,s2Step71ExitGvRow] 2 s2Step71ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step71ExitFvBefore (fun q => (0≤q ∧ q<231) ∨ (232≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step71ExitFv_Outgoing : rowsOwned s2Step71ExitGvAfter [s2Step71ExitFvOut,s2Step71ExitGvOut] :=
  hmrRows_owned_drop s2Step71ExitGvAfter [s2Step71ExitGOut,s2Step71ExitFOut,s2Step71ExitFvOut,s2Step71ExitGvOut] 2 s2Step71ExitBank_outgoingOwned

private theorem s2Step71ExitFv_distinct : (s2Step71ExitFvRow.sign::s2Step71ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step71ExitFv_owned : (s2Step71ExitFvRow.sign::s2Step71ExitFvRow.payload).toFinset⊆s2Step71ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step71ExitFvBefore (fun q => (0≤q ∧ q<231) ∨ (232≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step71ExitFv_reserved : s2Step71ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step71ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step71ExitFv_checked : planRowResizeLog s2Step71ExitFvBefore s2Step71ExitFvRow 50 []=
    some (s2Step71ExitFvAfter,s2Step71ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step71ExitFvBefore s2Step71ExitFvAfter s2Step71ExitFvRow 50 []
    s2Step71ExitFv_distinct s2Step71ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step71ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step71ExitFvRow.payload++[]) s2Step71ExitFvRow.sign=s2Step71ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step71ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private theorem s2Step71ExitG_Incoming : rowsOwned s2Step71ExitGBefore [s2Step71ExitGRow,s2Step71ExitFRow,s2Step71ExitFvRow,s2Step71ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step71ExitGRow,s2Step71ExitFRow,s2Step71ExitFvRow,s2Step71ExitGvRow] 0 s2Step71ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step71ExitGBefore (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step71ExitG_Outgoing : rowsOwned s2Step71ExitGvAfter [s2Step71ExitGOut,s2Step71ExitFOut,s2Step71ExitFvOut,s2Step71ExitGvOut] :=
  hmrRows_owned_drop s2Step71ExitGvAfter [s2Step71ExitGOut,s2Step71ExitFOut,s2Step71ExitFvOut,s2Step71ExitGvOut] 0 s2Step71ExitBank_outgoingOwned

private theorem s2Step71ExitG_distinct : (s2Step71ExitGRow.sign::s2Step71ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step71ExitG_owned : (s2Step71ExitGRow.sign::s2Step71ExitGRow.payload).toFinset⊆s2Step71ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step71ExitGBefore (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step71ExitG_retired : s2Step71ExitGBefore.retireSet s2Step71ExitGExtra.toFinset=s2Step71ExitGAfter := by
  unfold Arena.retireSet s2Step71ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step71ExitGBefore,s2Step71ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step71ExitG_checked : planRowResizeLog s2Step71ExitGBefore s2Step71ExitGRow 231 []=
    some (s2Step71ExitGAfter,s2Step71ExitGOut,shrinkRow 769 s2Step71ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step71ExitGBefore s2Step71ExitGRow 231 s2Step71ExitG_distinct s2Step71ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step71ExitGRow.payload.take 231) s2Step71ExitGRow.sign=s2Step71ExitGOut := by decide +kernel
  have hi : s2Step71ExitGRow.payload.drop 231=s2Step71ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step71ExitG_retired] at result
  exact result

private def s2Step71ExitGvBefore : Arena := s2Step71ExitGAfter

private theorem s2Step71ExitGv_Incoming : rowsOwned s2Step71ExitGvBefore [s2Step71ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step71ExitGRow,s2Step71ExitFRow,s2Step71ExitFvRow,s2Step71ExitGvRow] 3 s2Step71ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step71ExitGvBefore (fun q => (0≤q ∧ q<231) ∨ (232≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step71ExitGv_Outgoing : rowsOwned s2Step71ExitGvAfter [s2Step71ExitGvOut] :=
  hmrRows_owned_drop s2Step71ExitGvAfter [s2Step71ExitGOut,s2Step71ExitFOut,s2Step71ExitFvOut,s2Step71ExitGvOut] 3 s2Step71ExitBank_outgoingOwned

private theorem s2Step71ExitGv_distinct : (s2Step71ExitGvRow.sign::s2Step71ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step71ExitGv_owned : (s2Step71ExitGvRow.sign::s2Step71ExitGvRow.payload).toFinset⊆s2Step71ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step71ExitGvBefore (fun q => (0≤q ∧ q<231) ∨ (232≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step71ExitGv_retired : s2Step71ExitGvBefore.retireSet s2Step71ExitGvExtra.toFinset=s2Step71ExitGvAfter := by
  unfold Arena.retireSet s2Step71ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step71ExitGvBefore,s2Step71ExitGAfter,s2Step71ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step71ExitGv_checked : planRowResizeLog s2Step71ExitGvBefore s2Step71ExitGvRow 48 []=
    some (s2Step71ExitGvAfter,s2Step71ExitGvOut,shrinkRow 771 s2Step71ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step71ExitGvBefore s2Step71ExitGvRow 48 s2Step71ExitGv_distinct s2Step71ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step71ExitGvRow.payload.take 48) s2Step71ExitGvRow.sign=s2Step71ExitGvOut := by decide +kernel
  have hi : s2Step71ExitGvRow.payload.drop 48=s2Step71ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step71ExitGv_retired] at result
  exact result

private theorem s2Step71ExitBank_rows : planWindowRowsLog s2Step71ExitGBefore [(s2Step71ExitGRow,231),(s2Step71ExitFRow,233),(s2Step71ExitFvRow,50),(s2Step71ExitGvRow,48)] [[],[],[],[]]=
    some (s2Step71ExitGvAfter,[s2Step71ExitGOut,s2Step71ExitFOut,s2Step71ExitFvOut,s2Step71ExitGvOut],(shrinkRow 769 s2Step71ExitGExtra ++ (growRow 768 [] ++ (growRow 770 [] ++ (shrinkRow 771 s2Step71ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step71ExitGvAfter [] []=some (s2Step71ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step71ExitGvBefore s2Step71ExitGvAfter s2Step71ExitGvAfter
    s2Step71ExitGvRow s2Step71ExitGvOut 48 [] [] [] []
    (shrinkRow 771 s2Step71ExitGvExtra) ([]) s2Step71ExitGv_Incoming s2Step71ExitGv_checked h4 s2Step71ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step71ExitFvBefore s2Step71ExitFvAfter s2Step71ExitGvAfter
    s2Step71ExitFvRow s2Step71ExitFvOut 50 [] [(s2Step71ExitGvRow,48)] [[]] [s2Step71ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step71ExitGvExtra ++ [])) s2Step71ExitFv_Incoming s2Step71ExitFv_checked h3 s2Step71ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step71ExitFBefore s2Step71ExitFAfter s2Step71ExitGvAfter
    s2Step71ExitFRow s2Step71ExitFOut 233 [] [(s2Step71ExitFvRow,50),(s2Step71ExitGvRow,48)] [[],[]] [s2Step71ExitFvOut,s2Step71ExitGvOut]
    (growRow 768 []) ((growRow 770 [] ++ (shrinkRow 771 s2Step71ExitGvExtra ++ []))) s2Step71ExitF_Incoming s2Step71ExitF_checked h2 s2Step71ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step71ExitGBefore s2Step71ExitGAfter s2Step71ExitGvAfter
    s2Step71ExitGRow s2Step71ExitGOut 231 [] [(s2Step71ExitFRow,233),(s2Step71ExitFvRow,50),(s2Step71ExitGvRow,48)] [[],[],[]] [s2Step71ExitFOut,s2Step71ExitFvOut,s2Step71ExitGvOut]
    (shrinkRow 769 s2Step71ExitGExtra) ((growRow 768 [] ++ (growRow 770 [] ++ (shrinkRow 771 s2Step71ExitGvExtra ++ [])))) s2Step71ExitG_Incoming s2Step71ExitG_checked h1 s2Step71ExitG_Outgoing
  exact h0

private theorem s2Step71ExitBank_checked : compileHmrBankResizeLog .exit s2Step71ExitGBefore ⟨s2Step71ExitFRow,s2Step71ExitGRow,s2Step71ExitFvRow,s2Step71ExitGvRow⟩ ⟨233,231,50,48⟩ [[],[],[],[]]=
    some (s2Step71ExitGvAfter,⟨s2Step71ExitFOut,s2Step71ExitGOut,s2Step71ExitFvOut,s2Step71ExitGvOut⟩,(shrinkRow 769 s2Step71ExitGExtra ++ (growRow 768 [] ++ (growRow 770 [] ++ (shrinkRow 771 s2Step71ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step71ExitBank_rows]
  rfl

private theorem s2Step71Add0_apart : Disjoint s2Step71Add0Arena.live s2Step71Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step71Add0Arena (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step71Add0_card : s2Step71Add0Arena.live.card=866 := by
  decide +kernel

private theorem s2Step71Add0_borrowed : s2Step71Add0Arena.checkBorrow (hmrHybridCount s2Step71Add0Arena s2Step71Add0B.length) s2Step71Add0Work=some s2Step71Add0During := by
  have len : s2Step71Add0Work.length=hmrHybridCount s2Step71Add0Arena s2Step71Add0B.length := by
    rw [hmrHybridCount,s2Step71Add0_card]
    decide +kernel
  have nd : s2Step71Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step71Add0Arena s2Step71Add0During s2Step71Add0Work.toFinset s2Step71Add0_bounded s2Step71Add0_apart rfl

private theorem s2Step71Add0_distinct : (826::834::827::(s2Step71Add0A++s2Step71Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step71Add0_owned : (826::834::827::(s2Step71Add0A++s2Step71Add0B)).toFinset⊆s2Step71Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step71Add0Arena (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step71Add0_checked : compileHmrHybridCinLog s2Step71Add0Arena 834 826 827 s2Step71Add0A s2Step71Add0B s2Step71Add0Work=some s2Step71Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step71Add0Arena s2Step71Add0During 834 826 827 s2Step71Add0A s2Step71Add0B s2Step71Add0Work
    (by decide +kernel) (by decide +kernel) s2Step71Add0_distinct
    (fun q hq => s2Step71Add0_owned (List.mem_toFinset.mpr hq)) s2Step71Add0_borrowed

private theorem s2Step71Add1_apart : Disjoint s2Step71Add1Arena.live s2Step71Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step71Add1Arena (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step71Add1_card : s2Step71Add1Arena.live.card=866 := by
  decide +kernel

private theorem s2Step71Add1_borrowed : s2Step71Add1Arena.checkBorrow (hmrHybridCount s2Step71Add1Arena s2Step71Add1B.length) s2Step71Add1Work=some s2Step71Add1During := by
  have len : s2Step71Add1Work.length=hmrHybridCount s2Step71Add1Arena s2Step71Add1B.length := by
    rw [hmrHybridCount,s2Step71Add1_card]
    decide +kernel
  have nd : s2Step71Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step71Add1Arena s2Step71Add1During s2Step71Add1Work.toFinset s2Step71Add1_bounded s2Step71Add1_apart rfl

private theorem s2Step71Add1_distinct : (826::834::827::(s2Step71Add1A++s2Step71Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step71Add1_owned : (826::834::827::(s2Step71Add1A++s2Step71Add1B)).toFinset⊆s2Step71Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step71Add1Arena (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step71Add1_checked : compileHmrHybridCinLog s2Step71Add1Arena 834 826 827 s2Step71Add1A s2Step71Add1B s2Step71Add1Work=some s2Step71Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step71Add1Arena s2Step71Add1During 834 826 827 s2Step71Add1A s2Step71Add1B s2Step71Add1Work
    (by decide +kernel) (by decide +kernel) s2Step71Add1_distinct
    (fun q hq => s2Step71Add1_owned (List.mem_toFinset.mpr hq)) s2Step71Add1_borrowed

private theorem s2Step71F4_apart : Disjoint (s2Step71Add0A++s2Step71Add0B).toFinset (s2Step71Add1A++s2Step71Add1B).toFinset := by
  have nd : ((s2Step71Add0A++s2Step71Add0B)++(s2Step71Add1A++s2Step71Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step71F4_carry : s2Step71F4FlagArena.checkBorrow 1 [827]=some s2Step71Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step71F4FlagArena,s2Step71HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step71F4FlagArena,s2Step71HeadFvAfter,s2Step71Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step71F4_distinct : (844::834::826::827::((s2Step71Add0A++s2Step71Add1A)++(s2Step71Add0B++s2Step71Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step71F4_flag : s2Step71HeadFvAfter.checkBorrow 1 [826]=some s2Step71F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step71HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step71F4_owned : (844::834::((s2Step71Add0A++s2Step71Add1A)++(s2Step71Add0B++s2Step71Add1B))).toFinset⊆s2Step71HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step71HeadFvAfter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step71F4_checked : compileHmrHybridF4Log s2Step71HeadFvAfter 844 834 s2Step71Add0A s2Step71Add0B s2Step71Add1A s2Step71Add1B [826] [827] s2Step71Add0Work s2Step71Add1Work=some s2Step71F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step71HeadFvAfter s2Step71F4FlagArena s2Step71Add0Arena s2Step71Add0During s2Step71Add1During 844 834
    s2Step71Add0A s2Step71Add0B s2Step71Add1A s2Step71Add1B [826] [827] s2Step71Add0Work s2Step71Add1Work
    (fun q hq => s2Step71F4_owned (List.mem_toFinset.mpr hq)) s2Step71F4_flag s2Step71F4_carry
    s2Step71F4_distinct s2Step71F4_apart s2Step71Add0_checked s2Step71Add1_checked

private theorem s2Step71Front_branch : s2Step71FrontSigmaArena.checkBorrow 1 [834]=some s2Step71HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step71FrontSigmaArena,s2Step71EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step71FrontSigmaArena,s2Step71EntryGvAfter,s2Step71HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step71Front_entry : HmrFrontEntryValid s2Step71EntryFBefore s2Step71FrontBank 232 49 ⟨233,231,50,48⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step71FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step71EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step71EntryFBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (836≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step71FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step71Front_sigma : s2Step71EntryGvAfter.checkBorrow 1 [844]=some s2Step71FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step71EntryGvAfter,arenaWires]
  · rfl

private def s2Step71HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step71HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step71HeadFBefore : Arena := s2Step71HeadGAfter

private def s2Step71HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743],768⟩

private def s2Step71HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825],770⟩

private def s2Step71HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231],769⟩

private def s2Step71HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 831],771⟩

private theorem s2Step71HeadBank_incomingDistinct : ([s2Step71HeadGRow,s2Step71HeadFRow,s2Step71HeadGvRow,s2Step71HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step71HeadF_Incoming : rowsOwned s2Step71HeadFBefore [s2Step71HeadFRow,s2Step71HeadGvRow,s2Step71HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step71HeadGRow,s2Step71HeadFRow,s2Step71HeadGvRow,s2Step71HeadFvRow] 1 s2Step71HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step71HeadFBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step71HeadBank_outgoingOwned : rowsOwned s2Step71HeadFvAfter [s2Step71HeadGOut,s2Step71HeadFOut,s2Step71HeadGvOut,s2Step71HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step71HeadFvAfter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step71HeadF_Outgoing : rowsOwned s2Step71HeadFvAfter [s2Step71HeadFOut,s2Step71HeadGvOut,s2Step71HeadFvOut] :=
  hmrRows_owned_drop s2Step71HeadFvAfter [s2Step71HeadGOut,s2Step71HeadFOut,s2Step71HeadGvOut,s2Step71HeadFvOut] 1 s2Step71HeadBank_outgoingOwned

private theorem s2Step71HeadF_distinct : (s2Step71HeadFRow.sign::s2Step71HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step71HeadF_owned : (s2Step71HeadFRow.sign::s2Step71HeadFRow.payload).toFinset⊆s2Step71HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step71HeadFBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step71HeadF_reserved : s2Step71HeadFBefore.reserve s2Step71HeadFFresh.toFinset=some s2Step71HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step71HeadFFresh,arenaWires]
  · norm_num [s2Step71HeadFBefore,s2Step71HeadGAfter,s2Step71HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step71HeadFAfter,s2Step71HeadFBefore,s2Step71HeadGAfter,s2Step71HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step71HeadF_checked : planRowResizeLog s2Step71HeadFBefore s2Step71HeadFRow 233 s2Step71HeadFFresh=
    some (s2Step71HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 829],768⟩,growRow 768 s2Step71HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step71HeadFBefore s2Step71HeadFAfter s2Step71HeadFRow 233 s2Step71HeadFFresh
    s2Step71HeadF_distinct s2Step71HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step71HeadF_reserved
  have rowEq : WindowRow.mk (s2Step71HeadFRow.payload++s2Step71HeadFFresh) s2Step71HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 829],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step71HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step71HeadFvBefore : Arena := s2Step71HeadGvAfter

private theorem s2Step71HeadFv_Incoming : rowsOwned s2Step71HeadFvBefore [s2Step71HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step71HeadGRow,s2Step71HeadFRow,s2Step71HeadGvRow,s2Step71HeadFvRow] 3 s2Step71HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step71HeadFvBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step71HeadFv_Outgoing : rowsOwned s2Step71HeadFvAfter [s2Step71HeadFvOut] :=
  hmrRows_owned_drop s2Step71HeadFvAfter [s2Step71HeadGOut,s2Step71HeadFOut,s2Step71HeadGvOut,s2Step71HeadFvOut] 3 s2Step71HeadBank_outgoingOwned

private theorem s2Step71HeadFv_distinct : (s2Step71HeadFvRow.sign::s2Step71HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step71HeadFv_owned : (s2Step71HeadFvRow.sign::s2Step71HeadFvRow.payload).toFinset⊆s2Step71HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step71HeadFvBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step71HeadFv_reserved : s2Step71HeadFvBefore.reserve s2Step71HeadFvFresh.toFinset=some s2Step71HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step71HeadFvFresh,arenaWires]
  · norm_num [s2Step71HeadFvBefore,s2Step71HeadGvAfter,s2Step71HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step71HeadFvAfter,s2Step71HeadFvBefore,s2Step71HeadGvAfter,s2Step71HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step71HeadFv_checked : planRowResizeLog s2Step71HeadFvBefore s2Step71HeadFvRow 50 s2Step71HeadFvFresh=
    some (s2Step71HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 814],770⟩,growRow 770 s2Step71HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step71HeadFvBefore s2Step71HeadFvAfter s2Step71HeadFvRow 50 s2Step71HeadFvFresh
    s2Step71HeadFv_distinct s2Step71HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step71HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step71HeadFvRow.payload++s2Step71HeadFvFresh) s2Step71HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 814],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step71HeadG_Incoming : rowsOwned s2Step71HeadGBefore [s2Step71HeadGRow,s2Step71HeadFRow,s2Step71HeadGvRow,s2Step71HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step71HeadGRow,s2Step71HeadFRow,s2Step71HeadGvRow,s2Step71HeadFvRow] 0 s2Step71HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step71HeadGBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<835) ∨ (836≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step71HeadG_Outgoing : rowsOwned s2Step71HeadFvAfter [s2Step71HeadGOut,s2Step71HeadFOut,s2Step71HeadGvOut,s2Step71HeadFvOut] :=
  hmrRows_owned_drop s2Step71HeadFvAfter [s2Step71HeadGOut,s2Step71HeadFOut,s2Step71HeadGvOut,s2Step71HeadFvOut] 0 s2Step71HeadBank_outgoingOwned

private theorem s2Step71HeadG_distinct : (s2Step71HeadGRow.sign::s2Step71HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step71HeadG_owned : (s2Step71HeadGRow.sign::s2Step71HeadGRow.payload).toFinset⊆s2Step71HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step71HeadGBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<835) ∨ (836≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step71HeadG_reserved : s2Step71HeadGBefore.reserve s2Step71HeadGFresh.toFinset=some s2Step71HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step71HeadGFresh,arenaWires]
  · norm_num [s2Step71HeadGBefore,s2Step71HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step71HeadGAfter,s2Step71HeadGBefore,s2Step71HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step71HeadG_checked : planRowResizeLog s2Step71HeadGBefore s2Step71HeadGRow 233 s2Step71HeadGFresh=
    some (s2Step71HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 835],769⟩,growRow 769 s2Step71HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step71HeadGBefore s2Step71HeadGAfter s2Step71HeadGRow 233 s2Step71HeadGFresh
    s2Step71HeadG_distinct s2Step71HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step71HeadG_reserved
  have rowEq : WindowRow.mk (s2Step71HeadGRow.payload++s2Step71HeadGFresh) s2Step71HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 835],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step71HeadGvBefore : Arena := s2Step71HeadFAfter

private theorem s2Step71HeadGv_Incoming : rowsOwned s2Step71HeadGvBefore [s2Step71HeadGvRow,s2Step71HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step71HeadGRow,s2Step71HeadFRow,s2Step71HeadGvRow,s2Step71HeadFvRow] 2 s2Step71HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step71HeadGvBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step71HeadGv_Outgoing : rowsOwned s2Step71HeadFvAfter [s2Step71HeadGvOut,s2Step71HeadFvOut] :=
  hmrRows_owned_drop s2Step71HeadFvAfter [s2Step71HeadGOut,s2Step71HeadFOut,s2Step71HeadGvOut,s2Step71HeadFvOut] 2 s2Step71HeadBank_outgoingOwned

private theorem s2Step71HeadGv_distinct : (s2Step71HeadGvRow.sign::s2Step71HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step71HeadGv_owned : (s2Step71HeadGvRow.sign::s2Step71HeadGvRow.payload).toFinset⊆s2Step71HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step71HeadGvBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step71HeadGv_reserved : s2Step71HeadGvBefore.reserve s2Step71HeadGvFresh.toFinset=some s2Step71HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step71HeadGvFresh,arenaWires]
  · norm_num [s2Step71HeadGvBefore,s2Step71HeadFAfter,s2Step71HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step71HeadGvAfter,s2Step71HeadGvBefore,s2Step71HeadFAfter,s2Step71HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step71HeadGv_checked : planRowResizeLog s2Step71HeadGvBefore s2Step71HeadGvRow 50 s2Step71HeadGvFresh=
    some (s2Step71HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 831, 822],771⟩,growRow 771 s2Step71HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step71HeadGvBefore s2Step71HeadGvAfter s2Step71HeadGvRow 50 s2Step71HeadGvFresh
    s2Step71HeadGv_distinct s2Step71HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step71HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step71HeadGvRow.payload++s2Step71HeadGvFresh) s2Step71HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 831, 822],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step71HeadBank_rows : planWindowRowsLog s2Step71HeadGBefore [(s2Step71HeadGRow,233),(s2Step71HeadFRow,233),(s2Step71HeadGvRow,50),(s2Step71HeadFvRow,50)] [s2Step71HeadGFresh,s2Step71HeadFFresh,s2Step71HeadGvFresh,s2Step71HeadFvFresh]=
    some (s2Step71HeadFvAfter,[s2Step71HeadGOut,s2Step71HeadFOut,s2Step71HeadGvOut,s2Step71HeadFvOut],(growRow 769 s2Step71HeadGFresh ++ (growRow 768 s2Step71HeadFFresh ++ (growRow 771 s2Step71HeadGvFresh ++ (growRow 770 s2Step71HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step71HeadFvAfter [] []=some (s2Step71HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step71HeadFvBefore s2Step71HeadFvAfter s2Step71HeadFvAfter
    s2Step71HeadFvRow s2Step71HeadFvOut 50 s2Step71HeadFvFresh [] [] []
    (growRow 770 s2Step71HeadFvFresh) ([]) s2Step71HeadFv_Incoming s2Step71HeadFv_checked h4 s2Step71HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step71HeadGvBefore s2Step71HeadGvAfter s2Step71HeadFvAfter
    s2Step71HeadGvRow s2Step71HeadGvOut 50 s2Step71HeadGvFresh [(s2Step71HeadFvRow,50)] [s2Step71HeadFvFresh] [s2Step71HeadFvOut]
    (growRow 771 s2Step71HeadGvFresh) ((growRow 770 s2Step71HeadFvFresh ++ [])) s2Step71HeadGv_Incoming s2Step71HeadGv_checked h3 s2Step71HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step71HeadFBefore s2Step71HeadFAfter s2Step71HeadFvAfter
    s2Step71HeadFRow s2Step71HeadFOut 233 s2Step71HeadFFresh [(s2Step71HeadGvRow,50),(s2Step71HeadFvRow,50)] [s2Step71HeadGvFresh,s2Step71HeadFvFresh] [s2Step71HeadGvOut,s2Step71HeadFvOut]
    (growRow 768 s2Step71HeadFFresh) ((growRow 771 s2Step71HeadGvFresh ++ (growRow 770 s2Step71HeadFvFresh ++ []))) s2Step71HeadF_Incoming s2Step71HeadF_checked h2 s2Step71HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step71HeadGBefore s2Step71HeadGAfter s2Step71HeadFvAfter
    s2Step71HeadGRow s2Step71HeadGOut 233 s2Step71HeadGFresh [(s2Step71HeadFRow,233),(s2Step71HeadGvRow,50),(s2Step71HeadFvRow,50)] [s2Step71HeadFFresh,s2Step71HeadGvFresh,s2Step71HeadFvFresh] [s2Step71HeadFOut,s2Step71HeadGvOut,s2Step71HeadFvOut]
    (growRow 769 s2Step71HeadGFresh) ((growRow 768 s2Step71HeadFFresh ++ (growRow 771 s2Step71HeadGvFresh ++ (growRow 770 s2Step71HeadFvFresh ++ [])))) s2Step71HeadG_Incoming s2Step71HeadG_checked h1 s2Step71HeadG_Outgoing
  exact h0

private theorem s2Step71HeadBank_checked : compileHmrBankResizeLog .headroom s2Step71HeadGBefore ⟨s2Step71HeadFRow,s2Step71HeadGRow,s2Step71HeadFvRow,s2Step71HeadGvRow⟩ ⟨233,233,50,50⟩ [s2Step71HeadGFresh,s2Step71HeadFFresh,s2Step71HeadGvFresh,s2Step71HeadFvFresh]=
    some (s2Step71HeadFvAfter,⟨s2Step71HeadFOut,s2Step71HeadGOut,s2Step71HeadFvOut,s2Step71HeadGvOut⟩,(growRow 769 s2Step71HeadGFresh ++ (growRow 768 s2Step71HeadFFresh ++ (growRow 771 s2Step71HeadGvFresh ++ (growRow 770 s2Step71HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step71HeadBank_rows]
  rfl

private theorem s2Step71Front_checked : compileHmrSourceFrontLog s2Step71EntryFBefore s2Step71FrontBank 232 49 ⟨233,231,50,48⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step71FrontLog=some s2Step71FrontPlan := by
  have pairEq : s2Step71FrontPair=⟨s2Step71HeadFRow,s2Step71HeadGRow,s2Step71HeadFvRow,s2Step71HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step71FrontHead=⟨s2Step71ExitFRow,s2Step71ExitGRow,s2Step71ExitFvRow,s2Step71ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step71Add0A=s2Step71FrontHead.f.wires := by decide +kernel
  have gEq : s2Step71Add0B=s2Step71FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step71Add1A=s2Step71FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step71Add1B=s2Step71FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step71EntryFBefore s2Step71FrontBank 232 49 ⟨233,231,50,48⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step71FrontLog s2Step71FrontPlan
  · exact s2Step71Front_entry
  · exact s2Step71EntryBank_checked
  · exact s2Step71Front_sigma
  · rfl
  · exact s2Step71Front_branch
  · rfl
  · simpa only [s2Step71FrontPlan,pairEq] using s2Step71HeadBank_checked
  · simpa only [s2Step71FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step71F4_checked
  · exact s2Step71Counter_checked
  · rfl
  · simpa only [s2Step71FrontPlan,headEq] using s2Step71ExitBank_checked

private theorem s2Step71Complete_explicit_checked : compileHmrEarlyStepLog s2Step71EntryFBefore s2Step71FrontBank 232 49 ⟨233,231,50,48⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 30 s2Step71CompleteLog=some s2Step71CompletePlan := by
  let Q := s2Step71EarlyControlPlan
  have hq := s2Step71EarlyControl_plan_checked
  have fv1 : s2Step71CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step71CompleteOut.fv.payload[2]?.getD s2Step71CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step71CompleteOut.fv.payload[3]?.getD s2Step71CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step71CompleteOut.fv.payload[4]?.getD s2Step71CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step71EntryFBefore s2Step71EarlyControlArena s2Step71FrontBank 232 49 ⟨233,231,50,48⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 30 s2Step71CompleteLog s2Step71FrontPlan Q
    s2Step71Front_checked s2Step71Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step71Complete_owned s2Step71Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step71EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 777 844 s2Step71CompleteOut.fv.second (s2Step71CompleteOut.fv.payload[2]?.getD s2Step71CompleteOut.fv.sign) (s2Step71CompleteOut.fv.payload[3]?.getD s2Step71CompleteOut.fv.sign) (s2Step71CompleteOut.fv.payload[4]?.getD s2Step71CompleteOut.fv.sign) 834 30 s2Step71EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep71Arena : Arena := s2Step71EntryFBefore
def s2PrivateStep71Bank : WindowBank := s2Step71FrontBank
def s2PrivateStep71Spec : HmrSourceWalkStepLog := ⟨232,49,⟨233,231,50,48⟩,30,.early s2Step71CompleteLog⟩
def s2PrivateStep71Plan : HmrSourceStepPlan := .early s2Step71CompletePlan
theorem s2PrivateStep71_source : s2PrivateStep71Spec=s2ObservedLogs64[7] := rfl
theorem s2PrivateStep71_checked : compileHmrSourceStepLog s2PrivateStep71Arena s2PrivateStep71Bank
    s2PrivateStep71Spec.fgWidth s2PrivateStep71Spec.vWidth s2PrivateStep71Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872]
    6 498 71 s2PrivateStep71Spec.need none s2PrivateStep71Spec.log=some s2PrivateStep71Plan := by
  change compileHmrSourceStepLog s2Step71EntryFBefore s2Step71FrontBank 232 49 ⟨233,231,50,48⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 6 498 71 30 none (.early s2Step71CompleteLog)=some (.early s2Step71CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 71<498)]
  rw [s2Step71Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
