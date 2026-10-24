import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep94
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

private def s2Step96CompleteMoves : List (Wire × Wire) := [(802,220)]

private def s2Step96EarlyControlLog : HmrEarlyControlLog := ⟨[802, 781, 786, 799, 785],[839],[846],[847, 849, 851, 867, 877, 878],[]⟩

private def s2Step96FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[799], [786], [781], [779]],[[], [], [], []]⟩,[794],[793],[785],[839],[846, 847, 849, 851, 867, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[846, 847, 849, 851, 867, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933],[785, 839, 846, 847]⟩

private def s2Step96CompleteLog : HmrEarlyStepLog := ⟨s2Step96FrontLog,s2Step96CompleteMoves,s2Step96EarlyControlLog⟩

private def s2Step96ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732],768⟩

private def s2Step96ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779],770⟩

private def s2Step96ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219],769⟩

private def s2Step96ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796],771⟩

private def s2Step96FrontOut : WindowBank := ⟨s2Step96ExitFOut,s2Step96ExitGOut,s2Step96ExitFvOut,s2Step96ExitGvOut⟩

private def s2Step96CompleteOut : WindowBank := s2Step96FrontOut.repacked s2Step96CompleteMoves

private def s2Step96EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step96EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step96EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step96EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step96EarlyControlPositiveArena,[839],s2Step96EarlyControlEqualityArena,[846],⟨⟨794,false⟩,[⟨⟨839,false⟩,846⟩]⟩⟩

private def s2Step96EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<879)),Finset.filter_subset _ _⟩

private def s2Step96EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<879)),Finset.filter_subset _ _⟩

private def s2Step96EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step96EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step96EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step96EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step96EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,802⟩,⟨⟨774,false⟩,781⟩,⟨⟨775,false⟩,786⟩,⟨⟨776,false⟩,799⟩,⟨⟨777,false⟩,785⟩]⟩

private def s2Step96EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step96EarlyControlZeroArena,s2Step96EarlyControlZeroPlan,s2Step96EarlyControlClassPlan,s2Step96EarlyControlFlagArena,s2Step96EarlyControlFittedArena,s2Step96EarlyControlHistoryArena,s2Step96EarlyControlSigmaArena,s2Step96EarlyControlOutputArena,s2Step96EarlyControlLog⟩

private def s2Step96CounterWork : List Wire := [785, 839, 846, 847]

private theorem s2Step96Counter_bounded : s2Step96CounterWork.toFinset⊆arenaWires := by norm_num [s2Step96CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step96HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step96CounterDuring : Arena := ⟨s2Step96HeadFvAfter.live∪s2Step96CounterWork.toFinset,Finset.union_subset s2Step96HeadFvAfter.bounded s2Step96Counter_bounded⟩

private def s2Step96EntryFFresh : List Wire := []

private def s2Step96EntryFvFresh : List Wire := []

private def s2Step96EntryGFresh : List Wire := []

private def s2Step96EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step96EntryGvAfter : Arena := s2Step96EntryFBefore

private def s2Step96EntryGvFresh : List Wire := []

private def s2Step96ExitFExtra : List Wire := [786]

private def s2Step96ExitGExtra : List Wire := [220, 799]

private def s2Step96ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<220) ∨ (221≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step96ExitGvExtra : List Wire := [781]

private def s2Step96Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step96Add0Work : List Wire := [846, 847, 849, 851, 867, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step96Add0_bounded : s2Step96Add0Work.toFinset⊆arenaWires := by
  have h : s2Step96Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step96Add0During : Arena := ⟨s2Step96Add0Arena.live∪s2Step96Add0Work.toFinset,Finset.union_subset s2Step96Add0Arena.bounded s2Step96Add0_bounded⟩

private def s2Step96Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step96Add1Work : List Wire := [846, 847, 849, 851, 867, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933]

private theorem s2Step96Add1_bounded : s2Step96Add1Work.toFinset⊆arenaWires := by
  have h : s2Step96Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step96Add1During : Arena := ⟨s2Step96Add1Arena.live∪s2Step96Add1Work.toFinset,Finset.union_subset s2Step96Add1Arena.bounded s2Step96Add1_bounded⟩

private def s2Step96F4FlagArena : Arena := ⟨s2Step96HeadFvAfter.live∪{785},Finset.union_subset s2Step96HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step96F4Plan : HmrHybridF4Plan := ⟨s2Step96F4FlagArena,[785],s2Step96Add0Arena,[839],s2Step96Add0During,s2Step96Add0Work,s2Step96Add1During,s2Step96Add1Work⟩

private def s2Step96HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 786],768⟩

private def s2Step96HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779],770⟩

private def s2Step96HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 799],769⟩

private def s2Step96HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 781],771⟩

private def s2Step96FrontHead : WindowBank := ⟨s2Step96HeadFOut,s2Step96HeadGOut,s2Step96HeadFvOut,s2Step96HeadGvOut⟩

private def s2Step96EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732],768⟩

private def s2Step96EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844],770⟩

private def s2Step96EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220],769⟩

private def s2Step96EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796],771⟩

private def s2Step96FrontPair : WindowBank := ⟨s2Step96EntryFOut,s2Step96EntryGOut,s2Step96EntryFvOut,s2Step96EntryGvOut⟩

private def s2Step96FrontSigmaArena : Arena := ⟨s2Step96EntryGvAfter.live∪{794},Finset.union_subset s2Step96EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step96HeadFFresh : List Wire := [786]

private def s2Step96HeadFvFresh : List Wire := [779]

private def s2Step96HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step96HeadGFresh : List Wire := [799]

private def s2Step96HeadGvFresh : List Wire := [781]

private def s2Step96FrontPlan : HmrSourceFront := ⟨s2Step96EntryGvAfter,s2Step96FrontPair,(growRow 768 s2Step96EntryFFresh ++ (growRow 769 s2Step96EntryGFresh ++ (growRow 770 s2Step96EntryFvFresh ++ (growRow 771 s2Step96EntryGvFresh ++ [])))),s2Step96FrontSigmaArena,[794],s2Step96HeadGBefore,[793],
  s2Step96HeadFvAfter,s2Step96FrontHead,(growRow 769 s2Step96HeadGFresh ++ (growRow 768 s2Step96HeadFFresh ++ (growRow 771 s2Step96HeadGvFresh ++ (growRow 770 s2Step96HeadFvFresh ++ [])))),s2Step96F4Plan,s2Step96CounterDuring,s2Step96CounterWork,s2Step96ExitGvAfter,s2Step96FrontOut,(shrinkRow 769 s2Step96ExitGExtra ++ (shrinkRow 768 s2Step96ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step96ExitGvExtra ++ []))))⟩

private def s2Step96CompletePlan : HmrEarlyStepPlan := ⟨s2Step96FrontPlan,s2Step96EarlyControlArena,s2Step96EarlyControlPlan,s2Step96CompleteMoves⟩

private theorem s2Step96Complete_apart : List.Disjoint (s2Step96CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [794, 793, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] := by
  have nd : ((s2Step96CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[794, 793, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step96Complete_owned : (s2Step96CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step96EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step96EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private def s2Step96CompleteMoveArena : Arena := ⟨s2Step96ExitGvAfter.live∪{220},Finset.union_subset s2Step96ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step96Complete_repack : s2Step96ExitGvAfter.checkRepack s2Step96CompleteMoves=some s2Step96EarlyControlArena := by
  have owned : 802∈s2Step96ExitGvAfter.live := by norm_num [s2Step96ExitGvAfter,arenaWires]
  have reserve : s2Step96ExitGvAfter.reserve {220}=some s2Step96CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step96ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step96CompleteMoveArena.retireSet {802}=s2Step96EarlyControlArena := by
    unfold Arena.retireSet s2Step96EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step96CompleteMoveArena,s2Step96ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step96CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step96CompleteMoveArena.retireSet {802}).checkRepack []=some s2Step96EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step96EarlyControl_branchOwned : ([793] : List Wire).toFinset⊆s2Step96EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step96EarlyControlSigmaArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step96EarlyControl_branch : compileHmrBranchRetirement s2Step96EarlyControlSigmaArena 793=some s2Step96EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step96EarlyControl_branchOwned
  · ext q
    simp [s2Step96EarlyControlOutputArena,s2Step96EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step96EarlyControl_classEqualityBorrow : s2Step96EarlyControlPositiveArena.checkBorrow (([794, 839] : List Wire).length-1) s2Step96EarlyControlLog.classWork=some s2Step96EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step96EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step96EarlyControlPositiveArena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
      decide +kernel
    · ext q
      simp [s2Step96EarlyControlEqualityArena,s2Step96EarlyControlPositiveArena,s2Step96EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step96EarlyControl_classEqualityOwned : ([794, 839] : List Wire).toFinset⊆s2Step96EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step96EarlyControlPositiveArena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step96EarlyControl_classEquality : compileHmrEqualityLog s2Step96EarlyControlPositiveArena [794, 839] 0 s2Step96EarlyControlLog.classWork=some (s2Step96EarlyControlEqualityArena,s2Step96EarlyControlLog.classWork,s2Step96EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step96EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step96EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step96EarlyControl_classOwned : ([777, 785, 794] : List Wire).toFinset⊆s2Step96EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step96EarlyControlZeroArena (fun q => (0≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step96EarlyControl_positiveBorrow : s2Step96EarlyControlZeroArena.checkBorrow (1) s2Step96EarlyControlLog.positiveWork=some s2Step96EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step96EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step96EarlyControlZeroArena (fun q => (0≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
      decide +kernel
    · ext q
      simp [s2Step96EarlyControlPositiveArena,s2Step96EarlyControlZeroArena,s2Step96EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step96EarlyControl_class : compileHmrSourceClassLog s2Step96EarlyControlZeroArena false 777 s2Step96EarlyControlZeroPlan.top 0 794 s2Step96EarlyControlLog.positiveWork s2Step96EarlyControlLog.classWork=some s2Step96EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step96EarlyControlClassPlan s2Step96EarlyControlZeroArena false 777 s2Step96EarlyControlZeroPlan.top 0 794
  constructor
  · decide +kernel
  · exact s2Step96EarlyControl_classOwned
  · exact s2Step96EarlyControl_positiveBorrow
  · exact s2Step96EarlyControl_classEquality

private theorem s2Step96EarlyControl_entryRecordOwned : ([793, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] : List Wire).toFinset⊆s2Step96EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step96EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step96EarlyControl_entrySigmaOwned : ([794, 254] : List Wire).toFinset⊆s2Step96EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step96EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step96EarlyControl_fitBorrow : s2Step96EarlyControlFlagArena.checkBorrow ((34-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] : List Wire).length)) s2Step96EarlyControlLog.recordFresh=some s2Step96EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step96EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step96EarlyControlFlagArena (fun q => (0≤q ∧ q<879)) rfl
      decide +kernel
    · ext q
      simp [s2Step96EarlyControlFittedArena,s2Step96EarlyControlFlagArena,s2Step96EarlyControlLog,arenaWires]

private theorem s2Step96EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] : List Wire).toFinset⊆s2Step96EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step96EarlyControlFlagArena (fun q => (0≤q ∧ q<879)) rfl
  decide +kernel

private theorem s2Step96EarlyControl_fit : compileHmrRecordGrowLog s2Step96EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] 34 s2Step96EarlyControlLog.recordFresh=some s2Step96EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step96EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step96EarlyControl_fitBorrow

private theorem s2Step96EarlyControl_flagsBorrow : s2Step96EarlyControlEqualityArena.checkBorrow (6) s2Step96EarlyControlLog.flagWork=some s2Step96EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step96EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step96EarlyControlEqualityArena (fun q => (0≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
      decide +kernel
    · ext q
      simp [s2Step96EarlyControlFlagArena,s2Step96EarlyControlEqualityArena,s2Step96EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step96EarlyControl_flagsOwned : ([846, 253, 252, 251] : List Wire).toFinset⊆s2Step96EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step96EarlyControlEqualityArena (fun q => (0≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step96EarlyControl_flags : compileHmrFlagsLog s2Step96EarlyControlClassPlan.equalityArena s2Step96EarlyControlClassPlan.equality.top 253 252 251 s2Step96EarlyControlLog.flagWork=some s2Step96EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step96EarlyControl_flagsOwned⟩
  · exact s2Step96EarlyControl_flagsBorrow

private theorem s2Step96EarlyControl_historyBorrow : s2Step96EarlyControlArena.checkBorrow ((34-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] : List Wire).length)) s2Step96EarlyControlLog.recordFresh=some s2Step96EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step96EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step96EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
      decide +kernel
    · ext q
      simp [s2Step96EarlyControlHistoryArena,s2Step96EarlyControlArena,s2Step96EarlyControlLog,arenaWires]

private theorem s2Step96EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] : List Wire).toFinset⊆s2Step96EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step96EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step96EarlyControl_history : compileHmrRecordGrowLog s2Step96EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] 34 s2Step96EarlyControlLog.recordFresh=some s2Step96EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step96EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step96EarlyControl_historyBorrow

private theorem s2Step96EarlyControl_sigmaOwned : ([254, 794] : List Wire).toFinset⊆s2Step96EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step96EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step96EarlyControl_sigmaReleaseOwned : ([794] : List Wire).toFinset⊆s2Step96EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step96EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step96EarlyControl_sigmaRelease : s2Step96EarlyControlHistoryArena.release {794} (fun _ => false)=some s2Step96EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step96EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step96EarlyControlSigmaArena,s2Step96EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step96EarlyControl_sigma : compileHmrSigmaDropLog s2Step96EarlyControlHistoryArena false 0 0 254 794 []=some s2Step96EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step96EarlyControl_sigmaOwned⟩
  · exact s2Step96EarlyControl_sigmaRelease

private theorem s2Step96EarlyControl_zeroBorrow : s2Step96EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step96EarlyControlLog.zeroWork=some s2Step96EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step96EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step96EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
      decide +kernel
    · ext q
      simp [s2Step96EarlyControlZeroArena,s2Step96EarlyControlArena,s2Step96EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step96EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step96EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step96EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step96EarlyControl_zero : compileHmrEqualityLog s2Step96EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step96EarlyControlLog.zeroWork=some (s2Step96EarlyControlZeroArena,s2Step96EarlyControlLog.zeroWork,s2Step96EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step96EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step96EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step96EarlyControl_logged : s2Step96EarlyControlPlan.Logged s2Step96EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] 777 794 254 253 252 251 793 34 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step96EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step96EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step96EarlyControl_zero
  · exact s2Step96EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step96EarlyControl_flags
  · exact s2Step96EarlyControl_fit
  · exact s2Step96EarlyControl_history
  · exact s2Step96EarlyControl_sigma
  · exact s2Step96EarlyControl_branch

private theorem s2Step96EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step96EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] 777 794 254 253 252 251 793 34 s2Step96EarlyControlLog=some s2Step96EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step96EarlyControlPlan s2Step96EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] 777 794 254 253 252 251 793 34 s2Step96EarlyControl_logged

private def s2Step96EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732],768⟩

private def s2Step96EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844],770⟩

private def s2Step96EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220],769⟩

private def s2Step96EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796],771⟩

private def s2Step96FrontBank : WindowBank := ⟨s2Step96EntryFRow,s2Step96EntryGRow,s2Step96EntryFvRow,s2Step96EntryGvRow⟩

private def s2Step96Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 786, 768]

private def s2Step96Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 799, 769]

private def s2Step96Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 770]

private def s2Step96Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 781, 771]

private theorem s2Step96Counter_apart : Disjoint s2Step96HeadFvAfter.live s2Step96CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step96HeadFvAfter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step96Counter_borrowed : s2Step96HeadFvAfter.checkBorrow 4 s2Step96CounterWork=some s2Step96CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step96HeadFvAfter s2Step96CounterDuring s2Step96CounterWork.toFinset s2Step96Counter_bounded s2Step96Counter_apart rfl

private theorem s2Step96Counter_owned : (794::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step96HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step96HeadFvAfter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step96Counter_checked : compileHmrCounterStepLog s2Step96HeadFvAfter true 794 [772, 773, 774, 775, 776, 777] s2Step96CounterWork=some s2Step96CounterDuring := by
  have owned : ∀q∈794::[772, 773, 774, 775, 776, 777],q∈s2Step96HeadFvAfter.live := fun q hq => s2Step96Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step96Counter_borrowed

private def s2Step96EntryFAfter : Arena := s2Step96EntryFBefore

private theorem s2Step96EntryBank_incomingDistinct : ([s2Step96EntryFRow,s2Step96EntryGRow,s2Step96EntryFvRow,s2Step96EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step96EntryF_Incoming : rowsOwned s2Step96EntryFBefore [s2Step96EntryFRow,s2Step96EntryGRow,s2Step96EntryFvRow,s2Step96EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step96EntryFRow,s2Step96EntryGRow,s2Step96EntryFvRow,s2Step96EntryGvRow] 0 s2Step96EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step96EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step96EntryBank_outgoingOwned : rowsOwned s2Step96EntryGvAfter [s2Step96EntryFOut,s2Step96EntryGOut,s2Step96EntryFvOut,s2Step96EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step96EntryGvAfter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step96EntryF_Outgoing : rowsOwned s2Step96EntryGvAfter [s2Step96EntryFOut,s2Step96EntryGOut,s2Step96EntryFvOut,s2Step96EntryGvOut] :=
  hmrRows_owned_drop s2Step96EntryGvAfter [s2Step96EntryFOut,s2Step96EntryGOut,s2Step96EntryFvOut,s2Step96EntryGvOut] 0 s2Step96EntryBank_outgoingOwned

private theorem s2Step96EntryF_distinct : (s2Step96EntryFRow.sign::s2Step96EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step96EntryF_owned : (s2Step96EntryFRow.sign::s2Step96EntryFRow.payload).toFinset⊆s2Step96EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step96EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step96EntryF_reserved : s2Step96EntryFBefore.reserve s2Step96EntryFFresh.toFinset=some s2Step96EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step96EntryFFresh,arenaWires]
  · norm_num [s2Step96EntryFBefore,s2Step96EntryFFresh,arenaWires]
  · simp only [s2Step96EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step96EntryF_checked : planRowResizeLog s2Step96EntryFBefore s2Step96EntryFRow 221 s2Step96EntryFFresh=
    some (s2Step96EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732],768⟩,growRow 768 s2Step96EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step96EntryFBefore s2Step96EntryFAfter s2Step96EntryFRow 221 s2Step96EntryFFresh
    s2Step96EntryF_distinct s2Step96EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step96EntryF_reserved
  have rowEq : WindowRow.mk (s2Step96EntryFRow.payload++s2Step96EntryFFresh) s2Step96EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step96EntryFvAfter : Arena := s2Step96EntryFBefore

private def s2Step96EntryFvBefore : Arena := s2Step96EntryFBefore

private theorem s2Step96EntryFv_Incoming : rowsOwned s2Step96EntryFvBefore [s2Step96EntryFvRow,s2Step96EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step96EntryFRow,s2Step96EntryGRow,s2Step96EntryFvRow,s2Step96EntryGvRow] 2 s2Step96EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step96EntryFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step96EntryFv_Outgoing : rowsOwned s2Step96EntryGvAfter [s2Step96EntryFvOut,s2Step96EntryGvOut] :=
  hmrRows_owned_drop s2Step96EntryGvAfter [s2Step96EntryFOut,s2Step96EntryGOut,s2Step96EntryFvOut,s2Step96EntryGvOut] 2 s2Step96EntryBank_outgoingOwned

private theorem s2Step96EntryFv_distinct : (s2Step96EntryFvRow.sign::s2Step96EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step96EntryFv_owned : (s2Step96EntryFvRow.sign::s2Step96EntryFvRow.payload).toFinset⊆s2Step96EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step96EntryFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step96EntryFv_reserved : s2Step96EntryFvBefore.reserve s2Step96EntryFvFresh.toFinset=some s2Step96EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step96EntryFvFresh,arenaWires]
  · norm_num [s2Step96EntryFvBefore,s2Step96EntryFBefore,s2Step96EntryFvFresh,arenaWires]
  · simp only [s2Step96EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step96EntryFv_checked : planRowResizeLog s2Step96EntryFvBefore s2Step96EntryFvRow 61 s2Step96EntryFvFresh=
    some (s2Step96EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844],770⟩,growRow 770 s2Step96EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step96EntryFvBefore s2Step96EntryFvAfter s2Step96EntryFvRow 61 s2Step96EntryFvFresh
    s2Step96EntryFv_distinct s2Step96EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step96EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step96EntryFvRow.payload++s2Step96EntryFvFresh) s2Step96EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step96EntryGAfter : Arena := s2Step96EntryFBefore

private def s2Step96EntryGBefore : Arena := s2Step96EntryFBefore

private theorem s2Step96EntryG_Incoming : rowsOwned s2Step96EntryGBefore [s2Step96EntryGRow,s2Step96EntryFvRow,s2Step96EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step96EntryFRow,s2Step96EntryGRow,s2Step96EntryFvRow,s2Step96EntryGvRow] 1 s2Step96EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step96EntryGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step96EntryG_Outgoing : rowsOwned s2Step96EntryGvAfter [s2Step96EntryGOut,s2Step96EntryFvOut,s2Step96EntryGvOut] :=
  hmrRows_owned_drop s2Step96EntryGvAfter [s2Step96EntryFOut,s2Step96EntryGOut,s2Step96EntryFvOut,s2Step96EntryGvOut] 1 s2Step96EntryBank_outgoingOwned

private theorem s2Step96EntryG_distinct : (s2Step96EntryGRow.sign::s2Step96EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step96EntryG_owned : (s2Step96EntryGRow.sign::s2Step96EntryGRow.payload).toFinset⊆s2Step96EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step96EntryGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step96EntryG_reserved : s2Step96EntryGBefore.reserve s2Step96EntryGFresh.toFinset=some s2Step96EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step96EntryGFresh,arenaWires]
  · norm_num [s2Step96EntryGBefore,s2Step96EntryFBefore,s2Step96EntryGFresh,arenaWires]
  · simp only [s2Step96EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step96EntryG_checked : planRowResizeLog s2Step96EntryGBefore s2Step96EntryGRow 221 s2Step96EntryGFresh=
    some (s2Step96EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220],769⟩,growRow 769 s2Step96EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step96EntryGBefore s2Step96EntryGAfter s2Step96EntryGRow 221 s2Step96EntryGFresh
    s2Step96EntryG_distinct s2Step96EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step96EntryG_reserved
  have rowEq : WindowRow.mk (s2Step96EntryGRow.payload++s2Step96EntryGFresh) s2Step96EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step96EntryGvBefore : Arena := s2Step96EntryFBefore

private theorem s2Step96EntryGv_Incoming : rowsOwned s2Step96EntryGvBefore [s2Step96EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step96EntryFRow,s2Step96EntryGRow,s2Step96EntryFvRow,s2Step96EntryGvRow] 3 s2Step96EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step96EntryGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step96EntryGv_Outgoing : rowsOwned s2Step96EntryGvAfter [s2Step96EntryGvOut] :=
  hmrRows_owned_drop s2Step96EntryGvAfter [s2Step96EntryFOut,s2Step96EntryGOut,s2Step96EntryFvOut,s2Step96EntryGvOut] 3 s2Step96EntryBank_outgoingOwned

private theorem s2Step96EntryGv_distinct : (s2Step96EntryGvRow.sign::s2Step96EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step96EntryGv_owned : (s2Step96EntryGvRow.sign::s2Step96EntryGvRow.payload).toFinset⊆s2Step96EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step96EntryGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step96EntryGv_reserved : s2Step96EntryGvBefore.reserve s2Step96EntryGvFresh.toFinset=some s2Step96EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step96EntryGvFresh,arenaWires]
  · norm_num [s2Step96EntryGvBefore,s2Step96EntryFBefore,s2Step96EntryGvFresh,arenaWires]
  · simp only [s2Step96EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step96EntryGv_checked : planRowResizeLog s2Step96EntryGvBefore s2Step96EntryGvRow 61 s2Step96EntryGvFresh=
    some (s2Step96EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796],771⟩,growRow 771 s2Step96EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step96EntryGvBefore s2Step96EntryGvAfter s2Step96EntryGvRow 61 s2Step96EntryGvFresh
    s2Step96EntryGv_distinct s2Step96EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step96EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step96EntryGvRow.payload++s2Step96EntryGvFresh) s2Step96EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step96EntryBank_rows : planWindowRowsLog s2Step96EntryFBefore [(s2Step96EntryFRow,221),(s2Step96EntryGRow,221),(s2Step96EntryFvRow,61),(s2Step96EntryGvRow,61)] [s2Step96EntryFFresh,s2Step96EntryGFresh,s2Step96EntryFvFresh,s2Step96EntryGvFresh]=
    some (s2Step96EntryGvAfter,[s2Step96EntryFOut,s2Step96EntryGOut,s2Step96EntryFvOut,s2Step96EntryGvOut],(growRow 768 s2Step96EntryFFresh ++ (growRow 769 s2Step96EntryGFresh ++ (growRow 770 s2Step96EntryFvFresh ++ (growRow 771 s2Step96EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step96EntryGvAfter [] []=some (s2Step96EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step96EntryGvBefore s2Step96EntryGvAfter s2Step96EntryGvAfter
    s2Step96EntryGvRow s2Step96EntryGvOut 61 s2Step96EntryGvFresh [] [] []
    (growRow 771 s2Step96EntryGvFresh) ([]) s2Step96EntryGv_Incoming s2Step96EntryGv_checked h4 s2Step96EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step96EntryFvBefore s2Step96EntryFvAfter s2Step96EntryGvAfter
    s2Step96EntryFvRow s2Step96EntryFvOut 61 s2Step96EntryFvFresh [(s2Step96EntryGvRow,61)] [s2Step96EntryGvFresh] [s2Step96EntryGvOut]
    (growRow 770 s2Step96EntryFvFresh) ((growRow 771 s2Step96EntryGvFresh ++ [])) s2Step96EntryFv_Incoming s2Step96EntryFv_checked h3 s2Step96EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step96EntryGBefore s2Step96EntryGAfter s2Step96EntryGvAfter
    s2Step96EntryGRow s2Step96EntryGOut 221 s2Step96EntryGFresh [(s2Step96EntryFvRow,61),(s2Step96EntryGvRow,61)] [s2Step96EntryFvFresh,s2Step96EntryGvFresh] [s2Step96EntryFvOut,s2Step96EntryGvOut]
    (growRow 769 s2Step96EntryGFresh) ((growRow 770 s2Step96EntryFvFresh ++ (growRow 771 s2Step96EntryGvFresh ++ []))) s2Step96EntryG_Incoming s2Step96EntryG_checked h2 s2Step96EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step96EntryFBefore s2Step96EntryFAfter s2Step96EntryGvAfter
    s2Step96EntryFRow s2Step96EntryFOut 221 s2Step96EntryFFresh [(s2Step96EntryGRow,221),(s2Step96EntryFvRow,61),(s2Step96EntryGvRow,61)] [s2Step96EntryGFresh,s2Step96EntryFvFresh,s2Step96EntryGvFresh] [s2Step96EntryGOut,s2Step96EntryFvOut,s2Step96EntryGvOut]
    (growRow 768 s2Step96EntryFFresh) ((growRow 769 s2Step96EntryGFresh ++ (growRow 770 s2Step96EntryFvFresh ++ (growRow 771 s2Step96EntryGvFresh ++ [])))) s2Step96EntryF_Incoming s2Step96EntryF_checked h1 s2Step96EntryF_Outgoing
  exact h0

private theorem s2Step96EntryBank_checked : compileHmrBankResizeLog .entry s2Step96EntryFBefore ⟨s2Step96EntryFRow,s2Step96EntryGRow,s2Step96EntryFvRow,s2Step96EntryGvRow⟩ ⟨221,221,61,61⟩ [s2Step96EntryFFresh,s2Step96EntryGFresh,s2Step96EntryFvFresh,s2Step96EntryGvFresh]=
    some (s2Step96EntryGvAfter,⟨s2Step96EntryFOut,s2Step96EntryGOut,s2Step96EntryFvOut,s2Step96EntryGvOut⟩,(growRow 768 s2Step96EntryFFresh ++ (growRow 769 s2Step96EntryGFresh ++ (growRow 770 s2Step96EntryFvFresh ++ (growRow 771 s2Step96EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step96EntryBank_rows]
  rfl

private def s2Step96ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<220) ∨ (221≤q ∧ q<785) ∨ (787≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step96ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<220) ∨ (221≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step96ExitFBefore : Arena := s2Step96ExitGAfter

private def s2Step96ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 786],768⟩

private def s2Step96ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779],770⟩

private def s2Step96ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 799],769⟩

private def s2Step96ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 781],771⟩

private theorem s2Step96ExitBank_incomingDistinct : ([s2Step96ExitGRow,s2Step96ExitFRow,s2Step96ExitFvRow,s2Step96ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step96ExitF_Incoming : rowsOwned s2Step96ExitFBefore [s2Step96ExitFRow,s2Step96ExitFvRow,s2Step96ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step96ExitGRow,s2Step96ExitFRow,s2Step96ExitFvRow,s2Step96ExitGvRow] 1 s2Step96ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step96ExitFBefore (fun q => (0≤q ∧ q<220) ∨ (221≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step96ExitBank_outgoingOwned : rowsOwned s2Step96ExitGvAfter [s2Step96ExitGOut,s2Step96ExitFOut,s2Step96ExitFvOut,s2Step96ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step96ExitGvAfter (fun q => (0≤q ∧ q<220) ∨ (221≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step96ExitF_Outgoing : rowsOwned s2Step96ExitGvAfter [s2Step96ExitFOut,s2Step96ExitFvOut,s2Step96ExitGvOut] :=
  hmrRows_owned_drop s2Step96ExitGvAfter [s2Step96ExitGOut,s2Step96ExitFOut,s2Step96ExitFvOut,s2Step96ExitGvOut] 1 s2Step96ExitBank_outgoingOwned

private theorem s2Step96ExitF_distinct : (s2Step96ExitFRow.sign::s2Step96ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step96ExitF_owned : (s2Step96ExitFRow.sign::s2Step96ExitFRow.payload).toFinset⊆s2Step96ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step96ExitFBefore (fun q => (0≤q ∧ q<220) ∨ (221≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step96ExitF_retired : s2Step96ExitFBefore.retireSet s2Step96ExitFExtra.toFinset=s2Step96ExitFAfter := by
  unfold Arena.retireSet s2Step96ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step96ExitFBefore,s2Step96ExitGAfter,s2Step96ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step96ExitF_checked : planRowResizeLog s2Step96ExitFBefore s2Step96ExitFRow 221 []=
    some (s2Step96ExitFAfter,s2Step96ExitFOut,shrinkRow 768 s2Step96ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step96ExitFBefore s2Step96ExitFRow 221 s2Step96ExitF_distinct s2Step96ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step96ExitFRow.payload.take 221) s2Step96ExitFRow.sign=s2Step96ExitFOut := by decide +kernel
  have hi : s2Step96ExitFRow.payload.drop 221=s2Step96ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step96ExitF_retired] at result
  exact result

private def s2Step96ExitFvAfter : Arena := s2Step96ExitFAfter

private def s2Step96ExitFvBefore : Arena := s2Step96ExitFAfter

private theorem s2Step96ExitFv_Incoming : rowsOwned s2Step96ExitFvBefore [s2Step96ExitFvRow,s2Step96ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step96ExitGRow,s2Step96ExitFRow,s2Step96ExitFvRow,s2Step96ExitGvRow] 2 s2Step96ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step96ExitFvBefore (fun q => (0≤q ∧ q<220) ∨ (221≤q ∧ q<785) ∨ (787≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step96ExitFv_Outgoing : rowsOwned s2Step96ExitGvAfter [s2Step96ExitFvOut,s2Step96ExitGvOut] :=
  hmrRows_owned_drop s2Step96ExitGvAfter [s2Step96ExitGOut,s2Step96ExitFOut,s2Step96ExitFvOut,s2Step96ExitGvOut] 2 s2Step96ExitBank_outgoingOwned

private theorem s2Step96ExitFv_distinct : (s2Step96ExitFvRow.sign::s2Step96ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step96ExitFv_owned : (s2Step96ExitFvRow.sign::s2Step96ExitFvRow.payload).toFinset⊆s2Step96ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step96ExitFvBefore (fun q => (0≤q ∧ q<220) ∨ (221≤q ∧ q<785) ∨ (787≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step96ExitFv_reserved : s2Step96ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step96ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step96ExitFv_checked : planRowResizeLog s2Step96ExitFvBefore s2Step96ExitFvRow 62 []=
    some (s2Step96ExitFvAfter,s2Step96ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step96ExitFvBefore s2Step96ExitFvAfter s2Step96ExitFvRow 62 []
    s2Step96ExitFv_distinct s2Step96ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step96ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step96ExitFvRow.payload++[]) s2Step96ExitFvRow.sign=s2Step96ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step96ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private theorem s2Step96ExitG_Incoming : rowsOwned s2Step96ExitGBefore [s2Step96ExitGRow,s2Step96ExitFRow,s2Step96ExitFvRow,s2Step96ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step96ExitGRow,s2Step96ExitFRow,s2Step96ExitFvRow,s2Step96ExitGvRow] 0 s2Step96ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step96ExitGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step96ExitG_Outgoing : rowsOwned s2Step96ExitGvAfter [s2Step96ExitGOut,s2Step96ExitFOut,s2Step96ExitFvOut,s2Step96ExitGvOut] :=
  hmrRows_owned_drop s2Step96ExitGvAfter [s2Step96ExitGOut,s2Step96ExitFOut,s2Step96ExitFvOut,s2Step96ExitGvOut] 0 s2Step96ExitBank_outgoingOwned

private theorem s2Step96ExitG_distinct : (s2Step96ExitGRow.sign::s2Step96ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step96ExitG_owned : (s2Step96ExitGRow.sign::s2Step96ExitGRow.payload).toFinset⊆s2Step96ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step96ExitGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step96ExitG_retired : s2Step96ExitGBefore.retireSet s2Step96ExitGExtra.toFinset=s2Step96ExitGAfter := by
  unfold Arena.retireSet s2Step96ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step96ExitGBefore,s2Step96ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step96ExitG_checked : planRowResizeLog s2Step96ExitGBefore s2Step96ExitGRow 220 []=
    some (s2Step96ExitGAfter,s2Step96ExitGOut,shrinkRow 769 s2Step96ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step96ExitGBefore s2Step96ExitGRow 220 s2Step96ExitG_distinct s2Step96ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step96ExitGRow.payload.take 220) s2Step96ExitGRow.sign=s2Step96ExitGOut := by decide +kernel
  have hi : s2Step96ExitGRow.payload.drop 220=s2Step96ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step96ExitG_retired] at result
  exact result

private def s2Step96ExitGvBefore : Arena := s2Step96ExitFAfter

private theorem s2Step96ExitGv_Incoming : rowsOwned s2Step96ExitGvBefore [s2Step96ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step96ExitGRow,s2Step96ExitFRow,s2Step96ExitFvRow,s2Step96ExitGvRow] 3 s2Step96ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step96ExitGvBefore (fun q => (0≤q ∧ q<220) ∨ (221≤q ∧ q<785) ∨ (787≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step96ExitGv_Outgoing : rowsOwned s2Step96ExitGvAfter [s2Step96ExitGvOut] :=
  hmrRows_owned_drop s2Step96ExitGvAfter [s2Step96ExitGOut,s2Step96ExitFOut,s2Step96ExitFvOut,s2Step96ExitGvOut] 3 s2Step96ExitBank_outgoingOwned

private theorem s2Step96ExitGv_distinct : (s2Step96ExitGvRow.sign::s2Step96ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step96ExitGv_owned : (s2Step96ExitGvRow.sign::s2Step96ExitGvRow.payload).toFinset⊆s2Step96ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step96ExitGvBefore (fun q => (0≤q ∧ q<220) ∨ (221≤q ∧ q<785) ∨ (787≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step96ExitGv_retired : s2Step96ExitGvBefore.retireSet s2Step96ExitGvExtra.toFinset=s2Step96ExitGvAfter := by
  unfold Arena.retireSet s2Step96ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step96ExitGvBefore,s2Step96ExitFAfter,s2Step96ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step96ExitGv_checked : planRowResizeLog s2Step96ExitGvBefore s2Step96ExitGvRow 61 []=
    some (s2Step96ExitGvAfter,s2Step96ExitGvOut,shrinkRow 771 s2Step96ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step96ExitGvBefore s2Step96ExitGvRow 61 s2Step96ExitGv_distinct s2Step96ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step96ExitGvRow.payload.take 61) s2Step96ExitGvRow.sign=s2Step96ExitGvOut := by decide +kernel
  have hi : s2Step96ExitGvRow.payload.drop 61=s2Step96ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step96ExitGv_retired] at result
  exact result

private theorem s2Step96ExitBank_rows : planWindowRowsLog s2Step96ExitGBefore [(s2Step96ExitGRow,220),(s2Step96ExitFRow,221),(s2Step96ExitFvRow,62),(s2Step96ExitGvRow,61)] [[],[],[],[]]=
    some (s2Step96ExitGvAfter,[s2Step96ExitGOut,s2Step96ExitFOut,s2Step96ExitFvOut,s2Step96ExitGvOut],(shrinkRow 769 s2Step96ExitGExtra ++ (shrinkRow 768 s2Step96ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step96ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step96ExitGvAfter [] []=some (s2Step96ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step96ExitGvBefore s2Step96ExitGvAfter s2Step96ExitGvAfter
    s2Step96ExitGvRow s2Step96ExitGvOut 61 [] [] [] []
    (shrinkRow 771 s2Step96ExitGvExtra) ([]) s2Step96ExitGv_Incoming s2Step96ExitGv_checked h4 s2Step96ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step96ExitFvBefore s2Step96ExitFvAfter s2Step96ExitGvAfter
    s2Step96ExitFvRow s2Step96ExitFvOut 62 [] [(s2Step96ExitGvRow,61)] [[]] [s2Step96ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step96ExitGvExtra ++ [])) s2Step96ExitFv_Incoming s2Step96ExitFv_checked h3 s2Step96ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step96ExitFBefore s2Step96ExitFAfter s2Step96ExitGvAfter
    s2Step96ExitFRow s2Step96ExitFOut 221 [] [(s2Step96ExitFvRow,62),(s2Step96ExitGvRow,61)] [[],[]] [s2Step96ExitFvOut,s2Step96ExitGvOut]
    (shrinkRow 768 s2Step96ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step96ExitGvExtra ++ []))) s2Step96ExitF_Incoming s2Step96ExitF_checked h2 s2Step96ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step96ExitGBefore s2Step96ExitGAfter s2Step96ExitGvAfter
    s2Step96ExitGRow s2Step96ExitGOut 220 [] [(s2Step96ExitFRow,221),(s2Step96ExitFvRow,62),(s2Step96ExitGvRow,61)] [[],[],[]] [s2Step96ExitFOut,s2Step96ExitFvOut,s2Step96ExitGvOut]
    (shrinkRow 769 s2Step96ExitGExtra) ((shrinkRow 768 s2Step96ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step96ExitGvExtra ++ [])))) s2Step96ExitG_Incoming s2Step96ExitG_checked h1 s2Step96ExitG_Outgoing
  exact h0

private theorem s2Step96ExitBank_checked : compileHmrBankResizeLog .exit s2Step96ExitGBefore ⟨s2Step96ExitFRow,s2Step96ExitGRow,s2Step96ExitFvRow,s2Step96ExitGvRow⟩ ⟨221,220,62,61⟩ [[],[],[],[]]=
    some (s2Step96ExitGvAfter,⟨s2Step96ExitFOut,s2Step96ExitGOut,s2Step96ExitFvOut,s2Step96ExitGvOut⟩,(shrinkRow 769 s2Step96ExitGExtra ++ (shrinkRow 768 s2Step96ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step96ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step96ExitBank_rows]
  rfl

private theorem s2Step96Add0_apart : Disjoint s2Step96Add0Arena.live s2Step96Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step96Add0Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step96Add0_card : s2Step96Add0Arena.live.card=872 := by
  decide +kernel

private theorem s2Step96Add0_borrowed : s2Step96Add0Arena.checkBorrow (hmrHybridCount s2Step96Add0Arena s2Step96Add0B.length) s2Step96Add0Work=some s2Step96Add0During := by
  have len : s2Step96Add0Work.length=hmrHybridCount s2Step96Add0Arena s2Step96Add0B.length := by
    rw [hmrHybridCount,s2Step96Add0_card]
    decide +kernel
  have nd : s2Step96Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step96Add0Arena s2Step96Add0During s2Step96Add0Work.toFinset s2Step96Add0_bounded s2Step96Add0_apart rfl

private theorem s2Step96Add0_distinct : (785::793::839::(s2Step96Add0A++s2Step96Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step96Add0_owned : (785::793::839::(s2Step96Add0A++s2Step96Add0B)).toFinset⊆s2Step96Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step96Add0Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step96Add0_checked : compileHmrHybridCinLog s2Step96Add0Arena 793 785 839 s2Step96Add0A s2Step96Add0B s2Step96Add0Work=some s2Step96Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step96Add0Arena s2Step96Add0During 793 785 839 s2Step96Add0A s2Step96Add0B s2Step96Add0Work
    (by decide +kernel) (by decide +kernel) s2Step96Add0_distinct
    (fun q hq => s2Step96Add0_owned (List.mem_toFinset.mpr hq)) s2Step96Add0_borrowed

private theorem s2Step96Add1_apart : Disjoint s2Step96Add1Arena.live s2Step96Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step96Add1Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step96Add1_card : s2Step96Add1Arena.live.card=872 := by
  decide +kernel

private theorem s2Step96Add1_borrowed : s2Step96Add1Arena.checkBorrow (hmrHybridCount s2Step96Add1Arena s2Step96Add1B.length) s2Step96Add1Work=some s2Step96Add1During := by
  have len : s2Step96Add1Work.length=hmrHybridCount s2Step96Add1Arena s2Step96Add1B.length := by
    rw [hmrHybridCount,s2Step96Add1_card]
    decide +kernel
  have nd : s2Step96Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step96Add1Arena s2Step96Add1During s2Step96Add1Work.toFinset s2Step96Add1_bounded s2Step96Add1_apart rfl

private theorem s2Step96Add1_distinct : (785::793::839::(s2Step96Add1A++s2Step96Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step96Add1_owned : (785::793::839::(s2Step96Add1A++s2Step96Add1B)).toFinset⊆s2Step96Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step96Add1Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step96Add1_checked : compileHmrHybridCinLog s2Step96Add1Arena 793 785 839 s2Step96Add1A s2Step96Add1B s2Step96Add1Work=some s2Step96Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step96Add1Arena s2Step96Add1During 793 785 839 s2Step96Add1A s2Step96Add1B s2Step96Add1Work
    (by decide +kernel) (by decide +kernel) s2Step96Add1_distinct
    (fun q hq => s2Step96Add1_owned (List.mem_toFinset.mpr hq)) s2Step96Add1_borrowed

private theorem s2Step96F4_apart : Disjoint (s2Step96Add0A++s2Step96Add0B).toFinset (s2Step96Add1A++s2Step96Add1B).toFinset := by
  have nd : ((s2Step96Add0A++s2Step96Add0B)++(s2Step96Add1A++s2Step96Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step96F4_carry : s2Step96F4FlagArena.checkBorrow 1 [839]=some s2Step96Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step96F4FlagArena,s2Step96HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step96F4FlagArena,s2Step96HeadFvAfter,s2Step96Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step96F4_distinct : (794::793::785::839::((s2Step96Add0A++s2Step96Add1A)++(s2Step96Add0B++s2Step96Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step96F4_flag : s2Step96HeadFvAfter.checkBorrow 1 [785]=some s2Step96F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step96HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step96F4_owned : (794::793::((s2Step96Add0A++s2Step96Add1A)++(s2Step96Add0B++s2Step96Add1B))).toFinset⊆s2Step96HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step96HeadFvAfter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step96F4_checked : compileHmrHybridF4Log s2Step96HeadFvAfter 794 793 s2Step96Add0A s2Step96Add0B s2Step96Add1A s2Step96Add1B [785] [839] s2Step96Add0Work s2Step96Add1Work=some s2Step96F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step96HeadFvAfter s2Step96F4FlagArena s2Step96Add0Arena s2Step96Add0During s2Step96Add1During 794 793
    s2Step96Add0A s2Step96Add0B s2Step96Add1A s2Step96Add1B [785] [839] s2Step96Add0Work s2Step96Add1Work
    (fun q hq => s2Step96F4_owned (List.mem_toFinset.mpr hq)) s2Step96F4_flag s2Step96F4_carry
    s2Step96F4_distinct s2Step96F4_apart s2Step96Add0_checked s2Step96Add1_checked

private theorem s2Step96Front_branch : s2Step96FrontSigmaArena.checkBorrow 1 [793]=some s2Step96HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step96FrontSigmaArena,s2Step96EntryGvAfter,s2Step96EntryFBefore,arenaWires]
  · ext q
    simp only [s2Step96FrontSigmaArena,s2Step96EntryGvAfter,s2Step96EntryFBefore,s2Step96HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step96Front_entry : HmrFrontEntryValid s2Step96EntryFBefore s2Step96FrontBank 221 61 ⟨221,220,62,61⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step96FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step96EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step96EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step96FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step96Front_sigma : s2Step96EntryGvAfter.checkBorrow 1 [794]=some s2Step96FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step96EntryGvAfter,s2Step96EntryFBefore,arenaWires]
  · rfl

private def s2Step96HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step96HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step96HeadFBefore : Arena := s2Step96HeadGAfter

private def s2Step96HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732],768⟩

private def s2Step96HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844],770⟩

private def s2Step96HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220],769⟩

private def s2Step96HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796],771⟩

private theorem s2Step96HeadBank_incomingDistinct : ([s2Step96HeadGRow,s2Step96HeadFRow,s2Step96HeadGvRow,s2Step96HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step96HeadF_Incoming : rowsOwned s2Step96HeadFBefore [s2Step96HeadFRow,s2Step96HeadGvRow,s2Step96HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step96HeadGRow,s2Step96HeadFRow,s2Step96HeadGvRow,s2Step96HeadFvRow] 1 s2Step96HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step96HeadFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step96HeadBank_outgoingOwned : rowsOwned s2Step96HeadFvAfter [s2Step96HeadGOut,s2Step96HeadFOut,s2Step96HeadGvOut,s2Step96HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step96HeadFvAfter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step96HeadF_Outgoing : rowsOwned s2Step96HeadFvAfter [s2Step96HeadFOut,s2Step96HeadGvOut,s2Step96HeadFvOut] :=
  hmrRows_owned_drop s2Step96HeadFvAfter [s2Step96HeadGOut,s2Step96HeadFOut,s2Step96HeadGvOut,s2Step96HeadFvOut] 1 s2Step96HeadBank_outgoingOwned

private theorem s2Step96HeadF_distinct : (s2Step96HeadFRow.sign::s2Step96HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step96HeadF_owned : (s2Step96HeadFRow.sign::s2Step96HeadFRow.payload).toFinset⊆s2Step96HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step96HeadFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step96HeadF_reserved : s2Step96HeadFBefore.reserve s2Step96HeadFFresh.toFinset=some s2Step96HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step96HeadFFresh,arenaWires]
  · norm_num [s2Step96HeadFBefore,s2Step96HeadGAfter,s2Step96HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step96HeadFAfter,s2Step96HeadFBefore,s2Step96HeadGAfter,s2Step96HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step96HeadF_checked : planRowResizeLog s2Step96HeadFBefore s2Step96HeadFRow 222 s2Step96HeadFFresh=
    some (s2Step96HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 786],768⟩,growRow 768 s2Step96HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step96HeadFBefore s2Step96HeadFAfter s2Step96HeadFRow 222 s2Step96HeadFFresh
    s2Step96HeadF_distinct s2Step96HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step96HeadF_reserved
  have rowEq : WindowRow.mk (s2Step96HeadFRow.payload++s2Step96HeadFFresh) s2Step96HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 786],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step96HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step96HeadFvBefore : Arena := s2Step96HeadGvAfter

private theorem s2Step96HeadFv_Incoming : rowsOwned s2Step96HeadFvBefore [s2Step96HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step96HeadGRow,s2Step96HeadFRow,s2Step96HeadGvRow,s2Step96HeadFvRow] 3 s2Step96HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step96HeadFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step96HeadFv_Outgoing : rowsOwned s2Step96HeadFvAfter [s2Step96HeadFvOut] :=
  hmrRows_owned_drop s2Step96HeadFvAfter [s2Step96HeadGOut,s2Step96HeadFOut,s2Step96HeadGvOut,s2Step96HeadFvOut] 3 s2Step96HeadBank_outgoingOwned

private theorem s2Step96HeadFv_distinct : (s2Step96HeadFvRow.sign::s2Step96HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step96HeadFv_owned : (s2Step96HeadFvRow.sign::s2Step96HeadFvRow.payload).toFinset⊆s2Step96HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step96HeadFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step96HeadFv_reserved : s2Step96HeadFvBefore.reserve s2Step96HeadFvFresh.toFinset=some s2Step96HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step96HeadFvFresh,arenaWires]
  · norm_num [s2Step96HeadFvBefore,s2Step96HeadGvAfter,s2Step96HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step96HeadFvAfter,s2Step96HeadFvBefore,s2Step96HeadGvAfter,s2Step96HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step96HeadFv_checked : planRowResizeLog s2Step96HeadFvBefore s2Step96HeadFvRow 62 s2Step96HeadFvFresh=
    some (s2Step96HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779],770⟩,growRow 770 s2Step96HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step96HeadFvBefore s2Step96HeadFvAfter s2Step96HeadFvRow 62 s2Step96HeadFvFresh
    s2Step96HeadFv_distinct s2Step96HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step96HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step96HeadFvRow.payload++s2Step96HeadFvFresh) s2Step96HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step96HeadG_Incoming : rowsOwned s2Step96HeadGBefore [s2Step96HeadGRow,s2Step96HeadFRow,s2Step96HeadGvRow,s2Step96HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step96HeadGRow,s2Step96HeadFRow,s2Step96HeadGvRow,s2Step96HeadFvRow] 0 s2Step96HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step96HeadGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step96HeadG_Outgoing : rowsOwned s2Step96HeadFvAfter [s2Step96HeadGOut,s2Step96HeadFOut,s2Step96HeadGvOut,s2Step96HeadFvOut] :=
  hmrRows_owned_drop s2Step96HeadFvAfter [s2Step96HeadGOut,s2Step96HeadFOut,s2Step96HeadGvOut,s2Step96HeadFvOut] 0 s2Step96HeadBank_outgoingOwned

private theorem s2Step96HeadG_distinct : (s2Step96HeadGRow.sign::s2Step96HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step96HeadG_owned : (s2Step96HeadGRow.sign::s2Step96HeadGRow.payload).toFinset⊆s2Step96HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step96HeadGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step96HeadG_reserved : s2Step96HeadGBefore.reserve s2Step96HeadGFresh.toFinset=some s2Step96HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step96HeadGFresh,arenaWires]
  · norm_num [s2Step96HeadGBefore,s2Step96HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step96HeadGAfter,s2Step96HeadGBefore,s2Step96HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step96HeadG_checked : planRowResizeLog s2Step96HeadGBefore s2Step96HeadGRow 222 s2Step96HeadGFresh=
    some (s2Step96HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 799],769⟩,growRow 769 s2Step96HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step96HeadGBefore s2Step96HeadGAfter s2Step96HeadGRow 222 s2Step96HeadGFresh
    s2Step96HeadG_distinct s2Step96HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step96HeadG_reserved
  have rowEq : WindowRow.mk (s2Step96HeadGRow.payload++s2Step96HeadGFresh) s2Step96HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 799],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step96HeadGvBefore : Arena := s2Step96HeadFAfter

private theorem s2Step96HeadGv_Incoming : rowsOwned s2Step96HeadGvBefore [s2Step96HeadGvRow,s2Step96HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step96HeadGRow,s2Step96HeadFRow,s2Step96HeadGvRow,s2Step96HeadFvRow] 2 s2Step96HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step96HeadGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step96HeadGv_Outgoing : rowsOwned s2Step96HeadFvAfter [s2Step96HeadGvOut,s2Step96HeadFvOut] :=
  hmrRows_owned_drop s2Step96HeadFvAfter [s2Step96HeadGOut,s2Step96HeadFOut,s2Step96HeadGvOut,s2Step96HeadFvOut] 2 s2Step96HeadBank_outgoingOwned

private theorem s2Step96HeadGv_distinct : (s2Step96HeadGvRow.sign::s2Step96HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step96HeadGv_owned : (s2Step96HeadGvRow.sign::s2Step96HeadGvRow.payload).toFinset⊆s2Step96HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step96HeadGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step96HeadGv_reserved : s2Step96HeadGvBefore.reserve s2Step96HeadGvFresh.toFinset=some s2Step96HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step96HeadGvFresh,arenaWires]
  · norm_num [s2Step96HeadGvBefore,s2Step96HeadFAfter,s2Step96HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step96HeadGvAfter,s2Step96HeadGvBefore,s2Step96HeadFAfter,s2Step96HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step96HeadGv_checked : planRowResizeLog s2Step96HeadGvBefore s2Step96HeadGvRow 62 s2Step96HeadGvFresh=
    some (s2Step96HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 781],771⟩,growRow 771 s2Step96HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step96HeadGvBefore s2Step96HeadGvAfter s2Step96HeadGvRow 62 s2Step96HeadGvFresh
    s2Step96HeadGv_distinct s2Step96HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step96HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step96HeadGvRow.payload++s2Step96HeadGvFresh) s2Step96HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 781],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step96HeadBank_rows : planWindowRowsLog s2Step96HeadGBefore [(s2Step96HeadGRow,222),(s2Step96HeadFRow,222),(s2Step96HeadGvRow,62),(s2Step96HeadFvRow,62)] [s2Step96HeadGFresh,s2Step96HeadFFresh,s2Step96HeadGvFresh,s2Step96HeadFvFresh]=
    some (s2Step96HeadFvAfter,[s2Step96HeadGOut,s2Step96HeadFOut,s2Step96HeadGvOut,s2Step96HeadFvOut],(growRow 769 s2Step96HeadGFresh ++ (growRow 768 s2Step96HeadFFresh ++ (growRow 771 s2Step96HeadGvFresh ++ (growRow 770 s2Step96HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step96HeadFvAfter [] []=some (s2Step96HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step96HeadFvBefore s2Step96HeadFvAfter s2Step96HeadFvAfter
    s2Step96HeadFvRow s2Step96HeadFvOut 62 s2Step96HeadFvFresh [] [] []
    (growRow 770 s2Step96HeadFvFresh) ([]) s2Step96HeadFv_Incoming s2Step96HeadFv_checked h4 s2Step96HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step96HeadGvBefore s2Step96HeadGvAfter s2Step96HeadFvAfter
    s2Step96HeadGvRow s2Step96HeadGvOut 62 s2Step96HeadGvFresh [(s2Step96HeadFvRow,62)] [s2Step96HeadFvFresh] [s2Step96HeadFvOut]
    (growRow 771 s2Step96HeadGvFresh) ((growRow 770 s2Step96HeadFvFresh ++ [])) s2Step96HeadGv_Incoming s2Step96HeadGv_checked h3 s2Step96HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step96HeadFBefore s2Step96HeadFAfter s2Step96HeadFvAfter
    s2Step96HeadFRow s2Step96HeadFOut 222 s2Step96HeadFFresh [(s2Step96HeadGvRow,62),(s2Step96HeadFvRow,62)] [s2Step96HeadGvFresh,s2Step96HeadFvFresh] [s2Step96HeadGvOut,s2Step96HeadFvOut]
    (growRow 768 s2Step96HeadFFresh) ((growRow 771 s2Step96HeadGvFresh ++ (growRow 770 s2Step96HeadFvFresh ++ []))) s2Step96HeadF_Incoming s2Step96HeadF_checked h2 s2Step96HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step96HeadGBefore s2Step96HeadGAfter s2Step96HeadFvAfter
    s2Step96HeadGRow s2Step96HeadGOut 222 s2Step96HeadGFresh [(s2Step96HeadFRow,222),(s2Step96HeadGvRow,62),(s2Step96HeadFvRow,62)] [s2Step96HeadFFresh,s2Step96HeadGvFresh,s2Step96HeadFvFresh] [s2Step96HeadFOut,s2Step96HeadGvOut,s2Step96HeadFvOut]
    (growRow 769 s2Step96HeadGFresh) ((growRow 768 s2Step96HeadFFresh ++ (growRow 771 s2Step96HeadGvFresh ++ (growRow 770 s2Step96HeadFvFresh ++ [])))) s2Step96HeadG_Incoming s2Step96HeadG_checked h1 s2Step96HeadG_Outgoing
  exact h0

private theorem s2Step96HeadBank_checked : compileHmrBankResizeLog .headroom s2Step96HeadGBefore ⟨s2Step96HeadFRow,s2Step96HeadGRow,s2Step96HeadFvRow,s2Step96HeadGvRow⟩ ⟨222,222,62,62⟩ [s2Step96HeadGFresh,s2Step96HeadFFresh,s2Step96HeadGvFresh,s2Step96HeadFvFresh]=
    some (s2Step96HeadFvAfter,⟨s2Step96HeadFOut,s2Step96HeadGOut,s2Step96HeadFvOut,s2Step96HeadGvOut⟩,(growRow 769 s2Step96HeadGFresh ++ (growRow 768 s2Step96HeadFFresh ++ (growRow 771 s2Step96HeadGvFresh ++ (growRow 770 s2Step96HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step96HeadBank_rows]
  rfl

private theorem s2Step96Front_checked : compileHmrSourceFrontLog s2Step96EntryFBefore s2Step96FrontBank 221 61 ⟨221,220,62,61⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step96FrontLog=some s2Step96FrontPlan := by
  have pairEq : s2Step96FrontPair=⟨s2Step96HeadFRow,s2Step96HeadGRow,s2Step96HeadFvRow,s2Step96HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step96FrontHead=⟨s2Step96ExitFRow,s2Step96ExitGRow,s2Step96ExitFvRow,s2Step96ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step96Add0A=s2Step96FrontHead.f.wires := by decide +kernel
  have gEq : s2Step96Add0B=s2Step96FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step96Add1A=s2Step96FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step96Add1B=s2Step96FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step96EntryFBefore s2Step96FrontBank 221 61 ⟨221,220,62,61⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step96FrontLog s2Step96FrontPlan
  · exact s2Step96Front_entry
  · exact s2Step96EntryBank_checked
  · exact s2Step96Front_sigma
  · rfl
  · exact s2Step96Front_branch
  · rfl
  · simpa only [s2Step96FrontPlan,pairEq] using s2Step96HeadBank_checked
  · simpa only [s2Step96FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step96F4_checked
  · exact s2Step96Counter_checked
  · rfl
  · simpa only [s2Step96FrontPlan,headEq] using s2Step96ExitBank_checked

private theorem s2Step96Complete_explicit_checked : compileHmrEarlyStepLog s2Step96EntryFBefore s2Step96FrontBank 221 61 ⟨221,220,62,61⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] 34 s2Step96CompleteLog=some s2Step96CompletePlan := by
  let Q := s2Step96EarlyControlPlan
  have hq := s2Step96EarlyControl_plan_checked
  have fv1 : s2Step96CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step96CompleteOut.fv.payload[2]?.getD s2Step96CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step96CompleteOut.fv.payload[3]?.getD s2Step96CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step96CompleteOut.fv.payload[4]?.getD s2Step96CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step96EntryFBefore s2Step96EarlyControlArena s2Step96FrontBank 221 61 ⟨221,220,62,61⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] 34 s2Step96CompleteLog s2Step96FrontPlan Q
    s2Step96Front_checked s2Step96Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step96Complete_owned s2Step96Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step96EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] 777 794 s2Step96CompleteOut.fv.second (s2Step96CompleteOut.fv.payload[2]?.getD s2Step96CompleteOut.fv.sign) (s2Step96CompleteOut.fv.payload[3]?.getD s2Step96CompleteOut.fv.sign) (s2Step96CompleteOut.fv.payload[4]?.getD s2Step96CompleteOut.fv.sign) 793 34 s2Step96EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep96Arena : Arena := s2Step96EntryFBefore
def s2PrivateStep96Bank : WindowBank := s2Step96FrontBank
def s2PrivateStep96Spec : HmrSourceWalkStepLog := ⟨221,61,⟨221,220,62,61⟩,34,.early s2Step96CompleteLog⟩
def s2PrivateStep96Plan : HmrSourceStepPlan := .early s2Step96CompletePlan
theorem s2PrivateStep96_source : s2PrivateStep96Spec=s2ObservedLogs96[0] := rfl
theorem s2PrivateStep96_checked : compileHmrSourceStepLog s2PrivateStep96Arena s2PrivateStep96Bank
    s2PrivateStep96Spec.fgWidth s2PrivateStep96Spec.vWidth s2PrivateStep96Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876]
    6 498 96 s2PrivateStep96Spec.need none s2PrivateStep96Spec.log=some s2PrivateStep96Plan := by
  change compileHmrSourceStepLog s2Step96EntryFBefore s2Step96FrontBank 221 61 ⟨221,220,62,61⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] 6 498 96 34 none (.early s2Step96CompleteLog)=some (.early s2Step96CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 96<498)]
  rw [s2Step96Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
