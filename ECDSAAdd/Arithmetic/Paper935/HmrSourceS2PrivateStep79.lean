import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep77
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

private def s2Step79CompleteMoves : List (Wire × Wire) := [(842,228)]

private def s2Step79EarlyControlLog : HmrEarlyControlLog := ⟨[842, 782, 845, 844, 836],[816],[846],[847, 849, 851, 867, 873, 874],[]⟩

private def s2Step79FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[844], [845], [826], [782]],[[], [], [], []]⟩,[783],[784],[836],[816],[846, 847, 849, 851, 867, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[846, 847, 849, 851, 867, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921],[836, 816, 846, 847]⟩

private def s2Step79CompleteLog : HmrEarlyStepLog := ⟨s2Step79FrontLog,s2Step79CompleteMoves,s2Step79EarlyControlLog⟩

private def s2Step79ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740],768⟩

private def s2Step79ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827],770⟩

private def s2Step79ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227],769⟩

private def s2Step79ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826],771⟩

private def s2Step79FrontOut : WindowBank := ⟨s2Step79ExitFOut,s2Step79ExitGOut,s2Step79ExitFvOut,s2Step79ExitGvOut⟩

private def s2Step79CompleteOut : WindowBank := s2Step79FrontOut.repacked s2Step79CompleteMoves

private def s2Step79EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step79EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step79EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step79EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step79EarlyControlPositiveArena,[816],s2Step79EarlyControlEqualityArena,[846],⟨⟨783,false⟩,[⟨⟨816,false⟩,846⟩]⟩⟩

private def s2Step79EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<875)),Finset.filter_subset _ _⟩

private def s2Step79EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<875)),Finset.filter_subset _ _⟩

private def s2Step79EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step79EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step79EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step79EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step79EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,842⟩,⟨⟨774,false⟩,782⟩,⟨⟨775,false⟩,845⟩,⟨⟨776,false⟩,844⟩,⟨⟨777,false⟩,836⟩]⟩

private def s2Step79EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step79EarlyControlZeroArena,s2Step79EarlyControlZeroPlan,s2Step79EarlyControlClassPlan,s2Step79EarlyControlFlagArena,s2Step79EarlyControlFittedArena,s2Step79EarlyControlHistoryArena,s2Step79EarlyControlSigmaArena,s2Step79EarlyControlOutputArena,s2Step79EarlyControlLog⟩

private def s2Step79CounterWork : List Wire := [836, 816, 846, 847]

private theorem s2Step79Counter_bounded : s2Step79CounterWork.toFinset⊆arenaWires := by norm_num [s2Step79CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step79HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step79CounterDuring : Arena := ⟨s2Step79HeadFvAfter.live∪s2Step79CounterWork.toFinset,Finset.union_subset s2Step79HeadFvAfter.bounded s2Step79Counter_bounded⟩

private def s2Step79EntryFFresh : List Wire := []

private def s2Step79EntryFvFresh : List Wire := []

private def s2Step79EntryGFresh : List Wire := []

private def s2Step79EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step79EntryGvAfter : Arena := s2Step79EntryFBefore

private def s2Step79EntryGvFresh : List Wire := []

private def s2Step79ExitFExtra : List Wire := [845]

private def s2Step79ExitFvExtra : List Wire := [782]

private def s2Step79ExitGExtra : List Wire := [228, 844]

private def s2Step79ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<228) ∨ (229≤q ∧ q<782) ∨ (783≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step79ExitGvAfter : Arena := s2Step79ExitFvAfter

private def s2Step79Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step79Add0Work : List Wire := [846, 847, 849, 851, 867, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step79Add0_bounded : s2Step79Add0Work.toFinset⊆arenaWires := by
  have h : s2Step79Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step79Add0During : Arena := ⟨s2Step79Add0Arena.live∪s2Step79Add0Work.toFinset,Finset.union_subset s2Step79Add0Arena.bounded s2Step79Add0_bounded⟩

private def s2Step79Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step79Add1Work : List Wire := [846, 847, 849, 851, 867, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921]

private theorem s2Step79Add1_bounded : s2Step79Add1Work.toFinset⊆arenaWires := by
  have h : s2Step79Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step79Add1During : Arena := ⟨s2Step79Add1Arena.live∪s2Step79Add1Work.toFinset,Finset.union_subset s2Step79Add1Arena.bounded s2Step79Add1_bounded⟩

private def s2Step79F4FlagArena : Arena := ⟨s2Step79HeadFvAfter.live∪{836},Finset.union_subset s2Step79HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step79F4Plan : HmrHybridF4Plan := ⟨s2Step79F4FlagArena,[836],s2Step79Add0Arena,[816],s2Step79Add0During,s2Step79Add0Work,s2Step79Add1During,s2Step79Add1Work⟩

private def s2Step79HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 845],768⟩

private def s2Step79HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 782],770⟩

private def s2Step79HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 844],769⟩

private def s2Step79HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826],771⟩

private def s2Step79FrontHead : WindowBank := ⟨s2Step79HeadFOut,s2Step79HeadGOut,s2Step79HeadFvOut,s2Step79HeadGvOut⟩

private def s2Step79EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740],768⟩

private def s2Step79EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827],770⟩

private def s2Step79EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228],769⟩

private def s2Step79EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840],771⟩

private def s2Step79FrontPair : WindowBank := ⟨s2Step79EntryFOut,s2Step79EntryGOut,s2Step79EntryFvOut,s2Step79EntryGvOut⟩

private def s2Step79FrontSigmaArena : Arena := ⟨s2Step79EntryGvAfter.live∪{783},Finset.union_subset s2Step79EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step79HeadFFresh : List Wire := [845]

private def s2Step79HeadFvFresh : List Wire := [782]

private def s2Step79HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step79HeadGFresh : List Wire := [844]

private def s2Step79HeadGvFresh : List Wire := [826]

private def s2Step79FrontPlan : HmrSourceFront := ⟨s2Step79EntryGvAfter,s2Step79FrontPair,(growRow 768 s2Step79EntryFFresh ++ (growRow 769 s2Step79EntryGFresh ++ (growRow 770 s2Step79EntryFvFresh ++ (growRow 771 s2Step79EntryGvFresh ++ [])))),s2Step79FrontSigmaArena,[783],s2Step79HeadGBefore,[784],
  s2Step79HeadFvAfter,s2Step79FrontHead,(growRow 769 s2Step79HeadGFresh ++ (growRow 768 s2Step79HeadFFresh ++ (growRow 771 s2Step79HeadGvFresh ++ (growRow 770 s2Step79HeadFvFresh ++ [])))),s2Step79F4Plan,s2Step79CounterDuring,s2Step79CounterWork,s2Step79ExitGvAfter,s2Step79FrontOut,(shrinkRow 769 s2Step79ExitGExtra ++ (shrinkRow 768 s2Step79ExitFExtra ++ (shrinkRow 770 s2Step79ExitFvExtra ++ (growRow 771 [] ++ []))))⟩

private def s2Step79CompletePlan : HmrEarlyStepPlan := ⟨s2Step79FrontPlan,s2Step79EarlyControlArena,s2Step79EarlyControlPlan,s2Step79CompleteMoves⟩

private theorem s2Step79Complete_apart : List.Disjoint (s2Step79CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [783, 784, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] := by
  have nd : ((s2Step79CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[783, 784, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step79Complete_owned : (s2Step79CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step79EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step79EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private def s2Step79CompleteMoveArena : Arena := ⟨s2Step79ExitGvAfter.live∪{228},Finset.union_subset s2Step79ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step79Complete_repack : s2Step79ExitGvAfter.checkRepack s2Step79CompleteMoves=some s2Step79EarlyControlArena := by
  have owned : 842∈s2Step79ExitGvAfter.live := by norm_num [s2Step79ExitGvAfter,s2Step79ExitFvAfter,arenaWires]
  have reserve : s2Step79ExitGvAfter.reserve {228}=some s2Step79CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step79ExitGvAfter,s2Step79ExitFvAfter,arenaWires]
    · rfl
  have retired : s2Step79CompleteMoveArena.retireSet {842}=s2Step79EarlyControlArena := by
    unfold Arena.retireSet s2Step79EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step79CompleteMoveArena,s2Step79ExitGvAfter,s2Step79ExitFvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step79CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step79CompleteMoveArena.retireSet {842}).checkRepack []=some s2Step79EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step79EarlyControl_branchOwned : ([784] : List Wire).toFinset⊆s2Step79EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step79EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step79EarlyControl_branch : compileHmrBranchRetirement s2Step79EarlyControlSigmaArena 784=some s2Step79EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step79EarlyControl_branchOwned
  · ext q
    simp [s2Step79EarlyControlOutputArena,s2Step79EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step79EarlyControl_classEqualityBorrow : s2Step79EarlyControlPositiveArena.checkBorrow (([783, 816] : List Wire).length-1) s2Step79EarlyControlLog.classWork=some s2Step79EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step79EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step79EarlyControlPositiveArena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
      decide +kernel
    · ext q
      simp [s2Step79EarlyControlEqualityArena,s2Step79EarlyControlPositiveArena,s2Step79EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step79EarlyControl_classEqualityOwned : ([783, 816] : List Wire).toFinset⊆s2Step79EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step79EarlyControlPositiveArena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step79EarlyControl_classEquality : compileHmrEqualityLog s2Step79EarlyControlPositiveArena [783, 816] 0 s2Step79EarlyControlLog.classWork=some (s2Step79EarlyControlEqualityArena,s2Step79EarlyControlLog.classWork,s2Step79EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step79EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step79EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step79EarlyControl_classOwned : ([777, 836, 783] : List Wire).toFinset⊆s2Step79EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step79EarlyControlZeroArena (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step79EarlyControl_positiveBorrow : s2Step79EarlyControlZeroArena.checkBorrow (1) s2Step79EarlyControlLog.positiveWork=some s2Step79EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step79EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step79EarlyControlZeroArena (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
      decide +kernel
    · ext q
      simp [s2Step79EarlyControlPositiveArena,s2Step79EarlyControlZeroArena,s2Step79EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step79EarlyControl_class : compileHmrSourceClassLog s2Step79EarlyControlZeroArena false 777 s2Step79EarlyControlZeroPlan.top 0 783 s2Step79EarlyControlLog.positiveWork s2Step79EarlyControlLog.classWork=some s2Step79EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step79EarlyControlClassPlan s2Step79EarlyControlZeroArena false 777 s2Step79EarlyControlZeroPlan.top 0 783
  constructor
  · decide +kernel
  · exact s2Step79EarlyControl_classOwned
  · exact s2Step79EarlyControl_positiveBorrow
  · exact s2Step79EarlyControl_classEquality

private theorem s2Step79EarlyControl_entryRecordOwned : ([784, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] : List Wire).toFinset⊆s2Step79EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step79EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step79EarlyControl_entrySigmaOwned : ([783, 254] : List Wire).toFinset⊆s2Step79EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step79EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step79EarlyControl_fitBorrow : s2Step79EarlyControlFlagArena.checkBorrow ((30-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] : List Wire).length)) s2Step79EarlyControlLog.recordFresh=some s2Step79EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step79EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step79EarlyControlFlagArena (fun q => (0≤q ∧ q<875)) rfl
      decide +kernel
    · ext q
      simp [s2Step79EarlyControlFittedArena,s2Step79EarlyControlFlagArena,s2Step79EarlyControlLog,arenaWires]

private theorem s2Step79EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] : List Wire).toFinset⊆s2Step79EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step79EarlyControlFlagArena (fun q => (0≤q ∧ q<875)) rfl
  decide +kernel

private theorem s2Step79EarlyControl_fit : compileHmrRecordGrowLog s2Step79EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 30 s2Step79EarlyControlLog.recordFresh=some s2Step79EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step79EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step79EarlyControl_fitBorrow

private theorem s2Step79EarlyControl_flagsBorrow : s2Step79EarlyControlEqualityArena.checkBorrow (6) s2Step79EarlyControlLog.flagWork=some s2Step79EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step79EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step79EarlyControlEqualityArena (fun q => (0≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
      decide +kernel
    · ext q
      simp [s2Step79EarlyControlFlagArena,s2Step79EarlyControlEqualityArena,s2Step79EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step79EarlyControl_flagsOwned : ([846, 253, 252, 251] : List Wire).toFinset⊆s2Step79EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step79EarlyControlEqualityArena (fun q => (0≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step79EarlyControl_flags : compileHmrFlagsLog s2Step79EarlyControlClassPlan.equalityArena s2Step79EarlyControlClassPlan.equality.top 253 252 251 s2Step79EarlyControlLog.flagWork=some s2Step79EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step79EarlyControl_flagsOwned⟩
  · exact s2Step79EarlyControl_flagsBorrow

private theorem s2Step79EarlyControl_historyBorrow : s2Step79EarlyControlArena.checkBorrow ((30-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] : List Wire).length)) s2Step79EarlyControlLog.recordFresh=some s2Step79EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step79EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step79EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
      decide +kernel
    · ext q
      simp [s2Step79EarlyControlHistoryArena,s2Step79EarlyControlArena,s2Step79EarlyControlLog,arenaWires]

private theorem s2Step79EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] : List Wire).toFinset⊆s2Step79EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step79EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step79EarlyControl_history : compileHmrRecordGrowLog s2Step79EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 30 s2Step79EarlyControlLog.recordFresh=some s2Step79EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step79EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step79EarlyControl_historyBorrow

private theorem s2Step79EarlyControl_sigmaOwned : ([254, 783] : List Wire).toFinset⊆s2Step79EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step79EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step79EarlyControl_sigmaReleaseOwned : ([783] : List Wire).toFinset⊆s2Step79EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step79EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step79EarlyControl_sigmaRelease : s2Step79EarlyControlHistoryArena.release {783} (fun _ => false)=some s2Step79EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step79EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step79EarlyControlSigmaArena,s2Step79EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step79EarlyControl_sigma : compileHmrSigmaDropLog s2Step79EarlyControlHistoryArena false 0 0 254 783 []=some s2Step79EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step79EarlyControl_sigmaOwned⟩
  · exact s2Step79EarlyControl_sigmaRelease

private theorem s2Step79EarlyControl_zeroBorrow : s2Step79EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step79EarlyControlLog.zeroWork=some s2Step79EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step79EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step79EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
      decide +kernel
    · ext q
      simp [s2Step79EarlyControlZeroArena,s2Step79EarlyControlArena,s2Step79EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step79EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step79EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step79EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step79EarlyControl_zero : compileHmrEqualityLog s2Step79EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step79EarlyControlLog.zeroWork=some (s2Step79EarlyControlZeroArena,s2Step79EarlyControlLog.zeroWork,s2Step79EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step79EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step79EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step79EarlyControl_logged : s2Step79EarlyControlPlan.Logged s2Step79EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 777 783 254 253 252 251 784 30 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step79EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step79EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step79EarlyControl_zero
  · exact s2Step79EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step79EarlyControl_flags
  · exact s2Step79EarlyControl_fit
  · exact s2Step79EarlyControl_history
  · exact s2Step79EarlyControl_sigma
  · exact s2Step79EarlyControl_branch

private theorem s2Step79EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step79EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 777 783 254 253 252 251 784 30 s2Step79EarlyControlLog=some s2Step79EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step79EarlyControlPlan s2Step79EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 777 783 254 253 252 251 784 30 s2Step79EarlyControl_logged

private def s2Step79EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740],768⟩

private def s2Step79EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827],770⟩

private def s2Step79EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228],769⟩

private def s2Step79EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840],771⟩

private def s2Step79FrontBank : WindowBank := ⟨s2Step79EntryFRow,s2Step79EntryGRow,s2Step79EntryFvRow,s2Step79EntryGvRow⟩

private def s2Step79Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 845, 768]

private def s2Step79Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 844, 769]

private def s2Step79Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 782, 770]

private def s2Step79Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 771]

private theorem s2Step79Counter_apart : Disjoint s2Step79HeadFvAfter.live s2Step79CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step79HeadFvAfter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step79Counter_borrowed : s2Step79HeadFvAfter.checkBorrow 4 s2Step79CounterWork=some s2Step79CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step79HeadFvAfter s2Step79CounterDuring s2Step79CounterWork.toFinset s2Step79Counter_bounded s2Step79Counter_apart rfl

private theorem s2Step79Counter_owned : (783::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step79HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step79HeadFvAfter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step79Counter_checked : compileHmrCounterStepLog s2Step79HeadFvAfter true 783 [772, 773, 774, 775, 776, 777] s2Step79CounterWork=some s2Step79CounterDuring := by
  have owned : ∀q∈783::[772, 773, 774, 775, 776, 777],q∈s2Step79HeadFvAfter.live := fun q hq => s2Step79Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step79Counter_borrowed

private def s2Step79EntryFAfter : Arena := s2Step79EntryFBefore

private theorem s2Step79EntryBank_incomingDistinct : ([s2Step79EntryFRow,s2Step79EntryGRow,s2Step79EntryFvRow,s2Step79EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step79EntryF_Incoming : rowsOwned s2Step79EntryFBefore [s2Step79EntryFRow,s2Step79EntryGRow,s2Step79EntryFvRow,s2Step79EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step79EntryFRow,s2Step79EntryGRow,s2Step79EntryFvRow,s2Step79EntryGvRow] 0 s2Step79EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step79EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step79EntryBank_outgoingOwned : rowsOwned s2Step79EntryGvAfter [s2Step79EntryFOut,s2Step79EntryGOut,s2Step79EntryFvOut,s2Step79EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step79EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step79EntryF_Outgoing : rowsOwned s2Step79EntryGvAfter [s2Step79EntryFOut,s2Step79EntryGOut,s2Step79EntryFvOut,s2Step79EntryGvOut] :=
  hmrRows_owned_drop s2Step79EntryGvAfter [s2Step79EntryFOut,s2Step79EntryGOut,s2Step79EntryFvOut,s2Step79EntryGvOut] 0 s2Step79EntryBank_outgoingOwned

private theorem s2Step79EntryF_distinct : (s2Step79EntryFRow.sign::s2Step79EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step79EntryF_owned : (s2Step79EntryFRow.sign::s2Step79EntryFRow.payload).toFinset⊆s2Step79EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step79EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step79EntryF_reserved : s2Step79EntryFBefore.reserve s2Step79EntryFFresh.toFinset=some s2Step79EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step79EntryFFresh,arenaWires]
  · norm_num [s2Step79EntryFBefore,s2Step79EntryFFresh,arenaWires]
  · simp only [s2Step79EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step79EntryF_checked : planRowResizeLog s2Step79EntryFBefore s2Step79EntryFRow 229 s2Step79EntryFFresh=
    some (s2Step79EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740],768⟩,growRow 768 s2Step79EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step79EntryFBefore s2Step79EntryFAfter s2Step79EntryFRow 229 s2Step79EntryFFresh
    s2Step79EntryF_distinct s2Step79EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step79EntryF_reserved
  have rowEq : WindowRow.mk (s2Step79EntryFRow.payload++s2Step79EntryFFresh) s2Step79EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step79EntryFvAfter : Arena := s2Step79EntryFBefore

private def s2Step79EntryFvBefore : Arena := s2Step79EntryFBefore

private theorem s2Step79EntryFv_Incoming : rowsOwned s2Step79EntryFvBefore [s2Step79EntryFvRow,s2Step79EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step79EntryFRow,s2Step79EntryGRow,s2Step79EntryFvRow,s2Step79EntryGvRow] 2 s2Step79EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step79EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step79EntryFv_Outgoing : rowsOwned s2Step79EntryGvAfter [s2Step79EntryFvOut,s2Step79EntryGvOut] :=
  hmrRows_owned_drop s2Step79EntryGvAfter [s2Step79EntryFOut,s2Step79EntryGOut,s2Step79EntryFvOut,s2Step79EntryGvOut] 2 s2Step79EntryBank_outgoingOwned

private theorem s2Step79EntryFv_distinct : (s2Step79EntryFvRow.sign::s2Step79EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step79EntryFv_owned : (s2Step79EntryFvRow.sign::s2Step79EntryFvRow.payload).toFinset⊆s2Step79EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step79EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step79EntryFv_reserved : s2Step79EntryFvBefore.reserve s2Step79EntryFvFresh.toFinset=some s2Step79EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step79EntryFvFresh,arenaWires]
  · norm_num [s2Step79EntryFvBefore,s2Step79EntryFBefore,s2Step79EntryFvFresh,arenaWires]
  · simp only [s2Step79EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step79EntryFv_checked : planRowResizeLog s2Step79EntryFvBefore s2Step79EntryFvRow 53 s2Step79EntryFvFresh=
    some (s2Step79EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827],770⟩,growRow 770 s2Step79EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step79EntryFvBefore s2Step79EntryFvAfter s2Step79EntryFvRow 53 s2Step79EntryFvFresh
    s2Step79EntryFv_distinct s2Step79EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step79EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step79EntryFvRow.payload++s2Step79EntryFvFresh) s2Step79EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step79EntryGAfter : Arena := s2Step79EntryFBefore

private def s2Step79EntryGBefore : Arena := s2Step79EntryFBefore

private theorem s2Step79EntryG_Incoming : rowsOwned s2Step79EntryGBefore [s2Step79EntryGRow,s2Step79EntryFvRow,s2Step79EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step79EntryFRow,s2Step79EntryGRow,s2Step79EntryFvRow,s2Step79EntryGvRow] 1 s2Step79EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step79EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step79EntryG_Outgoing : rowsOwned s2Step79EntryGvAfter [s2Step79EntryGOut,s2Step79EntryFvOut,s2Step79EntryGvOut] :=
  hmrRows_owned_drop s2Step79EntryGvAfter [s2Step79EntryFOut,s2Step79EntryGOut,s2Step79EntryFvOut,s2Step79EntryGvOut] 1 s2Step79EntryBank_outgoingOwned

private theorem s2Step79EntryG_distinct : (s2Step79EntryGRow.sign::s2Step79EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step79EntryG_owned : (s2Step79EntryGRow.sign::s2Step79EntryGRow.payload).toFinset⊆s2Step79EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step79EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step79EntryG_reserved : s2Step79EntryGBefore.reserve s2Step79EntryGFresh.toFinset=some s2Step79EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step79EntryGFresh,arenaWires]
  · norm_num [s2Step79EntryGBefore,s2Step79EntryFBefore,s2Step79EntryGFresh,arenaWires]
  · simp only [s2Step79EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step79EntryG_checked : planRowResizeLog s2Step79EntryGBefore s2Step79EntryGRow 229 s2Step79EntryGFresh=
    some (s2Step79EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228],769⟩,growRow 769 s2Step79EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step79EntryGBefore s2Step79EntryGAfter s2Step79EntryGRow 229 s2Step79EntryGFresh
    s2Step79EntryG_distinct s2Step79EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step79EntryG_reserved
  have rowEq : WindowRow.mk (s2Step79EntryGRow.payload++s2Step79EntryGFresh) s2Step79EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step79EntryGvBefore : Arena := s2Step79EntryFBefore

private theorem s2Step79EntryGv_Incoming : rowsOwned s2Step79EntryGvBefore [s2Step79EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step79EntryFRow,s2Step79EntryGRow,s2Step79EntryFvRow,s2Step79EntryGvRow] 3 s2Step79EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step79EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step79EntryGv_Outgoing : rowsOwned s2Step79EntryGvAfter [s2Step79EntryGvOut] :=
  hmrRows_owned_drop s2Step79EntryGvAfter [s2Step79EntryFOut,s2Step79EntryGOut,s2Step79EntryFvOut,s2Step79EntryGvOut] 3 s2Step79EntryBank_outgoingOwned

private theorem s2Step79EntryGv_distinct : (s2Step79EntryGvRow.sign::s2Step79EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step79EntryGv_owned : (s2Step79EntryGvRow.sign::s2Step79EntryGvRow.payload).toFinset⊆s2Step79EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step79EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step79EntryGv_reserved : s2Step79EntryGvBefore.reserve s2Step79EntryGvFresh.toFinset=some s2Step79EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step79EntryGvFresh,arenaWires]
  · norm_num [s2Step79EntryGvBefore,s2Step79EntryFBefore,s2Step79EntryGvFresh,arenaWires]
  · simp only [s2Step79EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step79EntryGv_checked : planRowResizeLog s2Step79EntryGvBefore s2Step79EntryGvRow 53 s2Step79EntryGvFresh=
    some (s2Step79EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840],771⟩,growRow 771 s2Step79EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step79EntryGvBefore s2Step79EntryGvAfter s2Step79EntryGvRow 53 s2Step79EntryGvFresh
    s2Step79EntryGv_distinct s2Step79EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step79EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step79EntryGvRow.payload++s2Step79EntryGvFresh) s2Step79EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step79EntryBank_rows : planWindowRowsLog s2Step79EntryFBefore [(s2Step79EntryFRow,229),(s2Step79EntryGRow,229),(s2Step79EntryFvRow,53),(s2Step79EntryGvRow,53)] [s2Step79EntryFFresh,s2Step79EntryGFresh,s2Step79EntryFvFresh,s2Step79EntryGvFresh]=
    some (s2Step79EntryGvAfter,[s2Step79EntryFOut,s2Step79EntryGOut,s2Step79EntryFvOut,s2Step79EntryGvOut],(growRow 768 s2Step79EntryFFresh ++ (growRow 769 s2Step79EntryGFresh ++ (growRow 770 s2Step79EntryFvFresh ++ (growRow 771 s2Step79EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step79EntryGvAfter [] []=some (s2Step79EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step79EntryGvBefore s2Step79EntryGvAfter s2Step79EntryGvAfter
    s2Step79EntryGvRow s2Step79EntryGvOut 53 s2Step79EntryGvFresh [] [] []
    (growRow 771 s2Step79EntryGvFresh) ([]) s2Step79EntryGv_Incoming s2Step79EntryGv_checked h4 s2Step79EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step79EntryFvBefore s2Step79EntryFvAfter s2Step79EntryGvAfter
    s2Step79EntryFvRow s2Step79EntryFvOut 53 s2Step79EntryFvFresh [(s2Step79EntryGvRow,53)] [s2Step79EntryGvFresh] [s2Step79EntryGvOut]
    (growRow 770 s2Step79EntryFvFresh) ((growRow 771 s2Step79EntryGvFresh ++ [])) s2Step79EntryFv_Incoming s2Step79EntryFv_checked h3 s2Step79EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step79EntryGBefore s2Step79EntryGAfter s2Step79EntryGvAfter
    s2Step79EntryGRow s2Step79EntryGOut 229 s2Step79EntryGFresh [(s2Step79EntryFvRow,53),(s2Step79EntryGvRow,53)] [s2Step79EntryFvFresh,s2Step79EntryGvFresh] [s2Step79EntryFvOut,s2Step79EntryGvOut]
    (growRow 769 s2Step79EntryGFresh) ((growRow 770 s2Step79EntryFvFresh ++ (growRow 771 s2Step79EntryGvFresh ++ []))) s2Step79EntryG_Incoming s2Step79EntryG_checked h2 s2Step79EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step79EntryFBefore s2Step79EntryFAfter s2Step79EntryGvAfter
    s2Step79EntryFRow s2Step79EntryFOut 229 s2Step79EntryFFresh [(s2Step79EntryGRow,229),(s2Step79EntryFvRow,53),(s2Step79EntryGvRow,53)] [s2Step79EntryGFresh,s2Step79EntryFvFresh,s2Step79EntryGvFresh] [s2Step79EntryGOut,s2Step79EntryFvOut,s2Step79EntryGvOut]
    (growRow 768 s2Step79EntryFFresh) ((growRow 769 s2Step79EntryGFresh ++ (growRow 770 s2Step79EntryFvFresh ++ (growRow 771 s2Step79EntryGvFresh ++ [])))) s2Step79EntryF_Incoming s2Step79EntryF_checked h1 s2Step79EntryF_Outgoing
  exact h0

private theorem s2Step79EntryBank_checked : compileHmrBankResizeLog .entry s2Step79EntryFBefore ⟨s2Step79EntryFRow,s2Step79EntryGRow,s2Step79EntryFvRow,s2Step79EntryGvRow⟩ ⟨229,229,53,53⟩ [s2Step79EntryFFresh,s2Step79EntryGFresh,s2Step79EntryFvFresh,s2Step79EntryGvFresh]=
    some (s2Step79EntryGvAfter,⟨s2Step79EntryFOut,s2Step79EntryGOut,s2Step79EntryFvOut,s2Step79EntryGvOut⟩,(growRow 768 s2Step79EntryFFresh ++ (growRow 769 s2Step79EntryGFresh ++ (growRow 770 s2Step79EntryFvFresh ++ (growRow 771 s2Step79EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step79EntryBank_rows]
  rfl

private def s2Step79ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<228) ∨ (229≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step79ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<228) ∨ (229≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step79ExitFBefore : Arena := s2Step79ExitGAfter

private def s2Step79ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 845],768⟩

private def s2Step79ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 782],770⟩

private def s2Step79ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 844],769⟩

private def s2Step79ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826],771⟩

private theorem s2Step79ExitBank_incomingDistinct : ([s2Step79ExitGRow,s2Step79ExitFRow,s2Step79ExitFvRow,s2Step79ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step79ExitF_Incoming : rowsOwned s2Step79ExitFBefore [s2Step79ExitFRow,s2Step79ExitFvRow,s2Step79ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step79ExitGRow,s2Step79ExitFRow,s2Step79ExitFvRow,s2Step79ExitGvRow] 1 s2Step79ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step79ExitFBefore (fun q => (0≤q ∧ q<228) ∨ (229≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step79ExitBank_outgoingOwned : rowsOwned s2Step79ExitGvAfter [s2Step79ExitGOut,s2Step79ExitFOut,s2Step79ExitFvOut,s2Step79ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step79ExitGvAfter (fun q => (0≤q ∧ q<228) ∨ (229≤q ∧ q<782) ∨ (783≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step79ExitF_Outgoing : rowsOwned s2Step79ExitGvAfter [s2Step79ExitFOut,s2Step79ExitFvOut,s2Step79ExitGvOut] :=
  hmrRows_owned_drop s2Step79ExitGvAfter [s2Step79ExitGOut,s2Step79ExitFOut,s2Step79ExitFvOut,s2Step79ExitGvOut] 1 s2Step79ExitBank_outgoingOwned

private theorem s2Step79ExitF_distinct : (s2Step79ExitFRow.sign::s2Step79ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step79ExitF_owned : (s2Step79ExitFRow.sign::s2Step79ExitFRow.payload).toFinset⊆s2Step79ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step79ExitFBefore (fun q => (0≤q ∧ q<228) ∨ (229≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step79ExitF_retired : s2Step79ExitFBefore.retireSet s2Step79ExitFExtra.toFinset=s2Step79ExitFAfter := by
  unfold Arena.retireSet s2Step79ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step79ExitFBefore,s2Step79ExitGAfter,s2Step79ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step79ExitF_checked : planRowResizeLog s2Step79ExitFBefore s2Step79ExitFRow 229 []=
    some (s2Step79ExitFAfter,s2Step79ExitFOut,shrinkRow 768 s2Step79ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step79ExitFBefore s2Step79ExitFRow 229 s2Step79ExitF_distinct s2Step79ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step79ExitFRow.payload.take 229) s2Step79ExitFRow.sign=s2Step79ExitFOut := by decide +kernel
  have hi : s2Step79ExitFRow.payload.drop 229=s2Step79ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step79ExitF_retired] at result
  exact result

private def s2Step79ExitFvBefore : Arena := s2Step79ExitFAfter

private theorem s2Step79ExitFv_Incoming : rowsOwned s2Step79ExitFvBefore [s2Step79ExitFvRow,s2Step79ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step79ExitGRow,s2Step79ExitFRow,s2Step79ExitFvRow,s2Step79ExitGvRow] 2 s2Step79ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step79ExitFvBefore (fun q => (0≤q ∧ q<228) ∨ (229≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step79ExitFv_Outgoing : rowsOwned s2Step79ExitGvAfter [s2Step79ExitFvOut,s2Step79ExitGvOut] :=
  hmrRows_owned_drop s2Step79ExitGvAfter [s2Step79ExitGOut,s2Step79ExitFOut,s2Step79ExitFvOut,s2Step79ExitGvOut] 2 s2Step79ExitBank_outgoingOwned

private theorem s2Step79ExitFv_distinct : (s2Step79ExitFvRow.sign::s2Step79ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step79ExitFv_owned : (s2Step79ExitFvRow.sign::s2Step79ExitFvRow.payload).toFinset⊆s2Step79ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step79ExitFvBefore (fun q => (0≤q ∧ q<228) ∨ (229≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step79ExitFv_retired : s2Step79ExitFvBefore.retireSet s2Step79ExitFvExtra.toFinset=s2Step79ExitFvAfter := by
  unfold Arena.retireSet s2Step79ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step79ExitFvBefore,s2Step79ExitFAfter,s2Step79ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step79ExitFv_checked : planRowResizeLog s2Step79ExitFvBefore s2Step79ExitFvRow 53 []=
    some (s2Step79ExitFvAfter,s2Step79ExitFvOut,shrinkRow 770 s2Step79ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step79ExitFvBefore s2Step79ExitFvRow 53 s2Step79ExitFv_distinct s2Step79ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step79ExitFvRow.payload.take 53) s2Step79ExitFvRow.sign=s2Step79ExitFvOut := by decide +kernel
  have hi : s2Step79ExitFvRow.payload.drop 53=s2Step79ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step79ExitFv_retired] at result
  exact result

private def s2Step79ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private theorem s2Step79ExitG_Incoming : rowsOwned s2Step79ExitGBefore [s2Step79ExitGRow,s2Step79ExitFRow,s2Step79ExitFvRow,s2Step79ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step79ExitGRow,s2Step79ExitFRow,s2Step79ExitFvRow,s2Step79ExitGvRow] 0 s2Step79ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step79ExitGBefore (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step79ExitG_Outgoing : rowsOwned s2Step79ExitGvAfter [s2Step79ExitGOut,s2Step79ExitFOut,s2Step79ExitFvOut,s2Step79ExitGvOut] :=
  hmrRows_owned_drop s2Step79ExitGvAfter [s2Step79ExitGOut,s2Step79ExitFOut,s2Step79ExitFvOut,s2Step79ExitGvOut] 0 s2Step79ExitBank_outgoingOwned

private theorem s2Step79ExitG_distinct : (s2Step79ExitGRow.sign::s2Step79ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step79ExitG_owned : (s2Step79ExitGRow.sign::s2Step79ExitGRow.payload).toFinset⊆s2Step79ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step79ExitGBefore (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step79ExitG_retired : s2Step79ExitGBefore.retireSet s2Step79ExitGExtra.toFinset=s2Step79ExitGAfter := by
  unfold Arena.retireSet s2Step79ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step79ExitGBefore,s2Step79ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step79ExitG_checked : planRowResizeLog s2Step79ExitGBefore s2Step79ExitGRow 228 []=
    some (s2Step79ExitGAfter,s2Step79ExitGOut,shrinkRow 769 s2Step79ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step79ExitGBefore s2Step79ExitGRow 228 s2Step79ExitG_distinct s2Step79ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step79ExitGRow.payload.take 228) s2Step79ExitGRow.sign=s2Step79ExitGOut := by decide +kernel
  have hi : s2Step79ExitGRow.payload.drop 228=s2Step79ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step79ExitG_retired] at result
  exact result

private def s2Step79ExitGvBefore : Arena := s2Step79ExitFvAfter

private theorem s2Step79ExitGv_Incoming : rowsOwned s2Step79ExitGvBefore [s2Step79ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step79ExitGRow,s2Step79ExitFRow,s2Step79ExitFvRow,s2Step79ExitGvRow] 3 s2Step79ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step79ExitGvBefore (fun q => (0≤q ∧ q<228) ∨ (229≤q ∧ q<782) ∨ (783≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step79ExitGv_Outgoing : rowsOwned s2Step79ExitGvAfter [s2Step79ExitGvOut] :=
  hmrRows_owned_drop s2Step79ExitGvAfter [s2Step79ExitGOut,s2Step79ExitFOut,s2Step79ExitFvOut,s2Step79ExitGvOut] 3 s2Step79ExitBank_outgoingOwned

private theorem s2Step79ExitGv_distinct : (s2Step79ExitGvRow.sign::s2Step79ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step79ExitGv_owned : (s2Step79ExitGvRow.sign::s2Step79ExitGvRow.payload).toFinset⊆s2Step79ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step79ExitGvBefore (fun q => (0≤q ∧ q<228) ∨ (229≤q ∧ q<782) ∨ (783≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step79ExitGv_reserved : s2Step79ExitGvBefore.reserve (∅ : Finset Wire)=some s2Step79ExitGvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step79ExitGv_checked : planRowResizeLog s2Step79ExitGvBefore s2Step79ExitGvRow 54 []=
    some (s2Step79ExitGvAfter,s2Step79ExitGvOut,growRow 771 []) := by
  have result := planRowResizeLog_of_growth s2Step79ExitGvBefore s2Step79ExitGvAfter s2Step79ExitGvRow 54 []
    s2Step79ExitGv_distinct s2Step79ExitGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step79ExitGv_reserved
  have rowEq : WindowRow.mk (s2Step79ExitGvRow.payload++[]) s2Step79ExitGvRow.sign=s2Step79ExitGvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step79ExitBank_rows : planWindowRowsLog s2Step79ExitGBefore [(s2Step79ExitGRow,228),(s2Step79ExitFRow,229),(s2Step79ExitFvRow,53),(s2Step79ExitGvRow,54)] [[],[],[],[]]=
    some (s2Step79ExitGvAfter,[s2Step79ExitGOut,s2Step79ExitFOut,s2Step79ExitFvOut,s2Step79ExitGvOut],(shrinkRow 769 s2Step79ExitGExtra ++ (shrinkRow 768 s2Step79ExitFExtra ++ (shrinkRow 770 s2Step79ExitFvExtra ++ (growRow 771 [] ++ []))))) := by
  have h4 : planWindowRowsLog s2Step79ExitGvAfter [] []=some (s2Step79ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step79ExitGvBefore s2Step79ExitGvAfter s2Step79ExitGvAfter
    s2Step79ExitGvRow s2Step79ExitGvOut 54 [] [] [] []
    (growRow 771 []) ([]) s2Step79ExitGv_Incoming s2Step79ExitGv_checked h4 s2Step79ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step79ExitFvBefore s2Step79ExitFvAfter s2Step79ExitGvAfter
    s2Step79ExitFvRow s2Step79ExitFvOut 53 [] [(s2Step79ExitGvRow,54)] [[]] [s2Step79ExitGvOut]
    (shrinkRow 770 s2Step79ExitFvExtra) ((growRow 771 [] ++ [])) s2Step79ExitFv_Incoming s2Step79ExitFv_checked h3 s2Step79ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step79ExitFBefore s2Step79ExitFAfter s2Step79ExitGvAfter
    s2Step79ExitFRow s2Step79ExitFOut 229 [] [(s2Step79ExitFvRow,53),(s2Step79ExitGvRow,54)] [[],[]] [s2Step79ExitFvOut,s2Step79ExitGvOut]
    (shrinkRow 768 s2Step79ExitFExtra) ((shrinkRow 770 s2Step79ExitFvExtra ++ (growRow 771 [] ++ []))) s2Step79ExitF_Incoming s2Step79ExitF_checked h2 s2Step79ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step79ExitGBefore s2Step79ExitGAfter s2Step79ExitGvAfter
    s2Step79ExitGRow s2Step79ExitGOut 228 [] [(s2Step79ExitFRow,229),(s2Step79ExitFvRow,53),(s2Step79ExitGvRow,54)] [[],[],[]] [s2Step79ExitFOut,s2Step79ExitFvOut,s2Step79ExitGvOut]
    (shrinkRow 769 s2Step79ExitGExtra) ((shrinkRow 768 s2Step79ExitFExtra ++ (shrinkRow 770 s2Step79ExitFvExtra ++ (growRow 771 [] ++ [])))) s2Step79ExitG_Incoming s2Step79ExitG_checked h1 s2Step79ExitG_Outgoing
  exact h0

private theorem s2Step79ExitBank_checked : compileHmrBankResizeLog .exit s2Step79ExitGBefore ⟨s2Step79ExitFRow,s2Step79ExitGRow,s2Step79ExitFvRow,s2Step79ExitGvRow⟩ ⟨229,228,53,54⟩ [[],[],[],[]]=
    some (s2Step79ExitGvAfter,⟨s2Step79ExitFOut,s2Step79ExitGOut,s2Step79ExitFvOut,s2Step79ExitGvOut⟩,(shrinkRow 769 s2Step79ExitGExtra ++ (shrinkRow 768 s2Step79ExitFExtra ++ (shrinkRow 770 s2Step79ExitFvExtra ++ (growRow 771 [] ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step79ExitBank_rows]
  rfl

private theorem s2Step79Add0_apart : Disjoint s2Step79Add0Arena.live s2Step79Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step79Add0Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step79Add0_card : s2Step79Add0Arena.live.card=868 := by
  decide +kernel

private theorem s2Step79Add0_borrowed : s2Step79Add0Arena.checkBorrow (hmrHybridCount s2Step79Add0Arena s2Step79Add0B.length) s2Step79Add0Work=some s2Step79Add0During := by
  have len : s2Step79Add0Work.length=hmrHybridCount s2Step79Add0Arena s2Step79Add0B.length := by
    rw [hmrHybridCount,s2Step79Add0_card]
    decide +kernel
  have nd : s2Step79Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step79Add0Arena s2Step79Add0During s2Step79Add0Work.toFinset s2Step79Add0_bounded s2Step79Add0_apart rfl

private theorem s2Step79Add0_distinct : (836::784::816::(s2Step79Add0A++s2Step79Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step79Add0_owned : (836::784::816::(s2Step79Add0A++s2Step79Add0B)).toFinset⊆s2Step79Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step79Add0Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step79Add0_checked : compileHmrHybridCinLog s2Step79Add0Arena 784 836 816 s2Step79Add0A s2Step79Add0B s2Step79Add0Work=some s2Step79Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step79Add0Arena s2Step79Add0During 784 836 816 s2Step79Add0A s2Step79Add0B s2Step79Add0Work
    (by decide +kernel) (by decide +kernel) s2Step79Add0_distinct
    (fun q hq => s2Step79Add0_owned (List.mem_toFinset.mpr hq)) s2Step79Add0_borrowed

private theorem s2Step79Add1_apart : Disjoint s2Step79Add1Arena.live s2Step79Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step79Add1Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step79Add1_card : s2Step79Add1Arena.live.card=868 := by
  decide +kernel

private theorem s2Step79Add1_borrowed : s2Step79Add1Arena.checkBorrow (hmrHybridCount s2Step79Add1Arena s2Step79Add1B.length) s2Step79Add1Work=some s2Step79Add1During := by
  have len : s2Step79Add1Work.length=hmrHybridCount s2Step79Add1Arena s2Step79Add1B.length := by
    rw [hmrHybridCount,s2Step79Add1_card]
    decide +kernel
  have nd : s2Step79Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step79Add1Arena s2Step79Add1During s2Step79Add1Work.toFinset s2Step79Add1_bounded s2Step79Add1_apart rfl

private theorem s2Step79Add1_distinct : (836::784::816::(s2Step79Add1A++s2Step79Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step79Add1_owned : (836::784::816::(s2Step79Add1A++s2Step79Add1B)).toFinset⊆s2Step79Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step79Add1Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step79Add1_checked : compileHmrHybridCinLog s2Step79Add1Arena 784 836 816 s2Step79Add1A s2Step79Add1B s2Step79Add1Work=some s2Step79Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step79Add1Arena s2Step79Add1During 784 836 816 s2Step79Add1A s2Step79Add1B s2Step79Add1Work
    (by decide +kernel) (by decide +kernel) s2Step79Add1_distinct
    (fun q hq => s2Step79Add1_owned (List.mem_toFinset.mpr hq)) s2Step79Add1_borrowed

private theorem s2Step79F4_apart : Disjoint (s2Step79Add0A++s2Step79Add0B).toFinset (s2Step79Add1A++s2Step79Add1B).toFinset := by
  have nd : ((s2Step79Add0A++s2Step79Add0B)++(s2Step79Add1A++s2Step79Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step79F4_carry : s2Step79F4FlagArena.checkBorrow 1 [816]=some s2Step79Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step79F4FlagArena,s2Step79HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step79F4FlagArena,s2Step79HeadFvAfter,s2Step79Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step79F4_distinct : (783::784::836::816::((s2Step79Add0A++s2Step79Add1A)++(s2Step79Add0B++s2Step79Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step79F4_flag : s2Step79HeadFvAfter.checkBorrow 1 [836]=some s2Step79F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step79HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step79F4_owned : (783::784::((s2Step79Add0A++s2Step79Add1A)++(s2Step79Add0B++s2Step79Add1B))).toFinset⊆s2Step79HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step79HeadFvAfter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step79F4_checked : compileHmrHybridF4Log s2Step79HeadFvAfter 783 784 s2Step79Add0A s2Step79Add0B s2Step79Add1A s2Step79Add1B [836] [816] s2Step79Add0Work s2Step79Add1Work=some s2Step79F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step79HeadFvAfter s2Step79F4FlagArena s2Step79Add0Arena s2Step79Add0During s2Step79Add1During 783 784
    s2Step79Add0A s2Step79Add0B s2Step79Add1A s2Step79Add1B [836] [816] s2Step79Add0Work s2Step79Add1Work
    (fun q hq => s2Step79F4_owned (List.mem_toFinset.mpr hq)) s2Step79F4_flag s2Step79F4_carry
    s2Step79F4_distinct s2Step79F4_apart s2Step79Add0_checked s2Step79Add1_checked

private theorem s2Step79Front_branch : s2Step79FrontSigmaArena.checkBorrow 1 [784]=some s2Step79HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step79FrontSigmaArena,s2Step79EntryGvAfter,s2Step79EntryFBefore,arenaWires]
  · ext q
    simp only [s2Step79FrontSigmaArena,s2Step79EntryGvAfter,s2Step79EntryFBefore,s2Step79HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step79Front_entry : HmrFrontEntryValid s2Step79EntryFBefore s2Step79FrontBank 229 53 ⟨229,228,53,54⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step79FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step79EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step79EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step79FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step79Front_sigma : s2Step79EntryGvAfter.checkBorrow 1 [783]=some s2Step79FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step79EntryGvAfter,s2Step79EntryFBefore,arenaWires]
  · rfl

private def s2Step79HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<836) ∨ (837≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step79HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<836) ∨ (837≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step79HeadFBefore : Arena := s2Step79HeadGAfter

private def s2Step79HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740],768⟩

private def s2Step79HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827],770⟩

private def s2Step79HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228],769⟩

private def s2Step79HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840],771⟩

private theorem s2Step79HeadBank_incomingDistinct : ([s2Step79HeadGRow,s2Step79HeadFRow,s2Step79HeadGvRow,s2Step79HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step79HeadF_Incoming : rowsOwned s2Step79HeadFBefore [s2Step79HeadFRow,s2Step79HeadGvRow,s2Step79HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step79HeadGRow,s2Step79HeadFRow,s2Step79HeadGvRow,s2Step79HeadFvRow] 1 s2Step79HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step79HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<836) ∨ (837≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step79HeadBank_outgoingOwned : rowsOwned s2Step79HeadFvAfter [s2Step79HeadGOut,s2Step79HeadFOut,s2Step79HeadGvOut,s2Step79HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step79HeadFvAfter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step79HeadF_Outgoing : rowsOwned s2Step79HeadFvAfter [s2Step79HeadFOut,s2Step79HeadGvOut,s2Step79HeadFvOut] :=
  hmrRows_owned_drop s2Step79HeadFvAfter [s2Step79HeadGOut,s2Step79HeadFOut,s2Step79HeadGvOut,s2Step79HeadFvOut] 1 s2Step79HeadBank_outgoingOwned

private theorem s2Step79HeadF_distinct : (s2Step79HeadFRow.sign::s2Step79HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step79HeadF_owned : (s2Step79HeadFRow.sign::s2Step79HeadFRow.payload).toFinset⊆s2Step79HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step79HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<836) ∨ (837≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step79HeadF_reserved : s2Step79HeadFBefore.reserve s2Step79HeadFFresh.toFinset=some s2Step79HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step79HeadFFresh,arenaWires]
  · norm_num [s2Step79HeadFBefore,s2Step79HeadGAfter,s2Step79HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step79HeadFAfter,s2Step79HeadFBefore,s2Step79HeadGAfter,s2Step79HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step79HeadF_checked : planRowResizeLog s2Step79HeadFBefore s2Step79HeadFRow 230 s2Step79HeadFFresh=
    some (s2Step79HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 845],768⟩,growRow 768 s2Step79HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step79HeadFBefore s2Step79HeadFAfter s2Step79HeadFRow 230 s2Step79HeadFFresh
    s2Step79HeadF_distinct s2Step79HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step79HeadF_reserved
  have rowEq : WindowRow.mk (s2Step79HeadFRow.payload++s2Step79HeadFFresh) s2Step79HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 845],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step79HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step79HeadFvBefore : Arena := s2Step79HeadGvAfter

private theorem s2Step79HeadFv_Incoming : rowsOwned s2Step79HeadFvBefore [s2Step79HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step79HeadGRow,s2Step79HeadFRow,s2Step79HeadGvRow,s2Step79HeadFvRow] 3 s2Step79HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step79HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step79HeadFv_Outgoing : rowsOwned s2Step79HeadFvAfter [s2Step79HeadFvOut] :=
  hmrRows_owned_drop s2Step79HeadFvAfter [s2Step79HeadGOut,s2Step79HeadFOut,s2Step79HeadGvOut,s2Step79HeadFvOut] 3 s2Step79HeadBank_outgoingOwned

private theorem s2Step79HeadFv_distinct : (s2Step79HeadFvRow.sign::s2Step79HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step79HeadFv_owned : (s2Step79HeadFvRow.sign::s2Step79HeadFvRow.payload).toFinset⊆s2Step79HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step79HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step79HeadFv_reserved : s2Step79HeadFvBefore.reserve s2Step79HeadFvFresh.toFinset=some s2Step79HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step79HeadFvFresh,arenaWires]
  · norm_num [s2Step79HeadFvBefore,s2Step79HeadGvAfter,s2Step79HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step79HeadFvAfter,s2Step79HeadFvBefore,s2Step79HeadGvAfter,s2Step79HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step79HeadFv_checked : planRowResizeLog s2Step79HeadFvBefore s2Step79HeadFvRow 54 s2Step79HeadFvFresh=
    some (s2Step79HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 782],770⟩,growRow 770 s2Step79HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step79HeadFvBefore s2Step79HeadFvAfter s2Step79HeadFvRow 54 s2Step79HeadFvFresh
    s2Step79HeadFv_distinct s2Step79HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step79HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step79HeadFvRow.payload++s2Step79HeadFvFresh) s2Step79HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 782],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step79HeadG_Incoming : rowsOwned s2Step79HeadGBefore [s2Step79HeadGRow,s2Step79HeadFRow,s2Step79HeadGvRow,s2Step79HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step79HeadGRow,s2Step79HeadFRow,s2Step79HeadGvRow,s2Step79HeadFvRow] 0 s2Step79HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step79HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step79HeadG_Outgoing : rowsOwned s2Step79HeadFvAfter [s2Step79HeadGOut,s2Step79HeadFOut,s2Step79HeadGvOut,s2Step79HeadFvOut] :=
  hmrRows_owned_drop s2Step79HeadFvAfter [s2Step79HeadGOut,s2Step79HeadFOut,s2Step79HeadGvOut,s2Step79HeadFvOut] 0 s2Step79HeadBank_outgoingOwned

private theorem s2Step79HeadG_distinct : (s2Step79HeadGRow.sign::s2Step79HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step79HeadG_owned : (s2Step79HeadGRow.sign::s2Step79HeadGRow.payload).toFinset⊆s2Step79HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step79HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step79HeadG_reserved : s2Step79HeadGBefore.reserve s2Step79HeadGFresh.toFinset=some s2Step79HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step79HeadGFresh,arenaWires]
  · norm_num [s2Step79HeadGBefore,s2Step79HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step79HeadGAfter,s2Step79HeadGBefore,s2Step79HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step79HeadG_checked : planRowResizeLog s2Step79HeadGBefore s2Step79HeadGRow 230 s2Step79HeadGFresh=
    some (s2Step79HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 844],769⟩,growRow 769 s2Step79HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step79HeadGBefore s2Step79HeadGAfter s2Step79HeadGRow 230 s2Step79HeadGFresh
    s2Step79HeadG_distinct s2Step79HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step79HeadG_reserved
  have rowEq : WindowRow.mk (s2Step79HeadGRow.payload++s2Step79HeadGFresh) s2Step79HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 844],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step79HeadGvBefore : Arena := s2Step79HeadFAfter

private theorem s2Step79HeadGv_Incoming : rowsOwned s2Step79HeadGvBefore [s2Step79HeadGvRow,s2Step79HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step79HeadGRow,s2Step79HeadFRow,s2Step79HeadGvRow,s2Step79HeadFvRow] 2 s2Step79HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step79HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<836) ∨ (837≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step79HeadGv_Outgoing : rowsOwned s2Step79HeadFvAfter [s2Step79HeadGvOut,s2Step79HeadFvOut] :=
  hmrRows_owned_drop s2Step79HeadFvAfter [s2Step79HeadGOut,s2Step79HeadFOut,s2Step79HeadGvOut,s2Step79HeadFvOut] 2 s2Step79HeadBank_outgoingOwned

private theorem s2Step79HeadGv_distinct : (s2Step79HeadGvRow.sign::s2Step79HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step79HeadGv_owned : (s2Step79HeadGvRow.sign::s2Step79HeadGvRow.payload).toFinset⊆s2Step79HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step79HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<836) ∨ (837≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step79HeadGv_reserved : s2Step79HeadGvBefore.reserve s2Step79HeadGvFresh.toFinset=some s2Step79HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step79HeadGvFresh,arenaWires]
  · norm_num [s2Step79HeadGvBefore,s2Step79HeadFAfter,s2Step79HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step79HeadGvAfter,s2Step79HeadGvBefore,s2Step79HeadFAfter,s2Step79HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step79HeadGv_checked : planRowResizeLog s2Step79HeadGvBefore s2Step79HeadGvRow 54 s2Step79HeadGvFresh=
    some (s2Step79HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826],771⟩,growRow 771 s2Step79HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step79HeadGvBefore s2Step79HeadGvAfter s2Step79HeadGvRow 54 s2Step79HeadGvFresh
    s2Step79HeadGv_distinct s2Step79HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step79HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step79HeadGvRow.payload++s2Step79HeadGvFresh) s2Step79HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step79HeadBank_rows : planWindowRowsLog s2Step79HeadGBefore [(s2Step79HeadGRow,230),(s2Step79HeadFRow,230),(s2Step79HeadGvRow,54),(s2Step79HeadFvRow,54)] [s2Step79HeadGFresh,s2Step79HeadFFresh,s2Step79HeadGvFresh,s2Step79HeadFvFresh]=
    some (s2Step79HeadFvAfter,[s2Step79HeadGOut,s2Step79HeadFOut,s2Step79HeadGvOut,s2Step79HeadFvOut],(growRow 769 s2Step79HeadGFresh ++ (growRow 768 s2Step79HeadFFresh ++ (growRow 771 s2Step79HeadGvFresh ++ (growRow 770 s2Step79HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step79HeadFvAfter [] []=some (s2Step79HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step79HeadFvBefore s2Step79HeadFvAfter s2Step79HeadFvAfter
    s2Step79HeadFvRow s2Step79HeadFvOut 54 s2Step79HeadFvFresh [] [] []
    (growRow 770 s2Step79HeadFvFresh) ([]) s2Step79HeadFv_Incoming s2Step79HeadFv_checked h4 s2Step79HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step79HeadGvBefore s2Step79HeadGvAfter s2Step79HeadFvAfter
    s2Step79HeadGvRow s2Step79HeadGvOut 54 s2Step79HeadGvFresh [(s2Step79HeadFvRow,54)] [s2Step79HeadFvFresh] [s2Step79HeadFvOut]
    (growRow 771 s2Step79HeadGvFresh) ((growRow 770 s2Step79HeadFvFresh ++ [])) s2Step79HeadGv_Incoming s2Step79HeadGv_checked h3 s2Step79HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step79HeadFBefore s2Step79HeadFAfter s2Step79HeadFvAfter
    s2Step79HeadFRow s2Step79HeadFOut 230 s2Step79HeadFFresh [(s2Step79HeadGvRow,54),(s2Step79HeadFvRow,54)] [s2Step79HeadGvFresh,s2Step79HeadFvFresh] [s2Step79HeadGvOut,s2Step79HeadFvOut]
    (growRow 768 s2Step79HeadFFresh) ((growRow 771 s2Step79HeadGvFresh ++ (growRow 770 s2Step79HeadFvFresh ++ []))) s2Step79HeadF_Incoming s2Step79HeadF_checked h2 s2Step79HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step79HeadGBefore s2Step79HeadGAfter s2Step79HeadFvAfter
    s2Step79HeadGRow s2Step79HeadGOut 230 s2Step79HeadGFresh [(s2Step79HeadFRow,230),(s2Step79HeadGvRow,54),(s2Step79HeadFvRow,54)] [s2Step79HeadFFresh,s2Step79HeadGvFresh,s2Step79HeadFvFresh] [s2Step79HeadFOut,s2Step79HeadGvOut,s2Step79HeadFvOut]
    (growRow 769 s2Step79HeadGFresh) ((growRow 768 s2Step79HeadFFresh ++ (growRow 771 s2Step79HeadGvFresh ++ (growRow 770 s2Step79HeadFvFresh ++ [])))) s2Step79HeadG_Incoming s2Step79HeadG_checked h1 s2Step79HeadG_Outgoing
  exact h0

private theorem s2Step79HeadBank_checked : compileHmrBankResizeLog .headroom s2Step79HeadGBefore ⟨s2Step79HeadFRow,s2Step79HeadGRow,s2Step79HeadFvRow,s2Step79HeadGvRow⟩ ⟨230,230,54,54⟩ [s2Step79HeadGFresh,s2Step79HeadFFresh,s2Step79HeadGvFresh,s2Step79HeadFvFresh]=
    some (s2Step79HeadFvAfter,⟨s2Step79HeadFOut,s2Step79HeadGOut,s2Step79HeadFvOut,s2Step79HeadGvOut⟩,(growRow 769 s2Step79HeadGFresh ++ (growRow 768 s2Step79HeadFFresh ++ (growRow 771 s2Step79HeadGvFresh ++ (growRow 770 s2Step79HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step79HeadBank_rows]
  rfl

private theorem s2Step79Front_checked : compileHmrSourceFrontLog s2Step79EntryFBefore s2Step79FrontBank 229 53 ⟨229,228,53,54⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step79FrontLog=some s2Step79FrontPlan := by
  have pairEq : s2Step79FrontPair=⟨s2Step79HeadFRow,s2Step79HeadGRow,s2Step79HeadFvRow,s2Step79HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step79FrontHead=⟨s2Step79ExitFRow,s2Step79ExitGRow,s2Step79ExitFvRow,s2Step79ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step79Add0A=s2Step79FrontHead.f.wires := by decide +kernel
  have gEq : s2Step79Add0B=s2Step79FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step79Add1A=s2Step79FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step79Add1B=s2Step79FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step79EntryFBefore s2Step79FrontBank 229 53 ⟨229,228,53,54⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step79FrontLog s2Step79FrontPlan
  · exact s2Step79Front_entry
  · exact s2Step79EntryBank_checked
  · exact s2Step79Front_sigma
  · rfl
  · exact s2Step79Front_branch
  · rfl
  · simpa only [s2Step79FrontPlan,pairEq] using s2Step79HeadBank_checked
  · simpa only [s2Step79FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step79F4_checked
  · exact s2Step79Counter_checked
  · rfl
  · simpa only [s2Step79FrontPlan,headEq] using s2Step79ExitBank_checked

private theorem s2Step79Complete_explicit_checked : compileHmrEarlyStepLog s2Step79EntryFBefore s2Step79FrontBank 229 53 ⟨229,228,53,54⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 30 s2Step79CompleteLog=some s2Step79CompletePlan := by
  let Q := s2Step79EarlyControlPlan
  have hq := s2Step79EarlyControl_plan_checked
  have fv1 : s2Step79CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step79CompleteOut.fv.payload[2]?.getD s2Step79CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step79CompleteOut.fv.payload[3]?.getD s2Step79CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step79CompleteOut.fv.payload[4]?.getD s2Step79CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step79EntryFBefore s2Step79EarlyControlArena s2Step79FrontBank 229 53 ⟨229,228,53,54⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 30 s2Step79CompleteLog s2Step79FrontPlan Q
    s2Step79Front_checked s2Step79Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step79Complete_owned s2Step79Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step79EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 777 783 s2Step79CompleteOut.fv.second (s2Step79CompleteOut.fv.payload[2]?.getD s2Step79CompleteOut.fv.sign) (s2Step79CompleteOut.fv.payload[3]?.getD s2Step79CompleteOut.fv.sign) (s2Step79CompleteOut.fv.payload[4]?.getD s2Step79CompleteOut.fv.sign) 784 30 s2Step79EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep79Arena : Arena := s2Step79EntryFBefore
def s2PrivateStep79Bank : WindowBank := s2Step79FrontBank
def s2PrivateStep79Spec : HmrSourceWalkStepLog := ⟨229,53,⟨229,228,53,54⟩,30,.early s2Step79CompleteLog⟩
def s2PrivateStep79Plan : HmrSourceStepPlan := .early s2Step79CompletePlan
theorem s2PrivateStep79_source : s2PrivateStep79Spec=s2ObservedLogs64[15] := rfl
theorem s2PrivateStep79_checked : compileHmrSourceStepLog s2PrivateStep79Arena s2PrivateStep79Bank
    s2PrivateStep79Spec.fgWidth s2PrivateStep79Spec.vWidth s2PrivateStep79Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872]
    6 498 79 s2PrivateStep79Spec.need none s2PrivateStep79Spec.log=some s2PrivateStep79Plan := by
  change compileHmrSourceStepLog s2Step79EntryFBefore s2Step79FrontBank 229 53 ⟨229,228,53,54⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 6 498 79 30 none (.early s2Step79CompleteLog)=some (.early s2Step79CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 79<498)]
  rw [s2Step79Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
