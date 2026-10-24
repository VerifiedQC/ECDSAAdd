import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep96
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

private def s2Step98CompleteMoves : List (Wire × Wire) := [(806,218)]

private def s2Step98EarlyControlLog : HmrEarlyControlLog := ⟨[806, 794, 846, 786, 781],[802],[793],[849, 851, 867, 877, 878, 879],[]⟩

private def s2Step98FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [781, 802], [], [791, 794]],[[793], [786], [846], [847]],[[], [], [], []]⟩,[785],[799],[849],[851],[867, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[867, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[849, 851, 867, 877]⟩

private def s2Step98CompleteLog : HmrEarlyStepLog := ⟨s2Step98FrontLog,s2Step98CompleteMoves,s2Step98EarlyControlLog⟩

private def s2Step98ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732],768⟩

private def s2Step98ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847],770⟩

private def s2Step98ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217],769⟩

private def s2Step98ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791],771⟩

private def s2Step98FrontOut : WindowBank := ⟨s2Step98ExitFOut,s2Step98ExitGOut,s2Step98ExitFvOut,s2Step98ExitGvOut⟩

private def s2Step98CompleteOut : WindowBank := s2Step98FrontOut.repacked s2Step98CompleteMoves

private def s2Step98EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<786) ∨ (787≤q ∧ q<793) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step98EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step98EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step98EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step98EarlyControlPositiveArena,[802],s2Step98EarlyControlEqualityArena,[793],⟨⟨785,false⟩,[⟨⟨802,false⟩,793⟩]⟩⟩

private def s2Step98EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<880)),Finset.filter_subset _ _⟩

private def s2Step98EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<880)),Finset.filter_subset _ _⟩

private def s2Step98EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<786) ∨ (787≤q ∧ q<793) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step98EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step98EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step98EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<802) ∨ (803≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step98EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,806⟩,⟨⟨774,false⟩,794⟩,⟨⟨775,false⟩,846⟩,⟨⟨776,false⟩,786⟩,⟨⟨777,false⟩,781⟩]⟩

private def s2Step98EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step98EarlyControlZeroArena,s2Step98EarlyControlZeroPlan,s2Step98EarlyControlClassPlan,s2Step98EarlyControlFlagArena,s2Step98EarlyControlFittedArena,s2Step98EarlyControlHistoryArena,s2Step98EarlyControlSigmaArena,s2Step98EarlyControlOutputArena,s2Step98EarlyControlLog⟩

private def s2Step98CounterWork : List Wire := [849, 851, 867, 877]

private theorem s2Step98Counter_bounded : s2Step98CounterWork.toFinset⊆arenaWires := by norm_num [s2Step98CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step98HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step98CounterDuring : Arena := ⟨s2Step98HeadFvAfter.live∪s2Step98CounterWork.toFinset,Finset.union_subset s2Step98HeadFvAfter.bounded s2Step98Counter_bounded⟩

private def s2Step98EntryFFresh : List Wire := []

private def s2Step98EntryFvFresh : List Wire := []

private def s2Step98EntryGFresh : List Wire := [781, 802]

private def s2Step98EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step98EntryGvFresh : List Wire := [791, 794]

private def s2Step98ExitFExtra : List Wire := [786]

private def s2Step98ExitGExtra : List Wire := [218, 781, 802, 793]

private def s2Step98ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<218) ∨ (219≤q ∧ q<781) ∨ (782≤q ∧ q<786) ∨ (787≤q ∧ q<793) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step98ExitGvExtra : List Wire := [794, 846]

private def s2Step98Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step98Add0Work : List Wire := [867, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step98Add0_bounded : s2Step98Add0Work.toFinset⊆arenaWires := by
  have h : s2Step98Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step98Add0During : Arena := ⟨s2Step98Add0Arena.live∪s2Step98Add0Work.toFinset,Finset.union_subset s2Step98Add0Arena.bounded s2Step98Add0_bounded⟩

private def s2Step98Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step98Add1Work : List Wire := [867, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step98Add1_bounded : s2Step98Add1Work.toFinset⊆arenaWires := by
  have h : s2Step98Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step98Add1During : Arena := ⟨s2Step98Add1Arena.live∪s2Step98Add1Work.toFinset,Finset.union_subset s2Step98Add1Arena.bounded s2Step98Add1_bounded⟩

private def s2Step98F4FlagArena : Arena := ⟨s2Step98HeadFvAfter.live∪{849},Finset.union_subset s2Step98HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step98F4Plan : HmrHybridF4Plan := ⟨s2Step98F4FlagArena,[849],s2Step98Add0Arena,[851],s2Step98Add0During,s2Step98Add0Work,s2Step98Add1During,s2Step98Add1Work⟩

private def s2Step98HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 786],768⟩

private def s2Step98HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847],770⟩

private def s2Step98HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 781, 802, 793],769⟩

private def s2Step98HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 794, 846],771⟩

private def s2Step98FrontHead : WindowBank := ⟨s2Step98HeadFOut,s2Step98HeadGOut,s2Step98HeadFvOut,s2Step98HeadGvOut⟩

private def s2Step98EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732],768⟩

private def s2Step98EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839],770⟩

private def s2Step98EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 781, 802],769⟩

private def s2Step98EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 794],771⟩

private def s2Step98FrontPair : WindowBank := ⟨s2Step98EntryFOut,s2Step98EntryGOut,s2Step98EntryFvOut,s2Step98EntryGvOut⟩

private def s2Step98FrontSigmaArena : Arena := ⟨s2Step98EntryGvAfter.live∪{785},Finset.union_subset s2Step98EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step98HeadFFresh : List Wire := [786]

private def s2Step98HeadFvFresh : List Wire := [847]

private def s2Step98HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<786) ∨ (787≤q ∧ q<793) ∨ (794≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step98HeadGFresh : List Wire := [793]

private def s2Step98HeadGvFresh : List Wire := [846]

private def s2Step98FrontPlan : HmrSourceFront := ⟨s2Step98EntryGvAfter,s2Step98FrontPair,(growRow 768 s2Step98EntryFFresh ++ (growRow 769 s2Step98EntryGFresh ++ (growRow 770 s2Step98EntryFvFresh ++ (growRow 771 s2Step98EntryGvFresh ++ [])))),s2Step98FrontSigmaArena,[785],s2Step98HeadGBefore,[799],
  s2Step98HeadFvAfter,s2Step98FrontHead,(growRow 769 s2Step98HeadGFresh ++ (growRow 768 s2Step98HeadFFresh ++ (growRow 771 s2Step98HeadGvFresh ++ (growRow 770 s2Step98HeadFvFresh ++ [])))),s2Step98F4Plan,s2Step98CounterDuring,s2Step98CounterWork,s2Step98ExitGvAfter,s2Step98FrontOut,(shrinkRow 769 s2Step98ExitGExtra ++ (shrinkRow 768 s2Step98ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step98ExitGvExtra ++ []))))⟩

private def s2Step98CompletePlan : HmrEarlyStepPlan := ⟨s2Step98FrontPlan,s2Step98EarlyControlArena,s2Step98EarlyControlPlan,s2Step98CompleteMoves⟩

private theorem s2Step98Complete_apart : List.Disjoint (s2Step98CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [785, 799, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] := by
  have nd : ((s2Step98CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[785, 799, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step98Complete_owned : (s2Step98CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step98EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step98EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<786) ∨ (787≤q ∧ q<793) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private def s2Step98CompleteMoveArena : Arena := ⟨s2Step98ExitGvAfter.live∪{218},Finset.union_subset s2Step98ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step98Complete_repack : s2Step98ExitGvAfter.checkRepack s2Step98CompleteMoves=some s2Step98EarlyControlArena := by
  have owned : 806∈s2Step98ExitGvAfter.live := by norm_num [s2Step98ExitGvAfter,arenaWires]
  have reserve : s2Step98ExitGvAfter.reserve {218}=some s2Step98CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step98ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step98CompleteMoveArena.retireSet {806}=s2Step98EarlyControlArena := by
    unfold Arena.retireSet s2Step98EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step98CompleteMoveArena,s2Step98ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step98CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step98CompleteMoveArena.retireSet {806}).checkRepack []=some s2Step98EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step98EarlyControl_branchOwned : ([799] : List Wire).toFinset⊆s2Step98EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step98EarlyControlSigmaArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step98EarlyControl_branch : compileHmrBranchRetirement s2Step98EarlyControlSigmaArena 799=some s2Step98EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step98EarlyControl_branchOwned
  · ext q
    simp [s2Step98EarlyControlOutputArena,s2Step98EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step98EarlyControl_classEqualityBorrow : s2Step98EarlyControlPositiveArena.checkBorrow (([785, 802] : List Wire).length-1) s2Step98EarlyControlLog.classWork=some s2Step98EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step98EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step98EarlyControlPositiveArena (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
      decide +kernel
    · ext q
      simp [s2Step98EarlyControlEqualityArena,s2Step98EarlyControlPositiveArena,s2Step98EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step98EarlyControl_classEqualityOwned : ([785, 802] : List Wire).toFinset⊆s2Step98EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step98EarlyControlPositiveArena (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step98EarlyControl_classEquality : compileHmrEqualityLog s2Step98EarlyControlPositiveArena [785, 802] 0 s2Step98EarlyControlLog.classWork=some (s2Step98EarlyControlEqualityArena,s2Step98EarlyControlLog.classWork,s2Step98EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step98EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step98EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step98EarlyControl_classOwned : ([777, 781, 785] : List Wire).toFinset⊆s2Step98EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step98EarlyControlZeroArena (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<802) ∨ (803≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step98EarlyControl_positiveBorrow : s2Step98EarlyControlZeroArena.checkBorrow (1) s2Step98EarlyControlLog.positiveWork=some s2Step98EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step98EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step98EarlyControlZeroArena (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<802) ∨ (803≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
      decide +kernel
    · ext q
      simp [s2Step98EarlyControlPositiveArena,s2Step98EarlyControlZeroArena,s2Step98EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step98EarlyControl_class : compileHmrSourceClassLog s2Step98EarlyControlZeroArena false 777 s2Step98EarlyControlZeroPlan.top 0 785 s2Step98EarlyControlLog.positiveWork s2Step98EarlyControlLog.classWork=some s2Step98EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step98EarlyControlClassPlan s2Step98EarlyControlZeroArena false 777 s2Step98EarlyControlZeroPlan.top 0 785
  constructor
  · decide +kernel
  · exact s2Step98EarlyControl_classOwned
  · exact s2Step98EarlyControl_positiveBorrow
  · exact s2Step98EarlyControl_classEquality

private theorem s2Step98EarlyControl_entryRecordOwned : ([799, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] : List Wire).toFinset⊆s2Step98EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step98EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<786) ∨ (787≤q ∧ q<793) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step98EarlyControl_entrySigmaOwned : ([785, 254] : List Wire).toFinset⊆s2Step98EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step98EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<786) ∨ (787≤q ∧ q<793) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step98EarlyControl_fitBorrow : s2Step98EarlyControlFlagArena.checkBorrow ((34-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] : List Wire).length)) s2Step98EarlyControlLog.recordFresh=some s2Step98EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step98EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step98EarlyControlFlagArena (fun q => (0≤q ∧ q<880)) rfl
      decide +kernel
    · ext q
      simp [s2Step98EarlyControlFittedArena,s2Step98EarlyControlFlagArena,s2Step98EarlyControlLog,arenaWires]

private theorem s2Step98EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] : List Wire).toFinset⊆s2Step98EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step98EarlyControlFlagArena (fun q => (0≤q ∧ q<880)) rfl
  decide +kernel

private theorem s2Step98EarlyControl_fit : compileHmrRecordGrowLog s2Step98EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] 34 s2Step98EarlyControlLog.recordFresh=some s2Step98EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step98EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step98EarlyControl_fitBorrow

private theorem s2Step98EarlyControl_flagsBorrow : s2Step98EarlyControlEqualityArena.checkBorrow (6) s2Step98EarlyControlLog.flagWork=some s2Step98EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step98EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step98EarlyControlEqualityArena (fun q => (0≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
      decide +kernel
    · ext q
      simp [s2Step98EarlyControlFlagArena,s2Step98EarlyControlEqualityArena,s2Step98EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step98EarlyControl_flagsOwned : ([793, 253, 252, 251] : List Wire).toFinset⊆s2Step98EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step98EarlyControlEqualityArena (fun q => (0≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step98EarlyControl_flags : compileHmrFlagsLog s2Step98EarlyControlClassPlan.equalityArena s2Step98EarlyControlClassPlan.equality.top 253 252 251 s2Step98EarlyControlLog.flagWork=some s2Step98EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step98EarlyControl_flagsOwned⟩
  · exact s2Step98EarlyControl_flagsBorrow

private theorem s2Step98EarlyControl_historyBorrow : s2Step98EarlyControlArena.checkBorrow ((34-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] : List Wire).length)) s2Step98EarlyControlLog.recordFresh=some s2Step98EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step98EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step98EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<786) ∨ (787≤q ∧ q<793) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
      decide +kernel
    · ext q
      simp [s2Step98EarlyControlHistoryArena,s2Step98EarlyControlArena,s2Step98EarlyControlLog,arenaWires]

private theorem s2Step98EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] : List Wire).toFinset⊆s2Step98EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step98EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<786) ∨ (787≤q ∧ q<793) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step98EarlyControl_history : compileHmrRecordGrowLog s2Step98EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] 34 s2Step98EarlyControlLog.recordFresh=some s2Step98EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step98EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step98EarlyControl_historyBorrow

private theorem s2Step98EarlyControl_sigmaOwned : ([254, 785] : List Wire).toFinset⊆s2Step98EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step98EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<786) ∨ (787≤q ∧ q<793) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step98EarlyControl_sigmaReleaseOwned : ([785] : List Wire).toFinset⊆s2Step98EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step98EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<786) ∨ (787≤q ∧ q<793) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step98EarlyControl_sigmaRelease : s2Step98EarlyControlHistoryArena.release {785} (fun _ => false)=some s2Step98EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step98EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step98EarlyControlSigmaArena,s2Step98EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step98EarlyControl_sigma : compileHmrSigmaDropLog s2Step98EarlyControlHistoryArena false 0 0 254 785 []=some s2Step98EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step98EarlyControl_sigmaOwned⟩
  · exact s2Step98EarlyControl_sigmaRelease

private theorem s2Step98EarlyControl_zeroBorrow : s2Step98EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step98EarlyControlLog.zeroWork=some s2Step98EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step98EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step98EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<786) ∨ (787≤q ∧ q<793) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
      decide +kernel
    · ext q
      simp [s2Step98EarlyControlZeroArena,s2Step98EarlyControlArena,s2Step98EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step98EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step98EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step98EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<786) ∨ (787≤q ∧ q<793) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step98EarlyControl_zero : compileHmrEqualityLog s2Step98EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step98EarlyControlLog.zeroWork=some (s2Step98EarlyControlZeroArena,s2Step98EarlyControlLog.zeroWork,s2Step98EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step98EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step98EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step98EarlyControl_logged : s2Step98EarlyControlPlan.Logged s2Step98EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] 777 785 254 253 252 251 799 34 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step98EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step98EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step98EarlyControl_zero
  · exact s2Step98EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step98EarlyControl_flags
  · exact s2Step98EarlyControl_fit
  · exact s2Step98EarlyControl_history
  · exact s2Step98EarlyControl_sigma
  · exact s2Step98EarlyControl_branch

private theorem s2Step98EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step98EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] 777 785 254 253 252 251 799 34 s2Step98EarlyControlLog=some s2Step98EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step98EarlyControlPlan s2Step98EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] 777 785 254 253 252 251 799 34 s2Step98EarlyControl_logged

private def s2Step98EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<791) ∨ (792≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step98EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732],768⟩

private def s2Step98EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839],770⟩

private def s2Step98EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218],769⟩

private def s2Step98EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796],771⟩

private def s2Step98FrontBank : WindowBank := ⟨s2Step98EntryFRow,s2Step98EntryGRow,s2Step98EntryFvRow,s2Step98EntryGvRow⟩

private def s2Step98Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 786, 768]

private def s2Step98Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 781, 802, 793, 769]

private def s2Step98Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 770]

private def s2Step98Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 794, 846, 771]

private theorem s2Step98Counter_apart : Disjoint s2Step98HeadFvAfter.live s2Step98CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step98HeadFvAfter (fun q => (0≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step98Counter_borrowed : s2Step98HeadFvAfter.checkBorrow 4 s2Step98CounterWork=some s2Step98CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step98HeadFvAfter s2Step98CounterDuring s2Step98CounterWork.toFinset s2Step98Counter_bounded s2Step98Counter_apart rfl

private theorem s2Step98Counter_owned : (785::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step98HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step98HeadFvAfter (fun q => (0≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step98Counter_checked : compileHmrCounterStepLog s2Step98HeadFvAfter true 785 [772, 773, 774, 775, 776, 777] s2Step98CounterWork=some s2Step98CounterDuring := by
  have owned : ∀q∈785::[772, 773, 774, 775, 776, 777],q∈s2Step98HeadFvAfter.live := fun q hq => s2Step98Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step98Counter_borrowed

private def s2Step98EntryFAfter : Arena := s2Step98EntryFBefore

private theorem s2Step98EntryBank_incomingDistinct : ([s2Step98EntryFRow,s2Step98EntryGRow,s2Step98EntryFvRow,s2Step98EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step98EntryF_Incoming : rowsOwned s2Step98EntryFBefore [s2Step98EntryFRow,s2Step98EntryGRow,s2Step98EntryFvRow,s2Step98EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step98EntryFRow,s2Step98EntryGRow,s2Step98EntryFvRow,s2Step98EntryGvRow] 0 s2Step98EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step98EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<791) ∨ (792≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step98EntryBank_outgoingOwned : rowsOwned s2Step98EntryGvAfter [s2Step98EntryFOut,s2Step98EntryGOut,s2Step98EntryFvOut,s2Step98EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step98EntryGvAfter (fun q => (0≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step98EntryF_Outgoing : rowsOwned s2Step98EntryGvAfter [s2Step98EntryFOut,s2Step98EntryGOut,s2Step98EntryFvOut,s2Step98EntryGvOut] :=
  hmrRows_owned_drop s2Step98EntryGvAfter [s2Step98EntryFOut,s2Step98EntryGOut,s2Step98EntryFvOut,s2Step98EntryGvOut] 0 s2Step98EntryBank_outgoingOwned

private theorem s2Step98EntryF_distinct : (s2Step98EntryFRow.sign::s2Step98EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step98EntryF_owned : (s2Step98EntryFRow.sign::s2Step98EntryFRow.payload).toFinset⊆s2Step98EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step98EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<791) ∨ (792≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step98EntryF_reserved : s2Step98EntryFBefore.reserve s2Step98EntryFFresh.toFinset=some s2Step98EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step98EntryFFresh,arenaWires]
  · norm_num [s2Step98EntryFBefore,s2Step98EntryFFresh,arenaWires]
  · simp only [s2Step98EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step98EntryF_checked : planRowResizeLog s2Step98EntryFBefore s2Step98EntryFRow 221 s2Step98EntryFFresh=
    some (s2Step98EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732],768⟩,growRow 768 s2Step98EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step98EntryFBefore s2Step98EntryFAfter s2Step98EntryFRow 221 s2Step98EntryFFresh
    s2Step98EntryF_distinct s2Step98EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step98EntryF_reserved
  have rowEq : WindowRow.mk (s2Step98EntryFRow.payload++s2Step98EntryFFresh) s2Step98EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step98EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (787≤q ∧ q<791) ∨ (792≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step98EntryFvAfter : Arena := s2Step98EntryGAfter

private def s2Step98EntryFvBefore : Arena := s2Step98EntryGAfter

private theorem s2Step98EntryFv_Incoming : rowsOwned s2Step98EntryFvBefore [s2Step98EntryFvRow,s2Step98EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step98EntryFRow,s2Step98EntryGRow,s2Step98EntryFvRow,s2Step98EntryGvRow] 2 s2Step98EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step98EntryFvBefore (fun q => (0≤q ∧ q<785) ∨ (787≤q ∧ q<791) ∨ (792≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step98EntryFv_Outgoing : rowsOwned s2Step98EntryGvAfter [s2Step98EntryFvOut,s2Step98EntryGvOut] :=
  hmrRows_owned_drop s2Step98EntryGvAfter [s2Step98EntryFOut,s2Step98EntryGOut,s2Step98EntryFvOut,s2Step98EntryGvOut] 2 s2Step98EntryBank_outgoingOwned

private theorem s2Step98EntryFv_distinct : (s2Step98EntryFvRow.sign::s2Step98EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step98EntryFv_owned : (s2Step98EntryFvRow.sign::s2Step98EntryFvRow.payload).toFinset⊆s2Step98EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step98EntryFvBefore (fun q => (0≤q ∧ q<785) ∨ (787≤q ∧ q<791) ∨ (792≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step98EntryFv_reserved : s2Step98EntryFvBefore.reserve s2Step98EntryFvFresh.toFinset=some s2Step98EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step98EntryFvFresh,arenaWires]
  · norm_num [s2Step98EntryFvBefore,s2Step98EntryGAfter,s2Step98EntryFvFresh,arenaWires]
  · simp only [s2Step98EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step98EntryFv_checked : planRowResizeLog s2Step98EntryFvBefore s2Step98EntryFvRow 63 s2Step98EntryFvFresh=
    some (s2Step98EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839],770⟩,growRow 770 s2Step98EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step98EntryFvBefore s2Step98EntryFvAfter s2Step98EntryFvRow 63 s2Step98EntryFvFresh
    s2Step98EntryFv_distinct s2Step98EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step98EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step98EntryFvRow.payload++s2Step98EntryFvFresh) s2Step98EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step98EntryGBefore : Arena := s2Step98EntryFBefore

private theorem s2Step98EntryG_Incoming : rowsOwned s2Step98EntryGBefore [s2Step98EntryGRow,s2Step98EntryFvRow,s2Step98EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step98EntryFRow,s2Step98EntryGRow,s2Step98EntryFvRow,s2Step98EntryGvRow] 1 s2Step98EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step98EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<791) ∨ (792≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step98EntryG_Outgoing : rowsOwned s2Step98EntryGvAfter [s2Step98EntryGOut,s2Step98EntryFvOut,s2Step98EntryGvOut] :=
  hmrRows_owned_drop s2Step98EntryGvAfter [s2Step98EntryFOut,s2Step98EntryGOut,s2Step98EntryFvOut,s2Step98EntryGvOut] 1 s2Step98EntryBank_outgoingOwned

private theorem s2Step98EntryG_distinct : (s2Step98EntryGRow.sign::s2Step98EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step98EntryG_owned : (s2Step98EntryGRow.sign::s2Step98EntryGRow.payload).toFinset⊆s2Step98EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step98EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<791) ∨ (792≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step98EntryG_reserved : s2Step98EntryGBefore.reserve s2Step98EntryGFresh.toFinset=some s2Step98EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step98EntryGFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s2Step98EntryGBefore,s2Step98EntryFBefore,s2Step98EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step98EntryGAfter,s2Step98EntryGBefore,s2Step98EntryFBefore,s2Step98EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step98EntryG_checked : planRowResizeLog s2Step98EntryGBefore s2Step98EntryGRow 221 s2Step98EntryGFresh=
    some (s2Step98EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 781, 802],769⟩,growRow 769 s2Step98EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step98EntryGBefore s2Step98EntryGAfter s2Step98EntryGRow 221 s2Step98EntryGFresh
    s2Step98EntryG_distinct s2Step98EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step98EntryG_reserved
  have rowEq : WindowRow.mk (s2Step98EntryGRow.payload++s2Step98EntryGFresh) s2Step98EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 781, 802],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step98EntryGvBefore : Arena := s2Step98EntryGAfter

private theorem s2Step98EntryGv_Incoming : rowsOwned s2Step98EntryGvBefore [s2Step98EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step98EntryFRow,s2Step98EntryGRow,s2Step98EntryFvRow,s2Step98EntryGvRow] 3 s2Step98EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step98EntryGvBefore (fun q => (0≤q ∧ q<785) ∨ (787≤q ∧ q<791) ∨ (792≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step98EntryGv_Outgoing : rowsOwned s2Step98EntryGvAfter [s2Step98EntryGvOut] :=
  hmrRows_owned_drop s2Step98EntryGvAfter [s2Step98EntryFOut,s2Step98EntryGOut,s2Step98EntryFvOut,s2Step98EntryGvOut] 3 s2Step98EntryBank_outgoingOwned

private theorem s2Step98EntryGv_distinct : (s2Step98EntryGvRow.sign::s2Step98EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step98EntryGv_owned : (s2Step98EntryGvRow.sign::s2Step98EntryGvRow.payload).toFinset⊆s2Step98EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step98EntryGvBefore (fun q => (0≤q ∧ q<785) ∨ (787≤q ∧ q<791) ∨ (792≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step98EntryGv_reserved : s2Step98EntryGvBefore.reserve s2Step98EntryGvFresh.toFinset=some s2Step98EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step98EntryGvFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s2Step98EntryGvBefore,s2Step98EntryGAfter,s2Step98EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step98EntryGvAfter,s2Step98EntryGvBefore,s2Step98EntryGAfter,s2Step98EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step98EntryGv_checked : planRowResizeLog s2Step98EntryGvBefore s2Step98EntryGvRow 63 s2Step98EntryGvFresh=
    some (s2Step98EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 794],771⟩,growRow 771 s2Step98EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step98EntryGvBefore s2Step98EntryGvAfter s2Step98EntryGvRow 63 s2Step98EntryGvFresh
    s2Step98EntryGv_distinct s2Step98EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step98EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step98EntryGvRow.payload++s2Step98EntryGvFresh) s2Step98EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 794],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step98EntryBank_rows : planWindowRowsLog s2Step98EntryFBefore [(s2Step98EntryFRow,221),(s2Step98EntryGRow,221),(s2Step98EntryFvRow,63),(s2Step98EntryGvRow,63)] [s2Step98EntryFFresh,s2Step98EntryGFresh,s2Step98EntryFvFresh,s2Step98EntryGvFresh]=
    some (s2Step98EntryGvAfter,[s2Step98EntryFOut,s2Step98EntryGOut,s2Step98EntryFvOut,s2Step98EntryGvOut],(growRow 768 s2Step98EntryFFresh ++ (growRow 769 s2Step98EntryGFresh ++ (growRow 770 s2Step98EntryFvFresh ++ (growRow 771 s2Step98EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step98EntryGvAfter [] []=some (s2Step98EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step98EntryGvBefore s2Step98EntryGvAfter s2Step98EntryGvAfter
    s2Step98EntryGvRow s2Step98EntryGvOut 63 s2Step98EntryGvFresh [] [] []
    (growRow 771 s2Step98EntryGvFresh) ([]) s2Step98EntryGv_Incoming s2Step98EntryGv_checked h4 s2Step98EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step98EntryFvBefore s2Step98EntryFvAfter s2Step98EntryGvAfter
    s2Step98EntryFvRow s2Step98EntryFvOut 63 s2Step98EntryFvFresh [(s2Step98EntryGvRow,63)] [s2Step98EntryGvFresh] [s2Step98EntryGvOut]
    (growRow 770 s2Step98EntryFvFresh) ((growRow 771 s2Step98EntryGvFresh ++ [])) s2Step98EntryFv_Incoming s2Step98EntryFv_checked h3 s2Step98EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step98EntryGBefore s2Step98EntryGAfter s2Step98EntryGvAfter
    s2Step98EntryGRow s2Step98EntryGOut 221 s2Step98EntryGFresh [(s2Step98EntryFvRow,63),(s2Step98EntryGvRow,63)] [s2Step98EntryFvFresh,s2Step98EntryGvFresh] [s2Step98EntryFvOut,s2Step98EntryGvOut]
    (growRow 769 s2Step98EntryGFresh) ((growRow 770 s2Step98EntryFvFresh ++ (growRow 771 s2Step98EntryGvFresh ++ []))) s2Step98EntryG_Incoming s2Step98EntryG_checked h2 s2Step98EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step98EntryFBefore s2Step98EntryFAfter s2Step98EntryGvAfter
    s2Step98EntryFRow s2Step98EntryFOut 221 s2Step98EntryFFresh [(s2Step98EntryGRow,221),(s2Step98EntryFvRow,63),(s2Step98EntryGvRow,63)] [s2Step98EntryGFresh,s2Step98EntryFvFresh,s2Step98EntryGvFresh] [s2Step98EntryGOut,s2Step98EntryFvOut,s2Step98EntryGvOut]
    (growRow 768 s2Step98EntryFFresh) ((growRow 769 s2Step98EntryGFresh ++ (growRow 770 s2Step98EntryFvFresh ++ (growRow 771 s2Step98EntryGvFresh ++ [])))) s2Step98EntryF_Incoming s2Step98EntryF_checked h1 s2Step98EntryF_Outgoing
  exact h0

private theorem s2Step98EntryBank_checked : compileHmrBankResizeLog .entry s2Step98EntryFBefore ⟨s2Step98EntryFRow,s2Step98EntryGRow,s2Step98EntryFvRow,s2Step98EntryGvRow⟩ ⟨221,221,63,63⟩ [s2Step98EntryFFresh,s2Step98EntryGFresh,s2Step98EntryFvFresh,s2Step98EntryGvFresh]=
    some (s2Step98EntryGvAfter,⟨s2Step98EntryFOut,s2Step98EntryGOut,s2Step98EntryFvOut,s2Step98EntryGvOut⟩,(growRow 768 s2Step98EntryFFresh ++ (growRow 769 s2Step98EntryGFresh ++ (growRow 770 s2Step98EntryFvFresh ++ (growRow 771 s2Step98EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step98EntryBank_rows]
  rfl

private def s2Step98ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<218) ∨ (219≤q ∧ q<781) ∨ (782≤q ∧ q<786) ∨ (787≤q ∧ q<793) ∨ (794≤q ∧ q<802) ∨ (803≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step98ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<218) ∨ (219≤q ∧ q<781) ∨ (782≤q ∧ q<793) ∨ (794≤q ∧ q<802) ∨ (803≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step98ExitFBefore : Arena := s2Step98ExitGAfter

private def s2Step98ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 786],768⟩

private def s2Step98ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847],770⟩

private def s2Step98ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 781, 802, 793],769⟩

private def s2Step98ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 794, 846],771⟩

private theorem s2Step98ExitBank_incomingDistinct : ([s2Step98ExitGRow,s2Step98ExitFRow,s2Step98ExitFvRow,s2Step98ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step98ExitF_Incoming : rowsOwned s2Step98ExitFBefore [s2Step98ExitFRow,s2Step98ExitFvRow,s2Step98ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step98ExitGRow,s2Step98ExitFRow,s2Step98ExitFvRow,s2Step98ExitGvRow] 1 s2Step98ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step98ExitFBefore (fun q => (0≤q ∧ q<218) ∨ (219≤q ∧ q<781) ∨ (782≤q ∧ q<793) ∨ (794≤q ∧ q<802) ∨ (803≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step98ExitBank_outgoingOwned : rowsOwned s2Step98ExitGvAfter [s2Step98ExitGOut,s2Step98ExitFOut,s2Step98ExitFvOut,s2Step98ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step98ExitGvAfter (fun q => (0≤q ∧ q<218) ∨ (219≤q ∧ q<781) ∨ (782≤q ∧ q<786) ∨ (787≤q ∧ q<793) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step98ExitF_Outgoing : rowsOwned s2Step98ExitGvAfter [s2Step98ExitFOut,s2Step98ExitFvOut,s2Step98ExitGvOut] :=
  hmrRows_owned_drop s2Step98ExitGvAfter [s2Step98ExitGOut,s2Step98ExitFOut,s2Step98ExitFvOut,s2Step98ExitGvOut] 1 s2Step98ExitBank_outgoingOwned

private theorem s2Step98ExitF_distinct : (s2Step98ExitFRow.sign::s2Step98ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step98ExitF_owned : (s2Step98ExitFRow.sign::s2Step98ExitFRow.payload).toFinset⊆s2Step98ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step98ExitFBefore (fun q => (0≤q ∧ q<218) ∨ (219≤q ∧ q<781) ∨ (782≤q ∧ q<793) ∨ (794≤q ∧ q<802) ∨ (803≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step98ExitF_retired : s2Step98ExitFBefore.retireSet s2Step98ExitFExtra.toFinset=s2Step98ExitFAfter := by
  unfold Arena.retireSet s2Step98ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step98ExitFBefore,s2Step98ExitGAfter,s2Step98ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step98ExitF_checked : planRowResizeLog s2Step98ExitFBefore s2Step98ExitFRow 221 []=
    some (s2Step98ExitFAfter,s2Step98ExitFOut,shrinkRow 768 s2Step98ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step98ExitFBefore s2Step98ExitFRow 221 s2Step98ExitF_distinct s2Step98ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step98ExitFRow.payload.take 221) s2Step98ExitFRow.sign=s2Step98ExitFOut := by decide +kernel
  have hi : s2Step98ExitFRow.payload.drop 221=s2Step98ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step98ExitF_retired] at result
  exact result

private def s2Step98ExitFvAfter : Arena := s2Step98ExitFAfter

private def s2Step98ExitFvBefore : Arena := s2Step98ExitFAfter

private theorem s2Step98ExitFv_Incoming : rowsOwned s2Step98ExitFvBefore [s2Step98ExitFvRow,s2Step98ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step98ExitGRow,s2Step98ExitFRow,s2Step98ExitFvRow,s2Step98ExitGvRow] 2 s2Step98ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step98ExitFvBefore (fun q => (0≤q ∧ q<218) ∨ (219≤q ∧ q<781) ∨ (782≤q ∧ q<786) ∨ (787≤q ∧ q<793) ∨ (794≤q ∧ q<802) ∨ (803≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step98ExitFv_Outgoing : rowsOwned s2Step98ExitGvAfter [s2Step98ExitFvOut,s2Step98ExitGvOut] :=
  hmrRows_owned_drop s2Step98ExitGvAfter [s2Step98ExitGOut,s2Step98ExitFOut,s2Step98ExitFvOut,s2Step98ExitGvOut] 2 s2Step98ExitBank_outgoingOwned

private theorem s2Step98ExitFv_distinct : (s2Step98ExitFvRow.sign::s2Step98ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step98ExitFv_owned : (s2Step98ExitFvRow.sign::s2Step98ExitFvRow.payload).toFinset⊆s2Step98ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step98ExitFvBefore (fun q => (0≤q ∧ q<218) ∨ (219≤q ∧ q<781) ∨ (782≤q ∧ q<786) ∨ (787≤q ∧ q<793) ∨ (794≤q ∧ q<802) ∨ (803≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step98ExitFv_reserved : s2Step98ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step98ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step98ExitFv_checked : planRowResizeLog s2Step98ExitFvBefore s2Step98ExitFvRow 64 []=
    some (s2Step98ExitFvAfter,s2Step98ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step98ExitFvBefore s2Step98ExitFvAfter s2Step98ExitFvRow 64 []
    s2Step98ExitFv_distinct s2Step98ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step98ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step98ExitFvRow.payload++[]) s2Step98ExitFvRow.sign=s2Step98ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step98ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private theorem s2Step98ExitG_Incoming : rowsOwned s2Step98ExitGBefore [s2Step98ExitGRow,s2Step98ExitFRow,s2Step98ExitFvRow,s2Step98ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step98ExitGRow,s2Step98ExitFRow,s2Step98ExitFvRow,s2Step98ExitGvRow] 0 s2Step98ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step98ExitGBefore (fun q => (0≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step98ExitG_Outgoing : rowsOwned s2Step98ExitGvAfter [s2Step98ExitGOut,s2Step98ExitFOut,s2Step98ExitFvOut,s2Step98ExitGvOut] :=
  hmrRows_owned_drop s2Step98ExitGvAfter [s2Step98ExitGOut,s2Step98ExitFOut,s2Step98ExitFvOut,s2Step98ExitGvOut] 0 s2Step98ExitBank_outgoingOwned

private theorem s2Step98ExitG_distinct : (s2Step98ExitGRow.sign::s2Step98ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step98ExitG_owned : (s2Step98ExitGRow.sign::s2Step98ExitGRow.payload).toFinset⊆s2Step98ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step98ExitGBefore (fun q => (0≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step98ExitG_retired : s2Step98ExitGBefore.retireSet s2Step98ExitGExtra.toFinset=s2Step98ExitGAfter := by
  unfold Arena.retireSet s2Step98ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step98ExitGBefore,s2Step98ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step98ExitG_checked : planRowResizeLog s2Step98ExitGBefore s2Step98ExitGRow 218 []=
    some (s2Step98ExitGAfter,s2Step98ExitGOut,shrinkRow 769 s2Step98ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step98ExitGBefore s2Step98ExitGRow 218 s2Step98ExitG_distinct s2Step98ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step98ExitGRow.payload.take 218) s2Step98ExitGRow.sign=s2Step98ExitGOut := by decide +kernel
  have hi : s2Step98ExitGRow.payload.drop 218=s2Step98ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step98ExitG_retired] at result
  exact result

private def s2Step98ExitGvBefore : Arena := s2Step98ExitFAfter

private theorem s2Step98ExitGv_Incoming : rowsOwned s2Step98ExitGvBefore [s2Step98ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step98ExitGRow,s2Step98ExitFRow,s2Step98ExitFvRow,s2Step98ExitGvRow] 3 s2Step98ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step98ExitGvBefore (fun q => (0≤q ∧ q<218) ∨ (219≤q ∧ q<781) ∨ (782≤q ∧ q<786) ∨ (787≤q ∧ q<793) ∨ (794≤q ∧ q<802) ∨ (803≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step98ExitGv_Outgoing : rowsOwned s2Step98ExitGvAfter [s2Step98ExitGvOut] :=
  hmrRows_owned_drop s2Step98ExitGvAfter [s2Step98ExitGOut,s2Step98ExitFOut,s2Step98ExitFvOut,s2Step98ExitGvOut] 3 s2Step98ExitBank_outgoingOwned

private theorem s2Step98ExitGv_distinct : (s2Step98ExitGvRow.sign::s2Step98ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step98ExitGv_owned : (s2Step98ExitGvRow.sign::s2Step98ExitGvRow.payload).toFinset⊆s2Step98ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step98ExitGvBefore (fun q => (0≤q ∧ q<218) ∨ (219≤q ∧ q<781) ∨ (782≤q ∧ q<786) ∨ (787≤q ∧ q<793) ∨ (794≤q ∧ q<802) ∨ (803≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step98ExitGv_retired : s2Step98ExitGvBefore.retireSet s2Step98ExitGvExtra.toFinset=s2Step98ExitGvAfter := by
  unfold Arena.retireSet s2Step98ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step98ExitGvBefore,s2Step98ExitFAfter,s2Step98ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step98ExitGv_checked : planRowResizeLog s2Step98ExitGvBefore s2Step98ExitGvRow 62 []=
    some (s2Step98ExitGvAfter,s2Step98ExitGvOut,shrinkRow 771 s2Step98ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step98ExitGvBefore s2Step98ExitGvRow 62 s2Step98ExitGv_distinct s2Step98ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step98ExitGvRow.payload.take 62) s2Step98ExitGvRow.sign=s2Step98ExitGvOut := by decide +kernel
  have hi : s2Step98ExitGvRow.payload.drop 62=s2Step98ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step98ExitGv_retired] at result
  exact result

private theorem s2Step98ExitBank_rows : planWindowRowsLog s2Step98ExitGBefore [(s2Step98ExitGRow,218),(s2Step98ExitFRow,221),(s2Step98ExitFvRow,64),(s2Step98ExitGvRow,62)] [[],[],[],[]]=
    some (s2Step98ExitGvAfter,[s2Step98ExitGOut,s2Step98ExitFOut,s2Step98ExitFvOut,s2Step98ExitGvOut],(shrinkRow 769 s2Step98ExitGExtra ++ (shrinkRow 768 s2Step98ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step98ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step98ExitGvAfter [] []=some (s2Step98ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step98ExitGvBefore s2Step98ExitGvAfter s2Step98ExitGvAfter
    s2Step98ExitGvRow s2Step98ExitGvOut 62 [] [] [] []
    (shrinkRow 771 s2Step98ExitGvExtra) ([]) s2Step98ExitGv_Incoming s2Step98ExitGv_checked h4 s2Step98ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step98ExitFvBefore s2Step98ExitFvAfter s2Step98ExitGvAfter
    s2Step98ExitFvRow s2Step98ExitFvOut 64 [] [(s2Step98ExitGvRow,62)] [[]] [s2Step98ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step98ExitGvExtra ++ [])) s2Step98ExitFv_Incoming s2Step98ExitFv_checked h3 s2Step98ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step98ExitFBefore s2Step98ExitFAfter s2Step98ExitGvAfter
    s2Step98ExitFRow s2Step98ExitFOut 221 [] [(s2Step98ExitFvRow,64),(s2Step98ExitGvRow,62)] [[],[]] [s2Step98ExitFvOut,s2Step98ExitGvOut]
    (shrinkRow 768 s2Step98ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step98ExitGvExtra ++ []))) s2Step98ExitF_Incoming s2Step98ExitF_checked h2 s2Step98ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step98ExitGBefore s2Step98ExitGAfter s2Step98ExitGvAfter
    s2Step98ExitGRow s2Step98ExitGOut 218 [] [(s2Step98ExitFRow,221),(s2Step98ExitFvRow,64),(s2Step98ExitGvRow,62)] [[],[],[]] [s2Step98ExitFOut,s2Step98ExitFvOut,s2Step98ExitGvOut]
    (shrinkRow 769 s2Step98ExitGExtra) ((shrinkRow 768 s2Step98ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step98ExitGvExtra ++ [])))) s2Step98ExitG_Incoming s2Step98ExitG_checked h1 s2Step98ExitG_Outgoing
  exact h0

private theorem s2Step98ExitBank_checked : compileHmrBankResizeLog .exit s2Step98ExitGBefore ⟨s2Step98ExitFRow,s2Step98ExitGRow,s2Step98ExitFvRow,s2Step98ExitGvRow⟩ ⟨221,218,64,62⟩ [[],[],[],[]]=
    some (s2Step98ExitGvAfter,⟨s2Step98ExitFOut,s2Step98ExitGOut,s2Step98ExitFvOut,s2Step98ExitGvOut⟩,(shrinkRow 769 s2Step98ExitGExtra ++ (shrinkRow 768 s2Step98ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step98ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step98ExitBank_rows]
  rfl

private theorem s2Step98Add0_apart : Disjoint s2Step98Add0Arena.live s2Step98Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step98Add0Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step98Add0_card : s2Step98Add0Arena.live.card=876 := by
  decide +kernel

private theorem s2Step98Add0_borrowed : s2Step98Add0Arena.checkBorrow (hmrHybridCount s2Step98Add0Arena s2Step98Add0B.length) s2Step98Add0Work=some s2Step98Add0During := by
  have len : s2Step98Add0Work.length=hmrHybridCount s2Step98Add0Arena s2Step98Add0B.length := by
    rw [hmrHybridCount,s2Step98Add0_card]
    decide +kernel
  have nd : s2Step98Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step98Add0Arena s2Step98Add0During s2Step98Add0Work.toFinset s2Step98Add0_bounded s2Step98Add0_apart rfl

private theorem s2Step98Add0_distinct : (849::799::851::(s2Step98Add0A++s2Step98Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step98Add0_owned : (849::799::851::(s2Step98Add0A++s2Step98Add0B)).toFinset⊆s2Step98Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step98Add0Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step98Add0_checked : compileHmrHybridCinLog s2Step98Add0Arena 799 849 851 s2Step98Add0A s2Step98Add0B s2Step98Add0Work=some s2Step98Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step98Add0Arena s2Step98Add0During 799 849 851 s2Step98Add0A s2Step98Add0B s2Step98Add0Work
    (by decide +kernel) (by decide +kernel) s2Step98Add0_distinct
    (fun q hq => s2Step98Add0_owned (List.mem_toFinset.mpr hq)) s2Step98Add0_borrowed

private theorem s2Step98Add1_apart : Disjoint s2Step98Add1Arena.live s2Step98Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step98Add1Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step98Add1_card : s2Step98Add1Arena.live.card=876 := by
  decide +kernel

private theorem s2Step98Add1_borrowed : s2Step98Add1Arena.checkBorrow (hmrHybridCount s2Step98Add1Arena s2Step98Add1B.length) s2Step98Add1Work=some s2Step98Add1During := by
  have len : s2Step98Add1Work.length=hmrHybridCount s2Step98Add1Arena s2Step98Add1B.length := by
    rw [hmrHybridCount,s2Step98Add1_card]
    decide +kernel
  have nd : s2Step98Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step98Add1Arena s2Step98Add1During s2Step98Add1Work.toFinset s2Step98Add1_bounded s2Step98Add1_apart rfl

private theorem s2Step98Add1_distinct : (849::799::851::(s2Step98Add1A++s2Step98Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step98Add1_owned : (849::799::851::(s2Step98Add1A++s2Step98Add1B)).toFinset⊆s2Step98Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step98Add1Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step98Add1_checked : compileHmrHybridCinLog s2Step98Add1Arena 799 849 851 s2Step98Add1A s2Step98Add1B s2Step98Add1Work=some s2Step98Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step98Add1Arena s2Step98Add1During 799 849 851 s2Step98Add1A s2Step98Add1B s2Step98Add1Work
    (by decide +kernel) (by decide +kernel) s2Step98Add1_distinct
    (fun q hq => s2Step98Add1_owned (List.mem_toFinset.mpr hq)) s2Step98Add1_borrowed

private theorem s2Step98F4_apart : Disjoint (s2Step98Add0A++s2Step98Add0B).toFinset (s2Step98Add1A++s2Step98Add1B).toFinset := by
  have nd : ((s2Step98Add0A++s2Step98Add0B)++(s2Step98Add1A++s2Step98Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step98F4_carry : s2Step98F4FlagArena.checkBorrow 1 [851]=some s2Step98Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step98F4FlagArena,s2Step98HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step98F4FlagArena,s2Step98HeadFvAfter,s2Step98Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step98F4_distinct : (785::799::849::851::((s2Step98Add0A++s2Step98Add1A)++(s2Step98Add0B++s2Step98Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step98F4_flag : s2Step98HeadFvAfter.checkBorrow 1 [849]=some s2Step98F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step98HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step98F4_owned : (785::799::((s2Step98Add0A++s2Step98Add1A)++(s2Step98Add0B++s2Step98Add1B))).toFinset⊆s2Step98HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step98HeadFvAfter (fun q => (0≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step98F4_checked : compileHmrHybridF4Log s2Step98HeadFvAfter 785 799 s2Step98Add0A s2Step98Add0B s2Step98Add1A s2Step98Add1B [849] [851] s2Step98Add0Work s2Step98Add1Work=some s2Step98F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step98HeadFvAfter s2Step98F4FlagArena s2Step98Add0Arena s2Step98Add0During s2Step98Add1During 785 799
    s2Step98Add0A s2Step98Add0B s2Step98Add1A s2Step98Add1B [849] [851] s2Step98Add0Work s2Step98Add1Work
    (fun q hq => s2Step98F4_owned (List.mem_toFinset.mpr hq)) s2Step98F4_flag s2Step98F4_carry
    s2Step98F4_distinct s2Step98F4_apart s2Step98Add0_checked s2Step98Add1_checked

private theorem s2Step98Front_branch : s2Step98FrontSigmaArena.checkBorrow 1 [799]=some s2Step98HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step98FrontSigmaArena,s2Step98EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step98FrontSigmaArena,s2Step98EntryGvAfter,s2Step98HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step98Front_entry : HmrFrontEntryValid s2Step98EntryFBefore s2Step98FrontBank 221 63 ⟨221,218,64,62⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step98FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step98EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step98EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<791) ∨ (792≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step98FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step98Front_sigma : s2Step98EntryGvAfter.checkBorrow 1 [785]=some s2Step98FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step98EntryGvAfter,arenaWires]
  · rfl

private def s2Step98HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step98HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<786) ∨ (787≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step98HeadFBefore : Arena := s2Step98HeadGAfter

private def s2Step98HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732],768⟩

private def s2Step98HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839],770⟩

private def s2Step98HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 781, 802],769⟩

private def s2Step98HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 794],771⟩

private theorem s2Step98HeadBank_incomingDistinct : ([s2Step98HeadGRow,s2Step98HeadFRow,s2Step98HeadGvRow,s2Step98HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step98HeadF_Incoming : rowsOwned s2Step98HeadFBefore [s2Step98HeadFRow,s2Step98HeadGvRow,s2Step98HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step98HeadGRow,s2Step98HeadFRow,s2Step98HeadGvRow,s2Step98HeadFvRow] 1 s2Step98HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step98HeadFBefore (fun q => (0≤q ∧ q<786) ∨ (787≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step98HeadBank_outgoingOwned : rowsOwned s2Step98HeadFvAfter [s2Step98HeadGOut,s2Step98HeadFOut,s2Step98HeadGvOut,s2Step98HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step98HeadFvAfter (fun q => (0≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step98HeadF_Outgoing : rowsOwned s2Step98HeadFvAfter [s2Step98HeadFOut,s2Step98HeadGvOut,s2Step98HeadFvOut] :=
  hmrRows_owned_drop s2Step98HeadFvAfter [s2Step98HeadGOut,s2Step98HeadFOut,s2Step98HeadGvOut,s2Step98HeadFvOut] 1 s2Step98HeadBank_outgoingOwned

private theorem s2Step98HeadF_distinct : (s2Step98HeadFRow.sign::s2Step98HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step98HeadF_owned : (s2Step98HeadFRow.sign::s2Step98HeadFRow.payload).toFinset⊆s2Step98HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step98HeadFBefore (fun q => (0≤q ∧ q<786) ∨ (787≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step98HeadF_reserved : s2Step98HeadFBefore.reserve s2Step98HeadFFresh.toFinset=some s2Step98HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step98HeadFFresh,arenaWires]
  · norm_num [s2Step98HeadFBefore,s2Step98HeadGAfter,s2Step98HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step98HeadFAfter,s2Step98HeadFBefore,s2Step98HeadGAfter,s2Step98HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step98HeadF_checked : planRowResizeLog s2Step98HeadFBefore s2Step98HeadFRow 222 s2Step98HeadFFresh=
    some (s2Step98HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 786],768⟩,growRow 768 s2Step98HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step98HeadFBefore s2Step98HeadFAfter s2Step98HeadFRow 222 s2Step98HeadFFresh
    s2Step98HeadF_distinct s2Step98HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step98HeadF_reserved
  have rowEq : WindowRow.mk (s2Step98HeadFRow.payload++s2Step98HeadFFresh) s2Step98HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 786],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step98HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step98HeadFvBefore : Arena := s2Step98HeadGvAfter

private theorem s2Step98HeadFv_Incoming : rowsOwned s2Step98HeadFvBefore [s2Step98HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step98HeadGRow,s2Step98HeadFRow,s2Step98HeadGvRow,s2Step98HeadFvRow] 3 s2Step98HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step98HeadFvBefore (fun q => (0≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step98HeadFv_Outgoing : rowsOwned s2Step98HeadFvAfter [s2Step98HeadFvOut] :=
  hmrRows_owned_drop s2Step98HeadFvAfter [s2Step98HeadGOut,s2Step98HeadFOut,s2Step98HeadGvOut,s2Step98HeadFvOut] 3 s2Step98HeadBank_outgoingOwned

private theorem s2Step98HeadFv_distinct : (s2Step98HeadFvRow.sign::s2Step98HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step98HeadFv_owned : (s2Step98HeadFvRow.sign::s2Step98HeadFvRow.payload).toFinset⊆s2Step98HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step98HeadFvBefore (fun q => (0≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step98HeadFv_reserved : s2Step98HeadFvBefore.reserve s2Step98HeadFvFresh.toFinset=some s2Step98HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step98HeadFvFresh,arenaWires]
  · norm_num [s2Step98HeadFvBefore,s2Step98HeadGvAfter,s2Step98HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step98HeadFvAfter,s2Step98HeadFvBefore,s2Step98HeadGvAfter,s2Step98HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step98HeadFv_checked : planRowResizeLog s2Step98HeadFvBefore s2Step98HeadFvRow 64 s2Step98HeadFvFresh=
    some (s2Step98HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847],770⟩,growRow 770 s2Step98HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step98HeadFvBefore s2Step98HeadFvAfter s2Step98HeadFvRow 64 s2Step98HeadFvFresh
    s2Step98HeadFv_distinct s2Step98HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step98HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step98HeadFvRow.payload++s2Step98HeadFvFresh) s2Step98HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step98HeadG_Incoming : rowsOwned s2Step98HeadGBefore [s2Step98HeadGRow,s2Step98HeadFRow,s2Step98HeadGvRow,s2Step98HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step98HeadGRow,s2Step98HeadFRow,s2Step98HeadGvRow,s2Step98HeadFvRow] 0 s2Step98HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step98HeadGBefore (fun q => (0≤q ∧ q<786) ∨ (787≤q ∧ q<793) ∨ (794≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step98HeadG_Outgoing : rowsOwned s2Step98HeadFvAfter [s2Step98HeadGOut,s2Step98HeadFOut,s2Step98HeadGvOut,s2Step98HeadFvOut] :=
  hmrRows_owned_drop s2Step98HeadFvAfter [s2Step98HeadGOut,s2Step98HeadFOut,s2Step98HeadGvOut,s2Step98HeadFvOut] 0 s2Step98HeadBank_outgoingOwned

private theorem s2Step98HeadG_distinct : (s2Step98HeadGRow.sign::s2Step98HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step98HeadG_owned : (s2Step98HeadGRow.sign::s2Step98HeadGRow.payload).toFinset⊆s2Step98HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step98HeadGBefore (fun q => (0≤q ∧ q<786) ∨ (787≤q ∧ q<793) ∨ (794≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step98HeadG_reserved : s2Step98HeadGBefore.reserve s2Step98HeadGFresh.toFinset=some s2Step98HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step98HeadGFresh,arenaWires]
  · norm_num [s2Step98HeadGBefore,s2Step98HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step98HeadGAfter,s2Step98HeadGBefore,s2Step98HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step98HeadG_checked : planRowResizeLog s2Step98HeadGBefore s2Step98HeadGRow 222 s2Step98HeadGFresh=
    some (s2Step98HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 781, 802, 793],769⟩,growRow 769 s2Step98HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step98HeadGBefore s2Step98HeadGAfter s2Step98HeadGRow 222 s2Step98HeadGFresh
    s2Step98HeadG_distinct s2Step98HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step98HeadG_reserved
  have rowEq : WindowRow.mk (s2Step98HeadGRow.payload++s2Step98HeadGFresh) s2Step98HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 781, 802, 793],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step98HeadGvBefore : Arena := s2Step98HeadFAfter

private theorem s2Step98HeadGv_Incoming : rowsOwned s2Step98HeadGvBefore [s2Step98HeadGvRow,s2Step98HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step98HeadGRow,s2Step98HeadFRow,s2Step98HeadGvRow,s2Step98HeadFvRow] 2 s2Step98HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step98HeadGvBefore (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step98HeadGv_Outgoing : rowsOwned s2Step98HeadFvAfter [s2Step98HeadGvOut,s2Step98HeadFvOut] :=
  hmrRows_owned_drop s2Step98HeadFvAfter [s2Step98HeadGOut,s2Step98HeadFOut,s2Step98HeadGvOut,s2Step98HeadFvOut] 2 s2Step98HeadBank_outgoingOwned

private theorem s2Step98HeadGv_distinct : (s2Step98HeadGvRow.sign::s2Step98HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step98HeadGv_owned : (s2Step98HeadGvRow.sign::s2Step98HeadGvRow.payload).toFinset⊆s2Step98HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step98HeadGvBefore (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step98HeadGv_reserved : s2Step98HeadGvBefore.reserve s2Step98HeadGvFresh.toFinset=some s2Step98HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step98HeadGvFresh,arenaWires]
  · norm_num [s2Step98HeadGvBefore,s2Step98HeadFAfter,s2Step98HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step98HeadGvAfter,s2Step98HeadGvBefore,s2Step98HeadFAfter,s2Step98HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step98HeadGv_checked : planRowResizeLog s2Step98HeadGvBefore s2Step98HeadGvRow 64 s2Step98HeadGvFresh=
    some (s2Step98HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 794, 846],771⟩,growRow 771 s2Step98HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step98HeadGvBefore s2Step98HeadGvAfter s2Step98HeadGvRow 64 s2Step98HeadGvFresh
    s2Step98HeadGv_distinct s2Step98HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step98HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step98HeadGvRow.payload++s2Step98HeadGvFresh) s2Step98HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 794, 846],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step98HeadBank_rows : planWindowRowsLog s2Step98HeadGBefore [(s2Step98HeadGRow,222),(s2Step98HeadFRow,222),(s2Step98HeadGvRow,64),(s2Step98HeadFvRow,64)] [s2Step98HeadGFresh,s2Step98HeadFFresh,s2Step98HeadGvFresh,s2Step98HeadFvFresh]=
    some (s2Step98HeadFvAfter,[s2Step98HeadGOut,s2Step98HeadFOut,s2Step98HeadGvOut,s2Step98HeadFvOut],(growRow 769 s2Step98HeadGFresh ++ (growRow 768 s2Step98HeadFFresh ++ (growRow 771 s2Step98HeadGvFresh ++ (growRow 770 s2Step98HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step98HeadFvAfter [] []=some (s2Step98HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step98HeadFvBefore s2Step98HeadFvAfter s2Step98HeadFvAfter
    s2Step98HeadFvRow s2Step98HeadFvOut 64 s2Step98HeadFvFresh [] [] []
    (growRow 770 s2Step98HeadFvFresh) ([]) s2Step98HeadFv_Incoming s2Step98HeadFv_checked h4 s2Step98HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step98HeadGvBefore s2Step98HeadGvAfter s2Step98HeadFvAfter
    s2Step98HeadGvRow s2Step98HeadGvOut 64 s2Step98HeadGvFresh [(s2Step98HeadFvRow,64)] [s2Step98HeadFvFresh] [s2Step98HeadFvOut]
    (growRow 771 s2Step98HeadGvFresh) ((growRow 770 s2Step98HeadFvFresh ++ [])) s2Step98HeadGv_Incoming s2Step98HeadGv_checked h3 s2Step98HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step98HeadFBefore s2Step98HeadFAfter s2Step98HeadFvAfter
    s2Step98HeadFRow s2Step98HeadFOut 222 s2Step98HeadFFresh [(s2Step98HeadGvRow,64),(s2Step98HeadFvRow,64)] [s2Step98HeadGvFresh,s2Step98HeadFvFresh] [s2Step98HeadGvOut,s2Step98HeadFvOut]
    (growRow 768 s2Step98HeadFFresh) ((growRow 771 s2Step98HeadGvFresh ++ (growRow 770 s2Step98HeadFvFresh ++ []))) s2Step98HeadF_Incoming s2Step98HeadF_checked h2 s2Step98HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step98HeadGBefore s2Step98HeadGAfter s2Step98HeadFvAfter
    s2Step98HeadGRow s2Step98HeadGOut 222 s2Step98HeadGFresh [(s2Step98HeadFRow,222),(s2Step98HeadGvRow,64),(s2Step98HeadFvRow,64)] [s2Step98HeadFFresh,s2Step98HeadGvFresh,s2Step98HeadFvFresh] [s2Step98HeadFOut,s2Step98HeadGvOut,s2Step98HeadFvOut]
    (growRow 769 s2Step98HeadGFresh) ((growRow 768 s2Step98HeadFFresh ++ (growRow 771 s2Step98HeadGvFresh ++ (growRow 770 s2Step98HeadFvFresh ++ [])))) s2Step98HeadG_Incoming s2Step98HeadG_checked h1 s2Step98HeadG_Outgoing
  exact h0

private theorem s2Step98HeadBank_checked : compileHmrBankResizeLog .headroom s2Step98HeadGBefore ⟨s2Step98HeadFRow,s2Step98HeadGRow,s2Step98HeadFvRow,s2Step98HeadGvRow⟩ ⟨222,222,64,64⟩ [s2Step98HeadGFresh,s2Step98HeadFFresh,s2Step98HeadGvFresh,s2Step98HeadFvFresh]=
    some (s2Step98HeadFvAfter,⟨s2Step98HeadFOut,s2Step98HeadGOut,s2Step98HeadFvOut,s2Step98HeadGvOut⟩,(growRow 769 s2Step98HeadGFresh ++ (growRow 768 s2Step98HeadFFresh ++ (growRow 771 s2Step98HeadGvFresh ++ (growRow 770 s2Step98HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step98HeadBank_rows]
  rfl

private theorem s2Step98Front_checked : compileHmrSourceFrontLog s2Step98EntryFBefore s2Step98FrontBank 221 63 ⟨221,218,64,62⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step98FrontLog=some s2Step98FrontPlan := by
  have pairEq : s2Step98FrontPair=⟨s2Step98HeadFRow,s2Step98HeadGRow,s2Step98HeadFvRow,s2Step98HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step98FrontHead=⟨s2Step98ExitFRow,s2Step98ExitGRow,s2Step98ExitFvRow,s2Step98ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step98Add0A=s2Step98FrontHead.f.wires := by decide +kernel
  have gEq : s2Step98Add0B=s2Step98FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step98Add1A=s2Step98FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step98Add1B=s2Step98FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step98EntryFBefore s2Step98FrontBank 221 63 ⟨221,218,64,62⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step98FrontLog s2Step98FrontPlan
  · exact s2Step98Front_entry
  · exact s2Step98EntryBank_checked
  · exact s2Step98Front_sigma
  · rfl
  · exact s2Step98Front_branch
  · rfl
  · simpa only [s2Step98FrontPlan,pairEq] using s2Step98HeadBank_checked
  · simpa only [s2Step98FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step98F4_checked
  · exact s2Step98Counter_checked
  · rfl
  · simpa only [s2Step98FrontPlan,headEq] using s2Step98ExitBank_checked

private theorem s2Step98Complete_explicit_checked : compileHmrEarlyStepLog s2Step98EntryFBefore s2Step98FrontBank 221 63 ⟨221,218,64,62⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] 34 s2Step98CompleteLog=some s2Step98CompletePlan := by
  let Q := s2Step98EarlyControlPlan
  have hq := s2Step98EarlyControl_plan_checked
  have fv1 : s2Step98CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step98CompleteOut.fv.payload[2]?.getD s2Step98CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step98CompleteOut.fv.payload[3]?.getD s2Step98CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step98CompleteOut.fv.payload[4]?.getD s2Step98CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step98EntryFBefore s2Step98EarlyControlArena s2Step98FrontBank 221 63 ⟨221,218,64,62⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] 34 s2Step98CompleteLog s2Step98FrontPlan Q
    s2Step98Front_checked s2Step98Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step98Complete_owned s2Step98Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step98EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] 777 785 s2Step98CompleteOut.fv.second (s2Step98CompleteOut.fv.payload[2]?.getD s2Step98CompleteOut.fv.sign) (s2Step98CompleteOut.fv.payload[3]?.getD s2Step98CompleteOut.fv.sign) (s2Step98CompleteOut.fv.payload[4]?.getD s2Step98CompleteOut.fv.sign) 799 34 s2Step98EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep98Arena : Arena := s2Step98EntryFBefore
def s2PrivateStep98Bank : WindowBank := s2Step98FrontBank
def s2PrivateStep98Spec : HmrSourceWalkStepLog := ⟨221,63,⟨221,218,64,62⟩,34,.early s2Step98CompleteLog⟩
def s2PrivateStep98Plan : HmrSourceStepPlan := .early s2Step98CompletePlan
theorem s2PrivateStep98_source : s2PrivateStep98Spec=s2ObservedLogs96[2] := rfl
theorem s2PrivateStep98_checked : compileHmrSourceStepLog s2PrivateStep98Arena s2PrivateStep98Bank
    s2PrivateStep98Spec.fgWidth s2PrivateStep98Spec.vWidth s2PrivateStep98Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876]
    6 498 98 s2PrivateStep98Spec.need none s2PrivateStep98Spec.log=some s2PrivateStep98Plan := by
  change compileHmrSourceStepLog s2Step98EntryFBefore s2Step98FrontBank 221 63 ⟨221,218,64,62⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] 6 498 98 34 none (.early s2Step98CompleteLog)=some (.early s2Step98CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 98<498)]
  rw [s2Step98Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
