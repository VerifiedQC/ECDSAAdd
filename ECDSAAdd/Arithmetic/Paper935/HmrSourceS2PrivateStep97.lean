import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep95
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

private def s2Step97CompleteMoves : List (Wire × Wire) := [(791,219)]

private def s2Step97EarlyControlLog : HmrEarlyControlLog := ⟨[791, 794, 785, 799, 793],[786],[846],[847, 849, 851, 867, 877, 878],[]⟩

private def s2Step97FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [793], [], [794]],[[786], [799], [785], [839]],[[], [], [], []]⟩,[802],[781],[846],[847],[849, 851, 867, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[849, 851, 867, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[846, 847, 849, 851]⟩

private def s2Step97CompleteLog : HmrEarlyStepLog := ⟨s2Step97FrontLog,s2Step97CompleteMoves,s2Step97EarlyControlLog⟩

private def s2Step97ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732],768⟩

private def s2Step97ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839],770⟩

private def s2Step97ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218],769⟩

private def s2Step97ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796],771⟩

private def s2Step97FrontOut : WindowBank := ⟨s2Step97ExitFOut,s2Step97ExitGOut,s2Step97ExitFvOut,s2Step97ExitGvOut⟩

private def s2Step97CompleteOut : WindowBank := s2Step97FrontOut.repacked s2Step97CompleteMoves

private def s2Step97EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (787≤q ∧ q<791) ∨ (792≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step97EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step97EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step97EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step97EarlyControlPositiveArena,[786],s2Step97EarlyControlEqualityArena,[846],⟨⟨802,false⟩,[⟨⟨786,false⟩,846⟩]⟩⟩

private def s2Step97EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<879)),Finset.filter_subset _ _⟩

private def s2Step97EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<879)),Finset.filter_subset _ _⟩

private def s2Step97EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (787≤q ∧ q<791) ∨ (792≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step97EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<791) ∨ (792≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step97EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (787≤q ∧ q<791) ∨ (792≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step97EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<786) ∨ (787≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step97EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,791⟩,⟨⟨774,false⟩,794⟩,⟨⟨775,false⟩,785⟩,⟨⟨776,false⟩,799⟩,⟨⟨777,false⟩,793⟩]⟩

private def s2Step97EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step97EarlyControlZeroArena,s2Step97EarlyControlZeroPlan,s2Step97EarlyControlClassPlan,s2Step97EarlyControlFlagArena,s2Step97EarlyControlFittedArena,s2Step97EarlyControlHistoryArena,s2Step97EarlyControlSigmaArena,s2Step97EarlyControlOutputArena,s2Step97EarlyControlLog⟩

private def s2Step97CounterWork : List Wire := [846, 847, 849, 851]

private theorem s2Step97Counter_bounded : s2Step97CounterWork.toFinset⊆arenaWires := by norm_num [s2Step97CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step97HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step97CounterDuring : Arena := ⟨s2Step97HeadFvAfter.live∪s2Step97CounterWork.toFinset,Finset.union_subset s2Step97HeadFvAfter.bounded s2Step97Counter_bounded⟩

private def s2Step97EntryFFresh : List Wire := []

private def s2Step97EntryFvFresh : List Wire := []

private def s2Step97EntryGFresh : List Wire := [793]

private def s2Step97EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step97EntryGvFresh : List Wire := [794]

private def s2Step97ExitFExtra : List Wire := [799]

private def s2Step97ExitGExtra : List Wire := [219, 793, 786]

private def s2Step97ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<219) ∨ (220≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step97ExitGvExtra : List Wire := [794, 785]

private def s2Step97Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step97Add0Work : List Wire := [849, 851, 867, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step97Add0_bounded : s2Step97Add0Work.toFinset⊆arenaWires := by
  have h : s2Step97Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step97Add0During : Arena := ⟨s2Step97Add0Arena.live∪s2Step97Add0Work.toFinset,Finset.union_subset s2Step97Add0Arena.bounded s2Step97Add0_bounded⟩

private def s2Step97Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step97Add1Work : List Wire := [849, 851, 867, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step97Add1_bounded : s2Step97Add1Work.toFinset⊆arenaWires := by
  have h : s2Step97Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step97Add1During : Arena := ⟨s2Step97Add1Arena.live∪s2Step97Add1Work.toFinset,Finset.union_subset s2Step97Add1Arena.bounded s2Step97Add1_bounded⟩

private def s2Step97F4FlagArena : Arena := ⟨s2Step97HeadFvAfter.live∪{846},Finset.union_subset s2Step97HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step97F4Plan : HmrHybridF4Plan := ⟨s2Step97F4FlagArena,[846],s2Step97Add0Arena,[847],s2Step97Add0During,s2Step97Add0Work,s2Step97Add1During,s2Step97Add1Work⟩

private def s2Step97HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 799],768⟩

private def s2Step97HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839],770⟩

private def s2Step97HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 793, 786],769⟩

private def s2Step97HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 794, 785],771⟩

private def s2Step97FrontHead : WindowBank := ⟨s2Step97HeadFOut,s2Step97HeadGOut,s2Step97HeadFvOut,s2Step97HeadGvOut⟩

private def s2Step97EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732],768⟩

private def s2Step97EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779],770⟩

private def s2Step97EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 793],769⟩

private def s2Step97EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 794],771⟩

private def s2Step97FrontPair : WindowBank := ⟨s2Step97EntryFOut,s2Step97EntryGOut,s2Step97EntryFvOut,s2Step97EntryGvOut⟩

private def s2Step97FrontSigmaArena : Arena := ⟨s2Step97EntryGvAfter.live∪{802},Finset.union_subset s2Step97EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step97HeadFFresh : List Wire := [799]

private def s2Step97HeadFvFresh : List Wire := [839]

private def s2Step97HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (787≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step97HeadGFresh : List Wire := [786]

private def s2Step97HeadGvFresh : List Wire := [785]

private def s2Step97FrontPlan : HmrSourceFront := ⟨s2Step97EntryGvAfter,s2Step97FrontPair,(growRow 768 s2Step97EntryFFresh ++ (growRow 769 s2Step97EntryGFresh ++ (growRow 770 s2Step97EntryFvFresh ++ (growRow 771 s2Step97EntryGvFresh ++ [])))),s2Step97FrontSigmaArena,[802],s2Step97HeadGBefore,[781],
  s2Step97HeadFvAfter,s2Step97FrontHead,(growRow 769 s2Step97HeadGFresh ++ (growRow 768 s2Step97HeadFFresh ++ (growRow 771 s2Step97HeadGvFresh ++ (growRow 770 s2Step97HeadFvFresh ++ [])))),s2Step97F4Plan,s2Step97CounterDuring,s2Step97CounterWork,s2Step97ExitGvAfter,s2Step97FrontOut,(shrinkRow 769 s2Step97ExitGExtra ++ (shrinkRow 768 s2Step97ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step97ExitGvExtra ++ []))))⟩

private def s2Step97CompletePlan : HmrEarlyStepPlan := ⟨s2Step97FrontPlan,s2Step97EarlyControlArena,s2Step97EarlyControlPlan,s2Step97CompleteMoves⟩

private theorem s2Step97Complete_apart : List.Disjoint (s2Step97CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [802, 781, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] := by
  have nd : ((s2Step97CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[802, 781, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step97Complete_owned : (s2Step97CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step97EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step97EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (787≤q ∧ q<791) ∨ (792≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private def s2Step97CompleteMoveArena : Arena := ⟨s2Step97ExitGvAfter.live∪{219},Finset.union_subset s2Step97ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step97Complete_repack : s2Step97ExitGvAfter.checkRepack s2Step97CompleteMoves=some s2Step97EarlyControlArena := by
  have owned : 791∈s2Step97ExitGvAfter.live := by norm_num [s2Step97ExitGvAfter,arenaWires]
  have reserve : s2Step97ExitGvAfter.reserve {219}=some s2Step97CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step97ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step97CompleteMoveArena.retireSet {791}=s2Step97EarlyControlArena := by
    unfold Arena.retireSet s2Step97EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step97CompleteMoveArena,s2Step97ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step97CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step97CompleteMoveArena.retireSet {791}).checkRepack []=some s2Step97EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step97EarlyControl_branchOwned : ([781] : List Wire).toFinset⊆s2Step97EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step97EarlyControlSigmaArena (fun q => (0≤q ∧ q<785) ∨ (787≤q ∧ q<791) ∨ (792≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step97EarlyControl_branch : compileHmrBranchRetirement s2Step97EarlyControlSigmaArena 781=some s2Step97EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step97EarlyControl_branchOwned
  · ext q
    simp [s2Step97EarlyControlOutputArena,s2Step97EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step97EarlyControl_classEqualityBorrow : s2Step97EarlyControlPositiveArena.checkBorrow (([802, 786] : List Wire).length-1) s2Step97EarlyControlLog.classWork=some s2Step97EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step97EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step97EarlyControlPositiveArena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
      decide +kernel
    · ext q
      simp [s2Step97EarlyControlEqualityArena,s2Step97EarlyControlPositiveArena,s2Step97EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step97EarlyControl_classEqualityOwned : ([802, 786] : List Wire).toFinset⊆s2Step97EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step97EarlyControlPositiveArena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step97EarlyControl_classEquality : compileHmrEqualityLog s2Step97EarlyControlPositiveArena [802, 786] 0 s2Step97EarlyControlLog.classWork=some (s2Step97EarlyControlEqualityArena,s2Step97EarlyControlLog.classWork,s2Step97EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step97EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step97EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step97EarlyControl_classOwned : ([777, 793, 802] : List Wire).toFinset⊆s2Step97EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step97EarlyControlZeroArena (fun q => (0≤q ∧ q<786) ∨ (787≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step97EarlyControl_positiveBorrow : s2Step97EarlyControlZeroArena.checkBorrow (1) s2Step97EarlyControlLog.positiveWork=some s2Step97EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step97EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step97EarlyControlZeroArena (fun q => (0≤q ∧ q<786) ∨ (787≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
      decide +kernel
    · ext q
      simp [s2Step97EarlyControlPositiveArena,s2Step97EarlyControlZeroArena,s2Step97EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step97EarlyControl_class : compileHmrSourceClassLog s2Step97EarlyControlZeroArena false 777 s2Step97EarlyControlZeroPlan.top 0 802 s2Step97EarlyControlLog.positiveWork s2Step97EarlyControlLog.classWork=some s2Step97EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step97EarlyControlClassPlan s2Step97EarlyControlZeroArena false 777 s2Step97EarlyControlZeroPlan.top 0 802
  constructor
  · decide +kernel
  · exact s2Step97EarlyControl_classOwned
  · exact s2Step97EarlyControl_positiveBorrow
  · exact s2Step97EarlyControl_classEquality

private theorem s2Step97EarlyControl_entryRecordOwned : ([781, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] : List Wire).toFinset⊆s2Step97EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step97EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (787≤q ∧ q<791) ∨ (792≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step97EarlyControl_entrySigmaOwned : ([802, 254] : List Wire).toFinset⊆s2Step97EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step97EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (787≤q ∧ q<791) ∨ (792≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step97EarlyControl_fitBorrow : s2Step97EarlyControlFlagArena.checkBorrow ((34-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] : List Wire).length)) s2Step97EarlyControlLog.recordFresh=some s2Step97EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step97EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step97EarlyControlFlagArena (fun q => (0≤q ∧ q<879)) rfl
      decide +kernel
    · ext q
      simp [s2Step97EarlyControlFittedArena,s2Step97EarlyControlFlagArena,s2Step97EarlyControlLog,arenaWires]

private theorem s2Step97EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] : List Wire).toFinset⊆s2Step97EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step97EarlyControlFlagArena (fun q => (0≤q ∧ q<879)) rfl
  decide +kernel

private theorem s2Step97EarlyControl_fit : compileHmrRecordGrowLog s2Step97EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] 34 s2Step97EarlyControlLog.recordFresh=some s2Step97EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step97EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step97EarlyControl_fitBorrow

private theorem s2Step97EarlyControl_flagsBorrow : s2Step97EarlyControlEqualityArena.checkBorrow (6) s2Step97EarlyControlLog.flagWork=some s2Step97EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step97EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step97EarlyControlEqualityArena (fun q => (0≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
      decide +kernel
    · ext q
      simp [s2Step97EarlyControlFlagArena,s2Step97EarlyControlEqualityArena,s2Step97EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step97EarlyControl_flagsOwned : ([846, 253, 252, 251] : List Wire).toFinset⊆s2Step97EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step97EarlyControlEqualityArena (fun q => (0≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step97EarlyControl_flags : compileHmrFlagsLog s2Step97EarlyControlClassPlan.equalityArena s2Step97EarlyControlClassPlan.equality.top 253 252 251 s2Step97EarlyControlLog.flagWork=some s2Step97EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step97EarlyControl_flagsOwned⟩
  · exact s2Step97EarlyControl_flagsBorrow

private theorem s2Step97EarlyControl_historyBorrow : s2Step97EarlyControlArena.checkBorrow ((34-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] : List Wire).length)) s2Step97EarlyControlLog.recordFresh=some s2Step97EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step97EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step97EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (787≤q ∧ q<791) ∨ (792≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
      decide +kernel
    · ext q
      simp [s2Step97EarlyControlHistoryArena,s2Step97EarlyControlArena,s2Step97EarlyControlLog,arenaWires]

private theorem s2Step97EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] : List Wire).toFinset⊆s2Step97EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step97EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (787≤q ∧ q<791) ∨ (792≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step97EarlyControl_history : compileHmrRecordGrowLog s2Step97EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] 34 s2Step97EarlyControlLog.recordFresh=some s2Step97EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step97EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step97EarlyControl_historyBorrow

private theorem s2Step97EarlyControl_sigmaOwned : ([254, 802] : List Wire).toFinset⊆s2Step97EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step97EarlyControlHistoryArena (fun q => (0≤q ∧ q<785) ∨ (787≤q ∧ q<791) ∨ (792≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step97EarlyControl_sigmaReleaseOwned : ([802] : List Wire).toFinset⊆s2Step97EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step97EarlyControlHistoryArena (fun q => (0≤q ∧ q<785) ∨ (787≤q ∧ q<791) ∨ (792≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step97EarlyControl_sigmaRelease : s2Step97EarlyControlHistoryArena.release {802} (fun _ => false)=some s2Step97EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step97EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step97EarlyControlSigmaArena,s2Step97EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step97EarlyControl_sigma : compileHmrSigmaDropLog s2Step97EarlyControlHistoryArena false 0 0 254 802 []=some s2Step97EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step97EarlyControl_sigmaOwned⟩
  · exact s2Step97EarlyControl_sigmaRelease

private theorem s2Step97EarlyControl_zeroBorrow : s2Step97EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step97EarlyControlLog.zeroWork=some s2Step97EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step97EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step97EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (787≤q ∧ q<791) ∨ (792≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
      decide +kernel
    · ext q
      simp [s2Step97EarlyControlZeroArena,s2Step97EarlyControlArena,s2Step97EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step97EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step97EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step97EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (787≤q ∧ q<791) ∨ (792≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step97EarlyControl_zero : compileHmrEqualityLog s2Step97EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step97EarlyControlLog.zeroWork=some (s2Step97EarlyControlZeroArena,s2Step97EarlyControlLog.zeroWork,s2Step97EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step97EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step97EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step97EarlyControl_logged : s2Step97EarlyControlPlan.Logged s2Step97EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] 777 802 254 253 252 251 781 34 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step97EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step97EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step97EarlyControl_zero
  · exact s2Step97EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step97EarlyControl_flags
  · exact s2Step97EarlyControl_fit
  · exact s2Step97EarlyControl_history
  · exact s2Step97EarlyControl_sigma
  · exact s2Step97EarlyControl_branch

private theorem s2Step97EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step97EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] 777 802 254 253 252 251 781 34 s2Step97EarlyControlLog=some s2Step97EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step97EarlyControlPlan s2Step97EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] 777 802 254 253 252 251 781 34 s2Step97EarlyControl_logged

private def s2Step97EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step97EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732],768⟩

private def s2Step97EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779],770⟩

private def s2Step97EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219],769⟩

private def s2Step97EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796],771⟩

private def s2Step97FrontBank : WindowBank := ⟨s2Step97EntryFRow,s2Step97EntryGRow,s2Step97EntryFvRow,s2Step97EntryGvRow⟩

private def s2Step97Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 799, 768]

private def s2Step97Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 793, 786, 769]

private def s2Step97Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 770]

private def s2Step97Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 794, 785, 771]

private theorem s2Step97Counter_apart : Disjoint s2Step97HeadFvAfter.live s2Step97CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step97HeadFvAfter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step97Counter_borrowed : s2Step97HeadFvAfter.checkBorrow 4 s2Step97CounterWork=some s2Step97CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step97HeadFvAfter s2Step97CounterDuring s2Step97CounterWork.toFinset s2Step97Counter_bounded s2Step97Counter_apart rfl

private theorem s2Step97Counter_owned : (802::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step97HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step97HeadFvAfter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step97Counter_checked : compileHmrCounterStepLog s2Step97HeadFvAfter true 802 [772, 773, 774, 775, 776, 777] s2Step97CounterWork=some s2Step97CounterDuring := by
  have owned : ∀q∈802::[772, 773, 774, 775, 776, 777],q∈s2Step97HeadFvAfter.live := fun q hq => s2Step97Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step97Counter_borrowed

private def s2Step97EntryFAfter : Arena := s2Step97EntryFBefore

private theorem s2Step97EntryBank_incomingDistinct : ([s2Step97EntryFRow,s2Step97EntryGRow,s2Step97EntryFvRow,s2Step97EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step97EntryF_Incoming : rowsOwned s2Step97EntryFBefore [s2Step97EntryFRow,s2Step97EntryGRow,s2Step97EntryFvRow,s2Step97EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step97EntryFRow,s2Step97EntryGRow,s2Step97EntryFvRow,s2Step97EntryGvRow] 0 s2Step97EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step97EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step97EntryBank_outgoingOwned : rowsOwned s2Step97EntryGvAfter [s2Step97EntryFOut,s2Step97EntryGOut,s2Step97EntryFvOut,s2Step97EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step97EntryGvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step97EntryF_Outgoing : rowsOwned s2Step97EntryGvAfter [s2Step97EntryFOut,s2Step97EntryGOut,s2Step97EntryFvOut,s2Step97EntryGvOut] :=
  hmrRows_owned_drop s2Step97EntryGvAfter [s2Step97EntryFOut,s2Step97EntryGOut,s2Step97EntryFvOut,s2Step97EntryGvOut] 0 s2Step97EntryBank_outgoingOwned

private theorem s2Step97EntryF_distinct : (s2Step97EntryFRow.sign::s2Step97EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step97EntryF_owned : (s2Step97EntryFRow.sign::s2Step97EntryFRow.payload).toFinset⊆s2Step97EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step97EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step97EntryF_reserved : s2Step97EntryFBefore.reserve s2Step97EntryFFresh.toFinset=some s2Step97EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step97EntryFFresh,arenaWires]
  · norm_num [s2Step97EntryFBefore,s2Step97EntryFFresh,arenaWires]
  · simp only [s2Step97EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step97EntryF_checked : planRowResizeLog s2Step97EntryFBefore s2Step97EntryFRow 221 s2Step97EntryFFresh=
    some (s2Step97EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732],768⟩,growRow 768 s2Step97EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step97EntryFBefore s2Step97EntryFAfter s2Step97EntryFRow 221 s2Step97EntryFFresh
    s2Step97EntryF_distinct s2Step97EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step97EntryF_reserved
  have rowEq : WindowRow.mk (s2Step97EntryFRow.payload++s2Step97EntryFFresh) s2Step97EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step97EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step97EntryFvAfter : Arena := s2Step97EntryGAfter

private def s2Step97EntryFvBefore : Arena := s2Step97EntryGAfter

private theorem s2Step97EntryFv_Incoming : rowsOwned s2Step97EntryFvBefore [s2Step97EntryFvRow,s2Step97EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step97EntryFRow,s2Step97EntryGRow,s2Step97EntryFvRow,s2Step97EntryGvRow] 2 s2Step97EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step97EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step97EntryFv_Outgoing : rowsOwned s2Step97EntryGvAfter [s2Step97EntryFvOut,s2Step97EntryGvOut] :=
  hmrRows_owned_drop s2Step97EntryGvAfter [s2Step97EntryFOut,s2Step97EntryGOut,s2Step97EntryFvOut,s2Step97EntryGvOut] 2 s2Step97EntryBank_outgoingOwned

private theorem s2Step97EntryFv_distinct : (s2Step97EntryFvRow.sign::s2Step97EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step97EntryFv_owned : (s2Step97EntryFvRow.sign::s2Step97EntryFvRow.payload).toFinset⊆s2Step97EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step97EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step97EntryFv_reserved : s2Step97EntryFvBefore.reserve s2Step97EntryFvFresh.toFinset=some s2Step97EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step97EntryFvFresh,arenaWires]
  · norm_num [s2Step97EntryFvBefore,s2Step97EntryGAfter,s2Step97EntryFvFresh,arenaWires]
  · simp only [s2Step97EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step97EntryFv_checked : planRowResizeLog s2Step97EntryFvBefore s2Step97EntryFvRow 62 s2Step97EntryFvFresh=
    some (s2Step97EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779],770⟩,growRow 770 s2Step97EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step97EntryFvBefore s2Step97EntryFvAfter s2Step97EntryFvRow 62 s2Step97EntryFvFresh
    s2Step97EntryFv_distinct s2Step97EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step97EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step97EntryFvRow.payload++s2Step97EntryFvFresh) s2Step97EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step97EntryGBefore : Arena := s2Step97EntryFBefore

private theorem s2Step97EntryG_Incoming : rowsOwned s2Step97EntryGBefore [s2Step97EntryGRow,s2Step97EntryFvRow,s2Step97EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step97EntryFRow,s2Step97EntryGRow,s2Step97EntryFvRow,s2Step97EntryGvRow] 1 s2Step97EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step97EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step97EntryG_Outgoing : rowsOwned s2Step97EntryGvAfter [s2Step97EntryGOut,s2Step97EntryFvOut,s2Step97EntryGvOut] :=
  hmrRows_owned_drop s2Step97EntryGvAfter [s2Step97EntryFOut,s2Step97EntryGOut,s2Step97EntryFvOut,s2Step97EntryGvOut] 1 s2Step97EntryBank_outgoingOwned

private theorem s2Step97EntryG_distinct : (s2Step97EntryGRow.sign::s2Step97EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step97EntryG_owned : (s2Step97EntryGRow.sign::s2Step97EntryGRow.payload).toFinset⊆s2Step97EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step97EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step97EntryG_reserved : s2Step97EntryGBefore.reserve s2Step97EntryGFresh.toFinset=some s2Step97EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step97EntryGFresh,arenaWires]
  · norm_num [s2Step97EntryGBefore,s2Step97EntryFBefore,s2Step97EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step97EntryGAfter,s2Step97EntryGBefore,s2Step97EntryFBefore,s2Step97EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step97EntryG_checked : planRowResizeLog s2Step97EntryGBefore s2Step97EntryGRow 221 s2Step97EntryGFresh=
    some (s2Step97EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 793],769⟩,growRow 769 s2Step97EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step97EntryGBefore s2Step97EntryGAfter s2Step97EntryGRow 221 s2Step97EntryGFresh
    s2Step97EntryG_distinct s2Step97EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step97EntryG_reserved
  have rowEq : WindowRow.mk (s2Step97EntryGRow.payload++s2Step97EntryGFresh) s2Step97EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 793],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step97EntryGvBefore : Arena := s2Step97EntryGAfter

private theorem s2Step97EntryGv_Incoming : rowsOwned s2Step97EntryGvBefore [s2Step97EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step97EntryFRow,s2Step97EntryGRow,s2Step97EntryFvRow,s2Step97EntryGvRow] 3 s2Step97EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step97EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step97EntryGv_Outgoing : rowsOwned s2Step97EntryGvAfter [s2Step97EntryGvOut] :=
  hmrRows_owned_drop s2Step97EntryGvAfter [s2Step97EntryFOut,s2Step97EntryGOut,s2Step97EntryFvOut,s2Step97EntryGvOut] 3 s2Step97EntryBank_outgoingOwned

private theorem s2Step97EntryGv_distinct : (s2Step97EntryGvRow.sign::s2Step97EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step97EntryGv_owned : (s2Step97EntryGvRow.sign::s2Step97EntryGvRow.payload).toFinset⊆s2Step97EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step97EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step97EntryGv_reserved : s2Step97EntryGvBefore.reserve s2Step97EntryGvFresh.toFinset=some s2Step97EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step97EntryGvFresh,arenaWires]
  · norm_num [s2Step97EntryGvBefore,s2Step97EntryGAfter,s2Step97EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step97EntryGvAfter,s2Step97EntryGvBefore,s2Step97EntryGAfter,s2Step97EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step97EntryGv_checked : planRowResizeLog s2Step97EntryGvBefore s2Step97EntryGvRow 62 s2Step97EntryGvFresh=
    some (s2Step97EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 794],771⟩,growRow 771 s2Step97EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step97EntryGvBefore s2Step97EntryGvAfter s2Step97EntryGvRow 62 s2Step97EntryGvFresh
    s2Step97EntryGv_distinct s2Step97EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step97EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step97EntryGvRow.payload++s2Step97EntryGvFresh) s2Step97EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 794],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step97EntryBank_rows : planWindowRowsLog s2Step97EntryFBefore [(s2Step97EntryFRow,221),(s2Step97EntryGRow,221),(s2Step97EntryFvRow,62),(s2Step97EntryGvRow,62)] [s2Step97EntryFFresh,s2Step97EntryGFresh,s2Step97EntryFvFresh,s2Step97EntryGvFresh]=
    some (s2Step97EntryGvAfter,[s2Step97EntryFOut,s2Step97EntryGOut,s2Step97EntryFvOut,s2Step97EntryGvOut],(growRow 768 s2Step97EntryFFresh ++ (growRow 769 s2Step97EntryGFresh ++ (growRow 770 s2Step97EntryFvFresh ++ (growRow 771 s2Step97EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step97EntryGvAfter [] []=some (s2Step97EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step97EntryGvBefore s2Step97EntryGvAfter s2Step97EntryGvAfter
    s2Step97EntryGvRow s2Step97EntryGvOut 62 s2Step97EntryGvFresh [] [] []
    (growRow 771 s2Step97EntryGvFresh) ([]) s2Step97EntryGv_Incoming s2Step97EntryGv_checked h4 s2Step97EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step97EntryFvBefore s2Step97EntryFvAfter s2Step97EntryGvAfter
    s2Step97EntryFvRow s2Step97EntryFvOut 62 s2Step97EntryFvFresh [(s2Step97EntryGvRow,62)] [s2Step97EntryGvFresh] [s2Step97EntryGvOut]
    (growRow 770 s2Step97EntryFvFresh) ((growRow 771 s2Step97EntryGvFresh ++ [])) s2Step97EntryFv_Incoming s2Step97EntryFv_checked h3 s2Step97EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step97EntryGBefore s2Step97EntryGAfter s2Step97EntryGvAfter
    s2Step97EntryGRow s2Step97EntryGOut 221 s2Step97EntryGFresh [(s2Step97EntryFvRow,62),(s2Step97EntryGvRow,62)] [s2Step97EntryFvFresh,s2Step97EntryGvFresh] [s2Step97EntryFvOut,s2Step97EntryGvOut]
    (growRow 769 s2Step97EntryGFresh) ((growRow 770 s2Step97EntryFvFresh ++ (growRow 771 s2Step97EntryGvFresh ++ []))) s2Step97EntryG_Incoming s2Step97EntryG_checked h2 s2Step97EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step97EntryFBefore s2Step97EntryFAfter s2Step97EntryGvAfter
    s2Step97EntryFRow s2Step97EntryFOut 221 s2Step97EntryFFresh [(s2Step97EntryGRow,221),(s2Step97EntryFvRow,62),(s2Step97EntryGvRow,62)] [s2Step97EntryGFresh,s2Step97EntryFvFresh,s2Step97EntryGvFresh] [s2Step97EntryGOut,s2Step97EntryFvOut,s2Step97EntryGvOut]
    (growRow 768 s2Step97EntryFFresh) ((growRow 769 s2Step97EntryGFresh ++ (growRow 770 s2Step97EntryFvFresh ++ (growRow 771 s2Step97EntryGvFresh ++ [])))) s2Step97EntryF_Incoming s2Step97EntryF_checked h1 s2Step97EntryF_Outgoing
  exact h0

private theorem s2Step97EntryBank_checked : compileHmrBankResizeLog .entry s2Step97EntryFBefore ⟨s2Step97EntryFRow,s2Step97EntryGRow,s2Step97EntryFvRow,s2Step97EntryGvRow⟩ ⟨221,221,62,62⟩ [s2Step97EntryFFresh,s2Step97EntryGFresh,s2Step97EntryFvFresh,s2Step97EntryGvFresh]=
    some (s2Step97EntryGvAfter,⟨s2Step97EntryFOut,s2Step97EntryGOut,s2Step97EntryFvOut,s2Step97EntryGvOut⟩,(growRow 768 s2Step97EntryFFresh ++ (growRow 769 s2Step97EntryGFresh ++ (growRow 770 s2Step97EntryFvFresh ++ (growRow 771 s2Step97EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step97EntryBank_rows]
  rfl

private def s2Step97ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<219) ∨ (220≤q ∧ q<786) ∨ (787≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step97ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<219) ∨ (220≤q ∧ q<786) ∨ (787≤q ∧ q<793) ∨ (794≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step97ExitFBefore : Arena := s2Step97ExitGAfter

private def s2Step97ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 799],768⟩

private def s2Step97ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839],770⟩

private def s2Step97ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 793, 786],769⟩

private def s2Step97ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 794, 785],771⟩

private theorem s2Step97ExitBank_incomingDistinct : ([s2Step97ExitGRow,s2Step97ExitFRow,s2Step97ExitFvRow,s2Step97ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step97ExitF_Incoming : rowsOwned s2Step97ExitFBefore [s2Step97ExitFRow,s2Step97ExitFvRow,s2Step97ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step97ExitGRow,s2Step97ExitFRow,s2Step97ExitFvRow,s2Step97ExitGvRow] 1 s2Step97ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step97ExitFBefore (fun q => (0≤q ∧ q<219) ∨ (220≤q ∧ q<786) ∨ (787≤q ∧ q<793) ∨ (794≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step97ExitBank_outgoingOwned : rowsOwned s2Step97ExitGvAfter [s2Step97ExitGOut,s2Step97ExitFOut,s2Step97ExitFvOut,s2Step97ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step97ExitGvAfter (fun q => (0≤q ∧ q<219) ∨ (220≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step97ExitF_Outgoing : rowsOwned s2Step97ExitGvAfter [s2Step97ExitFOut,s2Step97ExitFvOut,s2Step97ExitGvOut] :=
  hmrRows_owned_drop s2Step97ExitGvAfter [s2Step97ExitGOut,s2Step97ExitFOut,s2Step97ExitFvOut,s2Step97ExitGvOut] 1 s2Step97ExitBank_outgoingOwned

private theorem s2Step97ExitF_distinct : (s2Step97ExitFRow.sign::s2Step97ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step97ExitF_owned : (s2Step97ExitFRow.sign::s2Step97ExitFRow.payload).toFinset⊆s2Step97ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step97ExitFBefore (fun q => (0≤q ∧ q<219) ∨ (220≤q ∧ q<786) ∨ (787≤q ∧ q<793) ∨ (794≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step97ExitF_retired : s2Step97ExitFBefore.retireSet s2Step97ExitFExtra.toFinset=s2Step97ExitFAfter := by
  unfold Arena.retireSet s2Step97ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step97ExitFBefore,s2Step97ExitGAfter,s2Step97ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step97ExitF_checked : planRowResizeLog s2Step97ExitFBefore s2Step97ExitFRow 221 []=
    some (s2Step97ExitFAfter,s2Step97ExitFOut,shrinkRow 768 s2Step97ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step97ExitFBefore s2Step97ExitFRow 221 s2Step97ExitF_distinct s2Step97ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step97ExitFRow.payload.take 221) s2Step97ExitFRow.sign=s2Step97ExitFOut := by decide +kernel
  have hi : s2Step97ExitFRow.payload.drop 221=s2Step97ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step97ExitF_retired] at result
  exact result

private def s2Step97ExitFvAfter : Arena := s2Step97ExitFAfter

private def s2Step97ExitFvBefore : Arena := s2Step97ExitFAfter

private theorem s2Step97ExitFv_Incoming : rowsOwned s2Step97ExitFvBefore [s2Step97ExitFvRow,s2Step97ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step97ExitGRow,s2Step97ExitFRow,s2Step97ExitFvRow,s2Step97ExitGvRow] 2 s2Step97ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step97ExitFvBefore (fun q => (0≤q ∧ q<219) ∨ (220≤q ∧ q<786) ∨ (787≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step97ExitFv_Outgoing : rowsOwned s2Step97ExitGvAfter [s2Step97ExitFvOut,s2Step97ExitGvOut] :=
  hmrRows_owned_drop s2Step97ExitGvAfter [s2Step97ExitGOut,s2Step97ExitFOut,s2Step97ExitFvOut,s2Step97ExitGvOut] 2 s2Step97ExitBank_outgoingOwned

private theorem s2Step97ExitFv_distinct : (s2Step97ExitFvRow.sign::s2Step97ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step97ExitFv_owned : (s2Step97ExitFvRow.sign::s2Step97ExitFvRow.payload).toFinset⊆s2Step97ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step97ExitFvBefore (fun q => (0≤q ∧ q<219) ∨ (220≤q ∧ q<786) ∨ (787≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step97ExitFv_reserved : s2Step97ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step97ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step97ExitFv_checked : planRowResizeLog s2Step97ExitFvBefore s2Step97ExitFvRow 63 []=
    some (s2Step97ExitFvAfter,s2Step97ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step97ExitFvBefore s2Step97ExitFvAfter s2Step97ExitFvRow 63 []
    s2Step97ExitFv_distinct s2Step97ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step97ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step97ExitFvRow.payload++[]) s2Step97ExitFvRow.sign=s2Step97ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step97ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private theorem s2Step97ExitG_Incoming : rowsOwned s2Step97ExitGBefore [s2Step97ExitGRow,s2Step97ExitFRow,s2Step97ExitFvRow,s2Step97ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step97ExitGRow,s2Step97ExitFRow,s2Step97ExitFvRow,s2Step97ExitGvRow] 0 s2Step97ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step97ExitGBefore (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step97ExitG_Outgoing : rowsOwned s2Step97ExitGvAfter [s2Step97ExitGOut,s2Step97ExitFOut,s2Step97ExitFvOut,s2Step97ExitGvOut] :=
  hmrRows_owned_drop s2Step97ExitGvAfter [s2Step97ExitGOut,s2Step97ExitFOut,s2Step97ExitFvOut,s2Step97ExitGvOut] 0 s2Step97ExitBank_outgoingOwned

private theorem s2Step97ExitG_distinct : (s2Step97ExitGRow.sign::s2Step97ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step97ExitG_owned : (s2Step97ExitGRow.sign::s2Step97ExitGRow.payload).toFinset⊆s2Step97ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step97ExitGBefore (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step97ExitG_retired : s2Step97ExitGBefore.retireSet s2Step97ExitGExtra.toFinset=s2Step97ExitGAfter := by
  unfold Arena.retireSet s2Step97ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step97ExitGBefore,s2Step97ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step97ExitG_checked : planRowResizeLog s2Step97ExitGBefore s2Step97ExitGRow 219 []=
    some (s2Step97ExitGAfter,s2Step97ExitGOut,shrinkRow 769 s2Step97ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step97ExitGBefore s2Step97ExitGRow 219 s2Step97ExitG_distinct s2Step97ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step97ExitGRow.payload.take 219) s2Step97ExitGRow.sign=s2Step97ExitGOut := by decide +kernel
  have hi : s2Step97ExitGRow.payload.drop 219=s2Step97ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step97ExitG_retired] at result
  exact result

private def s2Step97ExitGvBefore : Arena := s2Step97ExitFAfter

private theorem s2Step97ExitGv_Incoming : rowsOwned s2Step97ExitGvBefore [s2Step97ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step97ExitGRow,s2Step97ExitFRow,s2Step97ExitFvRow,s2Step97ExitGvRow] 3 s2Step97ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step97ExitGvBefore (fun q => (0≤q ∧ q<219) ∨ (220≤q ∧ q<786) ∨ (787≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step97ExitGv_Outgoing : rowsOwned s2Step97ExitGvAfter [s2Step97ExitGvOut] :=
  hmrRows_owned_drop s2Step97ExitGvAfter [s2Step97ExitGOut,s2Step97ExitFOut,s2Step97ExitFvOut,s2Step97ExitGvOut] 3 s2Step97ExitBank_outgoingOwned

private theorem s2Step97ExitGv_distinct : (s2Step97ExitGvRow.sign::s2Step97ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step97ExitGv_owned : (s2Step97ExitGvRow.sign::s2Step97ExitGvRow.payload).toFinset⊆s2Step97ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step97ExitGvBefore (fun q => (0≤q ∧ q<219) ∨ (220≤q ∧ q<786) ∨ (787≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step97ExitGv_retired : s2Step97ExitGvBefore.retireSet s2Step97ExitGvExtra.toFinset=s2Step97ExitGvAfter := by
  unfold Arena.retireSet s2Step97ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step97ExitGvBefore,s2Step97ExitFAfter,s2Step97ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step97ExitGv_checked : planRowResizeLog s2Step97ExitGvBefore s2Step97ExitGvRow 61 []=
    some (s2Step97ExitGvAfter,s2Step97ExitGvOut,shrinkRow 771 s2Step97ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step97ExitGvBefore s2Step97ExitGvRow 61 s2Step97ExitGv_distinct s2Step97ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step97ExitGvRow.payload.take 61) s2Step97ExitGvRow.sign=s2Step97ExitGvOut := by decide +kernel
  have hi : s2Step97ExitGvRow.payload.drop 61=s2Step97ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step97ExitGv_retired] at result
  exact result

private theorem s2Step97ExitBank_rows : planWindowRowsLog s2Step97ExitGBefore [(s2Step97ExitGRow,219),(s2Step97ExitFRow,221),(s2Step97ExitFvRow,63),(s2Step97ExitGvRow,61)] [[],[],[],[]]=
    some (s2Step97ExitGvAfter,[s2Step97ExitGOut,s2Step97ExitFOut,s2Step97ExitFvOut,s2Step97ExitGvOut],(shrinkRow 769 s2Step97ExitGExtra ++ (shrinkRow 768 s2Step97ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step97ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step97ExitGvAfter [] []=some (s2Step97ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step97ExitGvBefore s2Step97ExitGvAfter s2Step97ExitGvAfter
    s2Step97ExitGvRow s2Step97ExitGvOut 61 [] [] [] []
    (shrinkRow 771 s2Step97ExitGvExtra) ([]) s2Step97ExitGv_Incoming s2Step97ExitGv_checked h4 s2Step97ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step97ExitFvBefore s2Step97ExitFvAfter s2Step97ExitGvAfter
    s2Step97ExitFvRow s2Step97ExitFvOut 63 [] [(s2Step97ExitGvRow,61)] [[]] [s2Step97ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step97ExitGvExtra ++ [])) s2Step97ExitFv_Incoming s2Step97ExitFv_checked h3 s2Step97ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step97ExitFBefore s2Step97ExitFAfter s2Step97ExitGvAfter
    s2Step97ExitFRow s2Step97ExitFOut 221 [] [(s2Step97ExitFvRow,63),(s2Step97ExitGvRow,61)] [[],[]] [s2Step97ExitFvOut,s2Step97ExitGvOut]
    (shrinkRow 768 s2Step97ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step97ExitGvExtra ++ []))) s2Step97ExitF_Incoming s2Step97ExitF_checked h2 s2Step97ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step97ExitGBefore s2Step97ExitGAfter s2Step97ExitGvAfter
    s2Step97ExitGRow s2Step97ExitGOut 219 [] [(s2Step97ExitFRow,221),(s2Step97ExitFvRow,63),(s2Step97ExitGvRow,61)] [[],[],[]] [s2Step97ExitFOut,s2Step97ExitFvOut,s2Step97ExitGvOut]
    (shrinkRow 769 s2Step97ExitGExtra) ((shrinkRow 768 s2Step97ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step97ExitGvExtra ++ [])))) s2Step97ExitG_Incoming s2Step97ExitG_checked h1 s2Step97ExitG_Outgoing
  exact h0

private theorem s2Step97ExitBank_checked : compileHmrBankResizeLog .exit s2Step97ExitGBefore ⟨s2Step97ExitFRow,s2Step97ExitGRow,s2Step97ExitFvRow,s2Step97ExitGvRow⟩ ⟨221,219,63,61⟩ [[],[],[],[]]=
    some (s2Step97ExitGvAfter,⟨s2Step97ExitFOut,s2Step97ExitGOut,s2Step97ExitFvOut,s2Step97ExitGvOut⟩,(shrinkRow 769 s2Step97ExitGExtra ++ (shrinkRow 768 s2Step97ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step97ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step97ExitBank_rows]
  rfl

private theorem s2Step97Add0_apart : Disjoint s2Step97Add0Arena.live s2Step97Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step97Add0Arena (fun q => (0≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step97Add0_card : s2Step97Add0Arena.live.card=874 := by
  decide +kernel

private theorem s2Step97Add0_borrowed : s2Step97Add0Arena.checkBorrow (hmrHybridCount s2Step97Add0Arena s2Step97Add0B.length) s2Step97Add0Work=some s2Step97Add0During := by
  have len : s2Step97Add0Work.length=hmrHybridCount s2Step97Add0Arena s2Step97Add0B.length := by
    rw [hmrHybridCount,s2Step97Add0_card]
    decide +kernel
  have nd : s2Step97Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step97Add0Arena s2Step97Add0During s2Step97Add0Work.toFinset s2Step97Add0_bounded s2Step97Add0_apart rfl

private theorem s2Step97Add0_distinct : (846::781::847::(s2Step97Add0A++s2Step97Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step97Add0_owned : (846::781::847::(s2Step97Add0A++s2Step97Add0B)).toFinset⊆s2Step97Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step97Add0Arena (fun q => (0≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step97Add0_checked : compileHmrHybridCinLog s2Step97Add0Arena 781 846 847 s2Step97Add0A s2Step97Add0B s2Step97Add0Work=some s2Step97Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step97Add0Arena s2Step97Add0During 781 846 847 s2Step97Add0A s2Step97Add0B s2Step97Add0Work
    (by decide +kernel) (by decide +kernel) s2Step97Add0_distinct
    (fun q hq => s2Step97Add0_owned (List.mem_toFinset.mpr hq)) s2Step97Add0_borrowed

private theorem s2Step97Add1_apart : Disjoint s2Step97Add1Arena.live s2Step97Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step97Add1Arena (fun q => (0≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step97Add1_card : s2Step97Add1Arena.live.card=874 := by
  decide +kernel

private theorem s2Step97Add1_borrowed : s2Step97Add1Arena.checkBorrow (hmrHybridCount s2Step97Add1Arena s2Step97Add1B.length) s2Step97Add1Work=some s2Step97Add1During := by
  have len : s2Step97Add1Work.length=hmrHybridCount s2Step97Add1Arena s2Step97Add1B.length := by
    rw [hmrHybridCount,s2Step97Add1_card]
    decide +kernel
  have nd : s2Step97Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step97Add1Arena s2Step97Add1During s2Step97Add1Work.toFinset s2Step97Add1_bounded s2Step97Add1_apart rfl

private theorem s2Step97Add1_distinct : (846::781::847::(s2Step97Add1A++s2Step97Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step97Add1_owned : (846::781::847::(s2Step97Add1A++s2Step97Add1B)).toFinset⊆s2Step97Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step97Add1Arena (fun q => (0≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step97Add1_checked : compileHmrHybridCinLog s2Step97Add1Arena 781 846 847 s2Step97Add1A s2Step97Add1B s2Step97Add1Work=some s2Step97Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step97Add1Arena s2Step97Add1During 781 846 847 s2Step97Add1A s2Step97Add1B s2Step97Add1Work
    (by decide +kernel) (by decide +kernel) s2Step97Add1_distinct
    (fun q hq => s2Step97Add1_owned (List.mem_toFinset.mpr hq)) s2Step97Add1_borrowed

private theorem s2Step97F4_apart : Disjoint (s2Step97Add0A++s2Step97Add0B).toFinset (s2Step97Add1A++s2Step97Add1B).toFinset := by
  have nd : ((s2Step97Add0A++s2Step97Add0B)++(s2Step97Add1A++s2Step97Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step97F4_carry : s2Step97F4FlagArena.checkBorrow 1 [847]=some s2Step97Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step97F4FlagArena,s2Step97HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step97F4FlagArena,s2Step97HeadFvAfter,s2Step97Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step97F4_distinct : (802::781::846::847::((s2Step97Add0A++s2Step97Add1A)++(s2Step97Add0B++s2Step97Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step97F4_flag : s2Step97HeadFvAfter.checkBorrow 1 [846]=some s2Step97F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step97HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step97F4_owned : (802::781::((s2Step97Add0A++s2Step97Add1A)++(s2Step97Add0B++s2Step97Add1B))).toFinset⊆s2Step97HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step97HeadFvAfter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step97F4_checked : compileHmrHybridF4Log s2Step97HeadFvAfter 802 781 s2Step97Add0A s2Step97Add0B s2Step97Add1A s2Step97Add1B [846] [847] s2Step97Add0Work s2Step97Add1Work=some s2Step97F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step97HeadFvAfter s2Step97F4FlagArena s2Step97Add0Arena s2Step97Add0During s2Step97Add1During 802 781
    s2Step97Add0A s2Step97Add0B s2Step97Add1A s2Step97Add1B [846] [847] s2Step97Add0Work s2Step97Add1Work
    (fun q hq => s2Step97F4_owned (List.mem_toFinset.mpr hq)) s2Step97F4_flag s2Step97F4_carry
    s2Step97F4_distinct s2Step97F4_apart s2Step97Add0_checked s2Step97Add1_checked

private theorem s2Step97Front_branch : s2Step97FrontSigmaArena.checkBorrow 1 [781]=some s2Step97HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step97FrontSigmaArena,s2Step97EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step97FrontSigmaArena,s2Step97EntryGvAfter,s2Step97HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step97Front_entry : HmrFrontEntryValid s2Step97EntryFBefore s2Step97FrontBank 221 62 ⟨221,219,63,61⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step97FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step97EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step97EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step97FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step97Front_sigma : s2Step97EntryGvAfter.checkBorrow 1 [802]=some s2Step97FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step97EntryGvAfter,arenaWires]
  · rfl

private def s2Step97HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step97HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step97HeadFBefore : Arena := s2Step97HeadGAfter

private def s2Step97HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732],768⟩

private def s2Step97HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779],770⟩

private def s2Step97HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 793],769⟩

private def s2Step97HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 794],771⟩

private theorem s2Step97HeadBank_incomingDistinct : ([s2Step97HeadGRow,s2Step97HeadFRow,s2Step97HeadGvRow,s2Step97HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step97HeadF_Incoming : rowsOwned s2Step97HeadFBefore [s2Step97HeadFRow,s2Step97HeadGvRow,s2Step97HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step97HeadGRow,s2Step97HeadFRow,s2Step97HeadGvRow,s2Step97HeadFvRow] 1 s2Step97HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step97HeadFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step97HeadBank_outgoingOwned : rowsOwned s2Step97HeadFvAfter [s2Step97HeadGOut,s2Step97HeadFOut,s2Step97HeadGvOut,s2Step97HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step97HeadFvAfter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step97HeadF_Outgoing : rowsOwned s2Step97HeadFvAfter [s2Step97HeadFOut,s2Step97HeadGvOut,s2Step97HeadFvOut] :=
  hmrRows_owned_drop s2Step97HeadFvAfter [s2Step97HeadGOut,s2Step97HeadFOut,s2Step97HeadGvOut,s2Step97HeadFvOut] 1 s2Step97HeadBank_outgoingOwned

private theorem s2Step97HeadF_distinct : (s2Step97HeadFRow.sign::s2Step97HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step97HeadF_owned : (s2Step97HeadFRow.sign::s2Step97HeadFRow.payload).toFinset⊆s2Step97HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step97HeadFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step97HeadF_reserved : s2Step97HeadFBefore.reserve s2Step97HeadFFresh.toFinset=some s2Step97HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step97HeadFFresh,arenaWires]
  · norm_num [s2Step97HeadFBefore,s2Step97HeadGAfter,s2Step97HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step97HeadFAfter,s2Step97HeadFBefore,s2Step97HeadGAfter,s2Step97HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step97HeadF_checked : planRowResizeLog s2Step97HeadFBefore s2Step97HeadFRow 222 s2Step97HeadFFresh=
    some (s2Step97HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 799],768⟩,growRow 768 s2Step97HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step97HeadFBefore s2Step97HeadFAfter s2Step97HeadFRow 222 s2Step97HeadFFresh
    s2Step97HeadF_distinct s2Step97HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step97HeadF_reserved
  have rowEq : WindowRow.mk (s2Step97HeadFRow.payload++s2Step97HeadFFresh) s2Step97HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 799],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step97HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step97HeadFvBefore : Arena := s2Step97HeadGvAfter

private theorem s2Step97HeadFv_Incoming : rowsOwned s2Step97HeadFvBefore [s2Step97HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step97HeadGRow,s2Step97HeadFRow,s2Step97HeadGvRow,s2Step97HeadFvRow] 3 s2Step97HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step97HeadFvBefore (fun q => (0≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step97HeadFv_Outgoing : rowsOwned s2Step97HeadFvAfter [s2Step97HeadFvOut] :=
  hmrRows_owned_drop s2Step97HeadFvAfter [s2Step97HeadGOut,s2Step97HeadFOut,s2Step97HeadGvOut,s2Step97HeadFvOut] 3 s2Step97HeadBank_outgoingOwned

private theorem s2Step97HeadFv_distinct : (s2Step97HeadFvRow.sign::s2Step97HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step97HeadFv_owned : (s2Step97HeadFvRow.sign::s2Step97HeadFvRow.payload).toFinset⊆s2Step97HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step97HeadFvBefore (fun q => (0≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step97HeadFv_reserved : s2Step97HeadFvBefore.reserve s2Step97HeadFvFresh.toFinset=some s2Step97HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step97HeadFvFresh,arenaWires]
  · norm_num [s2Step97HeadFvBefore,s2Step97HeadGvAfter,s2Step97HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step97HeadFvAfter,s2Step97HeadFvBefore,s2Step97HeadGvAfter,s2Step97HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step97HeadFv_checked : planRowResizeLog s2Step97HeadFvBefore s2Step97HeadFvRow 63 s2Step97HeadFvFresh=
    some (s2Step97HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839],770⟩,growRow 770 s2Step97HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step97HeadFvBefore s2Step97HeadFvAfter s2Step97HeadFvRow 63 s2Step97HeadFvFresh
    s2Step97HeadFv_distinct s2Step97HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step97HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step97HeadFvRow.payload++s2Step97HeadFvFresh) s2Step97HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step97HeadG_Incoming : rowsOwned s2Step97HeadGBefore [s2Step97HeadGRow,s2Step97HeadFRow,s2Step97HeadGvRow,s2Step97HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step97HeadGRow,s2Step97HeadFRow,s2Step97HeadGvRow,s2Step97HeadFvRow] 0 s2Step97HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step97HeadGBefore (fun q => (0≤q ∧ q<785) ∨ (787≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step97HeadG_Outgoing : rowsOwned s2Step97HeadFvAfter [s2Step97HeadGOut,s2Step97HeadFOut,s2Step97HeadGvOut,s2Step97HeadFvOut] :=
  hmrRows_owned_drop s2Step97HeadFvAfter [s2Step97HeadGOut,s2Step97HeadFOut,s2Step97HeadGvOut,s2Step97HeadFvOut] 0 s2Step97HeadBank_outgoingOwned

private theorem s2Step97HeadG_distinct : (s2Step97HeadGRow.sign::s2Step97HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step97HeadG_owned : (s2Step97HeadGRow.sign::s2Step97HeadGRow.payload).toFinset⊆s2Step97HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step97HeadGBefore (fun q => (0≤q ∧ q<785) ∨ (787≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step97HeadG_reserved : s2Step97HeadGBefore.reserve s2Step97HeadGFresh.toFinset=some s2Step97HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step97HeadGFresh,arenaWires]
  · norm_num [s2Step97HeadGBefore,s2Step97HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step97HeadGAfter,s2Step97HeadGBefore,s2Step97HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step97HeadG_checked : planRowResizeLog s2Step97HeadGBefore s2Step97HeadGRow 222 s2Step97HeadGFresh=
    some (s2Step97HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 793, 786],769⟩,growRow 769 s2Step97HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step97HeadGBefore s2Step97HeadGAfter s2Step97HeadGRow 222 s2Step97HeadGFresh
    s2Step97HeadG_distinct s2Step97HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step97HeadG_reserved
  have rowEq : WindowRow.mk (s2Step97HeadGRow.payload++s2Step97HeadGFresh) s2Step97HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 793, 786],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step97HeadGvBefore : Arena := s2Step97HeadFAfter

private theorem s2Step97HeadGv_Incoming : rowsOwned s2Step97HeadGvBefore [s2Step97HeadGvRow,s2Step97HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step97HeadGRow,s2Step97HeadFRow,s2Step97HeadGvRow,s2Step97HeadFvRow] 2 s2Step97HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step97HeadGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step97HeadGv_Outgoing : rowsOwned s2Step97HeadFvAfter [s2Step97HeadGvOut,s2Step97HeadFvOut] :=
  hmrRows_owned_drop s2Step97HeadFvAfter [s2Step97HeadGOut,s2Step97HeadFOut,s2Step97HeadGvOut,s2Step97HeadFvOut] 2 s2Step97HeadBank_outgoingOwned

private theorem s2Step97HeadGv_distinct : (s2Step97HeadGvRow.sign::s2Step97HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step97HeadGv_owned : (s2Step97HeadGvRow.sign::s2Step97HeadGvRow.payload).toFinset⊆s2Step97HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step97HeadGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step97HeadGv_reserved : s2Step97HeadGvBefore.reserve s2Step97HeadGvFresh.toFinset=some s2Step97HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step97HeadGvFresh,arenaWires]
  · norm_num [s2Step97HeadGvBefore,s2Step97HeadFAfter,s2Step97HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step97HeadGvAfter,s2Step97HeadGvBefore,s2Step97HeadFAfter,s2Step97HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step97HeadGv_checked : planRowResizeLog s2Step97HeadGvBefore s2Step97HeadGvRow 63 s2Step97HeadGvFresh=
    some (s2Step97HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 794, 785],771⟩,growRow 771 s2Step97HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step97HeadGvBefore s2Step97HeadGvAfter s2Step97HeadGvRow 63 s2Step97HeadGvFresh
    s2Step97HeadGv_distinct s2Step97HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step97HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step97HeadGvRow.payload++s2Step97HeadGvFresh) s2Step97HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 794, 785],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step97HeadBank_rows : planWindowRowsLog s2Step97HeadGBefore [(s2Step97HeadGRow,222),(s2Step97HeadFRow,222),(s2Step97HeadGvRow,63),(s2Step97HeadFvRow,63)] [s2Step97HeadGFresh,s2Step97HeadFFresh,s2Step97HeadGvFresh,s2Step97HeadFvFresh]=
    some (s2Step97HeadFvAfter,[s2Step97HeadGOut,s2Step97HeadFOut,s2Step97HeadGvOut,s2Step97HeadFvOut],(growRow 769 s2Step97HeadGFresh ++ (growRow 768 s2Step97HeadFFresh ++ (growRow 771 s2Step97HeadGvFresh ++ (growRow 770 s2Step97HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step97HeadFvAfter [] []=some (s2Step97HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step97HeadFvBefore s2Step97HeadFvAfter s2Step97HeadFvAfter
    s2Step97HeadFvRow s2Step97HeadFvOut 63 s2Step97HeadFvFresh [] [] []
    (growRow 770 s2Step97HeadFvFresh) ([]) s2Step97HeadFv_Incoming s2Step97HeadFv_checked h4 s2Step97HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step97HeadGvBefore s2Step97HeadGvAfter s2Step97HeadFvAfter
    s2Step97HeadGvRow s2Step97HeadGvOut 63 s2Step97HeadGvFresh [(s2Step97HeadFvRow,63)] [s2Step97HeadFvFresh] [s2Step97HeadFvOut]
    (growRow 771 s2Step97HeadGvFresh) ((growRow 770 s2Step97HeadFvFresh ++ [])) s2Step97HeadGv_Incoming s2Step97HeadGv_checked h3 s2Step97HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step97HeadFBefore s2Step97HeadFAfter s2Step97HeadFvAfter
    s2Step97HeadFRow s2Step97HeadFOut 222 s2Step97HeadFFresh [(s2Step97HeadGvRow,63),(s2Step97HeadFvRow,63)] [s2Step97HeadGvFresh,s2Step97HeadFvFresh] [s2Step97HeadGvOut,s2Step97HeadFvOut]
    (growRow 768 s2Step97HeadFFresh) ((growRow 771 s2Step97HeadGvFresh ++ (growRow 770 s2Step97HeadFvFresh ++ []))) s2Step97HeadF_Incoming s2Step97HeadF_checked h2 s2Step97HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step97HeadGBefore s2Step97HeadGAfter s2Step97HeadFvAfter
    s2Step97HeadGRow s2Step97HeadGOut 222 s2Step97HeadGFresh [(s2Step97HeadFRow,222),(s2Step97HeadGvRow,63),(s2Step97HeadFvRow,63)] [s2Step97HeadFFresh,s2Step97HeadGvFresh,s2Step97HeadFvFresh] [s2Step97HeadFOut,s2Step97HeadGvOut,s2Step97HeadFvOut]
    (growRow 769 s2Step97HeadGFresh) ((growRow 768 s2Step97HeadFFresh ++ (growRow 771 s2Step97HeadGvFresh ++ (growRow 770 s2Step97HeadFvFresh ++ [])))) s2Step97HeadG_Incoming s2Step97HeadG_checked h1 s2Step97HeadG_Outgoing
  exact h0

private theorem s2Step97HeadBank_checked : compileHmrBankResizeLog .headroom s2Step97HeadGBefore ⟨s2Step97HeadFRow,s2Step97HeadGRow,s2Step97HeadFvRow,s2Step97HeadGvRow⟩ ⟨222,222,63,63⟩ [s2Step97HeadGFresh,s2Step97HeadFFresh,s2Step97HeadGvFresh,s2Step97HeadFvFresh]=
    some (s2Step97HeadFvAfter,⟨s2Step97HeadFOut,s2Step97HeadGOut,s2Step97HeadFvOut,s2Step97HeadGvOut⟩,(growRow 769 s2Step97HeadGFresh ++ (growRow 768 s2Step97HeadFFresh ++ (growRow 771 s2Step97HeadGvFresh ++ (growRow 770 s2Step97HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step97HeadBank_rows]
  rfl

private theorem s2Step97Front_checked : compileHmrSourceFrontLog s2Step97EntryFBefore s2Step97FrontBank 221 62 ⟨221,219,63,61⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step97FrontLog=some s2Step97FrontPlan := by
  have pairEq : s2Step97FrontPair=⟨s2Step97HeadFRow,s2Step97HeadGRow,s2Step97HeadFvRow,s2Step97HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step97FrontHead=⟨s2Step97ExitFRow,s2Step97ExitGRow,s2Step97ExitFvRow,s2Step97ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step97Add0A=s2Step97FrontHead.f.wires := by decide +kernel
  have gEq : s2Step97Add0B=s2Step97FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step97Add1A=s2Step97FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step97Add1B=s2Step97FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step97EntryFBefore s2Step97FrontBank 221 62 ⟨221,219,63,61⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step97FrontLog s2Step97FrontPlan
  · exact s2Step97Front_entry
  · exact s2Step97EntryBank_checked
  · exact s2Step97Front_sigma
  · rfl
  · exact s2Step97Front_branch
  · rfl
  · simpa only [s2Step97FrontPlan,pairEq] using s2Step97HeadBank_checked
  · simpa only [s2Step97FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step97F4_checked
  · exact s2Step97Counter_checked
  · rfl
  · simpa only [s2Step97FrontPlan,headEq] using s2Step97ExitBank_checked

private theorem s2Step97Complete_explicit_checked : compileHmrEarlyStepLog s2Step97EntryFBefore s2Step97FrontBank 221 62 ⟨221,219,63,61⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] 34 s2Step97CompleteLog=some s2Step97CompletePlan := by
  let Q := s2Step97EarlyControlPlan
  have hq := s2Step97EarlyControl_plan_checked
  have fv1 : s2Step97CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step97CompleteOut.fv.payload[2]?.getD s2Step97CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step97CompleteOut.fv.payload[3]?.getD s2Step97CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step97CompleteOut.fv.payload[4]?.getD s2Step97CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step97EntryFBefore s2Step97EarlyControlArena s2Step97FrontBank 221 62 ⟨221,219,63,61⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] 34 s2Step97CompleteLog s2Step97FrontPlan Q
    s2Step97Front_checked s2Step97Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step97Complete_owned s2Step97Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step97EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] 777 802 s2Step97CompleteOut.fv.second (s2Step97CompleteOut.fv.payload[2]?.getD s2Step97CompleteOut.fv.sign) (s2Step97CompleteOut.fv.payload[3]?.getD s2Step97CompleteOut.fv.sign) (s2Step97CompleteOut.fv.payload[4]?.getD s2Step97CompleteOut.fv.sign) 781 34 s2Step97EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep97Arena : Arena := s2Step97EntryFBefore
def s2PrivateStep97Bank : WindowBank := s2Step97FrontBank
def s2PrivateStep97Spec : HmrSourceWalkStepLog := ⟨221,62,⟨221,219,63,61⟩,34,.early s2Step97CompleteLog⟩
def s2PrivateStep97Plan : HmrSourceStepPlan := .early s2Step97CompletePlan
theorem s2PrivateStep97_source : s2PrivateStep97Spec=s2ObservedLogs96[1] := rfl
theorem s2PrivateStep97_checked : compileHmrSourceStepLog s2PrivateStep97Arena s2PrivateStep97Bank
    s2PrivateStep97Spec.fgWidth s2PrivateStep97Spec.vWidth s2PrivateStep97Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876]
    6 498 97 s2PrivateStep97Spec.need none s2PrivateStep97Spec.log=some s2PrivateStep97Plan := by
  change compileHmrSourceStepLog s2Step97EntryFBefore s2Step97FrontBank 221 62 ⟨221,219,63,61⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] 6 498 97 34 none (.early s2Step97CompleteLog)=some (.early s2Step97CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 97<498)]
  rw [s2Step97Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
