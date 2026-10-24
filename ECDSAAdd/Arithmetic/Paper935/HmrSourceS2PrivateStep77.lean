import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep75
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

private def s2Step77CompleteMoves : List (Wire × Wire) := [(782,229),(783,741)]

private def s2Step77EarlyControlLog : HmrEarlyControlLog := ⟨[783, 782, 826, 844, 845],[836],[816],[846, 847, 849, 851, 867, 873],[]⟩

private def s2Step77FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [831]],[[845], [844], [826], [827]],[[], [], [], []]⟩,[784],[840],[836],[816],[846, 847, 849, 851, 867, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[846, 847, 849, 851, 867, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920],[836, 816, 846, 847]⟩

private def s2Step77CompleteLog : HmrEarlyStepLog := ⟨s2Step77FrontLog,s2Step77CompleteMoves,s2Step77EarlyControlLog⟩

private def s2Step77ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740],768⟩

private def s2Step77ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827],770⟩

private def s2Step77ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228],769⟩

private def s2Step77ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831],771⟩

private def s2Step77FrontOut : WindowBank := ⟨s2Step77ExitFOut,s2Step77ExitGOut,s2Step77ExitFvOut,s2Step77ExitGvOut⟩

private def s2Step77CompleteOut : WindowBank := s2Step77FrontOut.repacked s2Step77CompleteMoves

private def s2Step77EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step77EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step77EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step77EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step77EarlyControlPositiveArena,[836],s2Step77EarlyControlEqualityArena,[816],⟨⟨784,false⟩,[⟨⟨836,false⟩,816⟩]⟩⟩

private def s2Step77EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<874)),Finset.filter_subset _ _⟩

private def s2Step77EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<874)),Finset.filter_subset _ _⟩

private def s2Step77EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step77EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step77EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step77EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step77EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,783⟩,⟨⟨774,false⟩,782⟩,⟨⟨775,false⟩,826⟩,⟨⟨776,false⟩,844⟩,⟨⟨777,false⟩,845⟩]⟩

private def s2Step77EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step77EarlyControlZeroArena,s2Step77EarlyControlZeroPlan,s2Step77EarlyControlClassPlan,s2Step77EarlyControlFlagArena,s2Step77EarlyControlFittedArena,s2Step77EarlyControlHistoryArena,s2Step77EarlyControlSigmaArena,s2Step77EarlyControlOutputArena,s2Step77EarlyControlLog⟩

private def s2Step77CounterWork : List Wire := [836, 816, 846, 847]

private theorem s2Step77Counter_bounded : s2Step77CounterWork.toFinset⊆arenaWires := by norm_num [s2Step77CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step77HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step77CounterDuring : Arena := ⟨s2Step77HeadFvAfter.live∪s2Step77CounterWork.toFinset,Finset.union_subset s2Step77HeadFvAfter.bounded s2Step77Counter_bounded⟩

private def s2Step77EntryFFresh : List Wire := []

private def s2Step77EntryFvFresh : List Wire := []

private def s2Step77EntryGFresh : List Wire := []

private def s2Step77EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step77EntryGvFresh : List Wire := [831]

private def s2Step77ExitFExtra : List Wire := [741, 844]

private def s2Step77ExitGExtra : List Wire := [229, 845]

private def s2Step77ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<229) ∨ (230≤q ∧ q<741) ∨ (742≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step77ExitGvExtra : List Wire := [826]

private def s2Step77Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step77Add0Work : List Wire := [846, 847, 849, 851, 867, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step77Add0_bounded : s2Step77Add0Work.toFinset⊆arenaWires := by
  have h : s2Step77Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step77Add0During : Arena := ⟨s2Step77Add0Arena.live∪s2Step77Add0Work.toFinset,Finset.union_subset s2Step77Add0Arena.bounded s2Step77Add0_bounded⟩

private def s2Step77Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step77Add1Work : List Wire := [846, 847, 849, 851, 867, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920]

private theorem s2Step77Add1_bounded : s2Step77Add1Work.toFinset⊆arenaWires := by
  have h : s2Step77Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step77Add1During : Arena := ⟨s2Step77Add1Arena.live∪s2Step77Add1Work.toFinset,Finset.union_subset s2Step77Add1Arena.bounded s2Step77Add1_bounded⟩

private def s2Step77F4FlagArena : Arena := ⟨s2Step77HeadFvAfter.live∪{836},Finset.union_subset s2Step77HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step77F4Plan : HmrHybridF4Plan := ⟨s2Step77F4FlagArena,[836],s2Step77Add0Arena,[816],s2Step77Add0During,s2Step77Add0Work,s2Step77Add1During,s2Step77Add1Work⟩

private def s2Step77HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 844],768⟩

private def s2Step77HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827],770⟩

private def s2Step77HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 845],769⟩

private def s2Step77HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 826],771⟩

private def s2Step77FrontHead : WindowBank := ⟨s2Step77HeadFOut,s2Step77HeadGOut,s2Step77HeadFvOut,s2Step77HeadGvOut⟩

private def s2Step77EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741],768⟩

private def s2Step77EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835],770⟩

private def s2Step77EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229],769⟩

private def s2Step77EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831],771⟩

private def s2Step77FrontPair : WindowBank := ⟨s2Step77EntryFOut,s2Step77EntryGOut,s2Step77EntryFvOut,s2Step77EntryGvOut⟩

private def s2Step77FrontSigmaArena : Arena := ⟨s2Step77EntryGvAfter.live∪{784},Finset.union_subset s2Step77EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step77HeadFFresh : List Wire := [844]

private def s2Step77HeadFvFresh : List Wire := [827]

private def s2Step77HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step77HeadGFresh : List Wire := [845]

private def s2Step77HeadGvFresh : List Wire := [826]

private def s2Step77FrontPlan : HmrSourceFront := ⟨s2Step77EntryGvAfter,s2Step77FrontPair,(growRow 768 s2Step77EntryFFresh ++ (growRow 769 s2Step77EntryGFresh ++ (growRow 770 s2Step77EntryFvFresh ++ (growRow 771 s2Step77EntryGvFresh ++ [])))),s2Step77FrontSigmaArena,[784],s2Step77HeadGBefore,[840],
  s2Step77HeadFvAfter,s2Step77FrontHead,(growRow 769 s2Step77HeadGFresh ++ (growRow 768 s2Step77HeadFFresh ++ (growRow 771 s2Step77HeadGvFresh ++ (growRow 770 s2Step77HeadFvFresh ++ [])))),s2Step77F4Plan,s2Step77CounterDuring,s2Step77CounterWork,s2Step77ExitGvAfter,s2Step77FrontOut,(shrinkRow 769 s2Step77ExitGExtra ++ (shrinkRow 768 s2Step77ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step77ExitGvExtra ++ []))))⟩

private def s2Step77CompletePlan : HmrEarlyStepPlan := ⟨s2Step77FrontPlan,s2Step77EarlyControlArena,s2Step77EarlyControlPlan,s2Step77CompleteMoves⟩

private theorem s2Step77Complete_apart : List.Disjoint (s2Step77CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [784, 840, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] := by
  have nd : ((s2Step77CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[784, 840, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step77Complete_owned : (s2Step77CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step77EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step77EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private def s2Step77CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,741),(742,782),(783,816),(817,826),(827,836),(837,844),(848,849),(850,851),(852,867),(868,873)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s2Step77CompleteRelocationMove0Borrowed : Arena := ⟨s2Step77ExitGvAfter.live∪{229},Finset.union_subset s2Step77ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step77CompleteRelocationMove1Borrowed : Arena := ⟨s2Step77CompleteRelocationMove0After.live∪{741},Finset.union_subset s2Step77CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s2Step77CompleteRelocation_move0_owned : 782∈s2Step77ExitGvAfter.live := by norm_num [s2Step77ExitGvAfter,arenaWires]

private theorem s2Step77CompleteRelocation_move0_reserve : s2Step77ExitGvAfter.reserve {229}=some s2Step77CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step77ExitGvAfter,arenaWires]
  · rfl

private theorem s2Step77CompleteRelocation_move0_retire : s2Step77CompleteRelocationMove0Borrowed.retireSet {782}=s2Step77CompleteRelocationMove0After := by
  unfold Arena.retireSet s2Step77CompleteRelocationMove0After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step77CompleteRelocationMove0Borrowed,s2Step77ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step77CompleteRelocation_move1_owned : 783∈s2Step77CompleteRelocationMove0After.live := by norm_num [s2Step77CompleteRelocationMove0After,arenaWires]

private theorem s2Step77CompleteRelocation_move1_reserve : s2Step77CompleteRelocationMove0After.reserve {741}=some s2Step77CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step77CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s2Step77CompleteRelocation_move1_retire : s2Step77CompleteRelocationMove1Borrowed.retireSet {783}=s2Step77EarlyControlArena := by
  unfold Arena.retireSet s2Step77EarlyControlArena
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step77CompleteRelocationMove1Borrowed,s2Step77CompleteRelocationMove0After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step77CompleteRelocation_checked : s2Step77ExitGvAfter.checkRepack [(782,229),(783,741)]=some s2Step77EarlyControlArena := by
  have tail2 : s2Step77EarlyControlArena.checkRepack []=some s2Step77EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s2Step77CompleteRelocationMove0After s2Step77CompleteRelocationMove1Borrowed s2Step77EarlyControlArena s2Step77EarlyControlArena 783 741 []
    s2Step77CompleteRelocation_move1_owned s2Step77CompleteRelocation_move1_reserve s2Step77CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s2Step77ExitGvAfter s2Step77CompleteRelocationMove0Borrowed s2Step77CompleteRelocationMove0After s2Step77EarlyControlArena 782 229 [(783,741)]
    s2Step77CompleteRelocation_move0_owned s2Step77CompleteRelocation_move0_reserve s2Step77CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s2Step77Complete_repack : s2Step77ExitGvAfter.checkRepack s2Step77CompleteMoves=some s2Step77EarlyControlArena := by
  simpa only [s2Step77CompleteMoves] using s2Step77CompleteRelocation_checked

private theorem s2Step77EarlyControl_branchOwned : ([840] : List Wire).toFinset⊆s2Step77EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step77EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step77EarlyControl_branch : compileHmrBranchRetirement s2Step77EarlyControlSigmaArena 840=some s2Step77EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step77EarlyControl_branchOwned
  · ext q
    simp [s2Step77EarlyControlOutputArena,s2Step77EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step77EarlyControl_classEqualityBorrow : s2Step77EarlyControlPositiveArena.checkBorrow (([784, 836] : List Wire).length-1) s2Step77EarlyControlLog.classWork=some s2Step77EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step77EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step77EarlyControlPositiveArena (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
      decide +kernel
    · ext q
      simp [s2Step77EarlyControlEqualityArena,s2Step77EarlyControlPositiveArena,s2Step77EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step77EarlyControl_classEqualityOwned : ([784, 836] : List Wire).toFinset⊆s2Step77EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step77EarlyControlPositiveArena (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step77EarlyControl_classEquality : compileHmrEqualityLog s2Step77EarlyControlPositiveArena [784, 836] 0 s2Step77EarlyControlLog.classWork=some (s2Step77EarlyControlEqualityArena,s2Step77EarlyControlLog.classWork,s2Step77EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step77EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step77EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step77EarlyControl_classOwned : ([777, 845, 784] : List Wire).toFinset⊆s2Step77EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step77EarlyControlZeroArena (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step77EarlyControl_positiveBorrow : s2Step77EarlyControlZeroArena.checkBorrow (1) s2Step77EarlyControlLog.positiveWork=some s2Step77EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step77EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step77EarlyControlZeroArena (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
      decide +kernel
    · ext q
      simp [s2Step77EarlyControlPositiveArena,s2Step77EarlyControlZeroArena,s2Step77EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step77EarlyControl_class : compileHmrSourceClassLog s2Step77EarlyControlZeroArena false 777 s2Step77EarlyControlZeroPlan.top 0 784 s2Step77EarlyControlLog.positiveWork s2Step77EarlyControlLog.classWork=some s2Step77EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step77EarlyControlClassPlan s2Step77EarlyControlZeroArena false 777 s2Step77EarlyControlZeroPlan.top 0 784
  constructor
  · decide +kernel
  · exact s2Step77EarlyControl_classOwned
  · exact s2Step77EarlyControl_positiveBorrow
  · exact s2Step77EarlyControl_classEquality

private theorem s2Step77EarlyControl_entryRecordOwned : ([840, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] : List Wire).toFinset⊆s2Step77EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step77EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step77EarlyControl_entrySigmaOwned : ([784, 254] : List Wire).toFinset⊆s2Step77EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step77EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step77EarlyControl_fitBorrow : s2Step77EarlyControlFlagArena.checkBorrow ((30-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] : List Wire).length)) s2Step77EarlyControlLog.recordFresh=some s2Step77EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step77EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step77EarlyControlFlagArena (fun q => (0≤q ∧ q<874)) rfl
      decide +kernel
    · ext q
      simp [s2Step77EarlyControlFittedArena,s2Step77EarlyControlFlagArena,s2Step77EarlyControlLog,arenaWires]

private theorem s2Step77EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] : List Wire).toFinset⊆s2Step77EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step77EarlyControlFlagArena (fun q => (0≤q ∧ q<874)) rfl
  decide +kernel

private theorem s2Step77EarlyControl_fit : compileHmrRecordGrowLog s2Step77EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 30 s2Step77EarlyControlLog.recordFresh=some s2Step77EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step77EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step77EarlyControl_fitBorrow

private theorem s2Step77EarlyControl_flagsBorrow : s2Step77EarlyControlEqualityArena.checkBorrow (6) s2Step77EarlyControlLog.flagWork=some s2Step77EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step77EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step77EarlyControlEqualityArena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
      decide +kernel
    · ext q
      simp [s2Step77EarlyControlFlagArena,s2Step77EarlyControlEqualityArena,s2Step77EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step77EarlyControl_flagsOwned : ([816, 253, 252, 251] : List Wire).toFinset⊆s2Step77EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step77EarlyControlEqualityArena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step77EarlyControl_flags : compileHmrFlagsLog s2Step77EarlyControlClassPlan.equalityArena s2Step77EarlyControlClassPlan.equality.top 253 252 251 s2Step77EarlyControlLog.flagWork=some s2Step77EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step77EarlyControl_flagsOwned⟩
  · exact s2Step77EarlyControl_flagsBorrow

private theorem s2Step77EarlyControl_historyBorrow : s2Step77EarlyControlArena.checkBorrow ((30-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] : List Wire).length)) s2Step77EarlyControlLog.recordFresh=some s2Step77EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step77EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step77EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
      decide +kernel
    · ext q
      simp [s2Step77EarlyControlHistoryArena,s2Step77EarlyControlArena,s2Step77EarlyControlLog,arenaWires]

private theorem s2Step77EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] : List Wire).toFinset⊆s2Step77EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step77EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step77EarlyControl_history : compileHmrRecordGrowLog s2Step77EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 30 s2Step77EarlyControlLog.recordFresh=some s2Step77EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step77EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step77EarlyControl_historyBorrow

private theorem s2Step77EarlyControl_sigmaOwned : ([254, 784] : List Wire).toFinset⊆s2Step77EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step77EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step77EarlyControl_sigmaReleaseOwned : ([784] : List Wire).toFinset⊆s2Step77EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step77EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step77EarlyControl_sigmaRelease : s2Step77EarlyControlHistoryArena.release {784} (fun _ => false)=some s2Step77EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step77EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step77EarlyControlSigmaArena,s2Step77EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step77EarlyControl_sigma : compileHmrSigmaDropLog s2Step77EarlyControlHistoryArena false 0 0 254 784 []=some s2Step77EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step77EarlyControl_sigmaOwned⟩
  · exact s2Step77EarlyControl_sigmaRelease

private theorem s2Step77EarlyControl_zeroBorrow : s2Step77EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step77EarlyControlLog.zeroWork=some s2Step77EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step77EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step77EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
      decide +kernel
    · ext q
      simp [s2Step77EarlyControlZeroArena,s2Step77EarlyControlArena,s2Step77EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step77EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step77EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step77EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step77EarlyControl_zero : compileHmrEqualityLog s2Step77EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step77EarlyControlLog.zeroWork=some (s2Step77EarlyControlZeroArena,s2Step77EarlyControlLog.zeroWork,s2Step77EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step77EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step77EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step77EarlyControl_logged : s2Step77EarlyControlPlan.Logged s2Step77EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 777 784 254 253 252 251 840 30 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step77EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step77EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step77EarlyControl_zero
  · exact s2Step77EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step77EarlyControl_flags
  · exact s2Step77EarlyControl_fit
  · exact s2Step77EarlyControl_history
  · exact s2Step77EarlyControl_sigma
  · exact s2Step77EarlyControl_branch

private theorem s2Step77EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step77EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 777 784 254 253 252 251 840 30 s2Step77EarlyControlLog=some s2Step77EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step77EarlyControlPlan s2Step77EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 777 784 254 253 252 251 840 30 s2Step77EarlyControl_logged

private def s2Step77EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step77EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741],768⟩

private def s2Step77EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835],770⟩

private def s2Step77EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229],769⟩

private def s2Step77EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814],771⟩

private def s2Step77FrontBank : WindowBank := ⟨s2Step77EntryFRow,s2Step77EntryGRow,s2Step77EntryFvRow,s2Step77EntryGvRow⟩

private def s2Step77Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 844, 768]

private def s2Step77Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 845, 769]

private def s2Step77Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 770]

private def s2Step77Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 826, 771]

private theorem s2Step77Counter_apart : Disjoint s2Step77HeadFvAfter.live s2Step77CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step77HeadFvAfter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step77Counter_borrowed : s2Step77HeadFvAfter.checkBorrow 4 s2Step77CounterWork=some s2Step77CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step77HeadFvAfter s2Step77CounterDuring s2Step77CounterWork.toFinset s2Step77Counter_bounded s2Step77Counter_apart rfl

private theorem s2Step77Counter_owned : (784::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step77HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step77HeadFvAfter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step77Counter_checked : compileHmrCounterStepLog s2Step77HeadFvAfter true 784 [772, 773, 774, 775, 776, 777] s2Step77CounterWork=some s2Step77CounterDuring := by
  have owned : ∀q∈784::[772, 773, 774, 775, 776, 777],q∈s2Step77HeadFvAfter.live := fun q hq => s2Step77Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step77Counter_borrowed

private def s2Step77EntryFAfter : Arena := s2Step77EntryFBefore

private theorem s2Step77EntryBank_incomingDistinct : ([s2Step77EntryFRow,s2Step77EntryGRow,s2Step77EntryFvRow,s2Step77EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step77EntryF_Incoming : rowsOwned s2Step77EntryFBefore [s2Step77EntryFRow,s2Step77EntryGRow,s2Step77EntryFvRow,s2Step77EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step77EntryFRow,s2Step77EntryGRow,s2Step77EntryFvRow,s2Step77EntryGvRow] 0 s2Step77EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step77EntryFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step77EntryBank_outgoingOwned : rowsOwned s2Step77EntryGvAfter [s2Step77EntryFOut,s2Step77EntryGOut,s2Step77EntryFvOut,s2Step77EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step77EntryGvAfter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step77EntryF_Outgoing : rowsOwned s2Step77EntryGvAfter [s2Step77EntryFOut,s2Step77EntryGOut,s2Step77EntryFvOut,s2Step77EntryGvOut] :=
  hmrRows_owned_drop s2Step77EntryGvAfter [s2Step77EntryFOut,s2Step77EntryGOut,s2Step77EntryFvOut,s2Step77EntryGvOut] 0 s2Step77EntryBank_outgoingOwned

private theorem s2Step77EntryF_distinct : (s2Step77EntryFRow.sign::s2Step77EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step77EntryF_owned : (s2Step77EntryFRow.sign::s2Step77EntryFRow.payload).toFinset⊆s2Step77EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step77EntryFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step77EntryF_reserved : s2Step77EntryFBefore.reserve s2Step77EntryFFresh.toFinset=some s2Step77EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step77EntryFFresh,arenaWires]
  · norm_num [s2Step77EntryFBefore,s2Step77EntryFFresh,arenaWires]
  · simp only [s2Step77EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step77EntryF_checked : planRowResizeLog s2Step77EntryFBefore s2Step77EntryFRow 230 s2Step77EntryFFresh=
    some (s2Step77EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741],768⟩,growRow 768 s2Step77EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step77EntryFBefore s2Step77EntryFAfter s2Step77EntryFRow 230 s2Step77EntryFFresh
    s2Step77EntryF_distinct s2Step77EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step77EntryF_reserved
  have rowEq : WindowRow.mk (s2Step77EntryFRow.payload++s2Step77EntryFFresh) s2Step77EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step77EntryFvAfter : Arena := s2Step77EntryFBefore

private def s2Step77EntryFvBefore : Arena := s2Step77EntryFBefore

private theorem s2Step77EntryFv_Incoming : rowsOwned s2Step77EntryFvBefore [s2Step77EntryFvRow,s2Step77EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step77EntryFRow,s2Step77EntryGRow,s2Step77EntryFvRow,s2Step77EntryGvRow] 2 s2Step77EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step77EntryFvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step77EntryFv_Outgoing : rowsOwned s2Step77EntryGvAfter [s2Step77EntryFvOut,s2Step77EntryGvOut] :=
  hmrRows_owned_drop s2Step77EntryGvAfter [s2Step77EntryFOut,s2Step77EntryGOut,s2Step77EntryFvOut,s2Step77EntryGvOut] 2 s2Step77EntryBank_outgoingOwned

private theorem s2Step77EntryFv_distinct : (s2Step77EntryFvRow.sign::s2Step77EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step77EntryFv_owned : (s2Step77EntryFvRow.sign::s2Step77EntryFvRow.payload).toFinset⊆s2Step77EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step77EntryFvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step77EntryFv_reserved : s2Step77EntryFvBefore.reserve s2Step77EntryFvFresh.toFinset=some s2Step77EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step77EntryFvFresh,arenaWires]
  · norm_num [s2Step77EntryFvBefore,s2Step77EntryFBefore,s2Step77EntryFvFresh,arenaWires]
  · simp only [s2Step77EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step77EntryFv_checked : planRowResizeLog s2Step77EntryFvBefore s2Step77EntryFvRow 52 s2Step77EntryFvFresh=
    some (s2Step77EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835],770⟩,growRow 770 s2Step77EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step77EntryFvBefore s2Step77EntryFvAfter s2Step77EntryFvRow 52 s2Step77EntryFvFresh
    s2Step77EntryFv_distinct s2Step77EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step77EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step77EntryFvRow.payload++s2Step77EntryFvFresh) s2Step77EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step77EntryGAfter : Arena := s2Step77EntryFBefore

private def s2Step77EntryGBefore : Arena := s2Step77EntryFBefore

private theorem s2Step77EntryG_Incoming : rowsOwned s2Step77EntryGBefore [s2Step77EntryGRow,s2Step77EntryFvRow,s2Step77EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step77EntryFRow,s2Step77EntryGRow,s2Step77EntryFvRow,s2Step77EntryGvRow] 1 s2Step77EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step77EntryGBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step77EntryG_Outgoing : rowsOwned s2Step77EntryGvAfter [s2Step77EntryGOut,s2Step77EntryFvOut,s2Step77EntryGvOut] :=
  hmrRows_owned_drop s2Step77EntryGvAfter [s2Step77EntryFOut,s2Step77EntryGOut,s2Step77EntryFvOut,s2Step77EntryGvOut] 1 s2Step77EntryBank_outgoingOwned

private theorem s2Step77EntryG_distinct : (s2Step77EntryGRow.sign::s2Step77EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step77EntryG_owned : (s2Step77EntryGRow.sign::s2Step77EntryGRow.payload).toFinset⊆s2Step77EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step77EntryGBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step77EntryG_reserved : s2Step77EntryGBefore.reserve s2Step77EntryGFresh.toFinset=some s2Step77EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step77EntryGFresh,arenaWires]
  · norm_num [s2Step77EntryGBefore,s2Step77EntryFBefore,s2Step77EntryGFresh,arenaWires]
  · simp only [s2Step77EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step77EntryG_checked : planRowResizeLog s2Step77EntryGBefore s2Step77EntryGRow 230 s2Step77EntryGFresh=
    some (s2Step77EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229],769⟩,growRow 769 s2Step77EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step77EntryGBefore s2Step77EntryGAfter s2Step77EntryGRow 230 s2Step77EntryGFresh
    s2Step77EntryG_distinct s2Step77EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step77EntryG_reserved
  have rowEq : WindowRow.mk (s2Step77EntryGRow.payload++s2Step77EntryGFresh) s2Step77EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step77EntryGvBefore : Arena := s2Step77EntryFBefore

private theorem s2Step77EntryGv_Incoming : rowsOwned s2Step77EntryGvBefore [s2Step77EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step77EntryFRow,s2Step77EntryGRow,s2Step77EntryFvRow,s2Step77EntryGvRow] 3 s2Step77EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step77EntryGvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step77EntryGv_Outgoing : rowsOwned s2Step77EntryGvAfter [s2Step77EntryGvOut] :=
  hmrRows_owned_drop s2Step77EntryGvAfter [s2Step77EntryFOut,s2Step77EntryGOut,s2Step77EntryFvOut,s2Step77EntryGvOut] 3 s2Step77EntryBank_outgoingOwned

private theorem s2Step77EntryGv_distinct : (s2Step77EntryGvRow.sign::s2Step77EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step77EntryGv_owned : (s2Step77EntryGvRow.sign::s2Step77EntryGvRow.payload).toFinset⊆s2Step77EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step77EntryGvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step77EntryGv_reserved : s2Step77EntryGvBefore.reserve s2Step77EntryGvFresh.toFinset=some s2Step77EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step77EntryGvFresh,arenaWires]
  · norm_num [s2Step77EntryGvBefore,s2Step77EntryFBefore,s2Step77EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step77EntryGvAfter,s2Step77EntryGvBefore,s2Step77EntryFBefore,s2Step77EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step77EntryGv_checked : planRowResizeLog s2Step77EntryGvBefore s2Step77EntryGvRow 52 s2Step77EntryGvFresh=
    some (s2Step77EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831],771⟩,growRow 771 s2Step77EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step77EntryGvBefore s2Step77EntryGvAfter s2Step77EntryGvRow 52 s2Step77EntryGvFresh
    s2Step77EntryGv_distinct s2Step77EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step77EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step77EntryGvRow.payload++s2Step77EntryGvFresh) s2Step77EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step77EntryBank_rows : planWindowRowsLog s2Step77EntryFBefore [(s2Step77EntryFRow,230),(s2Step77EntryGRow,230),(s2Step77EntryFvRow,52),(s2Step77EntryGvRow,52)] [s2Step77EntryFFresh,s2Step77EntryGFresh,s2Step77EntryFvFresh,s2Step77EntryGvFresh]=
    some (s2Step77EntryGvAfter,[s2Step77EntryFOut,s2Step77EntryGOut,s2Step77EntryFvOut,s2Step77EntryGvOut],(growRow 768 s2Step77EntryFFresh ++ (growRow 769 s2Step77EntryGFresh ++ (growRow 770 s2Step77EntryFvFresh ++ (growRow 771 s2Step77EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step77EntryGvAfter [] []=some (s2Step77EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step77EntryGvBefore s2Step77EntryGvAfter s2Step77EntryGvAfter
    s2Step77EntryGvRow s2Step77EntryGvOut 52 s2Step77EntryGvFresh [] [] []
    (growRow 771 s2Step77EntryGvFresh) ([]) s2Step77EntryGv_Incoming s2Step77EntryGv_checked h4 s2Step77EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step77EntryFvBefore s2Step77EntryFvAfter s2Step77EntryGvAfter
    s2Step77EntryFvRow s2Step77EntryFvOut 52 s2Step77EntryFvFresh [(s2Step77EntryGvRow,52)] [s2Step77EntryGvFresh] [s2Step77EntryGvOut]
    (growRow 770 s2Step77EntryFvFresh) ((growRow 771 s2Step77EntryGvFresh ++ [])) s2Step77EntryFv_Incoming s2Step77EntryFv_checked h3 s2Step77EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step77EntryGBefore s2Step77EntryGAfter s2Step77EntryGvAfter
    s2Step77EntryGRow s2Step77EntryGOut 230 s2Step77EntryGFresh [(s2Step77EntryFvRow,52),(s2Step77EntryGvRow,52)] [s2Step77EntryFvFresh,s2Step77EntryGvFresh] [s2Step77EntryFvOut,s2Step77EntryGvOut]
    (growRow 769 s2Step77EntryGFresh) ((growRow 770 s2Step77EntryFvFresh ++ (growRow 771 s2Step77EntryGvFresh ++ []))) s2Step77EntryG_Incoming s2Step77EntryG_checked h2 s2Step77EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step77EntryFBefore s2Step77EntryFAfter s2Step77EntryGvAfter
    s2Step77EntryFRow s2Step77EntryFOut 230 s2Step77EntryFFresh [(s2Step77EntryGRow,230),(s2Step77EntryFvRow,52),(s2Step77EntryGvRow,52)] [s2Step77EntryGFresh,s2Step77EntryFvFresh,s2Step77EntryGvFresh] [s2Step77EntryGOut,s2Step77EntryFvOut,s2Step77EntryGvOut]
    (growRow 768 s2Step77EntryFFresh) ((growRow 769 s2Step77EntryGFresh ++ (growRow 770 s2Step77EntryFvFresh ++ (growRow 771 s2Step77EntryGvFresh ++ [])))) s2Step77EntryF_Incoming s2Step77EntryF_checked h1 s2Step77EntryF_Outgoing
  exact h0

private theorem s2Step77EntryBank_checked : compileHmrBankResizeLog .entry s2Step77EntryFBefore ⟨s2Step77EntryFRow,s2Step77EntryGRow,s2Step77EntryFvRow,s2Step77EntryGvRow⟩ ⟨230,230,52,52⟩ [s2Step77EntryFFresh,s2Step77EntryGFresh,s2Step77EntryFvFresh,s2Step77EntryGvFresh]=
    some (s2Step77EntryGvAfter,⟨s2Step77EntryFOut,s2Step77EntryGOut,s2Step77EntryFvOut,s2Step77EntryGvOut⟩,(growRow 768 s2Step77EntryFFresh ++ (growRow 769 s2Step77EntryGFresh ++ (growRow 770 s2Step77EntryFvFresh ++ (growRow 771 s2Step77EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step77EntryBank_rows]
  rfl

private def s2Step77ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<229) ∨ (230≤q ∧ q<741) ∨ (742≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step77ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<229) ∨ (230≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step77ExitFBefore : Arena := s2Step77ExitGAfter

private def s2Step77ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 844],768⟩

private def s2Step77ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827],770⟩

private def s2Step77ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 845],769⟩

private def s2Step77ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 826],771⟩

private theorem s2Step77ExitBank_incomingDistinct : ([s2Step77ExitGRow,s2Step77ExitFRow,s2Step77ExitFvRow,s2Step77ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step77ExitF_Incoming : rowsOwned s2Step77ExitFBefore [s2Step77ExitFRow,s2Step77ExitFvRow,s2Step77ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step77ExitGRow,s2Step77ExitFRow,s2Step77ExitFvRow,s2Step77ExitGvRow] 1 s2Step77ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step77ExitFBefore (fun q => (0≤q ∧ q<229) ∨ (230≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step77ExitBank_outgoingOwned : rowsOwned s2Step77ExitGvAfter [s2Step77ExitGOut,s2Step77ExitFOut,s2Step77ExitFvOut,s2Step77ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step77ExitGvAfter (fun q => (0≤q ∧ q<229) ∨ (230≤q ∧ q<741) ∨ (742≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step77ExitF_Outgoing : rowsOwned s2Step77ExitGvAfter [s2Step77ExitFOut,s2Step77ExitFvOut,s2Step77ExitGvOut] :=
  hmrRows_owned_drop s2Step77ExitGvAfter [s2Step77ExitGOut,s2Step77ExitFOut,s2Step77ExitFvOut,s2Step77ExitGvOut] 1 s2Step77ExitBank_outgoingOwned

private theorem s2Step77ExitF_distinct : (s2Step77ExitFRow.sign::s2Step77ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step77ExitF_owned : (s2Step77ExitFRow.sign::s2Step77ExitFRow.payload).toFinset⊆s2Step77ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step77ExitFBefore (fun q => (0≤q ∧ q<229) ∨ (230≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step77ExitF_retired : s2Step77ExitFBefore.retireSet s2Step77ExitFExtra.toFinset=s2Step77ExitFAfter := by
  unfold Arena.retireSet s2Step77ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step77ExitFBefore,s2Step77ExitGAfter,s2Step77ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step77ExitF_checked : planRowResizeLog s2Step77ExitFBefore s2Step77ExitFRow 229 []=
    some (s2Step77ExitFAfter,s2Step77ExitFOut,shrinkRow 768 s2Step77ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step77ExitFBefore s2Step77ExitFRow 229 s2Step77ExitF_distinct s2Step77ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step77ExitFRow.payload.take 229) s2Step77ExitFRow.sign=s2Step77ExitFOut := by decide +kernel
  have hi : s2Step77ExitFRow.payload.drop 229=s2Step77ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step77ExitF_retired] at result
  exact result

private def s2Step77ExitFvAfter : Arena := s2Step77ExitFAfter

private def s2Step77ExitFvBefore : Arena := s2Step77ExitFAfter

private theorem s2Step77ExitFv_Incoming : rowsOwned s2Step77ExitFvBefore [s2Step77ExitFvRow,s2Step77ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step77ExitGRow,s2Step77ExitFRow,s2Step77ExitFvRow,s2Step77ExitGvRow] 2 s2Step77ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step77ExitFvBefore (fun q => (0≤q ∧ q<229) ∨ (230≤q ∧ q<741) ∨ (742≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step77ExitFv_Outgoing : rowsOwned s2Step77ExitGvAfter [s2Step77ExitFvOut,s2Step77ExitGvOut] :=
  hmrRows_owned_drop s2Step77ExitGvAfter [s2Step77ExitGOut,s2Step77ExitFOut,s2Step77ExitFvOut,s2Step77ExitGvOut] 2 s2Step77ExitBank_outgoingOwned

private theorem s2Step77ExitFv_distinct : (s2Step77ExitFvRow.sign::s2Step77ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step77ExitFv_owned : (s2Step77ExitFvRow.sign::s2Step77ExitFvRow.payload).toFinset⊆s2Step77ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step77ExitFvBefore (fun q => (0≤q ∧ q<229) ∨ (230≤q ∧ q<741) ∨ (742≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step77ExitFv_reserved : s2Step77ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step77ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step77ExitFv_checked : planRowResizeLog s2Step77ExitFvBefore s2Step77ExitFvRow 53 []=
    some (s2Step77ExitFvAfter,s2Step77ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step77ExitFvBefore s2Step77ExitFvAfter s2Step77ExitFvRow 53 []
    s2Step77ExitFv_distinct s2Step77ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step77ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step77ExitFvRow.payload++[]) s2Step77ExitFvRow.sign=s2Step77ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step77ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private theorem s2Step77ExitG_Incoming : rowsOwned s2Step77ExitGBefore [s2Step77ExitGRow,s2Step77ExitFRow,s2Step77ExitFvRow,s2Step77ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step77ExitGRow,s2Step77ExitFRow,s2Step77ExitFvRow,s2Step77ExitGvRow] 0 s2Step77ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step77ExitGBefore (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step77ExitG_Outgoing : rowsOwned s2Step77ExitGvAfter [s2Step77ExitGOut,s2Step77ExitFOut,s2Step77ExitFvOut,s2Step77ExitGvOut] :=
  hmrRows_owned_drop s2Step77ExitGvAfter [s2Step77ExitGOut,s2Step77ExitFOut,s2Step77ExitFvOut,s2Step77ExitGvOut] 0 s2Step77ExitBank_outgoingOwned

private theorem s2Step77ExitG_distinct : (s2Step77ExitGRow.sign::s2Step77ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step77ExitG_owned : (s2Step77ExitGRow.sign::s2Step77ExitGRow.payload).toFinset⊆s2Step77ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step77ExitGBefore (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step77ExitG_retired : s2Step77ExitGBefore.retireSet s2Step77ExitGExtra.toFinset=s2Step77ExitGAfter := by
  unfold Arena.retireSet s2Step77ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step77ExitGBefore,s2Step77ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step77ExitG_checked : planRowResizeLog s2Step77ExitGBefore s2Step77ExitGRow 229 []=
    some (s2Step77ExitGAfter,s2Step77ExitGOut,shrinkRow 769 s2Step77ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step77ExitGBefore s2Step77ExitGRow 229 s2Step77ExitG_distinct s2Step77ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step77ExitGRow.payload.take 229) s2Step77ExitGRow.sign=s2Step77ExitGOut := by decide +kernel
  have hi : s2Step77ExitGRow.payload.drop 229=s2Step77ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step77ExitG_retired] at result
  exact result

private def s2Step77ExitGvBefore : Arena := s2Step77ExitFAfter

private theorem s2Step77ExitGv_Incoming : rowsOwned s2Step77ExitGvBefore [s2Step77ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step77ExitGRow,s2Step77ExitFRow,s2Step77ExitFvRow,s2Step77ExitGvRow] 3 s2Step77ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step77ExitGvBefore (fun q => (0≤q ∧ q<229) ∨ (230≤q ∧ q<741) ∨ (742≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step77ExitGv_Outgoing : rowsOwned s2Step77ExitGvAfter [s2Step77ExitGvOut] :=
  hmrRows_owned_drop s2Step77ExitGvAfter [s2Step77ExitGOut,s2Step77ExitFOut,s2Step77ExitFvOut,s2Step77ExitGvOut] 3 s2Step77ExitBank_outgoingOwned

private theorem s2Step77ExitGv_distinct : (s2Step77ExitGvRow.sign::s2Step77ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step77ExitGv_owned : (s2Step77ExitGvRow.sign::s2Step77ExitGvRow.payload).toFinset⊆s2Step77ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step77ExitGvBefore (fun q => (0≤q ∧ q<229) ∨ (230≤q ∧ q<741) ∨ (742≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step77ExitGv_retired : s2Step77ExitGvBefore.retireSet s2Step77ExitGvExtra.toFinset=s2Step77ExitGvAfter := by
  unfold Arena.retireSet s2Step77ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step77ExitGvBefore,s2Step77ExitFAfter,s2Step77ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step77ExitGv_checked : planRowResizeLog s2Step77ExitGvBefore s2Step77ExitGvRow 52 []=
    some (s2Step77ExitGvAfter,s2Step77ExitGvOut,shrinkRow 771 s2Step77ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step77ExitGvBefore s2Step77ExitGvRow 52 s2Step77ExitGv_distinct s2Step77ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step77ExitGvRow.payload.take 52) s2Step77ExitGvRow.sign=s2Step77ExitGvOut := by decide +kernel
  have hi : s2Step77ExitGvRow.payload.drop 52=s2Step77ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step77ExitGv_retired] at result
  exact result

private theorem s2Step77ExitBank_rows : planWindowRowsLog s2Step77ExitGBefore [(s2Step77ExitGRow,229),(s2Step77ExitFRow,229),(s2Step77ExitFvRow,53),(s2Step77ExitGvRow,52)] [[],[],[],[]]=
    some (s2Step77ExitGvAfter,[s2Step77ExitGOut,s2Step77ExitFOut,s2Step77ExitFvOut,s2Step77ExitGvOut],(shrinkRow 769 s2Step77ExitGExtra ++ (shrinkRow 768 s2Step77ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step77ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step77ExitGvAfter [] []=some (s2Step77ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step77ExitGvBefore s2Step77ExitGvAfter s2Step77ExitGvAfter
    s2Step77ExitGvRow s2Step77ExitGvOut 52 [] [] [] []
    (shrinkRow 771 s2Step77ExitGvExtra) ([]) s2Step77ExitGv_Incoming s2Step77ExitGv_checked h4 s2Step77ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step77ExitFvBefore s2Step77ExitFvAfter s2Step77ExitGvAfter
    s2Step77ExitFvRow s2Step77ExitFvOut 53 [] [(s2Step77ExitGvRow,52)] [[]] [s2Step77ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step77ExitGvExtra ++ [])) s2Step77ExitFv_Incoming s2Step77ExitFv_checked h3 s2Step77ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step77ExitFBefore s2Step77ExitFAfter s2Step77ExitGvAfter
    s2Step77ExitFRow s2Step77ExitFOut 229 [] [(s2Step77ExitFvRow,53),(s2Step77ExitGvRow,52)] [[],[]] [s2Step77ExitFvOut,s2Step77ExitGvOut]
    (shrinkRow 768 s2Step77ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step77ExitGvExtra ++ []))) s2Step77ExitF_Incoming s2Step77ExitF_checked h2 s2Step77ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step77ExitGBefore s2Step77ExitGAfter s2Step77ExitGvAfter
    s2Step77ExitGRow s2Step77ExitGOut 229 [] [(s2Step77ExitFRow,229),(s2Step77ExitFvRow,53),(s2Step77ExitGvRow,52)] [[],[],[]] [s2Step77ExitFOut,s2Step77ExitFvOut,s2Step77ExitGvOut]
    (shrinkRow 769 s2Step77ExitGExtra) ((shrinkRow 768 s2Step77ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step77ExitGvExtra ++ [])))) s2Step77ExitG_Incoming s2Step77ExitG_checked h1 s2Step77ExitG_Outgoing
  exact h0

private theorem s2Step77ExitBank_checked : compileHmrBankResizeLog .exit s2Step77ExitGBefore ⟨s2Step77ExitFRow,s2Step77ExitGRow,s2Step77ExitFvRow,s2Step77ExitGvRow⟩ ⟨229,229,53,52⟩ [[],[],[],[]]=
    some (s2Step77ExitGvAfter,⟨s2Step77ExitFOut,s2Step77ExitGOut,s2Step77ExitFvOut,s2Step77ExitGvOut⟩,(shrinkRow 769 s2Step77ExitGExtra ++ (shrinkRow 768 s2Step77ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step77ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step77ExitBank_rows]
  rfl

private theorem s2Step77Add0_apart : Disjoint s2Step77Add0Arena.live s2Step77Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step77Add0Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step77Add0_card : s2Step77Add0Arena.live.card=868 := by
  decide +kernel

private theorem s2Step77Add0_borrowed : s2Step77Add0Arena.checkBorrow (hmrHybridCount s2Step77Add0Arena s2Step77Add0B.length) s2Step77Add0Work=some s2Step77Add0During := by
  have len : s2Step77Add0Work.length=hmrHybridCount s2Step77Add0Arena s2Step77Add0B.length := by
    rw [hmrHybridCount,s2Step77Add0_card]
    decide +kernel
  have nd : s2Step77Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step77Add0Arena s2Step77Add0During s2Step77Add0Work.toFinset s2Step77Add0_bounded s2Step77Add0_apart rfl

private theorem s2Step77Add0_distinct : (836::840::816::(s2Step77Add0A++s2Step77Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step77Add0_owned : (836::840::816::(s2Step77Add0A++s2Step77Add0B)).toFinset⊆s2Step77Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step77Add0Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step77Add0_checked : compileHmrHybridCinLog s2Step77Add0Arena 840 836 816 s2Step77Add0A s2Step77Add0B s2Step77Add0Work=some s2Step77Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step77Add0Arena s2Step77Add0During 840 836 816 s2Step77Add0A s2Step77Add0B s2Step77Add0Work
    (by decide +kernel) (by decide +kernel) s2Step77Add0_distinct
    (fun q hq => s2Step77Add0_owned (List.mem_toFinset.mpr hq)) s2Step77Add0_borrowed

private theorem s2Step77Add1_apart : Disjoint s2Step77Add1Arena.live s2Step77Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step77Add1Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step77Add1_card : s2Step77Add1Arena.live.card=868 := by
  decide +kernel

private theorem s2Step77Add1_borrowed : s2Step77Add1Arena.checkBorrow (hmrHybridCount s2Step77Add1Arena s2Step77Add1B.length) s2Step77Add1Work=some s2Step77Add1During := by
  have len : s2Step77Add1Work.length=hmrHybridCount s2Step77Add1Arena s2Step77Add1B.length := by
    rw [hmrHybridCount,s2Step77Add1_card]
    decide +kernel
  have nd : s2Step77Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step77Add1Arena s2Step77Add1During s2Step77Add1Work.toFinset s2Step77Add1_bounded s2Step77Add1_apart rfl

private theorem s2Step77Add1_distinct : (836::840::816::(s2Step77Add1A++s2Step77Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step77Add1_owned : (836::840::816::(s2Step77Add1A++s2Step77Add1B)).toFinset⊆s2Step77Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step77Add1Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step77Add1_checked : compileHmrHybridCinLog s2Step77Add1Arena 840 836 816 s2Step77Add1A s2Step77Add1B s2Step77Add1Work=some s2Step77Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step77Add1Arena s2Step77Add1During 840 836 816 s2Step77Add1A s2Step77Add1B s2Step77Add1Work
    (by decide +kernel) (by decide +kernel) s2Step77Add1_distinct
    (fun q hq => s2Step77Add1_owned (List.mem_toFinset.mpr hq)) s2Step77Add1_borrowed

private theorem s2Step77F4_apart : Disjoint (s2Step77Add0A++s2Step77Add0B).toFinset (s2Step77Add1A++s2Step77Add1B).toFinset := by
  have nd : ((s2Step77Add0A++s2Step77Add0B)++(s2Step77Add1A++s2Step77Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step77F4_carry : s2Step77F4FlagArena.checkBorrow 1 [816]=some s2Step77Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step77F4FlagArena,s2Step77HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step77F4FlagArena,s2Step77HeadFvAfter,s2Step77Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step77F4_distinct : (784::840::836::816::((s2Step77Add0A++s2Step77Add1A)++(s2Step77Add0B++s2Step77Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step77F4_flag : s2Step77HeadFvAfter.checkBorrow 1 [836]=some s2Step77F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step77HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step77F4_owned : (784::840::((s2Step77Add0A++s2Step77Add1A)++(s2Step77Add0B++s2Step77Add1B))).toFinset⊆s2Step77HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step77HeadFvAfter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step77F4_checked : compileHmrHybridF4Log s2Step77HeadFvAfter 784 840 s2Step77Add0A s2Step77Add0B s2Step77Add1A s2Step77Add1B [836] [816] s2Step77Add0Work s2Step77Add1Work=some s2Step77F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step77HeadFvAfter s2Step77F4FlagArena s2Step77Add0Arena s2Step77Add0During s2Step77Add1During 784 840
    s2Step77Add0A s2Step77Add0B s2Step77Add1A s2Step77Add1B [836] [816] s2Step77Add0Work s2Step77Add1Work
    (fun q hq => s2Step77F4_owned (List.mem_toFinset.mpr hq)) s2Step77F4_flag s2Step77F4_carry
    s2Step77F4_distinct s2Step77F4_apart s2Step77Add0_checked s2Step77Add1_checked

private theorem s2Step77Front_branch : s2Step77FrontSigmaArena.checkBorrow 1 [840]=some s2Step77HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step77FrontSigmaArena,s2Step77EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step77FrontSigmaArena,s2Step77EntryGvAfter,s2Step77HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step77Front_entry : HmrFrontEntryValid s2Step77EntryFBefore s2Step77FrontBank 230 52 ⟨229,229,53,52⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step77FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step77EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step77EntryFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step77FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step77Front_sigma : s2Step77EntryGvAfter.checkBorrow 1 [784]=some s2Step77FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step77EntryGvAfter,arenaWires]
  · rfl

private def s2Step77HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<836) ∨ (837≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step77HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step77HeadFBefore : Arena := s2Step77HeadGAfter

private def s2Step77HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741],768⟩

private def s2Step77HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835],770⟩

private def s2Step77HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229],769⟩

private def s2Step77HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831],771⟩

private theorem s2Step77HeadBank_incomingDistinct : ([s2Step77HeadGRow,s2Step77HeadFRow,s2Step77HeadGvRow,s2Step77HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step77HeadF_Incoming : rowsOwned s2Step77HeadFBefore [s2Step77HeadFRow,s2Step77HeadGvRow,s2Step77HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step77HeadGRow,s2Step77HeadFRow,s2Step77HeadGvRow,s2Step77HeadFvRow] 1 s2Step77HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step77HeadFBefore (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step77HeadBank_outgoingOwned : rowsOwned s2Step77HeadFvAfter [s2Step77HeadGOut,s2Step77HeadFOut,s2Step77HeadGvOut,s2Step77HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step77HeadFvAfter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step77HeadF_Outgoing : rowsOwned s2Step77HeadFvAfter [s2Step77HeadFOut,s2Step77HeadGvOut,s2Step77HeadFvOut] :=
  hmrRows_owned_drop s2Step77HeadFvAfter [s2Step77HeadGOut,s2Step77HeadFOut,s2Step77HeadGvOut,s2Step77HeadFvOut] 1 s2Step77HeadBank_outgoingOwned

private theorem s2Step77HeadF_distinct : (s2Step77HeadFRow.sign::s2Step77HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step77HeadF_owned : (s2Step77HeadFRow.sign::s2Step77HeadFRow.payload).toFinset⊆s2Step77HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step77HeadFBefore (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step77HeadF_reserved : s2Step77HeadFBefore.reserve s2Step77HeadFFresh.toFinset=some s2Step77HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step77HeadFFresh,arenaWires]
  · norm_num [s2Step77HeadFBefore,s2Step77HeadGAfter,s2Step77HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step77HeadFAfter,s2Step77HeadFBefore,s2Step77HeadGAfter,s2Step77HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step77HeadF_checked : planRowResizeLog s2Step77HeadFBefore s2Step77HeadFRow 231 s2Step77HeadFFresh=
    some (s2Step77HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 844],768⟩,growRow 768 s2Step77HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step77HeadFBefore s2Step77HeadFAfter s2Step77HeadFRow 231 s2Step77HeadFFresh
    s2Step77HeadF_distinct s2Step77HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step77HeadF_reserved
  have rowEq : WindowRow.mk (s2Step77HeadFRow.payload++s2Step77HeadFFresh) s2Step77HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 844],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step77HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<827) ∨ (828≤q ∧ q<836) ∨ (837≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step77HeadFvBefore : Arena := s2Step77HeadGvAfter

private theorem s2Step77HeadFv_Incoming : rowsOwned s2Step77HeadFvBefore [s2Step77HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step77HeadGRow,s2Step77HeadFRow,s2Step77HeadGvRow,s2Step77HeadFvRow] 3 s2Step77HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step77HeadFvBefore (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<827) ∨ (828≤q ∧ q<836) ∨ (837≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step77HeadFv_Outgoing : rowsOwned s2Step77HeadFvAfter [s2Step77HeadFvOut] :=
  hmrRows_owned_drop s2Step77HeadFvAfter [s2Step77HeadGOut,s2Step77HeadFOut,s2Step77HeadGvOut,s2Step77HeadFvOut] 3 s2Step77HeadBank_outgoingOwned

private theorem s2Step77HeadFv_distinct : (s2Step77HeadFvRow.sign::s2Step77HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step77HeadFv_owned : (s2Step77HeadFvRow.sign::s2Step77HeadFvRow.payload).toFinset⊆s2Step77HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step77HeadFvBefore (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<827) ∨ (828≤q ∧ q<836) ∨ (837≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step77HeadFv_reserved : s2Step77HeadFvBefore.reserve s2Step77HeadFvFresh.toFinset=some s2Step77HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step77HeadFvFresh,arenaWires]
  · norm_num [s2Step77HeadFvBefore,s2Step77HeadGvAfter,s2Step77HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step77HeadFvAfter,s2Step77HeadFvBefore,s2Step77HeadGvAfter,s2Step77HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step77HeadFv_checked : planRowResizeLog s2Step77HeadFvBefore s2Step77HeadFvRow 53 s2Step77HeadFvFresh=
    some (s2Step77HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827],770⟩,growRow 770 s2Step77HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step77HeadFvBefore s2Step77HeadFvAfter s2Step77HeadFvRow 53 s2Step77HeadFvFresh
    s2Step77HeadFv_distinct s2Step77HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step77HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step77HeadFvRow.payload++s2Step77HeadFvFresh) s2Step77HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step77HeadG_Incoming : rowsOwned s2Step77HeadGBefore [s2Step77HeadGRow,s2Step77HeadFRow,s2Step77HeadGvRow,s2Step77HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step77HeadGRow,s2Step77HeadFRow,s2Step77HeadGvRow,s2Step77HeadFvRow] 0 s2Step77HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step77HeadGBefore (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step77HeadG_Outgoing : rowsOwned s2Step77HeadFvAfter [s2Step77HeadGOut,s2Step77HeadFOut,s2Step77HeadGvOut,s2Step77HeadFvOut] :=
  hmrRows_owned_drop s2Step77HeadFvAfter [s2Step77HeadGOut,s2Step77HeadFOut,s2Step77HeadGvOut,s2Step77HeadFvOut] 0 s2Step77HeadBank_outgoingOwned

private theorem s2Step77HeadG_distinct : (s2Step77HeadGRow.sign::s2Step77HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step77HeadG_owned : (s2Step77HeadGRow.sign::s2Step77HeadGRow.payload).toFinset⊆s2Step77HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step77HeadGBefore (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step77HeadG_reserved : s2Step77HeadGBefore.reserve s2Step77HeadGFresh.toFinset=some s2Step77HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step77HeadGFresh,arenaWires]
  · norm_num [s2Step77HeadGBefore,s2Step77HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step77HeadGAfter,s2Step77HeadGBefore,s2Step77HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step77HeadG_checked : planRowResizeLog s2Step77HeadGBefore s2Step77HeadGRow 231 s2Step77HeadGFresh=
    some (s2Step77HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 845],769⟩,growRow 769 s2Step77HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step77HeadGBefore s2Step77HeadGAfter s2Step77HeadGRow 231 s2Step77HeadGFresh
    s2Step77HeadG_distinct s2Step77HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step77HeadG_reserved
  have rowEq : WindowRow.mk (s2Step77HeadGRow.payload++s2Step77HeadGFresh) s2Step77HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 845],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step77HeadGvBefore : Arena := s2Step77HeadFAfter

private theorem s2Step77HeadGv_Incoming : rowsOwned s2Step77HeadGvBefore [s2Step77HeadGvRow,s2Step77HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step77HeadGRow,s2Step77HeadFRow,s2Step77HeadGvRow,s2Step77HeadFvRow] 2 s2Step77HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step77HeadGvBefore (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<836) ∨ (837≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step77HeadGv_Outgoing : rowsOwned s2Step77HeadFvAfter [s2Step77HeadGvOut,s2Step77HeadFvOut] :=
  hmrRows_owned_drop s2Step77HeadFvAfter [s2Step77HeadGOut,s2Step77HeadFOut,s2Step77HeadGvOut,s2Step77HeadFvOut] 2 s2Step77HeadBank_outgoingOwned

private theorem s2Step77HeadGv_distinct : (s2Step77HeadGvRow.sign::s2Step77HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step77HeadGv_owned : (s2Step77HeadGvRow.sign::s2Step77HeadGvRow.payload).toFinset⊆s2Step77HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step77HeadGvBefore (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<836) ∨ (837≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step77HeadGv_reserved : s2Step77HeadGvBefore.reserve s2Step77HeadGvFresh.toFinset=some s2Step77HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step77HeadGvFresh,arenaWires]
  · norm_num [s2Step77HeadGvBefore,s2Step77HeadFAfter,s2Step77HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step77HeadGvAfter,s2Step77HeadGvBefore,s2Step77HeadFAfter,s2Step77HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step77HeadGv_checked : planRowResizeLog s2Step77HeadGvBefore s2Step77HeadGvRow 53 s2Step77HeadGvFresh=
    some (s2Step77HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 826],771⟩,growRow 771 s2Step77HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step77HeadGvBefore s2Step77HeadGvAfter s2Step77HeadGvRow 53 s2Step77HeadGvFresh
    s2Step77HeadGv_distinct s2Step77HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step77HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step77HeadGvRow.payload++s2Step77HeadGvFresh) s2Step77HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 826],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step77HeadBank_rows : planWindowRowsLog s2Step77HeadGBefore [(s2Step77HeadGRow,231),(s2Step77HeadFRow,231),(s2Step77HeadGvRow,53),(s2Step77HeadFvRow,53)] [s2Step77HeadGFresh,s2Step77HeadFFresh,s2Step77HeadGvFresh,s2Step77HeadFvFresh]=
    some (s2Step77HeadFvAfter,[s2Step77HeadGOut,s2Step77HeadFOut,s2Step77HeadGvOut,s2Step77HeadFvOut],(growRow 769 s2Step77HeadGFresh ++ (growRow 768 s2Step77HeadFFresh ++ (growRow 771 s2Step77HeadGvFresh ++ (growRow 770 s2Step77HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step77HeadFvAfter [] []=some (s2Step77HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step77HeadFvBefore s2Step77HeadFvAfter s2Step77HeadFvAfter
    s2Step77HeadFvRow s2Step77HeadFvOut 53 s2Step77HeadFvFresh [] [] []
    (growRow 770 s2Step77HeadFvFresh) ([]) s2Step77HeadFv_Incoming s2Step77HeadFv_checked h4 s2Step77HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step77HeadGvBefore s2Step77HeadGvAfter s2Step77HeadFvAfter
    s2Step77HeadGvRow s2Step77HeadGvOut 53 s2Step77HeadGvFresh [(s2Step77HeadFvRow,53)] [s2Step77HeadFvFresh] [s2Step77HeadFvOut]
    (growRow 771 s2Step77HeadGvFresh) ((growRow 770 s2Step77HeadFvFresh ++ [])) s2Step77HeadGv_Incoming s2Step77HeadGv_checked h3 s2Step77HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step77HeadFBefore s2Step77HeadFAfter s2Step77HeadFvAfter
    s2Step77HeadFRow s2Step77HeadFOut 231 s2Step77HeadFFresh [(s2Step77HeadGvRow,53),(s2Step77HeadFvRow,53)] [s2Step77HeadGvFresh,s2Step77HeadFvFresh] [s2Step77HeadGvOut,s2Step77HeadFvOut]
    (growRow 768 s2Step77HeadFFresh) ((growRow 771 s2Step77HeadGvFresh ++ (growRow 770 s2Step77HeadFvFresh ++ []))) s2Step77HeadF_Incoming s2Step77HeadF_checked h2 s2Step77HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step77HeadGBefore s2Step77HeadGAfter s2Step77HeadFvAfter
    s2Step77HeadGRow s2Step77HeadGOut 231 s2Step77HeadGFresh [(s2Step77HeadFRow,231),(s2Step77HeadGvRow,53),(s2Step77HeadFvRow,53)] [s2Step77HeadFFresh,s2Step77HeadGvFresh,s2Step77HeadFvFresh] [s2Step77HeadFOut,s2Step77HeadGvOut,s2Step77HeadFvOut]
    (growRow 769 s2Step77HeadGFresh) ((growRow 768 s2Step77HeadFFresh ++ (growRow 771 s2Step77HeadGvFresh ++ (growRow 770 s2Step77HeadFvFresh ++ [])))) s2Step77HeadG_Incoming s2Step77HeadG_checked h1 s2Step77HeadG_Outgoing
  exact h0

private theorem s2Step77HeadBank_checked : compileHmrBankResizeLog .headroom s2Step77HeadGBefore ⟨s2Step77HeadFRow,s2Step77HeadGRow,s2Step77HeadFvRow,s2Step77HeadGvRow⟩ ⟨231,231,53,53⟩ [s2Step77HeadGFresh,s2Step77HeadFFresh,s2Step77HeadGvFresh,s2Step77HeadFvFresh]=
    some (s2Step77HeadFvAfter,⟨s2Step77HeadFOut,s2Step77HeadGOut,s2Step77HeadFvOut,s2Step77HeadGvOut⟩,(growRow 769 s2Step77HeadGFresh ++ (growRow 768 s2Step77HeadFFresh ++ (growRow 771 s2Step77HeadGvFresh ++ (growRow 770 s2Step77HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step77HeadBank_rows]
  rfl

private theorem s2Step77Front_checked : compileHmrSourceFrontLog s2Step77EntryFBefore s2Step77FrontBank 230 52 ⟨229,229,53,52⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step77FrontLog=some s2Step77FrontPlan := by
  have pairEq : s2Step77FrontPair=⟨s2Step77HeadFRow,s2Step77HeadGRow,s2Step77HeadFvRow,s2Step77HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step77FrontHead=⟨s2Step77ExitFRow,s2Step77ExitGRow,s2Step77ExitFvRow,s2Step77ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step77Add0A=s2Step77FrontHead.f.wires := by decide +kernel
  have gEq : s2Step77Add0B=s2Step77FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step77Add1A=s2Step77FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step77Add1B=s2Step77FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step77EntryFBefore s2Step77FrontBank 230 52 ⟨229,229,53,52⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step77FrontLog s2Step77FrontPlan
  · exact s2Step77Front_entry
  · exact s2Step77EntryBank_checked
  · exact s2Step77Front_sigma
  · rfl
  · exact s2Step77Front_branch
  · rfl
  · simpa only [s2Step77FrontPlan,pairEq] using s2Step77HeadBank_checked
  · simpa only [s2Step77FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step77F4_checked
  · exact s2Step77Counter_checked
  · rfl
  · simpa only [s2Step77FrontPlan,headEq] using s2Step77ExitBank_checked

private theorem s2Step77Complete_explicit_checked : compileHmrEarlyStepLog s2Step77EntryFBefore s2Step77FrontBank 230 52 ⟨229,229,53,52⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 30 s2Step77CompleteLog=some s2Step77CompletePlan := by
  let Q := s2Step77EarlyControlPlan
  have hq := s2Step77EarlyControl_plan_checked
  have fv1 : s2Step77CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step77CompleteOut.fv.payload[2]?.getD s2Step77CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step77CompleteOut.fv.payload[3]?.getD s2Step77CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step77CompleteOut.fv.payload[4]?.getD s2Step77CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step77EntryFBefore s2Step77EarlyControlArena s2Step77FrontBank 230 52 ⟨229,229,53,52⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 30 s2Step77CompleteLog s2Step77FrontPlan Q
    s2Step77Front_checked s2Step77Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step77Complete_owned s2Step77Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step77EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 777 784 s2Step77CompleteOut.fv.second (s2Step77CompleteOut.fv.payload[2]?.getD s2Step77CompleteOut.fv.sign) (s2Step77CompleteOut.fv.payload[3]?.getD s2Step77CompleteOut.fv.sign) (s2Step77CompleteOut.fv.payload[4]?.getD s2Step77CompleteOut.fv.sign) 840 30 s2Step77EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep77Arena : Arena := s2Step77EntryFBefore
def s2PrivateStep77Bank : WindowBank := s2Step77FrontBank
def s2PrivateStep77Spec : HmrSourceWalkStepLog := ⟨230,52,⟨229,229,53,52⟩,30,.early s2Step77CompleteLog⟩
def s2PrivateStep77Plan : HmrSourceStepPlan := .early s2Step77CompletePlan
theorem s2PrivateStep77_source : s2PrivateStep77Spec=s2ObservedLogs64[13] := rfl
theorem s2PrivateStep77_checked : compileHmrSourceStepLog s2PrivateStep77Arena s2PrivateStep77Bank
    s2PrivateStep77Spec.fgWidth s2PrivateStep77Spec.vWidth s2PrivateStep77Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872]
    6 498 77 s2PrivateStep77Spec.need none s2PrivateStep77Spec.log=some s2PrivateStep77Plan := by
  change compileHmrSourceStepLog s2Step77EntryFBefore s2Step77FrontBank 230 52 ⟨229,229,53,52⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 6 498 77 30 none (.early s2Step77CompleteLog)=some (.early s2Step77CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 77<498)]
  rw [s2Step77Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
