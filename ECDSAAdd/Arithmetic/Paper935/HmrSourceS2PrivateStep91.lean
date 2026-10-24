import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep89
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

private def s2Step91CompleteMoves : List (Wire × Wire) := [(780,222),(797,734)]

private def s2Step91EarlyControlLog : HmrEarlyControlLog := ⟨[797, 780, 781, 796, 779],[844],[785],[839, 846, 847, 849, 851, 867],[876]⟩

private def s2Step91FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[796], [781], [836], [816]],[[], [], [], []]⟩,[786],[793],[779],[844],[785, 839, 846, 847, 849, 851, 867, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[785, 839, 846, 847, 849, 851, 867, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927],[779, 844, 785, 839]⟩

private def s2Step91CompleteLog : HmrEarlyStepLog := ⟨s2Step91FrontLog,s2Step91CompleteMoves,s2Step91EarlyControlLog⟩

private def s2Step91ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733],768⟩

private def s2Step91ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816],770⟩

private def s2Step91ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221],769⟩

private def s2Step91ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836],771⟩

private def s2Step91FrontOut : WindowBank := ⟨s2Step91ExitFOut,s2Step91ExitGOut,s2Step91ExitFvOut,s2Step91ExitGvOut⟩

private def s2Step91CompleteOut : WindowBank := s2Step91FrontOut.repacked s2Step91CompleteMoves

private def s2Step91EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<796) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step91EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step91EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step91EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step91EarlyControlPositiveArena,[844],s2Step91EarlyControlEqualityArena,[785],⟨⟨786,false⟩,[⟨⟨844,false⟩,785⟩]⟩⟩

private def s2Step91EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step91EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step91EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<796) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step91EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (794≤q ∧ q<796) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step91EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<796) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step91EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step91EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,797⟩,⟨⟨774,false⟩,780⟩,⟨⟨775,false⟩,781⟩,⟨⟨776,false⟩,796⟩,⟨⟨777,false⟩,779⟩]⟩

private def s2Step91EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step91EarlyControlZeroArena,s2Step91EarlyControlZeroPlan,s2Step91EarlyControlClassPlan,s2Step91EarlyControlFlagArena,s2Step91EarlyControlFittedArena,s2Step91EarlyControlHistoryArena,s2Step91EarlyControlSigmaArena,s2Step91EarlyControlOutputArena,s2Step91EarlyControlLog⟩

private def s2Step91CounterWork : List Wire := [779, 844, 785, 839]

private theorem s2Step91Counter_bounded : s2Step91CounterWork.toFinset⊆arenaWires := by norm_num [s2Step91CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step91HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step91CounterDuring : Arena := ⟨s2Step91HeadFvAfter.live∪s2Step91CounterWork.toFinset,Finset.union_subset s2Step91HeadFvAfter.bounded s2Step91Counter_bounded⟩

private def s2Step91EntryFFresh : List Wire := []

private def s2Step91EntryFvFresh : List Wire := []

private def s2Step91EntryGFresh : List Wire := []

private def s2Step91EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (794≤q ∧ q<796) ∨ (797≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step91EntryGvAfter : Arena := s2Step91EntryFBefore

private def s2Step91EntryGvFresh : List Wire := []

private def s2Step91ExitFExtra : List Wire := [734, 781]

private def s2Step91ExitGExtra : List Wire := [222, 796]

private def s2Step91ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<222) ∨ (223≤q ∧ q<734) ∨ (735≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<796) ∨ (797≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step91ExitGvAfter : Arena := s2Step91ExitFAfter

private def s2Step91Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step91Add0Work : List Wire := [785, 839, 846, 847, 849, 851, 867, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step91Add0_bounded : s2Step91Add0Work.toFinset⊆arenaWires := by
  have h : s2Step91Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step91Add0During : Arena := ⟨s2Step91Add0Arena.live∪s2Step91Add0Work.toFinset,Finset.union_subset s2Step91Add0Arena.bounded s2Step91Add0_bounded⟩

private def s2Step91Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step91Add1Work : List Wire := [785, 839, 846, 847, 849, 851, 867, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927]

private theorem s2Step91Add1_bounded : s2Step91Add1Work.toFinset⊆arenaWires := by
  have h : s2Step91Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step91Add1During : Arena := ⟨s2Step91Add1Arena.live∪s2Step91Add1Work.toFinset,Finset.union_subset s2Step91Add1Arena.bounded s2Step91Add1_bounded⟩

private def s2Step91F4FlagArena : Arena := ⟨s2Step91HeadFvAfter.live∪{779},Finset.union_subset s2Step91HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step91F4Plan : HmrHybridF4Plan := ⟨s2Step91F4FlagArena,[779],s2Step91Add0Arena,[844],s2Step91Add0During,s2Step91Add0Work,s2Step91Add1During,s2Step91Add1Work⟩

private def s2Step91HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 781],768⟩

private def s2Step91HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816],770⟩

private def s2Step91HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 796],769⟩

private def s2Step91HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836],771⟩

private def s2Step91FrontHead : WindowBank := ⟨s2Step91HeadFOut,s2Step91HeadGOut,s2Step91HeadFvOut,s2Step91HeadGvOut⟩

private def s2Step91EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734],768⟩

private def s2Step91EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845],770⟩

private def s2Step91EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222],769⟩

private def s2Step91EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789],771⟩

private def s2Step91FrontPair : WindowBank := ⟨s2Step91EntryFOut,s2Step91EntryGOut,s2Step91EntryFvOut,s2Step91EntryGvOut⟩

private def s2Step91FrontSigmaArena : Arena := ⟨s2Step91EntryGvAfter.live∪{786},Finset.union_subset s2Step91EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step91HeadFFresh : List Wire := [781]

private def s2Step91HeadFvFresh : List Wire := [816]

private def s2Step91HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<796) ∨ (797≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step91HeadGFresh : List Wire := [796]

private def s2Step91HeadGvFresh : List Wire := [836]

private def s2Step91FrontPlan : HmrSourceFront := ⟨s2Step91EntryGvAfter,s2Step91FrontPair,(growRow 768 s2Step91EntryFFresh ++ (growRow 769 s2Step91EntryGFresh ++ (growRow 770 s2Step91EntryFvFresh ++ (growRow 771 s2Step91EntryGvFresh ++ [])))),s2Step91FrontSigmaArena,[786],s2Step91HeadGBefore,[793],
  s2Step91HeadFvAfter,s2Step91FrontHead,(growRow 769 s2Step91HeadGFresh ++ (growRow 768 s2Step91HeadFFresh ++ (growRow 771 s2Step91HeadGvFresh ++ (growRow 770 s2Step91HeadFvFresh ++ [])))),s2Step91F4Plan,s2Step91CounterDuring,s2Step91CounterWork,s2Step91ExitGvAfter,s2Step91FrontOut,(shrinkRow 769 s2Step91ExitGExtra ++ (shrinkRow 768 s2Step91ExitFExtra ++ (growRow 770 [] ++ (growRow 771 [] ++ []))))⟩

private def s2Step91CompletePlan : HmrEarlyStepPlan := ⟨s2Step91FrontPlan,s2Step91EarlyControlArena,s2Step91EarlyControlPlan,s2Step91CompleteMoves⟩

private theorem s2Step91Complete_apart : List.Disjoint (s2Step91CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [786, 793, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873] := by
  have nd : ((s2Step91CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[786, 793, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step91Complete_owned : (s2Step91CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step91EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step91EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<796) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<876)) rfl
  decide +kernel

private def s2Step91CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,734),(735,779),(782,785),(786,796),(797,839),(840,844),(845,846),(848,849),(850,851),(852,867),(868,876)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s2Step91CompleteRelocationMove0Borrowed : Arena := ⟨s2Step91ExitGvAfter.live∪{222},Finset.union_subset s2Step91ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step91CompleteRelocationMove1Borrowed : Arena := ⟨s2Step91CompleteRelocationMove0After.live∪{734},Finset.union_subset s2Step91CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s2Step91CompleteRelocation_move0_owned : 780∈s2Step91ExitGvAfter.live := by norm_num [s2Step91ExitGvAfter,s2Step91ExitFAfter,arenaWires]

private theorem s2Step91CompleteRelocation_move0_reserve : s2Step91ExitGvAfter.reserve {222}=some s2Step91CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step91ExitGvAfter,s2Step91ExitFAfter,arenaWires]
  · rfl

private theorem s2Step91CompleteRelocation_move0_retire : s2Step91CompleteRelocationMove0Borrowed.retireSet {780}=s2Step91CompleteRelocationMove0After := by
  unfold Arena.retireSet s2Step91CompleteRelocationMove0After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step91CompleteRelocationMove0Borrowed,s2Step91ExitGvAfter,s2Step91ExitFAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step91CompleteRelocation_move1_owned : 797∈s2Step91CompleteRelocationMove0After.live := by norm_num [s2Step91CompleteRelocationMove0After,arenaWires]

private theorem s2Step91CompleteRelocation_move1_reserve : s2Step91CompleteRelocationMove0After.reserve {734}=some s2Step91CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step91CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s2Step91CompleteRelocation_move1_retire : s2Step91CompleteRelocationMove1Borrowed.retireSet {797}=s2Step91EarlyControlArena := by
  unfold Arena.retireSet s2Step91EarlyControlArena
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step91CompleteRelocationMove1Borrowed,s2Step91CompleteRelocationMove0After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step91CompleteRelocation_checked : s2Step91ExitGvAfter.checkRepack [(780,222),(797,734)]=some s2Step91EarlyControlArena := by
  have tail2 : s2Step91EarlyControlArena.checkRepack []=some s2Step91EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s2Step91CompleteRelocationMove0After s2Step91CompleteRelocationMove1Borrowed s2Step91EarlyControlArena s2Step91EarlyControlArena 797 734 []
    s2Step91CompleteRelocation_move1_owned s2Step91CompleteRelocation_move1_reserve s2Step91CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s2Step91ExitGvAfter s2Step91CompleteRelocationMove0Borrowed s2Step91CompleteRelocationMove0After s2Step91EarlyControlArena 780 222 [(797,734)]
    s2Step91CompleteRelocation_move0_owned s2Step91CompleteRelocation_move0_reserve s2Step91CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s2Step91Complete_repack : s2Step91ExitGvAfter.checkRepack s2Step91CompleteMoves=some s2Step91EarlyControlArena := by
  simpa only [s2Step91CompleteMoves] using s2Step91CompleteRelocation_checked

private theorem s2Step91EarlyControl_branchOwned : ([793] : List Wire).toFinset⊆s2Step91EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step91EarlyControlSigmaArena (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<796) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step91EarlyControl_branch : compileHmrBranchRetirement s2Step91EarlyControlSigmaArena 793=some s2Step91EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step91EarlyControl_branchOwned
  · ext q
    simp [s2Step91EarlyControlOutputArena,s2Step91EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step91EarlyControl_classEqualityBorrow : s2Step91EarlyControlPositiveArena.checkBorrow (([786, 844] : List Wire).length-1) s2Step91EarlyControlLog.classWork=some s2Step91EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step91EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step91EarlyControlPositiveArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<876)) rfl
      decide +kernel
    · ext q
      simp [s2Step91EarlyControlEqualityArena,s2Step91EarlyControlPositiveArena,s2Step91EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step91EarlyControl_classEqualityOwned : ([786, 844] : List Wire).toFinset⊆s2Step91EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step91EarlyControlPositiveArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step91EarlyControl_classEquality : compileHmrEqualityLog s2Step91EarlyControlPositiveArena [786, 844] 0 s2Step91EarlyControlLog.classWork=some (s2Step91EarlyControlEqualityArena,s2Step91EarlyControlLog.classWork,s2Step91EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step91EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step91EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step91EarlyControl_classOwned : ([777, 779, 786] : List Wire).toFinset⊆s2Step91EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step91EarlyControlZeroArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step91EarlyControl_positiveBorrow : s2Step91EarlyControlZeroArena.checkBorrow (1) s2Step91EarlyControlLog.positiveWork=some s2Step91EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step91EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step91EarlyControlZeroArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<876)) rfl
      decide +kernel
    · ext q
      simp [s2Step91EarlyControlPositiveArena,s2Step91EarlyControlZeroArena,s2Step91EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step91EarlyControl_class : compileHmrSourceClassLog s2Step91EarlyControlZeroArena false 777 s2Step91EarlyControlZeroPlan.top 0 786 s2Step91EarlyControlLog.positiveWork s2Step91EarlyControlLog.classWork=some s2Step91EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step91EarlyControlClassPlan s2Step91EarlyControlZeroArena false 777 s2Step91EarlyControlZeroPlan.top 0 786
  constructor
  · decide +kernel
  · exact s2Step91EarlyControl_classOwned
  · exact s2Step91EarlyControl_positiveBorrow
  · exact s2Step91EarlyControl_classEquality

private theorem s2Step91EarlyControl_entryRecordOwned : ([793, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873] : List Wire).toFinset⊆s2Step91EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step91EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<796) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step91EarlyControl_entrySigmaOwned : ([786, 254] : List Wire).toFinset⊆s2Step91EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step91EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<796) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step91EarlyControl_fitBorrow : s2Step91EarlyControlFlagArena.checkBorrow ((34-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873] : List Wire).length)) s2Step91EarlyControlLog.recordFresh=some s2Step91EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step91EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step91EarlyControlFlagArena (fun q => (0≤q ∧ q<876)) rfl
      decide +kernel
    · ext q
      simp [s2Step91EarlyControlFittedArena,s2Step91EarlyControlFlagArena,s2Step91EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step91EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873] : List Wire).toFinset⊆s2Step91EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step91EarlyControlFlagArena (fun q => (0≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step91EarlyControl_fit : compileHmrRecordGrowLog s2Step91EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873] 34 s2Step91EarlyControlLog.recordFresh=some s2Step91EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step91EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step91EarlyControl_fitBorrow

private theorem s2Step91EarlyControl_flagsBorrow : s2Step91EarlyControlEqualityArena.checkBorrow (6) s2Step91EarlyControlLog.flagWork=some s2Step91EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step91EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step91EarlyControlEqualityArena (fun q => (0≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<876)) rfl
      decide +kernel
    · ext q
      simp [s2Step91EarlyControlFlagArena,s2Step91EarlyControlEqualityArena,s2Step91EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step91EarlyControl_flagsOwned : ([785, 253, 252, 251] : List Wire).toFinset⊆s2Step91EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step91EarlyControlEqualityArena (fun q => (0≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step91EarlyControl_flags : compileHmrFlagsLog s2Step91EarlyControlClassPlan.equalityArena s2Step91EarlyControlClassPlan.equality.top 253 252 251 s2Step91EarlyControlLog.flagWork=some s2Step91EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step91EarlyControl_flagsOwned⟩
  · exact s2Step91EarlyControl_flagsBorrow

private theorem s2Step91EarlyControl_historyBorrow : s2Step91EarlyControlArena.checkBorrow ((34-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873] : List Wire).length)) s2Step91EarlyControlLog.recordFresh=some s2Step91EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step91EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step91EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<796) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<876)) rfl
      decide +kernel
    · ext q
      simp [s2Step91EarlyControlHistoryArena,s2Step91EarlyControlArena,s2Step91EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step91EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873] : List Wire).toFinset⊆s2Step91EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step91EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<796) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step91EarlyControl_history : compileHmrRecordGrowLog s2Step91EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873] 34 s2Step91EarlyControlLog.recordFresh=some s2Step91EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step91EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step91EarlyControl_historyBorrow

private theorem s2Step91EarlyControl_sigmaOwned : ([254, 786] : List Wire).toFinset⊆s2Step91EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step91EarlyControlHistoryArena (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<796) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step91EarlyControl_sigmaReleaseOwned : ([786] : List Wire).toFinset⊆s2Step91EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step91EarlyControlHistoryArena (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<796) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step91EarlyControl_sigmaRelease : s2Step91EarlyControlHistoryArena.release {786} (fun _ => false)=some s2Step91EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step91EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step91EarlyControlSigmaArena,s2Step91EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step91EarlyControl_sigma : compileHmrSigmaDropLog s2Step91EarlyControlHistoryArena false 0 0 254 786 []=some s2Step91EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step91EarlyControl_sigmaOwned⟩
  · exact s2Step91EarlyControl_sigmaRelease

private theorem s2Step91EarlyControl_zeroBorrow : s2Step91EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step91EarlyControlLog.zeroWork=some s2Step91EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step91EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step91EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<796) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<876)) rfl
      decide +kernel
    · ext q
      simp [s2Step91EarlyControlZeroArena,s2Step91EarlyControlArena,s2Step91EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step91EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step91EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step91EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<796) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step91EarlyControl_zero : compileHmrEqualityLog s2Step91EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step91EarlyControlLog.zeroWork=some (s2Step91EarlyControlZeroArena,s2Step91EarlyControlLog.zeroWork,s2Step91EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step91EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step91EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step91EarlyControl_logged : s2Step91EarlyControlPlan.Logged s2Step91EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873] 777 786 254 253 252 251 793 34 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step91EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step91EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step91EarlyControl_zero
  · exact s2Step91EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step91EarlyControl_flags
  · exact s2Step91EarlyControl_fit
  · exact s2Step91EarlyControl_history
  · exact s2Step91EarlyControl_sigma
  · exact s2Step91EarlyControl_branch

private theorem s2Step91EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step91EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873] 777 786 254 253 252 251 793 34 s2Step91EarlyControlLog=some s2Step91EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step91EarlyControlPlan s2Step91EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873] 777 786 254 253 252 251 793 34 s2Step91EarlyControl_logged

private def s2Step91EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734],768⟩

private def s2Step91EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845],770⟩

private def s2Step91EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222],769⟩

private def s2Step91EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789],771⟩

private def s2Step91FrontBank : WindowBank := ⟨s2Step91EntryFRow,s2Step91EntryGRow,s2Step91EntryFvRow,s2Step91EntryGvRow⟩

private def s2Step91Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 781, 768]

private def s2Step91Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 796, 769]

private def s2Step91Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 770]

private def s2Step91Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 771]

private theorem s2Step91Counter_apart : Disjoint s2Step91HeadFvAfter.live s2Step91CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step91HeadFvAfter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step91Counter_borrowed : s2Step91HeadFvAfter.checkBorrow 4 s2Step91CounterWork=some s2Step91CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step91HeadFvAfter s2Step91CounterDuring s2Step91CounterWork.toFinset s2Step91Counter_bounded s2Step91Counter_apart rfl

private theorem s2Step91Counter_owned : (786::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step91HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step91HeadFvAfter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step91Counter_checked : compileHmrCounterStepLog s2Step91HeadFvAfter true 786 [772, 773, 774, 775, 776, 777] s2Step91CounterWork=some s2Step91CounterDuring := by
  have owned : ∀q∈786::[772, 773, 774, 775, 776, 777],q∈s2Step91HeadFvAfter.live := fun q hq => s2Step91Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step91Counter_borrowed

private def s2Step91EntryFAfter : Arena := s2Step91EntryFBefore

private theorem s2Step91EntryBank_incomingDistinct : ([s2Step91EntryFRow,s2Step91EntryGRow,s2Step91EntryFvRow,s2Step91EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step91EntryF_Incoming : rowsOwned s2Step91EntryFBefore [s2Step91EntryFRow,s2Step91EntryGRow,s2Step91EntryFvRow,s2Step91EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step91EntryFRow,s2Step91EntryGRow,s2Step91EntryFvRow,s2Step91EntryGvRow] 0 s2Step91EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step91EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (794≤q ∧ q<796) ∨ (797≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step91EntryBank_outgoingOwned : rowsOwned s2Step91EntryGvAfter [s2Step91EntryFOut,s2Step91EntryGOut,s2Step91EntryFvOut,s2Step91EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step91EntryGvAfter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (794≤q ∧ q<796) ∨ (797≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step91EntryF_Outgoing : rowsOwned s2Step91EntryGvAfter [s2Step91EntryFOut,s2Step91EntryGOut,s2Step91EntryFvOut,s2Step91EntryGvOut] :=
  hmrRows_owned_drop s2Step91EntryGvAfter [s2Step91EntryFOut,s2Step91EntryGOut,s2Step91EntryFvOut,s2Step91EntryGvOut] 0 s2Step91EntryBank_outgoingOwned

private theorem s2Step91EntryF_distinct : (s2Step91EntryFRow.sign::s2Step91EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step91EntryF_owned : (s2Step91EntryFRow.sign::s2Step91EntryFRow.payload).toFinset⊆s2Step91EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step91EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (794≤q ∧ q<796) ∨ (797≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step91EntryF_reserved : s2Step91EntryFBefore.reserve s2Step91EntryFFresh.toFinset=some s2Step91EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step91EntryFFresh,arenaWires]
  · norm_num [s2Step91EntryFBefore,s2Step91EntryFFresh,arenaWires]
  · simp only [s2Step91EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step91EntryF_checked : planRowResizeLog s2Step91EntryFBefore s2Step91EntryFRow 223 s2Step91EntryFFresh=
    some (s2Step91EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734],768⟩,growRow 768 s2Step91EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step91EntryFBefore s2Step91EntryFAfter s2Step91EntryFRow 223 s2Step91EntryFFresh
    s2Step91EntryF_distinct s2Step91EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step91EntryF_reserved
  have rowEq : WindowRow.mk (s2Step91EntryFRow.payload++s2Step91EntryFFresh) s2Step91EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step91EntryFvAfter : Arena := s2Step91EntryFBefore

private def s2Step91EntryFvBefore : Arena := s2Step91EntryFBefore

private theorem s2Step91EntryFv_Incoming : rowsOwned s2Step91EntryFvBefore [s2Step91EntryFvRow,s2Step91EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step91EntryFRow,s2Step91EntryGRow,s2Step91EntryFvRow,s2Step91EntryGvRow] 2 s2Step91EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step91EntryFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (794≤q ∧ q<796) ∨ (797≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step91EntryFv_Outgoing : rowsOwned s2Step91EntryGvAfter [s2Step91EntryFvOut,s2Step91EntryGvOut] :=
  hmrRows_owned_drop s2Step91EntryGvAfter [s2Step91EntryFOut,s2Step91EntryGOut,s2Step91EntryFvOut,s2Step91EntryGvOut] 2 s2Step91EntryBank_outgoingOwned

private theorem s2Step91EntryFv_distinct : (s2Step91EntryFvRow.sign::s2Step91EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step91EntryFv_owned : (s2Step91EntryFvRow.sign::s2Step91EntryFvRow.payload).toFinset⊆s2Step91EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step91EntryFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (794≤q ∧ q<796) ∨ (797≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step91EntryFv_reserved : s2Step91EntryFvBefore.reserve s2Step91EntryFvFresh.toFinset=some s2Step91EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step91EntryFvFresh,arenaWires]
  · norm_num [s2Step91EntryFvBefore,s2Step91EntryFBefore,s2Step91EntryFvFresh,arenaWires]
  · simp only [s2Step91EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step91EntryFv_checked : planRowResizeLog s2Step91EntryFvBefore s2Step91EntryFvRow 58 s2Step91EntryFvFresh=
    some (s2Step91EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845],770⟩,growRow 770 s2Step91EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step91EntryFvBefore s2Step91EntryFvAfter s2Step91EntryFvRow 58 s2Step91EntryFvFresh
    s2Step91EntryFv_distinct s2Step91EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step91EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step91EntryFvRow.payload++s2Step91EntryFvFresh) s2Step91EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step91EntryGAfter : Arena := s2Step91EntryFBefore

private def s2Step91EntryGBefore : Arena := s2Step91EntryFBefore

private theorem s2Step91EntryG_Incoming : rowsOwned s2Step91EntryGBefore [s2Step91EntryGRow,s2Step91EntryFvRow,s2Step91EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step91EntryFRow,s2Step91EntryGRow,s2Step91EntryFvRow,s2Step91EntryGvRow] 1 s2Step91EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step91EntryGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (794≤q ∧ q<796) ∨ (797≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step91EntryG_Outgoing : rowsOwned s2Step91EntryGvAfter [s2Step91EntryGOut,s2Step91EntryFvOut,s2Step91EntryGvOut] :=
  hmrRows_owned_drop s2Step91EntryGvAfter [s2Step91EntryFOut,s2Step91EntryGOut,s2Step91EntryFvOut,s2Step91EntryGvOut] 1 s2Step91EntryBank_outgoingOwned

private theorem s2Step91EntryG_distinct : (s2Step91EntryGRow.sign::s2Step91EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step91EntryG_owned : (s2Step91EntryGRow.sign::s2Step91EntryGRow.payload).toFinset⊆s2Step91EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step91EntryGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (794≤q ∧ q<796) ∨ (797≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step91EntryG_reserved : s2Step91EntryGBefore.reserve s2Step91EntryGFresh.toFinset=some s2Step91EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step91EntryGFresh,arenaWires]
  · norm_num [s2Step91EntryGBefore,s2Step91EntryFBefore,s2Step91EntryGFresh,arenaWires]
  · simp only [s2Step91EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step91EntryG_checked : planRowResizeLog s2Step91EntryGBefore s2Step91EntryGRow 223 s2Step91EntryGFresh=
    some (s2Step91EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222],769⟩,growRow 769 s2Step91EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step91EntryGBefore s2Step91EntryGAfter s2Step91EntryGRow 223 s2Step91EntryGFresh
    s2Step91EntryG_distinct s2Step91EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step91EntryG_reserved
  have rowEq : WindowRow.mk (s2Step91EntryGRow.payload++s2Step91EntryGFresh) s2Step91EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step91EntryGvBefore : Arena := s2Step91EntryFBefore

private theorem s2Step91EntryGv_Incoming : rowsOwned s2Step91EntryGvBefore [s2Step91EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step91EntryFRow,s2Step91EntryGRow,s2Step91EntryFvRow,s2Step91EntryGvRow] 3 s2Step91EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step91EntryGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (794≤q ∧ q<796) ∨ (797≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step91EntryGv_Outgoing : rowsOwned s2Step91EntryGvAfter [s2Step91EntryGvOut] :=
  hmrRows_owned_drop s2Step91EntryGvAfter [s2Step91EntryFOut,s2Step91EntryGOut,s2Step91EntryFvOut,s2Step91EntryGvOut] 3 s2Step91EntryBank_outgoingOwned

private theorem s2Step91EntryGv_distinct : (s2Step91EntryGvRow.sign::s2Step91EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step91EntryGv_owned : (s2Step91EntryGvRow.sign::s2Step91EntryGvRow.payload).toFinset⊆s2Step91EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step91EntryGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (794≤q ∧ q<796) ∨ (797≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step91EntryGv_reserved : s2Step91EntryGvBefore.reserve s2Step91EntryGvFresh.toFinset=some s2Step91EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step91EntryGvFresh,arenaWires]
  · norm_num [s2Step91EntryGvBefore,s2Step91EntryFBefore,s2Step91EntryGvFresh,arenaWires]
  · simp only [s2Step91EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step91EntryGv_checked : planRowResizeLog s2Step91EntryGvBefore s2Step91EntryGvRow 58 s2Step91EntryGvFresh=
    some (s2Step91EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789],771⟩,growRow 771 s2Step91EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step91EntryGvBefore s2Step91EntryGvAfter s2Step91EntryGvRow 58 s2Step91EntryGvFresh
    s2Step91EntryGv_distinct s2Step91EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step91EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step91EntryGvRow.payload++s2Step91EntryGvFresh) s2Step91EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step91EntryBank_rows : planWindowRowsLog s2Step91EntryFBefore [(s2Step91EntryFRow,223),(s2Step91EntryGRow,223),(s2Step91EntryFvRow,58),(s2Step91EntryGvRow,58)] [s2Step91EntryFFresh,s2Step91EntryGFresh,s2Step91EntryFvFresh,s2Step91EntryGvFresh]=
    some (s2Step91EntryGvAfter,[s2Step91EntryFOut,s2Step91EntryGOut,s2Step91EntryFvOut,s2Step91EntryGvOut],(growRow 768 s2Step91EntryFFresh ++ (growRow 769 s2Step91EntryGFresh ++ (growRow 770 s2Step91EntryFvFresh ++ (growRow 771 s2Step91EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step91EntryGvAfter [] []=some (s2Step91EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step91EntryGvBefore s2Step91EntryGvAfter s2Step91EntryGvAfter
    s2Step91EntryGvRow s2Step91EntryGvOut 58 s2Step91EntryGvFresh [] [] []
    (growRow 771 s2Step91EntryGvFresh) ([]) s2Step91EntryGv_Incoming s2Step91EntryGv_checked h4 s2Step91EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step91EntryFvBefore s2Step91EntryFvAfter s2Step91EntryGvAfter
    s2Step91EntryFvRow s2Step91EntryFvOut 58 s2Step91EntryFvFresh [(s2Step91EntryGvRow,58)] [s2Step91EntryGvFresh] [s2Step91EntryGvOut]
    (growRow 770 s2Step91EntryFvFresh) ((growRow 771 s2Step91EntryGvFresh ++ [])) s2Step91EntryFv_Incoming s2Step91EntryFv_checked h3 s2Step91EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step91EntryGBefore s2Step91EntryGAfter s2Step91EntryGvAfter
    s2Step91EntryGRow s2Step91EntryGOut 223 s2Step91EntryGFresh [(s2Step91EntryFvRow,58),(s2Step91EntryGvRow,58)] [s2Step91EntryFvFresh,s2Step91EntryGvFresh] [s2Step91EntryFvOut,s2Step91EntryGvOut]
    (growRow 769 s2Step91EntryGFresh) ((growRow 770 s2Step91EntryFvFresh ++ (growRow 771 s2Step91EntryGvFresh ++ []))) s2Step91EntryG_Incoming s2Step91EntryG_checked h2 s2Step91EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step91EntryFBefore s2Step91EntryFAfter s2Step91EntryGvAfter
    s2Step91EntryFRow s2Step91EntryFOut 223 s2Step91EntryFFresh [(s2Step91EntryGRow,223),(s2Step91EntryFvRow,58),(s2Step91EntryGvRow,58)] [s2Step91EntryGFresh,s2Step91EntryFvFresh,s2Step91EntryGvFresh] [s2Step91EntryGOut,s2Step91EntryFvOut,s2Step91EntryGvOut]
    (growRow 768 s2Step91EntryFFresh) ((growRow 769 s2Step91EntryGFresh ++ (growRow 770 s2Step91EntryFvFresh ++ (growRow 771 s2Step91EntryGvFresh ++ [])))) s2Step91EntryF_Incoming s2Step91EntryF_checked h1 s2Step91EntryF_Outgoing
  exact h0

private theorem s2Step91EntryBank_checked : compileHmrBankResizeLog .entry s2Step91EntryFBefore ⟨s2Step91EntryFRow,s2Step91EntryGRow,s2Step91EntryFvRow,s2Step91EntryGvRow⟩ ⟨223,223,58,58⟩ [s2Step91EntryFFresh,s2Step91EntryGFresh,s2Step91EntryFvFresh,s2Step91EntryGvFresh]=
    some (s2Step91EntryGvAfter,⟨s2Step91EntryFOut,s2Step91EntryGOut,s2Step91EntryFvOut,s2Step91EntryGvOut⟩,(growRow 768 s2Step91EntryFFresh ++ (growRow 769 s2Step91EntryGFresh ++ (growRow 770 s2Step91EntryFvFresh ++ (growRow 771 s2Step91EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step91EntryBank_rows]
  rfl

private def s2Step91ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<222) ∨ (223≤q ∧ q<779) ∨ (780≤q ∧ q<785) ∨ (786≤q ∧ q<796) ∨ (797≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step91ExitFBefore : Arena := s2Step91ExitGAfter

private def s2Step91ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 781],768⟩

private def s2Step91ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816],770⟩

private def s2Step91ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 796],769⟩

private def s2Step91ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836],771⟩

private theorem s2Step91ExitBank_incomingDistinct : ([s2Step91ExitGRow,s2Step91ExitFRow,s2Step91ExitFvRow,s2Step91ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step91ExitF_Incoming : rowsOwned s2Step91ExitFBefore [s2Step91ExitFRow,s2Step91ExitFvRow,s2Step91ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step91ExitGRow,s2Step91ExitFRow,s2Step91ExitFvRow,s2Step91ExitGvRow] 1 s2Step91ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step91ExitFBefore (fun q => (0≤q ∧ q<222) ∨ (223≤q ∧ q<779) ∨ (780≤q ∧ q<785) ∨ (786≤q ∧ q<796) ∨ (797≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step91ExitBank_outgoingOwned : rowsOwned s2Step91ExitGvAfter [s2Step91ExitGOut,s2Step91ExitFOut,s2Step91ExitFvOut,s2Step91ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step91ExitGvAfter (fun q => (0≤q ∧ q<222) ∨ (223≤q ∧ q<734) ∨ (735≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<796) ∨ (797≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step91ExitF_Outgoing : rowsOwned s2Step91ExitGvAfter [s2Step91ExitFOut,s2Step91ExitFvOut,s2Step91ExitGvOut] :=
  hmrRows_owned_drop s2Step91ExitGvAfter [s2Step91ExitGOut,s2Step91ExitFOut,s2Step91ExitFvOut,s2Step91ExitGvOut] 1 s2Step91ExitBank_outgoingOwned

private theorem s2Step91ExitF_distinct : (s2Step91ExitFRow.sign::s2Step91ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step91ExitF_owned : (s2Step91ExitFRow.sign::s2Step91ExitFRow.payload).toFinset⊆s2Step91ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step91ExitFBefore (fun q => (0≤q ∧ q<222) ∨ (223≤q ∧ q<779) ∨ (780≤q ∧ q<785) ∨ (786≤q ∧ q<796) ∨ (797≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step91ExitF_retired : s2Step91ExitFBefore.retireSet s2Step91ExitFExtra.toFinset=s2Step91ExitFAfter := by
  unfold Arena.retireSet s2Step91ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step91ExitFBefore,s2Step91ExitGAfter,s2Step91ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step91ExitF_checked : planRowResizeLog s2Step91ExitFBefore s2Step91ExitFRow 222 []=
    some (s2Step91ExitFAfter,s2Step91ExitFOut,shrinkRow 768 s2Step91ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step91ExitFBefore s2Step91ExitFRow 222 s2Step91ExitF_distinct s2Step91ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step91ExitFRow.payload.take 222) s2Step91ExitFRow.sign=s2Step91ExitFOut := by decide +kernel
  have hi : s2Step91ExitFRow.payload.drop 222=s2Step91ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step91ExitF_retired] at result
  exact result

private def s2Step91ExitFvAfter : Arena := s2Step91ExitFAfter

private def s2Step91ExitFvBefore : Arena := s2Step91ExitFAfter

private theorem s2Step91ExitFv_Incoming : rowsOwned s2Step91ExitFvBefore [s2Step91ExitFvRow,s2Step91ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step91ExitGRow,s2Step91ExitFRow,s2Step91ExitFvRow,s2Step91ExitGvRow] 2 s2Step91ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step91ExitFvBefore (fun q => (0≤q ∧ q<222) ∨ (223≤q ∧ q<734) ∨ (735≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<796) ∨ (797≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step91ExitFv_Outgoing : rowsOwned s2Step91ExitGvAfter [s2Step91ExitFvOut,s2Step91ExitGvOut] :=
  hmrRows_owned_drop s2Step91ExitGvAfter [s2Step91ExitGOut,s2Step91ExitFOut,s2Step91ExitFvOut,s2Step91ExitGvOut] 2 s2Step91ExitBank_outgoingOwned

private theorem s2Step91ExitFv_distinct : (s2Step91ExitFvRow.sign::s2Step91ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step91ExitFv_owned : (s2Step91ExitFvRow.sign::s2Step91ExitFvRow.payload).toFinset⊆s2Step91ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step91ExitFvBefore (fun q => (0≤q ∧ q<222) ∨ (223≤q ∧ q<734) ∨ (735≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<796) ∨ (797≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step91ExitFv_reserved : s2Step91ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step91ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step91ExitFv_checked : planRowResizeLog s2Step91ExitFvBefore s2Step91ExitFvRow 59 []=
    some (s2Step91ExitFvAfter,s2Step91ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step91ExitFvBefore s2Step91ExitFvAfter s2Step91ExitFvRow 59 []
    s2Step91ExitFv_distinct s2Step91ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step91ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step91ExitFvRow.payload++[]) s2Step91ExitFvRow.sign=s2Step91ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step91ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<876)),Finset.filter_subset _ _⟩

private theorem s2Step91ExitG_Incoming : rowsOwned s2Step91ExitGBefore [s2Step91ExitGRow,s2Step91ExitFRow,s2Step91ExitFvRow,s2Step91ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step91ExitGRow,s2Step91ExitFRow,s2Step91ExitFvRow,s2Step91ExitGvRow] 0 s2Step91ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step91ExitGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step91ExitG_Outgoing : rowsOwned s2Step91ExitGvAfter [s2Step91ExitGOut,s2Step91ExitFOut,s2Step91ExitFvOut,s2Step91ExitGvOut] :=
  hmrRows_owned_drop s2Step91ExitGvAfter [s2Step91ExitGOut,s2Step91ExitFOut,s2Step91ExitFvOut,s2Step91ExitGvOut] 0 s2Step91ExitBank_outgoingOwned

private theorem s2Step91ExitG_distinct : (s2Step91ExitGRow.sign::s2Step91ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step91ExitG_owned : (s2Step91ExitGRow.sign::s2Step91ExitGRow.payload).toFinset⊆s2Step91ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step91ExitGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step91ExitG_retired : s2Step91ExitGBefore.retireSet s2Step91ExitGExtra.toFinset=s2Step91ExitGAfter := by
  unfold Arena.retireSet s2Step91ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step91ExitGBefore,s2Step91ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step91ExitG_checked : planRowResizeLog s2Step91ExitGBefore s2Step91ExitGRow 222 []=
    some (s2Step91ExitGAfter,s2Step91ExitGOut,shrinkRow 769 s2Step91ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step91ExitGBefore s2Step91ExitGRow 222 s2Step91ExitG_distinct s2Step91ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step91ExitGRow.payload.take 222) s2Step91ExitGRow.sign=s2Step91ExitGOut := by decide +kernel
  have hi : s2Step91ExitGRow.payload.drop 222=s2Step91ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step91ExitG_retired] at result
  exact result

private def s2Step91ExitGvBefore : Arena := s2Step91ExitFAfter

private theorem s2Step91ExitGv_Incoming : rowsOwned s2Step91ExitGvBefore [s2Step91ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step91ExitGRow,s2Step91ExitFRow,s2Step91ExitFvRow,s2Step91ExitGvRow] 3 s2Step91ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step91ExitGvBefore (fun q => (0≤q ∧ q<222) ∨ (223≤q ∧ q<734) ∨ (735≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<796) ∨ (797≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step91ExitGv_Outgoing : rowsOwned s2Step91ExitGvAfter [s2Step91ExitGvOut] :=
  hmrRows_owned_drop s2Step91ExitGvAfter [s2Step91ExitGOut,s2Step91ExitFOut,s2Step91ExitFvOut,s2Step91ExitGvOut] 3 s2Step91ExitBank_outgoingOwned

private theorem s2Step91ExitGv_distinct : (s2Step91ExitGvRow.sign::s2Step91ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step91ExitGv_owned : (s2Step91ExitGvRow.sign::s2Step91ExitGvRow.payload).toFinset⊆s2Step91ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step91ExitGvBefore (fun q => (0≤q ∧ q<222) ∨ (223≤q ∧ q<734) ∨ (735≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<796) ∨ (797≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step91ExitGv_reserved : s2Step91ExitGvBefore.reserve (∅ : Finset Wire)=some s2Step91ExitGvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step91ExitGv_checked : planRowResizeLog s2Step91ExitGvBefore s2Step91ExitGvRow 59 []=
    some (s2Step91ExitGvAfter,s2Step91ExitGvOut,growRow 771 []) := by
  have result := planRowResizeLog_of_growth s2Step91ExitGvBefore s2Step91ExitGvAfter s2Step91ExitGvRow 59 []
    s2Step91ExitGv_distinct s2Step91ExitGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step91ExitGv_reserved
  have rowEq : WindowRow.mk (s2Step91ExitGvRow.payload++[]) s2Step91ExitGvRow.sign=s2Step91ExitGvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step91ExitBank_rows : planWindowRowsLog s2Step91ExitGBefore [(s2Step91ExitGRow,222),(s2Step91ExitFRow,222),(s2Step91ExitFvRow,59),(s2Step91ExitGvRow,59)] [[],[],[],[]]=
    some (s2Step91ExitGvAfter,[s2Step91ExitGOut,s2Step91ExitFOut,s2Step91ExitFvOut,s2Step91ExitGvOut],(shrinkRow 769 s2Step91ExitGExtra ++ (shrinkRow 768 s2Step91ExitFExtra ++ (growRow 770 [] ++ (growRow 771 [] ++ []))))) := by
  have h4 : planWindowRowsLog s2Step91ExitGvAfter [] []=some (s2Step91ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step91ExitGvBefore s2Step91ExitGvAfter s2Step91ExitGvAfter
    s2Step91ExitGvRow s2Step91ExitGvOut 59 [] [] [] []
    (growRow 771 []) ([]) s2Step91ExitGv_Incoming s2Step91ExitGv_checked h4 s2Step91ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step91ExitFvBefore s2Step91ExitFvAfter s2Step91ExitGvAfter
    s2Step91ExitFvRow s2Step91ExitFvOut 59 [] [(s2Step91ExitGvRow,59)] [[]] [s2Step91ExitGvOut]
    (growRow 770 []) ((growRow 771 [] ++ [])) s2Step91ExitFv_Incoming s2Step91ExitFv_checked h3 s2Step91ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step91ExitFBefore s2Step91ExitFAfter s2Step91ExitGvAfter
    s2Step91ExitFRow s2Step91ExitFOut 222 [] [(s2Step91ExitFvRow,59),(s2Step91ExitGvRow,59)] [[],[]] [s2Step91ExitFvOut,s2Step91ExitGvOut]
    (shrinkRow 768 s2Step91ExitFExtra) ((growRow 770 [] ++ (growRow 771 [] ++ []))) s2Step91ExitF_Incoming s2Step91ExitF_checked h2 s2Step91ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step91ExitGBefore s2Step91ExitGAfter s2Step91ExitGvAfter
    s2Step91ExitGRow s2Step91ExitGOut 222 [] [(s2Step91ExitFRow,222),(s2Step91ExitFvRow,59),(s2Step91ExitGvRow,59)] [[],[],[]] [s2Step91ExitFOut,s2Step91ExitFvOut,s2Step91ExitGvOut]
    (shrinkRow 769 s2Step91ExitGExtra) ((shrinkRow 768 s2Step91ExitFExtra ++ (growRow 770 [] ++ (growRow 771 [] ++ [])))) s2Step91ExitG_Incoming s2Step91ExitG_checked h1 s2Step91ExitG_Outgoing
  exact h0

private theorem s2Step91ExitBank_checked : compileHmrBankResizeLog .exit s2Step91ExitGBefore ⟨s2Step91ExitFRow,s2Step91ExitGRow,s2Step91ExitFvRow,s2Step91ExitGvRow⟩ ⟨222,222,59,59⟩ [[],[],[],[]]=
    some (s2Step91ExitGvAfter,⟨s2Step91ExitFOut,s2Step91ExitGOut,s2Step91ExitFvOut,s2Step91ExitGvOut⟩,(shrinkRow 769 s2Step91ExitGExtra ++ (shrinkRow 768 s2Step91ExitFExtra ++ (growRow 770 [] ++ (growRow 771 [] ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step91ExitBank_rows]
  rfl

private theorem s2Step91Add0_apart : Disjoint s2Step91Add0Arena.live s2Step91Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step91Add0Arena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step91Add0_card : s2Step91Add0Arena.live.card=869 := by
  decide +kernel

private theorem s2Step91Add0_borrowed : s2Step91Add0Arena.checkBorrow (hmrHybridCount s2Step91Add0Arena s2Step91Add0B.length) s2Step91Add0Work=some s2Step91Add0During := by
  have len : s2Step91Add0Work.length=hmrHybridCount s2Step91Add0Arena s2Step91Add0B.length := by
    rw [hmrHybridCount,s2Step91Add0_card]
    decide +kernel
  have nd : s2Step91Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step91Add0Arena s2Step91Add0During s2Step91Add0Work.toFinset s2Step91Add0_bounded s2Step91Add0_apart rfl

private theorem s2Step91Add0_distinct : (779::793::844::(s2Step91Add0A++s2Step91Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step91Add0_owned : (779::793::844::(s2Step91Add0A++s2Step91Add0B)).toFinset⊆s2Step91Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step91Add0Arena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step91Add0_checked : compileHmrHybridCinLog s2Step91Add0Arena 793 779 844 s2Step91Add0A s2Step91Add0B s2Step91Add0Work=some s2Step91Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step91Add0Arena s2Step91Add0During 793 779 844 s2Step91Add0A s2Step91Add0B s2Step91Add0Work
    (by decide +kernel) (by decide +kernel) s2Step91Add0_distinct
    (fun q hq => s2Step91Add0_owned (List.mem_toFinset.mpr hq)) s2Step91Add0_borrowed

private theorem s2Step91Add1_apart : Disjoint s2Step91Add1Arena.live s2Step91Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step91Add1Arena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step91Add1_card : s2Step91Add1Arena.live.card=869 := by
  decide +kernel

private theorem s2Step91Add1_borrowed : s2Step91Add1Arena.checkBorrow (hmrHybridCount s2Step91Add1Arena s2Step91Add1B.length) s2Step91Add1Work=some s2Step91Add1During := by
  have len : s2Step91Add1Work.length=hmrHybridCount s2Step91Add1Arena s2Step91Add1B.length := by
    rw [hmrHybridCount,s2Step91Add1_card]
    decide +kernel
  have nd : s2Step91Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step91Add1Arena s2Step91Add1During s2Step91Add1Work.toFinset s2Step91Add1_bounded s2Step91Add1_apart rfl

private theorem s2Step91Add1_distinct : (779::793::844::(s2Step91Add1A++s2Step91Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step91Add1_owned : (779::793::844::(s2Step91Add1A++s2Step91Add1B)).toFinset⊆s2Step91Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step91Add1Arena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step91Add1_checked : compileHmrHybridCinLog s2Step91Add1Arena 793 779 844 s2Step91Add1A s2Step91Add1B s2Step91Add1Work=some s2Step91Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step91Add1Arena s2Step91Add1During 793 779 844 s2Step91Add1A s2Step91Add1B s2Step91Add1Work
    (by decide +kernel) (by decide +kernel) s2Step91Add1_distinct
    (fun q hq => s2Step91Add1_owned (List.mem_toFinset.mpr hq)) s2Step91Add1_borrowed

private theorem s2Step91F4_apart : Disjoint (s2Step91Add0A++s2Step91Add0B).toFinset (s2Step91Add1A++s2Step91Add1B).toFinset := by
  have nd : ((s2Step91Add0A++s2Step91Add0B)++(s2Step91Add1A++s2Step91Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step91F4_carry : s2Step91F4FlagArena.checkBorrow 1 [844]=some s2Step91Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step91F4FlagArena,s2Step91HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step91F4FlagArena,s2Step91HeadFvAfter,s2Step91Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step91F4_distinct : (786::793::779::844::((s2Step91Add0A++s2Step91Add1A)++(s2Step91Add0B++s2Step91Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step91F4_flag : s2Step91HeadFvAfter.checkBorrow 1 [779]=some s2Step91F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step91HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step91F4_owned : (786::793::((s2Step91Add0A++s2Step91Add1A)++(s2Step91Add0B++s2Step91Add1B))).toFinset⊆s2Step91HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step91HeadFvAfter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step91F4_checked : compileHmrHybridF4Log s2Step91HeadFvAfter 786 793 s2Step91Add0A s2Step91Add0B s2Step91Add1A s2Step91Add1B [779] [844] s2Step91Add0Work s2Step91Add1Work=some s2Step91F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step91HeadFvAfter s2Step91F4FlagArena s2Step91Add0Arena s2Step91Add0During s2Step91Add1During 786 793
    s2Step91Add0A s2Step91Add0B s2Step91Add1A s2Step91Add1B [779] [844] s2Step91Add0Work s2Step91Add1Work
    (fun q hq => s2Step91F4_owned (List.mem_toFinset.mpr hq)) s2Step91F4_flag s2Step91F4_carry
    s2Step91F4_distinct s2Step91F4_apart s2Step91Add0_checked s2Step91Add1_checked

private theorem s2Step91Front_branch : s2Step91FrontSigmaArena.checkBorrow 1 [793]=some s2Step91HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step91FrontSigmaArena,s2Step91EntryGvAfter,s2Step91EntryFBefore,arenaWires]
  · ext q
    simp only [s2Step91FrontSigmaArena,s2Step91EntryGvAfter,s2Step91EntryFBefore,s2Step91HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step91Front_entry : HmrFrontEntryValid s2Step91EntryFBefore s2Step91FrontBank 223 58 ⟨222,222,59,59⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step91FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step91EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step91EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (794≤q ∧ q<796) ∨ (797≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<876)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step91FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step91Front_sigma : s2Step91EntryGvAfter.checkBorrow 1 [786]=some s2Step91FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step91EntryGvAfter,s2Step91EntryFBefore,arenaWires]
  · rfl

private def s2Step91HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<785) ∨ (786≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step91HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step91HeadFBefore : Arena := s2Step91HeadGAfter

private def s2Step91HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734],768⟩

private def s2Step91HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845],770⟩

private def s2Step91HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222],769⟩

private def s2Step91HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789],771⟩

private theorem s2Step91HeadBank_incomingDistinct : ([s2Step91HeadGRow,s2Step91HeadFRow,s2Step91HeadGvRow,s2Step91HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step91HeadF_Incoming : rowsOwned s2Step91HeadFBefore [s2Step91HeadFRow,s2Step91HeadGvRow,s2Step91HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step91HeadGRow,s2Step91HeadFRow,s2Step91HeadGvRow,s2Step91HeadFvRow] 1 s2Step91HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step91HeadFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step91HeadBank_outgoingOwned : rowsOwned s2Step91HeadFvAfter [s2Step91HeadGOut,s2Step91HeadFOut,s2Step91HeadGvOut,s2Step91HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step91HeadFvAfter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step91HeadF_Outgoing : rowsOwned s2Step91HeadFvAfter [s2Step91HeadFOut,s2Step91HeadGvOut,s2Step91HeadFvOut] :=
  hmrRows_owned_drop s2Step91HeadFvAfter [s2Step91HeadGOut,s2Step91HeadFOut,s2Step91HeadGvOut,s2Step91HeadFvOut] 1 s2Step91HeadBank_outgoingOwned

private theorem s2Step91HeadF_distinct : (s2Step91HeadFRow.sign::s2Step91HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step91HeadF_owned : (s2Step91HeadFRow.sign::s2Step91HeadFRow.payload).toFinset⊆s2Step91HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step91HeadFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step91HeadF_reserved : s2Step91HeadFBefore.reserve s2Step91HeadFFresh.toFinset=some s2Step91HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step91HeadFFresh,arenaWires]
  · norm_num [s2Step91HeadFBefore,s2Step91HeadGAfter,s2Step91HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step91HeadFAfter,s2Step91HeadFBefore,s2Step91HeadGAfter,s2Step91HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step91HeadF_checked : planRowResizeLog s2Step91HeadFBefore s2Step91HeadFRow 224 s2Step91HeadFFresh=
    some (s2Step91HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 781],768⟩,growRow 768 s2Step91HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step91HeadFBefore s2Step91HeadFAfter s2Step91HeadFRow 224 s2Step91HeadFFresh
    s2Step91HeadF_distinct s2Step91HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step91HeadF_reserved
  have rowEq : WindowRow.mk (s2Step91HeadFRow.payload++s2Step91HeadFFresh) s2Step91HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 781],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step91HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<785) ∨ (786≤q ∧ q<816) ∨ (817≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step91HeadFvBefore : Arena := s2Step91HeadGvAfter

private theorem s2Step91HeadFv_Incoming : rowsOwned s2Step91HeadFvBefore [s2Step91HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step91HeadGRow,s2Step91HeadFRow,s2Step91HeadGvRow,s2Step91HeadFvRow] 3 s2Step91HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step91HeadFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<785) ∨ (786≤q ∧ q<816) ∨ (817≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step91HeadFv_Outgoing : rowsOwned s2Step91HeadFvAfter [s2Step91HeadFvOut] :=
  hmrRows_owned_drop s2Step91HeadFvAfter [s2Step91HeadGOut,s2Step91HeadFOut,s2Step91HeadGvOut,s2Step91HeadFvOut] 3 s2Step91HeadBank_outgoingOwned

private theorem s2Step91HeadFv_distinct : (s2Step91HeadFvRow.sign::s2Step91HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step91HeadFv_owned : (s2Step91HeadFvRow.sign::s2Step91HeadFvRow.payload).toFinset⊆s2Step91HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step91HeadFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<785) ∨ (786≤q ∧ q<816) ∨ (817≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step91HeadFv_reserved : s2Step91HeadFvBefore.reserve s2Step91HeadFvFresh.toFinset=some s2Step91HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step91HeadFvFresh,arenaWires]
  · norm_num [s2Step91HeadFvBefore,s2Step91HeadGvAfter,s2Step91HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step91HeadFvAfter,s2Step91HeadFvBefore,s2Step91HeadGvAfter,s2Step91HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step91HeadFv_checked : planRowResizeLog s2Step91HeadFvBefore s2Step91HeadFvRow 59 s2Step91HeadFvFresh=
    some (s2Step91HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816],770⟩,growRow 770 s2Step91HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step91HeadFvBefore s2Step91HeadFvAfter s2Step91HeadFvRow 59 s2Step91HeadFvFresh
    s2Step91HeadFv_distinct s2Step91HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step91HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step91HeadFvRow.payload++s2Step91HeadFvFresh) s2Step91HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step91HeadG_Incoming : rowsOwned s2Step91HeadGBefore [s2Step91HeadGRow,s2Step91HeadFRow,s2Step91HeadGvRow,s2Step91HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step91HeadGRow,s2Step91HeadFRow,s2Step91HeadGvRow,s2Step91HeadFvRow] 0 s2Step91HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step91HeadGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<796) ∨ (797≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step91HeadG_Outgoing : rowsOwned s2Step91HeadFvAfter [s2Step91HeadGOut,s2Step91HeadFOut,s2Step91HeadGvOut,s2Step91HeadFvOut] :=
  hmrRows_owned_drop s2Step91HeadFvAfter [s2Step91HeadGOut,s2Step91HeadFOut,s2Step91HeadGvOut,s2Step91HeadFvOut] 0 s2Step91HeadBank_outgoingOwned

private theorem s2Step91HeadG_distinct : (s2Step91HeadGRow.sign::s2Step91HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step91HeadG_owned : (s2Step91HeadGRow.sign::s2Step91HeadGRow.payload).toFinset⊆s2Step91HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step91HeadGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<796) ∨ (797≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step91HeadG_reserved : s2Step91HeadGBefore.reserve s2Step91HeadGFresh.toFinset=some s2Step91HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step91HeadGFresh,arenaWires]
  · norm_num [s2Step91HeadGBefore,s2Step91HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step91HeadGAfter,s2Step91HeadGBefore,s2Step91HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step91HeadG_checked : planRowResizeLog s2Step91HeadGBefore s2Step91HeadGRow 224 s2Step91HeadGFresh=
    some (s2Step91HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 796],769⟩,growRow 769 s2Step91HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step91HeadGBefore s2Step91HeadGAfter s2Step91HeadGRow 224 s2Step91HeadGFresh
    s2Step91HeadG_distinct s2Step91HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step91HeadG_reserved
  have rowEq : WindowRow.mk (s2Step91HeadGRow.payload++s2Step91HeadGFresh) s2Step91HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 796],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step91HeadGvBefore : Arena := s2Step91HeadFAfter

private theorem s2Step91HeadGv_Incoming : rowsOwned s2Step91HeadGvBefore [s2Step91HeadGvRow,s2Step91HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step91HeadGRow,s2Step91HeadFRow,s2Step91HeadGvRow,s2Step91HeadFvRow] 2 s2Step91HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step91HeadGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<785) ∨ (786≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step91HeadGv_Outgoing : rowsOwned s2Step91HeadFvAfter [s2Step91HeadGvOut,s2Step91HeadFvOut] :=
  hmrRows_owned_drop s2Step91HeadFvAfter [s2Step91HeadGOut,s2Step91HeadFOut,s2Step91HeadGvOut,s2Step91HeadFvOut] 2 s2Step91HeadBank_outgoingOwned

private theorem s2Step91HeadGv_distinct : (s2Step91HeadGvRow.sign::s2Step91HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step91HeadGv_owned : (s2Step91HeadGvRow.sign::s2Step91HeadGvRow.payload).toFinset⊆s2Step91HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step91HeadGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<785) ∨ (786≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step91HeadGv_reserved : s2Step91HeadGvBefore.reserve s2Step91HeadGvFresh.toFinset=some s2Step91HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step91HeadGvFresh,arenaWires]
  · norm_num [s2Step91HeadGvBefore,s2Step91HeadFAfter,s2Step91HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step91HeadGvAfter,s2Step91HeadGvBefore,s2Step91HeadFAfter,s2Step91HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step91HeadGv_checked : planRowResizeLog s2Step91HeadGvBefore s2Step91HeadGvRow 59 s2Step91HeadGvFresh=
    some (s2Step91HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836],771⟩,growRow 771 s2Step91HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step91HeadGvBefore s2Step91HeadGvAfter s2Step91HeadGvRow 59 s2Step91HeadGvFresh
    s2Step91HeadGv_distinct s2Step91HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step91HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step91HeadGvRow.payload++s2Step91HeadGvFresh) s2Step91HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step91HeadBank_rows : planWindowRowsLog s2Step91HeadGBefore [(s2Step91HeadGRow,224),(s2Step91HeadFRow,224),(s2Step91HeadGvRow,59),(s2Step91HeadFvRow,59)] [s2Step91HeadGFresh,s2Step91HeadFFresh,s2Step91HeadGvFresh,s2Step91HeadFvFresh]=
    some (s2Step91HeadFvAfter,[s2Step91HeadGOut,s2Step91HeadFOut,s2Step91HeadGvOut,s2Step91HeadFvOut],(growRow 769 s2Step91HeadGFresh ++ (growRow 768 s2Step91HeadFFresh ++ (growRow 771 s2Step91HeadGvFresh ++ (growRow 770 s2Step91HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step91HeadFvAfter [] []=some (s2Step91HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step91HeadFvBefore s2Step91HeadFvAfter s2Step91HeadFvAfter
    s2Step91HeadFvRow s2Step91HeadFvOut 59 s2Step91HeadFvFresh [] [] []
    (growRow 770 s2Step91HeadFvFresh) ([]) s2Step91HeadFv_Incoming s2Step91HeadFv_checked h4 s2Step91HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step91HeadGvBefore s2Step91HeadGvAfter s2Step91HeadFvAfter
    s2Step91HeadGvRow s2Step91HeadGvOut 59 s2Step91HeadGvFresh [(s2Step91HeadFvRow,59)] [s2Step91HeadFvFresh] [s2Step91HeadFvOut]
    (growRow 771 s2Step91HeadGvFresh) ((growRow 770 s2Step91HeadFvFresh ++ [])) s2Step91HeadGv_Incoming s2Step91HeadGv_checked h3 s2Step91HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step91HeadFBefore s2Step91HeadFAfter s2Step91HeadFvAfter
    s2Step91HeadFRow s2Step91HeadFOut 224 s2Step91HeadFFresh [(s2Step91HeadGvRow,59),(s2Step91HeadFvRow,59)] [s2Step91HeadGvFresh,s2Step91HeadFvFresh] [s2Step91HeadGvOut,s2Step91HeadFvOut]
    (growRow 768 s2Step91HeadFFresh) ((growRow 771 s2Step91HeadGvFresh ++ (growRow 770 s2Step91HeadFvFresh ++ []))) s2Step91HeadF_Incoming s2Step91HeadF_checked h2 s2Step91HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step91HeadGBefore s2Step91HeadGAfter s2Step91HeadFvAfter
    s2Step91HeadGRow s2Step91HeadGOut 224 s2Step91HeadGFresh [(s2Step91HeadFRow,224),(s2Step91HeadGvRow,59),(s2Step91HeadFvRow,59)] [s2Step91HeadFFresh,s2Step91HeadGvFresh,s2Step91HeadFvFresh] [s2Step91HeadFOut,s2Step91HeadGvOut,s2Step91HeadFvOut]
    (growRow 769 s2Step91HeadGFresh) ((growRow 768 s2Step91HeadFFresh ++ (growRow 771 s2Step91HeadGvFresh ++ (growRow 770 s2Step91HeadFvFresh ++ [])))) s2Step91HeadG_Incoming s2Step91HeadG_checked h1 s2Step91HeadG_Outgoing
  exact h0

private theorem s2Step91HeadBank_checked : compileHmrBankResizeLog .headroom s2Step91HeadGBefore ⟨s2Step91HeadFRow,s2Step91HeadGRow,s2Step91HeadFvRow,s2Step91HeadGvRow⟩ ⟨224,224,59,59⟩ [s2Step91HeadGFresh,s2Step91HeadFFresh,s2Step91HeadGvFresh,s2Step91HeadFvFresh]=
    some (s2Step91HeadFvAfter,⟨s2Step91HeadFOut,s2Step91HeadGOut,s2Step91HeadFvOut,s2Step91HeadGvOut⟩,(growRow 769 s2Step91HeadGFresh ++ (growRow 768 s2Step91HeadFFresh ++ (growRow 771 s2Step91HeadGvFresh ++ (growRow 770 s2Step91HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step91HeadBank_rows]
  rfl

private theorem s2Step91Front_checked : compileHmrSourceFrontLog s2Step91EntryFBefore s2Step91FrontBank 223 58 ⟨222,222,59,59⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step91FrontLog=some s2Step91FrontPlan := by
  have pairEq : s2Step91FrontPair=⟨s2Step91HeadFRow,s2Step91HeadGRow,s2Step91HeadFvRow,s2Step91HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step91FrontHead=⟨s2Step91ExitFRow,s2Step91ExitGRow,s2Step91ExitFvRow,s2Step91ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step91Add0A=s2Step91FrontHead.f.wires := by decide +kernel
  have gEq : s2Step91Add0B=s2Step91FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step91Add1A=s2Step91FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step91Add1B=s2Step91FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step91EntryFBefore s2Step91FrontBank 223 58 ⟨222,222,59,59⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step91FrontLog s2Step91FrontPlan
  · exact s2Step91Front_entry
  · exact s2Step91EntryBank_checked
  · exact s2Step91Front_sigma
  · rfl
  · exact s2Step91Front_branch
  · rfl
  · simpa only [s2Step91FrontPlan,pairEq] using s2Step91HeadBank_checked
  · simpa only [s2Step91FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step91F4_checked
  · exact s2Step91Counter_checked
  · rfl
  · simpa only [s2Step91FrontPlan,headEq] using s2Step91ExitBank_checked

private theorem s2Step91Complete_explicit_checked : compileHmrEarlyStepLog s2Step91EntryFBefore s2Step91FrontBank 223 58 ⟨222,222,59,59⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873] 34 s2Step91CompleteLog=some s2Step91CompletePlan := by
  let Q := s2Step91EarlyControlPlan
  have hq := s2Step91EarlyControl_plan_checked
  have fv1 : s2Step91CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step91CompleteOut.fv.payload[2]?.getD s2Step91CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step91CompleteOut.fv.payload[3]?.getD s2Step91CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step91CompleteOut.fv.payload[4]?.getD s2Step91CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step91EntryFBefore s2Step91EarlyControlArena s2Step91FrontBank 223 58 ⟨222,222,59,59⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873] 34 s2Step91CompleteLog s2Step91FrontPlan Q
    s2Step91Front_checked s2Step91Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step91Complete_owned s2Step91Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step91EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873] 777 786 s2Step91CompleteOut.fv.second (s2Step91CompleteOut.fv.payload[2]?.getD s2Step91CompleteOut.fv.sign) (s2Step91CompleteOut.fv.payload[3]?.getD s2Step91CompleteOut.fv.sign) (s2Step91CompleteOut.fv.payload[4]?.getD s2Step91CompleteOut.fv.sign) 793 34 s2Step91EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep91Arena : Arena := s2Step91EntryFBefore
def s2PrivateStep91Bank : WindowBank := s2Step91FrontBank
def s2PrivateStep91Spec : HmrSourceWalkStepLog := ⟨223,58,⟨222,222,59,59⟩,34,.early s2Step91CompleteLog⟩
def s2PrivateStep91Plan : HmrSourceStepPlan := .early s2Step91CompletePlan
theorem s2PrivateStep91_source : s2PrivateStep91Spec=s2ObservedLogs80[11] := rfl
theorem s2PrivateStep91_checked : compileHmrSourceStepLog s2PrivateStep91Arena s2PrivateStep91Bank
    s2PrivateStep91Spec.fgWidth s2PrivateStep91Spec.vWidth s2PrivateStep91Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873]
    6 498 91 s2PrivateStep91Spec.need none s2PrivateStep91Spec.log=some s2PrivateStep91Plan := by
  change compileHmrSourceStepLog s2Step91EntryFBefore s2Step91FrontBank 223 58 ⟨222,222,59,59⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873] 6 498 91 34 none (.early s2Step91CompleteLog)=some (.early s2Step91CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 91<498)]
  rw [s2Step91Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
