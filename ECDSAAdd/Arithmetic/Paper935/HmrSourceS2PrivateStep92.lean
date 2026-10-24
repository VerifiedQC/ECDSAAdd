import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep90
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

private def s2Step92CompleteMoves : List (Wire × Wire) := [(799,221)]

private def s2Step92EarlyControlLog : HmrEarlyControlLog := ⟨[799, 781, 796, 780, 797],[779],[844],[785, 839, 846, 847, 849, 851],[]⟩

private def s2Step92FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[797], [780], [781], [796]],[[], [], [], []]⟩,[793],[786],[779],[844],[785, 839, 846, 847, 849, 851, 867, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[785, 839, 846, 847, 849, 851, 867, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929],[779, 844, 785, 839]⟩

private def s2Step92CompleteLog : HmrEarlyStepLog := ⟨s2Step92FrontLog,s2Step92CompleteMoves,s2Step92EarlyControlLog⟩

private def s2Step92ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733],768⟩

private def s2Step92ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816],770⟩

private def s2Step92ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220],769⟩

private def s2Step92ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836],771⟩

private def s2Step92FrontOut : WindowBank := ⟨s2Step92ExitFOut,s2Step92ExitGOut,s2Step92ExitFvOut,s2Step92ExitGvOut⟩

private def s2Step92CompleteOut : WindowBank := s2Step92FrontOut.repacked s2Step92CompleteMoves

private def s2Step92EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<796) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step92EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step92EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step92EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step92EarlyControlPositiveArena,[779],s2Step92EarlyControlEqualityArena,[844],⟨⟨793,false⟩,[⟨⟨779,false⟩,844⟩]⟩⟩

private def s2Step92EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step92EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step92EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<796) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step92EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (794≤q ∧ q<796) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step92EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<796) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step92EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step92EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,799⟩,⟨⟨774,false⟩,781⟩,⟨⟨775,false⟩,796⟩,⟨⟨776,false⟩,780⟩,⟨⟨777,false⟩,797⟩]⟩

private def s2Step92EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step92EarlyControlZeroArena,s2Step92EarlyControlZeroPlan,s2Step92EarlyControlClassPlan,s2Step92EarlyControlFlagArena,s2Step92EarlyControlFittedArena,s2Step92EarlyControlHistoryArena,s2Step92EarlyControlSigmaArena,s2Step92EarlyControlOutputArena,s2Step92EarlyControlLog⟩

private def s2Step92CounterWork : List Wire := [779, 844, 785, 839]

private theorem s2Step92Counter_bounded : s2Step92CounterWork.toFinset⊆arenaWires := by norm_num [s2Step92CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step92HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step92CounterDuring : Arena := ⟨s2Step92HeadFvAfter.live∪s2Step92CounterWork.toFinset,Finset.union_subset s2Step92HeadFvAfter.bounded s2Step92Counter_bounded⟩

private def s2Step92EntryFFresh : List Wire := []

private def s2Step92EntryFvFresh : List Wire := []

private def s2Step92EntryGFresh : List Wire := []

private def s2Step92EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (794≤q ∧ q<796) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step92EntryGvAfter : Arena := s2Step92EntryFBefore

private def s2Step92EntryGvFresh : List Wire := []

private def s2Step92ExitFExtra : List Wire := [780]

private def s2Step92ExitFvExtra : List Wire := [796]

private def s2Step92ExitGExtra : List Wire := [221, 797]

private def s2Step92ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<221) ∨ (222≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<796) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step92ExitGvExtra : List Wire := [781]

private def s2Step92Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step92Add0Work : List Wire := [785, 839, 846, 847, 849, 851, 867, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step92Add0_bounded : s2Step92Add0Work.toFinset⊆arenaWires := by
  have h : s2Step92Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step92Add0During : Arena := ⟨s2Step92Add0Arena.live∪s2Step92Add0Work.toFinset,Finset.union_subset s2Step92Add0Arena.bounded s2Step92Add0_bounded⟩

private def s2Step92Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step92Add1Work : List Wire := [785, 839, 846, 847, 849, 851, 867, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929]

private theorem s2Step92Add1_bounded : s2Step92Add1Work.toFinset⊆arenaWires := by
  have h : s2Step92Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step92Add1During : Arena := ⟨s2Step92Add1Arena.live∪s2Step92Add1Work.toFinset,Finset.union_subset s2Step92Add1Arena.bounded s2Step92Add1_bounded⟩

private def s2Step92F4FlagArena : Arena := ⟨s2Step92HeadFvAfter.live∪{779},Finset.union_subset s2Step92HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step92F4Plan : HmrHybridF4Plan := ⟨s2Step92F4FlagArena,[779],s2Step92Add0Arena,[844],s2Step92Add0During,s2Step92Add0Work,s2Step92Add1During,s2Step92Add1Work⟩

private def s2Step92HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 780],768⟩

private def s2Step92HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 796],770⟩

private def s2Step92HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 797],769⟩

private def s2Step92HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 781],771⟩

private def s2Step92FrontHead : WindowBank := ⟨s2Step92HeadFOut,s2Step92HeadGOut,s2Step92HeadFvOut,s2Step92HeadGvOut⟩

private def s2Step92EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733],768⟩

private def s2Step92EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816],770⟩

private def s2Step92EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221],769⟩

private def s2Step92EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836],771⟩

private def s2Step92FrontPair : WindowBank := ⟨s2Step92EntryFOut,s2Step92EntryGOut,s2Step92EntryFvOut,s2Step92EntryGvOut⟩

private def s2Step92FrontSigmaArena : Arena := ⟨s2Step92EntryGvAfter.live∪{793},Finset.union_subset s2Step92EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step92HeadFFresh : List Wire := [780]

private def s2Step92HeadFvFresh : List Wire := [796]

private def s2Step92HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<796) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step92HeadGFresh : List Wire := [797]

private def s2Step92HeadGvFresh : List Wire := [781]

private def s2Step92FrontPlan : HmrSourceFront := ⟨s2Step92EntryGvAfter,s2Step92FrontPair,(growRow 768 s2Step92EntryFFresh ++ (growRow 769 s2Step92EntryGFresh ++ (growRow 770 s2Step92EntryFvFresh ++ (growRow 771 s2Step92EntryGvFresh ++ [])))),s2Step92FrontSigmaArena,[793],s2Step92HeadGBefore,[786],
  s2Step92HeadFvAfter,s2Step92FrontHead,(growRow 769 s2Step92HeadGFresh ++ (growRow 768 s2Step92HeadFFresh ++ (growRow 771 s2Step92HeadGvFresh ++ (growRow 770 s2Step92HeadFvFresh ++ [])))),s2Step92F4Plan,s2Step92CounterDuring,s2Step92CounterWork,s2Step92ExitGvAfter,s2Step92FrontOut,(shrinkRow 769 s2Step92ExitGExtra ++ (shrinkRow 768 s2Step92ExitFExtra ++ (shrinkRow 770 s2Step92ExitFvExtra ++ (shrinkRow 771 s2Step92ExitGvExtra ++ []))))⟩

private def s2Step92CompletePlan : HmrEarlyStepPlan := ⟨s2Step92FrontPlan,s2Step92EarlyControlArena,s2Step92EarlyControlPlan,s2Step92CompleteMoves⟩

private theorem s2Step92Complete_apart : List.Disjoint (s2Step92CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [793, 786, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] := by
  have nd : ((s2Step92CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[793, 786, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step92Complete_owned : (s2Step92CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step92EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step92EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<796) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private def s2Step92CompleteMoveArena : Arena := ⟨s2Step92ExitGvAfter.live∪{221},Finset.union_subset s2Step92ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step92Complete_repack : s2Step92ExitGvAfter.checkRepack s2Step92CompleteMoves=some s2Step92EarlyControlArena := by
  have owned : 799∈s2Step92ExitGvAfter.live := by norm_num [s2Step92ExitGvAfter,arenaWires]
  have reserve : s2Step92ExitGvAfter.reserve {221}=some s2Step92CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step92ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step92CompleteMoveArena.retireSet {799}=s2Step92EarlyControlArena := by
    unfold Arena.retireSet s2Step92EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step92CompleteMoveArena,s2Step92ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step92CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step92CompleteMoveArena.retireSet {799}).checkRepack []=some s2Step92EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step92EarlyControl_branchOwned : ([786] : List Wire).toFinset⊆s2Step92EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step92EarlyControlSigmaArena (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<796) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step92EarlyControl_branch : compileHmrBranchRetirement s2Step92EarlyControlSigmaArena 786=some s2Step92EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step92EarlyControl_branchOwned
  · ext q
    simp [s2Step92EarlyControlOutputArena,s2Step92EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step92EarlyControl_classEqualityBorrow : s2Step92EarlyControlPositiveArena.checkBorrow (([793, 779] : List Wire).length-1) s2Step92EarlyControlLog.classWork=some s2Step92EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step92EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step92EarlyControlPositiveArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
      decide +kernel
    · ext q
      simp [s2Step92EarlyControlEqualityArena,s2Step92EarlyControlPositiveArena,s2Step92EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step92EarlyControl_classEqualityOwned : ([793, 779] : List Wire).toFinset⊆s2Step92EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step92EarlyControlPositiveArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step92EarlyControl_classEquality : compileHmrEqualityLog s2Step92EarlyControlPositiveArena [793, 779] 0 s2Step92EarlyControlLog.classWork=some (s2Step92EarlyControlEqualityArena,s2Step92EarlyControlLog.classWork,s2Step92EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step92EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step92EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step92EarlyControl_classOwned : ([777, 797, 793] : List Wire).toFinset⊆s2Step92EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step92EarlyControlZeroArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step92EarlyControl_positiveBorrow : s2Step92EarlyControlZeroArena.checkBorrow (1) s2Step92EarlyControlLog.positiveWork=some s2Step92EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step92EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step92EarlyControlZeroArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
      decide +kernel
    · ext q
      simp [s2Step92EarlyControlPositiveArena,s2Step92EarlyControlZeroArena,s2Step92EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step92EarlyControl_class : compileHmrSourceClassLog s2Step92EarlyControlZeroArena false 777 s2Step92EarlyControlZeroPlan.top 0 793 s2Step92EarlyControlLog.positiveWork s2Step92EarlyControlLog.classWork=some s2Step92EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step92EarlyControlClassPlan s2Step92EarlyControlZeroArena false 777 s2Step92EarlyControlZeroPlan.top 0 793
  constructor
  · decide +kernel
  · exact s2Step92EarlyControl_classOwned
  · exact s2Step92EarlyControl_positiveBorrow
  · exact s2Step92EarlyControl_classEquality

private theorem s2Step92EarlyControl_entryRecordOwned : ([786, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] : List Wire).toFinset⊆s2Step92EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step92EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<796) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step92EarlyControl_entrySigmaOwned : ([793, 254] : List Wire).toFinset⊆s2Step92EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step92EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<796) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step92EarlyControl_fitBorrow : s2Step92EarlyControlFlagArena.checkBorrow ((34-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] : List Wire).length)) s2Step92EarlyControlLog.recordFresh=some s2Step92EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step92EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step92EarlyControlFlagArena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
      decide +kernel
    · ext q
      simp [s2Step92EarlyControlFittedArena,s2Step92EarlyControlFlagArena,s2Step92EarlyControlLog,arenaWires]

private theorem s2Step92EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] : List Wire).toFinset⊆s2Step92EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step92EarlyControlFlagArena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step92EarlyControl_fit : compileHmrRecordGrowLog s2Step92EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] 34 s2Step92EarlyControlLog.recordFresh=some s2Step92EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step92EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step92EarlyControl_fitBorrow

private theorem s2Step92EarlyControl_flagsBorrow : s2Step92EarlyControlEqualityArena.checkBorrow (6) s2Step92EarlyControlLog.flagWork=some s2Step92EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step92EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step92EarlyControlEqualityArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
      decide +kernel
    · ext q
      simp [s2Step92EarlyControlFlagArena,s2Step92EarlyControlEqualityArena,s2Step92EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step92EarlyControl_flagsOwned : ([844, 253, 252, 251] : List Wire).toFinset⊆s2Step92EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step92EarlyControlEqualityArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step92EarlyControl_flags : compileHmrFlagsLog s2Step92EarlyControlClassPlan.equalityArena s2Step92EarlyControlClassPlan.equality.top 253 252 251 s2Step92EarlyControlLog.flagWork=some s2Step92EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step92EarlyControl_flagsOwned⟩
  · exact s2Step92EarlyControl_flagsBorrow

private theorem s2Step92EarlyControl_historyBorrow : s2Step92EarlyControlArena.checkBorrow ((34-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] : List Wire).length)) s2Step92EarlyControlLog.recordFresh=some s2Step92EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step92EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step92EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<796) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
      decide +kernel
    · ext q
      simp [s2Step92EarlyControlHistoryArena,s2Step92EarlyControlArena,s2Step92EarlyControlLog,arenaWires]

private theorem s2Step92EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] : List Wire).toFinset⊆s2Step92EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step92EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<796) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step92EarlyControl_history : compileHmrRecordGrowLog s2Step92EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] 34 s2Step92EarlyControlLog.recordFresh=some s2Step92EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step92EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step92EarlyControl_historyBorrow

private theorem s2Step92EarlyControl_sigmaOwned : ([254, 793] : List Wire).toFinset⊆s2Step92EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step92EarlyControlHistoryArena (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<796) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step92EarlyControl_sigmaReleaseOwned : ([793] : List Wire).toFinset⊆s2Step92EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step92EarlyControlHistoryArena (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<796) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step92EarlyControl_sigmaRelease : s2Step92EarlyControlHistoryArena.release {793} (fun _ => false)=some s2Step92EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step92EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step92EarlyControlSigmaArena,s2Step92EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step92EarlyControl_sigma : compileHmrSigmaDropLog s2Step92EarlyControlHistoryArena false 0 0 254 793 []=some s2Step92EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step92EarlyControl_sigmaOwned⟩
  · exact s2Step92EarlyControl_sigmaRelease

private theorem s2Step92EarlyControl_zeroBorrow : s2Step92EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step92EarlyControlLog.zeroWork=some s2Step92EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step92EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step92EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<796) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
      decide +kernel
    · ext q
      simp [s2Step92EarlyControlZeroArena,s2Step92EarlyControlArena,s2Step92EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step92EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step92EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step92EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<796) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step92EarlyControl_zero : compileHmrEqualityLog s2Step92EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step92EarlyControlLog.zeroWork=some (s2Step92EarlyControlZeroArena,s2Step92EarlyControlLog.zeroWork,s2Step92EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step92EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step92EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step92EarlyControl_logged : s2Step92EarlyControlPlan.Logged s2Step92EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] 777 793 254 253 252 251 786 34 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step92EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step92EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step92EarlyControl_zero
  · exact s2Step92EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step92EarlyControl_flags
  · exact s2Step92EarlyControl_fit
  · exact s2Step92EarlyControl_history
  · exact s2Step92EarlyControl_sigma
  · exact s2Step92EarlyControl_branch

private theorem s2Step92EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step92EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] 777 793 254 253 252 251 786 34 s2Step92EarlyControlLog=some s2Step92EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step92EarlyControlPlan s2Step92EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] 777 793 254 253 252 251 786 34 s2Step92EarlyControl_logged

private def s2Step92EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733],768⟩

private def s2Step92EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816],770⟩

private def s2Step92EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221],769⟩

private def s2Step92EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836],771⟩

private def s2Step92FrontBank : WindowBank := ⟨s2Step92EntryFRow,s2Step92EntryGRow,s2Step92EntryFvRow,s2Step92EntryGvRow⟩

private def s2Step92Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 780, 768]

private def s2Step92Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 797, 769]

private def s2Step92Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 796, 770]

private def s2Step92Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 781, 771]

private theorem s2Step92Counter_apart : Disjoint s2Step92HeadFvAfter.live s2Step92CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step92HeadFvAfter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step92Counter_borrowed : s2Step92HeadFvAfter.checkBorrow 4 s2Step92CounterWork=some s2Step92CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step92HeadFvAfter s2Step92CounterDuring s2Step92CounterWork.toFinset s2Step92Counter_bounded s2Step92Counter_apart rfl

private theorem s2Step92Counter_owned : (793::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step92HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step92HeadFvAfter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step92Counter_checked : compileHmrCounterStepLog s2Step92HeadFvAfter true 793 [772, 773, 774, 775, 776, 777] s2Step92CounterWork=some s2Step92CounterDuring := by
  have owned : ∀q∈793::[772, 773, 774, 775, 776, 777],q∈s2Step92HeadFvAfter.live := fun q hq => s2Step92Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step92Counter_borrowed

private def s2Step92EntryFAfter : Arena := s2Step92EntryFBefore

private theorem s2Step92EntryBank_incomingDistinct : ([s2Step92EntryFRow,s2Step92EntryGRow,s2Step92EntryFvRow,s2Step92EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step92EntryF_Incoming : rowsOwned s2Step92EntryFBefore [s2Step92EntryFRow,s2Step92EntryGRow,s2Step92EntryFvRow,s2Step92EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step92EntryFRow,s2Step92EntryGRow,s2Step92EntryFvRow,s2Step92EntryGvRow] 0 s2Step92EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step92EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (794≤q ∧ q<796) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step92EntryBank_outgoingOwned : rowsOwned s2Step92EntryGvAfter [s2Step92EntryFOut,s2Step92EntryGOut,s2Step92EntryFvOut,s2Step92EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step92EntryGvAfter (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (794≤q ∧ q<796) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step92EntryF_Outgoing : rowsOwned s2Step92EntryGvAfter [s2Step92EntryFOut,s2Step92EntryGOut,s2Step92EntryFvOut,s2Step92EntryGvOut] :=
  hmrRows_owned_drop s2Step92EntryGvAfter [s2Step92EntryFOut,s2Step92EntryGOut,s2Step92EntryFvOut,s2Step92EntryGvOut] 0 s2Step92EntryBank_outgoingOwned

private theorem s2Step92EntryF_distinct : (s2Step92EntryFRow.sign::s2Step92EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step92EntryF_owned : (s2Step92EntryFRow.sign::s2Step92EntryFRow.payload).toFinset⊆s2Step92EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step92EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (794≤q ∧ q<796) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step92EntryF_reserved : s2Step92EntryFBefore.reserve s2Step92EntryFFresh.toFinset=some s2Step92EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step92EntryFFresh,arenaWires]
  · norm_num [s2Step92EntryFBefore,s2Step92EntryFFresh,arenaWires]
  · simp only [s2Step92EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step92EntryF_checked : planRowResizeLog s2Step92EntryFBefore s2Step92EntryFRow 222 s2Step92EntryFFresh=
    some (s2Step92EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733],768⟩,growRow 768 s2Step92EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step92EntryFBefore s2Step92EntryFAfter s2Step92EntryFRow 222 s2Step92EntryFFresh
    s2Step92EntryF_distinct s2Step92EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step92EntryF_reserved
  have rowEq : WindowRow.mk (s2Step92EntryFRow.payload++s2Step92EntryFFresh) s2Step92EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step92EntryFvAfter : Arena := s2Step92EntryFBefore

private def s2Step92EntryFvBefore : Arena := s2Step92EntryFBefore

private theorem s2Step92EntryFv_Incoming : rowsOwned s2Step92EntryFvBefore [s2Step92EntryFvRow,s2Step92EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step92EntryFRow,s2Step92EntryGRow,s2Step92EntryFvRow,s2Step92EntryGvRow] 2 s2Step92EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step92EntryFvBefore (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (794≤q ∧ q<796) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step92EntryFv_Outgoing : rowsOwned s2Step92EntryGvAfter [s2Step92EntryFvOut,s2Step92EntryGvOut] :=
  hmrRows_owned_drop s2Step92EntryGvAfter [s2Step92EntryFOut,s2Step92EntryGOut,s2Step92EntryFvOut,s2Step92EntryGvOut] 2 s2Step92EntryBank_outgoingOwned

private theorem s2Step92EntryFv_distinct : (s2Step92EntryFvRow.sign::s2Step92EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step92EntryFv_owned : (s2Step92EntryFvRow.sign::s2Step92EntryFvRow.payload).toFinset⊆s2Step92EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step92EntryFvBefore (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (794≤q ∧ q<796) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step92EntryFv_reserved : s2Step92EntryFvBefore.reserve s2Step92EntryFvFresh.toFinset=some s2Step92EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step92EntryFvFresh,arenaWires]
  · norm_num [s2Step92EntryFvBefore,s2Step92EntryFBefore,s2Step92EntryFvFresh,arenaWires]
  · simp only [s2Step92EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step92EntryFv_checked : planRowResizeLog s2Step92EntryFvBefore s2Step92EntryFvRow 59 s2Step92EntryFvFresh=
    some (s2Step92EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816],770⟩,growRow 770 s2Step92EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step92EntryFvBefore s2Step92EntryFvAfter s2Step92EntryFvRow 59 s2Step92EntryFvFresh
    s2Step92EntryFv_distinct s2Step92EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step92EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step92EntryFvRow.payload++s2Step92EntryFvFresh) s2Step92EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step92EntryGAfter : Arena := s2Step92EntryFBefore

private def s2Step92EntryGBefore : Arena := s2Step92EntryFBefore

private theorem s2Step92EntryG_Incoming : rowsOwned s2Step92EntryGBefore [s2Step92EntryGRow,s2Step92EntryFvRow,s2Step92EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step92EntryFRow,s2Step92EntryGRow,s2Step92EntryFvRow,s2Step92EntryGvRow] 1 s2Step92EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step92EntryGBefore (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (794≤q ∧ q<796) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step92EntryG_Outgoing : rowsOwned s2Step92EntryGvAfter [s2Step92EntryGOut,s2Step92EntryFvOut,s2Step92EntryGvOut] :=
  hmrRows_owned_drop s2Step92EntryGvAfter [s2Step92EntryFOut,s2Step92EntryGOut,s2Step92EntryFvOut,s2Step92EntryGvOut] 1 s2Step92EntryBank_outgoingOwned

private theorem s2Step92EntryG_distinct : (s2Step92EntryGRow.sign::s2Step92EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step92EntryG_owned : (s2Step92EntryGRow.sign::s2Step92EntryGRow.payload).toFinset⊆s2Step92EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step92EntryGBefore (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (794≤q ∧ q<796) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step92EntryG_reserved : s2Step92EntryGBefore.reserve s2Step92EntryGFresh.toFinset=some s2Step92EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step92EntryGFresh,arenaWires]
  · norm_num [s2Step92EntryGBefore,s2Step92EntryFBefore,s2Step92EntryGFresh,arenaWires]
  · simp only [s2Step92EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step92EntryG_checked : planRowResizeLog s2Step92EntryGBefore s2Step92EntryGRow 222 s2Step92EntryGFresh=
    some (s2Step92EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221],769⟩,growRow 769 s2Step92EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step92EntryGBefore s2Step92EntryGAfter s2Step92EntryGRow 222 s2Step92EntryGFresh
    s2Step92EntryG_distinct s2Step92EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step92EntryG_reserved
  have rowEq : WindowRow.mk (s2Step92EntryGRow.payload++s2Step92EntryGFresh) s2Step92EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step92EntryGvBefore : Arena := s2Step92EntryFBefore

private theorem s2Step92EntryGv_Incoming : rowsOwned s2Step92EntryGvBefore [s2Step92EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step92EntryFRow,s2Step92EntryGRow,s2Step92EntryFvRow,s2Step92EntryGvRow] 3 s2Step92EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step92EntryGvBefore (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (794≤q ∧ q<796) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step92EntryGv_Outgoing : rowsOwned s2Step92EntryGvAfter [s2Step92EntryGvOut] :=
  hmrRows_owned_drop s2Step92EntryGvAfter [s2Step92EntryFOut,s2Step92EntryGOut,s2Step92EntryFvOut,s2Step92EntryGvOut] 3 s2Step92EntryBank_outgoingOwned

private theorem s2Step92EntryGv_distinct : (s2Step92EntryGvRow.sign::s2Step92EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step92EntryGv_owned : (s2Step92EntryGvRow.sign::s2Step92EntryGvRow.payload).toFinset⊆s2Step92EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step92EntryGvBefore (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (794≤q ∧ q<796) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step92EntryGv_reserved : s2Step92EntryGvBefore.reserve s2Step92EntryGvFresh.toFinset=some s2Step92EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step92EntryGvFresh,arenaWires]
  · norm_num [s2Step92EntryGvBefore,s2Step92EntryFBefore,s2Step92EntryGvFresh,arenaWires]
  · simp only [s2Step92EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step92EntryGv_checked : planRowResizeLog s2Step92EntryGvBefore s2Step92EntryGvRow 59 s2Step92EntryGvFresh=
    some (s2Step92EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836],771⟩,growRow 771 s2Step92EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step92EntryGvBefore s2Step92EntryGvAfter s2Step92EntryGvRow 59 s2Step92EntryGvFresh
    s2Step92EntryGv_distinct s2Step92EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step92EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step92EntryGvRow.payload++s2Step92EntryGvFresh) s2Step92EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step92EntryBank_rows : planWindowRowsLog s2Step92EntryFBefore [(s2Step92EntryFRow,222),(s2Step92EntryGRow,222),(s2Step92EntryFvRow,59),(s2Step92EntryGvRow,59)] [s2Step92EntryFFresh,s2Step92EntryGFresh,s2Step92EntryFvFresh,s2Step92EntryGvFresh]=
    some (s2Step92EntryGvAfter,[s2Step92EntryFOut,s2Step92EntryGOut,s2Step92EntryFvOut,s2Step92EntryGvOut],(growRow 768 s2Step92EntryFFresh ++ (growRow 769 s2Step92EntryGFresh ++ (growRow 770 s2Step92EntryFvFresh ++ (growRow 771 s2Step92EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step92EntryGvAfter [] []=some (s2Step92EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step92EntryGvBefore s2Step92EntryGvAfter s2Step92EntryGvAfter
    s2Step92EntryGvRow s2Step92EntryGvOut 59 s2Step92EntryGvFresh [] [] []
    (growRow 771 s2Step92EntryGvFresh) ([]) s2Step92EntryGv_Incoming s2Step92EntryGv_checked h4 s2Step92EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step92EntryFvBefore s2Step92EntryFvAfter s2Step92EntryGvAfter
    s2Step92EntryFvRow s2Step92EntryFvOut 59 s2Step92EntryFvFresh [(s2Step92EntryGvRow,59)] [s2Step92EntryGvFresh] [s2Step92EntryGvOut]
    (growRow 770 s2Step92EntryFvFresh) ((growRow 771 s2Step92EntryGvFresh ++ [])) s2Step92EntryFv_Incoming s2Step92EntryFv_checked h3 s2Step92EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step92EntryGBefore s2Step92EntryGAfter s2Step92EntryGvAfter
    s2Step92EntryGRow s2Step92EntryGOut 222 s2Step92EntryGFresh [(s2Step92EntryFvRow,59),(s2Step92EntryGvRow,59)] [s2Step92EntryFvFresh,s2Step92EntryGvFresh] [s2Step92EntryFvOut,s2Step92EntryGvOut]
    (growRow 769 s2Step92EntryGFresh) ((growRow 770 s2Step92EntryFvFresh ++ (growRow 771 s2Step92EntryGvFresh ++ []))) s2Step92EntryG_Incoming s2Step92EntryG_checked h2 s2Step92EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step92EntryFBefore s2Step92EntryFAfter s2Step92EntryGvAfter
    s2Step92EntryFRow s2Step92EntryFOut 222 s2Step92EntryFFresh [(s2Step92EntryGRow,222),(s2Step92EntryFvRow,59),(s2Step92EntryGvRow,59)] [s2Step92EntryGFresh,s2Step92EntryFvFresh,s2Step92EntryGvFresh] [s2Step92EntryGOut,s2Step92EntryFvOut,s2Step92EntryGvOut]
    (growRow 768 s2Step92EntryFFresh) ((growRow 769 s2Step92EntryGFresh ++ (growRow 770 s2Step92EntryFvFresh ++ (growRow 771 s2Step92EntryGvFresh ++ [])))) s2Step92EntryF_Incoming s2Step92EntryF_checked h1 s2Step92EntryF_Outgoing
  exact h0

private theorem s2Step92EntryBank_checked : compileHmrBankResizeLog .entry s2Step92EntryFBefore ⟨s2Step92EntryFRow,s2Step92EntryGRow,s2Step92EntryFvRow,s2Step92EntryGvRow⟩ ⟨222,222,59,59⟩ [s2Step92EntryFFresh,s2Step92EntryGFresh,s2Step92EntryFvFresh,s2Step92EntryGvFresh]=
    some (s2Step92EntryGvAfter,⟨s2Step92EntryFOut,s2Step92EntryGOut,s2Step92EntryFvOut,s2Step92EntryGvOut⟩,(growRow 768 s2Step92EntryFFresh ++ (growRow 769 s2Step92EntryGFresh ++ (growRow 770 s2Step92EntryFvFresh ++ (growRow 771 s2Step92EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step92EntryBank_rows]
  rfl

private def s2Step92ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<221) ∨ (222≤q ∧ q<779) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<797) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step92ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<221) ∨ (222≤q ∧ q<779) ∨ (780≤q ∧ q<785) ∨ (786≤q ∧ q<797) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step92ExitFBefore : Arena := s2Step92ExitGAfter

private def s2Step92ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 780],768⟩

private def s2Step92ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 796],770⟩

private def s2Step92ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 797],769⟩

private def s2Step92ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 781],771⟩

private theorem s2Step92ExitBank_incomingDistinct : ([s2Step92ExitGRow,s2Step92ExitFRow,s2Step92ExitFvRow,s2Step92ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step92ExitF_Incoming : rowsOwned s2Step92ExitFBefore [s2Step92ExitFRow,s2Step92ExitFvRow,s2Step92ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step92ExitGRow,s2Step92ExitFRow,s2Step92ExitFvRow,s2Step92ExitGvRow] 1 s2Step92ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step92ExitFBefore (fun q => (0≤q ∧ q<221) ∨ (222≤q ∧ q<779) ∨ (780≤q ∧ q<785) ∨ (786≤q ∧ q<797) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step92ExitBank_outgoingOwned : rowsOwned s2Step92ExitGvAfter [s2Step92ExitGOut,s2Step92ExitFOut,s2Step92ExitFvOut,s2Step92ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step92ExitGvAfter (fun q => (0≤q ∧ q<221) ∨ (222≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<796) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step92ExitF_Outgoing : rowsOwned s2Step92ExitGvAfter [s2Step92ExitFOut,s2Step92ExitFvOut,s2Step92ExitGvOut] :=
  hmrRows_owned_drop s2Step92ExitGvAfter [s2Step92ExitGOut,s2Step92ExitFOut,s2Step92ExitFvOut,s2Step92ExitGvOut] 1 s2Step92ExitBank_outgoingOwned

private theorem s2Step92ExitF_distinct : (s2Step92ExitFRow.sign::s2Step92ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step92ExitF_owned : (s2Step92ExitFRow.sign::s2Step92ExitFRow.payload).toFinset⊆s2Step92ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step92ExitFBefore (fun q => (0≤q ∧ q<221) ∨ (222≤q ∧ q<779) ∨ (780≤q ∧ q<785) ∨ (786≤q ∧ q<797) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step92ExitF_retired : s2Step92ExitFBefore.retireSet s2Step92ExitFExtra.toFinset=s2Step92ExitFAfter := by
  unfold Arena.retireSet s2Step92ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step92ExitFBefore,s2Step92ExitGAfter,s2Step92ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step92ExitF_checked : planRowResizeLog s2Step92ExitFBefore s2Step92ExitFRow 222 []=
    some (s2Step92ExitFAfter,s2Step92ExitFOut,shrinkRow 768 s2Step92ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step92ExitFBefore s2Step92ExitFRow 222 s2Step92ExitF_distinct s2Step92ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step92ExitFRow.payload.take 222) s2Step92ExitFRow.sign=s2Step92ExitFOut := by decide +kernel
  have hi : s2Step92ExitFRow.payload.drop 222=s2Step92ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step92ExitF_retired] at result
  exact result

private def s2Step92ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<221) ∨ (222≤q ∧ q<779) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<796) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step92ExitFvBefore : Arena := s2Step92ExitFAfter

private theorem s2Step92ExitFv_Incoming : rowsOwned s2Step92ExitFvBefore [s2Step92ExitFvRow,s2Step92ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step92ExitGRow,s2Step92ExitFRow,s2Step92ExitFvRow,s2Step92ExitGvRow] 2 s2Step92ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step92ExitFvBefore (fun q => (0≤q ∧ q<221) ∨ (222≤q ∧ q<779) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<797) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step92ExitFv_Outgoing : rowsOwned s2Step92ExitGvAfter [s2Step92ExitFvOut,s2Step92ExitGvOut] :=
  hmrRows_owned_drop s2Step92ExitGvAfter [s2Step92ExitGOut,s2Step92ExitFOut,s2Step92ExitFvOut,s2Step92ExitGvOut] 2 s2Step92ExitBank_outgoingOwned

private theorem s2Step92ExitFv_distinct : (s2Step92ExitFvRow.sign::s2Step92ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step92ExitFv_owned : (s2Step92ExitFvRow.sign::s2Step92ExitFvRow.payload).toFinset⊆s2Step92ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step92ExitFvBefore (fun q => (0≤q ∧ q<221) ∨ (222≤q ∧ q<779) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<797) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step92ExitFv_retired : s2Step92ExitFvBefore.retireSet s2Step92ExitFvExtra.toFinset=s2Step92ExitFvAfter := by
  unfold Arena.retireSet s2Step92ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step92ExitFvBefore,s2Step92ExitFAfter,s2Step92ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step92ExitFv_checked : planRowResizeLog s2Step92ExitFvBefore s2Step92ExitFvRow 59 []=
    some (s2Step92ExitFvAfter,s2Step92ExitFvOut,shrinkRow 770 s2Step92ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step92ExitFvBefore s2Step92ExitFvRow 59 s2Step92ExitFv_distinct s2Step92ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step92ExitFvRow.payload.take 59) s2Step92ExitFvRow.sign=s2Step92ExitFvOut := by decide +kernel
  have hi : s2Step92ExitFvRow.payload.drop 59=s2Step92ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step92ExitFv_retired] at result
  exact result

private def s2Step92ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private theorem s2Step92ExitG_Incoming : rowsOwned s2Step92ExitGBefore [s2Step92ExitGRow,s2Step92ExitFRow,s2Step92ExitFvRow,s2Step92ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step92ExitGRow,s2Step92ExitFRow,s2Step92ExitFvRow,s2Step92ExitGvRow] 0 s2Step92ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step92ExitGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step92ExitG_Outgoing : rowsOwned s2Step92ExitGvAfter [s2Step92ExitGOut,s2Step92ExitFOut,s2Step92ExitFvOut,s2Step92ExitGvOut] :=
  hmrRows_owned_drop s2Step92ExitGvAfter [s2Step92ExitGOut,s2Step92ExitFOut,s2Step92ExitFvOut,s2Step92ExitGvOut] 0 s2Step92ExitBank_outgoingOwned

private theorem s2Step92ExitG_distinct : (s2Step92ExitGRow.sign::s2Step92ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step92ExitG_owned : (s2Step92ExitGRow.sign::s2Step92ExitGRow.payload).toFinset⊆s2Step92ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step92ExitGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step92ExitG_retired : s2Step92ExitGBefore.retireSet s2Step92ExitGExtra.toFinset=s2Step92ExitGAfter := by
  unfold Arena.retireSet s2Step92ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step92ExitGBefore,s2Step92ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step92ExitG_checked : planRowResizeLog s2Step92ExitGBefore s2Step92ExitGRow 221 []=
    some (s2Step92ExitGAfter,s2Step92ExitGOut,shrinkRow 769 s2Step92ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step92ExitGBefore s2Step92ExitGRow 221 s2Step92ExitG_distinct s2Step92ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step92ExitGRow.payload.take 221) s2Step92ExitGRow.sign=s2Step92ExitGOut := by decide +kernel
  have hi : s2Step92ExitGRow.payload.drop 221=s2Step92ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step92ExitG_retired] at result
  exact result

private def s2Step92ExitGvBefore : Arena := s2Step92ExitFvAfter

private theorem s2Step92ExitGv_Incoming : rowsOwned s2Step92ExitGvBefore [s2Step92ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step92ExitGRow,s2Step92ExitFRow,s2Step92ExitFvRow,s2Step92ExitGvRow] 3 s2Step92ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step92ExitGvBefore (fun q => (0≤q ∧ q<221) ∨ (222≤q ∧ q<779) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<796) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step92ExitGv_Outgoing : rowsOwned s2Step92ExitGvAfter [s2Step92ExitGvOut] :=
  hmrRows_owned_drop s2Step92ExitGvAfter [s2Step92ExitGOut,s2Step92ExitFOut,s2Step92ExitFvOut,s2Step92ExitGvOut] 3 s2Step92ExitBank_outgoingOwned

private theorem s2Step92ExitGv_distinct : (s2Step92ExitGvRow.sign::s2Step92ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step92ExitGv_owned : (s2Step92ExitGvRow.sign::s2Step92ExitGvRow.payload).toFinset⊆s2Step92ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step92ExitGvBefore (fun q => (0≤q ∧ q<221) ∨ (222≤q ∧ q<779) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<796) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step92ExitGv_retired : s2Step92ExitGvBefore.retireSet s2Step92ExitGvExtra.toFinset=s2Step92ExitGvAfter := by
  unfold Arena.retireSet s2Step92ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step92ExitGvBefore,s2Step92ExitFvAfter,s2Step92ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step92ExitGv_checked : planRowResizeLog s2Step92ExitGvBefore s2Step92ExitGvRow 59 []=
    some (s2Step92ExitGvAfter,s2Step92ExitGvOut,shrinkRow 771 s2Step92ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step92ExitGvBefore s2Step92ExitGvRow 59 s2Step92ExitGv_distinct s2Step92ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step92ExitGvRow.payload.take 59) s2Step92ExitGvRow.sign=s2Step92ExitGvOut := by decide +kernel
  have hi : s2Step92ExitGvRow.payload.drop 59=s2Step92ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step92ExitGv_retired] at result
  exact result

private theorem s2Step92ExitBank_rows : planWindowRowsLog s2Step92ExitGBefore [(s2Step92ExitGRow,221),(s2Step92ExitFRow,222),(s2Step92ExitFvRow,59),(s2Step92ExitGvRow,59)] [[],[],[],[]]=
    some (s2Step92ExitGvAfter,[s2Step92ExitGOut,s2Step92ExitFOut,s2Step92ExitFvOut,s2Step92ExitGvOut],(shrinkRow 769 s2Step92ExitGExtra ++ (shrinkRow 768 s2Step92ExitFExtra ++ (shrinkRow 770 s2Step92ExitFvExtra ++ (shrinkRow 771 s2Step92ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step92ExitGvAfter [] []=some (s2Step92ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step92ExitGvBefore s2Step92ExitGvAfter s2Step92ExitGvAfter
    s2Step92ExitGvRow s2Step92ExitGvOut 59 [] [] [] []
    (shrinkRow 771 s2Step92ExitGvExtra) ([]) s2Step92ExitGv_Incoming s2Step92ExitGv_checked h4 s2Step92ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step92ExitFvBefore s2Step92ExitFvAfter s2Step92ExitGvAfter
    s2Step92ExitFvRow s2Step92ExitFvOut 59 [] [(s2Step92ExitGvRow,59)] [[]] [s2Step92ExitGvOut]
    (shrinkRow 770 s2Step92ExitFvExtra) ((shrinkRow 771 s2Step92ExitGvExtra ++ [])) s2Step92ExitFv_Incoming s2Step92ExitFv_checked h3 s2Step92ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step92ExitFBefore s2Step92ExitFAfter s2Step92ExitGvAfter
    s2Step92ExitFRow s2Step92ExitFOut 222 [] [(s2Step92ExitFvRow,59),(s2Step92ExitGvRow,59)] [[],[]] [s2Step92ExitFvOut,s2Step92ExitGvOut]
    (shrinkRow 768 s2Step92ExitFExtra) ((shrinkRow 770 s2Step92ExitFvExtra ++ (shrinkRow 771 s2Step92ExitGvExtra ++ []))) s2Step92ExitF_Incoming s2Step92ExitF_checked h2 s2Step92ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step92ExitGBefore s2Step92ExitGAfter s2Step92ExitGvAfter
    s2Step92ExitGRow s2Step92ExitGOut 221 [] [(s2Step92ExitFRow,222),(s2Step92ExitFvRow,59),(s2Step92ExitGvRow,59)] [[],[],[]] [s2Step92ExitFOut,s2Step92ExitFvOut,s2Step92ExitGvOut]
    (shrinkRow 769 s2Step92ExitGExtra) ((shrinkRow 768 s2Step92ExitFExtra ++ (shrinkRow 770 s2Step92ExitFvExtra ++ (shrinkRow 771 s2Step92ExitGvExtra ++ [])))) s2Step92ExitG_Incoming s2Step92ExitG_checked h1 s2Step92ExitG_Outgoing
  exact h0

private theorem s2Step92ExitBank_checked : compileHmrBankResizeLog .exit s2Step92ExitGBefore ⟨s2Step92ExitFRow,s2Step92ExitGRow,s2Step92ExitFvRow,s2Step92ExitGvRow⟩ ⟨222,221,59,59⟩ [[],[],[],[]]=
    some (s2Step92ExitGvAfter,⟨s2Step92ExitFOut,s2Step92ExitGOut,s2Step92ExitFvOut,s2Step92ExitGvOut⟩,(shrinkRow 769 s2Step92ExitGExtra ++ (shrinkRow 768 s2Step92ExitFExtra ++ (shrinkRow 770 s2Step92ExitFvExtra ++ (shrinkRow 771 s2Step92ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step92ExitBank_rows]
  rfl

private theorem s2Step92Add0_apart : Disjoint s2Step92Add0Arena.live s2Step92Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step92Add0Arena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step92Add0_card : s2Step92Add0Arena.live.card=870 := by
  decide +kernel

private theorem s2Step92Add0_borrowed : s2Step92Add0Arena.checkBorrow (hmrHybridCount s2Step92Add0Arena s2Step92Add0B.length) s2Step92Add0Work=some s2Step92Add0During := by
  have len : s2Step92Add0Work.length=hmrHybridCount s2Step92Add0Arena s2Step92Add0B.length := by
    rw [hmrHybridCount,s2Step92Add0_card]
    decide +kernel
  have nd : s2Step92Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step92Add0Arena s2Step92Add0During s2Step92Add0Work.toFinset s2Step92Add0_bounded s2Step92Add0_apart rfl

private theorem s2Step92Add0_distinct : (779::786::844::(s2Step92Add0A++s2Step92Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step92Add0_owned : (779::786::844::(s2Step92Add0A++s2Step92Add0B)).toFinset⊆s2Step92Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step92Add0Arena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step92Add0_checked : compileHmrHybridCinLog s2Step92Add0Arena 786 779 844 s2Step92Add0A s2Step92Add0B s2Step92Add0Work=some s2Step92Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step92Add0Arena s2Step92Add0During 786 779 844 s2Step92Add0A s2Step92Add0B s2Step92Add0Work
    (by decide +kernel) (by decide +kernel) s2Step92Add0_distinct
    (fun q hq => s2Step92Add0_owned (List.mem_toFinset.mpr hq)) s2Step92Add0_borrowed

private theorem s2Step92Add1_apart : Disjoint s2Step92Add1Arena.live s2Step92Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step92Add1Arena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step92Add1_card : s2Step92Add1Arena.live.card=870 := by
  decide +kernel

private theorem s2Step92Add1_borrowed : s2Step92Add1Arena.checkBorrow (hmrHybridCount s2Step92Add1Arena s2Step92Add1B.length) s2Step92Add1Work=some s2Step92Add1During := by
  have len : s2Step92Add1Work.length=hmrHybridCount s2Step92Add1Arena s2Step92Add1B.length := by
    rw [hmrHybridCount,s2Step92Add1_card]
    decide +kernel
  have nd : s2Step92Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step92Add1Arena s2Step92Add1During s2Step92Add1Work.toFinset s2Step92Add1_bounded s2Step92Add1_apart rfl

private theorem s2Step92Add1_distinct : (779::786::844::(s2Step92Add1A++s2Step92Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step92Add1_owned : (779::786::844::(s2Step92Add1A++s2Step92Add1B)).toFinset⊆s2Step92Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step92Add1Arena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step92Add1_checked : compileHmrHybridCinLog s2Step92Add1Arena 786 779 844 s2Step92Add1A s2Step92Add1B s2Step92Add1Work=some s2Step92Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step92Add1Arena s2Step92Add1During 786 779 844 s2Step92Add1A s2Step92Add1B s2Step92Add1Work
    (by decide +kernel) (by decide +kernel) s2Step92Add1_distinct
    (fun q hq => s2Step92Add1_owned (List.mem_toFinset.mpr hq)) s2Step92Add1_borrowed

private theorem s2Step92F4_apart : Disjoint (s2Step92Add0A++s2Step92Add0B).toFinset (s2Step92Add1A++s2Step92Add1B).toFinset := by
  have nd : ((s2Step92Add0A++s2Step92Add0B)++(s2Step92Add1A++s2Step92Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step92F4_carry : s2Step92F4FlagArena.checkBorrow 1 [844]=some s2Step92Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step92F4FlagArena,s2Step92HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step92F4FlagArena,s2Step92HeadFvAfter,s2Step92Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step92F4_distinct : (793::786::779::844::((s2Step92Add0A++s2Step92Add1A)++(s2Step92Add0B++s2Step92Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step92F4_flag : s2Step92HeadFvAfter.checkBorrow 1 [779]=some s2Step92F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step92HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step92F4_owned : (793::786::((s2Step92Add0A++s2Step92Add1A)++(s2Step92Add0B++s2Step92Add1B))).toFinset⊆s2Step92HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step92HeadFvAfter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step92F4_checked : compileHmrHybridF4Log s2Step92HeadFvAfter 793 786 s2Step92Add0A s2Step92Add0B s2Step92Add1A s2Step92Add1B [779] [844] s2Step92Add0Work s2Step92Add1Work=some s2Step92F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step92HeadFvAfter s2Step92F4FlagArena s2Step92Add0Arena s2Step92Add0During s2Step92Add1During 793 786
    s2Step92Add0A s2Step92Add0B s2Step92Add1A s2Step92Add1B [779] [844] s2Step92Add0Work s2Step92Add1Work
    (fun q hq => s2Step92F4_owned (List.mem_toFinset.mpr hq)) s2Step92F4_flag s2Step92F4_carry
    s2Step92F4_distinct s2Step92F4_apart s2Step92Add0_checked s2Step92Add1_checked

private theorem s2Step92Front_branch : s2Step92FrontSigmaArena.checkBorrow 1 [786]=some s2Step92HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step92FrontSigmaArena,s2Step92EntryGvAfter,s2Step92EntryFBefore,arenaWires]
  · ext q
    simp only [s2Step92FrontSigmaArena,s2Step92EntryGvAfter,s2Step92EntryFBefore,s2Step92HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step92Front_entry : HmrFrontEntryValid s2Step92EntryFBefore s2Step92FrontBank 222 59 ⟨222,221,59,59⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step92FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step92EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step92EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (794≤q ∧ q<796) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step92FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step92Front_sigma : s2Step92EntryGvAfter.checkBorrow 1 [793]=some s2Step92FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step92EntryGvAfter,s2Step92EntryFBefore,arenaWires]
  · rfl

private def s2Step92HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<796) ∨ (797≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step92HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<796) ∨ (797≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step92HeadFBefore : Arena := s2Step92HeadGAfter

private def s2Step92HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733],768⟩

private def s2Step92HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816],770⟩

private def s2Step92HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221],769⟩

private def s2Step92HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836],771⟩

private theorem s2Step92HeadBank_incomingDistinct : ([s2Step92HeadGRow,s2Step92HeadFRow,s2Step92HeadGvRow,s2Step92HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step92HeadF_Incoming : rowsOwned s2Step92HeadFBefore [s2Step92HeadFRow,s2Step92HeadGvRow,s2Step92HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step92HeadGRow,s2Step92HeadFRow,s2Step92HeadGvRow,s2Step92HeadFvRow] 1 s2Step92HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step92HeadFBefore (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<796) ∨ (797≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step92HeadBank_outgoingOwned : rowsOwned s2Step92HeadFvAfter [s2Step92HeadGOut,s2Step92HeadFOut,s2Step92HeadGvOut,s2Step92HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step92HeadFvAfter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step92HeadF_Outgoing : rowsOwned s2Step92HeadFvAfter [s2Step92HeadFOut,s2Step92HeadGvOut,s2Step92HeadFvOut] :=
  hmrRows_owned_drop s2Step92HeadFvAfter [s2Step92HeadGOut,s2Step92HeadFOut,s2Step92HeadGvOut,s2Step92HeadFvOut] 1 s2Step92HeadBank_outgoingOwned

private theorem s2Step92HeadF_distinct : (s2Step92HeadFRow.sign::s2Step92HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step92HeadF_owned : (s2Step92HeadFRow.sign::s2Step92HeadFRow.payload).toFinset⊆s2Step92HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step92HeadFBefore (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<796) ∨ (797≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step92HeadF_reserved : s2Step92HeadFBefore.reserve s2Step92HeadFFresh.toFinset=some s2Step92HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step92HeadFFresh,arenaWires]
  · norm_num [s2Step92HeadFBefore,s2Step92HeadGAfter,s2Step92HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step92HeadFAfter,s2Step92HeadFBefore,s2Step92HeadGAfter,s2Step92HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step92HeadF_checked : planRowResizeLog s2Step92HeadFBefore s2Step92HeadFRow 223 s2Step92HeadFFresh=
    some (s2Step92HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 780],768⟩,growRow 768 s2Step92HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step92HeadFBefore s2Step92HeadFAfter s2Step92HeadFRow 223 s2Step92HeadFFresh
    s2Step92HeadF_distinct s2Step92HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step92HeadF_reserved
  have rowEq : WindowRow.mk (s2Step92HeadFRow.payload++s2Step92HeadFFresh) s2Step92HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 780],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step92HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<785) ∨ (786≤q ∧ q<796) ∨ (797≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step92HeadFvBefore : Arena := s2Step92HeadGvAfter

private theorem s2Step92HeadFv_Incoming : rowsOwned s2Step92HeadFvBefore [s2Step92HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step92HeadGRow,s2Step92HeadFRow,s2Step92HeadGvRow,s2Step92HeadFvRow] 3 s2Step92HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step92HeadFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<785) ∨ (786≤q ∧ q<796) ∨ (797≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step92HeadFv_Outgoing : rowsOwned s2Step92HeadFvAfter [s2Step92HeadFvOut] :=
  hmrRows_owned_drop s2Step92HeadFvAfter [s2Step92HeadGOut,s2Step92HeadFOut,s2Step92HeadGvOut,s2Step92HeadFvOut] 3 s2Step92HeadBank_outgoingOwned

private theorem s2Step92HeadFv_distinct : (s2Step92HeadFvRow.sign::s2Step92HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step92HeadFv_owned : (s2Step92HeadFvRow.sign::s2Step92HeadFvRow.payload).toFinset⊆s2Step92HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step92HeadFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<785) ∨ (786≤q ∧ q<796) ∨ (797≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step92HeadFv_reserved : s2Step92HeadFvBefore.reserve s2Step92HeadFvFresh.toFinset=some s2Step92HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step92HeadFvFresh,arenaWires]
  · norm_num [s2Step92HeadFvBefore,s2Step92HeadGvAfter,s2Step92HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step92HeadFvAfter,s2Step92HeadFvBefore,s2Step92HeadGvAfter,s2Step92HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step92HeadFv_checked : planRowResizeLog s2Step92HeadFvBefore s2Step92HeadFvRow 60 s2Step92HeadFvFresh=
    some (s2Step92HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 796],770⟩,growRow 770 s2Step92HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step92HeadFvBefore s2Step92HeadFvAfter s2Step92HeadFvRow 60 s2Step92HeadFvFresh
    s2Step92HeadFv_distinct s2Step92HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step92HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step92HeadFvRow.payload++s2Step92HeadFvFresh) s2Step92HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 796],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step92HeadG_Incoming : rowsOwned s2Step92HeadGBefore [s2Step92HeadGRow,s2Step92HeadFRow,s2Step92HeadGvRow,s2Step92HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step92HeadGRow,s2Step92HeadFRow,s2Step92HeadGvRow,s2Step92HeadFvRow] 0 s2Step92HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step92HeadGBefore (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<796) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step92HeadG_Outgoing : rowsOwned s2Step92HeadFvAfter [s2Step92HeadGOut,s2Step92HeadFOut,s2Step92HeadGvOut,s2Step92HeadFvOut] :=
  hmrRows_owned_drop s2Step92HeadFvAfter [s2Step92HeadGOut,s2Step92HeadFOut,s2Step92HeadGvOut,s2Step92HeadFvOut] 0 s2Step92HeadBank_outgoingOwned

private theorem s2Step92HeadG_distinct : (s2Step92HeadGRow.sign::s2Step92HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step92HeadG_owned : (s2Step92HeadGRow.sign::s2Step92HeadGRow.payload).toFinset⊆s2Step92HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step92HeadGBefore (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<796) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step92HeadG_reserved : s2Step92HeadGBefore.reserve s2Step92HeadGFresh.toFinset=some s2Step92HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step92HeadGFresh,arenaWires]
  · norm_num [s2Step92HeadGBefore,s2Step92HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step92HeadGAfter,s2Step92HeadGBefore,s2Step92HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step92HeadG_checked : planRowResizeLog s2Step92HeadGBefore s2Step92HeadGRow 223 s2Step92HeadGFresh=
    some (s2Step92HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 797],769⟩,growRow 769 s2Step92HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step92HeadGBefore s2Step92HeadGAfter s2Step92HeadGRow 223 s2Step92HeadGFresh
    s2Step92HeadG_distinct s2Step92HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step92HeadG_reserved
  have rowEq : WindowRow.mk (s2Step92HeadGRow.payload++s2Step92HeadGFresh) s2Step92HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 797],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step92HeadGvBefore : Arena := s2Step92HeadFAfter

private theorem s2Step92HeadGv_Incoming : rowsOwned s2Step92HeadGvBefore [s2Step92HeadGvRow,s2Step92HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step92HeadGRow,s2Step92HeadFRow,s2Step92HeadGvRow,s2Step92HeadFvRow] 2 s2Step92HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step92HeadGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<796) ∨ (797≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step92HeadGv_Outgoing : rowsOwned s2Step92HeadFvAfter [s2Step92HeadGvOut,s2Step92HeadFvOut] :=
  hmrRows_owned_drop s2Step92HeadFvAfter [s2Step92HeadGOut,s2Step92HeadFOut,s2Step92HeadGvOut,s2Step92HeadFvOut] 2 s2Step92HeadBank_outgoingOwned

private theorem s2Step92HeadGv_distinct : (s2Step92HeadGvRow.sign::s2Step92HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step92HeadGv_owned : (s2Step92HeadGvRow.sign::s2Step92HeadGvRow.payload).toFinset⊆s2Step92HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step92HeadGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<796) ∨ (797≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step92HeadGv_reserved : s2Step92HeadGvBefore.reserve s2Step92HeadGvFresh.toFinset=some s2Step92HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step92HeadGvFresh,arenaWires]
  · norm_num [s2Step92HeadGvBefore,s2Step92HeadFAfter,s2Step92HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step92HeadGvAfter,s2Step92HeadGvBefore,s2Step92HeadFAfter,s2Step92HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step92HeadGv_checked : planRowResizeLog s2Step92HeadGvBefore s2Step92HeadGvRow 60 s2Step92HeadGvFresh=
    some (s2Step92HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 781],771⟩,growRow 771 s2Step92HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step92HeadGvBefore s2Step92HeadGvAfter s2Step92HeadGvRow 60 s2Step92HeadGvFresh
    s2Step92HeadGv_distinct s2Step92HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step92HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step92HeadGvRow.payload++s2Step92HeadGvFresh) s2Step92HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 781],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step92HeadBank_rows : planWindowRowsLog s2Step92HeadGBefore [(s2Step92HeadGRow,223),(s2Step92HeadFRow,223),(s2Step92HeadGvRow,60),(s2Step92HeadFvRow,60)] [s2Step92HeadGFresh,s2Step92HeadFFresh,s2Step92HeadGvFresh,s2Step92HeadFvFresh]=
    some (s2Step92HeadFvAfter,[s2Step92HeadGOut,s2Step92HeadFOut,s2Step92HeadGvOut,s2Step92HeadFvOut],(growRow 769 s2Step92HeadGFresh ++ (growRow 768 s2Step92HeadFFresh ++ (growRow 771 s2Step92HeadGvFresh ++ (growRow 770 s2Step92HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step92HeadFvAfter [] []=some (s2Step92HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step92HeadFvBefore s2Step92HeadFvAfter s2Step92HeadFvAfter
    s2Step92HeadFvRow s2Step92HeadFvOut 60 s2Step92HeadFvFresh [] [] []
    (growRow 770 s2Step92HeadFvFresh) ([]) s2Step92HeadFv_Incoming s2Step92HeadFv_checked h4 s2Step92HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step92HeadGvBefore s2Step92HeadGvAfter s2Step92HeadFvAfter
    s2Step92HeadGvRow s2Step92HeadGvOut 60 s2Step92HeadGvFresh [(s2Step92HeadFvRow,60)] [s2Step92HeadFvFresh] [s2Step92HeadFvOut]
    (growRow 771 s2Step92HeadGvFresh) ((growRow 770 s2Step92HeadFvFresh ++ [])) s2Step92HeadGv_Incoming s2Step92HeadGv_checked h3 s2Step92HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step92HeadFBefore s2Step92HeadFAfter s2Step92HeadFvAfter
    s2Step92HeadFRow s2Step92HeadFOut 223 s2Step92HeadFFresh [(s2Step92HeadGvRow,60),(s2Step92HeadFvRow,60)] [s2Step92HeadGvFresh,s2Step92HeadFvFresh] [s2Step92HeadGvOut,s2Step92HeadFvOut]
    (growRow 768 s2Step92HeadFFresh) ((growRow 771 s2Step92HeadGvFresh ++ (growRow 770 s2Step92HeadFvFresh ++ []))) s2Step92HeadF_Incoming s2Step92HeadF_checked h2 s2Step92HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step92HeadGBefore s2Step92HeadGAfter s2Step92HeadFvAfter
    s2Step92HeadGRow s2Step92HeadGOut 223 s2Step92HeadGFresh [(s2Step92HeadFRow,223),(s2Step92HeadGvRow,60),(s2Step92HeadFvRow,60)] [s2Step92HeadFFresh,s2Step92HeadGvFresh,s2Step92HeadFvFresh] [s2Step92HeadFOut,s2Step92HeadGvOut,s2Step92HeadFvOut]
    (growRow 769 s2Step92HeadGFresh) ((growRow 768 s2Step92HeadFFresh ++ (growRow 771 s2Step92HeadGvFresh ++ (growRow 770 s2Step92HeadFvFresh ++ [])))) s2Step92HeadG_Incoming s2Step92HeadG_checked h1 s2Step92HeadG_Outgoing
  exact h0

private theorem s2Step92HeadBank_checked : compileHmrBankResizeLog .headroom s2Step92HeadGBefore ⟨s2Step92HeadFRow,s2Step92HeadGRow,s2Step92HeadFvRow,s2Step92HeadGvRow⟩ ⟨223,223,60,60⟩ [s2Step92HeadGFresh,s2Step92HeadFFresh,s2Step92HeadGvFresh,s2Step92HeadFvFresh]=
    some (s2Step92HeadFvAfter,⟨s2Step92HeadFOut,s2Step92HeadGOut,s2Step92HeadFvOut,s2Step92HeadGvOut⟩,(growRow 769 s2Step92HeadGFresh ++ (growRow 768 s2Step92HeadFFresh ++ (growRow 771 s2Step92HeadGvFresh ++ (growRow 770 s2Step92HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step92HeadBank_rows]
  rfl

private theorem s2Step92Front_checked : compileHmrSourceFrontLog s2Step92EntryFBefore s2Step92FrontBank 222 59 ⟨222,221,59,59⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step92FrontLog=some s2Step92FrontPlan := by
  have pairEq : s2Step92FrontPair=⟨s2Step92HeadFRow,s2Step92HeadGRow,s2Step92HeadFvRow,s2Step92HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step92FrontHead=⟨s2Step92ExitFRow,s2Step92ExitGRow,s2Step92ExitFvRow,s2Step92ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step92Add0A=s2Step92FrontHead.f.wires := by decide +kernel
  have gEq : s2Step92Add0B=s2Step92FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step92Add1A=s2Step92FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step92Add1B=s2Step92FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step92EntryFBefore s2Step92FrontBank 222 59 ⟨222,221,59,59⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step92FrontLog s2Step92FrontPlan
  · exact s2Step92Front_entry
  · exact s2Step92EntryBank_checked
  · exact s2Step92Front_sigma
  · rfl
  · exact s2Step92Front_branch
  · rfl
  · simpa only [s2Step92FrontPlan,pairEq] using s2Step92HeadBank_checked
  · simpa only [s2Step92FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step92F4_checked
  · exact s2Step92Counter_checked
  · rfl
  · simpa only [s2Step92FrontPlan,headEq] using s2Step92ExitBank_checked

private theorem s2Step92Complete_explicit_checked : compileHmrEarlyStepLog s2Step92EntryFBefore s2Step92FrontBank 222 59 ⟨222,221,59,59⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] 34 s2Step92CompleteLog=some s2Step92CompletePlan := by
  let Q := s2Step92EarlyControlPlan
  have hq := s2Step92EarlyControl_plan_checked
  have fv1 : s2Step92CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step92CompleteOut.fv.payload[2]?.getD s2Step92CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step92CompleteOut.fv.payload[3]?.getD s2Step92CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step92CompleteOut.fv.payload[4]?.getD s2Step92CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step92EntryFBefore s2Step92EarlyControlArena s2Step92FrontBank 222 59 ⟨222,221,59,59⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] 34 s2Step92CompleteLog s2Step92FrontPlan Q
    s2Step92Front_checked s2Step92Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step92Complete_owned s2Step92Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step92EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] 777 793 s2Step92CompleteOut.fv.second (s2Step92CompleteOut.fv.payload[2]?.getD s2Step92CompleteOut.fv.sign) (s2Step92CompleteOut.fv.payload[3]?.getD s2Step92CompleteOut.fv.sign) (s2Step92CompleteOut.fv.payload[4]?.getD s2Step92CompleteOut.fv.sign) 786 34 s2Step92EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep92Arena : Arena := s2Step92EntryFBefore
def s2PrivateStep92Bank : WindowBank := s2Step92FrontBank
def s2PrivateStep92Spec : HmrSourceWalkStepLog := ⟨222,59,⟨222,221,59,59⟩,34,.early s2Step92CompleteLog⟩
def s2PrivateStep92Plan : HmrSourceStepPlan := .early s2Step92CompletePlan
theorem s2PrivateStep92_source : s2PrivateStep92Spec=s2ObservedLogs80[12] := rfl
theorem s2PrivateStep92_checked : compileHmrSourceStepLog s2PrivateStep92Arena s2PrivateStep92Bank
    s2PrivateStep92Spec.fgWidth s2PrivateStep92Spec.vWidth s2PrivateStep92Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876]
    6 498 92 s2PrivateStep92Spec.need none s2PrivateStep92Spec.log=some s2PrivateStep92Plan := by
  change compileHmrSourceStepLog s2Step92EntryFBefore s2Step92FrontBank 222 59 ⟨222,221,59,59⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] 6 498 92 34 none (.early s2Step92CompleteLog)=some (.early s2Step92CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 92<498)]
  rw [s2Step92Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
