import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep72
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

private def s2Step74CompleteMoves : List (Wire × Wire) := [(836,743)]

private def s2Step74EarlyControlLog : HmrEarlyControlLog := ⟨[836, 827, 816, 831, 835],[844],[826],[846, 847, 849, 851, 867, 873],[]⟩

private def s2Step74FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [831], [], [822]],[[835], [816], [827], [834]],[[], [], [], []]⟩,[845],[814],[844],[826],[846, 847, 849, 851, 867, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[846, 847, 849, 851, 867, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918],[844, 826, 846, 847]⟩

private def s2Step74CompleteLog : HmrEarlyStepLog := ⟨s2Step74FrontLog,s2Step74CompleteMoves,s2Step74EarlyControlLog⟩

private def s2Step74ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742],768⟩

private def s2Step74ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834],770⟩

private def s2Step74ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230],769⟩

private def s2Step74ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822],771⟩

private def s2Step74FrontOut : WindowBank := ⟨s2Step74ExitFOut,s2Step74ExitGOut,s2Step74ExitFvOut,s2Step74ExitGvOut⟩

private def s2Step74CompleteOut : WindowBank := s2Step74FrontOut.repacked s2Step74CompleteMoves

private def s2Step74EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<835) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step74EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step74EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step74EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step74EarlyControlPositiveArena,[844],s2Step74EarlyControlEqualityArena,[826],⟨⟨845,false⟩,[⟨⟨844,false⟩,826⟩]⟩⟩

private def s2Step74EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<874)),Finset.filter_subset _ _⟩

private def s2Step74EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<874)),Finset.filter_subset _ _⟩

private def s2Step74EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<835) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step74EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<835) ∨ (837≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step74EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<835) ∨ (837≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step74EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step74EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,836⟩,⟨⟨774,false⟩,827⟩,⟨⟨775,false⟩,816⟩,⟨⟨776,false⟩,831⟩,⟨⟨777,false⟩,835⟩]⟩

private def s2Step74EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step74EarlyControlZeroArena,s2Step74EarlyControlZeroPlan,s2Step74EarlyControlClassPlan,s2Step74EarlyControlFlagArena,s2Step74EarlyControlFittedArena,s2Step74EarlyControlHistoryArena,s2Step74EarlyControlSigmaArena,s2Step74EarlyControlOutputArena,s2Step74EarlyControlLog⟩

private def s2Step74CounterWork : List Wire := [844, 826, 846, 847]

private theorem s2Step74Counter_bounded : s2Step74CounterWork.toFinset⊆arenaWires := by norm_num [s2Step74CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step74HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step74CounterDuring : Arena := ⟨s2Step74HeadFvAfter.live∪s2Step74CounterWork.toFinset,Finset.union_subset s2Step74HeadFvAfter.bounded s2Step74Counter_bounded⟩

private def s2Step74EntryFFresh : List Wire := []

private def s2Step74EntryFvFresh : List Wire := []

private def s2Step74EntryGFresh : List Wire := [831]

private def s2Step74EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<834) ∨ (836≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step74EntryGvFresh : List Wire := [822]

private def s2Step74ExitFExtra : List Wire := [743, 816]

private def s2Step74ExitGExtra : List Wire := [831, 835]

private def s2Step74ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<743) ∨ (744≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step74ExitGvExtra : List Wire := [827]

private def s2Step74Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step74Add0Work : List Wire := [846, 847, 849, 851, 867, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step74Add0_bounded : s2Step74Add0Work.toFinset⊆arenaWires := by
  have h : s2Step74Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step74Add0During : Arena := ⟨s2Step74Add0Arena.live∪s2Step74Add0Work.toFinset,Finset.union_subset s2Step74Add0Arena.bounded s2Step74Add0_bounded⟩

private def s2Step74Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step74Add1Work : List Wire := [846, 847, 849, 851, 867, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918]

private theorem s2Step74Add1_bounded : s2Step74Add1Work.toFinset⊆arenaWires := by
  have h : s2Step74Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step74Add1During : Arena := ⟨s2Step74Add1Arena.live∪s2Step74Add1Work.toFinset,Finset.union_subset s2Step74Add1Arena.bounded s2Step74Add1_bounded⟩

private def s2Step74F4FlagArena : Arena := ⟨s2Step74HeadFvAfter.live∪{844},Finset.union_subset s2Step74HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step74F4Plan : HmrHybridF4Plan := ⟨s2Step74F4FlagArena,[844],s2Step74Add0Arena,[826],s2Step74Add0During,s2Step74Add0Work,s2Step74Add1During,s2Step74Add1Work⟩

private def s2Step74HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 816],768⟩

private def s2Step74HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834],770⟩

private def s2Step74HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 831, 835],769⟩

private def s2Step74HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 827],771⟩

private def s2Step74FrontHead : WindowBank := ⟨s2Step74HeadFOut,s2Step74HeadGOut,s2Step74HeadFvOut,s2Step74HeadGvOut⟩

private def s2Step74EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743],768⟩

private def s2Step74EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829],770⟩

private def s2Step74EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 831],769⟩

private def s2Step74EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822],771⟩

private def s2Step74FrontPair : WindowBank := ⟨s2Step74EntryFOut,s2Step74EntryGOut,s2Step74EntryFvOut,s2Step74EntryGvOut⟩

private def s2Step74FrontSigmaArena : Arena := ⟨s2Step74EntryGvAfter.live∪{845},Finset.union_subset s2Step74EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step74HeadFFresh : List Wire := [816]

private def s2Step74HeadFvFresh : List Wire := [834]

private def s2Step74HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<834) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step74HeadGFresh : List Wire := [835]

private def s2Step74HeadGvFresh : List Wire := [827]

private def s2Step74FrontPlan : HmrSourceFront := ⟨s2Step74EntryGvAfter,s2Step74FrontPair,(growRow 768 s2Step74EntryFFresh ++ (growRow 769 s2Step74EntryGFresh ++ (growRow 770 s2Step74EntryFvFresh ++ (growRow 771 s2Step74EntryGvFresh ++ [])))),s2Step74FrontSigmaArena,[845],s2Step74HeadGBefore,[814],
  s2Step74HeadFvAfter,s2Step74FrontHead,(growRow 769 s2Step74HeadGFresh ++ (growRow 768 s2Step74HeadFFresh ++ (growRow 771 s2Step74HeadGvFresh ++ (growRow 770 s2Step74HeadFvFresh ++ [])))),s2Step74F4Plan,s2Step74CounterDuring,s2Step74CounterWork,s2Step74ExitGvAfter,s2Step74FrontOut,(shrinkRow 769 s2Step74ExitGExtra ++ (shrinkRow 768 s2Step74ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step74ExitGvExtra ++ []))))⟩

private def s2Step74CompletePlan : HmrEarlyStepPlan := ⟨s2Step74FrontPlan,s2Step74EarlyControlArena,s2Step74EarlyControlPlan,s2Step74CompleteMoves⟩

private theorem s2Step74Complete_apart : List.Disjoint (s2Step74CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [845, 814, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] := by
  have nd : ((s2Step74CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[845, 814, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step74Complete_owned : (s2Step74CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step74EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step74EarlyControlArena (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<835) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private def s2Step74CompleteMoveArena : Arena := ⟨s2Step74ExitGvAfter.live∪{743},Finset.union_subset s2Step74ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step74Complete_repack : s2Step74ExitGvAfter.checkRepack s2Step74CompleteMoves=some s2Step74EarlyControlArena := by
  have owned : 836∈s2Step74ExitGvAfter.live := by norm_num [s2Step74ExitGvAfter,arenaWires]
  have reserve : s2Step74ExitGvAfter.reserve {743}=some s2Step74CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step74ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step74CompleteMoveArena.retireSet {836}=s2Step74EarlyControlArena := by
    unfold Arena.retireSet s2Step74EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step74CompleteMoveArena,s2Step74ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step74CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step74CompleteMoveArena.retireSet {836}).checkRepack []=some s2Step74EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step74EarlyControl_branchOwned : ([814] : List Wire).toFinset⊆s2Step74EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step74EarlyControlSigmaArena (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<835) ∨ (837≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step74EarlyControl_branch : compileHmrBranchRetirement s2Step74EarlyControlSigmaArena 814=some s2Step74EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step74EarlyControl_branchOwned
  · ext q
    simp [s2Step74EarlyControlOutputArena,s2Step74EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step74EarlyControl_classEqualityBorrow : s2Step74EarlyControlPositiveArena.checkBorrow (([845, 844] : List Wire).length-1) s2Step74EarlyControlLog.classWork=some s2Step74EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step74EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step74EarlyControlPositiveArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
      decide +kernel
    · ext q
      simp [s2Step74EarlyControlEqualityArena,s2Step74EarlyControlPositiveArena,s2Step74EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step74EarlyControl_classEqualityOwned : ([845, 844] : List Wire).toFinset⊆s2Step74EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step74EarlyControlPositiveArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step74EarlyControl_classEquality : compileHmrEqualityLog s2Step74EarlyControlPositiveArena [845, 844] 0 s2Step74EarlyControlLog.classWork=some (s2Step74EarlyControlEqualityArena,s2Step74EarlyControlLog.classWork,s2Step74EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step74EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step74EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step74EarlyControl_classOwned : ([777, 835, 845] : List Wire).toFinset⊆s2Step74EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step74EarlyControlZeroArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step74EarlyControl_positiveBorrow : s2Step74EarlyControlZeroArena.checkBorrow (1) s2Step74EarlyControlLog.positiveWork=some s2Step74EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step74EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step74EarlyControlZeroArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
      decide +kernel
    · ext q
      simp [s2Step74EarlyControlPositiveArena,s2Step74EarlyControlZeroArena,s2Step74EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step74EarlyControl_class : compileHmrSourceClassLog s2Step74EarlyControlZeroArena false 777 s2Step74EarlyControlZeroPlan.top 0 845 s2Step74EarlyControlLog.positiveWork s2Step74EarlyControlLog.classWork=some s2Step74EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step74EarlyControlClassPlan s2Step74EarlyControlZeroArena false 777 s2Step74EarlyControlZeroPlan.top 0 845
  constructor
  · decide +kernel
  · exact s2Step74EarlyControl_classOwned
  · exact s2Step74EarlyControl_positiveBorrow
  · exact s2Step74EarlyControl_classEquality

private theorem s2Step74EarlyControl_entryRecordOwned : ([814, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] : List Wire).toFinset⊆s2Step74EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step74EarlyControlArena (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<835) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step74EarlyControl_entrySigmaOwned : ([845, 254] : List Wire).toFinset⊆s2Step74EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step74EarlyControlArena (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<835) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step74EarlyControl_fitBorrow : s2Step74EarlyControlFlagArena.checkBorrow ((30-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] : List Wire).length)) s2Step74EarlyControlLog.recordFresh=some s2Step74EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step74EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step74EarlyControlFlagArena (fun q => (0≤q ∧ q<874)) rfl
      decide +kernel
    · ext q
      simp [s2Step74EarlyControlFittedArena,s2Step74EarlyControlFlagArena,s2Step74EarlyControlLog,arenaWires]

private theorem s2Step74EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] : List Wire).toFinset⊆s2Step74EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step74EarlyControlFlagArena (fun q => (0≤q ∧ q<874)) rfl
  decide +kernel

private theorem s2Step74EarlyControl_fit : compileHmrRecordGrowLog s2Step74EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 30 s2Step74EarlyControlLog.recordFresh=some s2Step74EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step74EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step74EarlyControl_fitBorrow

private theorem s2Step74EarlyControl_flagsBorrow : s2Step74EarlyControlEqualityArena.checkBorrow (6) s2Step74EarlyControlLog.flagWork=some s2Step74EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step74EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step74EarlyControlEqualityArena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
      decide +kernel
    · ext q
      simp [s2Step74EarlyControlFlagArena,s2Step74EarlyControlEqualityArena,s2Step74EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step74EarlyControl_flagsOwned : ([826, 253, 252, 251] : List Wire).toFinset⊆s2Step74EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step74EarlyControlEqualityArena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step74EarlyControl_flags : compileHmrFlagsLog s2Step74EarlyControlClassPlan.equalityArena s2Step74EarlyControlClassPlan.equality.top 253 252 251 s2Step74EarlyControlLog.flagWork=some s2Step74EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step74EarlyControl_flagsOwned⟩
  · exact s2Step74EarlyControl_flagsBorrow

private theorem s2Step74EarlyControl_historyBorrow : s2Step74EarlyControlArena.checkBorrow ((30-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] : List Wire).length)) s2Step74EarlyControlLog.recordFresh=some s2Step74EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step74EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step74EarlyControlArena (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<835) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
      decide +kernel
    · ext q
      simp [s2Step74EarlyControlHistoryArena,s2Step74EarlyControlArena,s2Step74EarlyControlLog,arenaWires]

private theorem s2Step74EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] : List Wire).toFinset⊆s2Step74EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step74EarlyControlArena (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<835) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step74EarlyControl_history : compileHmrRecordGrowLog s2Step74EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 30 s2Step74EarlyControlLog.recordFresh=some s2Step74EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step74EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step74EarlyControl_historyBorrow

private theorem s2Step74EarlyControl_sigmaOwned : ([254, 845] : List Wire).toFinset⊆s2Step74EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step74EarlyControlHistoryArena (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<835) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step74EarlyControl_sigmaReleaseOwned : ([845] : List Wire).toFinset⊆s2Step74EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step74EarlyControlHistoryArena (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<835) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step74EarlyControl_sigmaRelease : s2Step74EarlyControlHistoryArena.release {845} (fun _ => false)=some s2Step74EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step74EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step74EarlyControlSigmaArena,s2Step74EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step74EarlyControl_sigma : compileHmrSigmaDropLog s2Step74EarlyControlHistoryArena false 0 0 254 845 []=some s2Step74EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step74EarlyControl_sigmaOwned⟩
  · exact s2Step74EarlyControl_sigmaRelease

private theorem s2Step74EarlyControl_zeroBorrow : s2Step74EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step74EarlyControlLog.zeroWork=some s2Step74EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step74EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step74EarlyControlArena (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<835) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
      decide +kernel
    · ext q
      simp [s2Step74EarlyControlZeroArena,s2Step74EarlyControlArena,s2Step74EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step74EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step74EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step74EarlyControlArena (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<835) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step74EarlyControl_zero : compileHmrEqualityLog s2Step74EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step74EarlyControlLog.zeroWork=some (s2Step74EarlyControlZeroArena,s2Step74EarlyControlLog.zeroWork,s2Step74EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step74EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step74EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step74EarlyControl_logged : s2Step74EarlyControlPlan.Logged s2Step74EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 777 845 254 253 252 251 814 30 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step74EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step74EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step74EarlyControl_zero
  · exact s2Step74EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step74EarlyControl_flags
  · exact s2Step74EarlyControl_fit
  · exact s2Step74EarlyControl_history
  · exact s2Step74EarlyControl_sigma
  · exact s2Step74EarlyControl_branch

private theorem s2Step74EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step74EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 777 845 254 253 252 251 814 30 s2Step74EarlyControlLog=some s2Step74EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step74EarlyControlPlan s2Step74EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 777 845 254 253 252 251 814 30 s2Step74EarlyControl_logged

private def s2Step74EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (836≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step74EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743],768⟩

private def s2Step74EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829],770⟩

private def s2Step74EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230],769⟩

private def s2Step74EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837],771⟩

private def s2Step74FrontBank : WindowBank := ⟨s2Step74EntryFRow,s2Step74EntryGRow,s2Step74EntryFvRow,s2Step74EntryGvRow⟩

private def s2Step74Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 816, 768]

private def s2Step74Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 831, 835, 769]

private def s2Step74Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 770]

private def s2Step74Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 827, 771]

private theorem s2Step74Counter_apart : Disjoint s2Step74HeadFvAfter.live s2Step74CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step74HeadFvAfter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step74Counter_borrowed : s2Step74HeadFvAfter.checkBorrow 4 s2Step74CounterWork=some s2Step74CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step74HeadFvAfter s2Step74CounterDuring s2Step74CounterWork.toFinset s2Step74Counter_bounded s2Step74Counter_apart rfl

private theorem s2Step74Counter_owned : (845::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step74HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step74HeadFvAfter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step74Counter_checked : compileHmrCounterStepLog s2Step74HeadFvAfter true 845 [772, 773, 774, 775, 776, 777] s2Step74CounterWork=some s2Step74CounterDuring := by
  have owned : ∀q∈845::[772, 773, 774, 775, 776, 777],q∈s2Step74HeadFvAfter.live := fun q hq => s2Step74Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step74Counter_borrowed

private def s2Step74EntryFAfter : Arena := s2Step74EntryFBefore

private theorem s2Step74EntryBank_incomingDistinct : ([s2Step74EntryFRow,s2Step74EntryGRow,s2Step74EntryFvRow,s2Step74EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step74EntryF_Incoming : rowsOwned s2Step74EntryFBefore [s2Step74EntryFRow,s2Step74EntryGRow,s2Step74EntryFvRow,s2Step74EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step74EntryFRow,s2Step74EntryGRow,s2Step74EntryFvRow,s2Step74EntryGvRow] 0 s2Step74EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step74EntryFBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (836≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step74EntryBank_outgoingOwned : rowsOwned s2Step74EntryGvAfter [s2Step74EntryFOut,s2Step74EntryGOut,s2Step74EntryFvOut,s2Step74EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step74EntryGvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<834) ∨ (836≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step74EntryF_Outgoing : rowsOwned s2Step74EntryGvAfter [s2Step74EntryFOut,s2Step74EntryGOut,s2Step74EntryFvOut,s2Step74EntryGvOut] :=
  hmrRows_owned_drop s2Step74EntryGvAfter [s2Step74EntryFOut,s2Step74EntryGOut,s2Step74EntryFvOut,s2Step74EntryGvOut] 0 s2Step74EntryBank_outgoingOwned

private theorem s2Step74EntryF_distinct : (s2Step74EntryFRow.sign::s2Step74EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step74EntryF_owned : (s2Step74EntryFRow.sign::s2Step74EntryFRow.payload).toFinset⊆s2Step74EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step74EntryFBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (836≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step74EntryF_reserved : s2Step74EntryFBefore.reserve s2Step74EntryFFresh.toFinset=some s2Step74EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step74EntryFFresh,arenaWires]
  · norm_num [s2Step74EntryFBefore,s2Step74EntryFFresh,arenaWires]
  · simp only [s2Step74EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step74EntryF_checked : planRowResizeLog s2Step74EntryFBefore s2Step74EntryFRow 232 s2Step74EntryFFresh=
    some (s2Step74EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743],768⟩,growRow 768 s2Step74EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step74EntryFBefore s2Step74EntryFAfter s2Step74EntryFRow 232 s2Step74EntryFFresh
    s2Step74EntryF_distinct s2Step74EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step74EntryF_reserved
  have rowEq : WindowRow.mk (s2Step74EntryFRow.payload++s2Step74EntryFFresh) s2Step74EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step74EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<834) ∨ (836≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step74EntryFvAfter : Arena := s2Step74EntryGAfter

private def s2Step74EntryFvBefore : Arena := s2Step74EntryGAfter

private theorem s2Step74EntryFv_Incoming : rowsOwned s2Step74EntryFvBefore [s2Step74EntryFvRow,s2Step74EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step74EntryFRow,s2Step74EntryGRow,s2Step74EntryFvRow,s2Step74EntryGvRow] 2 s2Step74EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step74EntryFvBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<834) ∨ (836≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step74EntryFv_Outgoing : rowsOwned s2Step74EntryGvAfter [s2Step74EntryFvOut,s2Step74EntryGvOut] :=
  hmrRows_owned_drop s2Step74EntryGvAfter [s2Step74EntryFOut,s2Step74EntryGOut,s2Step74EntryFvOut,s2Step74EntryGvOut] 2 s2Step74EntryBank_outgoingOwned

private theorem s2Step74EntryFv_distinct : (s2Step74EntryFvRow.sign::s2Step74EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step74EntryFv_owned : (s2Step74EntryFvRow.sign::s2Step74EntryFvRow.payload).toFinset⊆s2Step74EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step74EntryFvBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<834) ∨ (836≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step74EntryFv_reserved : s2Step74EntryFvBefore.reserve s2Step74EntryFvFresh.toFinset=some s2Step74EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step74EntryFvFresh,arenaWires]
  · norm_num [s2Step74EntryFvBefore,s2Step74EntryGAfter,s2Step74EntryFvFresh,arenaWires]
  · simp only [s2Step74EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step74EntryFv_checked : planRowResizeLog s2Step74EntryFvBefore s2Step74EntryFvRow 50 s2Step74EntryFvFresh=
    some (s2Step74EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829],770⟩,growRow 770 s2Step74EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step74EntryFvBefore s2Step74EntryFvAfter s2Step74EntryFvRow 50 s2Step74EntryFvFresh
    s2Step74EntryFv_distinct s2Step74EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step74EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step74EntryFvRow.payload++s2Step74EntryFvFresh) s2Step74EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step74EntryGBefore : Arena := s2Step74EntryFBefore

private theorem s2Step74EntryG_Incoming : rowsOwned s2Step74EntryGBefore [s2Step74EntryGRow,s2Step74EntryFvRow,s2Step74EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step74EntryFRow,s2Step74EntryGRow,s2Step74EntryFvRow,s2Step74EntryGvRow] 1 s2Step74EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step74EntryGBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (836≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step74EntryG_Outgoing : rowsOwned s2Step74EntryGvAfter [s2Step74EntryGOut,s2Step74EntryFvOut,s2Step74EntryGvOut] :=
  hmrRows_owned_drop s2Step74EntryGvAfter [s2Step74EntryFOut,s2Step74EntryGOut,s2Step74EntryFvOut,s2Step74EntryGvOut] 1 s2Step74EntryBank_outgoingOwned

private theorem s2Step74EntryG_distinct : (s2Step74EntryGRow.sign::s2Step74EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step74EntryG_owned : (s2Step74EntryGRow.sign::s2Step74EntryGRow.payload).toFinset⊆s2Step74EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step74EntryGBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (836≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step74EntryG_reserved : s2Step74EntryGBefore.reserve s2Step74EntryGFresh.toFinset=some s2Step74EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step74EntryGFresh,arenaWires]
  · norm_num [s2Step74EntryGBefore,s2Step74EntryFBefore,s2Step74EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step74EntryGAfter,s2Step74EntryGBefore,s2Step74EntryFBefore,s2Step74EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step74EntryG_checked : planRowResizeLog s2Step74EntryGBefore s2Step74EntryGRow 232 s2Step74EntryGFresh=
    some (s2Step74EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 831],769⟩,growRow 769 s2Step74EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step74EntryGBefore s2Step74EntryGAfter s2Step74EntryGRow 232 s2Step74EntryGFresh
    s2Step74EntryG_distinct s2Step74EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step74EntryG_reserved
  have rowEq : WindowRow.mk (s2Step74EntryGRow.payload++s2Step74EntryGFresh) s2Step74EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 831],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step74EntryGvBefore : Arena := s2Step74EntryGAfter

private theorem s2Step74EntryGv_Incoming : rowsOwned s2Step74EntryGvBefore [s2Step74EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step74EntryFRow,s2Step74EntryGRow,s2Step74EntryFvRow,s2Step74EntryGvRow] 3 s2Step74EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step74EntryGvBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<834) ∨ (836≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step74EntryGv_Outgoing : rowsOwned s2Step74EntryGvAfter [s2Step74EntryGvOut] :=
  hmrRows_owned_drop s2Step74EntryGvAfter [s2Step74EntryFOut,s2Step74EntryGOut,s2Step74EntryFvOut,s2Step74EntryGvOut] 3 s2Step74EntryBank_outgoingOwned

private theorem s2Step74EntryGv_distinct : (s2Step74EntryGvRow.sign::s2Step74EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step74EntryGv_owned : (s2Step74EntryGvRow.sign::s2Step74EntryGvRow.payload).toFinset⊆s2Step74EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step74EntryGvBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<834) ∨ (836≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step74EntryGv_reserved : s2Step74EntryGvBefore.reserve s2Step74EntryGvFresh.toFinset=some s2Step74EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step74EntryGvFresh,arenaWires]
  · norm_num [s2Step74EntryGvBefore,s2Step74EntryGAfter,s2Step74EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step74EntryGvAfter,s2Step74EntryGvBefore,s2Step74EntryGAfter,s2Step74EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step74EntryGv_checked : planRowResizeLog s2Step74EntryGvBefore s2Step74EntryGvRow 50 s2Step74EntryGvFresh=
    some (s2Step74EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822],771⟩,growRow 771 s2Step74EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step74EntryGvBefore s2Step74EntryGvAfter s2Step74EntryGvRow 50 s2Step74EntryGvFresh
    s2Step74EntryGv_distinct s2Step74EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step74EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step74EntryGvRow.payload++s2Step74EntryGvFresh) s2Step74EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step74EntryBank_rows : planWindowRowsLog s2Step74EntryFBefore [(s2Step74EntryFRow,232),(s2Step74EntryGRow,232),(s2Step74EntryFvRow,50),(s2Step74EntryGvRow,50)] [s2Step74EntryFFresh,s2Step74EntryGFresh,s2Step74EntryFvFresh,s2Step74EntryGvFresh]=
    some (s2Step74EntryGvAfter,[s2Step74EntryFOut,s2Step74EntryGOut,s2Step74EntryFvOut,s2Step74EntryGvOut],(growRow 768 s2Step74EntryFFresh ++ (growRow 769 s2Step74EntryGFresh ++ (growRow 770 s2Step74EntryFvFresh ++ (growRow 771 s2Step74EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step74EntryGvAfter [] []=some (s2Step74EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step74EntryGvBefore s2Step74EntryGvAfter s2Step74EntryGvAfter
    s2Step74EntryGvRow s2Step74EntryGvOut 50 s2Step74EntryGvFresh [] [] []
    (growRow 771 s2Step74EntryGvFresh) ([]) s2Step74EntryGv_Incoming s2Step74EntryGv_checked h4 s2Step74EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step74EntryFvBefore s2Step74EntryFvAfter s2Step74EntryGvAfter
    s2Step74EntryFvRow s2Step74EntryFvOut 50 s2Step74EntryFvFresh [(s2Step74EntryGvRow,50)] [s2Step74EntryGvFresh] [s2Step74EntryGvOut]
    (growRow 770 s2Step74EntryFvFresh) ((growRow 771 s2Step74EntryGvFresh ++ [])) s2Step74EntryFv_Incoming s2Step74EntryFv_checked h3 s2Step74EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step74EntryGBefore s2Step74EntryGAfter s2Step74EntryGvAfter
    s2Step74EntryGRow s2Step74EntryGOut 232 s2Step74EntryGFresh [(s2Step74EntryFvRow,50),(s2Step74EntryGvRow,50)] [s2Step74EntryFvFresh,s2Step74EntryGvFresh] [s2Step74EntryFvOut,s2Step74EntryGvOut]
    (growRow 769 s2Step74EntryGFresh) ((growRow 770 s2Step74EntryFvFresh ++ (growRow 771 s2Step74EntryGvFresh ++ []))) s2Step74EntryG_Incoming s2Step74EntryG_checked h2 s2Step74EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step74EntryFBefore s2Step74EntryFAfter s2Step74EntryGvAfter
    s2Step74EntryFRow s2Step74EntryFOut 232 s2Step74EntryFFresh [(s2Step74EntryGRow,232),(s2Step74EntryFvRow,50),(s2Step74EntryGvRow,50)] [s2Step74EntryGFresh,s2Step74EntryFvFresh,s2Step74EntryGvFresh] [s2Step74EntryGOut,s2Step74EntryFvOut,s2Step74EntryGvOut]
    (growRow 768 s2Step74EntryFFresh) ((growRow 769 s2Step74EntryGFresh ++ (growRow 770 s2Step74EntryFvFresh ++ (growRow 771 s2Step74EntryGvFresh ++ [])))) s2Step74EntryF_Incoming s2Step74EntryF_checked h1 s2Step74EntryF_Outgoing
  exact h0

private theorem s2Step74EntryBank_checked : compileHmrBankResizeLog .entry s2Step74EntryFBefore ⟨s2Step74EntryFRow,s2Step74EntryGRow,s2Step74EntryFvRow,s2Step74EntryGvRow⟩ ⟨232,232,50,50⟩ [s2Step74EntryFFresh,s2Step74EntryGFresh,s2Step74EntryFvFresh,s2Step74EntryGvFresh]=
    some (s2Step74EntryGvAfter,⟨s2Step74EntryFOut,s2Step74EntryGOut,s2Step74EntryFvOut,s2Step74EntryGvOut⟩,(growRow 768 s2Step74EntryFFresh ++ (growRow 769 s2Step74EntryGFresh ++ (growRow 770 s2Step74EntryFvFresh ++ (growRow 771 s2Step74EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step74EntryBank_rows]
  rfl

private def s2Step74ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<743) ∨ (744≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<831) ∨ (832≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step74ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<831) ∨ (832≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step74ExitFBefore : Arena := s2Step74ExitGAfter

private def s2Step74ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 816],768⟩

private def s2Step74ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834],770⟩

private def s2Step74ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 831, 835],769⟩

private def s2Step74ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 827],771⟩

private theorem s2Step74ExitBank_incomingDistinct : ([s2Step74ExitGRow,s2Step74ExitFRow,s2Step74ExitFvRow,s2Step74ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step74ExitF_Incoming : rowsOwned s2Step74ExitFBefore [s2Step74ExitFRow,s2Step74ExitFvRow,s2Step74ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step74ExitGRow,s2Step74ExitFRow,s2Step74ExitFvRow,s2Step74ExitGvRow] 1 s2Step74ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step74ExitFBefore (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<831) ∨ (832≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step74ExitBank_outgoingOwned : rowsOwned s2Step74ExitGvAfter [s2Step74ExitGOut,s2Step74ExitFOut,s2Step74ExitFvOut,s2Step74ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step74ExitGvAfter (fun q => (0≤q ∧ q<743) ∨ (744≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step74ExitF_Outgoing : rowsOwned s2Step74ExitGvAfter [s2Step74ExitFOut,s2Step74ExitFvOut,s2Step74ExitGvOut] :=
  hmrRows_owned_drop s2Step74ExitGvAfter [s2Step74ExitGOut,s2Step74ExitFOut,s2Step74ExitFvOut,s2Step74ExitGvOut] 1 s2Step74ExitBank_outgoingOwned

private theorem s2Step74ExitF_distinct : (s2Step74ExitFRow.sign::s2Step74ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step74ExitF_owned : (s2Step74ExitFRow.sign::s2Step74ExitFRow.payload).toFinset⊆s2Step74ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step74ExitFBefore (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<831) ∨ (832≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step74ExitF_retired : s2Step74ExitFBefore.retireSet s2Step74ExitFExtra.toFinset=s2Step74ExitFAfter := by
  unfold Arena.retireSet s2Step74ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step74ExitFBefore,s2Step74ExitGAfter,s2Step74ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step74ExitF_checked : planRowResizeLog s2Step74ExitFBefore s2Step74ExitFRow 231 []=
    some (s2Step74ExitFAfter,s2Step74ExitFOut,shrinkRow 768 s2Step74ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step74ExitFBefore s2Step74ExitFRow 231 s2Step74ExitF_distinct s2Step74ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step74ExitFRow.payload.take 231) s2Step74ExitFRow.sign=s2Step74ExitFOut := by decide +kernel
  have hi : s2Step74ExitFRow.payload.drop 231=s2Step74ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step74ExitF_retired] at result
  exact result

private def s2Step74ExitFvAfter : Arena := s2Step74ExitFAfter

private def s2Step74ExitFvBefore : Arena := s2Step74ExitFAfter

private theorem s2Step74ExitFv_Incoming : rowsOwned s2Step74ExitFvBefore [s2Step74ExitFvRow,s2Step74ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step74ExitGRow,s2Step74ExitFRow,s2Step74ExitFvRow,s2Step74ExitGvRow] 2 s2Step74ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step74ExitFvBefore (fun q => (0≤q ∧ q<743) ∨ (744≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<831) ∨ (832≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step74ExitFv_Outgoing : rowsOwned s2Step74ExitGvAfter [s2Step74ExitFvOut,s2Step74ExitGvOut] :=
  hmrRows_owned_drop s2Step74ExitGvAfter [s2Step74ExitGOut,s2Step74ExitFOut,s2Step74ExitFvOut,s2Step74ExitGvOut] 2 s2Step74ExitBank_outgoingOwned

private theorem s2Step74ExitFv_distinct : (s2Step74ExitFvRow.sign::s2Step74ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step74ExitFv_owned : (s2Step74ExitFvRow.sign::s2Step74ExitFvRow.payload).toFinset⊆s2Step74ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step74ExitFvBefore (fun q => (0≤q ∧ q<743) ∨ (744≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<831) ∨ (832≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step74ExitFv_reserved : s2Step74ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step74ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step74ExitFv_checked : planRowResizeLog s2Step74ExitFvBefore s2Step74ExitFvRow 51 []=
    some (s2Step74ExitFvAfter,s2Step74ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step74ExitFvBefore s2Step74ExitFvAfter s2Step74ExitFvRow 51 []
    s2Step74ExitFv_distinct s2Step74ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step74ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step74ExitFvRow.payload++[]) s2Step74ExitFvRow.sign=s2Step74ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step74ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private theorem s2Step74ExitG_Incoming : rowsOwned s2Step74ExitGBefore [s2Step74ExitGRow,s2Step74ExitFRow,s2Step74ExitFvRow,s2Step74ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step74ExitGRow,s2Step74ExitFRow,s2Step74ExitFvRow,s2Step74ExitGvRow] 0 s2Step74ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step74ExitGBefore (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step74ExitG_Outgoing : rowsOwned s2Step74ExitGvAfter [s2Step74ExitGOut,s2Step74ExitFOut,s2Step74ExitFvOut,s2Step74ExitGvOut] :=
  hmrRows_owned_drop s2Step74ExitGvAfter [s2Step74ExitGOut,s2Step74ExitFOut,s2Step74ExitFvOut,s2Step74ExitGvOut] 0 s2Step74ExitBank_outgoingOwned

private theorem s2Step74ExitG_distinct : (s2Step74ExitGRow.sign::s2Step74ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step74ExitG_owned : (s2Step74ExitGRow.sign::s2Step74ExitGRow.payload).toFinset⊆s2Step74ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step74ExitGBefore (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step74ExitG_retired : s2Step74ExitGBefore.retireSet s2Step74ExitGExtra.toFinset=s2Step74ExitGAfter := by
  unfold Arena.retireSet s2Step74ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step74ExitGBefore,s2Step74ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step74ExitG_checked : planRowResizeLog s2Step74ExitGBefore s2Step74ExitGRow 231 []=
    some (s2Step74ExitGAfter,s2Step74ExitGOut,shrinkRow 769 s2Step74ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step74ExitGBefore s2Step74ExitGRow 231 s2Step74ExitG_distinct s2Step74ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step74ExitGRow.payload.take 231) s2Step74ExitGRow.sign=s2Step74ExitGOut := by decide +kernel
  have hi : s2Step74ExitGRow.payload.drop 231=s2Step74ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step74ExitG_retired] at result
  exact result

private def s2Step74ExitGvBefore : Arena := s2Step74ExitFAfter

private theorem s2Step74ExitGv_Incoming : rowsOwned s2Step74ExitGvBefore [s2Step74ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step74ExitGRow,s2Step74ExitFRow,s2Step74ExitFvRow,s2Step74ExitGvRow] 3 s2Step74ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step74ExitGvBefore (fun q => (0≤q ∧ q<743) ∨ (744≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<831) ∨ (832≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step74ExitGv_Outgoing : rowsOwned s2Step74ExitGvAfter [s2Step74ExitGvOut] :=
  hmrRows_owned_drop s2Step74ExitGvAfter [s2Step74ExitGOut,s2Step74ExitFOut,s2Step74ExitFvOut,s2Step74ExitGvOut] 3 s2Step74ExitBank_outgoingOwned

private theorem s2Step74ExitGv_distinct : (s2Step74ExitGvRow.sign::s2Step74ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step74ExitGv_owned : (s2Step74ExitGvRow.sign::s2Step74ExitGvRow.payload).toFinset⊆s2Step74ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step74ExitGvBefore (fun q => (0≤q ∧ q<743) ∨ (744≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<831) ∨ (832≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step74ExitGv_retired : s2Step74ExitGvBefore.retireSet s2Step74ExitGvExtra.toFinset=s2Step74ExitGvAfter := by
  unfold Arena.retireSet s2Step74ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step74ExitGvBefore,s2Step74ExitFAfter,s2Step74ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step74ExitGv_checked : planRowResizeLog s2Step74ExitGvBefore s2Step74ExitGvRow 50 []=
    some (s2Step74ExitGvAfter,s2Step74ExitGvOut,shrinkRow 771 s2Step74ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step74ExitGvBefore s2Step74ExitGvRow 50 s2Step74ExitGv_distinct s2Step74ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step74ExitGvRow.payload.take 50) s2Step74ExitGvRow.sign=s2Step74ExitGvOut := by decide +kernel
  have hi : s2Step74ExitGvRow.payload.drop 50=s2Step74ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step74ExitGv_retired] at result
  exact result

private theorem s2Step74ExitBank_rows : planWindowRowsLog s2Step74ExitGBefore [(s2Step74ExitGRow,231),(s2Step74ExitFRow,231),(s2Step74ExitFvRow,51),(s2Step74ExitGvRow,50)] [[],[],[],[]]=
    some (s2Step74ExitGvAfter,[s2Step74ExitGOut,s2Step74ExitFOut,s2Step74ExitFvOut,s2Step74ExitGvOut],(shrinkRow 769 s2Step74ExitGExtra ++ (shrinkRow 768 s2Step74ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step74ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step74ExitGvAfter [] []=some (s2Step74ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step74ExitGvBefore s2Step74ExitGvAfter s2Step74ExitGvAfter
    s2Step74ExitGvRow s2Step74ExitGvOut 50 [] [] [] []
    (shrinkRow 771 s2Step74ExitGvExtra) ([]) s2Step74ExitGv_Incoming s2Step74ExitGv_checked h4 s2Step74ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step74ExitFvBefore s2Step74ExitFvAfter s2Step74ExitGvAfter
    s2Step74ExitFvRow s2Step74ExitFvOut 51 [] [(s2Step74ExitGvRow,50)] [[]] [s2Step74ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step74ExitGvExtra ++ [])) s2Step74ExitFv_Incoming s2Step74ExitFv_checked h3 s2Step74ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step74ExitFBefore s2Step74ExitFAfter s2Step74ExitGvAfter
    s2Step74ExitFRow s2Step74ExitFOut 231 [] [(s2Step74ExitFvRow,51),(s2Step74ExitGvRow,50)] [[],[]] [s2Step74ExitFvOut,s2Step74ExitGvOut]
    (shrinkRow 768 s2Step74ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step74ExitGvExtra ++ []))) s2Step74ExitF_Incoming s2Step74ExitF_checked h2 s2Step74ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step74ExitGBefore s2Step74ExitGAfter s2Step74ExitGvAfter
    s2Step74ExitGRow s2Step74ExitGOut 231 [] [(s2Step74ExitFRow,231),(s2Step74ExitFvRow,51),(s2Step74ExitGvRow,50)] [[],[],[]] [s2Step74ExitFOut,s2Step74ExitFvOut,s2Step74ExitGvOut]
    (shrinkRow 769 s2Step74ExitGExtra) ((shrinkRow 768 s2Step74ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step74ExitGvExtra ++ [])))) s2Step74ExitG_Incoming s2Step74ExitG_checked h1 s2Step74ExitG_Outgoing
  exact h0

private theorem s2Step74ExitBank_checked : compileHmrBankResizeLog .exit s2Step74ExitGBefore ⟨s2Step74ExitFRow,s2Step74ExitGRow,s2Step74ExitFvRow,s2Step74ExitGvRow⟩ ⟨231,231,51,50⟩ [[],[],[],[]]=
    some (s2Step74ExitGvAfter,⟨s2Step74ExitFOut,s2Step74ExitGOut,s2Step74ExitFvOut,s2Step74ExitGvOut⟩,(shrinkRow 769 s2Step74ExitGExtra ++ (shrinkRow 768 s2Step74ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step74ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step74ExitBank_rows]
  rfl

private theorem s2Step74Add0_apart : Disjoint s2Step74Add0Arena.live s2Step74Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step74Add0Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step74Add0_card : s2Step74Add0Arena.live.card=868 := by
  decide +kernel

private theorem s2Step74Add0_borrowed : s2Step74Add0Arena.checkBorrow (hmrHybridCount s2Step74Add0Arena s2Step74Add0B.length) s2Step74Add0Work=some s2Step74Add0During := by
  have len : s2Step74Add0Work.length=hmrHybridCount s2Step74Add0Arena s2Step74Add0B.length := by
    rw [hmrHybridCount,s2Step74Add0_card]
    decide +kernel
  have nd : s2Step74Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step74Add0Arena s2Step74Add0During s2Step74Add0Work.toFinset s2Step74Add0_bounded s2Step74Add0_apart rfl

private theorem s2Step74Add0_distinct : (844::814::826::(s2Step74Add0A++s2Step74Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step74Add0_owned : (844::814::826::(s2Step74Add0A++s2Step74Add0B)).toFinset⊆s2Step74Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step74Add0Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step74Add0_checked : compileHmrHybridCinLog s2Step74Add0Arena 814 844 826 s2Step74Add0A s2Step74Add0B s2Step74Add0Work=some s2Step74Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step74Add0Arena s2Step74Add0During 814 844 826 s2Step74Add0A s2Step74Add0B s2Step74Add0Work
    (by decide +kernel) (by decide +kernel) s2Step74Add0_distinct
    (fun q hq => s2Step74Add0_owned (List.mem_toFinset.mpr hq)) s2Step74Add0_borrowed

private theorem s2Step74Add1_apart : Disjoint s2Step74Add1Arena.live s2Step74Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step74Add1Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step74Add1_card : s2Step74Add1Arena.live.card=868 := by
  decide +kernel

private theorem s2Step74Add1_borrowed : s2Step74Add1Arena.checkBorrow (hmrHybridCount s2Step74Add1Arena s2Step74Add1B.length) s2Step74Add1Work=some s2Step74Add1During := by
  have len : s2Step74Add1Work.length=hmrHybridCount s2Step74Add1Arena s2Step74Add1B.length := by
    rw [hmrHybridCount,s2Step74Add1_card]
    decide +kernel
  have nd : s2Step74Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step74Add1Arena s2Step74Add1During s2Step74Add1Work.toFinset s2Step74Add1_bounded s2Step74Add1_apart rfl

private theorem s2Step74Add1_distinct : (844::814::826::(s2Step74Add1A++s2Step74Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step74Add1_owned : (844::814::826::(s2Step74Add1A++s2Step74Add1B)).toFinset⊆s2Step74Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step74Add1Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step74Add1_checked : compileHmrHybridCinLog s2Step74Add1Arena 814 844 826 s2Step74Add1A s2Step74Add1B s2Step74Add1Work=some s2Step74Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step74Add1Arena s2Step74Add1During 814 844 826 s2Step74Add1A s2Step74Add1B s2Step74Add1Work
    (by decide +kernel) (by decide +kernel) s2Step74Add1_distinct
    (fun q hq => s2Step74Add1_owned (List.mem_toFinset.mpr hq)) s2Step74Add1_borrowed

private theorem s2Step74F4_apart : Disjoint (s2Step74Add0A++s2Step74Add0B).toFinset (s2Step74Add1A++s2Step74Add1B).toFinset := by
  have nd : ((s2Step74Add0A++s2Step74Add0B)++(s2Step74Add1A++s2Step74Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step74F4_carry : s2Step74F4FlagArena.checkBorrow 1 [826]=some s2Step74Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step74F4FlagArena,s2Step74HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step74F4FlagArena,s2Step74HeadFvAfter,s2Step74Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step74F4_distinct : (845::814::844::826::((s2Step74Add0A++s2Step74Add1A)++(s2Step74Add0B++s2Step74Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step74F4_flag : s2Step74HeadFvAfter.checkBorrow 1 [844]=some s2Step74F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step74HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step74F4_owned : (845::814::((s2Step74Add0A++s2Step74Add1A)++(s2Step74Add0B++s2Step74Add1B))).toFinset⊆s2Step74HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step74HeadFvAfter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step74F4_checked : compileHmrHybridF4Log s2Step74HeadFvAfter 845 814 s2Step74Add0A s2Step74Add0B s2Step74Add1A s2Step74Add1B [844] [826] s2Step74Add0Work s2Step74Add1Work=some s2Step74F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step74HeadFvAfter s2Step74F4FlagArena s2Step74Add0Arena s2Step74Add0During s2Step74Add1During 845 814
    s2Step74Add0A s2Step74Add0B s2Step74Add1A s2Step74Add1B [844] [826] s2Step74Add0Work s2Step74Add1Work
    (fun q hq => s2Step74F4_owned (List.mem_toFinset.mpr hq)) s2Step74F4_flag s2Step74F4_carry
    s2Step74F4_distinct s2Step74F4_apart s2Step74Add0_checked s2Step74Add1_checked

private theorem s2Step74Front_branch : s2Step74FrontSigmaArena.checkBorrow 1 [814]=some s2Step74HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step74FrontSigmaArena,s2Step74EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step74FrontSigmaArena,s2Step74EntryGvAfter,s2Step74HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step74Front_entry : HmrFrontEntryValid s2Step74EntryFBefore s2Step74FrontBank 232 50 ⟨231,231,51,50⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step74FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step74EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step74EntryFBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (836≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step74FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step74Front_sigma : s2Step74EntryGvAfter.checkBorrow 1 [845]=some s2Step74FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step74EntryGvAfter,arenaWires]
  · rfl

private def s2Step74HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step74HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step74HeadFBefore : Arena := s2Step74HeadGAfter

private def s2Step74HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743],768⟩

private def s2Step74HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829],770⟩

private def s2Step74HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 831],769⟩

private def s2Step74HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822],771⟩

private theorem s2Step74HeadBank_incomingDistinct : ([s2Step74HeadGRow,s2Step74HeadFRow,s2Step74HeadGvRow,s2Step74HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step74HeadF_Incoming : rowsOwned s2Step74HeadFBefore [s2Step74HeadFRow,s2Step74HeadGvRow,s2Step74HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step74HeadGRow,s2Step74HeadFRow,s2Step74HeadGvRow,s2Step74HeadFvRow] 1 s2Step74HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step74HeadFBefore (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step74HeadBank_outgoingOwned : rowsOwned s2Step74HeadFvAfter [s2Step74HeadGOut,s2Step74HeadFOut,s2Step74HeadGvOut,s2Step74HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step74HeadFvAfter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step74HeadF_Outgoing : rowsOwned s2Step74HeadFvAfter [s2Step74HeadFOut,s2Step74HeadGvOut,s2Step74HeadFvOut] :=
  hmrRows_owned_drop s2Step74HeadFvAfter [s2Step74HeadGOut,s2Step74HeadFOut,s2Step74HeadGvOut,s2Step74HeadFvOut] 1 s2Step74HeadBank_outgoingOwned

private theorem s2Step74HeadF_distinct : (s2Step74HeadFRow.sign::s2Step74HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step74HeadF_owned : (s2Step74HeadFRow.sign::s2Step74HeadFRow.payload).toFinset⊆s2Step74HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step74HeadFBefore (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step74HeadF_reserved : s2Step74HeadFBefore.reserve s2Step74HeadFFresh.toFinset=some s2Step74HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step74HeadFFresh,arenaWires]
  · norm_num [s2Step74HeadFBefore,s2Step74HeadGAfter,s2Step74HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step74HeadFAfter,s2Step74HeadFBefore,s2Step74HeadGAfter,s2Step74HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step74HeadF_checked : planRowResizeLog s2Step74HeadFBefore s2Step74HeadFRow 233 s2Step74HeadFFresh=
    some (s2Step74HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 816],768⟩,growRow 768 s2Step74HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step74HeadFBefore s2Step74HeadFAfter s2Step74HeadFRow 233 s2Step74HeadFFresh
    s2Step74HeadF_distinct s2Step74HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step74HeadF_reserved
  have rowEq : WindowRow.mk (s2Step74HeadFRow.payload++s2Step74HeadFFresh) s2Step74HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 816],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step74HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<834) ∨ (835≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step74HeadFvBefore : Arena := s2Step74HeadGvAfter

private theorem s2Step74HeadFv_Incoming : rowsOwned s2Step74HeadFvBefore [s2Step74HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step74HeadGRow,s2Step74HeadFRow,s2Step74HeadGvRow,s2Step74HeadFvRow] 3 s2Step74HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step74HeadFvBefore (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<834) ∨ (835≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step74HeadFv_Outgoing : rowsOwned s2Step74HeadFvAfter [s2Step74HeadFvOut] :=
  hmrRows_owned_drop s2Step74HeadFvAfter [s2Step74HeadGOut,s2Step74HeadFOut,s2Step74HeadGvOut,s2Step74HeadFvOut] 3 s2Step74HeadBank_outgoingOwned

private theorem s2Step74HeadFv_distinct : (s2Step74HeadFvRow.sign::s2Step74HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step74HeadFv_owned : (s2Step74HeadFvRow.sign::s2Step74HeadFvRow.payload).toFinset⊆s2Step74HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step74HeadFvBefore (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<834) ∨ (835≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step74HeadFv_reserved : s2Step74HeadFvBefore.reserve s2Step74HeadFvFresh.toFinset=some s2Step74HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step74HeadFvFresh,arenaWires]
  · norm_num [s2Step74HeadFvBefore,s2Step74HeadGvAfter,s2Step74HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step74HeadFvAfter,s2Step74HeadFvBefore,s2Step74HeadGvAfter,s2Step74HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step74HeadFv_checked : planRowResizeLog s2Step74HeadFvBefore s2Step74HeadFvRow 51 s2Step74HeadFvFresh=
    some (s2Step74HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834],770⟩,growRow 770 s2Step74HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step74HeadFvBefore s2Step74HeadFvAfter s2Step74HeadFvRow 51 s2Step74HeadFvFresh
    s2Step74HeadFv_distinct s2Step74HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step74HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step74HeadFvRow.payload++s2Step74HeadFvFresh) s2Step74HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step74HeadG_Incoming : rowsOwned s2Step74HeadGBefore [s2Step74HeadGRow,s2Step74HeadFRow,s2Step74HeadGvRow,s2Step74HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step74HeadGRow,s2Step74HeadFRow,s2Step74HeadGvRow,s2Step74HeadFvRow] 0 s2Step74HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step74HeadGBefore (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<834) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step74HeadG_Outgoing : rowsOwned s2Step74HeadFvAfter [s2Step74HeadGOut,s2Step74HeadFOut,s2Step74HeadGvOut,s2Step74HeadFvOut] :=
  hmrRows_owned_drop s2Step74HeadFvAfter [s2Step74HeadGOut,s2Step74HeadFOut,s2Step74HeadGvOut,s2Step74HeadFvOut] 0 s2Step74HeadBank_outgoingOwned

private theorem s2Step74HeadG_distinct : (s2Step74HeadGRow.sign::s2Step74HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step74HeadG_owned : (s2Step74HeadGRow.sign::s2Step74HeadGRow.payload).toFinset⊆s2Step74HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step74HeadGBefore (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<834) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step74HeadG_reserved : s2Step74HeadGBefore.reserve s2Step74HeadGFresh.toFinset=some s2Step74HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step74HeadGFresh,arenaWires]
  · norm_num [s2Step74HeadGBefore,s2Step74HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step74HeadGAfter,s2Step74HeadGBefore,s2Step74HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step74HeadG_checked : planRowResizeLog s2Step74HeadGBefore s2Step74HeadGRow 233 s2Step74HeadGFresh=
    some (s2Step74HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 831, 835],769⟩,growRow 769 s2Step74HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step74HeadGBefore s2Step74HeadGAfter s2Step74HeadGRow 233 s2Step74HeadGFresh
    s2Step74HeadG_distinct s2Step74HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step74HeadG_reserved
  have rowEq : WindowRow.mk (s2Step74HeadGRow.payload++s2Step74HeadGFresh) s2Step74HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 831, 835],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step74HeadGvBefore : Arena := s2Step74HeadFAfter

private theorem s2Step74HeadGv_Incoming : rowsOwned s2Step74HeadGvBefore [s2Step74HeadGvRow,s2Step74HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step74HeadGRow,s2Step74HeadFRow,s2Step74HeadGvRow,s2Step74HeadFvRow] 2 s2Step74HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step74HeadGvBefore (fun q => (0≤q ∧ q<826) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step74HeadGv_Outgoing : rowsOwned s2Step74HeadFvAfter [s2Step74HeadGvOut,s2Step74HeadFvOut] :=
  hmrRows_owned_drop s2Step74HeadFvAfter [s2Step74HeadGOut,s2Step74HeadFOut,s2Step74HeadGvOut,s2Step74HeadFvOut] 2 s2Step74HeadBank_outgoingOwned

private theorem s2Step74HeadGv_distinct : (s2Step74HeadGvRow.sign::s2Step74HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step74HeadGv_owned : (s2Step74HeadGvRow.sign::s2Step74HeadGvRow.payload).toFinset⊆s2Step74HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step74HeadGvBefore (fun q => (0≤q ∧ q<826) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step74HeadGv_reserved : s2Step74HeadGvBefore.reserve s2Step74HeadGvFresh.toFinset=some s2Step74HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step74HeadGvFresh,arenaWires]
  · norm_num [s2Step74HeadGvBefore,s2Step74HeadFAfter,s2Step74HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step74HeadGvAfter,s2Step74HeadGvBefore,s2Step74HeadFAfter,s2Step74HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step74HeadGv_checked : planRowResizeLog s2Step74HeadGvBefore s2Step74HeadGvRow 51 s2Step74HeadGvFresh=
    some (s2Step74HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 827],771⟩,growRow 771 s2Step74HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step74HeadGvBefore s2Step74HeadGvAfter s2Step74HeadGvRow 51 s2Step74HeadGvFresh
    s2Step74HeadGv_distinct s2Step74HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step74HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step74HeadGvRow.payload++s2Step74HeadGvFresh) s2Step74HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 827],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step74HeadBank_rows : planWindowRowsLog s2Step74HeadGBefore [(s2Step74HeadGRow,233),(s2Step74HeadFRow,233),(s2Step74HeadGvRow,51),(s2Step74HeadFvRow,51)] [s2Step74HeadGFresh,s2Step74HeadFFresh,s2Step74HeadGvFresh,s2Step74HeadFvFresh]=
    some (s2Step74HeadFvAfter,[s2Step74HeadGOut,s2Step74HeadFOut,s2Step74HeadGvOut,s2Step74HeadFvOut],(growRow 769 s2Step74HeadGFresh ++ (growRow 768 s2Step74HeadFFresh ++ (growRow 771 s2Step74HeadGvFresh ++ (growRow 770 s2Step74HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step74HeadFvAfter [] []=some (s2Step74HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step74HeadFvBefore s2Step74HeadFvAfter s2Step74HeadFvAfter
    s2Step74HeadFvRow s2Step74HeadFvOut 51 s2Step74HeadFvFresh [] [] []
    (growRow 770 s2Step74HeadFvFresh) ([]) s2Step74HeadFv_Incoming s2Step74HeadFv_checked h4 s2Step74HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step74HeadGvBefore s2Step74HeadGvAfter s2Step74HeadFvAfter
    s2Step74HeadGvRow s2Step74HeadGvOut 51 s2Step74HeadGvFresh [(s2Step74HeadFvRow,51)] [s2Step74HeadFvFresh] [s2Step74HeadFvOut]
    (growRow 771 s2Step74HeadGvFresh) ((growRow 770 s2Step74HeadFvFresh ++ [])) s2Step74HeadGv_Incoming s2Step74HeadGv_checked h3 s2Step74HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step74HeadFBefore s2Step74HeadFAfter s2Step74HeadFvAfter
    s2Step74HeadFRow s2Step74HeadFOut 233 s2Step74HeadFFresh [(s2Step74HeadGvRow,51),(s2Step74HeadFvRow,51)] [s2Step74HeadGvFresh,s2Step74HeadFvFresh] [s2Step74HeadGvOut,s2Step74HeadFvOut]
    (growRow 768 s2Step74HeadFFresh) ((growRow 771 s2Step74HeadGvFresh ++ (growRow 770 s2Step74HeadFvFresh ++ []))) s2Step74HeadF_Incoming s2Step74HeadF_checked h2 s2Step74HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step74HeadGBefore s2Step74HeadGAfter s2Step74HeadFvAfter
    s2Step74HeadGRow s2Step74HeadGOut 233 s2Step74HeadGFresh [(s2Step74HeadFRow,233),(s2Step74HeadGvRow,51),(s2Step74HeadFvRow,51)] [s2Step74HeadFFresh,s2Step74HeadGvFresh,s2Step74HeadFvFresh] [s2Step74HeadFOut,s2Step74HeadGvOut,s2Step74HeadFvOut]
    (growRow 769 s2Step74HeadGFresh) ((growRow 768 s2Step74HeadFFresh ++ (growRow 771 s2Step74HeadGvFresh ++ (growRow 770 s2Step74HeadFvFresh ++ [])))) s2Step74HeadG_Incoming s2Step74HeadG_checked h1 s2Step74HeadG_Outgoing
  exact h0

private theorem s2Step74HeadBank_checked : compileHmrBankResizeLog .headroom s2Step74HeadGBefore ⟨s2Step74HeadFRow,s2Step74HeadGRow,s2Step74HeadFvRow,s2Step74HeadGvRow⟩ ⟨233,233,51,51⟩ [s2Step74HeadGFresh,s2Step74HeadFFresh,s2Step74HeadGvFresh,s2Step74HeadFvFresh]=
    some (s2Step74HeadFvAfter,⟨s2Step74HeadFOut,s2Step74HeadGOut,s2Step74HeadFvOut,s2Step74HeadGvOut⟩,(growRow 769 s2Step74HeadGFresh ++ (growRow 768 s2Step74HeadFFresh ++ (growRow 771 s2Step74HeadGvFresh ++ (growRow 770 s2Step74HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step74HeadBank_rows]
  rfl

private theorem s2Step74Front_checked : compileHmrSourceFrontLog s2Step74EntryFBefore s2Step74FrontBank 232 50 ⟨231,231,51,50⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step74FrontLog=some s2Step74FrontPlan := by
  have pairEq : s2Step74FrontPair=⟨s2Step74HeadFRow,s2Step74HeadGRow,s2Step74HeadFvRow,s2Step74HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step74FrontHead=⟨s2Step74ExitFRow,s2Step74ExitGRow,s2Step74ExitFvRow,s2Step74ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step74Add0A=s2Step74FrontHead.f.wires := by decide +kernel
  have gEq : s2Step74Add0B=s2Step74FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step74Add1A=s2Step74FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step74Add1B=s2Step74FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step74EntryFBefore s2Step74FrontBank 232 50 ⟨231,231,51,50⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step74FrontLog s2Step74FrontPlan
  · exact s2Step74Front_entry
  · exact s2Step74EntryBank_checked
  · exact s2Step74Front_sigma
  · rfl
  · exact s2Step74Front_branch
  · rfl
  · simpa only [s2Step74FrontPlan,pairEq] using s2Step74HeadBank_checked
  · simpa only [s2Step74FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step74F4_checked
  · exact s2Step74Counter_checked
  · rfl
  · simpa only [s2Step74FrontPlan,headEq] using s2Step74ExitBank_checked

private theorem s2Step74Complete_explicit_checked : compileHmrEarlyStepLog s2Step74EntryFBefore s2Step74FrontBank 232 50 ⟨231,231,51,50⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 30 s2Step74CompleteLog=some s2Step74CompletePlan := by
  let Q := s2Step74EarlyControlPlan
  have hq := s2Step74EarlyControl_plan_checked
  have fv1 : s2Step74CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step74CompleteOut.fv.payload[2]?.getD s2Step74CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step74CompleteOut.fv.payload[3]?.getD s2Step74CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step74CompleteOut.fv.payload[4]?.getD s2Step74CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step74EntryFBefore s2Step74EarlyControlArena s2Step74FrontBank 232 50 ⟨231,231,51,50⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 30 s2Step74CompleteLog s2Step74FrontPlan Q
    s2Step74Front_checked s2Step74Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step74Complete_owned s2Step74Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step74EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 777 845 s2Step74CompleteOut.fv.second (s2Step74CompleteOut.fv.payload[2]?.getD s2Step74CompleteOut.fv.sign) (s2Step74CompleteOut.fv.payload[3]?.getD s2Step74CompleteOut.fv.sign) (s2Step74CompleteOut.fv.payload[4]?.getD s2Step74CompleteOut.fv.sign) 814 30 s2Step74EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep74Arena : Arena := s2Step74EntryFBefore
def s2PrivateStep74Bank : WindowBank := s2Step74FrontBank
def s2PrivateStep74Spec : HmrSourceWalkStepLog := ⟨232,50,⟨231,231,51,50⟩,30,.early s2Step74CompleteLog⟩
def s2PrivateStep74Plan : HmrSourceStepPlan := .early s2Step74CompletePlan
theorem s2PrivateStep74_source : s2PrivateStep74Spec=s2ObservedLogs64[10] := rfl
theorem s2PrivateStep74_checked : compileHmrSourceStepLog s2PrivateStep74Arena s2PrivateStep74Bank
    s2PrivateStep74Spec.fgWidth s2PrivateStep74Spec.vWidth s2PrivateStep74Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872]
    6 498 74 s2PrivateStep74Spec.need none s2PrivateStep74Spec.log=some s2PrivateStep74Plan := by
  change compileHmrSourceStepLog s2Step74EntryFBefore s2Step74FrontBank 232 50 ⟨231,231,51,50⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 6 498 74 30 none (.early s2Step74CompleteLog)=some (.early s2Step74CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 74<498)]
  rw [s2Step74Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
