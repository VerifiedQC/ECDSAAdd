import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep103
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

private def s2Step105CompleteMoves : List (Wire × Wire) := []

private def s2Step105EarlyControlLog : HmrEarlyControlLog := ⟨[785, 846, 799, 803, 805],[809],[781],[849, 806, 802, 867, 877, 878],[]⟩

private def s2Step105FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [798], []],[[803], [799], [785], [846]],[[], [], [], []]⟩,[794],[811],[805],[809],[781, 849, 806, 802, 867, 877, 878, 879, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[781, 849, 806, 802, 867, 877, 878, 879, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[805, 809, 781, 849]⟩

private def s2Step105CompleteLog : HmrEarlyStepLog := ⟨s2Step105FrontLog,s2Step105CompleteMoves,s2Step105EarlyControlLog⟩

private def s2Step105ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727],768⟩

private def s2Step105ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798],770⟩

private def s2Step105ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215],769⟩

private def s2Step105ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851],771⟩

private def s2Step105FrontOut : WindowBank := ⟨s2Step105ExitFOut,s2Step105ExitGOut,s2Step105ExitFvOut,s2Step105ExitGvOut⟩

private def s2Step105CompleteOut : WindowBank := s2Step105FrontOut.repacked s2Step105CompleteMoves

private def s2Step105EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step105EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step105EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step105EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step105EarlyControlPositiveArena,[809],s2Step105EarlyControlEqualityArena,[781],⟨⟨794,false⟩,[⟨⟨809,false⟩,781⟩]⟩⟩

private def s2Step105EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step105EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step105EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step105EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<811) ∨ (812≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step105EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step105EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step105EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,785⟩,⟨⟨774,false⟩,846⟩,⟨⟨775,false⟩,799⟩,⟨⟨776,false⟩,803⟩,⟨⟨777,false⟩,805⟩]⟩

private def s2Step105EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step105EarlyControlZeroArena,s2Step105EarlyControlZeroPlan,s2Step105EarlyControlClassPlan,s2Step105EarlyControlFlagArena,s2Step105EarlyControlFittedArena,s2Step105EarlyControlHistoryArena,s2Step105EarlyControlSigmaArena,s2Step105EarlyControlOutputArena,s2Step105EarlyControlLog⟩

private def s2Step105CounterWork : List Wire := [805, 809, 781, 849]

private theorem s2Step105Counter_bounded : s2Step105CounterWork.toFinset⊆arenaWires := by norm_num [s2Step105CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step105HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step105CounterDuring : Arena := ⟨s2Step105HeadFvAfter.live∪s2Step105CounterWork.toFinset,Finset.union_subset s2Step105HeadFvAfter.bounded s2Step105Counter_bounded⟩

private def s2Step105EntryFFresh : List Wire := []

private def s2Step105EntryFvFresh : List Wire := [798]

private def s2Step105EntryGFresh : List Wire := []

private def s2Step105EntryFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<811) ∨ (812≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step105EntryGvAfter : Arena := s2Step105EntryFvAfter

private def s2Step105EntryGvFresh : List Wire := []

private def s2Step105ExitFExtra : List Wire := [799]

private def s2Step105ExitFvExtra : List Wire := [846]

private def s2Step105ExitGExtra : List Wire := [803]

private def s2Step105ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step105ExitGvExtra : List Wire := [785]

private def s2Step105Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step105Add0Work : List Wire := [781, 849, 806, 802, 867, 877, 878, 879, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step105Add0_bounded : s2Step105Add0Work.toFinset⊆arenaWires := by
  have h : s2Step105Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step105Add0During : Arena := ⟨s2Step105Add0Arena.live∪s2Step105Add0Work.toFinset,Finset.union_subset s2Step105Add0Arena.bounded s2Step105Add0_bounded⟩

private def s2Step105Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step105Add1Work : List Wire := [781, 849, 806, 802, 867, 877, 878, 879, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step105Add1_bounded : s2Step105Add1Work.toFinset⊆arenaWires := by
  have h : s2Step105Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step105Add1During : Arena := ⟨s2Step105Add1Arena.live∪s2Step105Add1Work.toFinset,Finset.union_subset s2Step105Add1Arena.bounded s2Step105Add1_bounded⟩

private def s2Step105F4FlagArena : Arena := ⟨s2Step105HeadFvAfter.live∪{805},Finset.union_subset s2Step105HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step105F4Plan : HmrHybridF4Plan := ⟨s2Step105F4FlagArena,[805],s2Step105Add0Arena,[809],s2Step105Add0During,s2Step105Add0Work,s2Step105Add1During,s2Step105Add1Work⟩

private def s2Step105HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 799],768⟩

private def s2Step105HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 846],770⟩

private def s2Step105HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 803],769⟩

private def s2Step105HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 785],771⟩

private def s2Step105FrontHead : WindowBank := ⟨s2Step105HeadFOut,s2Step105HeadGOut,s2Step105HeadFvOut,s2Step105HeadGvOut⟩

private def s2Step105EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727],768⟩

private def s2Step105EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798],770⟩

private def s2Step105EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215],769⟩

private def s2Step105EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851],771⟩

private def s2Step105FrontPair : WindowBank := ⟨s2Step105EntryFOut,s2Step105EntryGOut,s2Step105EntryFvOut,s2Step105EntryGvOut⟩

private def s2Step105FrontSigmaArena : Arena := ⟨s2Step105EntryGvAfter.live∪{794},Finset.union_subset s2Step105EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step105HeadFFresh : List Wire := [799]

private def s2Step105HeadFvFresh : List Wire := [846]

private def s2Step105HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step105HeadGFresh : List Wire := [803]

private def s2Step105HeadGvFresh : List Wire := [785]

private def s2Step105FrontPlan : HmrSourceFront := ⟨s2Step105EntryGvAfter,s2Step105FrontPair,(growRow 768 s2Step105EntryFFresh ++ (growRow 769 s2Step105EntryGFresh ++ (growRow 770 s2Step105EntryFvFresh ++ (growRow 771 s2Step105EntryGvFresh ++ [])))),s2Step105FrontSigmaArena,[794],s2Step105HeadGBefore,[811],
  s2Step105HeadFvAfter,s2Step105FrontHead,(growRow 769 s2Step105HeadGFresh ++ (growRow 768 s2Step105HeadFFresh ++ (growRow 771 s2Step105HeadGvFresh ++ (growRow 770 s2Step105HeadFvFresh ++ [])))),s2Step105F4Plan,s2Step105CounterDuring,s2Step105CounterWork,s2Step105ExitGvAfter,s2Step105FrontOut,(shrinkRow 769 s2Step105ExitGExtra ++ (shrinkRow 768 s2Step105ExitFExtra ++ (shrinkRow 770 s2Step105ExitFvExtra ++ (shrinkRow 771 s2Step105ExitGvExtra ++ []))))⟩

private def s2Step105CompletePlan : HmrEarlyStepPlan := ⟨s2Step105FrontPlan,s2Step105EarlyControlArena,s2Step105EarlyControlPlan,s2Step105CompleteMoves⟩

private theorem s2Step105Complete_apart : List.Disjoint (s2Step105CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [794, 811, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] := by
  have nd : ((s2Step105CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[794, 811, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step105Complete_owned : (s2Step105CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step105EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step105EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step105Complete_repack : s2Step105ExitGvAfter.checkRepack s2Step105CompleteMoves=some s2Step105EarlyControlArena := by rfl

private theorem s2Step105EarlyControl_branchOwned : ([811] : List Wire).toFinset⊆s2Step105EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step105EarlyControlSigmaArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step105EarlyControl_branch : compileHmrBranchRetirement s2Step105EarlyControlSigmaArena 811=some s2Step105EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step105EarlyControl_branchOwned
  · ext q
    simp [s2Step105EarlyControlOutputArena,s2Step105EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step105EarlyControl_classEqualityBorrow : s2Step105EarlyControlPositiveArena.checkBorrow (([794, 809] : List Wire).length-1) s2Step105EarlyControlLog.classWork=some s2Step105EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step105EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step105EarlyControlPositiveArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
      decide +kernel
    · ext q
      simp [s2Step105EarlyControlEqualityArena,s2Step105EarlyControlPositiveArena,s2Step105EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step105EarlyControl_classEqualityOwned : ([794, 809] : List Wire).toFinset⊆s2Step105EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step105EarlyControlPositiveArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step105EarlyControl_classEquality : compileHmrEqualityLog s2Step105EarlyControlPositiveArena [794, 809] 0 s2Step105EarlyControlLog.classWork=some (s2Step105EarlyControlEqualityArena,s2Step105EarlyControlLog.classWork,s2Step105EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step105EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step105EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step105EarlyControl_classOwned : ([777, 805, 794] : List Wire).toFinset⊆s2Step105EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step105EarlyControlZeroArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step105EarlyControl_positiveBorrow : s2Step105EarlyControlZeroArena.checkBorrow (1) s2Step105EarlyControlLog.positiveWork=some s2Step105EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step105EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step105EarlyControlZeroArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
      decide +kernel
    · ext q
      simp [s2Step105EarlyControlPositiveArena,s2Step105EarlyControlZeroArena,s2Step105EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step105EarlyControl_class : compileHmrSourceClassLog s2Step105EarlyControlZeroArena false 777 s2Step105EarlyControlZeroPlan.top 0 794 s2Step105EarlyControlLog.positiveWork s2Step105EarlyControlLog.classWork=some s2Step105EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step105EarlyControlClassPlan s2Step105EarlyControlZeroArena false 777 s2Step105EarlyControlZeroPlan.top 0 794
  constructor
  · decide +kernel
  · exact s2Step105EarlyControl_classOwned
  · exact s2Step105EarlyControl_positiveBorrow
  · exact s2Step105EarlyControl_classEquality

private theorem s2Step105EarlyControl_entryRecordOwned : ([811, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] : List Wire).toFinset⊆s2Step105EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step105EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step105EarlyControl_entrySigmaOwned : ([794, 254] : List Wire).toFinset⊆s2Step105EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step105EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step105EarlyControl_fitBorrow : s2Step105EarlyControlFlagArena.checkBorrow ((35-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] : List Wire).length)) s2Step105EarlyControlLog.recordFresh=some s2Step105EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step105EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step105EarlyControlFlagArena (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<881)) rfl
      decide +kernel
    · ext q
      simp [s2Step105EarlyControlFittedArena,s2Step105EarlyControlFlagArena,s2Step105EarlyControlLog,arenaWires]

private theorem s2Step105EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] : List Wire).toFinset⊆s2Step105EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step105EarlyControlFlagArena (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step105EarlyControl_fit : compileHmrRecordGrowLog s2Step105EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] 35 s2Step105EarlyControlLog.recordFresh=some s2Step105EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step105EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step105EarlyControl_fitBorrow

private theorem s2Step105EarlyControl_flagsBorrow : s2Step105EarlyControlEqualityArena.checkBorrow (6) s2Step105EarlyControlLog.flagWork=some s2Step105EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step105EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step105EarlyControlEqualityArena (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
      decide +kernel
    · ext q
      simp [s2Step105EarlyControlFlagArena,s2Step105EarlyControlEqualityArena,s2Step105EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step105EarlyControl_flagsOwned : ([781, 253, 252, 251] : List Wire).toFinset⊆s2Step105EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step105EarlyControlEqualityArena (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step105EarlyControl_flags : compileHmrFlagsLog s2Step105EarlyControlClassPlan.equalityArena s2Step105EarlyControlClassPlan.equality.top 253 252 251 s2Step105EarlyControlLog.flagWork=some s2Step105EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step105EarlyControl_flagsOwned⟩
  · exact s2Step105EarlyControl_flagsBorrow

private theorem s2Step105EarlyControl_historyBorrow : s2Step105EarlyControlArena.checkBorrow ((35-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] : List Wire).length)) s2Step105EarlyControlLog.recordFresh=some s2Step105EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step105EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step105EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
      decide +kernel
    · ext q
      simp [s2Step105EarlyControlHistoryArena,s2Step105EarlyControlArena,s2Step105EarlyControlLog,arenaWires]

private theorem s2Step105EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] : List Wire).toFinset⊆s2Step105EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step105EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step105EarlyControl_history : compileHmrRecordGrowLog s2Step105EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] 35 s2Step105EarlyControlLog.recordFresh=some s2Step105EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step105EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step105EarlyControl_historyBorrow

private theorem s2Step105EarlyControl_sigmaOwned : ([254, 794] : List Wire).toFinset⊆s2Step105EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step105EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step105EarlyControl_sigmaReleaseOwned : ([794] : List Wire).toFinset⊆s2Step105EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step105EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step105EarlyControl_sigmaRelease : s2Step105EarlyControlHistoryArena.release {794} (fun _ => false)=some s2Step105EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step105EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step105EarlyControlSigmaArena,s2Step105EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step105EarlyControl_sigma : compileHmrSigmaDropLog s2Step105EarlyControlHistoryArena false 0 0 254 794 []=some s2Step105EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step105EarlyControl_sigmaOwned⟩
  · exact s2Step105EarlyControl_sigmaRelease

private theorem s2Step105EarlyControl_zeroBorrow : s2Step105EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step105EarlyControlLog.zeroWork=some s2Step105EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step105EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step105EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
      decide +kernel
    · ext q
      simp [s2Step105EarlyControlZeroArena,s2Step105EarlyControlArena,s2Step105EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step105EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step105EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step105EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step105EarlyControl_zero : compileHmrEqualityLog s2Step105EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step105EarlyControlLog.zeroWork=some (s2Step105EarlyControlZeroArena,s2Step105EarlyControlLog.zeroWork,s2Step105EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step105EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step105EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step105EarlyControl_logged : s2Step105EarlyControlPlan.Logged s2Step105EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] 777 794 254 253 252 251 811 35 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step105EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step105EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step105EarlyControl_zero
  · exact s2Step105EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step105EarlyControl_flags
  · exact s2Step105EarlyControl_fit
  · exact s2Step105EarlyControl_history
  · exact s2Step105EarlyControl_sigma
  · exact s2Step105EarlyControl_branch

private theorem s2Step105EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step105EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] 777 794 254 253 252 251 811 35 s2Step105EarlyControlLog=some s2Step105EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step105EarlyControlPlan s2Step105EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] 777 794 254 253 252 251 811 35 s2Step105EarlyControl_logged

private def s2Step105EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<798) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<811) ∨ (812≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step105EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727],768⟩

private def s2Step105EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793],770⟩

private def s2Step105EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215],769⟩

private def s2Step105EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851],771⟩

private def s2Step105FrontBank : WindowBank := ⟨s2Step105EntryFRow,s2Step105EntryGRow,s2Step105EntryFvRow,s2Step105EntryGvRow⟩

private def s2Step105Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 799, 768]

private def s2Step105Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 803, 769]

private def s2Step105Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 846, 770]

private def s2Step105Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 785, 771]

private theorem s2Step105Counter_apart : Disjoint s2Step105HeadFvAfter.live s2Step105CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step105HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step105Counter_borrowed : s2Step105HeadFvAfter.checkBorrow 4 s2Step105CounterWork=some s2Step105CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step105HeadFvAfter s2Step105CounterDuring s2Step105CounterWork.toFinset s2Step105Counter_bounded s2Step105Counter_apart rfl

private theorem s2Step105Counter_owned : (794::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step105HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step105HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step105Counter_checked : compileHmrCounterStepLog s2Step105HeadFvAfter true 794 [772, 773, 774, 775, 776, 777] s2Step105CounterWork=some s2Step105CounterDuring := by
  have owned : ∀q∈794::[772, 773, 774, 775, 776, 777],q∈s2Step105HeadFvAfter.live := fun q hq => s2Step105Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step105Counter_borrowed

private def s2Step105EntryFAfter : Arena := s2Step105EntryFBefore

private theorem s2Step105EntryBank_incomingDistinct : ([s2Step105EntryFRow,s2Step105EntryGRow,s2Step105EntryFvRow,s2Step105EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step105EntryF_Incoming : rowsOwned s2Step105EntryFBefore [s2Step105EntryFRow,s2Step105EntryGRow,s2Step105EntryFvRow,s2Step105EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step105EntryFRow,s2Step105EntryGRow,s2Step105EntryFvRow,s2Step105EntryGvRow] 0 s2Step105EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step105EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<798) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<811) ∨ (812≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step105EntryBank_outgoingOwned : rowsOwned s2Step105EntryGvAfter [s2Step105EntryFOut,s2Step105EntryGOut,s2Step105EntryFvOut,s2Step105EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step105EntryGvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<811) ∨ (812≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step105EntryF_Outgoing : rowsOwned s2Step105EntryGvAfter [s2Step105EntryFOut,s2Step105EntryGOut,s2Step105EntryFvOut,s2Step105EntryGvOut] :=
  hmrRows_owned_drop s2Step105EntryGvAfter [s2Step105EntryFOut,s2Step105EntryGOut,s2Step105EntryFvOut,s2Step105EntryGvOut] 0 s2Step105EntryBank_outgoingOwned

private theorem s2Step105EntryF_distinct : (s2Step105EntryFRow.sign::s2Step105EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step105EntryF_owned : (s2Step105EntryFRow.sign::s2Step105EntryFRow.payload).toFinset⊆s2Step105EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step105EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<798) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<811) ∨ (812≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step105EntryF_reserved : s2Step105EntryFBefore.reserve s2Step105EntryFFresh.toFinset=some s2Step105EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step105EntryFFresh,arenaWires]
  · norm_num [s2Step105EntryFBefore,s2Step105EntryFFresh,arenaWires]
  · simp only [s2Step105EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step105EntryF_checked : planRowResizeLog s2Step105EntryFBefore s2Step105EntryFRow 216 s2Step105EntryFFresh=
    some (s2Step105EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727],768⟩,growRow 768 s2Step105EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step105EntryFBefore s2Step105EntryFAfter s2Step105EntryFRow 216 s2Step105EntryFFresh
    s2Step105EntryF_distinct s2Step105EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step105EntryF_reserved
  have rowEq : WindowRow.mk (s2Step105EntryFRow.payload++s2Step105EntryFFresh) s2Step105EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step105EntryFvBefore : Arena := s2Step105EntryFBefore

private theorem s2Step105EntryFv_Incoming : rowsOwned s2Step105EntryFvBefore [s2Step105EntryFvRow,s2Step105EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step105EntryFRow,s2Step105EntryGRow,s2Step105EntryFvRow,s2Step105EntryGvRow] 2 s2Step105EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step105EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<798) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<811) ∨ (812≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step105EntryFv_Outgoing : rowsOwned s2Step105EntryGvAfter [s2Step105EntryFvOut,s2Step105EntryGvOut] :=
  hmrRows_owned_drop s2Step105EntryGvAfter [s2Step105EntryFOut,s2Step105EntryGOut,s2Step105EntryFvOut,s2Step105EntryGvOut] 2 s2Step105EntryBank_outgoingOwned

private theorem s2Step105EntryFv_distinct : (s2Step105EntryFvRow.sign::s2Step105EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step105EntryFv_owned : (s2Step105EntryFvRow.sign::s2Step105EntryFvRow.payload).toFinset⊆s2Step105EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step105EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<798) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<811) ∨ (812≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step105EntryFv_reserved : s2Step105EntryFvBefore.reserve s2Step105EntryFvFresh.toFinset=some s2Step105EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step105EntryFvFresh,arenaWires]
  · norm_num [s2Step105EntryFvBefore,s2Step105EntryFBefore,s2Step105EntryFvFresh,arenaWires]
  · ext q
    simp only [s2Step105EntryFvAfter,s2Step105EntryFvBefore,s2Step105EntryFBefore,s2Step105EntryFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step105EntryFv_checked : planRowResizeLog s2Step105EntryFvBefore s2Step105EntryFvRow 66 s2Step105EntryFvFresh=
    some (s2Step105EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798],770⟩,growRow 770 s2Step105EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step105EntryFvBefore s2Step105EntryFvAfter s2Step105EntryFvRow 66 s2Step105EntryFvFresh
    s2Step105EntryFv_distinct s2Step105EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step105EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step105EntryFvRow.payload++s2Step105EntryFvFresh) s2Step105EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step105EntryGAfter : Arena := s2Step105EntryFBefore

private def s2Step105EntryGBefore : Arena := s2Step105EntryFBefore

private theorem s2Step105EntryG_Incoming : rowsOwned s2Step105EntryGBefore [s2Step105EntryGRow,s2Step105EntryFvRow,s2Step105EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step105EntryFRow,s2Step105EntryGRow,s2Step105EntryFvRow,s2Step105EntryGvRow] 1 s2Step105EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step105EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<798) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<811) ∨ (812≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step105EntryG_Outgoing : rowsOwned s2Step105EntryGvAfter [s2Step105EntryGOut,s2Step105EntryFvOut,s2Step105EntryGvOut] :=
  hmrRows_owned_drop s2Step105EntryGvAfter [s2Step105EntryFOut,s2Step105EntryGOut,s2Step105EntryFvOut,s2Step105EntryGvOut] 1 s2Step105EntryBank_outgoingOwned

private theorem s2Step105EntryG_distinct : (s2Step105EntryGRow.sign::s2Step105EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step105EntryG_owned : (s2Step105EntryGRow.sign::s2Step105EntryGRow.payload).toFinset⊆s2Step105EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step105EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<798) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<811) ∨ (812≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step105EntryG_reserved : s2Step105EntryGBefore.reserve s2Step105EntryGFresh.toFinset=some s2Step105EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step105EntryGFresh,arenaWires]
  · norm_num [s2Step105EntryGBefore,s2Step105EntryFBefore,s2Step105EntryGFresh,arenaWires]
  · simp only [s2Step105EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step105EntryG_checked : planRowResizeLog s2Step105EntryGBefore s2Step105EntryGRow 216 s2Step105EntryGFresh=
    some (s2Step105EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215],769⟩,growRow 769 s2Step105EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step105EntryGBefore s2Step105EntryGAfter s2Step105EntryGRow 216 s2Step105EntryGFresh
    s2Step105EntryG_distinct s2Step105EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step105EntryG_reserved
  have rowEq : WindowRow.mk (s2Step105EntryGRow.payload++s2Step105EntryGFresh) s2Step105EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step105EntryGvBefore : Arena := s2Step105EntryFvAfter

private theorem s2Step105EntryGv_Incoming : rowsOwned s2Step105EntryGvBefore [s2Step105EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step105EntryFRow,s2Step105EntryGRow,s2Step105EntryFvRow,s2Step105EntryGvRow] 3 s2Step105EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step105EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<811) ∨ (812≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step105EntryGv_Outgoing : rowsOwned s2Step105EntryGvAfter [s2Step105EntryGvOut] :=
  hmrRows_owned_drop s2Step105EntryGvAfter [s2Step105EntryFOut,s2Step105EntryGOut,s2Step105EntryFvOut,s2Step105EntryGvOut] 3 s2Step105EntryBank_outgoingOwned

private theorem s2Step105EntryGv_distinct : (s2Step105EntryGvRow.sign::s2Step105EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step105EntryGv_owned : (s2Step105EntryGvRow.sign::s2Step105EntryGvRow.payload).toFinset⊆s2Step105EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step105EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<811) ∨ (812≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step105EntryGv_reserved : s2Step105EntryGvBefore.reserve s2Step105EntryGvFresh.toFinset=some s2Step105EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step105EntryGvFresh,arenaWires]
  · norm_num [s2Step105EntryGvBefore,s2Step105EntryFvAfter,s2Step105EntryGvFresh,arenaWires]
  · simp only [s2Step105EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step105EntryGv_checked : planRowResizeLog s2Step105EntryGvBefore s2Step105EntryGvRow 66 s2Step105EntryGvFresh=
    some (s2Step105EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851],771⟩,growRow 771 s2Step105EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step105EntryGvBefore s2Step105EntryGvAfter s2Step105EntryGvRow 66 s2Step105EntryGvFresh
    s2Step105EntryGv_distinct s2Step105EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step105EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step105EntryGvRow.payload++s2Step105EntryGvFresh) s2Step105EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step105EntryBank_rows : planWindowRowsLog s2Step105EntryFBefore [(s2Step105EntryFRow,216),(s2Step105EntryGRow,216),(s2Step105EntryFvRow,66),(s2Step105EntryGvRow,66)] [s2Step105EntryFFresh,s2Step105EntryGFresh,s2Step105EntryFvFresh,s2Step105EntryGvFresh]=
    some (s2Step105EntryGvAfter,[s2Step105EntryFOut,s2Step105EntryGOut,s2Step105EntryFvOut,s2Step105EntryGvOut],(growRow 768 s2Step105EntryFFresh ++ (growRow 769 s2Step105EntryGFresh ++ (growRow 770 s2Step105EntryFvFresh ++ (growRow 771 s2Step105EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step105EntryGvAfter [] []=some (s2Step105EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step105EntryGvBefore s2Step105EntryGvAfter s2Step105EntryGvAfter
    s2Step105EntryGvRow s2Step105EntryGvOut 66 s2Step105EntryGvFresh [] [] []
    (growRow 771 s2Step105EntryGvFresh) ([]) s2Step105EntryGv_Incoming s2Step105EntryGv_checked h4 s2Step105EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step105EntryFvBefore s2Step105EntryFvAfter s2Step105EntryGvAfter
    s2Step105EntryFvRow s2Step105EntryFvOut 66 s2Step105EntryFvFresh [(s2Step105EntryGvRow,66)] [s2Step105EntryGvFresh] [s2Step105EntryGvOut]
    (growRow 770 s2Step105EntryFvFresh) ((growRow 771 s2Step105EntryGvFresh ++ [])) s2Step105EntryFv_Incoming s2Step105EntryFv_checked h3 s2Step105EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step105EntryGBefore s2Step105EntryGAfter s2Step105EntryGvAfter
    s2Step105EntryGRow s2Step105EntryGOut 216 s2Step105EntryGFresh [(s2Step105EntryFvRow,66),(s2Step105EntryGvRow,66)] [s2Step105EntryFvFresh,s2Step105EntryGvFresh] [s2Step105EntryFvOut,s2Step105EntryGvOut]
    (growRow 769 s2Step105EntryGFresh) ((growRow 770 s2Step105EntryFvFresh ++ (growRow 771 s2Step105EntryGvFresh ++ []))) s2Step105EntryG_Incoming s2Step105EntryG_checked h2 s2Step105EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step105EntryFBefore s2Step105EntryFAfter s2Step105EntryGvAfter
    s2Step105EntryFRow s2Step105EntryFOut 216 s2Step105EntryFFresh [(s2Step105EntryGRow,216),(s2Step105EntryFvRow,66),(s2Step105EntryGvRow,66)] [s2Step105EntryGFresh,s2Step105EntryFvFresh,s2Step105EntryGvFresh] [s2Step105EntryGOut,s2Step105EntryFvOut,s2Step105EntryGvOut]
    (growRow 768 s2Step105EntryFFresh) ((growRow 769 s2Step105EntryGFresh ++ (growRow 770 s2Step105EntryFvFresh ++ (growRow 771 s2Step105EntryGvFresh ++ [])))) s2Step105EntryF_Incoming s2Step105EntryF_checked h1 s2Step105EntryF_Outgoing
  exact h0

private theorem s2Step105EntryBank_checked : compileHmrBankResizeLog .entry s2Step105EntryFBefore ⟨s2Step105EntryFRow,s2Step105EntryGRow,s2Step105EntryFvRow,s2Step105EntryGvRow⟩ ⟨216,216,66,66⟩ [s2Step105EntryFFresh,s2Step105EntryGFresh,s2Step105EntryFvFresh,s2Step105EntryGvFresh]=
    some (s2Step105EntryGvAfter,⟨s2Step105EntryFOut,s2Step105EntryGOut,s2Step105EntryFvOut,s2Step105EntryGvOut⟩,(growRow 768 s2Step105EntryFFresh ++ (growRow 769 s2Step105EntryGFresh ++ (growRow 770 s2Step105EntryFvFresh ++ (growRow 771 s2Step105EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step105EntryBank_rows]
  rfl

private def s2Step105ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step105ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (804≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step105ExitFBefore : Arena := s2Step105ExitGAfter

private def s2Step105ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 799],768⟩

private def s2Step105ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 846],770⟩

private def s2Step105ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 803],769⟩

private def s2Step105ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 785],771⟩

private theorem s2Step105ExitBank_incomingDistinct : ([s2Step105ExitGRow,s2Step105ExitFRow,s2Step105ExitFvRow,s2Step105ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step105ExitF_Incoming : rowsOwned s2Step105ExitFBefore [s2Step105ExitFRow,s2Step105ExitFvRow,s2Step105ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step105ExitGRow,s2Step105ExitFRow,s2Step105ExitFvRow,s2Step105ExitGvRow] 1 s2Step105ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step105ExitFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (804≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step105ExitBank_outgoingOwned : rowsOwned s2Step105ExitGvAfter [s2Step105ExitGOut,s2Step105ExitFOut,s2Step105ExitFvOut,s2Step105ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step105ExitGvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step105ExitF_Outgoing : rowsOwned s2Step105ExitGvAfter [s2Step105ExitFOut,s2Step105ExitFvOut,s2Step105ExitGvOut] :=
  hmrRows_owned_drop s2Step105ExitGvAfter [s2Step105ExitGOut,s2Step105ExitFOut,s2Step105ExitFvOut,s2Step105ExitGvOut] 1 s2Step105ExitBank_outgoingOwned

private theorem s2Step105ExitF_distinct : (s2Step105ExitFRow.sign::s2Step105ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step105ExitF_owned : (s2Step105ExitFRow.sign::s2Step105ExitFRow.payload).toFinset⊆s2Step105ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step105ExitFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (804≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step105ExitF_retired : s2Step105ExitFBefore.retireSet s2Step105ExitFExtra.toFinset=s2Step105ExitFAfter := by
  unfold Arena.retireSet s2Step105ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step105ExitFBefore,s2Step105ExitGAfter,s2Step105ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step105ExitF_checked : planRowResizeLog s2Step105ExitFBefore s2Step105ExitFRow 216 []=
    some (s2Step105ExitFAfter,s2Step105ExitFOut,shrinkRow 768 s2Step105ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step105ExitFBefore s2Step105ExitFRow 216 s2Step105ExitF_distinct s2Step105ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step105ExitFRow.payload.take 216) s2Step105ExitFRow.sign=s2Step105ExitFOut := by decide +kernel
  have hi : s2Step105ExitFRow.payload.drop 216=s2Step105ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step105ExitF_retired] at result
  exact result

private def s2Step105ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step105ExitFvBefore : Arena := s2Step105ExitFAfter

private theorem s2Step105ExitFv_Incoming : rowsOwned s2Step105ExitFvBefore [s2Step105ExitFvRow,s2Step105ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step105ExitGRow,s2Step105ExitFRow,s2Step105ExitFvRow,s2Step105ExitGvRow] 2 s2Step105ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step105ExitFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step105ExitFv_Outgoing : rowsOwned s2Step105ExitGvAfter [s2Step105ExitFvOut,s2Step105ExitGvOut] :=
  hmrRows_owned_drop s2Step105ExitGvAfter [s2Step105ExitGOut,s2Step105ExitFOut,s2Step105ExitFvOut,s2Step105ExitGvOut] 2 s2Step105ExitBank_outgoingOwned

private theorem s2Step105ExitFv_distinct : (s2Step105ExitFvRow.sign::s2Step105ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step105ExitFv_owned : (s2Step105ExitFvRow.sign::s2Step105ExitFvRow.payload).toFinset⊆s2Step105ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step105ExitFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step105ExitFv_retired : s2Step105ExitFvBefore.retireSet s2Step105ExitFvExtra.toFinset=s2Step105ExitFvAfter := by
  unfold Arena.retireSet s2Step105ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step105ExitFvBefore,s2Step105ExitFAfter,s2Step105ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step105ExitFv_checked : planRowResizeLog s2Step105ExitFvBefore s2Step105ExitFvRow 66 []=
    some (s2Step105ExitFvAfter,s2Step105ExitFvOut,shrinkRow 770 s2Step105ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step105ExitFvBefore s2Step105ExitFvRow 66 s2Step105ExitFv_distinct s2Step105ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step105ExitFvRow.payload.take 66) s2Step105ExitFvRow.sign=s2Step105ExitFvOut := by decide +kernel
  have hi : s2Step105ExitFvRow.payload.drop 66=s2Step105ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step105ExitFv_retired] at result
  exact result

private def s2Step105ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private theorem s2Step105ExitG_Incoming : rowsOwned s2Step105ExitGBefore [s2Step105ExitGRow,s2Step105ExitFRow,s2Step105ExitFvRow,s2Step105ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step105ExitGRow,s2Step105ExitFRow,s2Step105ExitFvRow,s2Step105ExitGvRow] 0 s2Step105ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step105ExitGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step105ExitG_Outgoing : rowsOwned s2Step105ExitGvAfter [s2Step105ExitGOut,s2Step105ExitFOut,s2Step105ExitFvOut,s2Step105ExitGvOut] :=
  hmrRows_owned_drop s2Step105ExitGvAfter [s2Step105ExitGOut,s2Step105ExitFOut,s2Step105ExitFvOut,s2Step105ExitGvOut] 0 s2Step105ExitBank_outgoingOwned

private theorem s2Step105ExitG_distinct : (s2Step105ExitGRow.sign::s2Step105ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step105ExitG_owned : (s2Step105ExitGRow.sign::s2Step105ExitGRow.payload).toFinset⊆s2Step105ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step105ExitGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step105ExitG_retired : s2Step105ExitGBefore.retireSet s2Step105ExitGExtra.toFinset=s2Step105ExitGAfter := by
  unfold Arena.retireSet s2Step105ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step105ExitGBefore,s2Step105ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step105ExitG_checked : planRowResizeLog s2Step105ExitGBefore s2Step105ExitGRow 216 []=
    some (s2Step105ExitGAfter,s2Step105ExitGOut,shrinkRow 769 s2Step105ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step105ExitGBefore s2Step105ExitGRow 216 s2Step105ExitG_distinct s2Step105ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step105ExitGRow.payload.take 216) s2Step105ExitGRow.sign=s2Step105ExitGOut := by decide +kernel
  have hi : s2Step105ExitGRow.payload.drop 216=s2Step105ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step105ExitG_retired] at result
  exact result

private def s2Step105ExitGvBefore : Arena := s2Step105ExitFvAfter

private theorem s2Step105ExitGv_Incoming : rowsOwned s2Step105ExitGvBefore [s2Step105ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step105ExitGRow,s2Step105ExitFRow,s2Step105ExitFvRow,s2Step105ExitGvRow] 3 s2Step105ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step105ExitGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step105ExitGv_Outgoing : rowsOwned s2Step105ExitGvAfter [s2Step105ExitGvOut] :=
  hmrRows_owned_drop s2Step105ExitGvAfter [s2Step105ExitGOut,s2Step105ExitFOut,s2Step105ExitFvOut,s2Step105ExitGvOut] 3 s2Step105ExitBank_outgoingOwned

private theorem s2Step105ExitGv_distinct : (s2Step105ExitGvRow.sign::s2Step105ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step105ExitGv_owned : (s2Step105ExitGvRow.sign::s2Step105ExitGvRow.payload).toFinset⊆s2Step105ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step105ExitGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step105ExitGv_retired : s2Step105ExitGvBefore.retireSet s2Step105ExitGvExtra.toFinset=s2Step105ExitGvAfter := by
  unfold Arena.retireSet s2Step105ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step105ExitGvBefore,s2Step105ExitFvAfter,s2Step105ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step105ExitGv_checked : planRowResizeLog s2Step105ExitGvBefore s2Step105ExitGvRow 66 []=
    some (s2Step105ExitGvAfter,s2Step105ExitGvOut,shrinkRow 771 s2Step105ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step105ExitGvBefore s2Step105ExitGvRow 66 s2Step105ExitGv_distinct s2Step105ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step105ExitGvRow.payload.take 66) s2Step105ExitGvRow.sign=s2Step105ExitGvOut := by decide +kernel
  have hi : s2Step105ExitGvRow.payload.drop 66=s2Step105ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step105ExitGv_retired] at result
  exact result

private theorem s2Step105ExitBank_rows : planWindowRowsLog s2Step105ExitGBefore [(s2Step105ExitGRow,216),(s2Step105ExitFRow,216),(s2Step105ExitFvRow,66),(s2Step105ExitGvRow,66)] [[],[],[],[]]=
    some (s2Step105ExitGvAfter,[s2Step105ExitGOut,s2Step105ExitFOut,s2Step105ExitFvOut,s2Step105ExitGvOut],(shrinkRow 769 s2Step105ExitGExtra ++ (shrinkRow 768 s2Step105ExitFExtra ++ (shrinkRow 770 s2Step105ExitFvExtra ++ (shrinkRow 771 s2Step105ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step105ExitGvAfter [] []=some (s2Step105ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step105ExitGvBefore s2Step105ExitGvAfter s2Step105ExitGvAfter
    s2Step105ExitGvRow s2Step105ExitGvOut 66 [] [] [] []
    (shrinkRow 771 s2Step105ExitGvExtra) ([]) s2Step105ExitGv_Incoming s2Step105ExitGv_checked h4 s2Step105ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step105ExitFvBefore s2Step105ExitFvAfter s2Step105ExitGvAfter
    s2Step105ExitFvRow s2Step105ExitFvOut 66 [] [(s2Step105ExitGvRow,66)] [[]] [s2Step105ExitGvOut]
    (shrinkRow 770 s2Step105ExitFvExtra) ((shrinkRow 771 s2Step105ExitGvExtra ++ [])) s2Step105ExitFv_Incoming s2Step105ExitFv_checked h3 s2Step105ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step105ExitFBefore s2Step105ExitFAfter s2Step105ExitGvAfter
    s2Step105ExitFRow s2Step105ExitFOut 216 [] [(s2Step105ExitFvRow,66),(s2Step105ExitGvRow,66)] [[],[]] [s2Step105ExitFvOut,s2Step105ExitGvOut]
    (shrinkRow 768 s2Step105ExitFExtra) ((shrinkRow 770 s2Step105ExitFvExtra ++ (shrinkRow 771 s2Step105ExitGvExtra ++ []))) s2Step105ExitF_Incoming s2Step105ExitF_checked h2 s2Step105ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step105ExitGBefore s2Step105ExitGAfter s2Step105ExitGvAfter
    s2Step105ExitGRow s2Step105ExitGOut 216 [] [(s2Step105ExitFRow,216),(s2Step105ExitFvRow,66),(s2Step105ExitGvRow,66)] [[],[],[]] [s2Step105ExitFOut,s2Step105ExitFvOut,s2Step105ExitGvOut]
    (shrinkRow 769 s2Step105ExitGExtra) ((shrinkRow 768 s2Step105ExitFExtra ++ (shrinkRow 770 s2Step105ExitFvExtra ++ (shrinkRow 771 s2Step105ExitGvExtra ++ [])))) s2Step105ExitG_Incoming s2Step105ExitG_checked h1 s2Step105ExitG_Outgoing
  exact h0

private theorem s2Step105ExitBank_checked : compileHmrBankResizeLog .exit s2Step105ExitGBefore ⟨s2Step105ExitFRow,s2Step105ExitGRow,s2Step105ExitFvRow,s2Step105ExitGvRow⟩ ⟨216,216,66,66⟩ [[],[],[],[]]=
    some (s2Step105ExitGvAfter,⟨s2Step105ExitFOut,s2Step105ExitGOut,s2Step105ExitFvOut,s2Step105ExitGvOut⟩,(shrinkRow 769 s2Step105ExitGExtra ++ (shrinkRow 768 s2Step105ExitFExtra ++ (shrinkRow 770 s2Step105ExitFvExtra ++ (shrinkRow 771 s2Step105ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step105ExitBank_rows]
  rfl

private theorem s2Step105Add0_apart : Disjoint s2Step105Add0Arena.live s2Step105Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step105Add0Arena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step105Add0_card : s2Step105Add0Arena.live.card=873 := by
  decide +kernel

private theorem s2Step105Add0_borrowed : s2Step105Add0Arena.checkBorrow (hmrHybridCount s2Step105Add0Arena s2Step105Add0B.length) s2Step105Add0Work=some s2Step105Add0During := by
  have len : s2Step105Add0Work.length=hmrHybridCount s2Step105Add0Arena s2Step105Add0B.length := by
    rw [hmrHybridCount,s2Step105Add0_card]
    decide +kernel
  have nd : s2Step105Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step105Add0Arena s2Step105Add0During s2Step105Add0Work.toFinset s2Step105Add0_bounded s2Step105Add0_apart rfl

private theorem s2Step105Add0_distinct : (805::811::809::(s2Step105Add0A++s2Step105Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step105Add0_owned : (805::811::809::(s2Step105Add0A++s2Step105Add0B)).toFinset⊆s2Step105Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step105Add0Arena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step105Add0_checked : compileHmrHybridCinLog s2Step105Add0Arena 811 805 809 s2Step105Add0A s2Step105Add0B s2Step105Add0Work=some s2Step105Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step105Add0Arena s2Step105Add0During 811 805 809 s2Step105Add0A s2Step105Add0B s2Step105Add0Work
    (by decide +kernel) (by decide +kernel) s2Step105Add0_distinct
    (fun q hq => s2Step105Add0_owned (List.mem_toFinset.mpr hq)) s2Step105Add0_borrowed

private theorem s2Step105Add1_apart : Disjoint s2Step105Add1Arena.live s2Step105Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step105Add1Arena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step105Add1_card : s2Step105Add1Arena.live.card=873 := by
  decide +kernel

private theorem s2Step105Add1_borrowed : s2Step105Add1Arena.checkBorrow (hmrHybridCount s2Step105Add1Arena s2Step105Add1B.length) s2Step105Add1Work=some s2Step105Add1During := by
  have len : s2Step105Add1Work.length=hmrHybridCount s2Step105Add1Arena s2Step105Add1B.length := by
    rw [hmrHybridCount,s2Step105Add1_card]
    decide +kernel
  have nd : s2Step105Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step105Add1Arena s2Step105Add1During s2Step105Add1Work.toFinset s2Step105Add1_bounded s2Step105Add1_apart rfl

private theorem s2Step105Add1_distinct : (805::811::809::(s2Step105Add1A++s2Step105Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step105Add1_owned : (805::811::809::(s2Step105Add1A++s2Step105Add1B)).toFinset⊆s2Step105Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step105Add1Arena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step105Add1_checked : compileHmrHybridCinLog s2Step105Add1Arena 811 805 809 s2Step105Add1A s2Step105Add1B s2Step105Add1Work=some s2Step105Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step105Add1Arena s2Step105Add1During 811 805 809 s2Step105Add1A s2Step105Add1B s2Step105Add1Work
    (by decide +kernel) (by decide +kernel) s2Step105Add1_distinct
    (fun q hq => s2Step105Add1_owned (List.mem_toFinset.mpr hq)) s2Step105Add1_borrowed

private theorem s2Step105F4_apart : Disjoint (s2Step105Add0A++s2Step105Add0B).toFinset (s2Step105Add1A++s2Step105Add1B).toFinset := by
  have nd : ((s2Step105Add0A++s2Step105Add0B)++(s2Step105Add1A++s2Step105Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step105F4_carry : s2Step105F4FlagArena.checkBorrow 1 [809]=some s2Step105Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step105F4FlagArena,s2Step105HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step105F4FlagArena,s2Step105HeadFvAfter,s2Step105Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step105F4_distinct : (794::811::805::809::((s2Step105Add0A++s2Step105Add1A)++(s2Step105Add0B++s2Step105Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step105F4_flag : s2Step105HeadFvAfter.checkBorrow 1 [805]=some s2Step105F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step105HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step105F4_owned : (794::811::((s2Step105Add0A++s2Step105Add1A)++(s2Step105Add0B++s2Step105Add1B))).toFinset⊆s2Step105HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step105HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step105F4_checked : compileHmrHybridF4Log s2Step105HeadFvAfter 794 811 s2Step105Add0A s2Step105Add0B s2Step105Add1A s2Step105Add1B [805] [809] s2Step105Add0Work s2Step105Add1Work=some s2Step105F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step105HeadFvAfter s2Step105F4FlagArena s2Step105Add0Arena s2Step105Add0During s2Step105Add1During 794 811
    s2Step105Add0A s2Step105Add0B s2Step105Add1A s2Step105Add1B [805] [809] s2Step105Add0Work s2Step105Add1Work
    (fun q hq => s2Step105F4_owned (List.mem_toFinset.mpr hq)) s2Step105F4_flag s2Step105F4_carry
    s2Step105F4_distinct s2Step105F4_apart s2Step105Add0_checked s2Step105Add1_checked

private theorem s2Step105Front_branch : s2Step105FrontSigmaArena.checkBorrow 1 [811]=some s2Step105HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step105FrontSigmaArena,s2Step105EntryGvAfter,s2Step105EntryFvAfter,arenaWires]
  · ext q
    simp only [s2Step105FrontSigmaArena,s2Step105EntryGvAfter,s2Step105EntryFvAfter,s2Step105HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step105Front_entry : HmrFrontEntryValid s2Step105EntryFBefore s2Step105FrontBank 216 66 ⟨216,216,66,66⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step105FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step105EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step105EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<798) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<811) ∨ (812≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step105FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step105Front_sigma : s2Step105EntryGvAfter.checkBorrow 1 [794]=some s2Step105FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step105EntryGvAfter,s2Step105EntryFvAfter,arenaWires]
  · rfl

private def s2Step105HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step105HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step105HeadFBefore : Arena := s2Step105HeadGAfter

private def s2Step105HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727],768⟩

private def s2Step105HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798],770⟩

private def s2Step105HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215],769⟩

private def s2Step105HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851],771⟩

private theorem s2Step105HeadBank_incomingDistinct : ([s2Step105HeadGRow,s2Step105HeadFRow,s2Step105HeadGvRow,s2Step105HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step105HeadF_Incoming : rowsOwned s2Step105HeadFBefore [s2Step105HeadFRow,s2Step105HeadGvRow,s2Step105HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step105HeadGRow,s2Step105HeadFRow,s2Step105HeadGvRow,s2Step105HeadFvRow] 1 s2Step105HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step105HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step105HeadBank_outgoingOwned : rowsOwned s2Step105HeadFvAfter [s2Step105HeadGOut,s2Step105HeadFOut,s2Step105HeadGvOut,s2Step105HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step105HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step105HeadF_Outgoing : rowsOwned s2Step105HeadFvAfter [s2Step105HeadFOut,s2Step105HeadGvOut,s2Step105HeadFvOut] :=
  hmrRows_owned_drop s2Step105HeadFvAfter [s2Step105HeadGOut,s2Step105HeadFOut,s2Step105HeadGvOut,s2Step105HeadFvOut] 1 s2Step105HeadBank_outgoingOwned

private theorem s2Step105HeadF_distinct : (s2Step105HeadFRow.sign::s2Step105HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step105HeadF_owned : (s2Step105HeadFRow.sign::s2Step105HeadFRow.payload).toFinset⊆s2Step105HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step105HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step105HeadF_reserved : s2Step105HeadFBefore.reserve s2Step105HeadFFresh.toFinset=some s2Step105HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step105HeadFFresh,arenaWires]
  · norm_num [s2Step105HeadFBefore,s2Step105HeadGAfter,s2Step105HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step105HeadFAfter,s2Step105HeadFBefore,s2Step105HeadGAfter,s2Step105HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step105HeadF_checked : planRowResizeLog s2Step105HeadFBefore s2Step105HeadFRow 217 s2Step105HeadFFresh=
    some (s2Step105HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 799],768⟩,growRow 768 s2Step105HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step105HeadFBefore s2Step105HeadFAfter s2Step105HeadFRow 217 s2Step105HeadFFresh
    s2Step105HeadF_distinct s2Step105HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step105HeadF_reserved
  have rowEq : WindowRow.mk (s2Step105HeadFRow.payload++s2Step105HeadFFresh) s2Step105HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 799],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step105HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step105HeadFvBefore : Arena := s2Step105HeadGvAfter

private theorem s2Step105HeadFv_Incoming : rowsOwned s2Step105HeadFvBefore [s2Step105HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step105HeadGRow,s2Step105HeadFRow,s2Step105HeadGvRow,s2Step105HeadFvRow] 3 s2Step105HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step105HeadFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step105HeadFv_Outgoing : rowsOwned s2Step105HeadFvAfter [s2Step105HeadFvOut] :=
  hmrRows_owned_drop s2Step105HeadFvAfter [s2Step105HeadGOut,s2Step105HeadFOut,s2Step105HeadGvOut,s2Step105HeadFvOut] 3 s2Step105HeadBank_outgoingOwned

private theorem s2Step105HeadFv_distinct : (s2Step105HeadFvRow.sign::s2Step105HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step105HeadFv_owned : (s2Step105HeadFvRow.sign::s2Step105HeadFvRow.payload).toFinset⊆s2Step105HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step105HeadFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step105HeadFv_reserved : s2Step105HeadFvBefore.reserve s2Step105HeadFvFresh.toFinset=some s2Step105HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step105HeadFvFresh,arenaWires]
  · norm_num [s2Step105HeadFvBefore,s2Step105HeadGvAfter,s2Step105HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step105HeadFvAfter,s2Step105HeadFvBefore,s2Step105HeadGvAfter,s2Step105HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step105HeadFv_checked : planRowResizeLog s2Step105HeadFvBefore s2Step105HeadFvRow 67 s2Step105HeadFvFresh=
    some (s2Step105HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 846],770⟩,growRow 770 s2Step105HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step105HeadFvBefore s2Step105HeadFvAfter s2Step105HeadFvRow 67 s2Step105HeadFvFresh
    s2Step105HeadFv_distinct s2Step105HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step105HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step105HeadFvRow.payload++s2Step105HeadFvFresh) s2Step105HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 846],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step105HeadG_Incoming : rowsOwned s2Step105HeadGBefore [s2Step105HeadGRow,s2Step105HeadFRow,s2Step105HeadGvRow,s2Step105HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step105HeadGRow,s2Step105HeadFRow,s2Step105HeadGvRow,s2Step105HeadFvRow] 0 s2Step105HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step105HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step105HeadG_Outgoing : rowsOwned s2Step105HeadFvAfter [s2Step105HeadGOut,s2Step105HeadFOut,s2Step105HeadGvOut,s2Step105HeadFvOut] :=
  hmrRows_owned_drop s2Step105HeadFvAfter [s2Step105HeadGOut,s2Step105HeadFOut,s2Step105HeadGvOut,s2Step105HeadFvOut] 0 s2Step105HeadBank_outgoingOwned

private theorem s2Step105HeadG_distinct : (s2Step105HeadGRow.sign::s2Step105HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step105HeadG_owned : (s2Step105HeadGRow.sign::s2Step105HeadGRow.payload).toFinset⊆s2Step105HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step105HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step105HeadG_reserved : s2Step105HeadGBefore.reserve s2Step105HeadGFresh.toFinset=some s2Step105HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step105HeadGFresh,arenaWires]
  · norm_num [s2Step105HeadGBefore,s2Step105HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step105HeadGAfter,s2Step105HeadGBefore,s2Step105HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step105HeadG_checked : planRowResizeLog s2Step105HeadGBefore s2Step105HeadGRow 217 s2Step105HeadGFresh=
    some (s2Step105HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 803],769⟩,growRow 769 s2Step105HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step105HeadGBefore s2Step105HeadGAfter s2Step105HeadGRow 217 s2Step105HeadGFresh
    s2Step105HeadG_distinct s2Step105HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step105HeadG_reserved
  have rowEq : WindowRow.mk (s2Step105HeadGRow.payload++s2Step105HeadGFresh) s2Step105HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 803],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step105HeadGvBefore : Arena := s2Step105HeadFAfter

private theorem s2Step105HeadGv_Incoming : rowsOwned s2Step105HeadGvBefore [s2Step105HeadGvRow,s2Step105HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step105HeadGRow,s2Step105HeadFRow,s2Step105HeadGvRow,s2Step105HeadFvRow] 2 s2Step105HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step105HeadGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step105HeadGv_Outgoing : rowsOwned s2Step105HeadFvAfter [s2Step105HeadGvOut,s2Step105HeadFvOut] :=
  hmrRows_owned_drop s2Step105HeadFvAfter [s2Step105HeadGOut,s2Step105HeadFOut,s2Step105HeadGvOut,s2Step105HeadFvOut] 2 s2Step105HeadBank_outgoingOwned

private theorem s2Step105HeadGv_distinct : (s2Step105HeadGvRow.sign::s2Step105HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step105HeadGv_owned : (s2Step105HeadGvRow.sign::s2Step105HeadGvRow.payload).toFinset⊆s2Step105HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step105HeadGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step105HeadGv_reserved : s2Step105HeadGvBefore.reserve s2Step105HeadGvFresh.toFinset=some s2Step105HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step105HeadGvFresh,arenaWires]
  · norm_num [s2Step105HeadGvBefore,s2Step105HeadFAfter,s2Step105HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step105HeadGvAfter,s2Step105HeadGvBefore,s2Step105HeadFAfter,s2Step105HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step105HeadGv_checked : planRowResizeLog s2Step105HeadGvBefore s2Step105HeadGvRow 67 s2Step105HeadGvFresh=
    some (s2Step105HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 785],771⟩,growRow 771 s2Step105HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step105HeadGvBefore s2Step105HeadGvAfter s2Step105HeadGvRow 67 s2Step105HeadGvFresh
    s2Step105HeadGv_distinct s2Step105HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step105HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step105HeadGvRow.payload++s2Step105HeadGvFresh) s2Step105HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 785],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step105HeadBank_rows : planWindowRowsLog s2Step105HeadGBefore [(s2Step105HeadGRow,217),(s2Step105HeadFRow,217),(s2Step105HeadGvRow,67),(s2Step105HeadFvRow,67)] [s2Step105HeadGFresh,s2Step105HeadFFresh,s2Step105HeadGvFresh,s2Step105HeadFvFresh]=
    some (s2Step105HeadFvAfter,[s2Step105HeadGOut,s2Step105HeadFOut,s2Step105HeadGvOut,s2Step105HeadFvOut],(growRow 769 s2Step105HeadGFresh ++ (growRow 768 s2Step105HeadFFresh ++ (growRow 771 s2Step105HeadGvFresh ++ (growRow 770 s2Step105HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step105HeadFvAfter [] []=some (s2Step105HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step105HeadFvBefore s2Step105HeadFvAfter s2Step105HeadFvAfter
    s2Step105HeadFvRow s2Step105HeadFvOut 67 s2Step105HeadFvFresh [] [] []
    (growRow 770 s2Step105HeadFvFresh) ([]) s2Step105HeadFv_Incoming s2Step105HeadFv_checked h4 s2Step105HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step105HeadGvBefore s2Step105HeadGvAfter s2Step105HeadFvAfter
    s2Step105HeadGvRow s2Step105HeadGvOut 67 s2Step105HeadGvFresh [(s2Step105HeadFvRow,67)] [s2Step105HeadFvFresh] [s2Step105HeadFvOut]
    (growRow 771 s2Step105HeadGvFresh) ((growRow 770 s2Step105HeadFvFresh ++ [])) s2Step105HeadGv_Incoming s2Step105HeadGv_checked h3 s2Step105HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step105HeadFBefore s2Step105HeadFAfter s2Step105HeadFvAfter
    s2Step105HeadFRow s2Step105HeadFOut 217 s2Step105HeadFFresh [(s2Step105HeadGvRow,67),(s2Step105HeadFvRow,67)] [s2Step105HeadGvFresh,s2Step105HeadFvFresh] [s2Step105HeadGvOut,s2Step105HeadFvOut]
    (growRow 768 s2Step105HeadFFresh) ((growRow 771 s2Step105HeadGvFresh ++ (growRow 770 s2Step105HeadFvFresh ++ []))) s2Step105HeadF_Incoming s2Step105HeadF_checked h2 s2Step105HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step105HeadGBefore s2Step105HeadGAfter s2Step105HeadFvAfter
    s2Step105HeadGRow s2Step105HeadGOut 217 s2Step105HeadGFresh [(s2Step105HeadFRow,217),(s2Step105HeadGvRow,67),(s2Step105HeadFvRow,67)] [s2Step105HeadFFresh,s2Step105HeadGvFresh,s2Step105HeadFvFresh] [s2Step105HeadFOut,s2Step105HeadGvOut,s2Step105HeadFvOut]
    (growRow 769 s2Step105HeadGFresh) ((growRow 768 s2Step105HeadFFresh ++ (growRow 771 s2Step105HeadGvFresh ++ (growRow 770 s2Step105HeadFvFresh ++ [])))) s2Step105HeadG_Incoming s2Step105HeadG_checked h1 s2Step105HeadG_Outgoing
  exact h0

private theorem s2Step105HeadBank_checked : compileHmrBankResizeLog .headroom s2Step105HeadGBefore ⟨s2Step105HeadFRow,s2Step105HeadGRow,s2Step105HeadFvRow,s2Step105HeadGvRow⟩ ⟨217,217,67,67⟩ [s2Step105HeadGFresh,s2Step105HeadFFresh,s2Step105HeadGvFresh,s2Step105HeadFvFresh]=
    some (s2Step105HeadFvAfter,⟨s2Step105HeadFOut,s2Step105HeadGOut,s2Step105HeadFvOut,s2Step105HeadGvOut⟩,(growRow 769 s2Step105HeadGFresh ++ (growRow 768 s2Step105HeadFFresh ++ (growRow 771 s2Step105HeadGvFresh ++ (growRow 770 s2Step105HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step105HeadBank_rows]
  rfl

private theorem s2Step105Front_checked : compileHmrSourceFrontLog s2Step105EntryFBefore s2Step105FrontBank 216 66 ⟨216,216,66,66⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step105FrontLog=some s2Step105FrontPlan := by
  have pairEq : s2Step105FrontPair=⟨s2Step105HeadFRow,s2Step105HeadGRow,s2Step105HeadFvRow,s2Step105HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step105FrontHead=⟨s2Step105ExitFRow,s2Step105ExitGRow,s2Step105ExitFvRow,s2Step105ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step105Add0A=s2Step105FrontHead.f.wires := by decide +kernel
  have gEq : s2Step105Add0B=s2Step105FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step105Add1A=s2Step105FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step105Add1B=s2Step105FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step105EntryFBefore s2Step105FrontBank 216 66 ⟨216,216,66,66⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step105FrontLog s2Step105FrontPlan
  · exact s2Step105Front_entry
  · exact s2Step105EntryBank_checked
  · exact s2Step105Front_sigma
  · rfl
  · exact s2Step105Front_branch
  · rfl
  · simpa only [s2Step105FrontPlan,pairEq] using s2Step105HeadBank_checked
  · simpa only [s2Step105FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step105F4_checked
  · exact s2Step105Counter_checked
  · rfl
  · simpa only [s2Step105FrontPlan,headEq] using s2Step105ExitBank_checked

private theorem s2Step105Complete_explicit_checked : compileHmrEarlyStepLog s2Step105EntryFBefore s2Step105FrontBank 216 66 ⟨216,216,66,66⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] 35 s2Step105CompleteLog=some s2Step105CompletePlan := by
  let Q := s2Step105EarlyControlPlan
  have hq := s2Step105EarlyControl_plan_checked
  have fv1 : s2Step105CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step105CompleteOut.fv.payload[2]?.getD s2Step105CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step105CompleteOut.fv.payload[3]?.getD s2Step105CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step105CompleteOut.fv.payload[4]?.getD s2Step105CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step105EntryFBefore s2Step105EarlyControlArena s2Step105FrontBank 216 66 ⟨216,216,66,66⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] 35 s2Step105CompleteLog s2Step105FrontPlan Q
    s2Step105Front_checked s2Step105Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step105Complete_owned s2Step105Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step105EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] 777 794 s2Step105CompleteOut.fv.second (s2Step105CompleteOut.fv.payload[2]?.getD s2Step105CompleteOut.fv.sign) (s2Step105CompleteOut.fv.payload[3]?.getD s2Step105CompleteOut.fv.sign) (s2Step105CompleteOut.fv.payload[4]?.getD s2Step105CompleteOut.fv.sign) 811 35 s2Step105EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep105Arena : Arena := s2Step105EntryFBefore
def s2PrivateStep105Bank : WindowBank := s2Step105FrontBank
def s2PrivateStep105Spec : HmrSourceWalkStepLog := ⟨216,66,⟨216,216,66,66⟩,35,.early s2Step105CompleteLog⟩
def s2PrivateStep105Plan : HmrSourceStepPlan := .early s2Step105CompletePlan
theorem s2PrivateStep105_source : s2PrivateStep105Spec=s2ObservedLogs96[9] := rfl
theorem s2PrivateStep105_checked : compileHmrSourceStepLog s2PrivateStep105Arena s2PrivateStep105Bank
    s2PrivateStep105Spec.fgWidth s2PrivateStep105Spec.vWidth s2PrivateStep105Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880]
    6 498 105 s2PrivateStep105Spec.need none s2PrivateStep105Spec.log=some s2PrivateStep105Plan := by
  change compileHmrSourceStepLog s2Step105EntryFBefore s2Step105FrontBank 216 66 ⟨216,216,66,66⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] 6 498 105 35 none (.early s2Step105CompleteLog)=some (.early s2Step105CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 105<498)]
  rw [s2Step105Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
