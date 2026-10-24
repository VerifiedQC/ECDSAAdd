import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep76
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

private def s2Step78CompleteMoves : List (Wire × Wire) := []

private def s2Step78EarlyControlLog : HmrEarlyControlLog := ⟨[844, 845, 826, 782, 836],[816],[846],[847, 849, 851, 867, 873, 874],[]⟩

private def s2Step78FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [840]],[[782], [826], [844], [845]],[[], [], [], []]⟩,[784],[783],[836],[816],[846, 847, 849, 851, 867, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[846, 847, 849, 851, 867, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921],[836, 816, 846, 847]⟩

private def s2Step78CompleteLog : HmrEarlyStepLog := ⟨s2Step78FrontLog,s2Step78CompleteMoves,s2Step78EarlyControlLog⟩

private def s2Step78ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740],768⟩

private def s2Step78ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827],770⟩

private def s2Step78ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228],769⟩

private def s2Step78ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840],771⟩

private def s2Step78FrontOut : WindowBank := ⟨s2Step78ExitFOut,s2Step78ExitGOut,s2Step78ExitFvOut,s2Step78ExitGvOut⟩

private def s2Step78CompleteOut : WindowBank := s2Step78FrontOut.repacked s2Step78CompleteMoves

private def s2Step78EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step78EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step78EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step78EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step78EarlyControlPositiveArena,[816],s2Step78EarlyControlEqualityArena,[846],⟨⟨784,false⟩,[⟨⟨816,false⟩,846⟩]⟩⟩

private def s2Step78EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<875)),Finset.filter_subset _ _⟩

private def s2Step78EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<875)),Finset.filter_subset _ _⟩

private def s2Step78EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step78EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step78EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step78EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step78EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,844⟩,⟨⟨774,false⟩,845⟩,⟨⟨775,false⟩,826⟩,⟨⟨776,false⟩,782⟩,⟨⟨777,false⟩,836⟩]⟩

private def s2Step78EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step78EarlyControlZeroArena,s2Step78EarlyControlZeroPlan,s2Step78EarlyControlClassPlan,s2Step78EarlyControlFlagArena,s2Step78EarlyControlFittedArena,s2Step78EarlyControlHistoryArena,s2Step78EarlyControlSigmaArena,s2Step78EarlyControlOutputArena,s2Step78EarlyControlLog⟩

private def s2Step78CounterWork : List Wire := [836, 816, 846, 847]

private theorem s2Step78Counter_bounded : s2Step78CounterWork.toFinset⊆arenaWires := by norm_num [s2Step78CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step78HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step78CounterDuring : Arena := ⟨s2Step78HeadFvAfter.live∪s2Step78CounterWork.toFinset,Finset.union_subset s2Step78HeadFvAfter.bounded s2Step78Counter_bounded⟩

private def s2Step78EntryFFresh : List Wire := []

private def s2Step78EntryFvFresh : List Wire := []

private def s2Step78EntryGFresh : List Wire := []

private def s2Step78EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step78EntryGvFresh : List Wire := [840]

private def s2Step78ExitFExtra : List Wire := [826]

private def s2Step78ExitFvExtra : List Wire := [845]

private def s2Step78ExitGExtra : List Wire := [782]

private def s2Step78ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step78ExitGvExtra : List Wire := [844]

private def s2Step78Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step78Add0Work : List Wire := [846, 847, 849, 851, 867, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step78Add0_bounded : s2Step78Add0Work.toFinset⊆arenaWires := by
  have h : s2Step78Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step78Add0During : Arena := ⟨s2Step78Add0Arena.live∪s2Step78Add0Work.toFinset,Finset.union_subset s2Step78Add0Arena.bounded s2Step78Add0_bounded⟩

private def s2Step78Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step78Add1Work : List Wire := [846, 847, 849, 851, 867, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921]

private theorem s2Step78Add1_bounded : s2Step78Add1Work.toFinset⊆arenaWires := by
  have h : s2Step78Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step78Add1During : Arena := ⟨s2Step78Add1Arena.live∪s2Step78Add1Work.toFinset,Finset.union_subset s2Step78Add1Arena.bounded s2Step78Add1_bounded⟩

private def s2Step78F4FlagArena : Arena := ⟨s2Step78HeadFvAfter.live∪{836},Finset.union_subset s2Step78HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step78F4Plan : HmrHybridF4Plan := ⟨s2Step78F4FlagArena,[836],s2Step78Add0Arena,[816],s2Step78Add0During,s2Step78Add0Work,s2Step78Add1During,s2Step78Add1Work⟩

private def s2Step78HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 826],768⟩

private def s2Step78HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 845],770⟩

private def s2Step78HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 782],769⟩

private def s2Step78HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 844],771⟩

private def s2Step78FrontHead : WindowBank := ⟨s2Step78HeadFOut,s2Step78HeadGOut,s2Step78HeadFvOut,s2Step78HeadGvOut⟩

private def s2Step78EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740],768⟩

private def s2Step78EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827],770⟩

private def s2Step78EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228],769⟩

private def s2Step78EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840],771⟩

private def s2Step78FrontPair : WindowBank := ⟨s2Step78EntryFOut,s2Step78EntryGOut,s2Step78EntryFvOut,s2Step78EntryGvOut⟩

private def s2Step78FrontSigmaArena : Arena := ⟨s2Step78EntryGvAfter.live∪{784},Finset.union_subset s2Step78EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step78HeadFFresh : List Wire := [826]

private def s2Step78HeadFvFresh : List Wire := [845]

private def s2Step78HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step78HeadGFresh : List Wire := [782]

private def s2Step78HeadGvFresh : List Wire := [844]

private def s2Step78FrontPlan : HmrSourceFront := ⟨s2Step78EntryGvAfter,s2Step78FrontPair,(growRow 768 s2Step78EntryFFresh ++ (growRow 769 s2Step78EntryGFresh ++ (growRow 770 s2Step78EntryFvFresh ++ (growRow 771 s2Step78EntryGvFresh ++ [])))),s2Step78FrontSigmaArena,[784],s2Step78HeadGBefore,[783],
  s2Step78HeadFvAfter,s2Step78FrontHead,(growRow 769 s2Step78HeadGFresh ++ (growRow 768 s2Step78HeadFFresh ++ (growRow 771 s2Step78HeadGvFresh ++ (growRow 770 s2Step78HeadFvFresh ++ [])))),s2Step78F4Plan,s2Step78CounterDuring,s2Step78CounterWork,s2Step78ExitGvAfter,s2Step78FrontOut,(shrinkRow 769 s2Step78ExitGExtra ++ (shrinkRow 768 s2Step78ExitFExtra ++ (shrinkRow 770 s2Step78ExitFvExtra ++ (shrinkRow 771 s2Step78ExitGvExtra ++ []))))⟩

private def s2Step78CompletePlan : HmrEarlyStepPlan := ⟨s2Step78FrontPlan,s2Step78EarlyControlArena,s2Step78EarlyControlPlan,s2Step78CompleteMoves⟩

private theorem s2Step78Complete_apart : List.Disjoint (s2Step78CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [784, 783, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] := by
  have nd : ((s2Step78CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[784, 783, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step78Complete_owned : (s2Step78CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step78EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step78EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step78Complete_repack : s2Step78ExitGvAfter.checkRepack s2Step78CompleteMoves=some s2Step78EarlyControlArena := by rfl

private theorem s2Step78EarlyControl_branchOwned : ([783] : List Wire).toFinset⊆s2Step78EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step78EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step78EarlyControl_branch : compileHmrBranchRetirement s2Step78EarlyControlSigmaArena 783=some s2Step78EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step78EarlyControl_branchOwned
  · ext q
    simp [s2Step78EarlyControlOutputArena,s2Step78EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step78EarlyControl_classEqualityBorrow : s2Step78EarlyControlPositiveArena.checkBorrow (([784, 816] : List Wire).length-1) s2Step78EarlyControlLog.classWork=some s2Step78EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step78EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step78EarlyControlPositiveArena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
      decide +kernel
    · ext q
      simp [s2Step78EarlyControlEqualityArena,s2Step78EarlyControlPositiveArena,s2Step78EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step78EarlyControl_classEqualityOwned : ([784, 816] : List Wire).toFinset⊆s2Step78EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step78EarlyControlPositiveArena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step78EarlyControl_classEquality : compileHmrEqualityLog s2Step78EarlyControlPositiveArena [784, 816] 0 s2Step78EarlyControlLog.classWork=some (s2Step78EarlyControlEqualityArena,s2Step78EarlyControlLog.classWork,s2Step78EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step78EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step78EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step78EarlyControl_classOwned : ([777, 836, 784] : List Wire).toFinset⊆s2Step78EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step78EarlyControlZeroArena (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step78EarlyControl_positiveBorrow : s2Step78EarlyControlZeroArena.checkBorrow (1) s2Step78EarlyControlLog.positiveWork=some s2Step78EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step78EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step78EarlyControlZeroArena (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
      decide +kernel
    · ext q
      simp [s2Step78EarlyControlPositiveArena,s2Step78EarlyControlZeroArena,s2Step78EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step78EarlyControl_class : compileHmrSourceClassLog s2Step78EarlyControlZeroArena false 777 s2Step78EarlyControlZeroPlan.top 0 784 s2Step78EarlyControlLog.positiveWork s2Step78EarlyControlLog.classWork=some s2Step78EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step78EarlyControlClassPlan s2Step78EarlyControlZeroArena false 777 s2Step78EarlyControlZeroPlan.top 0 784
  constructor
  · decide +kernel
  · exact s2Step78EarlyControl_classOwned
  · exact s2Step78EarlyControl_positiveBorrow
  · exact s2Step78EarlyControl_classEquality

private theorem s2Step78EarlyControl_entryRecordOwned : ([783, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] : List Wire).toFinset⊆s2Step78EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step78EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step78EarlyControl_entrySigmaOwned : ([784, 254] : List Wire).toFinset⊆s2Step78EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step78EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step78EarlyControl_fitBorrow : s2Step78EarlyControlFlagArena.checkBorrow ((30-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] : List Wire).length)) s2Step78EarlyControlLog.recordFresh=some s2Step78EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step78EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step78EarlyControlFlagArena (fun q => (0≤q ∧ q<875)) rfl
      decide +kernel
    · ext q
      simp [s2Step78EarlyControlFittedArena,s2Step78EarlyControlFlagArena,s2Step78EarlyControlLog,arenaWires]

private theorem s2Step78EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] : List Wire).toFinset⊆s2Step78EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step78EarlyControlFlagArena (fun q => (0≤q ∧ q<875)) rfl
  decide +kernel

private theorem s2Step78EarlyControl_fit : compileHmrRecordGrowLog s2Step78EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 30 s2Step78EarlyControlLog.recordFresh=some s2Step78EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step78EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step78EarlyControl_fitBorrow

private theorem s2Step78EarlyControl_flagsBorrow : s2Step78EarlyControlEqualityArena.checkBorrow (6) s2Step78EarlyControlLog.flagWork=some s2Step78EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step78EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step78EarlyControlEqualityArena (fun q => (0≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
      decide +kernel
    · ext q
      simp [s2Step78EarlyControlFlagArena,s2Step78EarlyControlEqualityArena,s2Step78EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step78EarlyControl_flagsOwned : ([846, 253, 252, 251] : List Wire).toFinset⊆s2Step78EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step78EarlyControlEqualityArena (fun q => (0≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step78EarlyControl_flags : compileHmrFlagsLog s2Step78EarlyControlClassPlan.equalityArena s2Step78EarlyControlClassPlan.equality.top 253 252 251 s2Step78EarlyControlLog.flagWork=some s2Step78EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step78EarlyControl_flagsOwned⟩
  · exact s2Step78EarlyControl_flagsBorrow

private theorem s2Step78EarlyControl_historyBorrow : s2Step78EarlyControlArena.checkBorrow ((30-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] : List Wire).length)) s2Step78EarlyControlLog.recordFresh=some s2Step78EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step78EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step78EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
      decide +kernel
    · ext q
      simp [s2Step78EarlyControlHistoryArena,s2Step78EarlyControlArena,s2Step78EarlyControlLog,arenaWires]

private theorem s2Step78EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] : List Wire).toFinset⊆s2Step78EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step78EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step78EarlyControl_history : compileHmrRecordGrowLog s2Step78EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 30 s2Step78EarlyControlLog.recordFresh=some s2Step78EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step78EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step78EarlyControl_historyBorrow

private theorem s2Step78EarlyControl_sigmaOwned : ([254, 784] : List Wire).toFinset⊆s2Step78EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step78EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step78EarlyControl_sigmaReleaseOwned : ([784] : List Wire).toFinset⊆s2Step78EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step78EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step78EarlyControl_sigmaRelease : s2Step78EarlyControlHistoryArena.release {784} (fun _ => false)=some s2Step78EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step78EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step78EarlyControlSigmaArena,s2Step78EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step78EarlyControl_sigma : compileHmrSigmaDropLog s2Step78EarlyControlHistoryArena false 0 0 254 784 []=some s2Step78EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step78EarlyControl_sigmaOwned⟩
  · exact s2Step78EarlyControl_sigmaRelease

private theorem s2Step78EarlyControl_zeroBorrow : s2Step78EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step78EarlyControlLog.zeroWork=some s2Step78EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step78EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step78EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
      decide +kernel
    · ext q
      simp [s2Step78EarlyControlZeroArena,s2Step78EarlyControlArena,s2Step78EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step78EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step78EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step78EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step78EarlyControl_zero : compileHmrEqualityLog s2Step78EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step78EarlyControlLog.zeroWork=some (s2Step78EarlyControlZeroArena,s2Step78EarlyControlLog.zeroWork,s2Step78EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step78EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step78EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step78EarlyControl_logged : s2Step78EarlyControlPlan.Logged s2Step78EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 777 784 254 253 252 251 783 30 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step78EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step78EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step78EarlyControl_zero
  · exact s2Step78EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step78EarlyControl_flags
  · exact s2Step78EarlyControl_fit
  · exact s2Step78EarlyControl_history
  · exact s2Step78EarlyControl_sigma
  · exact s2Step78EarlyControl_branch

private theorem s2Step78EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step78EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 777 784 254 253 252 251 783 30 s2Step78EarlyControlLog=some s2Step78EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step78EarlyControlPlan s2Step78EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 777 784 254 253 252 251 783 30 s2Step78EarlyControl_logged

private def s2Step78EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step78EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740],768⟩

private def s2Step78EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827],770⟩

private def s2Step78EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228],769⟩

private def s2Step78EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831],771⟩

private def s2Step78FrontBank : WindowBank := ⟨s2Step78EntryFRow,s2Step78EntryGRow,s2Step78EntryFvRow,s2Step78EntryGvRow⟩

private def s2Step78Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 826, 768]

private def s2Step78Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 782, 769]

private def s2Step78Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 845, 770]

private def s2Step78Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 844, 771]

private theorem s2Step78Counter_apart : Disjoint s2Step78HeadFvAfter.live s2Step78CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step78HeadFvAfter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step78Counter_borrowed : s2Step78HeadFvAfter.checkBorrow 4 s2Step78CounterWork=some s2Step78CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step78HeadFvAfter s2Step78CounterDuring s2Step78CounterWork.toFinset s2Step78Counter_bounded s2Step78Counter_apart rfl

private theorem s2Step78Counter_owned : (784::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step78HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step78HeadFvAfter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step78Counter_checked : compileHmrCounterStepLog s2Step78HeadFvAfter true 784 [772, 773, 774, 775, 776, 777] s2Step78CounterWork=some s2Step78CounterDuring := by
  have owned : ∀q∈784::[772, 773, 774, 775, 776, 777],q∈s2Step78HeadFvAfter.live := fun q hq => s2Step78Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step78Counter_borrowed

private def s2Step78EntryFAfter : Arena := s2Step78EntryFBefore

private theorem s2Step78EntryBank_incomingDistinct : ([s2Step78EntryFRow,s2Step78EntryGRow,s2Step78EntryFvRow,s2Step78EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step78EntryF_Incoming : rowsOwned s2Step78EntryFBefore [s2Step78EntryFRow,s2Step78EntryGRow,s2Step78EntryFvRow,s2Step78EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step78EntryFRow,s2Step78EntryGRow,s2Step78EntryFvRow,s2Step78EntryGvRow] 0 s2Step78EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step78EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step78EntryBank_outgoingOwned : rowsOwned s2Step78EntryGvAfter [s2Step78EntryFOut,s2Step78EntryGOut,s2Step78EntryFvOut,s2Step78EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step78EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step78EntryF_Outgoing : rowsOwned s2Step78EntryGvAfter [s2Step78EntryFOut,s2Step78EntryGOut,s2Step78EntryFvOut,s2Step78EntryGvOut] :=
  hmrRows_owned_drop s2Step78EntryGvAfter [s2Step78EntryFOut,s2Step78EntryGOut,s2Step78EntryFvOut,s2Step78EntryGvOut] 0 s2Step78EntryBank_outgoingOwned

private theorem s2Step78EntryF_distinct : (s2Step78EntryFRow.sign::s2Step78EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step78EntryF_owned : (s2Step78EntryFRow.sign::s2Step78EntryFRow.payload).toFinset⊆s2Step78EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step78EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step78EntryF_reserved : s2Step78EntryFBefore.reserve s2Step78EntryFFresh.toFinset=some s2Step78EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step78EntryFFresh,arenaWires]
  · norm_num [s2Step78EntryFBefore,s2Step78EntryFFresh,arenaWires]
  · simp only [s2Step78EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step78EntryF_checked : planRowResizeLog s2Step78EntryFBefore s2Step78EntryFRow 229 s2Step78EntryFFresh=
    some (s2Step78EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740],768⟩,growRow 768 s2Step78EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step78EntryFBefore s2Step78EntryFAfter s2Step78EntryFRow 229 s2Step78EntryFFresh
    s2Step78EntryF_distinct s2Step78EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step78EntryF_reserved
  have rowEq : WindowRow.mk (s2Step78EntryFRow.payload++s2Step78EntryFFresh) s2Step78EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step78EntryFvAfter : Arena := s2Step78EntryFBefore

private def s2Step78EntryFvBefore : Arena := s2Step78EntryFBefore

private theorem s2Step78EntryFv_Incoming : rowsOwned s2Step78EntryFvBefore [s2Step78EntryFvRow,s2Step78EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step78EntryFRow,s2Step78EntryGRow,s2Step78EntryFvRow,s2Step78EntryGvRow] 2 s2Step78EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step78EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step78EntryFv_Outgoing : rowsOwned s2Step78EntryGvAfter [s2Step78EntryFvOut,s2Step78EntryGvOut] :=
  hmrRows_owned_drop s2Step78EntryGvAfter [s2Step78EntryFOut,s2Step78EntryGOut,s2Step78EntryFvOut,s2Step78EntryGvOut] 2 s2Step78EntryBank_outgoingOwned

private theorem s2Step78EntryFv_distinct : (s2Step78EntryFvRow.sign::s2Step78EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step78EntryFv_owned : (s2Step78EntryFvRow.sign::s2Step78EntryFvRow.payload).toFinset⊆s2Step78EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step78EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step78EntryFv_reserved : s2Step78EntryFvBefore.reserve s2Step78EntryFvFresh.toFinset=some s2Step78EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step78EntryFvFresh,arenaWires]
  · norm_num [s2Step78EntryFvBefore,s2Step78EntryFBefore,s2Step78EntryFvFresh,arenaWires]
  · simp only [s2Step78EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step78EntryFv_checked : planRowResizeLog s2Step78EntryFvBefore s2Step78EntryFvRow 53 s2Step78EntryFvFresh=
    some (s2Step78EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827],770⟩,growRow 770 s2Step78EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step78EntryFvBefore s2Step78EntryFvAfter s2Step78EntryFvRow 53 s2Step78EntryFvFresh
    s2Step78EntryFv_distinct s2Step78EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step78EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step78EntryFvRow.payload++s2Step78EntryFvFresh) s2Step78EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step78EntryGAfter : Arena := s2Step78EntryFBefore

private def s2Step78EntryGBefore : Arena := s2Step78EntryFBefore

private theorem s2Step78EntryG_Incoming : rowsOwned s2Step78EntryGBefore [s2Step78EntryGRow,s2Step78EntryFvRow,s2Step78EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step78EntryFRow,s2Step78EntryGRow,s2Step78EntryFvRow,s2Step78EntryGvRow] 1 s2Step78EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step78EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step78EntryG_Outgoing : rowsOwned s2Step78EntryGvAfter [s2Step78EntryGOut,s2Step78EntryFvOut,s2Step78EntryGvOut] :=
  hmrRows_owned_drop s2Step78EntryGvAfter [s2Step78EntryFOut,s2Step78EntryGOut,s2Step78EntryFvOut,s2Step78EntryGvOut] 1 s2Step78EntryBank_outgoingOwned

private theorem s2Step78EntryG_distinct : (s2Step78EntryGRow.sign::s2Step78EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step78EntryG_owned : (s2Step78EntryGRow.sign::s2Step78EntryGRow.payload).toFinset⊆s2Step78EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step78EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step78EntryG_reserved : s2Step78EntryGBefore.reserve s2Step78EntryGFresh.toFinset=some s2Step78EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step78EntryGFresh,arenaWires]
  · norm_num [s2Step78EntryGBefore,s2Step78EntryFBefore,s2Step78EntryGFresh,arenaWires]
  · simp only [s2Step78EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step78EntryG_checked : planRowResizeLog s2Step78EntryGBefore s2Step78EntryGRow 229 s2Step78EntryGFresh=
    some (s2Step78EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228],769⟩,growRow 769 s2Step78EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step78EntryGBefore s2Step78EntryGAfter s2Step78EntryGRow 229 s2Step78EntryGFresh
    s2Step78EntryG_distinct s2Step78EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step78EntryG_reserved
  have rowEq : WindowRow.mk (s2Step78EntryGRow.payload++s2Step78EntryGFresh) s2Step78EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step78EntryGvBefore : Arena := s2Step78EntryFBefore

private theorem s2Step78EntryGv_Incoming : rowsOwned s2Step78EntryGvBefore [s2Step78EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step78EntryFRow,s2Step78EntryGRow,s2Step78EntryFvRow,s2Step78EntryGvRow] 3 s2Step78EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step78EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step78EntryGv_Outgoing : rowsOwned s2Step78EntryGvAfter [s2Step78EntryGvOut] :=
  hmrRows_owned_drop s2Step78EntryGvAfter [s2Step78EntryFOut,s2Step78EntryGOut,s2Step78EntryFvOut,s2Step78EntryGvOut] 3 s2Step78EntryBank_outgoingOwned

private theorem s2Step78EntryGv_distinct : (s2Step78EntryGvRow.sign::s2Step78EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step78EntryGv_owned : (s2Step78EntryGvRow.sign::s2Step78EntryGvRow.payload).toFinset⊆s2Step78EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step78EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step78EntryGv_reserved : s2Step78EntryGvBefore.reserve s2Step78EntryGvFresh.toFinset=some s2Step78EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step78EntryGvFresh,arenaWires]
  · norm_num [s2Step78EntryGvBefore,s2Step78EntryFBefore,s2Step78EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step78EntryGvAfter,s2Step78EntryGvBefore,s2Step78EntryFBefore,s2Step78EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step78EntryGv_checked : planRowResizeLog s2Step78EntryGvBefore s2Step78EntryGvRow 53 s2Step78EntryGvFresh=
    some (s2Step78EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840],771⟩,growRow 771 s2Step78EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step78EntryGvBefore s2Step78EntryGvAfter s2Step78EntryGvRow 53 s2Step78EntryGvFresh
    s2Step78EntryGv_distinct s2Step78EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step78EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step78EntryGvRow.payload++s2Step78EntryGvFresh) s2Step78EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step78EntryBank_rows : planWindowRowsLog s2Step78EntryFBefore [(s2Step78EntryFRow,229),(s2Step78EntryGRow,229),(s2Step78EntryFvRow,53),(s2Step78EntryGvRow,53)] [s2Step78EntryFFresh,s2Step78EntryGFresh,s2Step78EntryFvFresh,s2Step78EntryGvFresh]=
    some (s2Step78EntryGvAfter,[s2Step78EntryFOut,s2Step78EntryGOut,s2Step78EntryFvOut,s2Step78EntryGvOut],(growRow 768 s2Step78EntryFFresh ++ (growRow 769 s2Step78EntryGFresh ++ (growRow 770 s2Step78EntryFvFresh ++ (growRow 771 s2Step78EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step78EntryGvAfter [] []=some (s2Step78EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step78EntryGvBefore s2Step78EntryGvAfter s2Step78EntryGvAfter
    s2Step78EntryGvRow s2Step78EntryGvOut 53 s2Step78EntryGvFresh [] [] []
    (growRow 771 s2Step78EntryGvFresh) ([]) s2Step78EntryGv_Incoming s2Step78EntryGv_checked h4 s2Step78EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step78EntryFvBefore s2Step78EntryFvAfter s2Step78EntryGvAfter
    s2Step78EntryFvRow s2Step78EntryFvOut 53 s2Step78EntryFvFresh [(s2Step78EntryGvRow,53)] [s2Step78EntryGvFresh] [s2Step78EntryGvOut]
    (growRow 770 s2Step78EntryFvFresh) ((growRow 771 s2Step78EntryGvFresh ++ [])) s2Step78EntryFv_Incoming s2Step78EntryFv_checked h3 s2Step78EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step78EntryGBefore s2Step78EntryGAfter s2Step78EntryGvAfter
    s2Step78EntryGRow s2Step78EntryGOut 229 s2Step78EntryGFresh [(s2Step78EntryFvRow,53),(s2Step78EntryGvRow,53)] [s2Step78EntryFvFresh,s2Step78EntryGvFresh] [s2Step78EntryFvOut,s2Step78EntryGvOut]
    (growRow 769 s2Step78EntryGFresh) ((growRow 770 s2Step78EntryFvFresh ++ (growRow 771 s2Step78EntryGvFresh ++ []))) s2Step78EntryG_Incoming s2Step78EntryG_checked h2 s2Step78EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step78EntryFBefore s2Step78EntryFAfter s2Step78EntryGvAfter
    s2Step78EntryFRow s2Step78EntryFOut 229 s2Step78EntryFFresh [(s2Step78EntryGRow,229),(s2Step78EntryFvRow,53),(s2Step78EntryGvRow,53)] [s2Step78EntryGFresh,s2Step78EntryFvFresh,s2Step78EntryGvFresh] [s2Step78EntryGOut,s2Step78EntryFvOut,s2Step78EntryGvOut]
    (growRow 768 s2Step78EntryFFresh) ((growRow 769 s2Step78EntryGFresh ++ (growRow 770 s2Step78EntryFvFresh ++ (growRow 771 s2Step78EntryGvFresh ++ [])))) s2Step78EntryF_Incoming s2Step78EntryF_checked h1 s2Step78EntryF_Outgoing
  exact h0

private theorem s2Step78EntryBank_checked : compileHmrBankResizeLog .entry s2Step78EntryFBefore ⟨s2Step78EntryFRow,s2Step78EntryGRow,s2Step78EntryFvRow,s2Step78EntryGvRow⟩ ⟨229,229,53,53⟩ [s2Step78EntryFFresh,s2Step78EntryGFresh,s2Step78EntryFvFresh,s2Step78EntryGvFresh]=
    some (s2Step78EntryGvAfter,⟨s2Step78EntryFOut,s2Step78EntryGOut,s2Step78EntryFvOut,s2Step78EntryGvOut⟩,(growRow 768 s2Step78EntryFFresh ++ (growRow 769 s2Step78EntryGFresh ++ (growRow 770 s2Step78EntryFvFresh ++ (growRow 771 s2Step78EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step78EntryBank_rows]
  rfl

private def s2Step78ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<836) ∨ (837≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step78ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step78ExitFBefore : Arena := s2Step78ExitGAfter

private def s2Step78ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 826],768⟩

private def s2Step78ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 845],770⟩

private def s2Step78ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 782],769⟩

private def s2Step78ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 844],771⟩

private theorem s2Step78ExitBank_incomingDistinct : ([s2Step78ExitGRow,s2Step78ExitFRow,s2Step78ExitFvRow,s2Step78ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step78ExitF_Incoming : rowsOwned s2Step78ExitFBefore [s2Step78ExitFRow,s2Step78ExitFvRow,s2Step78ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step78ExitGRow,s2Step78ExitFRow,s2Step78ExitFvRow,s2Step78ExitGvRow] 1 s2Step78ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step78ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step78ExitBank_outgoingOwned : rowsOwned s2Step78ExitGvAfter [s2Step78ExitGOut,s2Step78ExitFOut,s2Step78ExitFvOut,s2Step78ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step78ExitGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step78ExitF_Outgoing : rowsOwned s2Step78ExitGvAfter [s2Step78ExitFOut,s2Step78ExitFvOut,s2Step78ExitGvOut] :=
  hmrRows_owned_drop s2Step78ExitGvAfter [s2Step78ExitGOut,s2Step78ExitFOut,s2Step78ExitFvOut,s2Step78ExitGvOut] 1 s2Step78ExitBank_outgoingOwned

private theorem s2Step78ExitF_distinct : (s2Step78ExitFRow.sign::s2Step78ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step78ExitF_owned : (s2Step78ExitFRow.sign::s2Step78ExitFRow.payload).toFinset⊆s2Step78ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step78ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step78ExitF_retired : s2Step78ExitFBefore.retireSet s2Step78ExitFExtra.toFinset=s2Step78ExitFAfter := by
  unfold Arena.retireSet s2Step78ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step78ExitFBefore,s2Step78ExitGAfter,s2Step78ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step78ExitF_checked : planRowResizeLog s2Step78ExitFBefore s2Step78ExitFRow 229 []=
    some (s2Step78ExitFAfter,s2Step78ExitFOut,shrinkRow 768 s2Step78ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step78ExitFBefore s2Step78ExitFRow 229 s2Step78ExitF_distinct s2Step78ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step78ExitFRow.payload.take 229) s2Step78ExitFRow.sign=s2Step78ExitFOut := by decide +kernel
  have hi : s2Step78ExitFRow.payload.drop 229=s2Step78ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step78ExitF_retired] at result
  exact result

private def s2Step78ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<836) ∨ (837≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step78ExitFvBefore : Arena := s2Step78ExitFAfter

private theorem s2Step78ExitFv_Incoming : rowsOwned s2Step78ExitFvBefore [s2Step78ExitFvRow,s2Step78ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step78ExitGRow,s2Step78ExitFRow,s2Step78ExitFvRow,s2Step78ExitGvRow] 2 s2Step78ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step78ExitFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<836) ∨ (837≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step78ExitFv_Outgoing : rowsOwned s2Step78ExitGvAfter [s2Step78ExitFvOut,s2Step78ExitGvOut] :=
  hmrRows_owned_drop s2Step78ExitGvAfter [s2Step78ExitGOut,s2Step78ExitFOut,s2Step78ExitFvOut,s2Step78ExitGvOut] 2 s2Step78ExitBank_outgoingOwned

private theorem s2Step78ExitFv_distinct : (s2Step78ExitFvRow.sign::s2Step78ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step78ExitFv_owned : (s2Step78ExitFvRow.sign::s2Step78ExitFvRow.payload).toFinset⊆s2Step78ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step78ExitFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<836) ∨ (837≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step78ExitFv_retired : s2Step78ExitFvBefore.retireSet s2Step78ExitFvExtra.toFinset=s2Step78ExitFvAfter := by
  unfold Arena.retireSet s2Step78ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step78ExitFvBefore,s2Step78ExitFAfter,s2Step78ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step78ExitFv_checked : planRowResizeLog s2Step78ExitFvBefore s2Step78ExitFvRow 53 []=
    some (s2Step78ExitFvAfter,s2Step78ExitFvOut,shrinkRow 770 s2Step78ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step78ExitFvBefore s2Step78ExitFvRow 53 s2Step78ExitFv_distinct s2Step78ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step78ExitFvRow.payload.take 53) s2Step78ExitFvRow.sign=s2Step78ExitFvOut := by decide +kernel
  have hi : s2Step78ExitFvRow.payload.drop 53=s2Step78ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step78ExitFv_retired] at result
  exact result

private def s2Step78ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private theorem s2Step78ExitG_Incoming : rowsOwned s2Step78ExitGBefore [s2Step78ExitGRow,s2Step78ExitFRow,s2Step78ExitFvRow,s2Step78ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step78ExitGRow,s2Step78ExitFRow,s2Step78ExitFvRow,s2Step78ExitGvRow] 0 s2Step78ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step78ExitGBefore (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step78ExitG_Outgoing : rowsOwned s2Step78ExitGvAfter [s2Step78ExitGOut,s2Step78ExitFOut,s2Step78ExitFvOut,s2Step78ExitGvOut] :=
  hmrRows_owned_drop s2Step78ExitGvAfter [s2Step78ExitGOut,s2Step78ExitFOut,s2Step78ExitFvOut,s2Step78ExitGvOut] 0 s2Step78ExitBank_outgoingOwned

private theorem s2Step78ExitG_distinct : (s2Step78ExitGRow.sign::s2Step78ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step78ExitG_owned : (s2Step78ExitGRow.sign::s2Step78ExitGRow.payload).toFinset⊆s2Step78ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step78ExitGBefore (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step78ExitG_retired : s2Step78ExitGBefore.retireSet s2Step78ExitGExtra.toFinset=s2Step78ExitGAfter := by
  unfold Arena.retireSet s2Step78ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step78ExitGBefore,s2Step78ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step78ExitG_checked : planRowResizeLog s2Step78ExitGBefore s2Step78ExitGRow 229 []=
    some (s2Step78ExitGAfter,s2Step78ExitGOut,shrinkRow 769 s2Step78ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step78ExitGBefore s2Step78ExitGRow 229 s2Step78ExitG_distinct s2Step78ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step78ExitGRow.payload.take 229) s2Step78ExitGRow.sign=s2Step78ExitGOut := by decide +kernel
  have hi : s2Step78ExitGRow.payload.drop 229=s2Step78ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step78ExitG_retired] at result
  exact result

private def s2Step78ExitGvBefore : Arena := s2Step78ExitFvAfter

private theorem s2Step78ExitGv_Incoming : rowsOwned s2Step78ExitGvBefore [s2Step78ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step78ExitGRow,s2Step78ExitFRow,s2Step78ExitFvRow,s2Step78ExitGvRow] 3 s2Step78ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step78ExitGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<836) ∨ (837≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step78ExitGv_Outgoing : rowsOwned s2Step78ExitGvAfter [s2Step78ExitGvOut] :=
  hmrRows_owned_drop s2Step78ExitGvAfter [s2Step78ExitGOut,s2Step78ExitFOut,s2Step78ExitFvOut,s2Step78ExitGvOut] 3 s2Step78ExitBank_outgoingOwned

private theorem s2Step78ExitGv_distinct : (s2Step78ExitGvRow.sign::s2Step78ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step78ExitGv_owned : (s2Step78ExitGvRow.sign::s2Step78ExitGvRow.payload).toFinset⊆s2Step78ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step78ExitGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<836) ∨ (837≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step78ExitGv_retired : s2Step78ExitGvBefore.retireSet s2Step78ExitGvExtra.toFinset=s2Step78ExitGvAfter := by
  unfold Arena.retireSet s2Step78ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step78ExitGvBefore,s2Step78ExitFvAfter,s2Step78ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step78ExitGv_checked : planRowResizeLog s2Step78ExitGvBefore s2Step78ExitGvRow 53 []=
    some (s2Step78ExitGvAfter,s2Step78ExitGvOut,shrinkRow 771 s2Step78ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step78ExitGvBefore s2Step78ExitGvRow 53 s2Step78ExitGv_distinct s2Step78ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step78ExitGvRow.payload.take 53) s2Step78ExitGvRow.sign=s2Step78ExitGvOut := by decide +kernel
  have hi : s2Step78ExitGvRow.payload.drop 53=s2Step78ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step78ExitGv_retired] at result
  exact result

private theorem s2Step78ExitBank_rows : planWindowRowsLog s2Step78ExitGBefore [(s2Step78ExitGRow,229),(s2Step78ExitFRow,229),(s2Step78ExitFvRow,53),(s2Step78ExitGvRow,53)] [[],[],[],[]]=
    some (s2Step78ExitGvAfter,[s2Step78ExitGOut,s2Step78ExitFOut,s2Step78ExitFvOut,s2Step78ExitGvOut],(shrinkRow 769 s2Step78ExitGExtra ++ (shrinkRow 768 s2Step78ExitFExtra ++ (shrinkRow 770 s2Step78ExitFvExtra ++ (shrinkRow 771 s2Step78ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step78ExitGvAfter [] []=some (s2Step78ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step78ExitGvBefore s2Step78ExitGvAfter s2Step78ExitGvAfter
    s2Step78ExitGvRow s2Step78ExitGvOut 53 [] [] [] []
    (shrinkRow 771 s2Step78ExitGvExtra) ([]) s2Step78ExitGv_Incoming s2Step78ExitGv_checked h4 s2Step78ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step78ExitFvBefore s2Step78ExitFvAfter s2Step78ExitGvAfter
    s2Step78ExitFvRow s2Step78ExitFvOut 53 [] [(s2Step78ExitGvRow,53)] [[]] [s2Step78ExitGvOut]
    (shrinkRow 770 s2Step78ExitFvExtra) ((shrinkRow 771 s2Step78ExitGvExtra ++ [])) s2Step78ExitFv_Incoming s2Step78ExitFv_checked h3 s2Step78ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step78ExitFBefore s2Step78ExitFAfter s2Step78ExitGvAfter
    s2Step78ExitFRow s2Step78ExitFOut 229 [] [(s2Step78ExitFvRow,53),(s2Step78ExitGvRow,53)] [[],[]] [s2Step78ExitFvOut,s2Step78ExitGvOut]
    (shrinkRow 768 s2Step78ExitFExtra) ((shrinkRow 770 s2Step78ExitFvExtra ++ (shrinkRow 771 s2Step78ExitGvExtra ++ []))) s2Step78ExitF_Incoming s2Step78ExitF_checked h2 s2Step78ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step78ExitGBefore s2Step78ExitGAfter s2Step78ExitGvAfter
    s2Step78ExitGRow s2Step78ExitGOut 229 [] [(s2Step78ExitFRow,229),(s2Step78ExitFvRow,53),(s2Step78ExitGvRow,53)] [[],[],[]] [s2Step78ExitFOut,s2Step78ExitFvOut,s2Step78ExitGvOut]
    (shrinkRow 769 s2Step78ExitGExtra) ((shrinkRow 768 s2Step78ExitFExtra ++ (shrinkRow 770 s2Step78ExitFvExtra ++ (shrinkRow 771 s2Step78ExitGvExtra ++ [])))) s2Step78ExitG_Incoming s2Step78ExitG_checked h1 s2Step78ExitG_Outgoing
  exact h0

private theorem s2Step78ExitBank_checked : compileHmrBankResizeLog .exit s2Step78ExitGBefore ⟨s2Step78ExitFRow,s2Step78ExitGRow,s2Step78ExitFvRow,s2Step78ExitGvRow⟩ ⟨229,229,53,53⟩ [[],[],[],[]]=
    some (s2Step78ExitGvAfter,⟨s2Step78ExitFOut,s2Step78ExitGOut,s2Step78ExitFvOut,s2Step78ExitGvOut⟩,(shrinkRow 769 s2Step78ExitGExtra ++ (shrinkRow 768 s2Step78ExitFExtra ++ (shrinkRow 770 s2Step78ExitFvExtra ++ (shrinkRow 771 s2Step78ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step78ExitBank_rows]
  rfl

private theorem s2Step78Add0_apart : Disjoint s2Step78Add0Arena.live s2Step78Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step78Add0Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step78Add0_card : s2Step78Add0Arena.live.card=868 := by
  decide +kernel

private theorem s2Step78Add0_borrowed : s2Step78Add0Arena.checkBorrow (hmrHybridCount s2Step78Add0Arena s2Step78Add0B.length) s2Step78Add0Work=some s2Step78Add0During := by
  have len : s2Step78Add0Work.length=hmrHybridCount s2Step78Add0Arena s2Step78Add0B.length := by
    rw [hmrHybridCount,s2Step78Add0_card]
    decide +kernel
  have nd : s2Step78Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step78Add0Arena s2Step78Add0During s2Step78Add0Work.toFinset s2Step78Add0_bounded s2Step78Add0_apart rfl

private theorem s2Step78Add0_distinct : (836::783::816::(s2Step78Add0A++s2Step78Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step78Add0_owned : (836::783::816::(s2Step78Add0A++s2Step78Add0B)).toFinset⊆s2Step78Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step78Add0Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step78Add0_checked : compileHmrHybridCinLog s2Step78Add0Arena 783 836 816 s2Step78Add0A s2Step78Add0B s2Step78Add0Work=some s2Step78Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step78Add0Arena s2Step78Add0During 783 836 816 s2Step78Add0A s2Step78Add0B s2Step78Add0Work
    (by decide +kernel) (by decide +kernel) s2Step78Add0_distinct
    (fun q hq => s2Step78Add0_owned (List.mem_toFinset.mpr hq)) s2Step78Add0_borrowed

private theorem s2Step78Add1_apart : Disjoint s2Step78Add1Arena.live s2Step78Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step78Add1Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step78Add1_card : s2Step78Add1Arena.live.card=868 := by
  decide +kernel

private theorem s2Step78Add1_borrowed : s2Step78Add1Arena.checkBorrow (hmrHybridCount s2Step78Add1Arena s2Step78Add1B.length) s2Step78Add1Work=some s2Step78Add1During := by
  have len : s2Step78Add1Work.length=hmrHybridCount s2Step78Add1Arena s2Step78Add1B.length := by
    rw [hmrHybridCount,s2Step78Add1_card]
    decide +kernel
  have nd : s2Step78Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step78Add1Arena s2Step78Add1During s2Step78Add1Work.toFinset s2Step78Add1_bounded s2Step78Add1_apart rfl

private theorem s2Step78Add1_distinct : (836::783::816::(s2Step78Add1A++s2Step78Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step78Add1_owned : (836::783::816::(s2Step78Add1A++s2Step78Add1B)).toFinset⊆s2Step78Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step78Add1Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step78Add1_checked : compileHmrHybridCinLog s2Step78Add1Arena 783 836 816 s2Step78Add1A s2Step78Add1B s2Step78Add1Work=some s2Step78Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step78Add1Arena s2Step78Add1During 783 836 816 s2Step78Add1A s2Step78Add1B s2Step78Add1Work
    (by decide +kernel) (by decide +kernel) s2Step78Add1_distinct
    (fun q hq => s2Step78Add1_owned (List.mem_toFinset.mpr hq)) s2Step78Add1_borrowed

private theorem s2Step78F4_apart : Disjoint (s2Step78Add0A++s2Step78Add0B).toFinset (s2Step78Add1A++s2Step78Add1B).toFinset := by
  have nd : ((s2Step78Add0A++s2Step78Add0B)++(s2Step78Add1A++s2Step78Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step78F4_carry : s2Step78F4FlagArena.checkBorrow 1 [816]=some s2Step78Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step78F4FlagArena,s2Step78HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step78F4FlagArena,s2Step78HeadFvAfter,s2Step78Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step78F4_distinct : (784::783::836::816::((s2Step78Add0A++s2Step78Add1A)++(s2Step78Add0B++s2Step78Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step78F4_flag : s2Step78HeadFvAfter.checkBorrow 1 [836]=some s2Step78F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step78HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step78F4_owned : (784::783::((s2Step78Add0A++s2Step78Add1A)++(s2Step78Add0B++s2Step78Add1B))).toFinset⊆s2Step78HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step78HeadFvAfter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step78F4_checked : compileHmrHybridF4Log s2Step78HeadFvAfter 784 783 s2Step78Add0A s2Step78Add0B s2Step78Add1A s2Step78Add1B [836] [816] s2Step78Add0Work s2Step78Add1Work=some s2Step78F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step78HeadFvAfter s2Step78F4FlagArena s2Step78Add0Arena s2Step78Add0During s2Step78Add1During 784 783
    s2Step78Add0A s2Step78Add0B s2Step78Add1A s2Step78Add1B [836] [816] s2Step78Add0Work s2Step78Add1Work
    (fun q hq => s2Step78F4_owned (List.mem_toFinset.mpr hq)) s2Step78F4_flag s2Step78F4_carry
    s2Step78F4_distinct s2Step78F4_apart s2Step78Add0_checked s2Step78Add1_checked

private theorem s2Step78Front_branch : s2Step78FrontSigmaArena.checkBorrow 1 [783]=some s2Step78HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step78FrontSigmaArena,s2Step78EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step78FrontSigmaArena,s2Step78EntryGvAfter,s2Step78HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step78Front_entry : HmrFrontEntryValid s2Step78EntryFBefore s2Step78FrontBank 229 53 ⟨229,229,53,53⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step78FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step78EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step78EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step78FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step78Front_sigma : s2Step78EntryGvAfter.checkBorrow 1 [784]=some s2Step78FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step78EntryGvAfter,arenaWires]
  · rfl

private def s2Step78HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step78HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step78HeadFBefore : Arena := s2Step78HeadGAfter

private def s2Step78HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740],768⟩

private def s2Step78HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827],770⟩

private def s2Step78HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228],769⟩

private def s2Step78HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840],771⟩

private theorem s2Step78HeadBank_incomingDistinct : ([s2Step78HeadGRow,s2Step78HeadFRow,s2Step78HeadGvRow,s2Step78HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step78HeadF_Incoming : rowsOwned s2Step78HeadFBefore [s2Step78HeadFRow,s2Step78HeadGvRow,s2Step78HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step78HeadGRow,s2Step78HeadFRow,s2Step78HeadGvRow,s2Step78HeadFvRow] 1 s2Step78HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step78HeadFBefore (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step78HeadBank_outgoingOwned : rowsOwned s2Step78HeadFvAfter [s2Step78HeadGOut,s2Step78HeadFOut,s2Step78HeadGvOut,s2Step78HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step78HeadFvAfter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step78HeadF_Outgoing : rowsOwned s2Step78HeadFvAfter [s2Step78HeadFOut,s2Step78HeadGvOut,s2Step78HeadFvOut] :=
  hmrRows_owned_drop s2Step78HeadFvAfter [s2Step78HeadGOut,s2Step78HeadFOut,s2Step78HeadGvOut,s2Step78HeadFvOut] 1 s2Step78HeadBank_outgoingOwned

private theorem s2Step78HeadF_distinct : (s2Step78HeadFRow.sign::s2Step78HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step78HeadF_owned : (s2Step78HeadFRow.sign::s2Step78HeadFRow.payload).toFinset⊆s2Step78HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step78HeadFBefore (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step78HeadF_reserved : s2Step78HeadFBefore.reserve s2Step78HeadFFresh.toFinset=some s2Step78HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step78HeadFFresh,arenaWires]
  · norm_num [s2Step78HeadFBefore,s2Step78HeadGAfter,s2Step78HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step78HeadFAfter,s2Step78HeadFBefore,s2Step78HeadGAfter,s2Step78HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step78HeadF_checked : planRowResizeLog s2Step78HeadFBefore s2Step78HeadFRow 230 s2Step78HeadFFresh=
    some (s2Step78HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 826],768⟩,growRow 768 s2Step78HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step78HeadFBefore s2Step78HeadFAfter s2Step78HeadFRow 230 s2Step78HeadFFresh
    s2Step78HeadF_distinct s2Step78HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step78HeadF_reserved
  have rowEq : WindowRow.mk (s2Step78HeadFRow.payload++s2Step78HeadFFresh) s2Step78HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 826],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step78HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step78HeadFvBefore : Arena := s2Step78HeadGvAfter

private theorem s2Step78HeadFv_Incoming : rowsOwned s2Step78HeadFvBefore [s2Step78HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step78HeadGRow,s2Step78HeadFRow,s2Step78HeadGvRow,s2Step78HeadFvRow] 3 s2Step78HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step78HeadFvBefore (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step78HeadFv_Outgoing : rowsOwned s2Step78HeadFvAfter [s2Step78HeadFvOut] :=
  hmrRows_owned_drop s2Step78HeadFvAfter [s2Step78HeadGOut,s2Step78HeadFOut,s2Step78HeadGvOut,s2Step78HeadFvOut] 3 s2Step78HeadBank_outgoingOwned

private theorem s2Step78HeadFv_distinct : (s2Step78HeadFvRow.sign::s2Step78HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step78HeadFv_owned : (s2Step78HeadFvRow.sign::s2Step78HeadFvRow.payload).toFinset⊆s2Step78HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step78HeadFvBefore (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step78HeadFv_reserved : s2Step78HeadFvBefore.reserve s2Step78HeadFvFresh.toFinset=some s2Step78HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step78HeadFvFresh,arenaWires]
  · norm_num [s2Step78HeadFvBefore,s2Step78HeadGvAfter,s2Step78HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step78HeadFvAfter,s2Step78HeadFvBefore,s2Step78HeadGvAfter,s2Step78HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step78HeadFv_checked : planRowResizeLog s2Step78HeadFvBefore s2Step78HeadFvRow 54 s2Step78HeadFvFresh=
    some (s2Step78HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 845],770⟩,growRow 770 s2Step78HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step78HeadFvBefore s2Step78HeadFvAfter s2Step78HeadFvRow 54 s2Step78HeadFvFresh
    s2Step78HeadFv_distinct s2Step78HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step78HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step78HeadFvRow.payload++s2Step78HeadFvFresh) s2Step78HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 845],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step78HeadG_Incoming : rowsOwned s2Step78HeadGBefore [s2Step78HeadGRow,s2Step78HeadFRow,s2Step78HeadGvRow,s2Step78HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step78HeadGRow,s2Step78HeadFRow,s2Step78HeadGvRow,s2Step78HeadFvRow] 0 s2Step78HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step78HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step78HeadG_Outgoing : rowsOwned s2Step78HeadFvAfter [s2Step78HeadGOut,s2Step78HeadFOut,s2Step78HeadGvOut,s2Step78HeadFvOut] :=
  hmrRows_owned_drop s2Step78HeadFvAfter [s2Step78HeadGOut,s2Step78HeadFOut,s2Step78HeadGvOut,s2Step78HeadFvOut] 0 s2Step78HeadBank_outgoingOwned

private theorem s2Step78HeadG_distinct : (s2Step78HeadGRow.sign::s2Step78HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step78HeadG_owned : (s2Step78HeadGRow.sign::s2Step78HeadGRow.payload).toFinset⊆s2Step78HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step78HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step78HeadG_reserved : s2Step78HeadGBefore.reserve s2Step78HeadGFresh.toFinset=some s2Step78HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step78HeadGFresh,arenaWires]
  · norm_num [s2Step78HeadGBefore,s2Step78HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step78HeadGAfter,s2Step78HeadGBefore,s2Step78HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step78HeadG_checked : planRowResizeLog s2Step78HeadGBefore s2Step78HeadGRow 230 s2Step78HeadGFresh=
    some (s2Step78HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 782],769⟩,growRow 769 s2Step78HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step78HeadGBefore s2Step78HeadGAfter s2Step78HeadGRow 230 s2Step78HeadGFresh
    s2Step78HeadG_distinct s2Step78HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step78HeadG_reserved
  have rowEq : WindowRow.mk (s2Step78HeadGRow.payload++s2Step78HeadGFresh) s2Step78HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 782],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step78HeadGvBefore : Arena := s2Step78HeadFAfter

private theorem s2Step78HeadGv_Incoming : rowsOwned s2Step78HeadGvBefore [s2Step78HeadGvRow,s2Step78HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step78HeadGRow,s2Step78HeadFRow,s2Step78HeadGvRow,s2Step78HeadFvRow] 2 s2Step78HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step78HeadGvBefore (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step78HeadGv_Outgoing : rowsOwned s2Step78HeadFvAfter [s2Step78HeadGvOut,s2Step78HeadFvOut] :=
  hmrRows_owned_drop s2Step78HeadFvAfter [s2Step78HeadGOut,s2Step78HeadFOut,s2Step78HeadGvOut,s2Step78HeadFvOut] 2 s2Step78HeadBank_outgoingOwned

private theorem s2Step78HeadGv_distinct : (s2Step78HeadGvRow.sign::s2Step78HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step78HeadGv_owned : (s2Step78HeadGvRow.sign::s2Step78HeadGvRow.payload).toFinset⊆s2Step78HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step78HeadGvBefore (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step78HeadGv_reserved : s2Step78HeadGvBefore.reserve s2Step78HeadGvFresh.toFinset=some s2Step78HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step78HeadGvFresh,arenaWires]
  · norm_num [s2Step78HeadGvBefore,s2Step78HeadFAfter,s2Step78HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step78HeadGvAfter,s2Step78HeadGvBefore,s2Step78HeadFAfter,s2Step78HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step78HeadGv_checked : planRowResizeLog s2Step78HeadGvBefore s2Step78HeadGvRow 54 s2Step78HeadGvFresh=
    some (s2Step78HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 844],771⟩,growRow 771 s2Step78HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step78HeadGvBefore s2Step78HeadGvAfter s2Step78HeadGvRow 54 s2Step78HeadGvFresh
    s2Step78HeadGv_distinct s2Step78HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step78HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step78HeadGvRow.payload++s2Step78HeadGvFresh) s2Step78HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 844],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step78HeadBank_rows : planWindowRowsLog s2Step78HeadGBefore [(s2Step78HeadGRow,230),(s2Step78HeadFRow,230),(s2Step78HeadGvRow,54),(s2Step78HeadFvRow,54)] [s2Step78HeadGFresh,s2Step78HeadFFresh,s2Step78HeadGvFresh,s2Step78HeadFvFresh]=
    some (s2Step78HeadFvAfter,[s2Step78HeadGOut,s2Step78HeadFOut,s2Step78HeadGvOut,s2Step78HeadFvOut],(growRow 769 s2Step78HeadGFresh ++ (growRow 768 s2Step78HeadFFresh ++ (growRow 771 s2Step78HeadGvFresh ++ (growRow 770 s2Step78HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step78HeadFvAfter [] []=some (s2Step78HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step78HeadFvBefore s2Step78HeadFvAfter s2Step78HeadFvAfter
    s2Step78HeadFvRow s2Step78HeadFvOut 54 s2Step78HeadFvFresh [] [] []
    (growRow 770 s2Step78HeadFvFresh) ([]) s2Step78HeadFv_Incoming s2Step78HeadFv_checked h4 s2Step78HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step78HeadGvBefore s2Step78HeadGvAfter s2Step78HeadFvAfter
    s2Step78HeadGvRow s2Step78HeadGvOut 54 s2Step78HeadGvFresh [(s2Step78HeadFvRow,54)] [s2Step78HeadFvFresh] [s2Step78HeadFvOut]
    (growRow 771 s2Step78HeadGvFresh) ((growRow 770 s2Step78HeadFvFresh ++ [])) s2Step78HeadGv_Incoming s2Step78HeadGv_checked h3 s2Step78HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step78HeadFBefore s2Step78HeadFAfter s2Step78HeadFvAfter
    s2Step78HeadFRow s2Step78HeadFOut 230 s2Step78HeadFFresh [(s2Step78HeadGvRow,54),(s2Step78HeadFvRow,54)] [s2Step78HeadGvFresh,s2Step78HeadFvFresh] [s2Step78HeadGvOut,s2Step78HeadFvOut]
    (growRow 768 s2Step78HeadFFresh) ((growRow 771 s2Step78HeadGvFresh ++ (growRow 770 s2Step78HeadFvFresh ++ []))) s2Step78HeadF_Incoming s2Step78HeadF_checked h2 s2Step78HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step78HeadGBefore s2Step78HeadGAfter s2Step78HeadFvAfter
    s2Step78HeadGRow s2Step78HeadGOut 230 s2Step78HeadGFresh [(s2Step78HeadFRow,230),(s2Step78HeadGvRow,54),(s2Step78HeadFvRow,54)] [s2Step78HeadFFresh,s2Step78HeadGvFresh,s2Step78HeadFvFresh] [s2Step78HeadFOut,s2Step78HeadGvOut,s2Step78HeadFvOut]
    (growRow 769 s2Step78HeadGFresh) ((growRow 768 s2Step78HeadFFresh ++ (growRow 771 s2Step78HeadGvFresh ++ (growRow 770 s2Step78HeadFvFresh ++ [])))) s2Step78HeadG_Incoming s2Step78HeadG_checked h1 s2Step78HeadG_Outgoing
  exact h0

private theorem s2Step78HeadBank_checked : compileHmrBankResizeLog .headroom s2Step78HeadGBefore ⟨s2Step78HeadFRow,s2Step78HeadGRow,s2Step78HeadFvRow,s2Step78HeadGvRow⟩ ⟨230,230,54,54⟩ [s2Step78HeadGFresh,s2Step78HeadFFresh,s2Step78HeadGvFresh,s2Step78HeadFvFresh]=
    some (s2Step78HeadFvAfter,⟨s2Step78HeadFOut,s2Step78HeadGOut,s2Step78HeadFvOut,s2Step78HeadGvOut⟩,(growRow 769 s2Step78HeadGFresh ++ (growRow 768 s2Step78HeadFFresh ++ (growRow 771 s2Step78HeadGvFresh ++ (growRow 770 s2Step78HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step78HeadBank_rows]
  rfl

private theorem s2Step78Front_checked : compileHmrSourceFrontLog s2Step78EntryFBefore s2Step78FrontBank 229 53 ⟨229,229,53,53⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step78FrontLog=some s2Step78FrontPlan := by
  have pairEq : s2Step78FrontPair=⟨s2Step78HeadFRow,s2Step78HeadGRow,s2Step78HeadFvRow,s2Step78HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step78FrontHead=⟨s2Step78ExitFRow,s2Step78ExitGRow,s2Step78ExitFvRow,s2Step78ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step78Add0A=s2Step78FrontHead.f.wires := by decide +kernel
  have gEq : s2Step78Add0B=s2Step78FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step78Add1A=s2Step78FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step78Add1B=s2Step78FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step78EntryFBefore s2Step78FrontBank 229 53 ⟨229,229,53,53⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step78FrontLog s2Step78FrontPlan
  · exact s2Step78Front_entry
  · exact s2Step78EntryBank_checked
  · exact s2Step78Front_sigma
  · rfl
  · exact s2Step78Front_branch
  · rfl
  · simpa only [s2Step78FrontPlan,pairEq] using s2Step78HeadBank_checked
  · simpa only [s2Step78FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step78F4_checked
  · exact s2Step78Counter_checked
  · rfl
  · simpa only [s2Step78FrontPlan,headEq] using s2Step78ExitBank_checked

private theorem s2Step78Complete_explicit_checked : compileHmrEarlyStepLog s2Step78EntryFBefore s2Step78FrontBank 229 53 ⟨229,229,53,53⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 30 s2Step78CompleteLog=some s2Step78CompletePlan := by
  let Q := s2Step78EarlyControlPlan
  have hq := s2Step78EarlyControl_plan_checked
  have fv1 : s2Step78CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step78CompleteOut.fv.payload[2]?.getD s2Step78CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step78CompleteOut.fv.payload[3]?.getD s2Step78CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step78CompleteOut.fv.payload[4]?.getD s2Step78CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step78EntryFBefore s2Step78EarlyControlArena s2Step78FrontBank 229 53 ⟨229,229,53,53⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 30 s2Step78CompleteLog s2Step78FrontPlan Q
    s2Step78Front_checked s2Step78Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step78Complete_owned s2Step78Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step78EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 777 784 s2Step78CompleteOut.fv.second (s2Step78CompleteOut.fv.payload[2]?.getD s2Step78CompleteOut.fv.sign) (s2Step78CompleteOut.fv.payload[3]?.getD s2Step78CompleteOut.fv.sign) (s2Step78CompleteOut.fv.payload[4]?.getD s2Step78CompleteOut.fv.sign) 783 30 s2Step78EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep78Arena : Arena := s2Step78EntryFBefore
def s2PrivateStep78Bank : WindowBank := s2Step78FrontBank
def s2PrivateStep78Spec : HmrSourceWalkStepLog := ⟨229,53,⟨229,229,53,53⟩,30,.early s2Step78CompleteLog⟩
def s2PrivateStep78Plan : HmrSourceStepPlan := .early s2Step78CompletePlan
theorem s2PrivateStep78_source : s2PrivateStep78Spec=s2ObservedLogs64[14] := rfl
theorem s2PrivateStep78_checked : compileHmrSourceStepLog s2PrivateStep78Arena s2PrivateStep78Bank
    s2PrivateStep78Spec.fgWidth s2PrivateStep78Spec.vWidth s2PrivateStep78Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872]
    6 498 78 s2PrivateStep78Spec.need none s2PrivateStep78Spec.log=some s2PrivateStep78Plan := by
  change compileHmrSourceStepLog s2Step78EntryFBefore s2Step78FrontBank 229 53 ⟨229,229,53,53⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 6 498 78 30 none (.early s2Step78CompleteLog)=some (.early s2Step78CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 78<498)]
  rw [s2Step78Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
