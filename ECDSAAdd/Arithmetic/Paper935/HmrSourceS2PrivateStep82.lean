import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep80
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

private def s2Step82CompleteMoves : List (Wire × Wire) := [(839,739)]

private def s2Step82EarlyControlLog : HmrEarlyControlLog := ⟨[839, 844, 845, 836, 784],[842],[816],[846, 847, 849, 851, 867, 873],[]⟩

private def s2Step82FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [836], [], []],[[784], [845], [844], [782]],[[], [], [], []]⟩,[841],[778],[842],[816],[846, 847, 849, 851, 867, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[846, 847, 849, 851, 867, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922],[842, 816, 846, 847]⟩

private def s2Step82CompleteLog : HmrEarlyStepLog := ⟨s2Step82FrontLog,s2Step82CompleteMoves,s2Step82EarlyControlLog⟩

private def s2Step82ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738],768⟩

private def s2Step82ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782],770⟩

private def s2Step82ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226],769⟩

private def s2Step82ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826],771⟩

private def s2Step82FrontOut : WindowBank := ⟨s2Step82ExitFOut,s2Step82ExitGOut,s2Step82ExitFvOut,s2Step82ExitGvOut⟩

private def s2Step82CompleteOut : WindowBank := s2Step82FrontOut.repacked s2Step82CompleteMoves

private def s2Step82EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step82EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step82EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step82EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step82EarlyControlPositiveArena,[842],s2Step82EarlyControlEqualityArena,[816],⟨⟨841,false⟩,[⟨⟨842,false⟩,816⟩]⟩⟩

private def s2Step82EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<874)),Finset.filter_subset _ _⟩

private def s2Step82EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<874)),Finset.filter_subset _ _⟩

private def s2Step82EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step82EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step82EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step82EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<842) ∨ (843≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step82EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,839⟩,⟨⟨774,false⟩,844⟩,⟨⟨775,false⟩,845⟩,⟨⟨776,false⟩,836⟩,⟨⟨777,false⟩,784⟩]⟩

private def s2Step82EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step82EarlyControlZeroArena,s2Step82EarlyControlZeroPlan,s2Step82EarlyControlClassPlan,s2Step82EarlyControlFlagArena,s2Step82EarlyControlFittedArena,s2Step82EarlyControlHistoryArena,s2Step82EarlyControlSigmaArena,s2Step82EarlyControlOutputArena,s2Step82EarlyControlLog⟩

private def s2Step82CounterWork : List Wire := [842, 816, 846, 847]

private theorem s2Step82Counter_bounded : s2Step82CounterWork.toFinset⊆arenaWires := by norm_num [s2Step82CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step82HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<842) ∨ (843≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step82CounterDuring : Arena := ⟨s2Step82HeadFvAfter.live∪s2Step82CounterWork.toFinset,Finset.union_subset s2Step82HeadFvAfter.bounded s2Step82Counter_bounded⟩

private def s2Step82EntryFFresh : List Wire := []

private def s2Step82EntryFvFresh : List Wire := []

private def s2Step82EntryGFresh : List Wire := [836]

private def s2Step82EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step82EntryGvAfter : Arena := s2Step82EntryGAfter

private def s2Step82EntryGvFresh : List Wire := []

private def s2Step82ExitFExtra : List Wire := [739, 845]

private def s2Step82ExitGExtra : List Wire := [836, 784]

private def s2Step82ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<739) ∨ (740≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step82ExitGvExtra : List Wire := [844]

private def s2Step82Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step82Add0Work : List Wire := [846, 847, 849, 851, 867, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step82Add0_bounded : s2Step82Add0Work.toFinset⊆arenaWires := by
  have h : s2Step82Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step82Add0During : Arena := ⟨s2Step82Add0Arena.live∪s2Step82Add0Work.toFinset,Finset.union_subset s2Step82Add0Arena.bounded s2Step82Add0_bounded⟩

private def s2Step82Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step82Add1Work : List Wire := [846, 847, 849, 851, 867, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922]

private theorem s2Step82Add1_bounded : s2Step82Add1Work.toFinset⊆arenaWires := by
  have h : s2Step82Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step82Add1During : Arena := ⟨s2Step82Add1Arena.live∪s2Step82Add1Work.toFinset,Finset.union_subset s2Step82Add1Arena.bounded s2Step82Add1_bounded⟩

private def s2Step82F4FlagArena : Arena := ⟨s2Step82HeadFvAfter.live∪{842},Finset.union_subset s2Step82HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step82F4Plan : HmrHybridF4Plan := ⟨s2Step82F4FlagArena,[842],s2Step82Add0Arena,[816],s2Step82Add0During,s2Step82Add0Work,s2Step82Add1During,s2Step82Add1Work⟩

private def s2Step82HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 845],768⟩

private def s2Step82HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782],770⟩

private def s2Step82HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 836, 784],769⟩

private def s2Step82HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 844],771⟩

private def s2Step82FrontHead : WindowBank := ⟨s2Step82HeadFOut,s2Step82HeadGOut,s2Step82HeadFvOut,s2Step82HeadGvOut⟩

private def s2Step82EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739],768⟩

private def s2Step82EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783],770⟩

private def s2Step82EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 836],769⟩

private def s2Step82EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826],771⟩

private def s2Step82FrontPair : WindowBank := ⟨s2Step82EntryFOut,s2Step82EntryGOut,s2Step82EntryFvOut,s2Step82EntryGvOut⟩

private def s2Step82FrontSigmaArena : Arena := ⟨s2Step82EntryGvAfter.live∪{841},Finset.union_subset s2Step82EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step82HeadFFresh : List Wire := [845]

private def s2Step82HeadFvFresh : List Wire := [782]

private def s2Step82HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step82HeadGFresh : List Wire := [784]

private def s2Step82HeadGvFresh : List Wire := [844]

private def s2Step82FrontPlan : HmrSourceFront := ⟨s2Step82EntryGvAfter,s2Step82FrontPair,(growRow 768 s2Step82EntryFFresh ++ (growRow 769 s2Step82EntryGFresh ++ (growRow 770 s2Step82EntryFvFresh ++ (growRow 771 s2Step82EntryGvFresh ++ [])))),s2Step82FrontSigmaArena,[841],s2Step82HeadGBefore,[778],
  s2Step82HeadFvAfter,s2Step82FrontHead,(growRow 769 s2Step82HeadGFresh ++ (growRow 768 s2Step82HeadFFresh ++ (growRow 771 s2Step82HeadGvFresh ++ (growRow 770 s2Step82HeadFvFresh ++ [])))),s2Step82F4Plan,s2Step82CounterDuring,s2Step82CounterWork,s2Step82ExitGvAfter,s2Step82FrontOut,(shrinkRow 769 s2Step82ExitGExtra ++ (shrinkRow 768 s2Step82ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step82ExitGvExtra ++ []))))⟩

private def s2Step82CompletePlan : HmrEarlyStepPlan := ⟨s2Step82FrontPlan,s2Step82EarlyControlArena,s2Step82EarlyControlPlan,s2Step82CompleteMoves⟩

private theorem s2Step82Complete_apart : List.Disjoint (s2Step82CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [841, 778, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] := by
  have nd : ((s2Step82CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[841, 778, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step82Complete_owned : (s2Step82CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step82EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step82EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private def s2Step82CompleteMoveArena : Arena := ⟨s2Step82ExitGvAfter.live∪{739},Finset.union_subset s2Step82ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step82Complete_repack : s2Step82ExitGvAfter.checkRepack s2Step82CompleteMoves=some s2Step82EarlyControlArena := by
  have owned : 839∈s2Step82ExitGvAfter.live := by norm_num [s2Step82ExitGvAfter,arenaWires]
  have reserve : s2Step82ExitGvAfter.reserve {739}=some s2Step82CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step82ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step82CompleteMoveArena.retireSet {839}=s2Step82EarlyControlArena := by
    unfold Arena.retireSet s2Step82EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step82CompleteMoveArena,s2Step82ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step82CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step82CompleteMoveArena.retireSet {839}).checkRepack []=some s2Step82EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step82EarlyControl_branchOwned : ([778] : List Wire).toFinset⊆s2Step82EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step82EarlyControlSigmaArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step82EarlyControl_branch : compileHmrBranchRetirement s2Step82EarlyControlSigmaArena 778=some s2Step82EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step82EarlyControl_branchOwned
  · ext q
    simp [s2Step82EarlyControlOutputArena,s2Step82EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step82EarlyControl_classEqualityBorrow : s2Step82EarlyControlPositiveArena.checkBorrow (([841, 842] : List Wire).length-1) s2Step82EarlyControlLog.classWork=some s2Step82EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step82EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step82EarlyControlPositiveArena (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
      decide +kernel
    · ext q
      simp [s2Step82EarlyControlEqualityArena,s2Step82EarlyControlPositiveArena,s2Step82EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step82EarlyControl_classEqualityOwned : ([841, 842] : List Wire).toFinset⊆s2Step82EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step82EarlyControlPositiveArena (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step82EarlyControl_classEquality : compileHmrEqualityLog s2Step82EarlyControlPositiveArena [841, 842] 0 s2Step82EarlyControlLog.classWork=some (s2Step82EarlyControlEqualityArena,s2Step82EarlyControlLog.classWork,s2Step82EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step82EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step82EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step82EarlyControl_classOwned : ([777, 784, 841] : List Wire).toFinset⊆s2Step82EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step82EarlyControlZeroArena (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<842) ∨ (843≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step82EarlyControl_positiveBorrow : s2Step82EarlyControlZeroArena.checkBorrow (1) s2Step82EarlyControlLog.positiveWork=some s2Step82EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step82EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step82EarlyControlZeroArena (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<842) ∨ (843≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
      decide +kernel
    · ext q
      simp [s2Step82EarlyControlPositiveArena,s2Step82EarlyControlZeroArena,s2Step82EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step82EarlyControl_class : compileHmrSourceClassLog s2Step82EarlyControlZeroArena false 777 s2Step82EarlyControlZeroPlan.top 0 841 s2Step82EarlyControlLog.positiveWork s2Step82EarlyControlLog.classWork=some s2Step82EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step82EarlyControlClassPlan s2Step82EarlyControlZeroArena false 777 s2Step82EarlyControlZeroPlan.top 0 841
  constructor
  · decide +kernel
  · exact s2Step82EarlyControl_classOwned
  · exact s2Step82EarlyControl_positiveBorrow
  · exact s2Step82EarlyControl_classEquality

private theorem s2Step82EarlyControl_entryRecordOwned : ([778, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] : List Wire).toFinset⊆s2Step82EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step82EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step82EarlyControl_entrySigmaOwned : ([841, 254] : List Wire).toFinset⊆s2Step82EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step82EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step82EarlyControl_fitBorrow : s2Step82EarlyControlFlagArena.checkBorrow ((30-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] : List Wire).length)) s2Step82EarlyControlLog.recordFresh=some s2Step82EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step82EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step82EarlyControlFlagArena (fun q => (0≤q ∧ q<874)) rfl
      decide +kernel
    · ext q
      simp [s2Step82EarlyControlFittedArena,s2Step82EarlyControlFlagArena,s2Step82EarlyControlLog,arenaWires]

private theorem s2Step82EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] : List Wire).toFinset⊆s2Step82EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step82EarlyControlFlagArena (fun q => (0≤q ∧ q<874)) rfl
  decide +kernel

private theorem s2Step82EarlyControl_fit : compileHmrRecordGrowLog s2Step82EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 30 s2Step82EarlyControlLog.recordFresh=some s2Step82EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step82EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step82EarlyControl_fitBorrow

private theorem s2Step82EarlyControl_flagsBorrow : s2Step82EarlyControlEqualityArena.checkBorrow (6) s2Step82EarlyControlLog.flagWork=some s2Step82EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step82EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step82EarlyControlEqualityArena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
      decide +kernel
    · ext q
      simp [s2Step82EarlyControlFlagArena,s2Step82EarlyControlEqualityArena,s2Step82EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step82EarlyControl_flagsOwned : ([816, 253, 252, 251] : List Wire).toFinset⊆s2Step82EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step82EarlyControlEqualityArena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step82EarlyControl_flags : compileHmrFlagsLog s2Step82EarlyControlClassPlan.equalityArena s2Step82EarlyControlClassPlan.equality.top 253 252 251 s2Step82EarlyControlLog.flagWork=some s2Step82EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step82EarlyControl_flagsOwned⟩
  · exact s2Step82EarlyControl_flagsBorrow

private theorem s2Step82EarlyControl_historyBorrow : s2Step82EarlyControlArena.checkBorrow ((30-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] : List Wire).length)) s2Step82EarlyControlLog.recordFresh=some s2Step82EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step82EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step82EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
      decide +kernel
    · ext q
      simp [s2Step82EarlyControlHistoryArena,s2Step82EarlyControlArena,s2Step82EarlyControlLog,arenaWires]

private theorem s2Step82EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] : List Wire).toFinset⊆s2Step82EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step82EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step82EarlyControl_history : compileHmrRecordGrowLog s2Step82EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 30 s2Step82EarlyControlLog.recordFresh=some s2Step82EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step82EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step82EarlyControl_historyBorrow

private theorem s2Step82EarlyControl_sigmaOwned : ([254, 841] : List Wire).toFinset⊆s2Step82EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step82EarlyControlHistoryArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step82EarlyControl_sigmaReleaseOwned : ([841] : List Wire).toFinset⊆s2Step82EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step82EarlyControlHistoryArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step82EarlyControl_sigmaRelease : s2Step82EarlyControlHistoryArena.release {841} (fun _ => false)=some s2Step82EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step82EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step82EarlyControlSigmaArena,s2Step82EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step82EarlyControl_sigma : compileHmrSigmaDropLog s2Step82EarlyControlHistoryArena false 0 0 254 841 []=some s2Step82EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step82EarlyControl_sigmaOwned⟩
  · exact s2Step82EarlyControl_sigmaRelease

private theorem s2Step82EarlyControl_zeroBorrow : s2Step82EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step82EarlyControlLog.zeroWork=some s2Step82EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step82EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step82EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
      decide +kernel
    · ext q
      simp [s2Step82EarlyControlZeroArena,s2Step82EarlyControlArena,s2Step82EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step82EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step82EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step82EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step82EarlyControl_zero : compileHmrEqualityLog s2Step82EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step82EarlyControlLog.zeroWork=some (s2Step82EarlyControlZeroArena,s2Step82EarlyControlLog.zeroWork,s2Step82EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step82EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step82EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step82EarlyControl_logged : s2Step82EarlyControlPlan.Logged s2Step82EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 777 841 254 253 252 251 778 30 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step82EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step82EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step82EarlyControl_zero
  · exact s2Step82EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step82EarlyControl_flags
  · exact s2Step82EarlyControl_fit
  · exact s2Step82EarlyControl_history
  · exact s2Step82EarlyControl_sigma
  · exact s2Step82EarlyControl_branch

private theorem s2Step82EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step82EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 777 841 254 253 252 251 778 30 s2Step82EarlyControlLog=some s2Step82EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step82EarlyControlPlan s2Step82EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 777 841 254 253 252 251 778 30 s2Step82EarlyControl_logged

private def s2Step82EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step82EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739],768⟩

private def s2Step82EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783],770⟩

private def s2Step82EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226],769⟩

private def s2Step82EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826],771⟩

private def s2Step82FrontBank : WindowBank := ⟨s2Step82EntryFRow,s2Step82EntryGRow,s2Step82EntryFvRow,s2Step82EntryGvRow⟩

private def s2Step82Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 845, 768]

private def s2Step82Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 836, 784, 769]

private def s2Step82Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 770]

private def s2Step82Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 844, 771]

private theorem s2Step82Counter_apart : Disjoint s2Step82HeadFvAfter.live s2Step82CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step82HeadFvAfter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<842) ∨ (843≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step82Counter_borrowed : s2Step82HeadFvAfter.checkBorrow 4 s2Step82CounterWork=some s2Step82CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step82HeadFvAfter s2Step82CounterDuring s2Step82CounterWork.toFinset s2Step82Counter_bounded s2Step82Counter_apart rfl

private theorem s2Step82Counter_owned : (841::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step82HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step82HeadFvAfter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<842) ∨ (843≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step82Counter_checked : compileHmrCounterStepLog s2Step82HeadFvAfter true 841 [772, 773, 774, 775, 776, 777] s2Step82CounterWork=some s2Step82CounterDuring := by
  have owned : ∀q∈841::[772, 773, 774, 775, 776, 777],q∈s2Step82HeadFvAfter.live := fun q hq => s2Step82Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step82Counter_borrowed

private def s2Step82EntryFAfter : Arena := s2Step82EntryFBefore

private theorem s2Step82EntryBank_incomingDistinct : ([s2Step82EntryFRow,s2Step82EntryGRow,s2Step82EntryFvRow,s2Step82EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step82EntryF_Incoming : rowsOwned s2Step82EntryFBefore [s2Step82EntryFRow,s2Step82EntryGRow,s2Step82EntryFvRow,s2Step82EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step82EntryFRow,s2Step82EntryGRow,s2Step82EntryFvRow,s2Step82EntryGvRow] 0 s2Step82EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step82EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step82EntryBank_outgoingOwned : rowsOwned s2Step82EntryGvAfter [s2Step82EntryFOut,s2Step82EntryGOut,s2Step82EntryFvOut,s2Step82EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step82EntryGvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step82EntryF_Outgoing : rowsOwned s2Step82EntryGvAfter [s2Step82EntryFOut,s2Step82EntryGOut,s2Step82EntryFvOut,s2Step82EntryGvOut] :=
  hmrRows_owned_drop s2Step82EntryGvAfter [s2Step82EntryFOut,s2Step82EntryGOut,s2Step82EntryFvOut,s2Step82EntryGvOut] 0 s2Step82EntryBank_outgoingOwned

private theorem s2Step82EntryF_distinct : (s2Step82EntryFRow.sign::s2Step82EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step82EntryF_owned : (s2Step82EntryFRow.sign::s2Step82EntryFRow.payload).toFinset⊆s2Step82EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step82EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step82EntryF_reserved : s2Step82EntryFBefore.reserve s2Step82EntryFFresh.toFinset=some s2Step82EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step82EntryFFresh,arenaWires]
  · norm_num [s2Step82EntryFBefore,s2Step82EntryFFresh,arenaWires]
  · simp only [s2Step82EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step82EntryF_checked : planRowResizeLog s2Step82EntryFBefore s2Step82EntryFRow 228 s2Step82EntryFFresh=
    some (s2Step82EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739],768⟩,growRow 768 s2Step82EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step82EntryFBefore s2Step82EntryFAfter s2Step82EntryFRow 228 s2Step82EntryFFresh
    s2Step82EntryF_distinct s2Step82EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step82EntryF_reserved
  have rowEq : WindowRow.mk (s2Step82EntryFRow.payload++s2Step82EntryFFresh) s2Step82EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step82EntryFvAfter : Arena := s2Step82EntryGAfter

private def s2Step82EntryFvBefore : Arena := s2Step82EntryGAfter

private theorem s2Step82EntryFv_Incoming : rowsOwned s2Step82EntryFvBefore [s2Step82EntryFvRow,s2Step82EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step82EntryFRow,s2Step82EntryGRow,s2Step82EntryFvRow,s2Step82EntryGvRow] 2 s2Step82EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step82EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step82EntryFv_Outgoing : rowsOwned s2Step82EntryGvAfter [s2Step82EntryFvOut,s2Step82EntryGvOut] :=
  hmrRows_owned_drop s2Step82EntryGvAfter [s2Step82EntryFOut,s2Step82EntryGOut,s2Step82EntryFvOut,s2Step82EntryGvOut] 2 s2Step82EntryBank_outgoingOwned

private theorem s2Step82EntryFv_distinct : (s2Step82EntryFvRow.sign::s2Step82EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step82EntryFv_owned : (s2Step82EntryFvRow.sign::s2Step82EntryFvRow.payload).toFinset⊆s2Step82EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step82EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step82EntryFv_reserved : s2Step82EntryFvBefore.reserve s2Step82EntryFvFresh.toFinset=some s2Step82EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step82EntryFvFresh,arenaWires]
  · norm_num [s2Step82EntryFvBefore,s2Step82EntryGAfter,s2Step82EntryFvFresh,arenaWires]
  · simp only [s2Step82EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step82EntryFv_checked : planRowResizeLog s2Step82EntryFvBefore s2Step82EntryFvRow 54 s2Step82EntryFvFresh=
    some (s2Step82EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783],770⟩,growRow 770 s2Step82EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step82EntryFvBefore s2Step82EntryFvAfter s2Step82EntryFvRow 54 s2Step82EntryFvFresh
    s2Step82EntryFv_distinct s2Step82EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step82EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step82EntryFvRow.payload++s2Step82EntryFvFresh) s2Step82EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step82EntryGBefore : Arena := s2Step82EntryFBefore

private theorem s2Step82EntryG_Incoming : rowsOwned s2Step82EntryGBefore [s2Step82EntryGRow,s2Step82EntryFvRow,s2Step82EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step82EntryFRow,s2Step82EntryGRow,s2Step82EntryFvRow,s2Step82EntryGvRow] 1 s2Step82EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step82EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step82EntryG_Outgoing : rowsOwned s2Step82EntryGvAfter [s2Step82EntryGOut,s2Step82EntryFvOut,s2Step82EntryGvOut] :=
  hmrRows_owned_drop s2Step82EntryGvAfter [s2Step82EntryFOut,s2Step82EntryGOut,s2Step82EntryFvOut,s2Step82EntryGvOut] 1 s2Step82EntryBank_outgoingOwned

private theorem s2Step82EntryG_distinct : (s2Step82EntryGRow.sign::s2Step82EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step82EntryG_owned : (s2Step82EntryGRow.sign::s2Step82EntryGRow.payload).toFinset⊆s2Step82EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step82EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step82EntryG_reserved : s2Step82EntryGBefore.reserve s2Step82EntryGFresh.toFinset=some s2Step82EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step82EntryGFresh,arenaWires]
  · norm_num [s2Step82EntryGBefore,s2Step82EntryFBefore,s2Step82EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step82EntryGAfter,s2Step82EntryGBefore,s2Step82EntryFBefore,s2Step82EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step82EntryG_checked : planRowResizeLog s2Step82EntryGBefore s2Step82EntryGRow 228 s2Step82EntryGFresh=
    some (s2Step82EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 836],769⟩,growRow 769 s2Step82EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step82EntryGBefore s2Step82EntryGAfter s2Step82EntryGRow 228 s2Step82EntryGFresh
    s2Step82EntryG_distinct s2Step82EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step82EntryG_reserved
  have rowEq : WindowRow.mk (s2Step82EntryGRow.payload++s2Step82EntryGFresh) s2Step82EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 836],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step82EntryGvBefore : Arena := s2Step82EntryGAfter

private theorem s2Step82EntryGv_Incoming : rowsOwned s2Step82EntryGvBefore [s2Step82EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step82EntryFRow,s2Step82EntryGRow,s2Step82EntryFvRow,s2Step82EntryGvRow] 3 s2Step82EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step82EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step82EntryGv_Outgoing : rowsOwned s2Step82EntryGvAfter [s2Step82EntryGvOut] :=
  hmrRows_owned_drop s2Step82EntryGvAfter [s2Step82EntryFOut,s2Step82EntryGOut,s2Step82EntryFvOut,s2Step82EntryGvOut] 3 s2Step82EntryBank_outgoingOwned

private theorem s2Step82EntryGv_distinct : (s2Step82EntryGvRow.sign::s2Step82EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step82EntryGv_owned : (s2Step82EntryGvRow.sign::s2Step82EntryGvRow.payload).toFinset⊆s2Step82EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step82EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step82EntryGv_reserved : s2Step82EntryGvBefore.reserve s2Step82EntryGvFresh.toFinset=some s2Step82EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step82EntryGvFresh,arenaWires]
  · norm_num [s2Step82EntryGvBefore,s2Step82EntryGAfter,s2Step82EntryGvFresh,arenaWires]
  · simp only [s2Step82EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step82EntryGv_checked : planRowResizeLog s2Step82EntryGvBefore s2Step82EntryGvRow 54 s2Step82EntryGvFresh=
    some (s2Step82EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826],771⟩,growRow 771 s2Step82EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step82EntryGvBefore s2Step82EntryGvAfter s2Step82EntryGvRow 54 s2Step82EntryGvFresh
    s2Step82EntryGv_distinct s2Step82EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step82EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step82EntryGvRow.payload++s2Step82EntryGvFresh) s2Step82EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step82EntryBank_rows : planWindowRowsLog s2Step82EntryFBefore [(s2Step82EntryFRow,228),(s2Step82EntryGRow,228),(s2Step82EntryFvRow,54),(s2Step82EntryGvRow,54)] [s2Step82EntryFFresh,s2Step82EntryGFresh,s2Step82EntryFvFresh,s2Step82EntryGvFresh]=
    some (s2Step82EntryGvAfter,[s2Step82EntryFOut,s2Step82EntryGOut,s2Step82EntryFvOut,s2Step82EntryGvOut],(growRow 768 s2Step82EntryFFresh ++ (growRow 769 s2Step82EntryGFresh ++ (growRow 770 s2Step82EntryFvFresh ++ (growRow 771 s2Step82EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step82EntryGvAfter [] []=some (s2Step82EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step82EntryGvBefore s2Step82EntryGvAfter s2Step82EntryGvAfter
    s2Step82EntryGvRow s2Step82EntryGvOut 54 s2Step82EntryGvFresh [] [] []
    (growRow 771 s2Step82EntryGvFresh) ([]) s2Step82EntryGv_Incoming s2Step82EntryGv_checked h4 s2Step82EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step82EntryFvBefore s2Step82EntryFvAfter s2Step82EntryGvAfter
    s2Step82EntryFvRow s2Step82EntryFvOut 54 s2Step82EntryFvFresh [(s2Step82EntryGvRow,54)] [s2Step82EntryGvFresh] [s2Step82EntryGvOut]
    (growRow 770 s2Step82EntryFvFresh) ((growRow 771 s2Step82EntryGvFresh ++ [])) s2Step82EntryFv_Incoming s2Step82EntryFv_checked h3 s2Step82EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step82EntryGBefore s2Step82EntryGAfter s2Step82EntryGvAfter
    s2Step82EntryGRow s2Step82EntryGOut 228 s2Step82EntryGFresh [(s2Step82EntryFvRow,54),(s2Step82EntryGvRow,54)] [s2Step82EntryFvFresh,s2Step82EntryGvFresh] [s2Step82EntryFvOut,s2Step82EntryGvOut]
    (growRow 769 s2Step82EntryGFresh) ((growRow 770 s2Step82EntryFvFresh ++ (growRow 771 s2Step82EntryGvFresh ++ []))) s2Step82EntryG_Incoming s2Step82EntryG_checked h2 s2Step82EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step82EntryFBefore s2Step82EntryFAfter s2Step82EntryGvAfter
    s2Step82EntryFRow s2Step82EntryFOut 228 s2Step82EntryFFresh [(s2Step82EntryGRow,228),(s2Step82EntryFvRow,54),(s2Step82EntryGvRow,54)] [s2Step82EntryGFresh,s2Step82EntryFvFresh,s2Step82EntryGvFresh] [s2Step82EntryGOut,s2Step82EntryFvOut,s2Step82EntryGvOut]
    (growRow 768 s2Step82EntryFFresh) ((growRow 769 s2Step82EntryGFresh ++ (growRow 770 s2Step82EntryFvFresh ++ (growRow 771 s2Step82EntryGvFresh ++ [])))) s2Step82EntryF_Incoming s2Step82EntryF_checked h1 s2Step82EntryF_Outgoing
  exact h0

private theorem s2Step82EntryBank_checked : compileHmrBankResizeLog .entry s2Step82EntryFBefore ⟨s2Step82EntryFRow,s2Step82EntryGRow,s2Step82EntryFvRow,s2Step82EntryGvRow⟩ ⟨228,228,54,54⟩ [s2Step82EntryFFresh,s2Step82EntryGFresh,s2Step82EntryFvFresh,s2Step82EntryGvFresh]=
    some (s2Step82EntryGvAfter,⟨s2Step82EntryFOut,s2Step82EntryGOut,s2Step82EntryFvOut,s2Step82EntryGvOut⟩,(growRow 768 s2Step82EntryFFresh ++ (growRow 769 s2Step82EntryGFresh ++ (growRow 770 s2Step82EntryFvFresh ++ (growRow 771 s2Step82EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step82EntryBank_rows]
  rfl

private def s2Step82ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<739) ∨ (740≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step82ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step82ExitFBefore : Arena := s2Step82ExitGAfter

private def s2Step82ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 845],768⟩

private def s2Step82ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782],770⟩

private def s2Step82ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 836, 784],769⟩

private def s2Step82ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 844],771⟩

private theorem s2Step82ExitBank_incomingDistinct : ([s2Step82ExitGRow,s2Step82ExitFRow,s2Step82ExitFvRow,s2Step82ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step82ExitF_Incoming : rowsOwned s2Step82ExitFBefore [s2Step82ExitFRow,s2Step82ExitFvRow,s2Step82ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step82ExitGRow,s2Step82ExitFRow,s2Step82ExitFvRow,s2Step82ExitGvRow] 1 s2Step82ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step82ExitFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step82ExitBank_outgoingOwned : rowsOwned s2Step82ExitGvAfter [s2Step82ExitGOut,s2Step82ExitFOut,s2Step82ExitFvOut,s2Step82ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step82ExitGvAfter (fun q => (0≤q ∧ q<739) ∨ (740≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step82ExitF_Outgoing : rowsOwned s2Step82ExitGvAfter [s2Step82ExitFOut,s2Step82ExitFvOut,s2Step82ExitGvOut] :=
  hmrRows_owned_drop s2Step82ExitGvAfter [s2Step82ExitGOut,s2Step82ExitFOut,s2Step82ExitFvOut,s2Step82ExitGvOut] 1 s2Step82ExitBank_outgoingOwned

private theorem s2Step82ExitF_distinct : (s2Step82ExitFRow.sign::s2Step82ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step82ExitF_owned : (s2Step82ExitFRow.sign::s2Step82ExitFRow.payload).toFinset⊆s2Step82ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step82ExitFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step82ExitF_retired : s2Step82ExitFBefore.retireSet s2Step82ExitFExtra.toFinset=s2Step82ExitFAfter := by
  unfold Arena.retireSet s2Step82ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step82ExitFBefore,s2Step82ExitGAfter,s2Step82ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step82ExitF_checked : planRowResizeLog s2Step82ExitFBefore s2Step82ExitFRow 227 []=
    some (s2Step82ExitFAfter,s2Step82ExitFOut,shrinkRow 768 s2Step82ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step82ExitFBefore s2Step82ExitFRow 227 s2Step82ExitF_distinct s2Step82ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step82ExitFRow.payload.take 227) s2Step82ExitFRow.sign=s2Step82ExitFOut := by decide +kernel
  have hi : s2Step82ExitFRow.payload.drop 227=s2Step82ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step82ExitF_retired] at result
  exact result

private def s2Step82ExitFvAfter : Arena := s2Step82ExitFAfter

private def s2Step82ExitFvBefore : Arena := s2Step82ExitFAfter

private theorem s2Step82ExitFv_Incoming : rowsOwned s2Step82ExitFvBefore [s2Step82ExitFvRow,s2Step82ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step82ExitGRow,s2Step82ExitFRow,s2Step82ExitFvRow,s2Step82ExitGvRow] 2 s2Step82ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step82ExitFvBefore (fun q => (0≤q ∧ q<739) ∨ (740≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step82ExitFv_Outgoing : rowsOwned s2Step82ExitGvAfter [s2Step82ExitFvOut,s2Step82ExitGvOut] :=
  hmrRows_owned_drop s2Step82ExitGvAfter [s2Step82ExitGOut,s2Step82ExitFOut,s2Step82ExitFvOut,s2Step82ExitGvOut] 2 s2Step82ExitBank_outgoingOwned

private theorem s2Step82ExitFv_distinct : (s2Step82ExitFvRow.sign::s2Step82ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step82ExitFv_owned : (s2Step82ExitFvRow.sign::s2Step82ExitFvRow.payload).toFinset⊆s2Step82ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step82ExitFvBefore (fun q => (0≤q ∧ q<739) ∨ (740≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step82ExitFv_reserved : s2Step82ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step82ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step82ExitFv_checked : planRowResizeLog s2Step82ExitFvBefore s2Step82ExitFvRow 55 []=
    some (s2Step82ExitFvAfter,s2Step82ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step82ExitFvBefore s2Step82ExitFvAfter s2Step82ExitFvRow 55 []
    s2Step82ExitFv_distinct s2Step82ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step82ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step82ExitFvRow.payload++[]) s2Step82ExitFvRow.sign=s2Step82ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step82ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<842) ∨ (843≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private theorem s2Step82ExitG_Incoming : rowsOwned s2Step82ExitGBefore [s2Step82ExitGRow,s2Step82ExitFRow,s2Step82ExitFvRow,s2Step82ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step82ExitGRow,s2Step82ExitFRow,s2Step82ExitFvRow,s2Step82ExitGvRow] 0 s2Step82ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step82ExitGBefore (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<842) ∨ (843≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step82ExitG_Outgoing : rowsOwned s2Step82ExitGvAfter [s2Step82ExitGOut,s2Step82ExitFOut,s2Step82ExitFvOut,s2Step82ExitGvOut] :=
  hmrRows_owned_drop s2Step82ExitGvAfter [s2Step82ExitGOut,s2Step82ExitFOut,s2Step82ExitFvOut,s2Step82ExitGvOut] 0 s2Step82ExitBank_outgoingOwned

private theorem s2Step82ExitG_distinct : (s2Step82ExitGRow.sign::s2Step82ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step82ExitG_owned : (s2Step82ExitGRow.sign::s2Step82ExitGRow.payload).toFinset⊆s2Step82ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step82ExitGBefore (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<842) ∨ (843≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step82ExitG_retired : s2Step82ExitGBefore.retireSet s2Step82ExitGExtra.toFinset=s2Step82ExitGAfter := by
  unfold Arena.retireSet s2Step82ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step82ExitGBefore,s2Step82ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step82ExitG_checked : planRowResizeLog s2Step82ExitGBefore s2Step82ExitGRow 227 []=
    some (s2Step82ExitGAfter,s2Step82ExitGOut,shrinkRow 769 s2Step82ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step82ExitGBefore s2Step82ExitGRow 227 s2Step82ExitG_distinct s2Step82ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step82ExitGRow.payload.take 227) s2Step82ExitGRow.sign=s2Step82ExitGOut := by decide +kernel
  have hi : s2Step82ExitGRow.payload.drop 227=s2Step82ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step82ExitG_retired] at result
  exact result

private def s2Step82ExitGvBefore : Arena := s2Step82ExitFAfter

private theorem s2Step82ExitGv_Incoming : rowsOwned s2Step82ExitGvBefore [s2Step82ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step82ExitGRow,s2Step82ExitFRow,s2Step82ExitFvRow,s2Step82ExitGvRow] 3 s2Step82ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step82ExitGvBefore (fun q => (0≤q ∧ q<739) ∨ (740≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step82ExitGv_Outgoing : rowsOwned s2Step82ExitGvAfter [s2Step82ExitGvOut] :=
  hmrRows_owned_drop s2Step82ExitGvAfter [s2Step82ExitGOut,s2Step82ExitFOut,s2Step82ExitFvOut,s2Step82ExitGvOut] 3 s2Step82ExitBank_outgoingOwned

private theorem s2Step82ExitGv_distinct : (s2Step82ExitGvRow.sign::s2Step82ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step82ExitGv_owned : (s2Step82ExitGvRow.sign::s2Step82ExitGvRow.payload).toFinset⊆s2Step82ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step82ExitGvBefore (fun q => (0≤q ∧ q<739) ∨ (740≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step82ExitGv_retired : s2Step82ExitGvBefore.retireSet s2Step82ExitGvExtra.toFinset=s2Step82ExitGvAfter := by
  unfold Arena.retireSet s2Step82ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step82ExitGvBefore,s2Step82ExitFAfter,s2Step82ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step82ExitGv_checked : planRowResizeLog s2Step82ExitGvBefore s2Step82ExitGvRow 54 []=
    some (s2Step82ExitGvAfter,s2Step82ExitGvOut,shrinkRow 771 s2Step82ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step82ExitGvBefore s2Step82ExitGvRow 54 s2Step82ExitGv_distinct s2Step82ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step82ExitGvRow.payload.take 54) s2Step82ExitGvRow.sign=s2Step82ExitGvOut := by decide +kernel
  have hi : s2Step82ExitGvRow.payload.drop 54=s2Step82ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step82ExitGv_retired] at result
  exact result

private theorem s2Step82ExitBank_rows : planWindowRowsLog s2Step82ExitGBefore [(s2Step82ExitGRow,227),(s2Step82ExitFRow,227),(s2Step82ExitFvRow,55),(s2Step82ExitGvRow,54)] [[],[],[],[]]=
    some (s2Step82ExitGvAfter,[s2Step82ExitGOut,s2Step82ExitFOut,s2Step82ExitFvOut,s2Step82ExitGvOut],(shrinkRow 769 s2Step82ExitGExtra ++ (shrinkRow 768 s2Step82ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step82ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step82ExitGvAfter [] []=some (s2Step82ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step82ExitGvBefore s2Step82ExitGvAfter s2Step82ExitGvAfter
    s2Step82ExitGvRow s2Step82ExitGvOut 54 [] [] [] []
    (shrinkRow 771 s2Step82ExitGvExtra) ([]) s2Step82ExitGv_Incoming s2Step82ExitGv_checked h4 s2Step82ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step82ExitFvBefore s2Step82ExitFvAfter s2Step82ExitGvAfter
    s2Step82ExitFvRow s2Step82ExitFvOut 55 [] [(s2Step82ExitGvRow,54)] [[]] [s2Step82ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step82ExitGvExtra ++ [])) s2Step82ExitFv_Incoming s2Step82ExitFv_checked h3 s2Step82ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step82ExitFBefore s2Step82ExitFAfter s2Step82ExitGvAfter
    s2Step82ExitFRow s2Step82ExitFOut 227 [] [(s2Step82ExitFvRow,55),(s2Step82ExitGvRow,54)] [[],[]] [s2Step82ExitFvOut,s2Step82ExitGvOut]
    (shrinkRow 768 s2Step82ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step82ExitGvExtra ++ []))) s2Step82ExitF_Incoming s2Step82ExitF_checked h2 s2Step82ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step82ExitGBefore s2Step82ExitGAfter s2Step82ExitGvAfter
    s2Step82ExitGRow s2Step82ExitGOut 227 [] [(s2Step82ExitFRow,227),(s2Step82ExitFvRow,55),(s2Step82ExitGvRow,54)] [[],[],[]] [s2Step82ExitFOut,s2Step82ExitFvOut,s2Step82ExitGvOut]
    (shrinkRow 769 s2Step82ExitGExtra) ((shrinkRow 768 s2Step82ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step82ExitGvExtra ++ [])))) s2Step82ExitG_Incoming s2Step82ExitG_checked h1 s2Step82ExitG_Outgoing
  exact h0

private theorem s2Step82ExitBank_checked : compileHmrBankResizeLog .exit s2Step82ExitGBefore ⟨s2Step82ExitFRow,s2Step82ExitGRow,s2Step82ExitFvRow,s2Step82ExitGvRow⟩ ⟨227,227,55,54⟩ [[],[],[],[]]=
    some (s2Step82ExitGvAfter,⟨s2Step82ExitFOut,s2Step82ExitGOut,s2Step82ExitFvOut,s2Step82ExitGvOut⟩,(shrinkRow 769 s2Step82ExitGExtra ++ (shrinkRow 768 s2Step82ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step82ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step82ExitBank_rows]
  rfl

private theorem s2Step82Add0_apart : Disjoint s2Step82Add0Arena.live s2Step82Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step82Add0Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step82Add0_card : s2Step82Add0Arena.live.card=868 := by
  decide +kernel

private theorem s2Step82Add0_borrowed : s2Step82Add0Arena.checkBorrow (hmrHybridCount s2Step82Add0Arena s2Step82Add0B.length) s2Step82Add0Work=some s2Step82Add0During := by
  have len : s2Step82Add0Work.length=hmrHybridCount s2Step82Add0Arena s2Step82Add0B.length := by
    rw [hmrHybridCount,s2Step82Add0_card]
    decide +kernel
  have nd : s2Step82Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step82Add0Arena s2Step82Add0During s2Step82Add0Work.toFinset s2Step82Add0_bounded s2Step82Add0_apart rfl

private theorem s2Step82Add0_distinct : (842::778::816::(s2Step82Add0A++s2Step82Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step82Add0_owned : (842::778::816::(s2Step82Add0A++s2Step82Add0B)).toFinset⊆s2Step82Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step82Add0Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step82Add0_checked : compileHmrHybridCinLog s2Step82Add0Arena 778 842 816 s2Step82Add0A s2Step82Add0B s2Step82Add0Work=some s2Step82Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step82Add0Arena s2Step82Add0During 778 842 816 s2Step82Add0A s2Step82Add0B s2Step82Add0Work
    (by decide +kernel) (by decide +kernel) s2Step82Add0_distinct
    (fun q hq => s2Step82Add0_owned (List.mem_toFinset.mpr hq)) s2Step82Add0_borrowed

private theorem s2Step82Add1_apart : Disjoint s2Step82Add1Arena.live s2Step82Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step82Add1Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step82Add1_card : s2Step82Add1Arena.live.card=868 := by
  decide +kernel

private theorem s2Step82Add1_borrowed : s2Step82Add1Arena.checkBorrow (hmrHybridCount s2Step82Add1Arena s2Step82Add1B.length) s2Step82Add1Work=some s2Step82Add1During := by
  have len : s2Step82Add1Work.length=hmrHybridCount s2Step82Add1Arena s2Step82Add1B.length := by
    rw [hmrHybridCount,s2Step82Add1_card]
    decide +kernel
  have nd : s2Step82Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step82Add1Arena s2Step82Add1During s2Step82Add1Work.toFinset s2Step82Add1_bounded s2Step82Add1_apart rfl

private theorem s2Step82Add1_distinct : (842::778::816::(s2Step82Add1A++s2Step82Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step82Add1_owned : (842::778::816::(s2Step82Add1A++s2Step82Add1B)).toFinset⊆s2Step82Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step82Add1Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step82Add1_checked : compileHmrHybridCinLog s2Step82Add1Arena 778 842 816 s2Step82Add1A s2Step82Add1B s2Step82Add1Work=some s2Step82Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step82Add1Arena s2Step82Add1During 778 842 816 s2Step82Add1A s2Step82Add1B s2Step82Add1Work
    (by decide +kernel) (by decide +kernel) s2Step82Add1_distinct
    (fun q hq => s2Step82Add1_owned (List.mem_toFinset.mpr hq)) s2Step82Add1_borrowed

private theorem s2Step82F4_apart : Disjoint (s2Step82Add0A++s2Step82Add0B).toFinset (s2Step82Add1A++s2Step82Add1B).toFinset := by
  have nd : ((s2Step82Add0A++s2Step82Add0B)++(s2Step82Add1A++s2Step82Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step82F4_carry : s2Step82F4FlagArena.checkBorrow 1 [816]=some s2Step82Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step82F4FlagArena,s2Step82HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step82F4FlagArena,s2Step82HeadFvAfter,s2Step82Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step82F4_distinct : (841::778::842::816::((s2Step82Add0A++s2Step82Add1A)++(s2Step82Add0B++s2Step82Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step82F4_flag : s2Step82HeadFvAfter.checkBorrow 1 [842]=some s2Step82F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step82HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step82F4_owned : (841::778::((s2Step82Add0A++s2Step82Add1A)++(s2Step82Add0B++s2Step82Add1B))).toFinset⊆s2Step82HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step82HeadFvAfter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<842) ∨ (843≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step82F4_checked : compileHmrHybridF4Log s2Step82HeadFvAfter 841 778 s2Step82Add0A s2Step82Add0B s2Step82Add1A s2Step82Add1B [842] [816] s2Step82Add0Work s2Step82Add1Work=some s2Step82F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step82HeadFvAfter s2Step82F4FlagArena s2Step82Add0Arena s2Step82Add0During s2Step82Add1During 841 778
    s2Step82Add0A s2Step82Add0B s2Step82Add1A s2Step82Add1B [842] [816] s2Step82Add0Work s2Step82Add1Work
    (fun q hq => s2Step82F4_owned (List.mem_toFinset.mpr hq)) s2Step82F4_flag s2Step82F4_carry
    s2Step82F4_distinct s2Step82F4_apart s2Step82Add0_checked s2Step82Add1_checked

private theorem s2Step82Front_branch : s2Step82FrontSigmaArena.checkBorrow 1 [778]=some s2Step82HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step82FrontSigmaArena,s2Step82EntryGvAfter,s2Step82EntryGAfter,arenaWires]
  · ext q
    simp only [s2Step82FrontSigmaArena,s2Step82EntryGvAfter,s2Step82EntryGAfter,s2Step82HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step82Front_entry : HmrFrontEntryValid s2Step82EntryFBefore s2Step82FrontBank 228 54 ⟨227,227,55,54⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step82FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step82EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step82EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step82FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step82Front_sigma : s2Step82EntryGvAfter.checkBorrow 1 [841]=some s2Step82FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step82EntryGvAfter,s2Step82EntryGAfter,arenaWires]
  · rfl

private def s2Step82HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<816) ∨ (817≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step82HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<816) ∨ (817≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step82HeadFBefore : Arena := s2Step82HeadGAfter

private def s2Step82HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739],768⟩

private def s2Step82HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783],770⟩

private def s2Step82HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 836],769⟩

private def s2Step82HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826],771⟩

private theorem s2Step82HeadBank_incomingDistinct : ([s2Step82HeadGRow,s2Step82HeadFRow,s2Step82HeadGvRow,s2Step82HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step82HeadF_Incoming : rowsOwned s2Step82HeadFBefore [s2Step82HeadFRow,s2Step82HeadGvRow,s2Step82HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step82HeadGRow,s2Step82HeadFRow,s2Step82HeadGvRow,s2Step82HeadFvRow] 1 s2Step82HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step82HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<816) ∨ (817≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step82HeadBank_outgoingOwned : rowsOwned s2Step82HeadFvAfter [s2Step82HeadGOut,s2Step82HeadFOut,s2Step82HeadGvOut,s2Step82HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step82HeadFvAfter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<842) ∨ (843≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step82HeadF_Outgoing : rowsOwned s2Step82HeadFvAfter [s2Step82HeadFOut,s2Step82HeadGvOut,s2Step82HeadFvOut] :=
  hmrRows_owned_drop s2Step82HeadFvAfter [s2Step82HeadGOut,s2Step82HeadFOut,s2Step82HeadGvOut,s2Step82HeadFvOut] 1 s2Step82HeadBank_outgoingOwned

private theorem s2Step82HeadF_distinct : (s2Step82HeadFRow.sign::s2Step82HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step82HeadF_owned : (s2Step82HeadFRow.sign::s2Step82HeadFRow.payload).toFinset⊆s2Step82HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step82HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<816) ∨ (817≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step82HeadF_reserved : s2Step82HeadFBefore.reserve s2Step82HeadFFresh.toFinset=some s2Step82HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step82HeadFFresh,arenaWires]
  · norm_num [s2Step82HeadFBefore,s2Step82HeadGAfter,s2Step82HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step82HeadFAfter,s2Step82HeadFBefore,s2Step82HeadGAfter,s2Step82HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step82HeadF_checked : planRowResizeLog s2Step82HeadFBefore s2Step82HeadFRow 229 s2Step82HeadFFresh=
    some (s2Step82HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 845],768⟩,growRow 768 s2Step82HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step82HeadFBefore s2Step82HeadFAfter s2Step82HeadFRow 229 s2Step82HeadFFresh
    s2Step82HeadF_distinct s2Step82HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step82HeadF_reserved
  have rowEq : WindowRow.mk (s2Step82HeadFRow.payload++s2Step82HeadFFresh) s2Step82HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 845],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step82HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<816) ∨ (817≤q ∧ q<842) ∨ (843≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step82HeadFvBefore : Arena := s2Step82HeadGvAfter

private theorem s2Step82HeadFv_Incoming : rowsOwned s2Step82HeadFvBefore [s2Step82HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step82HeadGRow,s2Step82HeadFRow,s2Step82HeadGvRow,s2Step82HeadFvRow] 3 s2Step82HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step82HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<816) ∨ (817≤q ∧ q<842) ∨ (843≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step82HeadFv_Outgoing : rowsOwned s2Step82HeadFvAfter [s2Step82HeadFvOut] :=
  hmrRows_owned_drop s2Step82HeadFvAfter [s2Step82HeadGOut,s2Step82HeadFOut,s2Step82HeadGvOut,s2Step82HeadFvOut] 3 s2Step82HeadBank_outgoingOwned

private theorem s2Step82HeadFv_distinct : (s2Step82HeadFvRow.sign::s2Step82HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step82HeadFv_owned : (s2Step82HeadFvRow.sign::s2Step82HeadFvRow.payload).toFinset⊆s2Step82HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step82HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<816) ∨ (817≤q ∧ q<842) ∨ (843≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step82HeadFv_reserved : s2Step82HeadFvBefore.reserve s2Step82HeadFvFresh.toFinset=some s2Step82HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step82HeadFvFresh,arenaWires]
  · norm_num [s2Step82HeadFvBefore,s2Step82HeadGvAfter,s2Step82HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step82HeadFvAfter,s2Step82HeadFvBefore,s2Step82HeadGvAfter,s2Step82HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step82HeadFv_checked : planRowResizeLog s2Step82HeadFvBefore s2Step82HeadFvRow 55 s2Step82HeadFvFresh=
    some (s2Step82HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782],770⟩,growRow 770 s2Step82HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step82HeadFvBefore s2Step82HeadFvAfter s2Step82HeadFvRow 55 s2Step82HeadFvFresh
    s2Step82HeadFv_distinct s2Step82HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step82HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step82HeadFvRow.payload++s2Step82HeadFvFresh) s2Step82HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step82HeadG_Incoming : rowsOwned s2Step82HeadGBefore [s2Step82HeadGRow,s2Step82HeadFRow,s2Step82HeadGvRow,s2Step82HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step82HeadGRow,s2Step82HeadFRow,s2Step82HeadGvRow,s2Step82HeadFvRow] 0 s2Step82HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step82HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step82HeadG_Outgoing : rowsOwned s2Step82HeadFvAfter [s2Step82HeadGOut,s2Step82HeadFOut,s2Step82HeadGvOut,s2Step82HeadFvOut] :=
  hmrRows_owned_drop s2Step82HeadFvAfter [s2Step82HeadGOut,s2Step82HeadFOut,s2Step82HeadGvOut,s2Step82HeadFvOut] 0 s2Step82HeadBank_outgoingOwned

private theorem s2Step82HeadG_distinct : (s2Step82HeadGRow.sign::s2Step82HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step82HeadG_owned : (s2Step82HeadGRow.sign::s2Step82HeadGRow.payload).toFinset⊆s2Step82HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step82HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step82HeadG_reserved : s2Step82HeadGBefore.reserve s2Step82HeadGFresh.toFinset=some s2Step82HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step82HeadGFresh,arenaWires]
  · norm_num [s2Step82HeadGBefore,s2Step82HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step82HeadGAfter,s2Step82HeadGBefore,s2Step82HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step82HeadG_checked : planRowResizeLog s2Step82HeadGBefore s2Step82HeadGRow 229 s2Step82HeadGFresh=
    some (s2Step82HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 836, 784],769⟩,growRow 769 s2Step82HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step82HeadGBefore s2Step82HeadGAfter s2Step82HeadGRow 229 s2Step82HeadGFresh
    s2Step82HeadG_distinct s2Step82HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step82HeadG_reserved
  have rowEq : WindowRow.mk (s2Step82HeadGRow.payload++s2Step82HeadGFresh) s2Step82HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 836, 784],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step82HeadGvBefore : Arena := s2Step82HeadFAfter

private theorem s2Step82HeadGv_Incoming : rowsOwned s2Step82HeadGvBefore [s2Step82HeadGvRow,s2Step82HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step82HeadGRow,s2Step82HeadFRow,s2Step82HeadGvRow,s2Step82HeadFvRow] 2 s2Step82HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step82HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<816) ∨ (817≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step82HeadGv_Outgoing : rowsOwned s2Step82HeadFvAfter [s2Step82HeadGvOut,s2Step82HeadFvOut] :=
  hmrRows_owned_drop s2Step82HeadFvAfter [s2Step82HeadGOut,s2Step82HeadFOut,s2Step82HeadGvOut,s2Step82HeadFvOut] 2 s2Step82HeadBank_outgoingOwned

private theorem s2Step82HeadGv_distinct : (s2Step82HeadGvRow.sign::s2Step82HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step82HeadGv_owned : (s2Step82HeadGvRow.sign::s2Step82HeadGvRow.payload).toFinset⊆s2Step82HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step82HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<816) ∨ (817≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step82HeadGv_reserved : s2Step82HeadGvBefore.reserve s2Step82HeadGvFresh.toFinset=some s2Step82HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step82HeadGvFresh,arenaWires]
  · norm_num [s2Step82HeadGvBefore,s2Step82HeadFAfter,s2Step82HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step82HeadGvAfter,s2Step82HeadGvBefore,s2Step82HeadFAfter,s2Step82HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step82HeadGv_checked : planRowResizeLog s2Step82HeadGvBefore s2Step82HeadGvRow 55 s2Step82HeadGvFresh=
    some (s2Step82HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 844],771⟩,growRow 771 s2Step82HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step82HeadGvBefore s2Step82HeadGvAfter s2Step82HeadGvRow 55 s2Step82HeadGvFresh
    s2Step82HeadGv_distinct s2Step82HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step82HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step82HeadGvRow.payload++s2Step82HeadGvFresh) s2Step82HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 844],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step82HeadBank_rows : planWindowRowsLog s2Step82HeadGBefore [(s2Step82HeadGRow,229),(s2Step82HeadFRow,229),(s2Step82HeadGvRow,55),(s2Step82HeadFvRow,55)] [s2Step82HeadGFresh,s2Step82HeadFFresh,s2Step82HeadGvFresh,s2Step82HeadFvFresh]=
    some (s2Step82HeadFvAfter,[s2Step82HeadGOut,s2Step82HeadFOut,s2Step82HeadGvOut,s2Step82HeadFvOut],(growRow 769 s2Step82HeadGFresh ++ (growRow 768 s2Step82HeadFFresh ++ (growRow 771 s2Step82HeadGvFresh ++ (growRow 770 s2Step82HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step82HeadFvAfter [] []=some (s2Step82HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step82HeadFvBefore s2Step82HeadFvAfter s2Step82HeadFvAfter
    s2Step82HeadFvRow s2Step82HeadFvOut 55 s2Step82HeadFvFresh [] [] []
    (growRow 770 s2Step82HeadFvFresh) ([]) s2Step82HeadFv_Incoming s2Step82HeadFv_checked h4 s2Step82HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step82HeadGvBefore s2Step82HeadGvAfter s2Step82HeadFvAfter
    s2Step82HeadGvRow s2Step82HeadGvOut 55 s2Step82HeadGvFresh [(s2Step82HeadFvRow,55)] [s2Step82HeadFvFresh] [s2Step82HeadFvOut]
    (growRow 771 s2Step82HeadGvFresh) ((growRow 770 s2Step82HeadFvFresh ++ [])) s2Step82HeadGv_Incoming s2Step82HeadGv_checked h3 s2Step82HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step82HeadFBefore s2Step82HeadFAfter s2Step82HeadFvAfter
    s2Step82HeadFRow s2Step82HeadFOut 229 s2Step82HeadFFresh [(s2Step82HeadGvRow,55),(s2Step82HeadFvRow,55)] [s2Step82HeadGvFresh,s2Step82HeadFvFresh] [s2Step82HeadGvOut,s2Step82HeadFvOut]
    (growRow 768 s2Step82HeadFFresh) ((growRow 771 s2Step82HeadGvFresh ++ (growRow 770 s2Step82HeadFvFresh ++ []))) s2Step82HeadF_Incoming s2Step82HeadF_checked h2 s2Step82HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step82HeadGBefore s2Step82HeadGAfter s2Step82HeadFvAfter
    s2Step82HeadGRow s2Step82HeadGOut 229 s2Step82HeadGFresh [(s2Step82HeadFRow,229),(s2Step82HeadGvRow,55),(s2Step82HeadFvRow,55)] [s2Step82HeadFFresh,s2Step82HeadGvFresh,s2Step82HeadFvFresh] [s2Step82HeadFOut,s2Step82HeadGvOut,s2Step82HeadFvOut]
    (growRow 769 s2Step82HeadGFresh) ((growRow 768 s2Step82HeadFFresh ++ (growRow 771 s2Step82HeadGvFresh ++ (growRow 770 s2Step82HeadFvFresh ++ [])))) s2Step82HeadG_Incoming s2Step82HeadG_checked h1 s2Step82HeadG_Outgoing
  exact h0

private theorem s2Step82HeadBank_checked : compileHmrBankResizeLog .headroom s2Step82HeadGBefore ⟨s2Step82HeadFRow,s2Step82HeadGRow,s2Step82HeadFvRow,s2Step82HeadGvRow⟩ ⟨229,229,55,55⟩ [s2Step82HeadGFresh,s2Step82HeadFFresh,s2Step82HeadGvFresh,s2Step82HeadFvFresh]=
    some (s2Step82HeadFvAfter,⟨s2Step82HeadFOut,s2Step82HeadGOut,s2Step82HeadFvOut,s2Step82HeadGvOut⟩,(growRow 769 s2Step82HeadGFresh ++ (growRow 768 s2Step82HeadFFresh ++ (growRow 771 s2Step82HeadGvFresh ++ (growRow 770 s2Step82HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step82HeadBank_rows]
  rfl

private theorem s2Step82Front_checked : compileHmrSourceFrontLog s2Step82EntryFBefore s2Step82FrontBank 228 54 ⟨227,227,55,54⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step82FrontLog=some s2Step82FrontPlan := by
  have pairEq : s2Step82FrontPair=⟨s2Step82HeadFRow,s2Step82HeadGRow,s2Step82HeadFvRow,s2Step82HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step82FrontHead=⟨s2Step82ExitFRow,s2Step82ExitGRow,s2Step82ExitFvRow,s2Step82ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step82Add0A=s2Step82FrontHead.f.wires := by decide +kernel
  have gEq : s2Step82Add0B=s2Step82FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step82Add1A=s2Step82FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step82Add1B=s2Step82FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step82EntryFBefore s2Step82FrontBank 228 54 ⟨227,227,55,54⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step82FrontLog s2Step82FrontPlan
  · exact s2Step82Front_entry
  · exact s2Step82EntryBank_checked
  · exact s2Step82Front_sigma
  · rfl
  · exact s2Step82Front_branch
  · rfl
  · simpa only [s2Step82FrontPlan,pairEq] using s2Step82HeadBank_checked
  · simpa only [s2Step82FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step82F4_checked
  · exact s2Step82Counter_checked
  · rfl
  · simpa only [s2Step82FrontPlan,headEq] using s2Step82ExitBank_checked

private theorem s2Step82Complete_explicit_checked : compileHmrEarlyStepLog s2Step82EntryFBefore s2Step82FrontBank 228 54 ⟨227,227,55,54⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 30 s2Step82CompleteLog=some s2Step82CompletePlan := by
  let Q := s2Step82EarlyControlPlan
  have hq := s2Step82EarlyControl_plan_checked
  have fv1 : s2Step82CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step82CompleteOut.fv.payload[2]?.getD s2Step82CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step82CompleteOut.fv.payload[3]?.getD s2Step82CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step82CompleteOut.fv.payload[4]?.getD s2Step82CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step82EntryFBefore s2Step82EarlyControlArena s2Step82FrontBank 228 54 ⟨227,227,55,54⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 30 s2Step82CompleteLog s2Step82FrontPlan Q
    s2Step82Front_checked s2Step82Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step82Complete_owned s2Step82Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step82EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 777 841 s2Step82CompleteOut.fv.second (s2Step82CompleteOut.fv.payload[2]?.getD s2Step82CompleteOut.fv.sign) (s2Step82CompleteOut.fv.payload[3]?.getD s2Step82CompleteOut.fv.sign) (s2Step82CompleteOut.fv.payload[4]?.getD s2Step82CompleteOut.fv.sign) 778 30 s2Step82EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep82Arena : Arena := s2Step82EntryFBefore
def s2PrivateStep82Bank : WindowBank := s2Step82FrontBank
def s2PrivateStep82Spec : HmrSourceWalkStepLog := ⟨228,54,⟨227,227,55,54⟩,30,.early s2Step82CompleteLog⟩
def s2PrivateStep82Plan : HmrSourceStepPlan := .early s2Step82CompletePlan
theorem s2PrivateStep82_source : s2PrivateStep82Spec=s2ObservedLogs80[2] := rfl
theorem s2PrivateStep82_checked : compileHmrSourceStepLog s2PrivateStep82Arena s2PrivateStep82Bank
    s2PrivateStep82Spec.fgWidth s2PrivateStep82Spec.vWidth s2PrivateStep82Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872]
    6 498 82 s2PrivateStep82Spec.need none s2PrivateStep82Spec.log=some s2PrivateStep82Plan := by
  change compileHmrSourceStepLog s2Step82EntryFBefore s2Step82FrontBank 228 54 ⟨227,227,55,54⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 6 498 82 30 none (.early s2Step82CompleteLog)=some (.early s2Step82CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 82<498)]
  rw [s2Step82Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
