import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep91
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

private def s2Step93CompleteMoves : List (Wire × Wire) := []

private def s2Step93EarlyControlLog : HmrEarlyControlLog := ⟨[796, 786, 781, 779, 844],[785],[839],[846, 847, 849, 851, 867, 877],[]⟩

private def s2Step93FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [786], [], []],[[781], [796], [780], [797]],[[], [], [], []]⟩,[793],[799],[779],[844],[785, 839, 846, 847, 849, 851, 867, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[785, 839, 846, 847, 849, 851, 867, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929],[779, 844, 785, 839]⟩

private def s2Step93CompleteLog : HmrEarlyStepLog := ⟨s2Step93FrontLog,s2Step93CompleteMoves,s2Step93EarlyControlLog⟩

private def s2Step93ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733],768⟩

private def s2Step93ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797],770⟩

private def s2Step93ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220],769⟩

private def s2Step93ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780],771⟩

private def s2Step93FrontOut : WindowBank := ⟨s2Step93ExitFOut,s2Step93ExitGOut,s2Step93ExitFvOut,s2Step93ExitGvOut⟩

private def s2Step93CompleteOut : WindowBank := s2Step93FrontOut.repacked s2Step93CompleteMoves

private def s2Step93EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<796) ∨ (797≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step93EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step93EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step93EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step93EarlyControlPositiveArena,[785],s2Step93EarlyControlEqualityArena,[839],⟨⟨793,false⟩,[⟨⟨785,false⟩,839⟩]⟩⟩

private def s2Step93EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<878)),Finset.filter_subset _ _⟩

private def s2Step93EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<878)),Finset.filter_subset _ _⟩

private def s2Step93EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<796) ∨ (797≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step93EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (794≤q ∧ q<796) ∨ (797≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step93EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (794≤q ∧ q<796) ∨ (797≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step93EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step93EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,796⟩,⟨⟨774,false⟩,786⟩,⟨⟨775,false⟩,781⟩,⟨⟨776,false⟩,779⟩,⟨⟨777,false⟩,844⟩]⟩

private def s2Step93EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step93EarlyControlZeroArena,s2Step93EarlyControlZeroPlan,s2Step93EarlyControlClassPlan,s2Step93EarlyControlFlagArena,s2Step93EarlyControlFittedArena,s2Step93EarlyControlHistoryArena,s2Step93EarlyControlSigmaArena,s2Step93EarlyControlOutputArena,s2Step93EarlyControlLog⟩

private def s2Step93CounterWork : List Wire := [779, 844, 785, 839]

private theorem s2Step93Counter_bounded : s2Step93CounterWork.toFinset⊆arenaWires := by norm_num [s2Step93CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step93HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step93CounterDuring : Arena := ⟨s2Step93HeadFvAfter.live∪s2Step93CounterWork.toFinset,Finset.union_subset s2Step93HeadFvAfter.bounded s2Step93Counter_bounded⟩

private def s2Step93EntryFFresh : List Wire := []

private def s2Step93EntryFvFresh : List Wire := []

private def s2Step93EntryGFresh : List Wire := [786]

private def s2Step93EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<796) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step93EntryGvAfter : Arena := s2Step93EntryGAfter

private def s2Step93EntryGvFresh : List Wire := []

private def s2Step93ExitFExtra : List Wire := [796]

private def s2Step93ExitGExtra : List Wire := [786, 781]

private def s2Step93ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<796) ∨ (797≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step93ExitGvAfter : Arena := s2Step93ExitFAfter

private def s2Step93Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step93Add0Work : List Wire := [785, 839, 846, 847, 849, 851, 867, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step93Add0_bounded : s2Step93Add0Work.toFinset⊆arenaWires := by
  have h : s2Step93Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step93Add0During : Arena := ⟨s2Step93Add0Arena.live∪s2Step93Add0Work.toFinset,Finset.union_subset s2Step93Add0Arena.bounded s2Step93Add0_bounded⟩

private def s2Step93Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step93Add1Work : List Wire := [785, 839, 846, 847, 849, 851, 867, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929]

private theorem s2Step93Add1_bounded : s2Step93Add1Work.toFinset⊆arenaWires := by
  have h : s2Step93Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step93Add1During : Arena := ⟨s2Step93Add1Arena.live∪s2Step93Add1Work.toFinset,Finset.union_subset s2Step93Add1Arena.bounded s2Step93Add1_bounded⟩

private def s2Step93F4FlagArena : Arena := ⟨s2Step93HeadFvAfter.live∪{779},Finset.union_subset s2Step93HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step93F4Plan : HmrHybridF4Plan := ⟨s2Step93F4FlagArena,[779],s2Step93Add0Arena,[844],s2Step93Add0During,s2Step93Add0Work,s2Step93Add1During,s2Step93Add1Work⟩

private def s2Step93HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 796],768⟩

private def s2Step93HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797],770⟩

private def s2Step93HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 786, 781],769⟩

private def s2Step93HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780],771⟩

private def s2Step93FrontHead : WindowBank := ⟨s2Step93HeadFOut,s2Step93HeadGOut,s2Step93HeadFvOut,s2Step93HeadGvOut⟩

private def s2Step93EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733],768⟩

private def s2Step93EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816],770⟩

private def s2Step93EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 786],769⟩

private def s2Step93EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836],771⟩

private def s2Step93FrontPair : WindowBank := ⟨s2Step93EntryFOut,s2Step93EntryGOut,s2Step93EntryFvOut,s2Step93EntryGvOut⟩

private def s2Step93FrontSigmaArena : Arena := ⟨s2Step93EntryGvAfter.live∪{793},Finset.union_subset s2Step93EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step93HeadFFresh : List Wire := [796]

private def s2Step93HeadFvFresh : List Wire := [797]

private def s2Step93HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<796) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step93HeadGFresh : List Wire := [781]

private def s2Step93HeadGvFresh : List Wire := [780]

private def s2Step93FrontPlan : HmrSourceFront := ⟨s2Step93EntryGvAfter,s2Step93FrontPair,(growRow 768 s2Step93EntryFFresh ++ (growRow 769 s2Step93EntryGFresh ++ (growRow 770 s2Step93EntryFvFresh ++ (growRow 771 s2Step93EntryGvFresh ++ [])))),s2Step93FrontSigmaArena,[793],s2Step93HeadGBefore,[799],
  s2Step93HeadFvAfter,s2Step93FrontHead,(growRow 769 s2Step93HeadGFresh ++ (growRow 768 s2Step93HeadFFresh ++ (growRow 771 s2Step93HeadGvFresh ++ (growRow 770 s2Step93HeadFvFresh ++ [])))),s2Step93F4Plan,s2Step93CounterDuring,s2Step93CounterWork,s2Step93ExitGvAfter,s2Step93FrontOut,(shrinkRow 769 s2Step93ExitGExtra ++ (shrinkRow 768 s2Step93ExitFExtra ++ (growRow 770 [] ++ (growRow 771 [] ++ []))))⟩

private def s2Step93CompletePlan : HmrEarlyStepPlan := ⟨s2Step93FrontPlan,s2Step93EarlyControlArena,s2Step93EarlyControlPlan,s2Step93CompleteMoves⟩

private theorem s2Step93Complete_apart : List.Disjoint (s2Step93CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [793, 799, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] := by
  have nd : ((s2Step93CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[793, 799, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step93Complete_owned : (s2Step93CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step93EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step93EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<796) ∨ (797≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step93Complete_repack : s2Step93ExitGvAfter.checkRepack s2Step93CompleteMoves=some s2Step93EarlyControlArena := by rfl

private theorem s2Step93EarlyControl_branchOwned : ([799] : List Wire).toFinset⊆s2Step93EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step93EarlyControlSigmaArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (794≤q ∧ q<796) ∨ (797≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step93EarlyControl_branch : compileHmrBranchRetirement s2Step93EarlyControlSigmaArena 799=some s2Step93EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step93EarlyControl_branchOwned
  · ext q
    simp [s2Step93EarlyControlOutputArena,s2Step93EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step93EarlyControl_classEqualityBorrow : s2Step93EarlyControlPositiveArena.checkBorrow (([793, 785] : List Wire).length-1) s2Step93EarlyControlLog.classWork=some s2Step93EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step93EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step93EarlyControlPositiveArena (fun q => (0≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
      decide +kernel
    · ext q
      simp [s2Step93EarlyControlEqualityArena,s2Step93EarlyControlPositiveArena,s2Step93EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step93EarlyControl_classEqualityOwned : ([793, 785] : List Wire).toFinset⊆s2Step93EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step93EarlyControlPositiveArena (fun q => (0≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step93EarlyControl_classEquality : compileHmrEqualityLog s2Step93EarlyControlPositiveArena [793, 785] 0 s2Step93EarlyControlLog.classWork=some (s2Step93EarlyControlEqualityArena,s2Step93EarlyControlLog.classWork,s2Step93EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step93EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step93EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step93EarlyControl_classOwned : ([777, 844, 793] : List Wire).toFinset⊆s2Step93EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step93EarlyControlZeroArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step93EarlyControl_positiveBorrow : s2Step93EarlyControlZeroArena.checkBorrow (1) s2Step93EarlyControlLog.positiveWork=some s2Step93EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step93EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step93EarlyControlZeroArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
      decide +kernel
    · ext q
      simp [s2Step93EarlyControlPositiveArena,s2Step93EarlyControlZeroArena,s2Step93EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step93EarlyControl_class : compileHmrSourceClassLog s2Step93EarlyControlZeroArena false 777 s2Step93EarlyControlZeroPlan.top 0 793 s2Step93EarlyControlLog.positiveWork s2Step93EarlyControlLog.classWork=some s2Step93EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step93EarlyControlClassPlan s2Step93EarlyControlZeroArena false 777 s2Step93EarlyControlZeroPlan.top 0 793
  constructor
  · decide +kernel
  · exact s2Step93EarlyControl_classOwned
  · exact s2Step93EarlyControl_positiveBorrow
  · exact s2Step93EarlyControl_classEquality

private theorem s2Step93EarlyControl_entryRecordOwned : ([799, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] : List Wire).toFinset⊆s2Step93EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step93EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<796) ∨ (797≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step93EarlyControl_entrySigmaOwned : ([793, 254] : List Wire).toFinset⊆s2Step93EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step93EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<796) ∨ (797≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step93EarlyControl_fitBorrow : s2Step93EarlyControlFlagArena.checkBorrow ((34-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] : List Wire).length)) s2Step93EarlyControlLog.recordFresh=some s2Step93EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step93EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step93EarlyControlFlagArena (fun q => (0≤q ∧ q<878)) rfl
      decide +kernel
    · ext q
      simp [s2Step93EarlyControlFittedArena,s2Step93EarlyControlFlagArena,s2Step93EarlyControlLog,arenaWires]

private theorem s2Step93EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] : List Wire).toFinset⊆s2Step93EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step93EarlyControlFlagArena (fun q => (0≤q ∧ q<878)) rfl
  decide +kernel

private theorem s2Step93EarlyControl_fit : compileHmrRecordGrowLog s2Step93EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] 34 s2Step93EarlyControlLog.recordFresh=some s2Step93EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step93EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step93EarlyControl_fitBorrow

private theorem s2Step93EarlyControl_flagsBorrow : s2Step93EarlyControlEqualityArena.checkBorrow (6) s2Step93EarlyControlLog.flagWork=some s2Step93EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step93EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step93EarlyControlEqualityArena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
      decide +kernel
    · ext q
      simp [s2Step93EarlyControlFlagArena,s2Step93EarlyControlEqualityArena,s2Step93EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step93EarlyControl_flagsOwned : ([839, 253, 252, 251] : List Wire).toFinset⊆s2Step93EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step93EarlyControlEqualityArena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step93EarlyControl_flags : compileHmrFlagsLog s2Step93EarlyControlClassPlan.equalityArena s2Step93EarlyControlClassPlan.equality.top 253 252 251 s2Step93EarlyControlLog.flagWork=some s2Step93EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step93EarlyControl_flagsOwned⟩
  · exact s2Step93EarlyControl_flagsBorrow

private theorem s2Step93EarlyControl_historyBorrow : s2Step93EarlyControlArena.checkBorrow ((34-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] : List Wire).length)) s2Step93EarlyControlLog.recordFresh=some s2Step93EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step93EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step93EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<796) ∨ (797≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
      decide +kernel
    · ext q
      simp [s2Step93EarlyControlHistoryArena,s2Step93EarlyControlArena,s2Step93EarlyControlLog,arenaWires]

private theorem s2Step93EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] : List Wire).toFinset⊆s2Step93EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step93EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<796) ∨ (797≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step93EarlyControl_history : compileHmrRecordGrowLog s2Step93EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] 34 s2Step93EarlyControlLog.recordFresh=some s2Step93EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step93EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step93EarlyControl_historyBorrow

private theorem s2Step93EarlyControl_sigmaOwned : ([254, 793] : List Wire).toFinset⊆s2Step93EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step93EarlyControlHistoryArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<796) ∨ (797≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step93EarlyControl_sigmaReleaseOwned : ([793] : List Wire).toFinset⊆s2Step93EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step93EarlyControlHistoryArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<796) ∨ (797≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step93EarlyControl_sigmaRelease : s2Step93EarlyControlHistoryArena.release {793} (fun _ => false)=some s2Step93EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step93EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step93EarlyControlSigmaArena,s2Step93EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step93EarlyControl_sigma : compileHmrSigmaDropLog s2Step93EarlyControlHistoryArena false 0 0 254 793 []=some s2Step93EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step93EarlyControl_sigmaOwned⟩
  · exact s2Step93EarlyControl_sigmaRelease

private theorem s2Step93EarlyControl_zeroBorrow : s2Step93EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step93EarlyControlLog.zeroWork=some s2Step93EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step93EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step93EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<796) ∨ (797≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
      decide +kernel
    · ext q
      simp [s2Step93EarlyControlZeroArena,s2Step93EarlyControlArena,s2Step93EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step93EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step93EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step93EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<796) ∨ (797≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step93EarlyControl_zero : compileHmrEqualityLog s2Step93EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step93EarlyControlLog.zeroWork=some (s2Step93EarlyControlZeroArena,s2Step93EarlyControlLog.zeroWork,s2Step93EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step93EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step93EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step93EarlyControl_logged : s2Step93EarlyControlPlan.Logged s2Step93EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] 777 793 254 253 252 251 799 34 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step93EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step93EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step93EarlyControl_zero
  · exact s2Step93EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step93EarlyControl_flags
  · exact s2Step93EarlyControl_fit
  · exact s2Step93EarlyControl_history
  · exact s2Step93EarlyControl_sigma
  · exact s2Step93EarlyControl_branch

private theorem s2Step93EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step93EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] 777 793 254 253 252 251 799 34 s2Step93EarlyControlLog=some s2Step93EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step93EarlyControlPlan s2Step93EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] 777 793 254 253 252 251 799 34 s2Step93EarlyControl_logged

private def s2Step93EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (794≤q ∧ q<796) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step93EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733],768⟩

private def s2Step93EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816],770⟩

private def s2Step93EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220],769⟩

private def s2Step93EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836],771⟩

private def s2Step93FrontBank : WindowBank := ⟨s2Step93EntryFRow,s2Step93EntryGRow,s2Step93EntryFvRow,s2Step93EntryGvRow⟩

private def s2Step93Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 796, 768]

private def s2Step93Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 786, 781, 769]

private def s2Step93Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 770]

private def s2Step93Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 771]

private theorem s2Step93Counter_apart : Disjoint s2Step93HeadFvAfter.live s2Step93CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step93HeadFvAfter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step93Counter_borrowed : s2Step93HeadFvAfter.checkBorrow 4 s2Step93CounterWork=some s2Step93CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step93HeadFvAfter s2Step93CounterDuring s2Step93CounterWork.toFinset s2Step93Counter_bounded s2Step93Counter_apart rfl

private theorem s2Step93Counter_owned : (793::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step93HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step93HeadFvAfter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step93Counter_checked : compileHmrCounterStepLog s2Step93HeadFvAfter true 793 [772, 773, 774, 775, 776, 777] s2Step93CounterWork=some s2Step93CounterDuring := by
  have owned : ∀q∈793::[772, 773, 774, 775, 776, 777],q∈s2Step93HeadFvAfter.live := fun q hq => s2Step93Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step93Counter_borrowed

private def s2Step93EntryFAfter : Arena := s2Step93EntryFBefore

private theorem s2Step93EntryBank_incomingDistinct : ([s2Step93EntryFRow,s2Step93EntryGRow,s2Step93EntryFvRow,s2Step93EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step93EntryF_Incoming : rowsOwned s2Step93EntryFBefore [s2Step93EntryFRow,s2Step93EntryGRow,s2Step93EntryFvRow,s2Step93EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step93EntryFRow,s2Step93EntryGRow,s2Step93EntryFvRow,s2Step93EntryGvRow] 0 s2Step93EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step93EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (794≤q ∧ q<796) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step93EntryBank_outgoingOwned : rowsOwned s2Step93EntryGvAfter [s2Step93EntryFOut,s2Step93EntryGOut,s2Step93EntryFvOut,s2Step93EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step93EntryGvAfter (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<796) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step93EntryF_Outgoing : rowsOwned s2Step93EntryGvAfter [s2Step93EntryFOut,s2Step93EntryGOut,s2Step93EntryFvOut,s2Step93EntryGvOut] :=
  hmrRows_owned_drop s2Step93EntryGvAfter [s2Step93EntryFOut,s2Step93EntryGOut,s2Step93EntryFvOut,s2Step93EntryGvOut] 0 s2Step93EntryBank_outgoingOwned

private theorem s2Step93EntryF_distinct : (s2Step93EntryFRow.sign::s2Step93EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step93EntryF_owned : (s2Step93EntryFRow.sign::s2Step93EntryFRow.payload).toFinset⊆s2Step93EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step93EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (794≤q ∧ q<796) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step93EntryF_reserved : s2Step93EntryFBefore.reserve s2Step93EntryFFresh.toFinset=some s2Step93EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step93EntryFFresh,arenaWires]
  · norm_num [s2Step93EntryFBefore,s2Step93EntryFFresh,arenaWires]
  · simp only [s2Step93EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step93EntryF_checked : planRowResizeLog s2Step93EntryFBefore s2Step93EntryFRow 222 s2Step93EntryFFresh=
    some (s2Step93EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733],768⟩,growRow 768 s2Step93EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step93EntryFBefore s2Step93EntryFAfter s2Step93EntryFRow 222 s2Step93EntryFFresh
    s2Step93EntryF_distinct s2Step93EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step93EntryF_reserved
  have rowEq : WindowRow.mk (s2Step93EntryFRow.payload++s2Step93EntryFFresh) s2Step93EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step93EntryFvAfter : Arena := s2Step93EntryGAfter

private def s2Step93EntryFvBefore : Arena := s2Step93EntryGAfter

private theorem s2Step93EntryFv_Incoming : rowsOwned s2Step93EntryFvBefore [s2Step93EntryFvRow,s2Step93EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step93EntryFRow,s2Step93EntryGRow,s2Step93EntryFvRow,s2Step93EntryGvRow] 2 s2Step93EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step93EntryFvBefore (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<796) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step93EntryFv_Outgoing : rowsOwned s2Step93EntryGvAfter [s2Step93EntryFvOut,s2Step93EntryGvOut] :=
  hmrRows_owned_drop s2Step93EntryGvAfter [s2Step93EntryFOut,s2Step93EntryGOut,s2Step93EntryFvOut,s2Step93EntryGvOut] 2 s2Step93EntryBank_outgoingOwned

private theorem s2Step93EntryFv_distinct : (s2Step93EntryFvRow.sign::s2Step93EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step93EntryFv_owned : (s2Step93EntryFvRow.sign::s2Step93EntryFvRow.payload).toFinset⊆s2Step93EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step93EntryFvBefore (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<796) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step93EntryFv_reserved : s2Step93EntryFvBefore.reserve s2Step93EntryFvFresh.toFinset=some s2Step93EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step93EntryFvFresh,arenaWires]
  · norm_num [s2Step93EntryFvBefore,s2Step93EntryGAfter,s2Step93EntryFvFresh,arenaWires]
  · simp only [s2Step93EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step93EntryFv_checked : planRowResizeLog s2Step93EntryFvBefore s2Step93EntryFvRow 59 s2Step93EntryFvFresh=
    some (s2Step93EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816],770⟩,growRow 770 s2Step93EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step93EntryFvBefore s2Step93EntryFvAfter s2Step93EntryFvRow 59 s2Step93EntryFvFresh
    s2Step93EntryFv_distinct s2Step93EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step93EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step93EntryFvRow.payload++s2Step93EntryFvFresh) s2Step93EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step93EntryGBefore : Arena := s2Step93EntryFBefore

private theorem s2Step93EntryG_Incoming : rowsOwned s2Step93EntryGBefore [s2Step93EntryGRow,s2Step93EntryFvRow,s2Step93EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step93EntryFRow,s2Step93EntryGRow,s2Step93EntryFvRow,s2Step93EntryGvRow] 1 s2Step93EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step93EntryGBefore (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (794≤q ∧ q<796) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step93EntryG_Outgoing : rowsOwned s2Step93EntryGvAfter [s2Step93EntryGOut,s2Step93EntryFvOut,s2Step93EntryGvOut] :=
  hmrRows_owned_drop s2Step93EntryGvAfter [s2Step93EntryFOut,s2Step93EntryGOut,s2Step93EntryFvOut,s2Step93EntryGvOut] 1 s2Step93EntryBank_outgoingOwned

private theorem s2Step93EntryG_distinct : (s2Step93EntryGRow.sign::s2Step93EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step93EntryG_owned : (s2Step93EntryGRow.sign::s2Step93EntryGRow.payload).toFinset⊆s2Step93EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step93EntryGBefore (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (794≤q ∧ q<796) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step93EntryG_reserved : s2Step93EntryGBefore.reserve s2Step93EntryGFresh.toFinset=some s2Step93EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step93EntryGFresh,arenaWires]
  · norm_num [s2Step93EntryGBefore,s2Step93EntryFBefore,s2Step93EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step93EntryGAfter,s2Step93EntryGBefore,s2Step93EntryFBefore,s2Step93EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step93EntryG_checked : planRowResizeLog s2Step93EntryGBefore s2Step93EntryGRow 222 s2Step93EntryGFresh=
    some (s2Step93EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 786],769⟩,growRow 769 s2Step93EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step93EntryGBefore s2Step93EntryGAfter s2Step93EntryGRow 222 s2Step93EntryGFresh
    s2Step93EntryG_distinct s2Step93EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step93EntryG_reserved
  have rowEq : WindowRow.mk (s2Step93EntryGRow.payload++s2Step93EntryGFresh) s2Step93EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 786],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step93EntryGvBefore : Arena := s2Step93EntryGAfter

private theorem s2Step93EntryGv_Incoming : rowsOwned s2Step93EntryGvBefore [s2Step93EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step93EntryFRow,s2Step93EntryGRow,s2Step93EntryFvRow,s2Step93EntryGvRow] 3 s2Step93EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step93EntryGvBefore (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<796) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step93EntryGv_Outgoing : rowsOwned s2Step93EntryGvAfter [s2Step93EntryGvOut] :=
  hmrRows_owned_drop s2Step93EntryGvAfter [s2Step93EntryFOut,s2Step93EntryGOut,s2Step93EntryFvOut,s2Step93EntryGvOut] 3 s2Step93EntryBank_outgoingOwned

private theorem s2Step93EntryGv_distinct : (s2Step93EntryGvRow.sign::s2Step93EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step93EntryGv_owned : (s2Step93EntryGvRow.sign::s2Step93EntryGvRow.payload).toFinset⊆s2Step93EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step93EntryGvBefore (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<796) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step93EntryGv_reserved : s2Step93EntryGvBefore.reserve s2Step93EntryGvFresh.toFinset=some s2Step93EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step93EntryGvFresh,arenaWires]
  · norm_num [s2Step93EntryGvBefore,s2Step93EntryGAfter,s2Step93EntryGvFresh,arenaWires]
  · simp only [s2Step93EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step93EntryGv_checked : planRowResizeLog s2Step93EntryGvBefore s2Step93EntryGvRow 59 s2Step93EntryGvFresh=
    some (s2Step93EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836],771⟩,growRow 771 s2Step93EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step93EntryGvBefore s2Step93EntryGvAfter s2Step93EntryGvRow 59 s2Step93EntryGvFresh
    s2Step93EntryGv_distinct s2Step93EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step93EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step93EntryGvRow.payload++s2Step93EntryGvFresh) s2Step93EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step93EntryBank_rows : planWindowRowsLog s2Step93EntryFBefore [(s2Step93EntryFRow,222),(s2Step93EntryGRow,222),(s2Step93EntryFvRow,59),(s2Step93EntryGvRow,59)] [s2Step93EntryFFresh,s2Step93EntryGFresh,s2Step93EntryFvFresh,s2Step93EntryGvFresh]=
    some (s2Step93EntryGvAfter,[s2Step93EntryFOut,s2Step93EntryGOut,s2Step93EntryFvOut,s2Step93EntryGvOut],(growRow 768 s2Step93EntryFFresh ++ (growRow 769 s2Step93EntryGFresh ++ (growRow 770 s2Step93EntryFvFresh ++ (growRow 771 s2Step93EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step93EntryGvAfter [] []=some (s2Step93EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step93EntryGvBefore s2Step93EntryGvAfter s2Step93EntryGvAfter
    s2Step93EntryGvRow s2Step93EntryGvOut 59 s2Step93EntryGvFresh [] [] []
    (growRow 771 s2Step93EntryGvFresh) ([]) s2Step93EntryGv_Incoming s2Step93EntryGv_checked h4 s2Step93EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step93EntryFvBefore s2Step93EntryFvAfter s2Step93EntryGvAfter
    s2Step93EntryFvRow s2Step93EntryFvOut 59 s2Step93EntryFvFresh [(s2Step93EntryGvRow,59)] [s2Step93EntryGvFresh] [s2Step93EntryGvOut]
    (growRow 770 s2Step93EntryFvFresh) ((growRow 771 s2Step93EntryGvFresh ++ [])) s2Step93EntryFv_Incoming s2Step93EntryFv_checked h3 s2Step93EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step93EntryGBefore s2Step93EntryGAfter s2Step93EntryGvAfter
    s2Step93EntryGRow s2Step93EntryGOut 222 s2Step93EntryGFresh [(s2Step93EntryFvRow,59),(s2Step93EntryGvRow,59)] [s2Step93EntryFvFresh,s2Step93EntryGvFresh] [s2Step93EntryFvOut,s2Step93EntryGvOut]
    (growRow 769 s2Step93EntryGFresh) ((growRow 770 s2Step93EntryFvFresh ++ (growRow 771 s2Step93EntryGvFresh ++ []))) s2Step93EntryG_Incoming s2Step93EntryG_checked h2 s2Step93EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step93EntryFBefore s2Step93EntryFAfter s2Step93EntryGvAfter
    s2Step93EntryFRow s2Step93EntryFOut 222 s2Step93EntryFFresh [(s2Step93EntryGRow,222),(s2Step93EntryFvRow,59),(s2Step93EntryGvRow,59)] [s2Step93EntryGFresh,s2Step93EntryFvFresh,s2Step93EntryGvFresh] [s2Step93EntryGOut,s2Step93EntryFvOut,s2Step93EntryGvOut]
    (growRow 768 s2Step93EntryFFresh) ((growRow 769 s2Step93EntryGFresh ++ (growRow 770 s2Step93EntryFvFresh ++ (growRow 771 s2Step93EntryGvFresh ++ [])))) s2Step93EntryF_Incoming s2Step93EntryF_checked h1 s2Step93EntryF_Outgoing
  exact h0

private theorem s2Step93EntryBank_checked : compileHmrBankResizeLog .entry s2Step93EntryFBefore ⟨s2Step93EntryFRow,s2Step93EntryGRow,s2Step93EntryFvRow,s2Step93EntryGvRow⟩ ⟨222,222,59,59⟩ [s2Step93EntryFFresh,s2Step93EntryGFresh,s2Step93EntryFvFresh,s2Step93EntryGvFresh]=
    some (s2Step93EntryGvAfter,⟨s2Step93EntryFOut,s2Step93EntryGOut,s2Step93EntryFvOut,s2Step93EntryGvOut⟩,(growRow 768 s2Step93EntryFFresh ++ (growRow 769 s2Step93EntryGFresh ++ (growRow 770 s2Step93EntryFvFresh ++ (growRow 771 s2Step93EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step93EntryBank_rows]
  rfl

private def s2Step93ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step93ExitFBefore : Arena := s2Step93ExitGAfter

private def s2Step93ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 796],768⟩

private def s2Step93ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797],770⟩

private def s2Step93ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 786, 781],769⟩

private def s2Step93ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780],771⟩

private theorem s2Step93ExitBank_incomingDistinct : ([s2Step93ExitGRow,s2Step93ExitFRow,s2Step93ExitFvRow,s2Step93ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step93ExitF_Incoming : rowsOwned s2Step93ExitFBefore [s2Step93ExitFRow,s2Step93ExitFvRow,s2Step93ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step93ExitGRow,s2Step93ExitFRow,s2Step93ExitFvRow,s2Step93ExitGvRow] 1 s2Step93ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step93ExitFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step93ExitBank_outgoingOwned : rowsOwned s2Step93ExitGvAfter [s2Step93ExitGOut,s2Step93ExitFOut,s2Step93ExitFvOut,s2Step93ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step93ExitGvAfter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<796) ∨ (797≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step93ExitF_Outgoing : rowsOwned s2Step93ExitGvAfter [s2Step93ExitFOut,s2Step93ExitFvOut,s2Step93ExitGvOut] :=
  hmrRows_owned_drop s2Step93ExitGvAfter [s2Step93ExitGOut,s2Step93ExitFOut,s2Step93ExitFvOut,s2Step93ExitGvOut] 1 s2Step93ExitBank_outgoingOwned

private theorem s2Step93ExitF_distinct : (s2Step93ExitFRow.sign::s2Step93ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step93ExitF_owned : (s2Step93ExitFRow.sign::s2Step93ExitFRow.payload).toFinset⊆s2Step93ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step93ExitFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step93ExitF_retired : s2Step93ExitFBefore.retireSet s2Step93ExitFExtra.toFinset=s2Step93ExitFAfter := by
  unfold Arena.retireSet s2Step93ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step93ExitFBefore,s2Step93ExitGAfter,s2Step93ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step93ExitF_checked : planRowResizeLog s2Step93ExitFBefore s2Step93ExitFRow 222 []=
    some (s2Step93ExitFAfter,s2Step93ExitFOut,shrinkRow 768 s2Step93ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step93ExitFBefore s2Step93ExitFRow 222 s2Step93ExitF_distinct s2Step93ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step93ExitFRow.payload.take 222) s2Step93ExitFRow.sign=s2Step93ExitFOut := by decide +kernel
  have hi : s2Step93ExitFRow.payload.drop 222=s2Step93ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step93ExitF_retired] at result
  exact result

private def s2Step93ExitFvAfter : Arena := s2Step93ExitFAfter

private def s2Step93ExitFvBefore : Arena := s2Step93ExitFAfter

private theorem s2Step93ExitFv_Incoming : rowsOwned s2Step93ExitFvBefore [s2Step93ExitFvRow,s2Step93ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step93ExitGRow,s2Step93ExitFRow,s2Step93ExitFvRow,s2Step93ExitGvRow] 2 s2Step93ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step93ExitFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<796) ∨ (797≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step93ExitFv_Outgoing : rowsOwned s2Step93ExitGvAfter [s2Step93ExitFvOut,s2Step93ExitGvOut] :=
  hmrRows_owned_drop s2Step93ExitGvAfter [s2Step93ExitGOut,s2Step93ExitFOut,s2Step93ExitFvOut,s2Step93ExitGvOut] 2 s2Step93ExitBank_outgoingOwned

private theorem s2Step93ExitFv_distinct : (s2Step93ExitFvRow.sign::s2Step93ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step93ExitFv_owned : (s2Step93ExitFvRow.sign::s2Step93ExitFvRow.payload).toFinset⊆s2Step93ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step93ExitFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<796) ∨ (797≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step93ExitFv_reserved : s2Step93ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step93ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step93ExitFv_checked : planRowResizeLog s2Step93ExitFvBefore s2Step93ExitFvRow 60 []=
    some (s2Step93ExitFvAfter,s2Step93ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step93ExitFvBefore s2Step93ExitFvAfter s2Step93ExitFvRow 60 []
    s2Step93ExitFv_distinct s2Step93ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step93ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step93ExitFvRow.payload++[]) s2Step93ExitFvRow.sign=s2Step93ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step93ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private theorem s2Step93ExitG_Incoming : rowsOwned s2Step93ExitGBefore [s2Step93ExitGRow,s2Step93ExitFRow,s2Step93ExitFvRow,s2Step93ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step93ExitGRow,s2Step93ExitFRow,s2Step93ExitFvRow,s2Step93ExitGvRow] 0 s2Step93ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step93ExitGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step93ExitG_Outgoing : rowsOwned s2Step93ExitGvAfter [s2Step93ExitGOut,s2Step93ExitFOut,s2Step93ExitFvOut,s2Step93ExitGvOut] :=
  hmrRows_owned_drop s2Step93ExitGvAfter [s2Step93ExitGOut,s2Step93ExitFOut,s2Step93ExitFvOut,s2Step93ExitGvOut] 0 s2Step93ExitBank_outgoingOwned

private theorem s2Step93ExitG_distinct : (s2Step93ExitGRow.sign::s2Step93ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step93ExitG_owned : (s2Step93ExitGRow.sign::s2Step93ExitGRow.payload).toFinset⊆s2Step93ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step93ExitGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step93ExitG_retired : s2Step93ExitGBefore.retireSet s2Step93ExitGExtra.toFinset=s2Step93ExitGAfter := by
  unfold Arena.retireSet s2Step93ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step93ExitGBefore,s2Step93ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step93ExitG_checked : planRowResizeLog s2Step93ExitGBefore s2Step93ExitGRow 221 []=
    some (s2Step93ExitGAfter,s2Step93ExitGOut,shrinkRow 769 s2Step93ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step93ExitGBefore s2Step93ExitGRow 221 s2Step93ExitG_distinct s2Step93ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step93ExitGRow.payload.take 221) s2Step93ExitGRow.sign=s2Step93ExitGOut := by decide +kernel
  have hi : s2Step93ExitGRow.payload.drop 221=s2Step93ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step93ExitG_retired] at result
  exact result

private def s2Step93ExitGvBefore : Arena := s2Step93ExitFAfter

private theorem s2Step93ExitGv_Incoming : rowsOwned s2Step93ExitGvBefore [s2Step93ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step93ExitGRow,s2Step93ExitFRow,s2Step93ExitFvRow,s2Step93ExitGvRow] 3 s2Step93ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step93ExitGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<796) ∨ (797≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step93ExitGv_Outgoing : rowsOwned s2Step93ExitGvAfter [s2Step93ExitGvOut] :=
  hmrRows_owned_drop s2Step93ExitGvAfter [s2Step93ExitGOut,s2Step93ExitFOut,s2Step93ExitFvOut,s2Step93ExitGvOut] 3 s2Step93ExitBank_outgoingOwned

private theorem s2Step93ExitGv_distinct : (s2Step93ExitGvRow.sign::s2Step93ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step93ExitGv_owned : (s2Step93ExitGvRow.sign::s2Step93ExitGvRow.payload).toFinset⊆s2Step93ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step93ExitGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<796) ∨ (797≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step93ExitGv_reserved : s2Step93ExitGvBefore.reserve (∅ : Finset Wire)=some s2Step93ExitGvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step93ExitGv_checked : planRowResizeLog s2Step93ExitGvBefore s2Step93ExitGvRow 60 []=
    some (s2Step93ExitGvAfter,s2Step93ExitGvOut,growRow 771 []) := by
  have result := planRowResizeLog_of_growth s2Step93ExitGvBefore s2Step93ExitGvAfter s2Step93ExitGvRow 60 []
    s2Step93ExitGv_distinct s2Step93ExitGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step93ExitGv_reserved
  have rowEq : WindowRow.mk (s2Step93ExitGvRow.payload++[]) s2Step93ExitGvRow.sign=s2Step93ExitGvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step93ExitBank_rows : planWindowRowsLog s2Step93ExitGBefore [(s2Step93ExitGRow,221),(s2Step93ExitFRow,222),(s2Step93ExitFvRow,60),(s2Step93ExitGvRow,60)] [[],[],[],[]]=
    some (s2Step93ExitGvAfter,[s2Step93ExitGOut,s2Step93ExitFOut,s2Step93ExitFvOut,s2Step93ExitGvOut],(shrinkRow 769 s2Step93ExitGExtra ++ (shrinkRow 768 s2Step93ExitFExtra ++ (growRow 770 [] ++ (growRow 771 [] ++ []))))) := by
  have h4 : planWindowRowsLog s2Step93ExitGvAfter [] []=some (s2Step93ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step93ExitGvBefore s2Step93ExitGvAfter s2Step93ExitGvAfter
    s2Step93ExitGvRow s2Step93ExitGvOut 60 [] [] [] []
    (growRow 771 []) ([]) s2Step93ExitGv_Incoming s2Step93ExitGv_checked h4 s2Step93ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step93ExitFvBefore s2Step93ExitFvAfter s2Step93ExitGvAfter
    s2Step93ExitFvRow s2Step93ExitFvOut 60 [] [(s2Step93ExitGvRow,60)] [[]] [s2Step93ExitGvOut]
    (growRow 770 []) ((growRow 771 [] ++ [])) s2Step93ExitFv_Incoming s2Step93ExitFv_checked h3 s2Step93ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step93ExitFBefore s2Step93ExitFAfter s2Step93ExitGvAfter
    s2Step93ExitFRow s2Step93ExitFOut 222 [] [(s2Step93ExitFvRow,60),(s2Step93ExitGvRow,60)] [[],[]] [s2Step93ExitFvOut,s2Step93ExitGvOut]
    (shrinkRow 768 s2Step93ExitFExtra) ((growRow 770 [] ++ (growRow 771 [] ++ []))) s2Step93ExitF_Incoming s2Step93ExitF_checked h2 s2Step93ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step93ExitGBefore s2Step93ExitGAfter s2Step93ExitGvAfter
    s2Step93ExitGRow s2Step93ExitGOut 221 [] [(s2Step93ExitFRow,222),(s2Step93ExitFvRow,60),(s2Step93ExitGvRow,60)] [[],[],[]] [s2Step93ExitFOut,s2Step93ExitFvOut,s2Step93ExitGvOut]
    (shrinkRow 769 s2Step93ExitGExtra) ((shrinkRow 768 s2Step93ExitFExtra ++ (growRow 770 [] ++ (growRow 771 [] ++ [])))) s2Step93ExitG_Incoming s2Step93ExitG_checked h1 s2Step93ExitG_Outgoing
  exact h0

private theorem s2Step93ExitBank_checked : compileHmrBankResizeLog .exit s2Step93ExitGBefore ⟨s2Step93ExitFRow,s2Step93ExitGRow,s2Step93ExitFvRow,s2Step93ExitGvRow⟩ ⟨222,221,60,60⟩ [[],[],[],[]]=
    some (s2Step93ExitGvAfter,⟨s2Step93ExitFOut,s2Step93ExitGOut,s2Step93ExitFvOut,s2Step93ExitGvOut⟩,(shrinkRow 769 s2Step93ExitGExtra ++ (shrinkRow 768 s2Step93ExitFExtra ++ (growRow 770 [] ++ (growRow 771 [] ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step93ExitBank_rows]
  rfl

private theorem s2Step93Add0_apart : Disjoint s2Step93Add0Arena.live s2Step93Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step93Add0Arena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step93Add0_card : s2Step93Add0Arena.live.card=870 := by
  decide +kernel

private theorem s2Step93Add0_borrowed : s2Step93Add0Arena.checkBorrow (hmrHybridCount s2Step93Add0Arena s2Step93Add0B.length) s2Step93Add0Work=some s2Step93Add0During := by
  have len : s2Step93Add0Work.length=hmrHybridCount s2Step93Add0Arena s2Step93Add0B.length := by
    rw [hmrHybridCount,s2Step93Add0_card]
    decide +kernel
  have nd : s2Step93Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step93Add0Arena s2Step93Add0During s2Step93Add0Work.toFinset s2Step93Add0_bounded s2Step93Add0_apart rfl

private theorem s2Step93Add0_distinct : (779::799::844::(s2Step93Add0A++s2Step93Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step93Add0_owned : (779::799::844::(s2Step93Add0A++s2Step93Add0B)).toFinset⊆s2Step93Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step93Add0Arena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step93Add0_checked : compileHmrHybridCinLog s2Step93Add0Arena 799 779 844 s2Step93Add0A s2Step93Add0B s2Step93Add0Work=some s2Step93Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step93Add0Arena s2Step93Add0During 799 779 844 s2Step93Add0A s2Step93Add0B s2Step93Add0Work
    (by decide +kernel) (by decide +kernel) s2Step93Add0_distinct
    (fun q hq => s2Step93Add0_owned (List.mem_toFinset.mpr hq)) s2Step93Add0_borrowed

private theorem s2Step93Add1_apart : Disjoint s2Step93Add1Arena.live s2Step93Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step93Add1Arena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step93Add1_card : s2Step93Add1Arena.live.card=870 := by
  decide +kernel

private theorem s2Step93Add1_borrowed : s2Step93Add1Arena.checkBorrow (hmrHybridCount s2Step93Add1Arena s2Step93Add1B.length) s2Step93Add1Work=some s2Step93Add1During := by
  have len : s2Step93Add1Work.length=hmrHybridCount s2Step93Add1Arena s2Step93Add1B.length := by
    rw [hmrHybridCount,s2Step93Add1_card]
    decide +kernel
  have nd : s2Step93Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step93Add1Arena s2Step93Add1During s2Step93Add1Work.toFinset s2Step93Add1_bounded s2Step93Add1_apart rfl

private theorem s2Step93Add1_distinct : (779::799::844::(s2Step93Add1A++s2Step93Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step93Add1_owned : (779::799::844::(s2Step93Add1A++s2Step93Add1B)).toFinset⊆s2Step93Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step93Add1Arena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step93Add1_checked : compileHmrHybridCinLog s2Step93Add1Arena 799 779 844 s2Step93Add1A s2Step93Add1B s2Step93Add1Work=some s2Step93Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step93Add1Arena s2Step93Add1During 799 779 844 s2Step93Add1A s2Step93Add1B s2Step93Add1Work
    (by decide +kernel) (by decide +kernel) s2Step93Add1_distinct
    (fun q hq => s2Step93Add1_owned (List.mem_toFinset.mpr hq)) s2Step93Add1_borrowed

private theorem s2Step93F4_apart : Disjoint (s2Step93Add0A++s2Step93Add0B).toFinset (s2Step93Add1A++s2Step93Add1B).toFinset := by
  have nd : ((s2Step93Add0A++s2Step93Add0B)++(s2Step93Add1A++s2Step93Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step93F4_carry : s2Step93F4FlagArena.checkBorrow 1 [844]=some s2Step93Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step93F4FlagArena,s2Step93HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step93F4FlagArena,s2Step93HeadFvAfter,s2Step93Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step93F4_distinct : (793::799::779::844::((s2Step93Add0A++s2Step93Add1A)++(s2Step93Add0B++s2Step93Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step93F4_flag : s2Step93HeadFvAfter.checkBorrow 1 [779]=some s2Step93F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step93HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step93F4_owned : (793::799::((s2Step93Add0A++s2Step93Add1A)++(s2Step93Add0B++s2Step93Add1B))).toFinset⊆s2Step93HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step93HeadFvAfter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step93F4_checked : compileHmrHybridF4Log s2Step93HeadFvAfter 793 799 s2Step93Add0A s2Step93Add0B s2Step93Add1A s2Step93Add1B [779] [844] s2Step93Add0Work s2Step93Add1Work=some s2Step93F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step93HeadFvAfter s2Step93F4FlagArena s2Step93Add0Arena s2Step93Add0During s2Step93Add1During 793 799
    s2Step93Add0A s2Step93Add0B s2Step93Add1A s2Step93Add1B [779] [844] s2Step93Add0Work s2Step93Add1Work
    (fun q hq => s2Step93F4_owned (List.mem_toFinset.mpr hq)) s2Step93F4_flag s2Step93F4_carry
    s2Step93F4_distinct s2Step93F4_apart s2Step93Add0_checked s2Step93Add1_checked

private theorem s2Step93Front_branch : s2Step93FrontSigmaArena.checkBorrow 1 [799]=some s2Step93HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step93FrontSigmaArena,s2Step93EntryGvAfter,s2Step93EntryGAfter,arenaWires]
  · ext q
    simp only [s2Step93FrontSigmaArena,s2Step93EntryGvAfter,s2Step93EntryGAfter,s2Step93HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step93Front_entry : HmrFrontEntryValid s2Step93EntryFBefore s2Step93FrontBank 222 59 ⟨222,221,60,60⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step93FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step93EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step93EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (794≤q ∧ q<796) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step93FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step93Front_sigma : s2Step93EntryGvAfter.checkBorrow 1 [793]=some s2Step93FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step93EntryGvAfter,s2Step93EntryGAfter,arenaWires]
  · rfl

private def s2Step93HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<797) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step93HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<796) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step93HeadFBefore : Arena := s2Step93HeadGAfter

private def s2Step93HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733],768⟩

private def s2Step93HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816],770⟩

private def s2Step93HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 786],769⟩

private def s2Step93HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836],771⟩

private theorem s2Step93HeadBank_incomingDistinct : ([s2Step93HeadGRow,s2Step93HeadFRow,s2Step93HeadGvRow,s2Step93HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step93HeadF_Incoming : rowsOwned s2Step93HeadFBefore [s2Step93HeadFRow,s2Step93HeadGvRow,s2Step93HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step93HeadGRow,s2Step93HeadFRow,s2Step93HeadGvRow,s2Step93HeadFvRow] 1 s2Step93HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step93HeadFBefore (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<796) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step93HeadBank_outgoingOwned : rowsOwned s2Step93HeadFvAfter [s2Step93HeadGOut,s2Step93HeadFOut,s2Step93HeadGvOut,s2Step93HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step93HeadFvAfter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step93HeadF_Outgoing : rowsOwned s2Step93HeadFvAfter [s2Step93HeadFOut,s2Step93HeadGvOut,s2Step93HeadFvOut] :=
  hmrRows_owned_drop s2Step93HeadFvAfter [s2Step93HeadGOut,s2Step93HeadFOut,s2Step93HeadGvOut,s2Step93HeadFvOut] 1 s2Step93HeadBank_outgoingOwned

private theorem s2Step93HeadF_distinct : (s2Step93HeadFRow.sign::s2Step93HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step93HeadF_owned : (s2Step93HeadFRow.sign::s2Step93HeadFRow.payload).toFinset⊆s2Step93HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step93HeadFBefore (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<796) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step93HeadF_reserved : s2Step93HeadFBefore.reserve s2Step93HeadFFresh.toFinset=some s2Step93HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step93HeadFFresh,arenaWires]
  · norm_num [s2Step93HeadFBefore,s2Step93HeadGAfter,s2Step93HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step93HeadFAfter,s2Step93HeadFBefore,s2Step93HeadGAfter,s2Step93HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step93HeadF_checked : planRowResizeLog s2Step93HeadFBefore s2Step93HeadFRow 223 s2Step93HeadFFresh=
    some (s2Step93HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 796],768⟩,growRow 768 s2Step93HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step93HeadFBefore s2Step93HeadFAfter s2Step93HeadFRow 223 s2Step93HeadFFresh
    s2Step93HeadF_distinct s2Step93HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step93HeadF_reserved
  have rowEq : WindowRow.mk (s2Step93HeadFRow.payload++s2Step93HeadFFresh) s2Step93HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 796],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step93HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<785) ∨ (786≤q ∧ q<797) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step93HeadFvBefore : Arena := s2Step93HeadGvAfter

private theorem s2Step93HeadFv_Incoming : rowsOwned s2Step93HeadFvBefore [s2Step93HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step93HeadGRow,s2Step93HeadFRow,s2Step93HeadGvRow,s2Step93HeadFvRow] 3 s2Step93HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step93HeadFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<785) ∨ (786≤q ∧ q<797) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step93HeadFv_Outgoing : rowsOwned s2Step93HeadFvAfter [s2Step93HeadFvOut] :=
  hmrRows_owned_drop s2Step93HeadFvAfter [s2Step93HeadGOut,s2Step93HeadFOut,s2Step93HeadGvOut,s2Step93HeadFvOut] 3 s2Step93HeadBank_outgoingOwned

private theorem s2Step93HeadFv_distinct : (s2Step93HeadFvRow.sign::s2Step93HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step93HeadFv_owned : (s2Step93HeadFvRow.sign::s2Step93HeadFvRow.payload).toFinset⊆s2Step93HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step93HeadFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<785) ∨ (786≤q ∧ q<797) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step93HeadFv_reserved : s2Step93HeadFvBefore.reserve s2Step93HeadFvFresh.toFinset=some s2Step93HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step93HeadFvFresh,arenaWires]
  · norm_num [s2Step93HeadFvBefore,s2Step93HeadGvAfter,s2Step93HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step93HeadFvAfter,s2Step93HeadFvBefore,s2Step93HeadGvAfter,s2Step93HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step93HeadFv_checked : planRowResizeLog s2Step93HeadFvBefore s2Step93HeadFvRow 60 s2Step93HeadFvFresh=
    some (s2Step93HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797],770⟩,growRow 770 s2Step93HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step93HeadFvBefore s2Step93HeadFvAfter s2Step93HeadFvRow 60 s2Step93HeadFvFresh
    s2Step93HeadFv_distinct s2Step93HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step93HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step93HeadFvRow.payload++s2Step93HeadFvFresh) s2Step93HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step93HeadG_Incoming : rowsOwned s2Step93HeadGBefore [s2Step93HeadGRow,s2Step93HeadFRow,s2Step93HeadGvRow,s2Step93HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step93HeadGRow,s2Step93HeadFRow,s2Step93HeadGvRow,s2Step93HeadFvRow] 0 s2Step93HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step93HeadGBefore (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<796) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step93HeadG_Outgoing : rowsOwned s2Step93HeadFvAfter [s2Step93HeadGOut,s2Step93HeadFOut,s2Step93HeadGvOut,s2Step93HeadFvOut] :=
  hmrRows_owned_drop s2Step93HeadFvAfter [s2Step93HeadGOut,s2Step93HeadFOut,s2Step93HeadGvOut,s2Step93HeadFvOut] 0 s2Step93HeadBank_outgoingOwned

private theorem s2Step93HeadG_distinct : (s2Step93HeadGRow.sign::s2Step93HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step93HeadG_owned : (s2Step93HeadGRow.sign::s2Step93HeadGRow.payload).toFinset⊆s2Step93HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step93HeadGBefore (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<796) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step93HeadG_reserved : s2Step93HeadGBefore.reserve s2Step93HeadGFresh.toFinset=some s2Step93HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step93HeadGFresh,arenaWires]
  · norm_num [s2Step93HeadGBefore,s2Step93HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step93HeadGAfter,s2Step93HeadGBefore,s2Step93HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step93HeadG_checked : planRowResizeLog s2Step93HeadGBefore s2Step93HeadGRow 223 s2Step93HeadGFresh=
    some (s2Step93HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 786, 781],769⟩,growRow 769 s2Step93HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step93HeadGBefore s2Step93HeadGAfter s2Step93HeadGRow 223 s2Step93HeadGFresh
    s2Step93HeadG_distinct s2Step93HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step93HeadG_reserved
  have rowEq : WindowRow.mk (s2Step93HeadGRow.payload++s2Step93HeadGFresh) s2Step93HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 786, 781],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step93HeadGvBefore : Arena := s2Step93HeadFAfter

private theorem s2Step93HeadGv_Incoming : rowsOwned s2Step93HeadGvBefore [s2Step93HeadGvRow,s2Step93HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step93HeadGRow,s2Step93HeadFRow,s2Step93HeadGvRow,s2Step93HeadFvRow] 2 s2Step93HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step93HeadGvBefore (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<797) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step93HeadGv_Outgoing : rowsOwned s2Step93HeadFvAfter [s2Step93HeadGvOut,s2Step93HeadFvOut] :=
  hmrRows_owned_drop s2Step93HeadFvAfter [s2Step93HeadGOut,s2Step93HeadFOut,s2Step93HeadGvOut,s2Step93HeadFvOut] 2 s2Step93HeadBank_outgoingOwned

private theorem s2Step93HeadGv_distinct : (s2Step93HeadGvRow.sign::s2Step93HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step93HeadGv_owned : (s2Step93HeadGvRow.sign::s2Step93HeadGvRow.payload).toFinset⊆s2Step93HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step93HeadGvBefore (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<797) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step93HeadGv_reserved : s2Step93HeadGvBefore.reserve s2Step93HeadGvFresh.toFinset=some s2Step93HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step93HeadGvFresh,arenaWires]
  · norm_num [s2Step93HeadGvBefore,s2Step93HeadFAfter,s2Step93HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step93HeadGvAfter,s2Step93HeadGvBefore,s2Step93HeadFAfter,s2Step93HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step93HeadGv_checked : planRowResizeLog s2Step93HeadGvBefore s2Step93HeadGvRow 60 s2Step93HeadGvFresh=
    some (s2Step93HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780],771⟩,growRow 771 s2Step93HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step93HeadGvBefore s2Step93HeadGvAfter s2Step93HeadGvRow 60 s2Step93HeadGvFresh
    s2Step93HeadGv_distinct s2Step93HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step93HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step93HeadGvRow.payload++s2Step93HeadGvFresh) s2Step93HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step93HeadBank_rows : planWindowRowsLog s2Step93HeadGBefore [(s2Step93HeadGRow,223),(s2Step93HeadFRow,223),(s2Step93HeadGvRow,60),(s2Step93HeadFvRow,60)] [s2Step93HeadGFresh,s2Step93HeadFFresh,s2Step93HeadGvFresh,s2Step93HeadFvFresh]=
    some (s2Step93HeadFvAfter,[s2Step93HeadGOut,s2Step93HeadFOut,s2Step93HeadGvOut,s2Step93HeadFvOut],(growRow 769 s2Step93HeadGFresh ++ (growRow 768 s2Step93HeadFFresh ++ (growRow 771 s2Step93HeadGvFresh ++ (growRow 770 s2Step93HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step93HeadFvAfter [] []=some (s2Step93HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step93HeadFvBefore s2Step93HeadFvAfter s2Step93HeadFvAfter
    s2Step93HeadFvRow s2Step93HeadFvOut 60 s2Step93HeadFvFresh [] [] []
    (growRow 770 s2Step93HeadFvFresh) ([]) s2Step93HeadFv_Incoming s2Step93HeadFv_checked h4 s2Step93HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step93HeadGvBefore s2Step93HeadGvAfter s2Step93HeadFvAfter
    s2Step93HeadGvRow s2Step93HeadGvOut 60 s2Step93HeadGvFresh [(s2Step93HeadFvRow,60)] [s2Step93HeadFvFresh] [s2Step93HeadFvOut]
    (growRow 771 s2Step93HeadGvFresh) ((growRow 770 s2Step93HeadFvFresh ++ [])) s2Step93HeadGv_Incoming s2Step93HeadGv_checked h3 s2Step93HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step93HeadFBefore s2Step93HeadFAfter s2Step93HeadFvAfter
    s2Step93HeadFRow s2Step93HeadFOut 223 s2Step93HeadFFresh [(s2Step93HeadGvRow,60),(s2Step93HeadFvRow,60)] [s2Step93HeadGvFresh,s2Step93HeadFvFresh] [s2Step93HeadGvOut,s2Step93HeadFvOut]
    (growRow 768 s2Step93HeadFFresh) ((growRow 771 s2Step93HeadGvFresh ++ (growRow 770 s2Step93HeadFvFresh ++ []))) s2Step93HeadF_Incoming s2Step93HeadF_checked h2 s2Step93HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step93HeadGBefore s2Step93HeadGAfter s2Step93HeadFvAfter
    s2Step93HeadGRow s2Step93HeadGOut 223 s2Step93HeadGFresh [(s2Step93HeadFRow,223),(s2Step93HeadGvRow,60),(s2Step93HeadFvRow,60)] [s2Step93HeadFFresh,s2Step93HeadGvFresh,s2Step93HeadFvFresh] [s2Step93HeadFOut,s2Step93HeadGvOut,s2Step93HeadFvOut]
    (growRow 769 s2Step93HeadGFresh) ((growRow 768 s2Step93HeadFFresh ++ (growRow 771 s2Step93HeadGvFresh ++ (growRow 770 s2Step93HeadFvFresh ++ [])))) s2Step93HeadG_Incoming s2Step93HeadG_checked h1 s2Step93HeadG_Outgoing
  exact h0

private theorem s2Step93HeadBank_checked : compileHmrBankResizeLog .headroom s2Step93HeadGBefore ⟨s2Step93HeadFRow,s2Step93HeadGRow,s2Step93HeadFvRow,s2Step93HeadGvRow⟩ ⟨223,223,60,60⟩ [s2Step93HeadGFresh,s2Step93HeadFFresh,s2Step93HeadGvFresh,s2Step93HeadFvFresh]=
    some (s2Step93HeadFvAfter,⟨s2Step93HeadFOut,s2Step93HeadGOut,s2Step93HeadFvOut,s2Step93HeadGvOut⟩,(growRow 769 s2Step93HeadGFresh ++ (growRow 768 s2Step93HeadFFresh ++ (growRow 771 s2Step93HeadGvFresh ++ (growRow 770 s2Step93HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step93HeadBank_rows]
  rfl

private theorem s2Step93Front_checked : compileHmrSourceFrontLog s2Step93EntryFBefore s2Step93FrontBank 222 59 ⟨222,221,60,60⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step93FrontLog=some s2Step93FrontPlan := by
  have pairEq : s2Step93FrontPair=⟨s2Step93HeadFRow,s2Step93HeadGRow,s2Step93HeadFvRow,s2Step93HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step93FrontHead=⟨s2Step93ExitFRow,s2Step93ExitGRow,s2Step93ExitFvRow,s2Step93ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step93Add0A=s2Step93FrontHead.f.wires := by decide +kernel
  have gEq : s2Step93Add0B=s2Step93FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step93Add1A=s2Step93FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step93Add1B=s2Step93FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step93EntryFBefore s2Step93FrontBank 222 59 ⟨222,221,60,60⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step93FrontLog s2Step93FrontPlan
  · exact s2Step93Front_entry
  · exact s2Step93EntryBank_checked
  · exact s2Step93Front_sigma
  · rfl
  · exact s2Step93Front_branch
  · rfl
  · simpa only [s2Step93FrontPlan,pairEq] using s2Step93HeadBank_checked
  · simpa only [s2Step93FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step93F4_checked
  · exact s2Step93Counter_checked
  · rfl
  · simpa only [s2Step93FrontPlan,headEq] using s2Step93ExitBank_checked

private theorem s2Step93Complete_explicit_checked : compileHmrEarlyStepLog s2Step93EntryFBefore s2Step93FrontBank 222 59 ⟨222,221,60,60⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] 34 s2Step93CompleteLog=some s2Step93CompletePlan := by
  let Q := s2Step93EarlyControlPlan
  have hq := s2Step93EarlyControl_plan_checked
  have fv1 : s2Step93CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step93CompleteOut.fv.payload[2]?.getD s2Step93CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step93CompleteOut.fv.payload[3]?.getD s2Step93CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step93CompleteOut.fv.payload[4]?.getD s2Step93CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step93EntryFBefore s2Step93EarlyControlArena s2Step93FrontBank 222 59 ⟨222,221,60,60⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] 34 s2Step93CompleteLog s2Step93FrontPlan Q
    s2Step93Front_checked s2Step93Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step93Complete_owned s2Step93Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step93EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] 777 793 s2Step93CompleteOut.fv.second (s2Step93CompleteOut.fv.payload[2]?.getD s2Step93CompleteOut.fv.sign) (s2Step93CompleteOut.fv.payload[3]?.getD s2Step93CompleteOut.fv.sign) (s2Step93CompleteOut.fv.payload[4]?.getD s2Step93CompleteOut.fv.sign) 799 34 s2Step93EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep93Arena : Arena := s2Step93EntryFBefore
def s2PrivateStep93Bank : WindowBank := s2Step93FrontBank
def s2PrivateStep93Spec : HmrSourceWalkStepLog := ⟨222,59,⟨222,221,60,60⟩,34,.early s2Step93CompleteLog⟩
def s2PrivateStep93Plan : HmrSourceStepPlan := .early s2Step93CompletePlan
theorem s2PrivateStep93_source : s2PrivateStep93Spec=s2ObservedLogs80[13] := rfl
theorem s2PrivateStep93_checked : compileHmrSourceStepLog s2PrivateStep93Arena s2PrivateStep93Bank
    s2PrivateStep93Spec.fgWidth s2PrivateStep93Spec.vWidth s2PrivateStep93Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876]
    6 498 93 s2PrivateStep93Spec.need none s2PrivateStep93Spec.log=some s2PrivateStep93Plan := by
  change compileHmrSourceStepLog s2Step93EntryFBefore s2Step93FrontBank 222 59 ⟨222,221,60,60⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] 6 498 93 34 none (.early s2Step93CompleteLog)=some (.early s2Step93CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 93<498)]
  rw [s2Step93Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
