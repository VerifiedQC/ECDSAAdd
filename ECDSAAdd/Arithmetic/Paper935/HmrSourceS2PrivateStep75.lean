import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep73
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

private def s2Step75CompleteMoves : List (Wire × Wire) := [(784,230)]

private def s2Step75EarlyControlLog : HmrEarlyControlLog := ⟨[784, 831, 816, 827, 844],[826],[846],[847, 849, 851, 867, 873, 874],[]⟩

private def s2Step75FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [814]],[[827], [816], [831], [835]],[[], [], [], []]⟩,[845],[836],[844],[826],[846, 847, 849, 851, 867, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[846, 847, 849, 851, 867, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919],[844, 826, 846, 847]⟩

private def s2Step75CompleteLog : HmrEarlyStepLog := ⟨s2Step75FrontLog,s2Step75CompleteMoves,s2Step75EarlyControlLog⟩

private def s2Step75ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742],768⟩

private def s2Step75ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835],770⟩

private def s2Step75ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229],769⟩

private def s2Step75ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814],771⟩

private def s2Step75FrontOut : WindowBank := ⟨s2Step75ExitFOut,s2Step75ExitGOut,s2Step75ExitFvOut,s2Step75ExitGvOut⟩

private def s2Step75CompleteOut : WindowBank := s2Step75FrontOut.repacked s2Step75CompleteMoves

private def s2Step75EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step75EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step75EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step75EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step75EarlyControlPositiveArena,[826],s2Step75EarlyControlEqualityArena,[846],⟨⟨845,false⟩,[⟨⟨826,false⟩,846⟩]⟩⟩

private def s2Step75EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<875)),Finset.filter_subset _ _⟩

private def s2Step75EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<875)),Finset.filter_subset _ _⟩

private def s2Step75EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step75EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step75EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step75EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step75EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,784⟩,⟨⟨774,false⟩,831⟩,⟨⟨775,false⟩,816⟩,⟨⟨776,false⟩,827⟩,⟨⟨777,false⟩,844⟩]⟩

private def s2Step75EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step75EarlyControlZeroArena,s2Step75EarlyControlZeroPlan,s2Step75EarlyControlClassPlan,s2Step75EarlyControlFlagArena,s2Step75EarlyControlFittedArena,s2Step75EarlyControlHistoryArena,s2Step75EarlyControlSigmaArena,s2Step75EarlyControlOutputArena,s2Step75EarlyControlLog⟩

private def s2Step75CounterWork : List Wire := [844, 826, 846, 847]

private theorem s2Step75Counter_bounded : s2Step75CounterWork.toFinset⊆arenaWires := by norm_num [s2Step75CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step75HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step75CounterDuring : Arena := ⟨s2Step75HeadFvAfter.live∪s2Step75CounterWork.toFinset,Finset.union_subset s2Step75HeadFvAfter.bounded s2Step75Counter_bounded⟩

private def s2Step75EntryFFresh : List Wire := []

private def s2Step75EntryFvFresh : List Wire := []

private def s2Step75EntryGFresh : List Wire := []

private def s2Step75EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<835) ∨ (837≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step75EntryGvFresh : List Wire := [814]

private def s2Step75ExitFExtra : List Wire := [816]

private def s2Step75ExitGExtra : List Wire := [230, 827]

private def s2Step75ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<230) ∨ (231≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step75ExitGvExtra : List Wire := [831]

private def s2Step75Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step75Add0Work : List Wire := [846, 847, 849, 851, 867, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step75Add0_bounded : s2Step75Add0Work.toFinset⊆arenaWires := by
  have h : s2Step75Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step75Add0During : Arena := ⟨s2Step75Add0Arena.live∪s2Step75Add0Work.toFinset,Finset.union_subset s2Step75Add0Arena.bounded s2Step75Add0_bounded⟩

private def s2Step75Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step75Add1Work : List Wire := [846, 847, 849, 851, 867, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919]

private theorem s2Step75Add1_bounded : s2Step75Add1Work.toFinset⊆arenaWires := by
  have h : s2Step75Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step75Add1During : Arena := ⟨s2Step75Add1Arena.live∪s2Step75Add1Work.toFinset,Finset.union_subset s2Step75Add1Arena.bounded s2Step75Add1_bounded⟩

private def s2Step75F4FlagArena : Arena := ⟨s2Step75HeadFvAfter.live∪{844},Finset.union_subset s2Step75HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step75F4Plan : HmrHybridF4Plan := ⟨s2Step75F4FlagArena,[844],s2Step75Add0Arena,[826],s2Step75Add0During,s2Step75Add0Work,s2Step75Add1During,s2Step75Add1Work⟩

private def s2Step75HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 816],768⟩

private def s2Step75HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835],770⟩

private def s2Step75HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 827],769⟩

private def s2Step75HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831],771⟩

private def s2Step75FrontHead : WindowBank := ⟨s2Step75HeadFOut,s2Step75HeadGOut,s2Step75HeadFvOut,s2Step75HeadGvOut⟩

private def s2Step75EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742],768⟩

private def s2Step75EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834],770⟩

private def s2Step75EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230],769⟩

private def s2Step75EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814],771⟩

private def s2Step75FrontPair : WindowBank := ⟨s2Step75EntryFOut,s2Step75EntryGOut,s2Step75EntryFvOut,s2Step75EntryGvOut⟩

private def s2Step75FrontSigmaArena : Arena := ⟨s2Step75EntryGvAfter.live∪{845},Finset.union_subset s2Step75EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step75HeadFFresh : List Wire := [816]

private def s2Step75HeadFvFresh : List Wire := [835]

private def s2Step75HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step75HeadGFresh : List Wire := [827]

private def s2Step75HeadGvFresh : List Wire := [831]

private def s2Step75FrontPlan : HmrSourceFront := ⟨s2Step75EntryGvAfter,s2Step75FrontPair,(growRow 768 s2Step75EntryFFresh ++ (growRow 769 s2Step75EntryGFresh ++ (growRow 770 s2Step75EntryFvFresh ++ (growRow 771 s2Step75EntryGvFresh ++ [])))),s2Step75FrontSigmaArena,[845],s2Step75HeadGBefore,[836],
  s2Step75HeadFvAfter,s2Step75FrontHead,(growRow 769 s2Step75HeadGFresh ++ (growRow 768 s2Step75HeadFFresh ++ (growRow 771 s2Step75HeadGvFresh ++ (growRow 770 s2Step75HeadFvFresh ++ [])))),s2Step75F4Plan,s2Step75CounterDuring,s2Step75CounterWork,s2Step75ExitGvAfter,s2Step75FrontOut,(shrinkRow 769 s2Step75ExitGExtra ++ (shrinkRow 768 s2Step75ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step75ExitGvExtra ++ []))))⟩

private def s2Step75CompletePlan : HmrEarlyStepPlan := ⟨s2Step75FrontPlan,s2Step75EarlyControlArena,s2Step75EarlyControlPlan,s2Step75CompleteMoves⟩

private theorem s2Step75Complete_apart : List.Disjoint (s2Step75CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [845, 836, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] := by
  have nd : ((s2Step75CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[845, 836, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step75Complete_owned : (s2Step75CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step75EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step75EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private def s2Step75CompleteMoveArena : Arena := ⟨s2Step75ExitGvAfter.live∪{230},Finset.union_subset s2Step75ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step75Complete_repack : s2Step75ExitGvAfter.checkRepack s2Step75CompleteMoves=some s2Step75EarlyControlArena := by
  have owned : 784∈s2Step75ExitGvAfter.live := by norm_num [s2Step75ExitGvAfter,arenaWires]
  have reserve : s2Step75ExitGvAfter.reserve {230}=some s2Step75CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step75ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step75CompleteMoveArena.retireSet {784}=s2Step75EarlyControlArena := by
    unfold Arena.retireSet s2Step75EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step75CompleteMoveArena,s2Step75ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step75CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step75CompleteMoveArena.retireSet {784}).checkRepack []=some s2Step75EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step75EarlyControl_branchOwned : ([836] : List Wire).toFinset⊆s2Step75EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step75EarlyControlSigmaArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step75EarlyControl_branch : compileHmrBranchRetirement s2Step75EarlyControlSigmaArena 836=some s2Step75EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step75EarlyControl_branchOwned
  · ext q
    simp [s2Step75EarlyControlOutputArena,s2Step75EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step75EarlyControl_classEqualityBorrow : s2Step75EarlyControlPositiveArena.checkBorrow (([845, 826] : List Wire).length-1) s2Step75EarlyControlLog.classWork=some s2Step75EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step75EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step75EarlyControlPositiveArena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
      decide +kernel
    · ext q
      simp [s2Step75EarlyControlEqualityArena,s2Step75EarlyControlPositiveArena,s2Step75EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step75EarlyControl_classEqualityOwned : ([845, 826] : List Wire).toFinset⊆s2Step75EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step75EarlyControlPositiveArena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step75EarlyControl_classEquality : compileHmrEqualityLog s2Step75EarlyControlPositiveArena [845, 826] 0 s2Step75EarlyControlLog.classWork=some (s2Step75EarlyControlEqualityArena,s2Step75EarlyControlLog.classWork,s2Step75EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step75EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step75EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step75EarlyControl_classOwned : ([777, 844, 845] : List Wire).toFinset⊆s2Step75EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step75EarlyControlZeroArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step75EarlyControl_positiveBorrow : s2Step75EarlyControlZeroArena.checkBorrow (1) s2Step75EarlyControlLog.positiveWork=some s2Step75EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step75EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step75EarlyControlZeroArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
      decide +kernel
    · ext q
      simp [s2Step75EarlyControlPositiveArena,s2Step75EarlyControlZeroArena,s2Step75EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step75EarlyControl_class : compileHmrSourceClassLog s2Step75EarlyControlZeroArena false 777 s2Step75EarlyControlZeroPlan.top 0 845 s2Step75EarlyControlLog.positiveWork s2Step75EarlyControlLog.classWork=some s2Step75EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step75EarlyControlClassPlan s2Step75EarlyControlZeroArena false 777 s2Step75EarlyControlZeroPlan.top 0 845
  constructor
  · decide +kernel
  · exact s2Step75EarlyControl_classOwned
  · exact s2Step75EarlyControl_positiveBorrow
  · exact s2Step75EarlyControl_classEquality

private theorem s2Step75EarlyControl_entryRecordOwned : ([836, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] : List Wire).toFinset⊆s2Step75EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step75EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step75EarlyControl_entrySigmaOwned : ([845, 254] : List Wire).toFinset⊆s2Step75EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step75EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step75EarlyControl_fitBorrow : s2Step75EarlyControlFlagArena.checkBorrow ((30-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] : List Wire).length)) s2Step75EarlyControlLog.recordFresh=some s2Step75EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step75EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step75EarlyControlFlagArena (fun q => (0≤q ∧ q<875)) rfl
      decide +kernel
    · ext q
      simp [s2Step75EarlyControlFittedArena,s2Step75EarlyControlFlagArena,s2Step75EarlyControlLog,arenaWires]

private theorem s2Step75EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] : List Wire).toFinset⊆s2Step75EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step75EarlyControlFlagArena (fun q => (0≤q ∧ q<875)) rfl
  decide +kernel

private theorem s2Step75EarlyControl_fit : compileHmrRecordGrowLog s2Step75EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 30 s2Step75EarlyControlLog.recordFresh=some s2Step75EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step75EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step75EarlyControl_fitBorrow

private theorem s2Step75EarlyControl_flagsBorrow : s2Step75EarlyControlEqualityArena.checkBorrow (6) s2Step75EarlyControlLog.flagWork=some s2Step75EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step75EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step75EarlyControlEqualityArena (fun q => (0≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
      decide +kernel
    · ext q
      simp [s2Step75EarlyControlFlagArena,s2Step75EarlyControlEqualityArena,s2Step75EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step75EarlyControl_flagsOwned : ([846, 253, 252, 251] : List Wire).toFinset⊆s2Step75EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step75EarlyControlEqualityArena (fun q => (0≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step75EarlyControl_flags : compileHmrFlagsLog s2Step75EarlyControlClassPlan.equalityArena s2Step75EarlyControlClassPlan.equality.top 253 252 251 s2Step75EarlyControlLog.flagWork=some s2Step75EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step75EarlyControl_flagsOwned⟩
  · exact s2Step75EarlyControl_flagsBorrow

private theorem s2Step75EarlyControl_historyBorrow : s2Step75EarlyControlArena.checkBorrow ((30-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] : List Wire).length)) s2Step75EarlyControlLog.recordFresh=some s2Step75EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step75EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step75EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
      decide +kernel
    · ext q
      simp [s2Step75EarlyControlHistoryArena,s2Step75EarlyControlArena,s2Step75EarlyControlLog,arenaWires]

private theorem s2Step75EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] : List Wire).toFinset⊆s2Step75EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step75EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step75EarlyControl_history : compileHmrRecordGrowLog s2Step75EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 30 s2Step75EarlyControlLog.recordFresh=some s2Step75EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step75EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step75EarlyControl_historyBorrow

private theorem s2Step75EarlyControl_sigmaOwned : ([254, 845] : List Wire).toFinset⊆s2Step75EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step75EarlyControlHistoryArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step75EarlyControl_sigmaReleaseOwned : ([845] : List Wire).toFinset⊆s2Step75EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step75EarlyControlHistoryArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step75EarlyControl_sigmaRelease : s2Step75EarlyControlHistoryArena.release {845} (fun _ => false)=some s2Step75EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step75EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step75EarlyControlSigmaArena,s2Step75EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step75EarlyControl_sigma : compileHmrSigmaDropLog s2Step75EarlyControlHistoryArena false 0 0 254 845 []=some s2Step75EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step75EarlyControl_sigmaOwned⟩
  · exact s2Step75EarlyControl_sigmaRelease

private theorem s2Step75EarlyControl_zeroBorrow : s2Step75EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step75EarlyControlLog.zeroWork=some s2Step75EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step75EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step75EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
      decide +kernel
    · ext q
      simp [s2Step75EarlyControlZeroArena,s2Step75EarlyControlArena,s2Step75EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step75EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step75EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step75EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step75EarlyControl_zero : compileHmrEqualityLog s2Step75EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step75EarlyControlLog.zeroWork=some (s2Step75EarlyControlZeroArena,s2Step75EarlyControlLog.zeroWork,s2Step75EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step75EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step75EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step75EarlyControl_logged : s2Step75EarlyControlPlan.Logged s2Step75EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 777 845 254 253 252 251 836 30 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step75EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step75EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step75EarlyControl_zero
  · exact s2Step75EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step75EarlyControl_flags
  · exact s2Step75EarlyControl_fit
  · exact s2Step75EarlyControl_history
  · exact s2Step75EarlyControl_sigma
  · exact s2Step75EarlyControl_branch

private theorem s2Step75EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step75EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 777 845 254 253 252 251 836 30 s2Step75EarlyControlLog=some s2Step75EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step75EarlyControlPlan s2Step75EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 777 845 254 253 252 251 836 30 s2Step75EarlyControl_logged

private def s2Step75EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<835) ∨ (837≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step75EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742],768⟩

private def s2Step75EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834],770⟩

private def s2Step75EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230],769⟩

private def s2Step75EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822],771⟩

private def s2Step75FrontBank : WindowBank := ⟨s2Step75EntryFRow,s2Step75EntryGRow,s2Step75EntryFvRow,s2Step75EntryGvRow⟩

private def s2Step75Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 816, 768]

private def s2Step75Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 827, 769]

private def s2Step75Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 770]

private def s2Step75Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 771]

private theorem s2Step75Counter_apart : Disjoint s2Step75HeadFvAfter.live s2Step75CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step75HeadFvAfter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step75Counter_borrowed : s2Step75HeadFvAfter.checkBorrow 4 s2Step75CounterWork=some s2Step75CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step75HeadFvAfter s2Step75CounterDuring s2Step75CounterWork.toFinset s2Step75Counter_bounded s2Step75Counter_apart rfl

private theorem s2Step75Counter_owned : (845::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step75HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step75HeadFvAfter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step75Counter_checked : compileHmrCounterStepLog s2Step75HeadFvAfter true 845 [772, 773, 774, 775, 776, 777] s2Step75CounterWork=some s2Step75CounterDuring := by
  have owned : ∀q∈845::[772, 773, 774, 775, 776, 777],q∈s2Step75HeadFvAfter.live := fun q hq => s2Step75Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step75Counter_borrowed

private def s2Step75EntryFAfter : Arena := s2Step75EntryFBefore

private theorem s2Step75EntryBank_incomingDistinct : ([s2Step75EntryFRow,s2Step75EntryGRow,s2Step75EntryFvRow,s2Step75EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step75EntryF_Incoming : rowsOwned s2Step75EntryFBefore [s2Step75EntryFRow,s2Step75EntryGRow,s2Step75EntryFvRow,s2Step75EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step75EntryFRow,s2Step75EntryGRow,s2Step75EntryFvRow,s2Step75EntryGvRow] 0 s2Step75EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step75EntryFBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<835) ∨ (837≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step75EntryBank_outgoingOwned : rowsOwned s2Step75EntryGvAfter [s2Step75EntryFOut,s2Step75EntryGOut,s2Step75EntryFvOut,s2Step75EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step75EntryGvAfter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<835) ∨ (837≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step75EntryF_Outgoing : rowsOwned s2Step75EntryGvAfter [s2Step75EntryFOut,s2Step75EntryGOut,s2Step75EntryFvOut,s2Step75EntryGvOut] :=
  hmrRows_owned_drop s2Step75EntryGvAfter [s2Step75EntryFOut,s2Step75EntryGOut,s2Step75EntryFvOut,s2Step75EntryGvOut] 0 s2Step75EntryBank_outgoingOwned

private theorem s2Step75EntryF_distinct : (s2Step75EntryFRow.sign::s2Step75EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step75EntryF_owned : (s2Step75EntryFRow.sign::s2Step75EntryFRow.payload).toFinset⊆s2Step75EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step75EntryFBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<835) ∨ (837≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step75EntryF_reserved : s2Step75EntryFBefore.reserve s2Step75EntryFFresh.toFinset=some s2Step75EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step75EntryFFresh,arenaWires]
  · norm_num [s2Step75EntryFBefore,s2Step75EntryFFresh,arenaWires]
  · simp only [s2Step75EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step75EntryF_checked : planRowResizeLog s2Step75EntryFBefore s2Step75EntryFRow 231 s2Step75EntryFFresh=
    some (s2Step75EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742],768⟩,growRow 768 s2Step75EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step75EntryFBefore s2Step75EntryFAfter s2Step75EntryFRow 231 s2Step75EntryFFresh
    s2Step75EntryF_distinct s2Step75EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step75EntryF_reserved
  have rowEq : WindowRow.mk (s2Step75EntryFRow.payload++s2Step75EntryFFresh) s2Step75EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step75EntryFvAfter : Arena := s2Step75EntryFBefore

private def s2Step75EntryFvBefore : Arena := s2Step75EntryFBefore

private theorem s2Step75EntryFv_Incoming : rowsOwned s2Step75EntryFvBefore [s2Step75EntryFvRow,s2Step75EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step75EntryFRow,s2Step75EntryGRow,s2Step75EntryFvRow,s2Step75EntryGvRow] 2 s2Step75EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step75EntryFvBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<835) ∨ (837≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step75EntryFv_Outgoing : rowsOwned s2Step75EntryGvAfter [s2Step75EntryFvOut,s2Step75EntryGvOut] :=
  hmrRows_owned_drop s2Step75EntryGvAfter [s2Step75EntryFOut,s2Step75EntryGOut,s2Step75EntryFvOut,s2Step75EntryGvOut] 2 s2Step75EntryBank_outgoingOwned

private theorem s2Step75EntryFv_distinct : (s2Step75EntryFvRow.sign::s2Step75EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step75EntryFv_owned : (s2Step75EntryFvRow.sign::s2Step75EntryFvRow.payload).toFinset⊆s2Step75EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step75EntryFvBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<835) ∨ (837≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step75EntryFv_reserved : s2Step75EntryFvBefore.reserve s2Step75EntryFvFresh.toFinset=some s2Step75EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step75EntryFvFresh,arenaWires]
  · norm_num [s2Step75EntryFvBefore,s2Step75EntryFBefore,s2Step75EntryFvFresh,arenaWires]
  · simp only [s2Step75EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step75EntryFv_checked : planRowResizeLog s2Step75EntryFvBefore s2Step75EntryFvRow 51 s2Step75EntryFvFresh=
    some (s2Step75EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834],770⟩,growRow 770 s2Step75EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step75EntryFvBefore s2Step75EntryFvAfter s2Step75EntryFvRow 51 s2Step75EntryFvFresh
    s2Step75EntryFv_distinct s2Step75EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step75EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step75EntryFvRow.payload++s2Step75EntryFvFresh) s2Step75EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step75EntryGAfter : Arena := s2Step75EntryFBefore

private def s2Step75EntryGBefore : Arena := s2Step75EntryFBefore

private theorem s2Step75EntryG_Incoming : rowsOwned s2Step75EntryGBefore [s2Step75EntryGRow,s2Step75EntryFvRow,s2Step75EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step75EntryFRow,s2Step75EntryGRow,s2Step75EntryFvRow,s2Step75EntryGvRow] 1 s2Step75EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step75EntryGBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<835) ∨ (837≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step75EntryG_Outgoing : rowsOwned s2Step75EntryGvAfter [s2Step75EntryGOut,s2Step75EntryFvOut,s2Step75EntryGvOut] :=
  hmrRows_owned_drop s2Step75EntryGvAfter [s2Step75EntryFOut,s2Step75EntryGOut,s2Step75EntryFvOut,s2Step75EntryGvOut] 1 s2Step75EntryBank_outgoingOwned

private theorem s2Step75EntryG_distinct : (s2Step75EntryGRow.sign::s2Step75EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step75EntryG_owned : (s2Step75EntryGRow.sign::s2Step75EntryGRow.payload).toFinset⊆s2Step75EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step75EntryGBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<835) ∨ (837≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step75EntryG_reserved : s2Step75EntryGBefore.reserve s2Step75EntryGFresh.toFinset=some s2Step75EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step75EntryGFresh,arenaWires]
  · norm_num [s2Step75EntryGBefore,s2Step75EntryFBefore,s2Step75EntryGFresh,arenaWires]
  · simp only [s2Step75EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step75EntryG_checked : planRowResizeLog s2Step75EntryGBefore s2Step75EntryGRow 231 s2Step75EntryGFresh=
    some (s2Step75EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230],769⟩,growRow 769 s2Step75EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step75EntryGBefore s2Step75EntryGAfter s2Step75EntryGRow 231 s2Step75EntryGFresh
    s2Step75EntryG_distinct s2Step75EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step75EntryG_reserved
  have rowEq : WindowRow.mk (s2Step75EntryGRow.payload++s2Step75EntryGFresh) s2Step75EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step75EntryGvBefore : Arena := s2Step75EntryFBefore

private theorem s2Step75EntryGv_Incoming : rowsOwned s2Step75EntryGvBefore [s2Step75EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step75EntryFRow,s2Step75EntryGRow,s2Step75EntryFvRow,s2Step75EntryGvRow] 3 s2Step75EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step75EntryGvBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<835) ∨ (837≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step75EntryGv_Outgoing : rowsOwned s2Step75EntryGvAfter [s2Step75EntryGvOut] :=
  hmrRows_owned_drop s2Step75EntryGvAfter [s2Step75EntryFOut,s2Step75EntryGOut,s2Step75EntryFvOut,s2Step75EntryGvOut] 3 s2Step75EntryBank_outgoingOwned

private theorem s2Step75EntryGv_distinct : (s2Step75EntryGvRow.sign::s2Step75EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step75EntryGv_owned : (s2Step75EntryGvRow.sign::s2Step75EntryGvRow.payload).toFinset⊆s2Step75EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step75EntryGvBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<835) ∨ (837≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step75EntryGv_reserved : s2Step75EntryGvBefore.reserve s2Step75EntryGvFresh.toFinset=some s2Step75EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step75EntryGvFresh,arenaWires]
  · norm_num [s2Step75EntryGvBefore,s2Step75EntryFBefore,s2Step75EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step75EntryGvAfter,s2Step75EntryGvBefore,s2Step75EntryFBefore,s2Step75EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step75EntryGv_checked : planRowResizeLog s2Step75EntryGvBefore s2Step75EntryGvRow 51 s2Step75EntryGvFresh=
    some (s2Step75EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814],771⟩,growRow 771 s2Step75EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step75EntryGvBefore s2Step75EntryGvAfter s2Step75EntryGvRow 51 s2Step75EntryGvFresh
    s2Step75EntryGv_distinct s2Step75EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step75EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step75EntryGvRow.payload++s2Step75EntryGvFresh) s2Step75EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step75EntryBank_rows : planWindowRowsLog s2Step75EntryFBefore [(s2Step75EntryFRow,231),(s2Step75EntryGRow,231),(s2Step75EntryFvRow,51),(s2Step75EntryGvRow,51)] [s2Step75EntryFFresh,s2Step75EntryGFresh,s2Step75EntryFvFresh,s2Step75EntryGvFresh]=
    some (s2Step75EntryGvAfter,[s2Step75EntryFOut,s2Step75EntryGOut,s2Step75EntryFvOut,s2Step75EntryGvOut],(growRow 768 s2Step75EntryFFresh ++ (growRow 769 s2Step75EntryGFresh ++ (growRow 770 s2Step75EntryFvFresh ++ (growRow 771 s2Step75EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step75EntryGvAfter [] []=some (s2Step75EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step75EntryGvBefore s2Step75EntryGvAfter s2Step75EntryGvAfter
    s2Step75EntryGvRow s2Step75EntryGvOut 51 s2Step75EntryGvFresh [] [] []
    (growRow 771 s2Step75EntryGvFresh) ([]) s2Step75EntryGv_Incoming s2Step75EntryGv_checked h4 s2Step75EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step75EntryFvBefore s2Step75EntryFvAfter s2Step75EntryGvAfter
    s2Step75EntryFvRow s2Step75EntryFvOut 51 s2Step75EntryFvFresh [(s2Step75EntryGvRow,51)] [s2Step75EntryGvFresh] [s2Step75EntryGvOut]
    (growRow 770 s2Step75EntryFvFresh) ((growRow 771 s2Step75EntryGvFresh ++ [])) s2Step75EntryFv_Incoming s2Step75EntryFv_checked h3 s2Step75EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step75EntryGBefore s2Step75EntryGAfter s2Step75EntryGvAfter
    s2Step75EntryGRow s2Step75EntryGOut 231 s2Step75EntryGFresh [(s2Step75EntryFvRow,51),(s2Step75EntryGvRow,51)] [s2Step75EntryFvFresh,s2Step75EntryGvFresh] [s2Step75EntryFvOut,s2Step75EntryGvOut]
    (growRow 769 s2Step75EntryGFresh) ((growRow 770 s2Step75EntryFvFresh ++ (growRow 771 s2Step75EntryGvFresh ++ []))) s2Step75EntryG_Incoming s2Step75EntryG_checked h2 s2Step75EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step75EntryFBefore s2Step75EntryFAfter s2Step75EntryGvAfter
    s2Step75EntryFRow s2Step75EntryFOut 231 s2Step75EntryFFresh [(s2Step75EntryGRow,231),(s2Step75EntryFvRow,51),(s2Step75EntryGvRow,51)] [s2Step75EntryGFresh,s2Step75EntryFvFresh,s2Step75EntryGvFresh] [s2Step75EntryGOut,s2Step75EntryFvOut,s2Step75EntryGvOut]
    (growRow 768 s2Step75EntryFFresh) ((growRow 769 s2Step75EntryGFresh ++ (growRow 770 s2Step75EntryFvFresh ++ (growRow 771 s2Step75EntryGvFresh ++ [])))) s2Step75EntryF_Incoming s2Step75EntryF_checked h1 s2Step75EntryF_Outgoing
  exact h0

private theorem s2Step75EntryBank_checked : compileHmrBankResizeLog .entry s2Step75EntryFBefore ⟨s2Step75EntryFRow,s2Step75EntryGRow,s2Step75EntryFvRow,s2Step75EntryGvRow⟩ ⟨231,231,51,51⟩ [s2Step75EntryFFresh,s2Step75EntryGFresh,s2Step75EntryFvFresh,s2Step75EntryGvFresh]=
    some (s2Step75EntryGvAfter,⟨s2Step75EntryFOut,s2Step75EntryGOut,s2Step75EntryFvOut,s2Step75EntryGvOut⟩,(growRow 768 s2Step75EntryFFresh ++ (growRow 769 s2Step75EntryGFresh ++ (growRow 770 s2Step75EntryFvFresh ++ (growRow 771 s2Step75EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step75EntryBank_rows]
  rfl

private def s2Step75ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<230) ∨ (231≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step75ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<230) ∨ (231≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step75ExitFBefore : Arena := s2Step75ExitGAfter

private def s2Step75ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 816],768⟩

private def s2Step75ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835],770⟩

private def s2Step75ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 827],769⟩

private def s2Step75ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831],771⟩

private theorem s2Step75ExitBank_incomingDistinct : ([s2Step75ExitGRow,s2Step75ExitFRow,s2Step75ExitFvRow,s2Step75ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step75ExitF_Incoming : rowsOwned s2Step75ExitFBefore [s2Step75ExitFRow,s2Step75ExitFvRow,s2Step75ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step75ExitGRow,s2Step75ExitFRow,s2Step75ExitFvRow,s2Step75ExitGvRow] 1 s2Step75ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step75ExitFBefore (fun q => (0≤q ∧ q<230) ∨ (231≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step75ExitBank_outgoingOwned : rowsOwned s2Step75ExitGvAfter [s2Step75ExitGOut,s2Step75ExitFOut,s2Step75ExitFvOut,s2Step75ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step75ExitGvAfter (fun q => (0≤q ∧ q<230) ∨ (231≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step75ExitF_Outgoing : rowsOwned s2Step75ExitGvAfter [s2Step75ExitFOut,s2Step75ExitFvOut,s2Step75ExitGvOut] :=
  hmrRows_owned_drop s2Step75ExitGvAfter [s2Step75ExitGOut,s2Step75ExitFOut,s2Step75ExitFvOut,s2Step75ExitGvOut] 1 s2Step75ExitBank_outgoingOwned

private theorem s2Step75ExitF_distinct : (s2Step75ExitFRow.sign::s2Step75ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step75ExitF_owned : (s2Step75ExitFRow.sign::s2Step75ExitFRow.payload).toFinset⊆s2Step75ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step75ExitFBefore (fun q => (0≤q ∧ q<230) ∨ (231≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step75ExitF_retired : s2Step75ExitFBefore.retireSet s2Step75ExitFExtra.toFinset=s2Step75ExitFAfter := by
  unfold Arena.retireSet s2Step75ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step75ExitFBefore,s2Step75ExitGAfter,s2Step75ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step75ExitF_checked : planRowResizeLog s2Step75ExitFBefore s2Step75ExitFRow 231 []=
    some (s2Step75ExitFAfter,s2Step75ExitFOut,shrinkRow 768 s2Step75ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step75ExitFBefore s2Step75ExitFRow 231 s2Step75ExitF_distinct s2Step75ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step75ExitFRow.payload.take 231) s2Step75ExitFRow.sign=s2Step75ExitFOut := by decide +kernel
  have hi : s2Step75ExitFRow.payload.drop 231=s2Step75ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step75ExitF_retired] at result
  exact result

private def s2Step75ExitFvAfter : Arena := s2Step75ExitFAfter

private def s2Step75ExitFvBefore : Arena := s2Step75ExitFAfter

private theorem s2Step75ExitFv_Incoming : rowsOwned s2Step75ExitFvBefore [s2Step75ExitFvRow,s2Step75ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step75ExitGRow,s2Step75ExitFRow,s2Step75ExitFvRow,s2Step75ExitGvRow] 2 s2Step75ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step75ExitFvBefore (fun q => (0≤q ∧ q<230) ∨ (231≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step75ExitFv_Outgoing : rowsOwned s2Step75ExitGvAfter [s2Step75ExitFvOut,s2Step75ExitGvOut] :=
  hmrRows_owned_drop s2Step75ExitGvAfter [s2Step75ExitGOut,s2Step75ExitFOut,s2Step75ExitFvOut,s2Step75ExitGvOut] 2 s2Step75ExitBank_outgoingOwned

private theorem s2Step75ExitFv_distinct : (s2Step75ExitFvRow.sign::s2Step75ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step75ExitFv_owned : (s2Step75ExitFvRow.sign::s2Step75ExitFvRow.payload).toFinset⊆s2Step75ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step75ExitFvBefore (fun q => (0≤q ∧ q<230) ∨ (231≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step75ExitFv_reserved : s2Step75ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step75ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step75ExitFv_checked : planRowResizeLog s2Step75ExitFvBefore s2Step75ExitFvRow 52 []=
    some (s2Step75ExitFvAfter,s2Step75ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step75ExitFvBefore s2Step75ExitFvAfter s2Step75ExitFvRow 52 []
    s2Step75ExitFv_distinct s2Step75ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step75ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step75ExitFvRow.payload++[]) s2Step75ExitFvRow.sign=s2Step75ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step75ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private theorem s2Step75ExitG_Incoming : rowsOwned s2Step75ExitGBefore [s2Step75ExitGRow,s2Step75ExitFRow,s2Step75ExitFvRow,s2Step75ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step75ExitGRow,s2Step75ExitFRow,s2Step75ExitFvRow,s2Step75ExitGvRow] 0 s2Step75ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step75ExitGBefore (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step75ExitG_Outgoing : rowsOwned s2Step75ExitGvAfter [s2Step75ExitGOut,s2Step75ExitFOut,s2Step75ExitFvOut,s2Step75ExitGvOut] :=
  hmrRows_owned_drop s2Step75ExitGvAfter [s2Step75ExitGOut,s2Step75ExitFOut,s2Step75ExitFvOut,s2Step75ExitGvOut] 0 s2Step75ExitBank_outgoingOwned

private theorem s2Step75ExitG_distinct : (s2Step75ExitGRow.sign::s2Step75ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step75ExitG_owned : (s2Step75ExitGRow.sign::s2Step75ExitGRow.payload).toFinset⊆s2Step75ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step75ExitGBefore (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step75ExitG_retired : s2Step75ExitGBefore.retireSet s2Step75ExitGExtra.toFinset=s2Step75ExitGAfter := by
  unfold Arena.retireSet s2Step75ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step75ExitGBefore,s2Step75ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step75ExitG_checked : planRowResizeLog s2Step75ExitGBefore s2Step75ExitGRow 230 []=
    some (s2Step75ExitGAfter,s2Step75ExitGOut,shrinkRow 769 s2Step75ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step75ExitGBefore s2Step75ExitGRow 230 s2Step75ExitG_distinct s2Step75ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step75ExitGRow.payload.take 230) s2Step75ExitGRow.sign=s2Step75ExitGOut := by decide +kernel
  have hi : s2Step75ExitGRow.payload.drop 230=s2Step75ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step75ExitG_retired] at result
  exact result

private def s2Step75ExitGvBefore : Arena := s2Step75ExitFAfter

private theorem s2Step75ExitGv_Incoming : rowsOwned s2Step75ExitGvBefore [s2Step75ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step75ExitGRow,s2Step75ExitFRow,s2Step75ExitFvRow,s2Step75ExitGvRow] 3 s2Step75ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step75ExitGvBefore (fun q => (0≤q ∧ q<230) ∨ (231≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step75ExitGv_Outgoing : rowsOwned s2Step75ExitGvAfter [s2Step75ExitGvOut] :=
  hmrRows_owned_drop s2Step75ExitGvAfter [s2Step75ExitGOut,s2Step75ExitFOut,s2Step75ExitFvOut,s2Step75ExitGvOut] 3 s2Step75ExitBank_outgoingOwned

private theorem s2Step75ExitGv_distinct : (s2Step75ExitGvRow.sign::s2Step75ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step75ExitGv_owned : (s2Step75ExitGvRow.sign::s2Step75ExitGvRow.payload).toFinset⊆s2Step75ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step75ExitGvBefore (fun q => (0≤q ∧ q<230) ∨ (231≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step75ExitGv_retired : s2Step75ExitGvBefore.retireSet s2Step75ExitGvExtra.toFinset=s2Step75ExitGvAfter := by
  unfold Arena.retireSet s2Step75ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step75ExitGvBefore,s2Step75ExitFAfter,s2Step75ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step75ExitGv_checked : planRowResizeLog s2Step75ExitGvBefore s2Step75ExitGvRow 51 []=
    some (s2Step75ExitGvAfter,s2Step75ExitGvOut,shrinkRow 771 s2Step75ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step75ExitGvBefore s2Step75ExitGvRow 51 s2Step75ExitGv_distinct s2Step75ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step75ExitGvRow.payload.take 51) s2Step75ExitGvRow.sign=s2Step75ExitGvOut := by decide +kernel
  have hi : s2Step75ExitGvRow.payload.drop 51=s2Step75ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step75ExitGv_retired] at result
  exact result

private theorem s2Step75ExitBank_rows : planWindowRowsLog s2Step75ExitGBefore [(s2Step75ExitGRow,230),(s2Step75ExitFRow,231),(s2Step75ExitFvRow,52),(s2Step75ExitGvRow,51)] [[],[],[],[]]=
    some (s2Step75ExitGvAfter,[s2Step75ExitGOut,s2Step75ExitFOut,s2Step75ExitFvOut,s2Step75ExitGvOut],(shrinkRow 769 s2Step75ExitGExtra ++ (shrinkRow 768 s2Step75ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step75ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step75ExitGvAfter [] []=some (s2Step75ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step75ExitGvBefore s2Step75ExitGvAfter s2Step75ExitGvAfter
    s2Step75ExitGvRow s2Step75ExitGvOut 51 [] [] [] []
    (shrinkRow 771 s2Step75ExitGvExtra) ([]) s2Step75ExitGv_Incoming s2Step75ExitGv_checked h4 s2Step75ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step75ExitFvBefore s2Step75ExitFvAfter s2Step75ExitGvAfter
    s2Step75ExitFvRow s2Step75ExitFvOut 52 [] [(s2Step75ExitGvRow,51)] [[]] [s2Step75ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step75ExitGvExtra ++ [])) s2Step75ExitFv_Incoming s2Step75ExitFv_checked h3 s2Step75ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step75ExitFBefore s2Step75ExitFAfter s2Step75ExitGvAfter
    s2Step75ExitFRow s2Step75ExitFOut 231 [] [(s2Step75ExitFvRow,52),(s2Step75ExitGvRow,51)] [[],[]] [s2Step75ExitFvOut,s2Step75ExitGvOut]
    (shrinkRow 768 s2Step75ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step75ExitGvExtra ++ []))) s2Step75ExitF_Incoming s2Step75ExitF_checked h2 s2Step75ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step75ExitGBefore s2Step75ExitGAfter s2Step75ExitGvAfter
    s2Step75ExitGRow s2Step75ExitGOut 230 [] [(s2Step75ExitFRow,231),(s2Step75ExitFvRow,52),(s2Step75ExitGvRow,51)] [[],[],[]] [s2Step75ExitFOut,s2Step75ExitFvOut,s2Step75ExitGvOut]
    (shrinkRow 769 s2Step75ExitGExtra) ((shrinkRow 768 s2Step75ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step75ExitGvExtra ++ [])))) s2Step75ExitG_Incoming s2Step75ExitG_checked h1 s2Step75ExitG_Outgoing
  exact h0

private theorem s2Step75ExitBank_checked : compileHmrBankResizeLog .exit s2Step75ExitGBefore ⟨s2Step75ExitFRow,s2Step75ExitGRow,s2Step75ExitFvRow,s2Step75ExitGvRow⟩ ⟨231,230,52,51⟩ [[],[],[],[]]=
    some (s2Step75ExitGvAfter,⟨s2Step75ExitFOut,s2Step75ExitGOut,s2Step75ExitFvOut,s2Step75ExitGvOut⟩,(shrinkRow 769 s2Step75ExitGExtra ++ (shrinkRow 768 s2Step75ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step75ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step75ExitBank_rows]
  rfl

private theorem s2Step75Add0_apart : Disjoint s2Step75Add0Arena.live s2Step75Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step75Add0Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step75Add0_card : s2Step75Add0Arena.live.card=868 := by
  decide +kernel

private theorem s2Step75Add0_borrowed : s2Step75Add0Arena.checkBorrow (hmrHybridCount s2Step75Add0Arena s2Step75Add0B.length) s2Step75Add0Work=some s2Step75Add0During := by
  have len : s2Step75Add0Work.length=hmrHybridCount s2Step75Add0Arena s2Step75Add0B.length := by
    rw [hmrHybridCount,s2Step75Add0_card]
    decide +kernel
  have nd : s2Step75Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step75Add0Arena s2Step75Add0During s2Step75Add0Work.toFinset s2Step75Add0_bounded s2Step75Add0_apart rfl

private theorem s2Step75Add0_distinct : (844::836::826::(s2Step75Add0A++s2Step75Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step75Add0_owned : (844::836::826::(s2Step75Add0A++s2Step75Add0B)).toFinset⊆s2Step75Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step75Add0Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step75Add0_checked : compileHmrHybridCinLog s2Step75Add0Arena 836 844 826 s2Step75Add0A s2Step75Add0B s2Step75Add0Work=some s2Step75Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step75Add0Arena s2Step75Add0During 836 844 826 s2Step75Add0A s2Step75Add0B s2Step75Add0Work
    (by decide +kernel) (by decide +kernel) s2Step75Add0_distinct
    (fun q hq => s2Step75Add0_owned (List.mem_toFinset.mpr hq)) s2Step75Add0_borrowed

private theorem s2Step75Add1_apart : Disjoint s2Step75Add1Arena.live s2Step75Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step75Add1Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step75Add1_card : s2Step75Add1Arena.live.card=868 := by
  decide +kernel

private theorem s2Step75Add1_borrowed : s2Step75Add1Arena.checkBorrow (hmrHybridCount s2Step75Add1Arena s2Step75Add1B.length) s2Step75Add1Work=some s2Step75Add1During := by
  have len : s2Step75Add1Work.length=hmrHybridCount s2Step75Add1Arena s2Step75Add1B.length := by
    rw [hmrHybridCount,s2Step75Add1_card]
    decide +kernel
  have nd : s2Step75Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step75Add1Arena s2Step75Add1During s2Step75Add1Work.toFinset s2Step75Add1_bounded s2Step75Add1_apart rfl

private theorem s2Step75Add1_distinct : (844::836::826::(s2Step75Add1A++s2Step75Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step75Add1_owned : (844::836::826::(s2Step75Add1A++s2Step75Add1B)).toFinset⊆s2Step75Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step75Add1Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step75Add1_checked : compileHmrHybridCinLog s2Step75Add1Arena 836 844 826 s2Step75Add1A s2Step75Add1B s2Step75Add1Work=some s2Step75Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step75Add1Arena s2Step75Add1During 836 844 826 s2Step75Add1A s2Step75Add1B s2Step75Add1Work
    (by decide +kernel) (by decide +kernel) s2Step75Add1_distinct
    (fun q hq => s2Step75Add1_owned (List.mem_toFinset.mpr hq)) s2Step75Add1_borrowed

private theorem s2Step75F4_apart : Disjoint (s2Step75Add0A++s2Step75Add0B).toFinset (s2Step75Add1A++s2Step75Add1B).toFinset := by
  have nd : ((s2Step75Add0A++s2Step75Add0B)++(s2Step75Add1A++s2Step75Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step75F4_carry : s2Step75F4FlagArena.checkBorrow 1 [826]=some s2Step75Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step75F4FlagArena,s2Step75HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step75F4FlagArena,s2Step75HeadFvAfter,s2Step75Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step75F4_distinct : (845::836::844::826::((s2Step75Add0A++s2Step75Add1A)++(s2Step75Add0B++s2Step75Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step75F4_flag : s2Step75HeadFvAfter.checkBorrow 1 [844]=some s2Step75F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step75HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step75F4_owned : (845::836::((s2Step75Add0A++s2Step75Add1A)++(s2Step75Add0B++s2Step75Add1B))).toFinset⊆s2Step75HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step75HeadFvAfter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step75F4_checked : compileHmrHybridF4Log s2Step75HeadFvAfter 845 836 s2Step75Add0A s2Step75Add0B s2Step75Add1A s2Step75Add1B [844] [826] s2Step75Add0Work s2Step75Add1Work=some s2Step75F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step75HeadFvAfter s2Step75F4FlagArena s2Step75Add0Arena s2Step75Add0During s2Step75Add1During 845 836
    s2Step75Add0A s2Step75Add0B s2Step75Add1A s2Step75Add1B [844] [826] s2Step75Add0Work s2Step75Add1Work
    (fun q hq => s2Step75F4_owned (List.mem_toFinset.mpr hq)) s2Step75F4_flag s2Step75F4_carry
    s2Step75F4_distinct s2Step75F4_apart s2Step75Add0_checked s2Step75Add1_checked

private theorem s2Step75Front_branch : s2Step75FrontSigmaArena.checkBorrow 1 [836]=some s2Step75HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step75FrontSigmaArena,s2Step75EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step75FrontSigmaArena,s2Step75EntryGvAfter,s2Step75HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step75Front_entry : HmrFrontEntryValid s2Step75EntryFBefore s2Step75FrontBank 231 51 ⟨231,230,52,51⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step75FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step75EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step75EntryFBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<835) ∨ (837≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step75FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step75Front_sigma : s2Step75EntryGvAfter.checkBorrow 1 [845]=some s2Step75FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step75EntryGvAfter,arenaWires]
  · rfl

private def s2Step75HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<831) ∨ (832≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step75HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<831) ∨ (832≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step75HeadFBefore : Arena := s2Step75HeadGAfter

private def s2Step75HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742],768⟩

private def s2Step75HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834],770⟩

private def s2Step75HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230],769⟩

private def s2Step75HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814],771⟩

private theorem s2Step75HeadBank_incomingDistinct : ([s2Step75HeadGRow,s2Step75HeadFRow,s2Step75HeadGvRow,s2Step75HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step75HeadF_Incoming : rowsOwned s2Step75HeadFBefore [s2Step75HeadFRow,s2Step75HeadGvRow,s2Step75HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step75HeadGRow,s2Step75HeadFRow,s2Step75HeadGvRow,s2Step75HeadFvRow] 1 s2Step75HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step75HeadFBefore (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<831) ∨ (832≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step75HeadBank_outgoingOwned : rowsOwned s2Step75HeadFvAfter [s2Step75HeadGOut,s2Step75HeadFOut,s2Step75HeadGvOut,s2Step75HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step75HeadFvAfter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step75HeadF_Outgoing : rowsOwned s2Step75HeadFvAfter [s2Step75HeadFOut,s2Step75HeadGvOut,s2Step75HeadFvOut] :=
  hmrRows_owned_drop s2Step75HeadFvAfter [s2Step75HeadGOut,s2Step75HeadFOut,s2Step75HeadGvOut,s2Step75HeadFvOut] 1 s2Step75HeadBank_outgoingOwned

private theorem s2Step75HeadF_distinct : (s2Step75HeadFRow.sign::s2Step75HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step75HeadF_owned : (s2Step75HeadFRow.sign::s2Step75HeadFRow.payload).toFinset⊆s2Step75HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step75HeadFBefore (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<831) ∨ (832≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step75HeadF_reserved : s2Step75HeadFBefore.reserve s2Step75HeadFFresh.toFinset=some s2Step75HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step75HeadFFresh,arenaWires]
  · norm_num [s2Step75HeadFBefore,s2Step75HeadGAfter,s2Step75HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step75HeadFAfter,s2Step75HeadFBefore,s2Step75HeadGAfter,s2Step75HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step75HeadF_checked : planRowResizeLog s2Step75HeadFBefore s2Step75HeadFRow 232 s2Step75HeadFFresh=
    some (s2Step75HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 816],768⟩,growRow 768 s2Step75HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step75HeadFBefore s2Step75HeadFAfter s2Step75HeadFRow 232 s2Step75HeadFFresh
    s2Step75HeadF_distinct s2Step75HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step75HeadF_reserved
  have rowEq : WindowRow.mk (s2Step75HeadFRow.payload++s2Step75HeadFFresh) s2Step75HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 816],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step75HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step75HeadFvBefore : Arena := s2Step75HeadGvAfter

private theorem s2Step75HeadFv_Incoming : rowsOwned s2Step75HeadFvBefore [s2Step75HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step75HeadGRow,s2Step75HeadFRow,s2Step75HeadGvRow,s2Step75HeadFvRow] 3 s2Step75HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step75HeadFvBefore (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step75HeadFv_Outgoing : rowsOwned s2Step75HeadFvAfter [s2Step75HeadFvOut] :=
  hmrRows_owned_drop s2Step75HeadFvAfter [s2Step75HeadGOut,s2Step75HeadFOut,s2Step75HeadGvOut,s2Step75HeadFvOut] 3 s2Step75HeadBank_outgoingOwned

private theorem s2Step75HeadFv_distinct : (s2Step75HeadFvRow.sign::s2Step75HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step75HeadFv_owned : (s2Step75HeadFvRow.sign::s2Step75HeadFvRow.payload).toFinset⊆s2Step75HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step75HeadFvBefore (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step75HeadFv_reserved : s2Step75HeadFvBefore.reserve s2Step75HeadFvFresh.toFinset=some s2Step75HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step75HeadFvFresh,arenaWires]
  · norm_num [s2Step75HeadFvBefore,s2Step75HeadGvAfter,s2Step75HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step75HeadFvAfter,s2Step75HeadFvBefore,s2Step75HeadGvAfter,s2Step75HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step75HeadFv_checked : planRowResizeLog s2Step75HeadFvBefore s2Step75HeadFvRow 52 s2Step75HeadFvFresh=
    some (s2Step75HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835],770⟩,growRow 770 s2Step75HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step75HeadFvBefore s2Step75HeadFvAfter s2Step75HeadFvRow 52 s2Step75HeadFvFresh
    s2Step75HeadFv_distinct s2Step75HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step75HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step75HeadFvRow.payload++s2Step75HeadFvFresh) s2Step75HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step75HeadG_Incoming : rowsOwned s2Step75HeadGBefore [s2Step75HeadGRow,s2Step75HeadFRow,s2Step75HeadGvRow,s2Step75HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step75HeadGRow,s2Step75HeadFRow,s2Step75HeadGvRow,s2Step75HeadFvRow] 0 s2Step75HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step75HeadGBefore (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step75HeadG_Outgoing : rowsOwned s2Step75HeadFvAfter [s2Step75HeadGOut,s2Step75HeadFOut,s2Step75HeadGvOut,s2Step75HeadFvOut] :=
  hmrRows_owned_drop s2Step75HeadFvAfter [s2Step75HeadGOut,s2Step75HeadFOut,s2Step75HeadGvOut,s2Step75HeadFvOut] 0 s2Step75HeadBank_outgoingOwned

private theorem s2Step75HeadG_distinct : (s2Step75HeadGRow.sign::s2Step75HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step75HeadG_owned : (s2Step75HeadGRow.sign::s2Step75HeadGRow.payload).toFinset⊆s2Step75HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step75HeadGBefore (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step75HeadG_reserved : s2Step75HeadGBefore.reserve s2Step75HeadGFresh.toFinset=some s2Step75HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step75HeadGFresh,arenaWires]
  · norm_num [s2Step75HeadGBefore,s2Step75HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step75HeadGAfter,s2Step75HeadGBefore,s2Step75HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step75HeadG_checked : planRowResizeLog s2Step75HeadGBefore s2Step75HeadGRow 232 s2Step75HeadGFresh=
    some (s2Step75HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 827],769⟩,growRow 769 s2Step75HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step75HeadGBefore s2Step75HeadGAfter s2Step75HeadGRow 232 s2Step75HeadGFresh
    s2Step75HeadG_distinct s2Step75HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step75HeadG_reserved
  have rowEq : WindowRow.mk (s2Step75HeadGRow.payload++s2Step75HeadGFresh) s2Step75HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 827],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step75HeadGvBefore : Arena := s2Step75HeadFAfter

private theorem s2Step75HeadGv_Incoming : rowsOwned s2Step75HeadGvBefore [s2Step75HeadGvRow,s2Step75HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step75HeadGRow,s2Step75HeadFRow,s2Step75HeadGvRow,s2Step75HeadFvRow] 2 s2Step75HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step75HeadGvBefore (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<831) ∨ (832≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step75HeadGv_Outgoing : rowsOwned s2Step75HeadFvAfter [s2Step75HeadGvOut,s2Step75HeadFvOut] :=
  hmrRows_owned_drop s2Step75HeadFvAfter [s2Step75HeadGOut,s2Step75HeadFOut,s2Step75HeadGvOut,s2Step75HeadFvOut] 2 s2Step75HeadBank_outgoingOwned

private theorem s2Step75HeadGv_distinct : (s2Step75HeadGvRow.sign::s2Step75HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step75HeadGv_owned : (s2Step75HeadGvRow.sign::s2Step75HeadGvRow.payload).toFinset⊆s2Step75HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step75HeadGvBefore (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<831) ∨ (832≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step75HeadGv_reserved : s2Step75HeadGvBefore.reserve s2Step75HeadGvFresh.toFinset=some s2Step75HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step75HeadGvFresh,arenaWires]
  · norm_num [s2Step75HeadGvBefore,s2Step75HeadFAfter,s2Step75HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step75HeadGvAfter,s2Step75HeadGvBefore,s2Step75HeadFAfter,s2Step75HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step75HeadGv_checked : planRowResizeLog s2Step75HeadGvBefore s2Step75HeadGvRow 52 s2Step75HeadGvFresh=
    some (s2Step75HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831],771⟩,growRow 771 s2Step75HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step75HeadGvBefore s2Step75HeadGvAfter s2Step75HeadGvRow 52 s2Step75HeadGvFresh
    s2Step75HeadGv_distinct s2Step75HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step75HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step75HeadGvRow.payload++s2Step75HeadGvFresh) s2Step75HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step75HeadBank_rows : planWindowRowsLog s2Step75HeadGBefore [(s2Step75HeadGRow,232),(s2Step75HeadFRow,232),(s2Step75HeadGvRow,52),(s2Step75HeadFvRow,52)] [s2Step75HeadGFresh,s2Step75HeadFFresh,s2Step75HeadGvFresh,s2Step75HeadFvFresh]=
    some (s2Step75HeadFvAfter,[s2Step75HeadGOut,s2Step75HeadFOut,s2Step75HeadGvOut,s2Step75HeadFvOut],(growRow 769 s2Step75HeadGFresh ++ (growRow 768 s2Step75HeadFFresh ++ (growRow 771 s2Step75HeadGvFresh ++ (growRow 770 s2Step75HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step75HeadFvAfter [] []=some (s2Step75HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step75HeadFvBefore s2Step75HeadFvAfter s2Step75HeadFvAfter
    s2Step75HeadFvRow s2Step75HeadFvOut 52 s2Step75HeadFvFresh [] [] []
    (growRow 770 s2Step75HeadFvFresh) ([]) s2Step75HeadFv_Incoming s2Step75HeadFv_checked h4 s2Step75HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step75HeadGvBefore s2Step75HeadGvAfter s2Step75HeadFvAfter
    s2Step75HeadGvRow s2Step75HeadGvOut 52 s2Step75HeadGvFresh [(s2Step75HeadFvRow,52)] [s2Step75HeadFvFresh] [s2Step75HeadFvOut]
    (growRow 771 s2Step75HeadGvFresh) ((growRow 770 s2Step75HeadFvFresh ++ [])) s2Step75HeadGv_Incoming s2Step75HeadGv_checked h3 s2Step75HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step75HeadFBefore s2Step75HeadFAfter s2Step75HeadFvAfter
    s2Step75HeadFRow s2Step75HeadFOut 232 s2Step75HeadFFresh [(s2Step75HeadGvRow,52),(s2Step75HeadFvRow,52)] [s2Step75HeadGvFresh,s2Step75HeadFvFresh] [s2Step75HeadGvOut,s2Step75HeadFvOut]
    (growRow 768 s2Step75HeadFFresh) ((growRow 771 s2Step75HeadGvFresh ++ (growRow 770 s2Step75HeadFvFresh ++ []))) s2Step75HeadF_Incoming s2Step75HeadF_checked h2 s2Step75HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step75HeadGBefore s2Step75HeadGAfter s2Step75HeadFvAfter
    s2Step75HeadGRow s2Step75HeadGOut 232 s2Step75HeadGFresh [(s2Step75HeadFRow,232),(s2Step75HeadGvRow,52),(s2Step75HeadFvRow,52)] [s2Step75HeadFFresh,s2Step75HeadGvFresh,s2Step75HeadFvFresh] [s2Step75HeadFOut,s2Step75HeadGvOut,s2Step75HeadFvOut]
    (growRow 769 s2Step75HeadGFresh) ((growRow 768 s2Step75HeadFFresh ++ (growRow 771 s2Step75HeadGvFresh ++ (growRow 770 s2Step75HeadFvFresh ++ [])))) s2Step75HeadG_Incoming s2Step75HeadG_checked h1 s2Step75HeadG_Outgoing
  exact h0

private theorem s2Step75HeadBank_checked : compileHmrBankResizeLog .headroom s2Step75HeadGBefore ⟨s2Step75HeadFRow,s2Step75HeadGRow,s2Step75HeadFvRow,s2Step75HeadGvRow⟩ ⟨232,232,52,52⟩ [s2Step75HeadGFresh,s2Step75HeadFFresh,s2Step75HeadGvFresh,s2Step75HeadFvFresh]=
    some (s2Step75HeadFvAfter,⟨s2Step75HeadFOut,s2Step75HeadGOut,s2Step75HeadFvOut,s2Step75HeadGvOut⟩,(growRow 769 s2Step75HeadGFresh ++ (growRow 768 s2Step75HeadFFresh ++ (growRow 771 s2Step75HeadGvFresh ++ (growRow 770 s2Step75HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step75HeadBank_rows]
  rfl

private theorem s2Step75Front_checked : compileHmrSourceFrontLog s2Step75EntryFBefore s2Step75FrontBank 231 51 ⟨231,230,52,51⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step75FrontLog=some s2Step75FrontPlan := by
  have pairEq : s2Step75FrontPair=⟨s2Step75HeadFRow,s2Step75HeadGRow,s2Step75HeadFvRow,s2Step75HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step75FrontHead=⟨s2Step75ExitFRow,s2Step75ExitGRow,s2Step75ExitFvRow,s2Step75ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step75Add0A=s2Step75FrontHead.f.wires := by decide +kernel
  have gEq : s2Step75Add0B=s2Step75FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step75Add1A=s2Step75FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step75Add1B=s2Step75FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step75EntryFBefore s2Step75FrontBank 231 51 ⟨231,230,52,51⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step75FrontLog s2Step75FrontPlan
  · exact s2Step75Front_entry
  · exact s2Step75EntryBank_checked
  · exact s2Step75Front_sigma
  · rfl
  · exact s2Step75Front_branch
  · rfl
  · simpa only [s2Step75FrontPlan,pairEq] using s2Step75HeadBank_checked
  · simpa only [s2Step75FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step75F4_checked
  · exact s2Step75Counter_checked
  · rfl
  · simpa only [s2Step75FrontPlan,headEq] using s2Step75ExitBank_checked

private theorem s2Step75Complete_explicit_checked : compileHmrEarlyStepLog s2Step75EntryFBefore s2Step75FrontBank 231 51 ⟨231,230,52,51⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 30 s2Step75CompleteLog=some s2Step75CompletePlan := by
  let Q := s2Step75EarlyControlPlan
  have hq := s2Step75EarlyControl_plan_checked
  have fv1 : s2Step75CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step75CompleteOut.fv.payload[2]?.getD s2Step75CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step75CompleteOut.fv.payload[3]?.getD s2Step75CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step75CompleteOut.fv.payload[4]?.getD s2Step75CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step75EntryFBefore s2Step75EarlyControlArena s2Step75FrontBank 231 51 ⟨231,230,52,51⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 30 s2Step75CompleteLog s2Step75FrontPlan Q
    s2Step75Front_checked s2Step75Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step75Complete_owned s2Step75Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step75EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 777 845 s2Step75CompleteOut.fv.second (s2Step75CompleteOut.fv.payload[2]?.getD s2Step75CompleteOut.fv.sign) (s2Step75CompleteOut.fv.payload[3]?.getD s2Step75CompleteOut.fv.sign) (s2Step75CompleteOut.fv.payload[4]?.getD s2Step75CompleteOut.fv.sign) 836 30 s2Step75EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep75Arena : Arena := s2Step75EntryFBefore
def s2PrivateStep75Bank : WindowBank := s2Step75FrontBank
def s2PrivateStep75Spec : HmrSourceWalkStepLog := ⟨231,51,⟨231,230,52,51⟩,30,.early s2Step75CompleteLog⟩
def s2PrivateStep75Plan : HmrSourceStepPlan := .early s2Step75CompletePlan
theorem s2PrivateStep75_source : s2PrivateStep75Spec=s2ObservedLogs64[11] := rfl
theorem s2PrivateStep75_checked : compileHmrSourceStepLog s2PrivateStep75Arena s2PrivateStep75Bank
    s2PrivateStep75Spec.fgWidth s2PrivateStep75Spec.vWidth s2PrivateStep75Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872]
    6 498 75 s2PrivateStep75Spec.need none s2PrivateStep75Spec.log=some s2PrivateStep75Plan := by
  change compileHmrSourceStepLog s2Step75EntryFBefore s2Step75FrontBank 231 51 ⟨231,230,52,51⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 6 498 75 30 none (.early s2Step75CompleteLog)=some (.early s2Step75CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 75<498)]
  rw [s2Step75Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
