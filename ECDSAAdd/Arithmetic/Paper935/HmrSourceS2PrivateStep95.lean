import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep93
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

private def s2Step95CompleteMoves : List (Wire × Wire) := []

private def s2Step95EarlyControlLog : HmrEarlyControlLog := ⟨[799, 786, 781, 779, 785],[839],[846],[847, 849, 851, 867, 877, 878],[]⟩

private def s2Step95FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [796]],[[779], [781], [799], [786]],[[], [], [], []]⟩,[793],[794],[785],[839],[846, 847, 849, 851, 867, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[846, 847, 849, 851, 867, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933],[785, 839, 846, 847]⟩

private def s2Step95CompleteLog : HmrEarlyStepLog := ⟨s2Step95FrontLog,s2Step95CompleteMoves,s2Step95EarlyControlLog⟩

private def s2Step95ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732],768⟩

private def s2Step95ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844],770⟩

private def s2Step95ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220],769⟩

private def s2Step95ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796],771⟩

private def s2Step95FrontOut : WindowBank := ⟨s2Step95ExitFOut,s2Step95ExitGOut,s2Step95ExitFvOut,s2Step95ExitGvOut⟩

private def s2Step95CompleteOut : WindowBank := s2Step95FrontOut.repacked s2Step95CompleteMoves

private def s2Step95EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step95EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step95EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step95EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step95EarlyControlPositiveArena,[839],s2Step95EarlyControlEqualityArena,[846],⟨⟨793,false⟩,[⟨⟨839,false⟩,846⟩]⟩⟩

private def s2Step95EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<879)),Finset.filter_subset _ _⟩

private def s2Step95EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<879)),Finset.filter_subset _ _⟩

private def s2Step95EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step95EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step95EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step95EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step95EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,799⟩,⟨⟨774,false⟩,786⟩,⟨⟨775,false⟩,781⟩,⟨⟨776,false⟩,779⟩,⟨⟨777,false⟩,785⟩]⟩

private def s2Step95EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step95EarlyControlZeroArena,s2Step95EarlyControlZeroPlan,s2Step95EarlyControlClassPlan,s2Step95EarlyControlFlagArena,s2Step95EarlyControlFittedArena,s2Step95EarlyControlHistoryArena,s2Step95EarlyControlSigmaArena,s2Step95EarlyControlOutputArena,s2Step95EarlyControlLog⟩

private def s2Step95CounterWork : List Wire := [785, 839, 846, 847]

private theorem s2Step95Counter_bounded : s2Step95CounterWork.toFinset⊆arenaWires := by norm_num [s2Step95CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step95HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step95CounterDuring : Arena := ⟨s2Step95HeadFvAfter.live∪s2Step95CounterWork.toFinset,Finset.union_subset s2Step95HeadFvAfter.bounded s2Step95Counter_bounded⟩

private def s2Step95EntryFFresh : List Wire := []

private def s2Step95EntryFvFresh : List Wire := []

private def s2Step95EntryGFresh : List Wire := []

private def s2Step95EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step95EntryGvFresh : List Wire := [796]

private def s2Step95ExitFExtra : List Wire := [781]

private def s2Step95ExitFvExtra : List Wire := [786]

private def s2Step95ExitGExtra : List Wire := [779]

private def s2Step95ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step95ExitGvExtra : List Wire := [799]

private def s2Step95Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step95Add0Work : List Wire := [846, 847, 849, 851, 867, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step95Add0_bounded : s2Step95Add0Work.toFinset⊆arenaWires := by
  have h : s2Step95Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step95Add0During : Arena := ⟨s2Step95Add0Arena.live∪s2Step95Add0Work.toFinset,Finset.union_subset s2Step95Add0Arena.bounded s2Step95Add0_bounded⟩

private def s2Step95Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step95Add1Work : List Wire := [846, 847, 849, 851, 867, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933]

private theorem s2Step95Add1_bounded : s2Step95Add1Work.toFinset⊆arenaWires := by
  have h : s2Step95Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step95Add1During : Arena := ⟨s2Step95Add1Arena.live∪s2Step95Add1Work.toFinset,Finset.union_subset s2Step95Add1Arena.bounded s2Step95Add1_bounded⟩

private def s2Step95F4FlagArena : Arena := ⟨s2Step95HeadFvAfter.live∪{785},Finset.union_subset s2Step95HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step95F4Plan : HmrHybridF4Plan := ⟨s2Step95F4FlagArena,[785],s2Step95Add0Arena,[839],s2Step95Add0During,s2Step95Add0Work,s2Step95Add1During,s2Step95Add1Work⟩

private def s2Step95HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 781],768⟩

private def s2Step95HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 786],770⟩

private def s2Step95HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 779],769⟩

private def s2Step95HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 799],771⟩

private def s2Step95FrontHead : WindowBank := ⟨s2Step95HeadFOut,s2Step95HeadGOut,s2Step95HeadFvOut,s2Step95HeadGvOut⟩

private def s2Step95EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732],768⟩

private def s2Step95EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844],770⟩

private def s2Step95EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220],769⟩

private def s2Step95EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796],771⟩

private def s2Step95FrontPair : WindowBank := ⟨s2Step95EntryFOut,s2Step95EntryGOut,s2Step95EntryFvOut,s2Step95EntryGvOut⟩

private def s2Step95FrontSigmaArena : Arena := ⟨s2Step95EntryGvAfter.live∪{793},Finset.union_subset s2Step95EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step95HeadFFresh : List Wire := [781]

private def s2Step95HeadFvFresh : List Wire := [786]

private def s2Step95HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step95HeadGFresh : List Wire := [779]

private def s2Step95HeadGvFresh : List Wire := [799]

private def s2Step95FrontPlan : HmrSourceFront := ⟨s2Step95EntryGvAfter,s2Step95FrontPair,(growRow 768 s2Step95EntryFFresh ++ (growRow 769 s2Step95EntryGFresh ++ (growRow 770 s2Step95EntryFvFresh ++ (growRow 771 s2Step95EntryGvFresh ++ [])))),s2Step95FrontSigmaArena,[793],s2Step95HeadGBefore,[794],
  s2Step95HeadFvAfter,s2Step95FrontHead,(growRow 769 s2Step95HeadGFresh ++ (growRow 768 s2Step95HeadFFresh ++ (growRow 771 s2Step95HeadGvFresh ++ (growRow 770 s2Step95HeadFvFresh ++ [])))),s2Step95F4Plan,s2Step95CounterDuring,s2Step95CounterWork,s2Step95ExitGvAfter,s2Step95FrontOut,(shrinkRow 769 s2Step95ExitGExtra ++ (shrinkRow 768 s2Step95ExitFExtra ++ (shrinkRow 770 s2Step95ExitFvExtra ++ (shrinkRow 771 s2Step95ExitGvExtra ++ []))))⟩

private def s2Step95CompletePlan : HmrEarlyStepPlan := ⟨s2Step95FrontPlan,s2Step95EarlyControlArena,s2Step95EarlyControlPlan,s2Step95CompleteMoves⟩

private theorem s2Step95Complete_apart : List.Disjoint (s2Step95CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [793, 794, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] := by
  have nd : ((s2Step95CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[793, 794, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step95Complete_owned : (s2Step95CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step95EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step95EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step95Complete_repack : s2Step95ExitGvAfter.checkRepack s2Step95CompleteMoves=some s2Step95EarlyControlArena := by rfl

private theorem s2Step95EarlyControl_branchOwned : ([794] : List Wire).toFinset⊆s2Step95EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step95EarlyControlSigmaArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step95EarlyControl_branch : compileHmrBranchRetirement s2Step95EarlyControlSigmaArena 794=some s2Step95EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step95EarlyControl_branchOwned
  · ext q
    simp [s2Step95EarlyControlOutputArena,s2Step95EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step95EarlyControl_classEqualityBorrow : s2Step95EarlyControlPositiveArena.checkBorrow (([793, 839] : List Wire).length-1) s2Step95EarlyControlLog.classWork=some s2Step95EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step95EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step95EarlyControlPositiveArena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
      decide +kernel
    · ext q
      simp [s2Step95EarlyControlEqualityArena,s2Step95EarlyControlPositiveArena,s2Step95EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step95EarlyControl_classEqualityOwned : ([793, 839] : List Wire).toFinset⊆s2Step95EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step95EarlyControlPositiveArena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step95EarlyControl_classEquality : compileHmrEqualityLog s2Step95EarlyControlPositiveArena [793, 839] 0 s2Step95EarlyControlLog.classWork=some (s2Step95EarlyControlEqualityArena,s2Step95EarlyControlLog.classWork,s2Step95EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step95EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step95EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step95EarlyControl_classOwned : ([777, 785, 793] : List Wire).toFinset⊆s2Step95EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step95EarlyControlZeroArena (fun q => (0≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step95EarlyControl_positiveBorrow : s2Step95EarlyControlZeroArena.checkBorrow (1) s2Step95EarlyControlLog.positiveWork=some s2Step95EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step95EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step95EarlyControlZeroArena (fun q => (0≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
      decide +kernel
    · ext q
      simp [s2Step95EarlyControlPositiveArena,s2Step95EarlyControlZeroArena,s2Step95EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step95EarlyControl_class : compileHmrSourceClassLog s2Step95EarlyControlZeroArena false 777 s2Step95EarlyControlZeroPlan.top 0 793 s2Step95EarlyControlLog.positiveWork s2Step95EarlyControlLog.classWork=some s2Step95EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step95EarlyControlClassPlan s2Step95EarlyControlZeroArena false 777 s2Step95EarlyControlZeroPlan.top 0 793
  constructor
  · decide +kernel
  · exact s2Step95EarlyControl_classOwned
  · exact s2Step95EarlyControl_positiveBorrow
  · exact s2Step95EarlyControl_classEquality

private theorem s2Step95EarlyControl_entryRecordOwned : ([794, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] : List Wire).toFinset⊆s2Step95EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step95EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step95EarlyControl_entrySigmaOwned : ([793, 254] : List Wire).toFinset⊆s2Step95EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step95EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step95EarlyControl_fitBorrow : s2Step95EarlyControlFlagArena.checkBorrow ((34-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] : List Wire).length)) s2Step95EarlyControlLog.recordFresh=some s2Step95EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step95EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step95EarlyControlFlagArena (fun q => (0≤q ∧ q<879)) rfl
      decide +kernel
    · ext q
      simp [s2Step95EarlyControlFittedArena,s2Step95EarlyControlFlagArena,s2Step95EarlyControlLog,arenaWires]

private theorem s2Step95EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] : List Wire).toFinset⊆s2Step95EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step95EarlyControlFlagArena (fun q => (0≤q ∧ q<879)) rfl
  decide +kernel

private theorem s2Step95EarlyControl_fit : compileHmrRecordGrowLog s2Step95EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] 34 s2Step95EarlyControlLog.recordFresh=some s2Step95EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step95EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step95EarlyControl_fitBorrow

private theorem s2Step95EarlyControl_flagsBorrow : s2Step95EarlyControlEqualityArena.checkBorrow (6) s2Step95EarlyControlLog.flagWork=some s2Step95EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step95EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step95EarlyControlEqualityArena (fun q => (0≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
      decide +kernel
    · ext q
      simp [s2Step95EarlyControlFlagArena,s2Step95EarlyControlEqualityArena,s2Step95EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step95EarlyControl_flagsOwned : ([846, 253, 252, 251] : List Wire).toFinset⊆s2Step95EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step95EarlyControlEqualityArena (fun q => (0≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step95EarlyControl_flags : compileHmrFlagsLog s2Step95EarlyControlClassPlan.equalityArena s2Step95EarlyControlClassPlan.equality.top 253 252 251 s2Step95EarlyControlLog.flagWork=some s2Step95EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step95EarlyControl_flagsOwned⟩
  · exact s2Step95EarlyControl_flagsBorrow

private theorem s2Step95EarlyControl_historyBorrow : s2Step95EarlyControlArena.checkBorrow ((34-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] : List Wire).length)) s2Step95EarlyControlLog.recordFresh=some s2Step95EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step95EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step95EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
      decide +kernel
    · ext q
      simp [s2Step95EarlyControlHistoryArena,s2Step95EarlyControlArena,s2Step95EarlyControlLog,arenaWires]

private theorem s2Step95EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] : List Wire).toFinset⊆s2Step95EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step95EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step95EarlyControl_history : compileHmrRecordGrowLog s2Step95EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] 34 s2Step95EarlyControlLog.recordFresh=some s2Step95EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step95EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step95EarlyControl_historyBorrow

private theorem s2Step95EarlyControl_sigmaOwned : ([254, 793] : List Wire).toFinset⊆s2Step95EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step95EarlyControlHistoryArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step95EarlyControl_sigmaReleaseOwned : ([793] : List Wire).toFinset⊆s2Step95EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step95EarlyControlHistoryArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step95EarlyControl_sigmaRelease : s2Step95EarlyControlHistoryArena.release {793} (fun _ => false)=some s2Step95EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step95EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step95EarlyControlSigmaArena,s2Step95EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step95EarlyControl_sigma : compileHmrSigmaDropLog s2Step95EarlyControlHistoryArena false 0 0 254 793 []=some s2Step95EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step95EarlyControl_sigmaOwned⟩
  · exact s2Step95EarlyControl_sigmaRelease

private theorem s2Step95EarlyControl_zeroBorrow : s2Step95EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step95EarlyControlLog.zeroWork=some s2Step95EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step95EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step95EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
      decide +kernel
    · ext q
      simp [s2Step95EarlyControlZeroArena,s2Step95EarlyControlArena,s2Step95EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step95EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step95EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step95EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step95EarlyControl_zero : compileHmrEqualityLog s2Step95EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step95EarlyControlLog.zeroWork=some (s2Step95EarlyControlZeroArena,s2Step95EarlyControlLog.zeroWork,s2Step95EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step95EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step95EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step95EarlyControl_logged : s2Step95EarlyControlPlan.Logged s2Step95EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] 777 793 254 253 252 251 794 34 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step95EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step95EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step95EarlyControl_zero
  · exact s2Step95EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step95EarlyControl_flags
  · exact s2Step95EarlyControl_fit
  · exact s2Step95EarlyControl_history
  · exact s2Step95EarlyControl_sigma
  · exact s2Step95EarlyControl_branch

private theorem s2Step95EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step95EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] 777 793 254 253 252 251 794 34 s2Step95EarlyControlLog=some s2Step95EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step95EarlyControlPlan s2Step95EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] 777 793 254 253 252 251 794 34 s2Step95EarlyControl_logged

private def s2Step95EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (795≤q ∧ q<796) ∨ (797≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step95EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732],768⟩

private def s2Step95EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844],770⟩

private def s2Step95EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220],769⟩

private def s2Step95EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780],771⟩

private def s2Step95FrontBank : WindowBank := ⟨s2Step95EntryFRow,s2Step95EntryGRow,s2Step95EntryFvRow,s2Step95EntryGvRow⟩

private def s2Step95Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 781, 768]

private def s2Step95Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 779, 769]

private def s2Step95Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 786, 770]

private def s2Step95Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 799, 771]

private theorem s2Step95Counter_apart : Disjoint s2Step95HeadFvAfter.live s2Step95CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step95HeadFvAfter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step95Counter_borrowed : s2Step95HeadFvAfter.checkBorrow 4 s2Step95CounterWork=some s2Step95CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step95HeadFvAfter s2Step95CounterDuring s2Step95CounterWork.toFinset s2Step95Counter_bounded s2Step95Counter_apart rfl

private theorem s2Step95Counter_owned : (793::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step95HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step95HeadFvAfter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step95Counter_checked : compileHmrCounterStepLog s2Step95HeadFvAfter true 793 [772, 773, 774, 775, 776, 777] s2Step95CounterWork=some s2Step95CounterDuring := by
  have owned : ∀q∈793::[772, 773, 774, 775, 776, 777],q∈s2Step95HeadFvAfter.live := fun q hq => s2Step95Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step95Counter_borrowed

private def s2Step95EntryFAfter : Arena := s2Step95EntryFBefore

private theorem s2Step95EntryBank_incomingDistinct : ([s2Step95EntryFRow,s2Step95EntryGRow,s2Step95EntryFvRow,s2Step95EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step95EntryF_Incoming : rowsOwned s2Step95EntryFBefore [s2Step95EntryFRow,s2Step95EntryGRow,s2Step95EntryFvRow,s2Step95EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step95EntryFRow,s2Step95EntryGRow,s2Step95EntryFvRow,s2Step95EntryGvRow] 0 s2Step95EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step95EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (795≤q ∧ q<796) ∨ (797≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step95EntryBank_outgoingOwned : rowsOwned s2Step95EntryGvAfter [s2Step95EntryFOut,s2Step95EntryGOut,s2Step95EntryFvOut,s2Step95EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step95EntryGvAfter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step95EntryF_Outgoing : rowsOwned s2Step95EntryGvAfter [s2Step95EntryFOut,s2Step95EntryGOut,s2Step95EntryFvOut,s2Step95EntryGvOut] :=
  hmrRows_owned_drop s2Step95EntryGvAfter [s2Step95EntryFOut,s2Step95EntryGOut,s2Step95EntryFvOut,s2Step95EntryGvOut] 0 s2Step95EntryBank_outgoingOwned

private theorem s2Step95EntryF_distinct : (s2Step95EntryFRow.sign::s2Step95EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step95EntryF_owned : (s2Step95EntryFRow.sign::s2Step95EntryFRow.payload).toFinset⊆s2Step95EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step95EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (795≤q ∧ q<796) ∨ (797≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step95EntryF_reserved : s2Step95EntryFBefore.reserve s2Step95EntryFFresh.toFinset=some s2Step95EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step95EntryFFresh,arenaWires]
  · norm_num [s2Step95EntryFBefore,s2Step95EntryFFresh,arenaWires]
  · simp only [s2Step95EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step95EntryF_checked : planRowResizeLog s2Step95EntryFBefore s2Step95EntryFRow 221 s2Step95EntryFFresh=
    some (s2Step95EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732],768⟩,growRow 768 s2Step95EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step95EntryFBefore s2Step95EntryFAfter s2Step95EntryFRow 221 s2Step95EntryFFresh
    s2Step95EntryF_distinct s2Step95EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step95EntryF_reserved
  have rowEq : WindowRow.mk (s2Step95EntryFRow.payload++s2Step95EntryFFresh) s2Step95EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step95EntryFvAfter : Arena := s2Step95EntryFBefore

private def s2Step95EntryFvBefore : Arena := s2Step95EntryFBefore

private theorem s2Step95EntryFv_Incoming : rowsOwned s2Step95EntryFvBefore [s2Step95EntryFvRow,s2Step95EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step95EntryFRow,s2Step95EntryGRow,s2Step95EntryFvRow,s2Step95EntryGvRow] 2 s2Step95EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step95EntryFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (795≤q ∧ q<796) ∨ (797≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step95EntryFv_Outgoing : rowsOwned s2Step95EntryGvAfter [s2Step95EntryFvOut,s2Step95EntryGvOut] :=
  hmrRows_owned_drop s2Step95EntryGvAfter [s2Step95EntryFOut,s2Step95EntryGOut,s2Step95EntryFvOut,s2Step95EntryGvOut] 2 s2Step95EntryBank_outgoingOwned

private theorem s2Step95EntryFv_distinct : (s2Step95EntryFvRow.sign::s2Step95EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step95EntryFv_owned : (s2Step95EntryFvRow.sign::s2Step95EntryFvRow.payload).toFinset⊆s2Step95EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step95EntryFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (795≤q ∧ q<796) ∨ (797≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step95EntryFv_reserved : s2Step95EntryFvBefore.reserve s2Step95EntryFvFresh.toFinset=some s2Step95EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step95EntryFvFresh,arenaWires]
  · norm_num [s2Step95EntryFvBefore,s2Step95EntryFBefore,s2Step95EntryFvFresh,arenaWires]
  · simp only [s2Step95EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step95EntryFv_checked : planRowResizeLog s2Step95EntryFvBefore s2Step95EntryFvRow 61 s2Step95EntryFvFresh=
    some (s2Step95EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844],770⟩,growRow 770 s2Step95EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step95EntryFvBefore s2Step95EntryFvAfter s2Step95EntryFvRow 61 s2Step95EntryFvFresh
    s2Step95EntryFv_distinct s2Step95EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step95EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step95EntryFvRow.payload++s2Step95EntryFvFresh) s2Step95EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step95EntryGAfter : Arena := s2Step95EntryFBefore

private def s2Step95EntryGBefore : Arena := s2Step95EntryFBefore

private theorem s2Step95EntryG_Incoming : rowsOwned s2Step95EntryGBefore [s2Step95EntryGRow,s2Step95EntryFvRow,s2Step95EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step95EntryFRow,s2Step95EntryGRow,s2Step95EntryFvRow,s2Step95EntryGvRow] 1 s2Step95EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step95EntryGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (795≤q ∧ q<796) ∨ (797≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step95EntryG_Outgoing : rowsOwned s2Step95EntryGvAfter [s2Step95EntryGOut,s2Step95EntryFvOut,s2Step95EntryGvOut] :=
  hmrRows_owned_drop s2Step95EntryGvAfter [s2Step95EntryFOut,s2Step95EntryGOut,s2Step95EntryFvOut,s2Step95EntryGvOut] 1 s2Step95EntryBank_outgoingOwned

private theorem s2Step95EntryG_distinct : (s2Step95EntryGRow.sign::s2Step95EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step95EntryG_owned : (s2Step95EntryGRow.sign::s2Step95EntryGRow.payload).toFinset⊆s2Step95EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step95EntryGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (795≤q ∧ q<796) ∨ (797≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step95EntryG_reserved : s2Step95EntryGBefore.reserve s2Step95EntryGFresh.toFinset=some s2Step95EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step95EntryGFresh,arenaWires]
  · norm_num [s2Step95EntryGBefore,s2Step95EntryFBefore,s2Step95EntryGFresh,arenaWires]
  · simp only [s2Step95EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step95EntryG_checked : planRowResizeLog s2Step95EntryGBefore s2Step95EntryGRow 221 s2Step95EntryGFresh=
    some (s2Step95EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220],769⟩,growRow 769 s2Step95EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step95EntryGBefore s2Step95EntryGAfter s2Step95EntryGRow 221 s2Step95EntryGFresh
    s2Step95EntryG_distinct s2Step95EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step95EntryG_reserved
  have rowEq : WindowRow.mk (s2Step95EntryGRow.payload++s2Step95EntryGFresh) s2Step95EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step95EntryGvBefore : Arena := s2Step95EntryFBefore

private theorem s2Step95EntryGv_Incoming : rowsOwned s2Step95EntryGvBefore [s2Step95EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step95EntryFRow,s2Step95EntryGRow,s2Step95EntryFvRow,s2Step95EntryGvRow] 3 s2Step95EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step95EntryGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (795≤q ∧ q<796) ∨ (797≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step95EntryGv_Outgoing : rowsOwned s2Step95EntryGvAfter [s2Step95EntryGvOut] :=
  hmrRows_owned_drop s2Step95EntryGvAfter [s2Step95EntryFOut,s2Step95EntryGOut,s2Step95EntryFvOut,s2Step95EntryGvOut] 3 s2Step95EntryBank_outgoingOwned

private theorem s2Step95EntryGv_distinct : (s2Step95EntryGvRow.sign::s2Step95EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step95EntryGv_owned : (s2Step95EntryGvRow.sign::s2Step95EntryGvRow.payload).toFinset⊆s2Step95EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step95EntryGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (795≤q ∧ q<796) ∨ (797≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step95EntryGv_reserved : s2Step95EntryGvBefore.reserve s2Step95EntryGvFresh.toFinset=some s2Step95EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step95EntryGvFresh,arenaWires]
  · norm_num [s2Step95EntryGvBefore,s2Step95EntryFBefore,s2Step95EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step95EntryGvAfter,s2Step95EntryGvBefore,s2Step95EntryFBefore,s2Step95EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step95EntryGv_checked : planRowResizeLog s2Step95EntryGvBefore s2Step95EntryGvRow 61 s2Step95EntryGvFresh=
    some (s2Step95EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796],771⟩,growRow 771 s2Step95EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step95EntryGvBefore s2Step95EntryGvAfter s2Step95EntryGvRow 61 s2Step95EntryGvFresh
    s2Step95EntryGv_distinct s2Step95EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step95EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step95EntryGvRow.payload++s2Step95EntryGvFresh) s2Step95EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step95EntryBank_rows : planWindowRowsLog s2Step95EntryFBefore [(s2Step95EntryFRow,221),(s2Step95EntryGRow,221),(s2Step95EntryFvRow,61),(s2Step95EntryGvRow,61)] [s2Step95EntryFFresh,s2Step95EntryGFresh,s2Step95EntryFvFresh,s2Step95EntryGvFresh]=
    some (s2Step95EntryGvAfter,[s2Step95EntryFOut,s2Step95EntryGOut,s2Step95EntryFvOut,s2Step95EntryGvOut],(growRow 768 s2Step95EntryFFresh ++ (growRow 769 s2Step95EntryGFresh ++ (growRow 770 s2Step95EntryFvFresh ++ (growRow 771 s2Step95EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step95EntryGvAfter [] []=some (s2Step95EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step95EntryGvBefore s2Step95EntryGvAfter s2Step95EntryGvAfter
    s2Step95EntryGvRow s2Step95EntryGvOut 61 s2Step95EntryGvFresh [] [] []
    (growRow 771 s2Step95EntryGvFresh) ([]) s2Step95EntryGv_Incoming s2Step95EntryGv_checked h4 s2Step95EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step95EntryFvBefore s2Step95EntryFvAfter s2Step95EntryGvAfter
    s2Step95EntryFvRow s2Step95EntryFvOut 61 s2Step95EntryFvFresh [(s2Step95EntryGvRow,61)] [s2Step95EntryGvFresh] [s2Step95EntryGvOut]
    (growRow 770 s2Step95EntryFvFresh) ((growRow 771 s2Step95EntryGvFresh ++ [])) s2Step95EntryFv_Incoming s2Step95EntryFv_checked h3 s2Step95EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step95EntryGBefore s2Step95EntryGAfter s2Step95EntryGvAfter
    s2Step95EntryGRow s2Step95EntryGOut 221 s2Step95EntryGFresh [(s2Step95EntryFvRow,61),(s2Step95EntryGvRow,61)] [s2Step95EntryFvFresh,s2Step95EntryGvFresh] [s2Step95EntryFvOut,s2Step95EntryGvOut]
    (growRow 769 s2Step95EntryGFresh) ((growRow 770 s2Step95EntryFvFresh ++ (growRow 771 s2Step95EntryGvFresh ++ []))) s2Step95EntryG_Incoming s2Step95EntryG_checked h2 s2Step95EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step95EntryFBefore s2Step95EntryFAfter s2Step95EntryGvAfter
    s2Step95EntryFRow s2Step95EntryFOut 221 s2Step95EntryFFresh [(s2Step95EntryGRow,221),(s2Step95EntryFvRow,61),(s2Step95EntryGvRow,61)] [s2Step95EntryGFresh,s2Step95EntryFvFresh,s2Step95EntryGvFresh] [s2Step95EntryGOut,s2Step95EntryFvOut,s2Step95EntryGvOut]
    (growRow 768 s2Step95EntryFFresh) ((growRow 769 s2Step95EntryGFresh ++ (growRow 770 s2Step95EntryFvFresh ++ (growRow 771 s2Step95EntryGvFresh ++ [])))) s2Step95EntryF_Incoming s2Step95EntryF_checked h1 s2Step95EntryF_Outgoing
  exact h0

private theorem s2Step95EntryBank_checked : compileHmrBankResizeLog .entry s2Step95EntryFBefore ⟨s2Step95EntryFRow,s2Step95EntryGRow,s2Step95EntryFvRow,s2Step95EntryGvRow⟩ ⟨221,221,61,61⟩ [s2Step95EntryFFresh,s2Step95EntryGFresh,s2Step95EntryFvFresh,s2Step95EntryGvFresh]=
    some (s2Step95EntryGvAfter,⟨s2Step95EntryFOut,s2Step95EntryGOut,s2Step95EntryFvOut,s2Step95EntryGvOut⟩,(growRow 768 s2Step95EntryFFresh ++ (growRow 769 s2Step95EntryGFresh ++ (growRow 770 s2Step95EntryFvFresh ++ (growRow 771 s2Step95EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step95EntryBank_rows]
  rfl

private def s2Step95ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step95ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step95ExitFBefore : Arena := s2Step95ExitGAfter

private def s2Step95ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 781],768⟩

private def s2Step95ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 786],770⟩

private def s2Step95ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 779],769⟩

private def s2Step95ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 799],771⟩

private theorem s2Step95ExitBank_incomingDistinct : ([s2Step95ExitGRow,s2Step95ExitFRow,s2Step95ExitFvRow,s2Step95ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step95ExitF_Incoming : rowsOwned s2Step95ExitFBefore [s2Step95ExitFRow,s2Step95ExitFvRow,s2Step95ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step95ExitGRow,s2Step95ExitFRow,s2Step95ExitFvRow,s2Step95ExitGvRow] 1 s2Step95ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step95ExitFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step95ExitBank_outgoingOwned : rowsOwned s2Step95ExitGvAfter [s2Step95ExitGOut,s2Step95ExitFOut,s2Step95ExitFvOut,s2Step95ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step95ExitGvAfter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step95ExitF_Outgoing : rowsOwned s2Step95ExitGvAfter [s2Step95ExitFOut,s2Step95ExitFvOut,s2Step95ExitGvOut] :=
  hmrRows_owned_drop s2Step95ExitGvAfter [s2Step95ExitGOut,s2Step95ExitFOut,s2Step95ExitFvOut,s2Step95ExitGvOut] 1 s2Step95ExitBank_outgoingOwned

private theorem s2Step95ExitF_distinct : (s2Step95ExitFRow.sign::s2Step95ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step95ExitF_owned : (s2Step95ExitFRow.sign::s2Step95ExitFRow.payload).toFinset⊆s2Step95ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step95ExitFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step95ExitF_retired : s2Step95ExitFBefore.retireSet s2Step95ExitFExtra.toFinset=s2Step95ExitFAfter := by
  unfold Arena.retireSet s2Step95ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step95ExitFBefore,s2Step95ExitGAfter,s2Step95ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step95ExitF_checked : planRowResizeLog s2Step95ExitFBefore s2Step95ExitFRow 221 []=
    some (s2Step95ExitFAfter,s2Step95ExitFOut,shrinkRow 768 s2Step95ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step95ExitFBefore s2Step95ExitFRow 221 s2Step95ExitF_distinct s2Step95ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step95ExitFRow.payload.take 221) s2Step95ExitFRow.sign=s2Step95ExitFOut := by decide +kernel
  have hi : s2Step95ExitFRow.payload.drop 221=s2Step95ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step95ExitF_retired] at result
  exact result

private def s2Step95ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step95ExitFvBefore : Arena := s2Step95ExitFAfter

private theorem s2Step95ExitFv_Incoming : rowsOwned s2Step95ExitFvBefore [s2Step95ExitFvRow,s2Step95ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step95ExitGRow,s2Step95ExitFRow,s2Step95ExitFvRow,s2Step95ExitGvRow] 2 s2Step95ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step95ExitFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step95ExitFv_Outgoing : rowsOwned s2Step95ExitGvAfter [s2Step95ExitFvOut,s2Step95ExitGvOut] :=
  hmrRows_owned_drop s2Step95ExitGvAfter [s2Step95ExitGOut,s2Step95ExitFOut,s2Step95ExitFvOut,s2Step95ExitGvOut] 2 s2Step95ExitBank_outgoingOwned

private theorem s2Step95ExitFv_distinct : (s2Step95ExitFvRow.sign::s2Step95ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step95ExitFv_owned : (s2Step95ExitFvRow.sign::s2Step95ExitFvRow.payload).toFinset⊆s2Step95ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step95ExitFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step95ExitFv_retired : s2Step95ExitFvBefore.retireSet s2Step95ExitFvExtra.toFinset=s2Step95ExitFvAfter := by
  unfold Arena.retireSet s2Step95ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step95ExitFvBefore,s2Step95ExitFAfter,s2Step95ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step95ExitFv_checked : planRowResizeLog s2Step95ExitFvBefore s2Step95ExitFvRow 61 []=
    some (s2Step95ExitFvAfter,s2Step95ExitFvOut,shrinkRow 770 s2Step95ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step95ExitFvBefore s2Step95ExitFvRow 61 s2Step95ExitFv_distinct s2Step95ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step95ExitFvRow.payload.take 61) s2Step95ExitFvRow.sign=s2Step95ExitFvOut := by decide +kernel
  have hi : s2Step95ExitFvRow.payload.drop 61=s2Step95ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step95ExitFv_retired] at result
  exact result

private def s2Step95ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private theorem s2Step95ExitG_Incoming : rowsOwned s2Step95ExitGBefore [s2Step95ExitGRow,s2Step95ExitFRow,s2Step95ExitFvRow,s2Step95ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step95ExitGRow,s2Step95ExitFRow,s2Step95ExitFvRow,s2Step95ExitGvRow] 0 s2Step95ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step95ExitGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step95ExitG_Outgoing : rowsOwned s2Step95ExitGvAfter [s2Step95ExitGOut,s2Step95ExitFOut,s2Step95ExitFvOut,s2Step95ExitGvOut] :=
  hmrRows_owned_drop s2Step95ExitGvAfter [s2Step95ExitGOut,s2Step95ExitFOut,s2Step95ExitFvOut,s2Step95ExitGvOut] 0 s2Step95ExitBank_outgoingOwned

private theorem s2Step95ExitG_distinct : (s2Step95ExitGRow.sign::s2Step95ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step95ExitG_owned : (s2Step95ExitGRow.sign::s2Step95ExitGRow.payload).toFinset⊆s2Step95ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step95ExitGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step95ExitG_retired : s2Step95ExitGBefore.retireSet s2Step95ExitGExtra.toFinset=s2Step95ExitGAfter := by
  unfold Arena.retireSet s2Step95ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step95ExitGBefore,s2Step95ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step95ExitG_checked : planRowResizeLog s2Step95ExitGBefore s2Step95ExitGRow 221 []=
    some (s2Step95ExitGAfter,s2Step95ExitGOut,shrinkRow 769 s2Step95ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step95ExitGBefore s2Step95ExitGRow 221 s2Step95ExitG_distinct s2Step95ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step95ExitGRow.payload.take 221) s2Step95ExitGRow.sign=s2Step95ExitGOut := by decide +kernel
  have hi : s2Step95ExitGRow.payload.drop 221=s2Step95ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step95ExitG_retired] at result
  exact result

private def s2Step95ExitGvBefore : Arena := s2Step95ExitFvAfter

private theorem s2Step95ExitGv_Incoming : rowsOwned s2Step95ExitGvBefore [s2Step95ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step95ExitGRow,s2Step95ExitFRow,s2Step95ExitFvRow,s2Step95ExitGvRow] 3 s2Step95ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step95ExitGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step95ExitGv_Outgoing : rowsOwned s2Step95ExitGvAfter [s2Step95ExitGvOut] :=
  hmrRows_owned_drop s2Step95ExitGvAfter [s2Step95ExitGOut,s2Step95ExitFOut,s2Step95ExitFvOut,s2Step95ExitGvOut] 3 s2Step95ExitBank_outgoingOwned

private theorem s2Step95ExitGv_distinct : (s2Step95ExitGvRow.sign::s2Step95ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step95ExitGv_owned : (s2Step95ExitGvRow.sign::s2Step95ExitGvRow.payload).toFinset⊆s2Step95ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step95ExitGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step95ExitGv_retired : s2Step95ExitGvBefore.retireSet s2Step95ExitGvExtra.toFinset=s2Step95ExitGvAfter := by
  unfold Arena.retireSet s2Step95ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step95ExitGvBefore,s2Step95ExitFvAfter,s2Step95ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step95ExitGv_checked : planRowResizeLog s2Step95ExitGvBefore s2Step95ExitGvRow 61 []=
    some (s2Step95ExitGvAfter,s2Step95ExitGvOut,shrinkRow 771 s2Step95ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step95ExitGvBefore s2Step95ExitGvRow 61 s2Step95ExitGv_distinct s2Step95ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step95ExitGvRow.payload.take 61) s2Step95ExitGvRow.sign=s2Step95ExitGvOut := by decide +kernel
  have hi : s2Step95ExitGvRow.payload.drop 61=s2Step95ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step95ExitGv_retired] at result
  exact result

private theorem s2Step95ExitBank_rows : planWindowRowsLog s2Step95ExitGBefore [(s2Step95ExitGRow,221),(s2Step95ExitFRow,221),(s2Step95ExitFvRow,61),(s2Step95ExitGvRow,61)] [[],[],[],[]]=
    some (s2Step95ExitGvAfter,[s2Step95ExitGOut,s2Step95ExitFOut,s2Step95ExitFvOut,s2Step95ExitGvOut],(shrinkRow 769 s2Step95ExitGExtra ++ (shrinkRow 768 s2Step95ExitFExtra ++ (shrinkRow 770 s2Step95ExitFvExtra ++ (shrinkRow 771 s2Step95ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step95ExitGvAfter [] []=some (s2Step95ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step95ExitGvBefore s2Step95ExitGvAfter s2Step95ExitGvAfter
    s2Step95ExitGvRow s2Step95ExitGvOut 61 [] [] [] []
    (shrinkRow 771 s2Step95ExitGvExtra) ([]) s2Step95ExitGv_Incoming s2Step95ExitGv_checked h4 s2Step95ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step95ExitFvBefore s2Step95ExitFvAfter s2Step95ExitGvAfter
    s2Step95ExitFvRow s2Step95ExitFvOut 61 [] [(s2Step95ExitGvRow,61)] [[]] [s2Step95ExitGvOut]
    (shrinkRow 770 s2Step95ExitFvExtra) ((shrinkRow 771 s2Step95ExitGvExtra ++ [])) s2Step95ExitFv_Incoming s2Step95ExitFv_checked h3 s2Step95ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step95ExitFBefore s2Step95ExitFAfter s2Step95ExitGvAfter
    s2Step95ExitFRow s2Step95ExitFOut 221 [] [(s2Step95ExitFvRow,61),(s2Step95ExitGvRow,61)] [[],[]] [s2Step95ExitFvOut,s2Step95ExitGvOut]
    (shrinkRow 768 s2Step95ExitFExtra) ((shrinkRow 770 s2Step95ExitFvExtra ++ (shrinkRow 771 s2Step95ExitGvExtra ++ []))) s2Step95ExitF_Incoming s2Step95ExitF_checked h2 s2Step95ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step95ExitGBefore s2Step95ExitGAfter s2Step95ExitGvAfter
    s2Step95ExitGRow s2Step95ExitGOut 221 [] [(s2Step95ExitFRow,221),(s2Step95ExitFvRow,61),(s2Step95ExitGvRow,61)] [[],[],[]] [s2Step95ExitFOut,s2Step95ExitFvOut,s2Step95ExitGvOut]
    (shrinkRow 769 s2Step95ExitGExtra) ((shrinkRow 768 s2Step95ExitFExtra ++ (shrinkRow 770 s2Step95ExitFvExtra ++ (shrinkRow 771 s2Step95ExitGvExtra ++ [])))) s2Step95ExitG_Incoming s2Step95ExitG_checked h1 s2Step95ExitG_Outgoing
  exact h0

private theorem s2Step95ExitBank_checked : compileHmrBankResizeLog .exit s2Step95ExitGBefore ⟨s2Step95ExitFRow,s2Step95ExitGRow,s2Step95ExitFvRow,s2Step95ExitGvRow⟩ ⟨221,221,61,61⟩ [[],[],[],[]]=
    some (s2Step95ExitGvAfter,⟨s2Step95ExitFOut,s2Step95ExitGOut,s2Step95ExitFvOut,s2Step95ExitGvOut⟩,(shrinkRow 769 s2Step95ExitGExtra ++ (shrinkRow 768 s2Step95ExitFExtra ++ (shrinkRow 770 s2Step95ExitFvExtra ++ (shrinkRow 771 s2Step95ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step95ExitBank_rows]
  rfl

private theorem s2Step95Add0_apart : Disjoint s2Step95Add0Arena.live s2Step95Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step95Add0Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step95Add0_card : s2Step95Add0Arena.live.card=872 := by
  decide +kernel

private theorem s2Step95Add0_borrowed : s2Step95Add0Arena.checkBorrow (hmrHybridCount s2Step95Add0Arena s2Step95Add0B.length) s2Step95Add0Work=some s2Step95Add0During := by
  have len : s2Step95Add0Work.length=hmrHybridCount s2Step95Add0Arena s2Step95Add0B.length := by
    rw [hmrHybridCount,s2Step95Add0_card]
    decide +kernel
  have nd : s2Step95Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step95Add0Arena s2Step95Add0During s2Step95Add0Work.toFinset s2Step95Add0_bounded s2Step95Add0_apart rfl

private theorem s2Step95Add0_distinct : (785::794::839::(s2Step95Add0A++s2Step95Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step95Add0_owned : (785::794::839::(s2Step95Add0A++s2Step95Add0B)).toFinset⊆s2Step95Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step95Add0Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step95Add0_checked : compileHmrHybridCinLog s2Step95Add0Arena 794 785 839 s2Step95Add0A s2Step95Add0B s2Step95Add0Work=some s2Step95Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step95Add0Arena s2Step95Add0During 794 785 839 s2Step95Add0A s2Step95Add0B s2Step95Add0Work
    (by decide +kernel) (by decide +kernel) s2Step95Add0_distinct
    (fun q hq => s2Step95Add0_owned (List.mem_toFinset.mpr hq)) s2Step95Add0_borrowed

private theorem s2Step95Add1_apart : Disjoint s2Step95Add1Arena.live s2Step95Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step95Add1Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step95Add1_card : s2Step95Add1Arena.live.card=872 := by
  decide +kernel

private theorem s2Step95Add1_borrowed : s2Step95Add1Arena.checkBorrow (hmrHybridCount s2Step95Add1Arena s2Step95Add1B.length) s2Step95Add1Work=some s2Step95Add1During := by
  have len : s2Step95Add1Work.length=hmrHybridCount s2Step95Add1Arena s2Step95Add1B.length := by
    rw [hmrHybridCount,s2Step95Add1_card]
    decide +kernel
  have nd : s2Step95Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step95Add1Arena s2Step95Add1During s2Step95Add1Work.toFinset s2Step95Add1_bounded s2Step95Add1_apart rfl

private theorem s2Step95Add1_distinct : (785::794::839::(s2Step95Add1A++s2Step95Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step95Add1_owned : (785::794::839::(s2Step95Add1A++s2Step95Add1B)).toFinset⊆s2Step95Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step95Add1Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step95Add1_checked : compileHmrHybridCinLog s2Step95Add1Arena 794 785 839 s2Step95Add1A s2Step95Add1B s2Step95Add1Work=some s2Step95Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step95Add1Arena s2Step95Add1During 794 785 839 s2Step95Add1A s2Step95Add1B s2Step95Add1Work
    (by decide +kernel) (by decide +kernel) s2Step95Add1_distinct
    (fun q hq => s2Step95Add1_owned (List.mem_toFinset.mpr hq)) s2Step95Add1_borrowed

private theorem s2Step95F4_apart : Disjoint (s2Step95Add0A++s2Step95Add0B).toFinset (s2Step95Add1A++s2Step95Add1B).toFinset := by
  have nd : ((s2Step95Add0A++s2Step95Add0B)++(s2Step95Add1A++s2Step95Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step95F4_carry : s2Step95F4FlagArena.checkBorrow 1 [839]=some s2Step95Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step95F4FlagArena,s2Step95HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step95F4FlagArena,s2Step95HeadFvAfter,s2Step95Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step95F4_distinct : (793::794::785::839::((s2Step95Add0A++s2Step95Add1A)++(s2Step95Add0B++s2Step95Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step95F4_flag : s2Step95HeadFvAfter.checkBorrow 1 [785]=some s2Step95F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step95HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step95F4_owned : (793::794::((s2Step95Add0A++s2Step95Add1A)++(s2Step95Add0B++s2Step95Add1B))).toFinset⊆s2Step95HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step95HeadFvAfter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step95F4_checked : compileHmrHybridF4Log s2Step95HeadFvAfter 793 794 s2Step95Add0A s2Step95Add0B s2Step95Add1A s2Step95Add1B [785] [839] s2Step95Add0Work s2Step95Add1Work=some s2Step95F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step95HeadFvAfter s2Step95F4FlagArena s2Step95Add0Arena s2Step95Add0During s2Step95Add1During 793 794
    s2Step95Add0A s2Step95Add0B s2Step95Add1A s2Step95Add1B [785] [839] s2Step95Add0Work s2Step95Add1Work
    (fun q hq => s2Step95F4_owned (List.mem_toFinset.mpr hq)) s2Step95F4_flag s2Step95F4_carry
    s2Step95F4_distinct s2Step95F4_apart s2Step95Add0_checked s2Step95Add1_checked

private theorem s2Step95Front_branch : s2Step95FrontSigmaArena.checkBorrow 1 [794]=some s2Step95HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step95FrontSigmaArena,s2Step95EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step95FrontSigmaArena,s2Step95EntryGvAfter,s2Step95HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step95Front_entry : HmrFrontEntryValid s2Step95EntryFBefore s2Step95FrontBank 221 61 ⟨221,221,61,61⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step95FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step95EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step95EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (795≤q ∧ q<796) ∨ (797≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step95FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step95Front_sigma : s2Step95EntryGvAfter.checkBorrow 1 [793]=some s2Step95FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step95EntryGvAfter,arenaWires]
  · rfl

private def s2Step95HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (787≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step95HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step95HeadFBefore : Arena := s2Step95HeadGAfter

private def s2Step95HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732],768⟩

private def s2Step95HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844],770⟩

private def s2Step95HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220],769⟩

private def s2Step95HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796],771⟩

private theorem s2Step95HeadBank_incomingDistinct : ([s2Step95HeadGRow,s2Step95HeadFRow,s2Step95HeadGvRow,s2Step95HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step95HeadF_Incoming : rowsOwned s2Step95HeadFBefore [s2Step95HeadFRow,s2Step95HeadGvRow,s2Step95HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step95HeadGRow,s2Step95HeadFRow,s2Step95HeadGvRow,s2Step95HeadFvRow] 1 s2Step95HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step95HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step95HeadBank_outgoingOwned : rowsOwned s2Step95HeadFvAfter [s2Step95HeadGOut,s2Step95HeadFOut,s2Step95HeadGvOut,s2Step95HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step95HeadFvAfter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step95HeadF_Outgoing : rowsOwned s2Step95HeadFvAfter [s2Step95HeadFOut,s2Step95HeadGvOut,s2Step95HeadFvOut] :=
  hmrRows_owned_drop s2Step95HeadFvAfter [s2Step95HeadGOut,s2Step95HeadFOut,s2Step95HeadGvOut,s2Step95HeadFvOut] 1 s2Step95HeadBank_outgoingOwned

private theorem s2Step95HeadF_distinct : (s2Step95HeadFRow.sign::s2Step95HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step95HeadF_owned : (s2Step95HeadFRow.sign::s2Step95HeadFRow.payload).toFinset⊆s2Step95HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step95HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step95HeadF_reserved : s2Step95HeadFBefore.reserve s2Step95HeadFFresh.toFinset=some s2Step95HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step95HeadFFresh,arenaWires]
  · norm_num [s2Step95HeadFBefore,s2Step95HeadGAfter,s2Step95HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step95HeadFAfter,s2Step95HeadFBefore,s2Step95HeadGAfter,s2Step95HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step95HeadF_checked : planRowResizeLog s2Step95HeadFBefore s2Step95HeadFRow 222 s2Step95HeadFFresh=
    some (s2Step95HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 781],768⟩,growRow 768 s2Step95HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step95HeadFBefore s2Step95HeadFAfter s2Step95HeadFRow 222 s2Step95HeadFFresh
    s2Step95HeadF_distinct s2Step95HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step95HeadF_reserved
  have rowEq : WindowRow.mk (s2Step95HeadFRow.payload++s2Step95HeadFFresh) s2Step95HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 781],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step95HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (787≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step95HeadFvBefore : Arena := s2Step95HeadGvAfter

private theorem s2Step95HeadFv_Incoming : rowsOwned s2Step95HeadFvBefore [s2Step95HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step95HeadGRow,s2Step95HeadFRow,s2Step95HeadGvRow,s2Step95HeadFvRow] 3 s2Step95HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step95HeadFvBefore (fun q => (0≤q ∧ q<785) ∨ (787≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step95HeadFv_Outgoing : rowsOwned s2Step95HeadFvAfter [s2Step95HeadFvOut] :=
  hmrRows_owned_drop s2Step95HeadFvAfter [s2Step95HeadGOut,s2Step95HeadFOut,s2Step95HeadGvOut,s2Step95HeadFvOut] 3 s2Step95HeadBank_outgoingOwned

private theorem s2Step95HeadFv_distinct : (s2Step95HeadFvRow.sign::s2Step95HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step95HeadFv_owned : (s2Step95HeadFvRow.sign::s2Step95HeadFvRow.payload).toFinset⊆s2Step95HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step95HeadFvBefore (fun q => (0≤q ∧ q<785) ∨ (787≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step95HeadFv_reserved : s2Step95HeadFvBefore.reserve s2Step95HeadFvFresh.toFinset=some s2Step95HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step95HeadFvFresh,arenaWires]
  · norm_num [s2Step95HeadFvBefore,s2Step95HeadGvAfter,s2Step95HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step95HeadFvAfter,s2Step95HeadFvBefore,s2Step95HeadGvAfter,s2Step95HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step95HeadFv_checked : planRowResizeLog s2Step95HeadFvBefore s2Step95HeadFvRow 62 s2Step95HeadFvFresh=
    some (s2Step95HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 786],770⟩,growRow 770 s2Step95HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step95HeadFvBefore s2Step95HeadFvAfter s2Step95HeadFvRow 62 s2Step95HeadFvFresh
    s2Step95HeadFv_distinct s2Step95HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step95HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step95HeadFvRow.payload++s2Step95HeadFvFresh) s2Step95HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 786],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step95HeadG_Incoming : rowsOwned s2Step95HeadGBefore [s2Step95HeadGRow,s2Step95HeadFRow,s2Step95HeadGvRow,s2Step95HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step95HeadGRow,s2Step95HeadFRow,s2Step95HeadGvRow,s2Step95HeadFvRow] 0 s2Step95HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step95HeadGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step95HeadG_Outgoing : rowsOwned s2Step95HeadFvAfter [s2Step95HeadGOut,s2Step95HeadFOut,s2Step95HeadGvOut,s2Step95HeadFvOut] :=
  hmrRows_owned_drop s2Step95HeadFvAfter [s2Step95HeadGOut,s2Step95HeadFOut,s2Step95HeadGvOut,s2Step95HeadFvOut] 0 s2Step95HeadBank_outgoingOwned

private theorem s2Step95HeadG_distinct : (s2Step95HeadGRow.sign::s2Step95HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step95HeadG_owned : (s2Step95HeadGRow.sign::s2Step95HeadGRow.payload).toFinset⊆s2Step95HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step95HeadGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step95HeadG_reserved : s2Step95HeadGBefore.reserve s2Step95HeadGFresh.toFinset=some s2Step95HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step95HeadGFresh,arenaWires]
  · norm_num [s2Step95HeadGBefore,s2Step95HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step95HeadGAfter,s2Step95HeadGBefore,s2Step95HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step95HeadG_checked : planRowResizeLog s2Step95HeadGBefore s2Step95HeadGRow 222 s2Step95HeadGFresh=
    some (s2Step95HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 779],769⟩,growRow 769 s2Step95HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step95HeadGBefore s2Step95HeadGAfter s2Step95HeadGRow 222 s2Step95HeadGFresh
    s2Step95HeadG_distinct s2Step95HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step95HeadG_reserved
  have rowEq : WindowRow.mk (s2Step95HeadGRow.payload++s2Step95HeadGFresh) s2Step95HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 779],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step95HeadGvBefore : Arena := s2Step95HeadFAfter

private theorem s2Step95HeadGv_Incoming : rowsOwned s2Step95HeadGvBefore [s2Step95HeadGvRow,s2Step95HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step95HeadGRow,s2Step95HeadFRow,s2Step95HeadGvRow,s2Step95HeadFvRow] 2 s2Step95HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step95HeadGvBefore (fun q => (0≤q ∧ q<785) ∨ (787≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step95HeadGv_Outgoing : rowsOwned s2Step95HeadFvAfter [s2Step95HeadGvOut,s2Step95HeadFvOut] :=
  hmrRows_owned_drop s2Step95HeadFvAfter [s2Step95HeadGOut,s2Step95HeadFOut,s2Step95HeadGvOut,s2Step95HeadFvOut] 2 s2Step95HeadBank_outgoingOwned

private theorem s2Step95HeadGv_distinct : (s2Step95HeadGvRow.sign::s2Step95HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step95HeadGv_owned : (s2Step95HeadGvRow.sign::s2Step95HeadGvRow.payload).toFinset⊆s2Step95HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step95HeadGvBefore (fun q => (0≤q ∧ q<785) ∨ (787≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step95HeadGv_reserved : s2Step95HeadGvBefore.reserve s2Step95HeadGvFresh.toFinset=some s2Step95HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step95HeadGvFresh,arenaWires]
  · norm_num [s2Step95HeadGvBefore,s2Step95HeadFAfter,s2Step95HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step95HeadGvAfter,s2Step95HeadGvBefore,s2Step95HeadFAfter,s2Step95HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step95HeadGv_checked : planRowResizeLog s2Step95HeadGvBefore s2Step95HeadGvRow 62 s2Step95HeadGvFresh=
    some (s2Step95HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 799],771⟩,growRow 771 s2Step95HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step95HeadGvBefore s2Step95HeadGvAfter s2Step95HeadGvRow 62 s2Step95HeadGvFresh
    s2Step95HeadGv_distinct s2Step95HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step95HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step95HeadGvRow.payload++s2Step95HeadGvFresh) s2Step95HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 799],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step95HeadBank_rows : planWindowRowsLog s2Step95HeadGBefore [(s2Step95HeadGRow,222),(s2Step95HeadFRow,222),(s2Step95HeadGvRow,62),(s2Step95HeadFvRow,62)] [s2Step95HeadGFresh,s2Step95HeadFFresh,s2Step95HeadGvFresh,s2Step95HeadFvFresh]=
    some (s2Step95HeadFvAfter,[s2Step95HeadGOut,s2Step95HeadFOut,s2Step95HeadGvOut,s2Step95HeadFvOut],(growRow 769 s2Step95HeadGFresh ++ (growRow 768 s2Step95HeadFFresh ++ (growRow 771 s2Step95HeadGvFresh ++ (growRow 770 s2Step95HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step95HeadFvAfter [] []=some (s2Step95HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step95HeadFvBefore s2Step95HeadFvAfter s2Step95HeadFvAfter
    s2Step95HeadFvRow s2Step95HeadFvOut 62 s2Step95HeadFvFresh [] [] []
    (growRow 770 s2Step95HeadFvFresh) ([]) s2Step95HeadFv_Incoming s2Step95HeadFv_checked h4 s2Step95HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step95HeadGvBefore s2Step95HeadGvAfter s2Step95HeadFvAfter
    s2Step95HeadGvRow s2Step95HeadGvOut 62 s2Step95HeadGvFresh [(s2Step95HeadFvRow,62)] [s2Step95HeadFvFresh] [s2Step95HeadFvOut]
    (growRow 771 s2Step95HeadGvFresh) ((growRow 770 s2Step95HeadFvFresh ++ [])) s2Step95HeadGv_Incoming s2Step95HeadGv_checked h3 s2Step95HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step95HeadFBefore s2Step95HeadFAfter s2Step95HeadFvAfter
    s2Step95HeadFRow s2Step95HeadFOut 222 s2Step95HeadFFresh [(s2Step95HeadGvRow,62),(s2Step95HeadFvRow,62)] [s2Step95HeadGvFresh,s2Step95HeadFvFresh] [s2Step95HeadGvOut,s2Step95HeadFvOut]
    (growRow 768 s2Step95HeadFFresh) ((growRow 771 s2Step95HeadGvFresh ++ (growRow 770 s2Step95HeadFvFresh ++ []))) s2Step95HeadF_Incoming s2Step95HeadF_checked h2 s2Step95HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step95HeadGBefore s2Step95HeadGAfter s2Step95HeadFvAfter
    s2Step95HeadGRow s2Step95HeadGOut 222 s2Step95HeadGFresh [(s2Step95HeadFRow,222),(s2Step95HeadGvRow,62),(s2Step95HeadFvRow,62)] [s2Step95HeadFFresh,s2Step95HeadGvFresh,s2Step95HeadFvFresh] [s2Step95HeadFOut,s2Step95HeadGvOut,s2Step95HeadFvOut]
    (growRow 769 s2Step95HeadGFresh) ((growRow 768 s2Step95HeadFFresh ++ (growRow 771 s2Step95HeadGvFresh ++ (growRow 770 s2Step95HeadFvFresh ++ [])))) s2Step95HeadG_Incoming s2Step95HeadG_checked h1 s2Step95HeadG_Outgoing
  exact h0

private theorem s2Step95HeadBank_checked : compileHmrBankResizeLog .headroom s2Step95HeadGBefore ⟨s2Step95HeadFRow,s2Step95HeadGRow,s2Step95HeadFvRow,s2Step95HeadGvRow⟩ ⟨222,222,62,62⟩ [s2Step95HeadGFresh,s2Step95HeadFFresh,s2Step95HeadGvFresh,s2Step95HeadFvFresh]=
    some (s2Step95HeadFvAfter,⟨s2Step95HeadFOut,s2Step95HeadGOut,s2Step95HeadFvOut,s2Step95HeadGvOut⟩,(growRow 769 s2Step95HeadGFresh ++ (growRow 768 s2Step95HeadFFresh ++ (growRow 771 s2Step95HeadGvFresh ++ (growRow 770 s2Step95HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step95HeadBank_rows]
  rfl

private theorem s2Step95Front_checked : compileHmrSourceFrontLog s2Step95EntryFBefore s2Step95FrontBank 221 61 ⟨221,221,61,61⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step95FrontLog=some s2Step95FrontPlan := by
  have pairEq : s2Step95FrontPair=⟨s2Step95HeadFRow,s2Step95HeadGRow,s2Step95HeadFvRow,s2Step95HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step95FrontHead=⟨s2Step95ExitFRow,s2Step95ExitGRow,s2Step95ExitFvRow,s2Step95ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step95Add0A=s2Step95FrontHead.f.wires := by decide +kernel
  have gEq : s2Step95Add0B=s2Step95FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step95Add1A=s2Step95FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step95Add1B=s2Step95FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step95EntryFBefore s2Step95FrontBank 221 61 ⟨221,221,61,61⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step95FrontLog s2Step95FrontPlan
  · exact s2Step95Front_entry
  · exact s2Step95EntryBank_checked
  · exact s2Step95Front_sigma
  · rfl
  · exact s2Step95Front_branch
  · rfl
  · simpa only [s2Step95FrontPlan,pairEq] using s2Step95HeadBank_checked
  · simpa only [s2Step95FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step95F4_checked
  · exact s2Step95Counter_checked
  · rfl
  · simpa only [s2Step95FrontPlan,headEq] using s2Step95ExitBank_checked

private theorem s2Step95Complete_explicit_checked : compileHmrEarlyStepLog s2Step95EntryFBefore s2Step95FrontBank 221 61 ⟨221,221,61,61⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] 34 s2Step95CompleteLog=some s2Step95CompletePlan := by
  let Q := s2Step95EarlyControlPlan
  have hq := s2Step95EarlyControl_plan_checked
  have fv1 : s2Step95CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step95CompleteOut.fv.payload[2]?.getD s2Step95CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step95CompleteOut.fv.payload[3]?.getD s2Step95CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step95CompleteOut.fv.payload[4]?.getD s2Step95CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step95EntryFBefore s2Step95EarlyControlArena s2Step95FrontBank 221 61 ⟨221,221,61,61⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] 34 s2Step95CompleteLog s2Step95FrontPlan Q
    s2Step95Front_checked s2Step95Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step95Complete_owned s2Step95Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step95EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] 777 793 s2Step95CompleteOut.fv.second (s2Step95CompleteOut.fv.payload[2]?.getD s2Step95CompleteOut.fv.sign) (s2Step95CompleteOut.fv.payload[3]?.getD s2Step95CompleteOut.fv.sign) (s2Step95CompleteOut.fv.payload[4]?.getD s2Step95CompleteOut.fv.sign) 794 34 s2Step95EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep95Arena : Arena := s2Step95EntryFBefore
def s2PrivateStep95Bank : WindowBank := s2Step95FrontBank
def s2PrivateStep95Spec : HmrSourceWalkStepLog := ⟨221,61,⟨221,221,61,61⟩,34,.early s2Step95CompleteLog⟩
def s2PrivateStep95Plan : HmrSourceStepPlan := .early s2Step95CompletePlan
theorem s2PrivateStep95_source : s2PrivateStep95Spec=s2ObservedLogs80[15] := rfl
theorem s2PrivateStep95_checked : compileHmrSourceStepLog s2PrivateStep95Arena s2PrivateStep95Bank
    s2PrivateStep95Spec.fgWidth s2PrivateStep95Spec.vWidth s2PrivateStep95Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876]
    6 498 95 s2PrivateStep95Spec.need none s2PrivateStep95Spec.log=some s2PrivateStep95Plan := by
  change compileHmrSourceStepLog s2Step95EntryFBefore s2Step95FrontBank 221 61 ⟨221,221,61,61⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] 6 498 95 34 none (.early s2Step95CompleteLog)=some (.early s2Step95CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 95<498)]
  rw [s2Step95Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
