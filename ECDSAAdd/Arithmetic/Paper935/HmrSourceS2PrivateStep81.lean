import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep79
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

private def s2Step81CompleteMoves : List (Wire × Wire) := [(778,740)]

private def s2Step81EarlyControlLog : HmrEarlyControlLog := ⟨[778, 784, 845, 844, 782],[842],[816],[846, 847, 849, 851, 867, 873],[]⟩

private def s2Step81FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [782, 842], [], []],[[816], [844], [784], [845]],[[], [], [], []]⟩,[841],[836],[846],[847],[849, 851, 867, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[849, 851, 867, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924],[846, 847, 849, 851]⟩

private def s2Step81CompleteLog : HmrEarlyStepLog := ⟨s2Step81FrontLog,s2Step81CompleteMoves,s2Step81EarlyControlLog⟩

private def s2Step81ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739],768⟩

private def s2Step81ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783],770⟩

private def s2Step81ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226],769⟩

private def s2Step81ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826],771⟩

private def s2Step81FrontOut : WindowBank := ⟨s2Step81ExitFOut,s2Step81ExitGOut,s2Step81ExitFvOut,s2Step81ExitGvOut⟩

private def s2Step81CompleteOut : WindowBank := s2Step81FrontOut.repacked s2Step81CompleteMoves

private def s2Step81EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step81EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step81EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step81EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step81EarlyControlPositiveArena,[842],s2Step81EarlyControlEqualityArena,[816],⟨⟨841,false⟩,[⟨⟨842,false⟩,816⟩]⟩⟩

private def s2Step81EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<874)),Finset.filter_subset _ _⟩

private def s2Step81EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<874)),Finset.filter_subset _ _⟩

private def s2Step81EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step81EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step81EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step81EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<842) ∨ (843≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step81EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,778⟩,⟨⟨774,false⟩,784⟩,⟨⟨775,false⟩,845⟩,⟨⟨776,false⟩,844⟩,⟨⟨777,false⟩,782⟩]⟩

private def s2Step81EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step81EarlyControlZeroArena,s2Step81EarlyControlZeroPlan,s2Step81EarlyControlClassPlan,s2Step81EarlyControlFlagArena,s2Step81EarlyControlFittedArena,s2Step81EarlyControlHistoryArena,s2Step81EarlyControlSigmaArena,s2Step81EarlyControlOutputArena,s2Step81EarlyControlLog⟩

private def s2Step81CounterWork : List Wire := [846, 847, 849, 851]

private theorem s2Step81Counter_bounded : s2Step81CounterWork.toFinset⊆arenaWires := by norm_num [s2Step81CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step81HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step81CounterDuring : Arena := ⟨s2Step81HeadFvAfter.live∪s2Step81CounterWork.toFinset,Finset.union_subset s2Step81HeadFvAfter.bounded s2Step81Counter_bounded⟩

private def s2Step81EntryFFresh : List Wire := []

private def s2Step81EntryFvFresh : List Wire := []

private def s2Step81EntryGFresh : List Wire := [782, 842]

private def s2Step81EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step81EntryGvAfter : Arena := s2Step81EntryGAfter

private def s2Step81EntryGvFresh : List Wire := []

private def s2Step81ExitFExtra : List Wire := [740, 844]

private def s2Step81ExitFvExtra : List Wire := [845]

private def s2Step81ExitGExtra : List Wire := [782, 842, 816]

private def s2Step81ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<740) ∨ (741≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step81ExitGvExtra : List Wire := [784]

private def s2Step81Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step81Add0Work : List Wire := [849, 851, 867, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step81Add0_bounded : s2Step81Add0Work.toFinset⊆arenaWires := by
  have h : s2Step81Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step81Add0During : Arena := ⟨s2Step81Add0Arena.live∪s2Step81Add0Work.toFinset,Finset.union_subset s2Step81Add0Arena.bounded s2Step81Add0_bounded⟩

private def s2Step81Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step81Add1Work : List Wire := [849, 851, 867, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924]

private theorem s2Step81Add1_bounded : s2Step81Add1Work.toFinset⊆arenaWires := by
  have h : s2Step81Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step81Add1During : Arena := ⟨s2Step81Add1Arena.live∪s2Step81Add1Work.toFinset,Finset.union_subset s2Step81Add1Arena.bounded s2Step81Add1_bounded⟩

private def s2Step81F4FlagArena : Arena := ⟨s2Step81HeadFvAfter.live∪{846},Finset.union_subset s2Step81HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step81F4Plan : HmrHybridF4Plan := ⟨s2Step81F4FlagArena,[846],s2Step81Add0Arena,[847],s2Step81Add0During,s2Step81Add0Work,s2Step81Add1During,s2Step81Add1Work⟩

private def s2Step81HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 844],768⟩

private def s2Step81HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 845],770⟩

private def s2Step81HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 782, 842, 816],769⟩

private def s2Step81HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 784],771⟩

private def s2Step81FrontHead : WindowBank := ⟨s2Step81HeadFOut,s2Step81HeadGOut,s2Step81HeadFvOut,s2Step81HeadGvOut⟩

private def s2Step81EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740],768⟩

private def s2Step81EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783],770⟩

private def s2Step81EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 782, 842],769⟩

private def s2Step81EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826],771⟩

private def s2Step81FrontPair : WindowBank := ⟨s2Step81EntryFOut,s2Step81EntryGOut,s2Step81EntryFvOut,s2Step81EntryGvOut⟩

private def s2Step81FrontSigmaArena : Arena := ⟨s2Step81EntryGvAfter.live∪{841},Finset.union_subset s2Step81EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step81HeadFFresh : List Wire := [844]

private def s2Step81HeadFvFresh : List Wire := [845]

private def s2Step81HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step81HeadGFresh : List Wire := [816]

private def s2Step81HeadGvFresh : List Wire := [784]

private def s2Step81FrontPlan : HmrSourceFront := ⟨s2Step81EntryGvAfter,s2Step81FrontPair,(growRow 768 s2Step81EntryFFresh ++ (growRow 769 s2Step81EntryGFresh ++ (growRow 770 s2Step81EntryFvFresh ++ (growRow 771 s2Step81EntryGvFresh ++ [])))),s2Step81FrontSigmaArena,[841],s2Step81HeadGBefore,[836],
  s2Step81HeadFvAfter,s2Step81FrontHead,(growRow 769 s2Step81HeadGFresh ++ (growRow 768 s2Step81HeadFFresh ++ (growRow 771 s2Step81HeadGvFresh ++ (growRow 770 s2Step81HeadFvFresh ++ [])))),s2Step81F4Plan,s2Step81CounterDuring,s2Step81CounterWork,s2Step81ExitGvAfter,s2Step81FrontOut,(shrinkRow 769 s2Step81ExitGExtra ++ (shrinkRow 768 s2Step81ExitFExtra ++ (shrinkRow 770 s2Step81ExitFvExtra ++ (shrinkRow 771 s2Step81ExitGvExtra ++ []))))⟩

private def s2Step81CompletePlan : HmrEarlyStepPlan := ⟨s2Step81FrontPlan,s2Step81EarlyControlArena,s2Step81EarlyControlPlan,s2Step81CompleteMoves⟩

private theorem s2Step81Complete_apart : List.Disjoint (s2Step81CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [841, 836, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] := by
  have nd : ((s2Step81CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[841, 836, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step81Complete_owned : (s2Step81CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step81EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step81EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private def s2Step81CompleteMoveArena : Arena := ⟨s2Step81ExitGvAfter.live∪{740},Finset.union_subset s2Step81ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step81Complete_repack : s2Step81ExitGvAfter.checkRepack s2Step81CompleteMoves=some s2Step81EarlyControlArena := by
  have owned : 778∈s2Step81ExitGvAfter.live := by norm_num [s2Step81ExitGvAfter,arenaWires]
  have reserve : s2Step81ExitGvAfter.reserve {740}=some s2Step81CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step81ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step81CompleteMoveArena.retireSet {778}=s2Step81EarlyControlArena := by
    unfold Arena.retireSet s2Step81EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step81CompleteMoveArena,s2Step81ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step81CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step81CompleteMoveArena.retireSet {778}).checkRepack []=some s2Step81EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step81EarlyControl_branchOwned : ([836] : List Wire).toFinset⊆s2Step81EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step81EarlyControlSigmaArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step81EarlyControl_branch : compileHmrBranchRetirement s2Step81EarlyControlSigmaArena 836=some s2Step81EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step81EarlyControl_branchOwned
  · ext q
    simp [s2Step81EarlyControlOutputArena,s2Step81EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step81EarlyControl_classEqualityBorrow : s2Step81EarlyControlPositiveArena.checkBorrow (([841, 842] : List Wire).length-1) s2Step81EarlyControlLog.classWork=some s2Step81EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step81EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step81EarlyControlPositiveArena (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
      decide +kernel
    · ext q
      simp [s2Step81EarlyControlEqualityArena,s2Step81EarlyControlPositiveArena,s2Step81EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step81EarlyControl_classEqualityOwned : ([841, 842] : List Wire).toFinset⊆s2Step81EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step81EarlyControlPositiveArena (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step81EarlyControl_classEquality : compileHmrEqualityLog s2Step81EarlyControlPositiveArena [841, 842] 0 s2Step81EarlyControlLog.classWork=some (s2Step81EarlyControlEqualityArena,s2Step81EarlyControlLog.classWork,s2Step81EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step81EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step81EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step81EarlyControl_classOwned : ([777, 782, 841] : List Wire).toFinset⊆s2Step81EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step81EarlyControlZeroArena (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<842) ∨ (843≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step81EarlyControl_positiveBorrow : s2Step81EarlyControlZeroArena.checkBorrow (1) s2Step81EarlyControlLog.positiveWork=some s2Step81EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step81EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step81EarlyControlZeroArena (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<842) ∨ (843≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
      decide +kernel
    · ext q
      simp [s2Step81EarlyControlPositiveArena,s2Step81EarlyControlZeroArena,s2Step81EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step81EarlyControl_class : compileHmrSourceClassLog s2Step81EarlyControlZeroArena false 777 s2Step81EarlyControlZeroPlan.top 0 841 s2Step81EarlyControlLog.positiveWork s2Step81EarlyControlLog.classWork=some s2Step81EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step81EarlyControlClassPlan s2Step81EarlyControlZeroArena false 777 s2Step81EarlyControlZeroPlan.top 0 841
  constructor
  · decide +kernel
  · exact s2Step81EarlyControl_classOwned
  · exact s2Step81EarlyControl_positiveBorrow
  · exact s2Step81EarlyControl_classEquality

private theorem s2Step81EarlyControl_entryRecordOwned : ([836, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] : List Wire).toFinset⊆s2Step81EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step81EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step81EarlyControl_entrySigmaOwned : ([841, 254] : List Wire).toFinset⊆s2Step81EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step81EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step81EarlyControl_fitBorrow : s2Step81EarlyControlFlagArena.checkBorrow ((30-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] : List Wire).length)) s2Step81EarlyControlLog.recordFresh=some s2Step81EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step81EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step81EarlyControlFlagArena (fun q => (0≤q ∧ q<874)) rfl
      decide +kernel
    · ext q
      simp [s2Step81EarlyControlFittedArena,s2Step81EarlyControlFlagArena,s2Step81EarlyControlLog,arenaWires]

private theorem s2Step81EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] : List Wire).toFinset⊆s2Step81EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step81EarlyControlFlagArena (fun q => (0≤q ∧ q<874)) rfl
  decide +kernel

private theorem s2Step81EarlyControl_fit : compileHmrRecordGrowLog s2Step81EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 30 s2Step81EarlyControlLog.recordFresh=some s2Step81EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step81EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step81EarlyControl_fitBorrow

private theorem s2Step81EarlyControl_flagsBorrow : s2Step81EarlyControlEqualityArena.checkBorrow (6) s2Step81EarlyControlLog.flagWork=some s2Step81EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step81EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step81EarlyControlEqualityArena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
      decide +kernel
    · ext q
      simp [s2Step81EarlyControlFlagArena,s2Step81EarlyControlEqualityArena,s2Step81EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step81EarlyControl_flagsOwned : ([816, 253, 252, 251] : List Wire).toFinset⊆s2Step81EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step81EarlyControlEqualityArena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step81EarlyControl_flags : compileHmrFlagsLog s2Step81EarlyControlClassPlan.equalityArena s2Step81EarlyControlClassPlan.equality.top 253 252 251 s2Step81EarlyControlLog.flagWork=some s2Step81EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step81EarlyControl_flagsOwned⟩
  · exact s2Step81EarlyControl_flagsBorrow

private theorem s2Step81EarlyControl_historyBorrow : s2Step81EarlyControlArena.checkBorrow ((30-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] : List Wire).length)) s2Step81EarlyControlLog.recordFresh=some s2Step81EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step81EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step81EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
      decide +kernel
    · ext q
      simp [s2Step81EarlyControlHistoryArena,s2Step81EarlyControlArena,s2Step81EarlyControlLog,arenaWires]

private theorem s2Step81EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] : List Wire).toFinset⊆s2Step81EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step81EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step81EarlyControl_history : compileHmrRecordGrowLog s2Step81EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 30 s2Step81EarlyControlLog.recordFresh=some s2Step81EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step81EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step81EarlyControl_historyBorrow

private theorem s2Step81EarlyControl_sigmaOwned : ([254, 841] : List Wire).toFinset⊆s2Step81EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step81EarlyControlHistoryArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step81EarlyControl_sigmaReleaseOwned : ([841] : List Wire).toFinset⊆s2Step81EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step81EarlyControlHistoryArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step81EarlyControl_sigmaRelease : s2Step81EarlyControlHistoryArena.release {841} (fun _ => false)=some s2Step81EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step81EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step81EarlyControlSigmaArena,s2Step81EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step81EarlyControl_sigma : compileHmrSigmaDropLog s2Step81EarlyControlHistoryArena false 0 0 254 841 []=some s2Step81EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step81EarlyControl_sigmaOwned⟩
  · exact s2Step81EarlyControl_sigmaRelease

private theorem s2Step81EarlyControl_zeroBorrow : s2Step81EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step81EarlyControlLog.zeroWork=some s2Step81EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step81EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step81EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
      decide +kernel
    · ext q
      simp [s2Step81EarlyControlZeroArena,s2Step81EarlyControlArena,s2Step81EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step81EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step81EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step81EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step81EarlyControl_zero : compileHmrEqualityLog s2Step81EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step81EarlyControlLog.zeroWork=some (s2Step81EarlyControlZeroArena,s2Step81EarlyControlLog.zeroWork,s2Step81EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step81EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step81EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step81EarlyControl_logged : s2Step81EarlyControlPlan.Logged s2Step81EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 777 841 254 253 252 251 836 30 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step81EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step81EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step81EarlyControl_zero
  · exact s2Step81EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step81EarlyControl_flags
  · exact s2Step81EarlyControl_fit
  · exact s2Step81EarlyControl_history
  · exact s2Step81EarlyControl_sigma
  · exact s2Step81EarlyControl_branch

private theorem s2Step81EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step81EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 777 841 254 253 252 251 836 30 s2Step81EarlyControlLog=some s2Step81EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step81EarlyControlPlan s2Step81EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 777 841 254 253 252 251 836 30 s2Step81EarlyControl_logged

private def s2Step81EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step81EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740],768⟩

private def s2Step81EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783],770⟩

private def s2Step81EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226],769⟩

private def s2Step81EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826],771⟩

private def s2Step81FrontBank : WindowBank := ⟨s2Step81EntryFRow,s2Step81EntryGRow,s2Step81EntryFvRow,s2Step81EntryGvRow⟩

private def s2Step81Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 844, 768]

private def s2Step81Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 782, 842, 816, 769]

private def s2Step81Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 845, 770]

private def s2Step81Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 784, 771]

private theorem s2Step81Counter_apart : Disjoint s2Step81HeadFvAfter.live s2Step81CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step81HeadFvAfter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step81Counter_borrowed : s2Step81HeadFvAfter.checkBorrow 4 s2Step81CounterWork=some s2Step81CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step81HeadFvAfter s2Step81CounterDuring s2Step81CounterWork.toFinset s2Step81Counter_bounded s2Step81Counter_apart rfl

private theorem s2Step81Counter_owned : (841::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step81HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step81HeadFvAfter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step81Counter_checked : compileHmrCounterStepLog s2Step81HeadFvAfter true 841 [772, 773, 774, 775, 776, 777] s2Step81CounterWork=some s2Step81CounterDuring := by
  have owned : ∀q∈841::[772, 773, 774, 775, 776, 777],q∈s2Step81HeadFvAfter.live := fun q hq => s2Step81Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step81Counter_borrowed

private def s2Step81EntryFAfter : Arena := s2Step81EntryFBefore

private theorem s2Step81EntryBank_incomingDistinct : ([s2Step81EntryFRow,s2Step81EntryGRow,s2Step81EntryFvRow,s2Step81EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step81EntryF_Incoming : rowsOwned s2Step81EntryFBefore [s2Step81EntryFRow,s2Step81EntryGRow,s2Step81EntryFvRow,s2Step81EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step81EntryFRow,s2Step81EntryGRow,s2Step81EntryFvRow,s2Step81EntryGvRow] 0 s2Step81EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step81EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step81EntryBank_outgoingOwned : rowsOwned s2Step81EntryGvAfter [s2Step81EntryFOut,s2Step81EntryGOut,s2Step81EntryFvOut,s2Step81EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step81EntryGvAfter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step81EntryF_Outgoing : rowsOwned s2Step81EntryGvAfter [s2Step81EntryFOut,s2Step81EntryGOut,s2Step81EntryFvOut,s2Step81EntryGvOut] :=
  hmrRows_owned_drop s2Step81EntryGvAfter [s2Step81EntryFOut,s2Step81EntryGOut,s2Step81EntryFvOut,s2Step81EntryGvOut] 0 s2Step81EntryBank_outgoingOwned

private theorem s2Step81EntryF_distinct : (s2Step81EntryFRow.sign::s2Step81EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step81EntryF_owned : (s2Step81EntryFRow.sign::s2Step81EntryFRow.payload).toFinset⊆s2Step81EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step81EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step81EntryF_reserved : s2Step81EntryFBefore.reserve s2Step81EntryFFresh.toFinset=some s2Step81EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step81EntryFFresh,arenaWires]
  · norm_num [s2Step81EntryFBefore,s2Step81EntryFFresh,arenaWires]
  · simp only [s2Step81EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step81EntryF_checked : planRowResizeLog s2Step81EntryFBefore s2Step81EntryFRow 229 s2Step81EntryFFresh=
    some (s2Step81EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740],768⟩,growRow 768 s2Step81EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step81EntryFBefore s2Step81EntryFAfter s2Step81EntryFRow 229 s2Step81EntryFFresh
    s2Step81EntryF_distinct s2Step81EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step81EntryF_reserved
  have rowEq : WindowRow.mk (s2Step81EntryFRow.payload++s2Step81EntryFFresh) s2Step81EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step81EntryFvAfter : Arena := s2Step81EntryGAfter

private def s2Step81EntryFvBefore : Arena := s2Step81EntryGAfter

private theorem s2Step81EntryFv_Incoming : rowsOwned s2Step81EntryFvBefore [s2Step81EntryFvRow,s2Step81EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step81EntryFRow,s2Step81EntryGRow,s2Step81EntryFvRow,s2Step81EntryGvRow] 2 s2Step81EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step81EntryFvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step81EntryFv_Outgoing : rowsOwned s2Step81EntryGvAfter [s2Step81EntryFvOut,s2Step81EntryGvOut] :=
  hmrRows_owned_drop s2Step81EntryGvAfter [s2Step81EntryFOut,s2Step81EntryGOut,s2Step81EntryFvOut,s2Step81EntryGvOut] 2 s2Step81EntryBank_outgoingOwned

private theorem s2Step81EntryFv_distinct : (s2Step81EntryFvRow.sign::s2Step81EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step81EntryFv_owned : (s2Step81EntryFvRow.sign::s2Step81EntryFvRow.payload).toFinset⊆s2Step81EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step81EntryFvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step81EntryFv_reserved : s2Step81EntryFvBefore.reserve s2Step81EntryFvFresh.toFinset=some s2Step81EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step81EntryFvFresh,arenaWires]
  · norm_num [s2Step81EntryFvBefore,s2Step81EntryGAfter,s2Step81EntryFvFresh,arenaWires]
  · simp only [s2Step81EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step81EntryFv_checked : planRowResizeLog s2Step81EntryFvBefore s2Step81EntryFvRow 54 s2Step81EntryFvFresh=
    some (s2Step81EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783],770⟩,growRow 770 s2Step81EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step81EntryFvBefore s2Step81EntryFvAfter s2Step81EntryFvRow 54 s2Step81EntryFvFresh
    s2Step81EntryFv_distinct s2Step81EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step81EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step81EntryFvRow.payload++s2Step81EntryFvFresh) s2Step81EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step81EntryGBefore : Arena := s2Step81EntryFBefore

private theorem s2Step81EntryG_Incoming : rowsOwned s2Step81EntryGBefore [s2Step81EntryGRow,s2Step81EntryFvRow,s2Step81EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step81EntryFRow,s2Step81EntryGRow,s2Step81EntryFvRow,s2Step81EntryGvRow] 1 s2Step81EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step81EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step81EntryG_Outgoing : rowsOwned s2Step81EntryGvAfter [s2Step81EntryGOut,s2Step81EntryFvOut,s2Step81EntryGvOut] :=
  hmrRows_owned_drop s2Step81EntryGvAfter [s2Step81EntryFOut,s2Step81EntryGOut,s2Step81EntryFvOut,s2Step81EntryGvOut] 1 s2Step81EntryBank_outgoingOwned

private theorem s2Step81EntryG_distinct : (s2Step81EntryGRow.sign::s2Step81EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step81EntryG_owned : (s2Step81EntryGRow.sign::s2Step81EntryGRow.payload).toFinset⊆s2Step81EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step81EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step81EntryG_reserved : s2Step81EntryGBefore.reserve s2Step81EntryGFresh.toFinset=some s2Step81EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step81EntryGFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s2Step81EntryGBefore,s2Step81EntryFBefore,s2Step81EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step81EntryGAfter,s2Step81EntryGBefore,s2Step81EntryFBefore,s2Step81EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step81EntryG_checked : planRowResizeLog s2Step81EntryGBefore s2Step81EntryGRow 229 s2Step81EntryGFresh=
    some (s2Step81EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 782, 842],769⟩,growRow 769 s2Step81EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step81EntryGBefore s2Step81EntryGAfter s2Step81EntryGRow 229 s2Step81EntryGFresh
    s2Step81EntryG_distinct s2Step81EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step81EntryG_reserved
  have rowEq : WindowRow.mk (s2Step81EntryGRow.payload++s2Step81EntryGFresh) s2Step81EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 782, 842],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step81EntryGvBefore : Arena := s2Step81EntryGAfter

private theorem s2Step81EntryGv_Incoming : rowsOwned s2Step81EntryGvBefore [s2Step81EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step81EntryFRow,s2Step81EntryGRow,s2Step81EntryFvRow,s2Step81EntryGvRow] 3 s2Step81EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step81EntryGvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step81EntryGv_Outgoing : rowsOwned s2Step81EntryGvAfter [s2Step81EntryGvOut] :=
  hmrRows_owned_drop s2Step81EntryGvAfter [s2Step81EntryFOut,s2Step81EntryGOut,s2Step81EntryFvOut,s2Step81EntryGvOut] 3 s2Step81EntryBank_outgoingOwned

private theorem s2Step81EntryGv_distinct : (s2Step81EntryGvRow.sign::s2Step81EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step81EntryGv_owned : (s2Step81EntryGvRow.sign::s2Step81EntryGvRow.payload).toFinset⊆s2Step81EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step81EntryGvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step81EntryGv_reserved : s2Step81EntryGvBefore.reserve s2Step81EntryGvFresh.toFinset=some s2Step81EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step81EntryGvFresh,arenaWires]
  · norm_num [s2Step81EntryGvBefore,s2Step81EntryGAfter,s2Step81EntryGvFresh,arenaWires]
  · simp only [s2Step81EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step81EntryGv_checked : planRowResizeLog s2Step81EntryGvBefore s2Step81EntryGvRow 54 s2Step81EntryGvFresh=
    some (s2Step81EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826],771⟩,growRow 771 s2Step81EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step81EntryGvBefore s2Step81EntryGvAfter s2Step81EntryGvRow 54 s2Step81EntryGvFresh
    s2Step81EntryGv_distinct s2Step81EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step81EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step81EntryGvRow.payload++s2Step81EntryGvFresh) s2Step81EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step81EntryBank_rows : planWindowRowsLog s2Step81EntryFBefore [(s2Step81EntryFRow,229),(s2Step81EntryGRow,229),(s2Step81EntryFvRow,54),(s2Step81EntryGvRow,54)] [s2Step81EntryFFresh,s2Step81EntryGFresh,s2Step81EntryFvFresh,s2Step81EntryGvFresh]=
    some (s2Step81EntryGvAfter,[s2Step81EntryFOut,s2Step81EntryGOut,s2Step81EntryFvOut,s2Step81EntryGvOut],(growRow 768 s2Step81EntryFFresh ++ (growRow 769 s2Step81EntryGFresh ++ (growRow 770 s2Step81EntryFvFresh ++ (growRow 771 s2Step81EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step81EntryGvAfter [] []=some (s2Step81EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step81EntryGvBefore s2Step81EntryGvAfter s2Step81EntryGvAfter
    s2Step81EntryGvRow s2Step81EntryGvOut 54 s2Step81EntryGvFresh [] [] []
    (growRow 771 s2Step81EntryGvFresh) ([]) s2Step81EntryGv_Incoming s2Step81EntryGv_checked h4 s2Step81EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step81EntryFvBefore s2Step81EntryFvAfter s2Step81EntryGvAfter
    s2Step81EntryFvRow s2Step81EntryFvOut 54 s2Step81EntryFvFresh [(s2Step81EntryGvRow,54)] [s2Step81EntryGvFresh] [s2Step81EntryGvOut]
    (growRow 770 s2Step81EntryFvFresh) ((growRow 771 s2Step81EntryGvFresh ++ [])) s2Step81EntryFv_Incoming s2Step81EntryFv_checked h3 s2Step81EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step81EntryGBefore s2Step81EntryGAfter s2Step81EntryGvAfter
    s2Step81EntryGRow s2Step81EntryGOut 229 s2Step81EntryGFresh [(s2Step81EntryFvRow,54),(s2Step81EntryGvRow,54)] [s2Step81EntryFvFresh,s2Step81EntryGvFresh] [s2Step81EntryFvOut,s2Step81EntryGvOut]
    (growRow 769 s2Step81EntryGFresh) ((growRow 770 s2Step81EntryFvFresh ++ (growRow 771 s2Step81EntryGvFresh ++ []))) s2Step81EntryG_Incoming s2Step81EntryG_checked h2 s2Step81EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step81EntryFBefore s2Step81EntryFAfter s2Step81EntryGvAfter
    s2Step81EntryFRow s2Step81EntryFOut 229 s2Step81EntryFFresh [(s2Step81EntryGRow,229),(s2Step81EntryFvRow,54),(s2Step81EntryGvRow,54)] [s2Step81EntryGFresh,s2Step81EntryFvFresh,s2Step81EntryGvFresh] [s2Step81EntryGOut,s2Step81EntryFvOut,s2Step81EntryGvOut]
    (growRow 768 s2Step81EntryFFresh) ((growRow 769 s2Step81EntryGFresh ++ (growRow 770 s2Step81EntryFvFresh ++ (growRow 771 s2Step81EntryGvFresh ++ [])))) s2Step81EntryF_Incoming s2Step81EntryF_checked h1 s2Step81EntryF_Outgoing
  exact h0

private theorem s2Step81EntryBank_checked : compileHmrBankResizeLog .entry s2Step81EntryFBefore ⟨s2Step81EntryFRow,s2Step81EntryGRow,s2Step81EntryFvRow,s2Step81EntryGvRow⟩ ⟨229,229,54,54⟩ [s2Step81EntryFFresh,s2Step81EntryGFresh,s2Step81EntryFvFresh,s2Step81EntryGvFresh]=
    some (s2Step81EntryGvAfter,⟨s2Step81EntryFOut,s2Step81EntryGOut,s2Step81EntryFvOut,s2Step81EntryGvOut⟩,(growRow 768 s2Step81EntryFFresh ++ (growRow 769 s2Step81EntryGFresh ++ (growRow 770 s2Step81EntryFvFresh ++ (growRow 771 s2Step81EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step81EntryBank_rows]
  rfl

private def s2Step81ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<740) ∨ (741≤q ∧ q<782) ∨ (783≤q ∧ q<816) ∨ (817≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step81ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<816) ∨ (817≤q ∧ q<842) ∨ (843≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step81ExitFBefore : Arena := s2Step81ExitGAfter

private def s2Step81ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 844],768⟩

private def s2Step81ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 845],770⟩

private def s2Step81ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 782, 842, 816],769⟩

private def s2Step81ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 784],771⟩

private theorem s2Step81ExitBank_incomingDistinct : ([s2Step81ExitGRow,s2Step81ExitFRow,s2Step81ExitFvRow,s2Step81ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step81ExitF_Incoming : rowsOwned s2Step81ExitFBefore [s2Step81ExitFRow,s2Step81ExitFvRow,s2Step81ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step81ExitGRow,s2Step81ExitFRow,s2Step81ExitFvRow,s2Step81ExitGvRow] 1 s2Step81ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step81ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<816) ∨ (817≤q ∧ q<842) ∨ (843≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step81ExitBank_outgoingOwned : rowsOwned s2Step81ExitGvAfter [s2Step81ExitGOut,s2Step81ExitFOut,s2Step81ExitFvOut,s2Step81ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step81ExitGvAfter (fun q => (0≤q ∧ q<740) ∨ (741≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step81ExitF_Outgoing : rowsOwned s2Step81ExitGvAfter [s2Step81ExitFOut,s2Step81ExitFvOut,s2Step81ExitGvOut] :=
  hmrRows_owned_drop s2Step81ExitGvAfter [s2Step81ExitGOut,s2Step81ExitFOut,s2Step81ExitFvOut,s2Step81ExitGvOut] 1 s2Step81ExitBank_outgoingOwned

private theorem s2Step81ExitF_distinct : (s2Step81ExitFRow.sign::s2Step81ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step81ExitF_owned : (s2Step81ExitFRow.sign::s2Step81ExitFRow.payload).toFinset⊆s2Step81ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step81ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<816) ∨ (817≤q ∧ q<842) ∨ (843≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step81ExitF_retired : s2Step81ExitFBefore.retireSet s2Step81ExitFExtra.toFinset=s2Step81ExitFAfter := by
  unfold Arena.retireSet s2Step81ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step81ExitFBefore,s2Step81ExitGAfter,s2Step81ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step81ExitF_checked : planRowResizeLog s2Step81ExitFBefore s2Step81ExitFRow 228 []=
    some (s2Step81ExitFAfter,s2Step81ExitFOut,shrinkRow 768 s2Step81ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step81ExitFBefore s2Step81ExitFRow 228 s2Step81ExitF_distinct s2Step81ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step81ExitFRow.payload.take 228) s2Step81ExitFRow.sign=s2Step81ExitFOut := by decide +kernel
  have hi : s2Step81ExitFRow.payload.drop 228=s2Step81ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step81ExitF_retired] at result
  exact result

private def s2Step81ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<740) ∨ (741≤q ∧ q<782) ∨ (783≤q ∧ q<816) ∨ (817≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step81ExitFvBefore : Arena := s2Step81ExitFAfter

private theorem s2Step81ExitFv_Incoming : rowsOwned s2Step81ExitFvBefore [s2Step81ExitFvRow,s2Step81ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step81ExitGRow,s2Step81ExitFRow,s2Step81ExitFvRow,s2Step81ExitGvRow] 2 s2Step81ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step81ExitFvBefore (fun q => (0≤q ∧ q<740) ∨ (741≤q ∧ q<782) ∨ (783≤q ∧ q<816) ∨ (817≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step81ExitFv_Outgoing : rowsOwned s2Step81ExitGvAfter [s2Step81ExitFvOut,s2Step81ExitGvOut] :=
  hmrRows_owned_drop s2Step81ExitGvAfter [s2Step81ExitGOut,s2Step81ExitFOut,s2Step81ExitFvOut,s2Step81ExitGvOut] 2 s2Step81ExitBank_outgoingOwned

private theorem s2Step81ExitFv_distinct : (s2Step81ExitFvRow.sign::s2Step81ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step81ExitFv_owned : (s2Step81ExitFvRow.sign::s2Step81ExitFvRow.payload).toFinset⊆s2Step81ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step81ExitFvBefore (fun q => (0≤q ∧ q<740) ∨ (741≤q ∧ q<782) ∨ (783≤q ∧ q<816) ∨ (817≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step81ExitFv_retired : s2Step81ExitFvBefore.retireSet s2Step81ExitFvExtra.toFinset=s2Step81ExitFvAfter := by
  unfold Arena.retireSet s2Step81ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step81ExitFvBefore,s2Step81ExitFAfter,s2Step81ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step81ExitFv_checked : planRowResizeLog s2Step81ExitFvBefore s2Step81ExitFvRow 54 []=
    some (s2Step81ExitFvAfter,s2Step81ExitFvOut,shrinkRow 770 s2Step81ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step81ExitFvBefore s2Step81ExitFvRow 54 s2Step81ExitFv_distinct s2Step81ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step81ExitFvRow.payload.take 54) s2Step81ExitFvRow.sign=s2Step81ExitFvOut := by decide +kernel
  have hi : s2Step81ExitFvRow.payload.drop 54=s2Step81ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step81ExitFv_retired] at result
  exact result

private def s2Step81ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private theorem s2Step81ExitG_Incoming : rowsOwned s2Step81ExitGBefore [s2Step81ExitGRow,s2Step81ExitFRow,s2Step81ExitFvRow,s2Step81ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step81ExitGRow,s2Step81ExitFRow,s2Step81ExitFvRow,s2Step81ExitGvRow] 0 s2Step81ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step81ExitGBefore (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step81ExitG_Outgoing : rowsOwned s2Step81ExitGvAfter [s2Step81ExitGOut,s2Step81ExitFOut,s2Step81ExitFvOut,s2Step81ExitGvOut] :=
  hmrRows_owned_drop s2Step81ExitGvAfter [s2Step81ExitGOut,s2Step81ExitFOut,s2Step81ExitFvOut,s2Step81ExitGvOut] 0 s2Step81ExitBank_outgoingOwned

private theorem s2Step81ExitG_distinct : (s2Step81ExitGRow.sign::s2Step81ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step81ExitG_owned : (s2Step81ExitGRow.sign::s2Step81ExitGRow.payload).toFinset⊆s2Step81ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step81ExitGBefore (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step81ExitG_retired : s2Step81ExitGBefore.retireSet s2Step81ExitGExtra.toFinset=s2Step81ExitGAfter := by
  unfold Arena.retireSet s2Step81ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step81ExitGBefore,s2Step81ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step81ExitG_checked : planRowResizeLog s2Step81ExitGBefore s2Step81ExitGRow 227 []=
    some (s2Step81ExitGAfter,s2Step81ExitGOut,shrinkRow 769 s2Step81ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step81ExitGBefore s2Step81ExitGRow 227 s2Step81ExitG_distinct s2Step81ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step81ExitGRow.payload.take 227) s2Step81ExitGRow.sign=s2Step81ExitGOut := by decide +kernel
  have hi : s2Step81ExitGRow.payload.drop 227=s2Step81ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step81ExitG_retired] at result
  exact result

private def s2Step81ExitGvBefore : Arena := s2Step81ExitFvAfter

private theorem s2Step81ExitGv_Incoming : rowsOwned s2Step81ExitGvBefore [s2Step81ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step81ExitGRow,s2Step81ExitFRow,s2Step81ExitFvRow,s2Step81ExitGvRow] 3 s2Step81ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step81ExitGvBefore (fun q => (0≤q ∧ q<740) ∨ (741≤q ∧ q<782) ∨ (783≤q ∧ q<816) ∨ (817≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step81ExitGv_Outgoing : rowsOwned s2Step81ExitGvAfter [s2Step81ExitGvOut] :=
  hmrRows_owned_drop s2Step81ExitGvAfter [s2Step81ExitGOut,s2Step81ExitFOut,s2Step81ExitFvOut,s2Step81ExitGvOut] 3 s2Step81ExitBank_outgoingOwned

private theorem s2Step81ExitGv_distinct : (s2Step81ExitGvRow.sign::s2Step81ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step81ExitGv_owned : (s2Step81ExitGvRow.sign::s2Step81ExitGvRow.payload).toFinset⊆s2Step81ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step81ExitGvBefore (fun q => (0≤q ∧ q<740) ∨ (741≤q ∧ q<782) ∨ (783≤q ∧ q<816) ∨ (817≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step81ExitGv_retired : s2Step81ExitGvBefore.retireSet s2Step81ExitGvExtra.toFinset=s2Step81ExitGvAfter := by
  unfold Arena.retireSet s2Step81ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step81ExitGvBefore,s2Step81ExitFvAfter,s2Step81ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step81ExitGv_checked : planRowResizeLog s2Step81ExitGvBefore s2Step81ExitGvRow 54 []=
    some (s2Step81ExitGvAfter,s2Step81ExitGvOut,shrinkRow 771 s2Step81ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step81ExitGvBefore s2Step81ExitGvRow 54 s2Step81ExitGv_distinct s2Step81ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step81ExitGvRow.payload.take 54) s2Step81ExitGvRow.sign=s2Step81ExitGvOut := by decide +kernel
  have hi : s2Step81ExitGvRow.payload.drop 54=s2Step81ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step81ExitGv_retired] at result
  exact result

private theorem s2Step81ExitBank_rows : planWindowRowsLog s2Step81ExitGBefore [(s2Step81ExitGRow,227),(s2Step81ExitFRow,228),(s2Step81ExitFvRow,54),(s2Step81ExitGvRow,54)] [[],[],[],[]]=
    some (s2Step81ExitGvAfter,[s2Step81ExitGOut,s2Step81ExitFOut,s2Step81ExitFvOut,s2Step81ExitGvOut],(shrinkRow 769 s2Step81ExitGExtra ++ (shrinkRow 768 s2Step81ExitFExtra ++ (shrinkRow 770 s2Step81ExitFvExtra ++ (shrinkRow 771 s2Step81ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step81ExitGvAfter [] []=some (s2Step81ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step81ExitGvBefore s2Step81ExitGvAfter s2Step81ExitGvAfter
    s2Step81ExitGvRow s2Step81ExitGvOut 54 [] [] [] []
    (shrinkRow 771 s2Step81ExitGvExtra) ([]) s2Step81ExitGv_Incoming s2Step81ExitGv_checked h4 s2Step81ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step81ExitFvBefore s2Step81ExitFvAfter s2Step81ExitGvAfter
    s2Step81ExitFvRow s2Step81ExitFvOut 54 [] [(s2Step81ExitGvRow,54)] [[]] [s2Step81ExitGvOut]
    (shrinkRow 770 s2Step81ExitFvExtra) ((shrinkRow 771 s2Step81ExitGvExtra ++ [])) s2Step81ExitFv_Incoming s2Step81ExitFv_checked h3 s2Step81ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step81ExitFBefore s2Step81ExitFAfter s2Step81ExitGvAfter
    s2Step81ExitFRow s2Step81ExitFOut 228 [] [(s2Step81ExitFvRow,54),(s2Step81ExitGvRow,54)] [[],[]] [s2Step81ExitFvOut,s2Step81ExitGvOut]
    (shrinkRow 768 s2Step81ExitFExtra) ((shrinkRow 770 s2Step81ExitFvExtra ++ (shrinkRow 771 s2Step81ExitGvExtra ++ []))) s2Step81ExitF_Incoming s2Step81ExitF_checked h2 s2Step81ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step81ExitGBefore s2Step81ExitGAfter s2Step81ExitGvAfter
    s2Step81ExitGRow s2Step81ExitGOut 227 [] [(s2Step81ExitFRow,228),(s2Step81ExitFvRow,54),(s2Step81ExitGvRow,54)] [[],[],[]] [s2Step81ExitFOut,s2Step81ExitFvOut,s2Step81ExitGvOut]
    (shrinkRow 769 s2Step81ExitGExtra) ((shrinkRow 768 s2Step81ExitFExtra ++ (shrinkRow 770 s2Step81ExitFvExtra ++ (shrinkRow 771 s2Step81ExitGvExtra ++ [])))) s2Step81ExitG_Incoming s2Step81ExitG_checked h1 s2Step81ExitG_Outgoing
  exact h0

private theorem s2Step81ExitBank_checked : compileHmrBankResizeLog .exit s2Step81ExitGBefore ⟨s2Step81ExitFRow,s2Step81ExitGRow,s2Step81ExitFvRow,s2Step81ExitGvRow⟩ ⟨228,227,54,54⟩ [[],[],[],[]]=
    some (s2Step81ExitGvAfter,⟨s2Step81ExitFOut,s2Step81ExitGOut,s2Step81ExitFvOut,s2Step81ExitGvOut⟩,(shrinkRow 769 s2Step81ExitGExtra ++ (shrinkRow 768 s2Step81ExitFExtra ++ (shrinkRow 770 s2Step81ExitFvExtra ++ (shrinkRow 771 s2Step81ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step81ExitBank_rows]
  rfl

private theorem s2Step81Add0_apart : Disjoint s2Step81Add0Arena.live s2Step81Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step81Add0Arena (fun q => (0≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step81Add0_card : s2Step81Add0Arena.live.card=870 := by
  decide +kernel

private theorem s2Step81Add0_borrowed : s2Step81Add0Arena.checkBorrow (hmrHybridCount s2Step81Add0Arena s2Step81Add0B.length) s2Step81Add0Work=some s2Step81Add0During := by
  have len : s2Step81Add0Work.length=hmrHybridCount s2Step81Add0Arena s2Step81Add0B.length := by
    rw [hmrHybridCount,s2Step81Add0_card]
    decide +kernel
  have nd : s2Step81Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step81Add0Arena s2Step81Add0During s2Step81Add0Work.toFinset s2Step81Add0_bounded s2Step81Add0_apart rfl

private theorem s2Step81Add0_distinct : (846::836::847::(s2Step81Add0A++s2Step81Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step81Add0_owned : (846::836::847::(s2Step81Add0A++s2Step81Add0B)).toFinset⊆s2Step81Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step81Add0Arena (fun q => (0≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step81Add0_checked : compileHmrHybridCinLog s2Step81Add0Arena 836 846 847 s2Step81Add0A s2Step81Add0B s2Step81Add0Work=some s2Step81Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step81Add0Arena s2Step81Add0During 836 846 847 s2Step81Add0A s2Step81Add0B s2Step81Add0Work
    (by decide +kernel) (by decide +kernel) s2Step81Add0_distinct
    (fun q hq => s2Step81Add0_owned (List.mem_toFinset.mpr hq)) s2Step81Add0_borrowed

private theorem s2Step81Add1_apart : Disjoint s2Step81Add1Arena.live s2Step81Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step81Add1Arena (fun q => (0≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step81Add1_card : s2Step81Add1Arena.live.card=870 := by
  decide +kernel

private theorem s2Step81Add1_borrowed : s2Step81Add1Arena.checkBorrow (hmrHybridCount s2Step81Add1Arena s2Step81Add1B.length) s2Step81Add1Work=some s2Step81Add1During := by
  have len : s2Step81Add1Work.length=hmrHybridCount s2Step81Add1Arena s2Step81Add1B.length := by
    rw [hmrHybridCount,s2Step81Add1_card]
    decide +kernel
  have nd : s2Step81Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step81Add1Arena s2Step81Add1During s2Step81Add1Work.toFinset s2Step81Add1_bounded s2Step81Add1_apart rfl

private theorem s2Step81Add1_distinct : (846::836::847::(s2Step81Add1A++s2Step81Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step81Add1_owned : (846::836::847::(s2Step81Add1A++s2Step81Add1B)).toFinset⊆s2Step81Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step81Add1Arena (fun q => (0≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step81Add1_checked : compileHmrHybridCinLog s2Step81Add1Arena 836 846 847 s2Step81Add1A s2Step81Add1B s2Step81Add1Work=some s2Step81Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step81Add1Arena s2Step81Add1During 836 846 847 s2Step81Add1A s2Step81Add1B s2Step81Add1Work
    (by decide +kernel) (by decide +kernel) s2Step81Add1_distinct
    (fun q hq => s2Step81Add1_owned (List.mem_toFinset.mpr hq)) s2Step81Add1_borrowed

private theorem s2Step81F4_apart : Disjoint (s2Step81Add0A++s2Step81Add0B).toFinset (s2Step81Add1A++s2Step81Add1B).toFinset := by
  have nd : ((s2Step81Add0A++s2Step81Add0B)++(s2Step81Add1A++s2Step81Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step81F4_carry : s2Step81F4FlagArena.checkBorrow 1 [847]=some s2Step81Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step81F4FlagArena,s2Step81HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step81F4FlagArena,s2Step81HeadFvAfter,s2Step81Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step81F4_distinct : (841::836::846::847::((s2Step81Add0A++s2Step81Add1A)++(s2Step81Add0B++s2Step81Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step81F4_flag : s2Step81HeadFvAfter.checkBorrow 1 [846]=some s2Step81F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step81HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step81F4_owned : (841::836::((s2Step81Add0A++s2Step81Add1A)++(s2Step81Add0B++s2Step81Add1B))).toFinset⊆s2Step81HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step81HeadFvAfter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step81F4_checked : compileHmrHybridF4Log s2Step81HeadFvAfter 841 836 s2Step81Add0A s2Step81Add0B s2Step81Add1A s2Step81Add1B [846] [847] s2Step81Add0Work s2Step81Add1Work=some s2Step81F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step81HeadFvAfter s2Step81F4FlagArena s2Step81Add0Arena s2Step81Add0During s2Step81Add1During 841 836
    s2Step81Add0A s2Step81Add0B s2Step81Add1A s2Step81Add1B [846] [847] s2Step81Add0Work s2Step81Add1Work
    (fun q hq => s2Step81F4_owned (List.mem_toFinset.mpr hq)) s2Step81F4_flag s2Step81F4_carry
    s2Step81F4_distinct s2Step81F4_apart s2Step81Add0_checked s2Step81Add1_checked

private theorem s2Step81Front_branch : s2Step81FrontSigmaArena.checkBorrow 1 [836]=some s2Step81HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step81FrontSigmaArena,s2Step81EntryGvAfter,s2Step81EntryGAfter,arenaWires]
  · ext q
    simp only [s2Step81FrontSigmaArena,s2Step81EntryGvAfter,s2Step81EntryGAfter,s2Step81HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step81Front_entry : HmrFrontEntryValid s2Step81EntryFBefore s2Step81FrontBank 229 54 ⟨228,227,54,54⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step81FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step81EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step81EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step81FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step81Front_sigma : s2Step81EntryGvAfter.checkBorrow 1 [841]=some s2Step81FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step81EntryGvAfter,s2Step81EntryGAfter,arenaWires]
  · rfl

private def s2Step81HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step81HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step81HeadFBefore : Arena := s2Step81HeadGAfter

private def s2Step81HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740],768⟩

private def s2Step81HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783],770⟩

private def s2Step81HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 782, 842],769⟩

private def s2Step81HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826],771⟩

private theorem s2Step81HeadBank_incomingDistinct : ([s2Step81HeadGRow,s2Step81HeadFRow,s2Step81HeadGvRow,s2Step81HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step81HeadF_Incoming : rowsOwned s2Step81HeadFBefore [s2Step81HeadFRow,s2Step81HeadGvRow,s2Step81HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step81HeadGRow,s2Step81HeadFRow,s2Step81HeadGvRow,s2Step81HeadFvRow] 1 s2Step81HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step81HeadFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step81HeadBank_outgoingOwned : rowsOwned s2Step81HeadFvAfter [s2Step81HeadGOut,s2Step81HeadFOut,s2Step81HeadGvOut,s2Step81HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step81HeadFvAfter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step81HeadF_Outgoing : rowsOwned s2Step81HeadFvAfter [s2Step81HeadFOut,s2Step81HeadGvOut,s2Step81HeadFvOut] :=
  hmrRows_owned_drop s2Step81HeadFvAfter [s2Step81HeadGOut,s2Step81HeadFOut,s2Step81HeadGvOut,s2Step81HeadFvOut] 1 s2Step81HeadBank_outgoingOwned

private theorem s2Step81HeadF_distinct : (s2Step81HeadFRow.sign::s2Step81HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step81HeadF_owned : (s2Step81HeadFRow.sign::s2Step81HeadFRow.payload).toFinset⊆s2Step81HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step81HeadFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step81HeadF_reserved : s2Step81HeadFBefore.reserve s2Step81HeadFFresh.toFinset=some s2Step81HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step81HeadFFresh,arenaWires]
  · norm_num [s2Step81HeadFBefore,s2Step81HeadGAfter,s2Step81HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step81HeadFAfter,s2Step81HeadFBefore,s2Step81HeadGAfter,s2Step81HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step81HeadF_checked : planRowResizeLog s2Step81HeadFBefore s2Step81HeadFRow 230 s2Step81HeadFFresh=
    some (s2Step81HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 844],768⟩,growRow 768 s2Step81HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step81HeadFBefore s2Step81HeadFAfter s2Step81HeadFRow 230 s2Step81HeadFFresh
    s2Step81HeadF_distinct s2Step81HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step81HeadF_reserved
  have rowEq : WindowRow.mk (s2Step81HeadFRow.payload++s2Step81HeadFFresh) s2Step81HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 844],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step81HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step81HeadFvBefore : Arena := s2Step81HeadGvAfter

private theorem s2Step81HeadFv_Incoming : rowsOwned s2Step81HeadFvBefore [s2Step81HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step81HeadGRow,s2Step81HeadFRow,s2Step81HeadGvRow,s2Step81HeadFvRow] 3 s2Step81HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step81HeadFvBefore (fun q => (0≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step81HeadFv_Outgoing : rowsOwned s2Step81HeadFvAfter [s2Step81HeadFvOut] :=
  hmrRows_owned_drop s2Step81HeadFvAfter [s2Step81HeadGOut,s2Step81HeadFOut,s2Step81HeadGvOut,s2Step81HeadFvOut] 3 s2Step81HeadBank_outgoingOwned

private theorem s2Step81HeadFv_distinct : (s2Step81HeadFvRow.sign::s2Step81HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step81HeadFv_owned : (s2Step81HeadFvRow.sign::s2Step81HeadFvRow.payload).toFinset⊆s2Step81HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step81HeadFvBefore (fun q => (0≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step81HeadFv_reserved : s2Step81HeadFvBefore.reserve s2Step81HeadFvFresh.toFinset=some s2Step81HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step81HeadFvFresh,arenaWires]
  · norm_num [s2Step81HeadFvBefore,s2Step81HeadGvAfter,s2Step81HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step81HeadFvAfter,s2Step81HeadFvBefore,s2Step81HeadGvAfter,s2Step81HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step81HeadFv_checked : planRowResizeLog s2Step81HeadFvBefore s2Step81HeadFvRow 55 s2Step81HeadFvFresh=
    some (s2Step81HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 845],770⟩,growRow 770 s2Step81HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step81HeadFvBefore s2Step81HeadFvAfter s2Step81HeadFvRow 55 s2Step81HeadFvFresh
    s2Step81HeadFv_distinct s2Step81HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step81HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step81HeadFvRow.payload++s2Step81HeadFvFresh) s2Step81HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 845],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step81HeadG_Incoming : rowsOwned s2Step81HeadGBefore [s2Step81HeadGRow,s2Step81HeadFRow,s2Step81HeadGvRow,s2Step81HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step81HeadGRow,s2Step81HeadFRow,s2Step81HeadGvRow,s2Step81HeadFvRow] 0 s2Step81HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step81HeadGBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step81HeadG_Outgoing : rowsOwned s2Step81HeadFvAfter [s2Step81HeadGOut,s2Step81HeadFOut,s2Step81HeadGvOut,s2Step81HeadFvOut] :=
  hmrRows_owned_drop s2Step81HeadFvAfter [s2Step81HeadGOut,s2Step81HeadFOut,s2Step81HeadGvOut,s2Step81HeadFvOut] 0 s2Step81HeadBank_outgoingOwned

private theorem s2Step81HeadG_distinct : (s2Step81HeadGRow.sign::s2Step81HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step81HeadG_owned : (s2Step81HeadGRow.sign::s2Step81HeadGRow.payload).toFinset⊆s2Step81HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step81HeadGBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step81HeadG_reserved : s2Step81HeadGBefore.reserve s2Step81HeadGFresh.toFinset=some s2Step81HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step81HeadGFresh,arenaWires]
  · norm_num [s2Step81HeadGBefore,s2Step81HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step81HeadGAfter,s2Step81HeadGBefore,s2Step81HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step81HeadG_checked : planRowResizeLog s2Step81HeadGBefore s2Step81HeadGRow 230 s2Step81HeadGFresh=
    some (s2Step81HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 782, 842, 816],769⟩,growRow 769 s2Step81HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step81HeadGBefore s2Step81HeadGAfter s2Step81HeadGRow 230 s2Step81HeadGFresh
    s2Step81HeadG_distinct s2Step81HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step81HeadG_reserved
  have rowEq : WindowRow.mk (s2Step81HeadGRow.payload++s2Step81HeadGFresh) s2Step81HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 782, 842, 816],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step81HeadGvBefore : Arena := s2Step81HeadFAfter

private theorem s2Step81HeadGv_Incoming : rowsOwned s2Step81HeadGvBefore [s2Step81HeadGvRow,s2Step81HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step81HeadGRow,s2Step81HeadFRow,s2Step81HeadGvRow,s2Step81HeadFvRow] 2 s2Step81HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step81HeadGvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step81HeadGv_Outgoing : rowsOwned s2Step81HeadFvAfter [s2Step81HeadGvOut,s2Step81HeadFvOut] :=
  hmrRows_owned_drop s2Step81HeadFvAfter [s2Step81HeadGOut,s2Step81HeadFOut,s2Step81HeadGvOut,s2Step81HeadFvOut] 2 s2Step81HeadBank_outgoingOwned

private theorem s2Step81HeadGv_distinct : (s2Step81HeadGvRow.sign::s2Step81HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step81HeadGv_owned : (s2Step81HeadGvRow.sign::s2Step81HeadGvRow.payload).toFinset⊆s2Step81HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step81HeadGvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step81HeadGv_reserved : s2Step81HeadGvBefore.reserve s2Step81HeadGvFresh.toFinset=some s2Step81HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step81HeadGvFresh,arenaWires]
  · norm_num [s2Step81HeadGvBefore,s2Step81HeadFAfter,s2Step81HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step81HeadGvAfter,s2Step81HeadGvBefore,s2Step81HeadFAfter,s2Step81HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step81HeadGv_checked : planRowResizeLog s2Step81HeadGvBefore s2Step81HeadGvRow 55 s2Step81HeadGvFresh=
    some (s2Step81HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 784],771⟩,growRow 771 s2Step81HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step81HeadGvBefore s2Step81HeadGvAfter s2Step81HeadGvRow 55 s2Step81HeadGvFresh
    s2Step81HeadGv_distinct s2Step81HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step81HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step81HeadGvRow.payload++s2Step81HeadGvFresh) s2Step81HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 784],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step81HeadBank_rows : planWindowRowsLog s2Step81HeadGBefore [(s2Step81HeadGRow,230),(s2Step81HeadFRow,230),(s2Step81HeadGvRow,55),(s2Step81HeadFvRow,55)] [s2Step81HeadGFresh,s2Step81HeadFFresh,s2Step81HeadGvFresh,s2Step81HeadFvFresh]=
    some (s2Step81HeadFvAfter,[s2Step81HeadGOut,s2Step81HeadFOut,s2Step81HeadGvOut,s2Step81HeadFvOut],(growRow 769 s2Step81HeadGFresh ++ (growRow 768 s2Step81HeadFFresh ++ (growRow 771 s2Step81HeadGvFresh ++ (growRow 770 s2Step81HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step81HeadFvAfter [] []=some (s2Step81HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step81HeadFvBefore s2Step81HeadFvAfter s2Step81HeadFvAfter
    s2Step81HeadFvRow s2Step81HeadFvOut 55 s2Step81HeadFvFresh [] [] []
    (growRow 770 s2Step81HeadFvFresh) ([]) s2Step81HeadFv_Incoming s2Step81HeadFv_checked h4 s2Step81HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step81HeadGvBefore s2Step81HeadGvAfter s2Step81HeadFvAfter
    s2Step81HeadGvRow s2Step81HeadGvOut 55 s2Step81HeadGvFresh [(s2Step81HeadFvRow,55)] [s2Step81HeadFvFresh] [s2Step81HeadFvOut]
    (growRow 771 s2Step81HeadGvFresh) ((growRow 770 s2Step81HeadFvFresh ++ [])) s2Step81HeadGv_Incoming s2Step81HeadGv_checked h3 s2Step81HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step81HeadFBefore s2Step81HeadFAfter s2Step81HeadFvAfter
    s2Step81HeadFRow s2Step81HeadFOut 230 s2Step81HeadFFresh [(s2Step81HeadGvRow,55),(s2Step81HeadFvRow,55)] [s2Step81HeadGvFresh,s2Step81HeadFvFresh] [s2Step81HeadGvOut,s2Step81HeadFvOut]
    (growRow 768 s2Step81HeadFFresh) ((growRow 771 s2Step81HeadGvFresh ++ (growRow 770 s2Step81HeadFvFresh ++ []))) s2Step81HeadF_Incoming s2Step81HeadF_checked h2 s2Step81HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step81HeadGBefore s2Step81HeadGAfter s2Step81HeadFvAfter
    s2Step81HeadGRow s2Step81HeadGOut 230 s2Step81HeadGFresh [(s2Step81HeadFRow,230),(s2Step81HeadGvRow,55),(s2Step81HeadFvRow,55)] [s2Step81HeadFFresh,s2Step81HeadGvFresh,s2Step81HeadFvFresh] [s2Step81HeadFOut,s2Step81HeadGvOut,s2Step81HeadFvOut]
    (growRow 769 s2Step81HeadGFresh) ((growRow 768 s2Step81HeadFFresh ++ (growRow 771 s2Step81HeadGvFresh ++ (growRow 770 s2Step81HeadFvFresh ++ [])))) s2Step81HeadG_Incoming s2Step81HeadG_checked h1 s2Step81HeadG_Outgoing
  exact h0

private theorem s2Step81HeadBank_checked : compileHmrBankResizeLog .headroom s2Step81HeadGBefore ⟨s2Step81HeadFRow,s2Step81HeadGRow,s2Step81HeadFvRow,s2Step81HeadGvRow⟩ ⟨230,230,55,55⟩ [s2Step81HeadGFresh,s2Step81HeadFFresh,s2Step81HeadGvFresh,s2Step81HeadFvFresh]=
    some (s2Step81HeadFvAfter,⟨s2Step81HeadFOut,s2Step81HeadGOut,s2Step81HeadFvOut,s2Step81HeadGvOut⟩,(growRow 769 s2Step81HeadGFresh ++ (growRow 768 s2Step81HeadFFresh ++ (growRow 771 s2Step81HeadGvFresh ++ (growRow 770 s2Step81HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step81HeadBank_rows]
  rfl

private theorem s2Step81Front_checked : compileHmrSourceFrontLog s2Step81EntryFBefore s2Step81FrontBank 229 54 ⟨228,227,54,54⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step81FrontLog=some s2Step81FrontPlan := by
  have pairEq : s2Step81FrontPair=⟨s2Step81HeadFRow,s2Step81HeadGRow,s2Step81HeadFvRow,s2Step81HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step81FrontHead=⟨s2Step81ExitFRow,s2Step81ExitGRow,s2Step81ExitFvRow,s2Step81ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step81Add0A=s2Step81FrontHead.f.wires := by decide +kernel
  have gEq : s2Step81Add0B=s2Step81FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step81Add1A=s2Step81FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step81Add1B=s2Step81FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step81EntryFBefore s2Step81FrontBank 229 54 ⟨228,227,54,54⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step81FrontLog s2Step81FrontPlan
  · exact s2Step81Front_entry
  · exact s2Step81EntryBank_checked
  · exact s2Step81Front_sigma
  · rfl
  · exact s2Step81Front_branch
  · rfl
  · simpa only [s2Step81FrontPlan,pairEq] using s2Step81HeadBank_checked
  · simpa only [s2Step81FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step81F4_checked
  · exact s2Step81Counter_checked
  · rfl
  · simpa only [s2Step81FrontPlan,headEq] using s2Step81ExitBank_checked

private theorem s2Step81Complete_explicit_checked : compileHmrEarlyStepLog s2Step81EntryFBefore s2Step81FrontBank 229 54 ⟨228,227,54,54⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 30 s2Step81CompleteLog=some s2Step81CompletePlan := by
  let Q := s2Step81EarlyControlPlan
  have hq := s2Step81EarlyControl_plan_checked
  have fv1 : s2Step81CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step81CompleteOut.fv.payload[2]?.getD s2Step81CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step81CompleteOut.fv.payload[3]?.getD s2Step81CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step81CompleteOut.fv.payload[4]?.getD s2Step81CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step81EntryFBefore s2Step81EarlyControlArena s2Step81FrontBank 229 54 ⟨228,227,54,54⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 30 s2Step81CompleteLog s2Step81FrontPlan Q
    s2Step81Front_checked s2Step81Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step81Complete_owned s2Step81Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step81EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 777 841 s2Step81CompleteOut.fv.second (s2Step81CompleteOut.fv.payload[2]?.getD s2Step81CompleteOut.fv.sign) (s2Step81CompleteOut.fv.payload[3]?.getD s2Step81CompleteOut.fv.sign) (s2Step81CompleteOut.fv.payload[4]?.getD s2Step81CompleteOut.fv.sign) 836 30 s2Step81EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep81Arena : Arena := s2Step81EntryFBefore
def s2PrivateStep81Bank : WindowBank := s2Step81FrontBank
def s2PrivateStep81Spec : HmrSourceWalkStepLog := ⟨229,54,⟨228,227,54,54⟩,30,.early s2Step81CompleteLog⟩
def s2PrivateStep81Plan : HmrSourceStepPlan := .early s2Step81CompletePlan
theorem s2PrivateStep81_source : s2PrivateStep81Spec=s2ObservedLogs80[1] := rfl
theorem s2PrivateStep81_checked : compileHmrSourceStepLog s2PrivateStep81Arena s2PrivateStep81Bank
    s2PrivateStep81Spec.fgWidth s2PrivateStep81Spec.vWidth s2PrivateStep81Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872]
    6 498 81 s2PrivateStep81Spec.need none s2PrivateStep81Spec.log=some s2PrivateStep81Plan := by
  change compileHmrSourceStepLog s2Step81EntryFBefore s2Step81FrontBank 229 54 ⟨228,227,54,54⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 6 498 81 30 none (.early s2Step81CompleteLog)=some (.early s2Step81CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 81<498)]
  rw [s2Step81Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
