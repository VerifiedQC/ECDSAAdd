import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep101
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

private def s2Step103CompleteMoves : List (Wire × Wire) := [(805,217),(809,729)]

private def s2Step103EarlyControlLog : HmrEarlyControlLog := ⟨[809, 805, 799, 846, 781],[849],[806],[802, 867, 877, 878, 879, 881],[]⟩

private def s2Step103FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[846], [799], [851], [785]],[[], [], [], []]⟩,[798],[794],[781],[849],[806, 802, 867, 877, 878, 879, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[806, 802, 867, 877, 878, 879, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[781, 849, 806, 802]⟩

private def s2Step103CompleteLog : HmrEarlyStepLog := ⟨s2Step103FrontLog,s2Step103CompleteMoves,s2Step103EarlyControlLog⟩

private def s2Step103ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728],768⟩

private def s2Step103ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 785],770⟩

private def s2Step103ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216],769⟩

private def s2Step103ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851],771⟩

private def s2Step103FrontOut : WindowBank := ⟨s2Step103ExitFOut,s2Step103ExitGOut,s2Step103ExitFvOut,s2Step103ExitGvOut⟩

private def s2Step103CompleteOut : WindowBank := s2Step103FrontOut.repacked s2Step103CompleteMoves

private def s2Step103EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step103EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step103EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step103EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step103EarlyControlPositiveArena,[849],s2Step103EarlyControlEqualityArena,[806],⟨⟨798,false⟩,[⟨⟨849,false⟩,806⟩]⟩⟩

private def s2Step103EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step103EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step103EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step103EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<798) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step103EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<798) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step103EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step103EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,809⟩,⟨⟨774,false⟩,805⟩,⟨⟨775,false⟩,799⟩,⟨⟨776,false⟩,846⟩,⟨⟨777,false⟩,781⟩]⟩

private def s2Step103EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step103EarlyControlZeroArena,s2Step103EarlyControlZeroPlan,s2Step103EarlyControlClassPlan,s2Step103EarlyControlFlagArena,s2Step103EarlyControlFittedArena,s2Step103EarlyControlHistoryArena,s2Step103EarlyControlSigmaArena,s2Step103EarlyControlOutputArena,s2Step103EarlyControlLog⟩

private def s2Step103CounterWork : List Wire := [781, 849, 806, 802]

private theorem s2Step103Counter_bounded : s2Step103CounterWork.toFinset⊆arenaWires := by norm_num [s2Step103CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step103HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step103CounterDuring : Arena := ⟨s2Step103HeadFvAfter.live∪s2Step103CounterWork.toFinset,Finset.union_subset s2Step103HeadFvAfter.bounded s2Step103Counter_bounded⟩

private def s2Step103EntryFFresh : List Wire := []

private def s2Step103EntryFvFresh : List Wire := []

private def s2Step103EntryGFresh : List Wire := []

private def s2Step103EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<798) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step103EntryGvAfter : Arena := s2Step103EntryFBefore

private def s2Step103EntryGvFresh : List Wire := []

private def s2Step103ExitFExtra : List Wire := [729, 799]

private def s2Step103ExitGExtra : List Wire := [217, 846]

private def s2Step103ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<217) ∨ (218≤q ∧ q<729) ∨ (730≤q ∧ q<781) ∨ (782≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step103ExitGvAfter : Arena := s2Step103ExitFAfter

private def s2Step103Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step103Add0Work : List Wire := [806, 802, 867, 877, 878, 879, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step103Add0_bounded : s2Step103Add0Work.toFinset⊆arenaWires := by
  have h : s2Step103Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step103Add0During : Arena := ⟨s2Step103Add0Arena.live∪s2Step103Add0Work.toFinset,Finset.union_subset s2Step103Add0Arena.bounded s2Step103Add0_bounded⟩

private def s2Step103Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step103Add1Work : List Wire := [806, 802, 867, 877, 878, 879, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step103Add1_bounded : s2Step103Add1Work.toFinset⊆arenaWires := by
  have h : s2Step103Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step103Add1During : Arena := ⟨s2Step103Add1Arena.live∪s2Step103Add1Work.toFinset,Finset.union_subset s2Step103Add1Arena.bounded s2Step103Add1_bounded⟩

private def s2Step103F4FlagArena : Arena := ⟨s2Step103HeadFvAfter.live∪{781},Finset.union_subset s2Step103HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step103F4Plan : HmrHybridF4Plan := ⟨s2Step103F4FlagArena,[781],s2Step103Add0Arena,[849],s2Step103Add0During,s2Step103Add0Work,s2Step103Add1During,s2Step103Add1Work⟩

private def s2Step103HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 799],768⟩

private def s2Step103HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 785],770⟩

private def s2Step103HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 846],769⟩

private def s2Step103HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851],771⟩

private def s2Step103FrontHead : WindowBank := ⟨s2Step103HeadFOut,s2Step103HeadGOut,s2Step103HeadFvOut,s2Step103HeadGvOut⟩

private def s2Step103EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729],768⟩

private def s2Step103EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793],770⟩

private def s2Step103EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217],769⟩

private def s2Step103EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804],771⟩

private def s2Step103FrontPair : WindowBank := ⟨s2Step103EntryFOut,s2Step103EntryGOut,s2Step103EntryFvOut,s2Step103EntryGvOut⟩

private def s2Step103FrontSigmaArena : Arena := ⟨s2Step103EntryGvAfter.live∪{798},Finset.union_subset s2Step103EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step103HeadFFresh : List Wire := [799]

private def s2Step103HeadFvFresh : List Wire := [785]

private def s2Step103HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step103HeadGFresh : List Wire := [846]

private def s2Step103HeadGvFresh : List Wire := [851]

private def s2Step103FrontPlan : HmrSourceFront := ⟨s2Step103EntryGvAfter,s2Step103FrontPair,(growRow 768 s2Step103EntryFFresh ++ (growRow 769 s2Step103EntryGFresh ++ (growRow 770 s2Step103EntryFvFresh ++ (growRow 771 s2Step103EntryGvFresh ++ [])))),s2Step103FrontSigmaArena,[798],s2Step103HeadGBefore,[794],
  s2Step103HeadFvAfter,s2Step103FrontHead,(growRow 769 s2Step103HeadGFresh ++ (growRow 768 s2Step103HeadFFresh ++ (growRow 771 s2Step103HeadGvFresh ++ (growRow 770 s2Step103HeadFvFresh ++ [])))),s2Step103F4Plan,s2Step103CounterDuring,s2Step103CounterWork,s2Step103ExitGvAfter,s2Step103FrontOut,(shrinkRow 769 s2Step103ExitGExtra ++ (shrinkRow 768 s2Step103ExitFExtra ++ (growRow 770 [] ++ (growRow 771 [] ++ []))))⟩

private def s2Step103CompletePlan : HmrEarlyStepPlan := ⟨s2Step103FrontPlan,s2Step103EarlyControlArena,s2Step103EarlyControlPlan,s2Step103CompleteMoves⟩

private theorem s2Step103Complete_apart : List.Disjoint (s2Step103CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [798, 794, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] := by
  have nd : ((s2Step103CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[798, 794, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step103Complete_owned : (s2Step103CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step103EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step103EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private def s2Step103CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,729),(730,781),(782,799),(800,802),(803,805),(807,846),(847,849),(850,867),(868,877),(880,881)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s2Step103CompleteRelocationMove0Borrowed : Arena := ⟨s2Step103ExitGvAfter.live∪{217},Finset.union_subset s2Step103ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step103CompleteRelocationMove1Borrowed : Arena := ⟨s2Step103CompleteRelocationMove0After.live∪{729},Finset.union_subset s2Step103CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s2Step103CompleteRelocation_move0_owned : 805∈s2Step103ExitGvAfter.live := by norm_num [s2Step103ExitGvAfter,s2Step103ExitFAfter,arenaWires]

private theorem s2Step103CompleteRelocation_move0_reserve : s2Step103ExitGvAfter.reserve {217}=some s2Step103CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step103ExitGvAfter,s2Step103ExitFAfter,arenaWires]
  · rfl

private theorem s2Step103CompleteRelocation_move0_retire : s2Step103CompleteRelocationMove0Borrowed.retireSet {805}=s2Step103CompleteRelocationMove0After := by
  unfold Arena.retireSet s2Step103CompleteRelocationMove0After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step103CompleteRelocationMove0Borrowed,s2Step103ExitGvAfter,s2Step103ExitFAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step103CompleteRelocation_move1_owned : 809∈s2Step103CompleteRelocationMove0After.live := by norm_num [s2Step103CompleteRelocationMove0After,arenaWires]

private theorem s2Step103CompleteRelocation_move1_reserve : s2Step103CompleteRelocationMove0After.reserve {729}=some s2Step103CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step103CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s2Step103CompleteRelocation_move1_retire : s2Step103CompleteRelocationMove1Borrowed.retireSet {809}=s2Step103EarlyControlArena := by
  unfold Arena.retireSet s2Step103EarlyControlArena
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step103CompleteRelocationMove1Borrowed,s2Step103CompleteRelocationMove0After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step103CompleteRelocation_checked : s2Step103ExitGvAfter.checkRepack [(805,217),(809,729)]=some s2Step103EarlyControlArena := by
  have tail2 : s2Step103EarlyControlArena.checkRepack []=some s2Step103EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s2Step103CompleteRelocationMove0After s2Step103CompleteRelocationMove1Borrowed s2Step103EarlyControlArena s2Step103EarlyControlArena 809 729 []
    s2Step103CompleteRelocation_move1_owned s2Step103CompleteRelocation_move1_reserve s2Step103CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s2Step103ExitGvAfter s2Step103CompleteRelocationMove0Borrowed s2Step103CompleteRelocationMove0After s2Step103EarlyControlArena 805 217 [(809,729)]
    s2Step103CompleteRelocation_move0_owned s2Step103CompleteRelocation_move0_reserve s2Step103CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s2Step103Complete_repack : s2Step103ExitGvAfter.checkRepack s2Step103CompleteMoves=some s2Step103EarlyControlArena := by
  simpa only [s2Step103CompleteMoves] using s2Step103CompleteRelocation_checked

private theorem s2Step103EarlyControl_branchOwned : ([794] : List Wire).toFinset⊆s2Step103EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step103EarlyControlSigmaArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<798) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step103EarlyControl_branch : compileHmrBranchRetirement s2Step103EarlyControlSigmaArena 794=some s2Step103EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step103EarlyControl_branchOwned
  · ext q
    simp [s2Step103EarlyControlOutputArena,s2Step103EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step103EarlyControl_classEqualityBorrow : s2Step103EarlyControlPositiveArena.checkBorrow (([798, 849] : List Wire).length-1) s2Step103EarlyControlLog.classWork=some s2Step103EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step103EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step103EarlyControlPositiveArena (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
      decide +kernel
    · ext q
      simp [s2Step103EarlyControlEqualityArena,s2Step103EarlyControlPositiveArena,s2Step103EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step103EarlyControl_classEqualityOwned : ([798, 849] : List Wire).toFinset⊆s2Step103EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step103EarlyControlPositiveArena (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step103EarlyControl_classEquality : compileHmrEqualityLog s2Step103EarlyControlPositiveArena [798, 849] 0 s2Step103EarlyControlLog.classWork=some (s2Step103EarlyControlEqualityArena,s2Step103EarlyControlLog.classWork,s2Step103EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step103EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step103EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step103EarlyControl_classOwned : ([777, 781, 798] : List Wire).toFinset⊆s2Step103EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step103EarlyControlZeroArena (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step103EarlyControl_positiveBorrow : s2Step103EarlyControlZeroArena.checkBorrow (1) s2Step103EarlyControlLog.positiveWork=some s2Step103EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step103EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step103EarlyControlZeroArena (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
      decide +kernel
    · ext q
      simp [s2Step103EarlyControlPositiveArena,s2Step103EarlyControlZeroArena,s2Step103EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step103EarlyControl_class : compileHmrSourceClassLog s2Step103EarlyControlZeroArena false 777 s2Step103EarlyControlZeroPlan.top 0 798 s2Step103EarlyControlLog.positiveWork s2Step103EarlyControlLog.classWork=some s2Step103EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step103EarlyControlClassPlan s2Step103EarlyControlZeroArena false 777 s2Step103EarlyControlZeroPlan.top 0 798
  constructor
  · decide +kernel
  · exact s2Step103EarlyControl_classOwned
  · exact s2Step103EarlyControl_positiveBorrow
  · exact s2Step103EarlyControl_classEquality

private theorem s2Step103EarlyControl_entryRecordOwned : ([794, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] : List Wire).toFinset⊆s2Step103EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step103EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step103EarlyControl_entrySigmaOwned : ([798, 254] : List Wire).toFinset⊆s2Step103EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step103EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step103EarlyControl_fitBorrow : s2Step103EarlyControlFlagArena.checkBorrow ((35-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] : List Wire).length)) s2Step103EarlyControlLog.recordFresh=some s2Step103EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step103EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step103EarlyControlFlagArena (fun q => (0≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step103EarlyControlFittedArena,s2Step103EarlyControlFlagArena,s2Step103EarlyControlLog,arenaWires]

private theorem s2Step103EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] : List Wire).toFinset⊆s2Step103EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step103EarlyControlFlagArena (fun q => (0≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step103EarlyControl_fit : compileHmrRecordGrowLog s2Step103EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] 35 s2Step103EarlyControlLog.recordFresh=some s2Step103EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step103EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step103EarlyControl_fitBorrow

private theorem s2Step103EarlyControl_flagsBorrow : s2Step103EarlyControlEqualityArena.checkBorrow (6) s2Step103EarlyControlLog.flagWork=some s2Step103EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step103EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step103EarlyControlEqualityArena (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
      decide +kernel
    · ext q
      simp [s2Step103EarlyControlFlagArena,s2Step103EarlyControlEqualityArena,s2Step103EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step103EarlyControl_flagsOwned : ([806, 253, 252, 251] : List Wire).toFinset⊆s2Step103EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step103EarlyControlEqualityArena (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step103EarlyControl_flags : compileHmrFlagsLog s2Step103EarlyControlClassPlan.equalityArena s2Step103EarlyControlClassPlan.equality.top 253 252 251 s2Step103EarlyControlLog.flagWork=some s2Step103EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step103EarlyControl_flagsOwned⟩
  · exact s2Step103EarlyControl_flagsBorrow

private theorem s2Step103EarlyControl_historyBorrow : s2Step103EarlyControlArena.checkBorrow ((35-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] : List Wire).length)) s2Step103EarlyControlLog.recordFresh=some s2Step103EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step103EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step103EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
      decide +kernel
    · ext q
      simp [s2Step103EarlyControlHistoryArena,s2Step103EarlyControlArena,s2Step103EarlyControlLog,arenaWires]

private theorem s2Step103EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] : List Wire).toFinset⊆s2Step103EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step103EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step103EarlyControl_history : compileHmrRecordGrowLog s2Step103EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] 35 s2Step103EarlyControlLog.recordFresh=some s2Step103EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step103EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step103EarlyControl_historyBorrow

private theorem s2Step103EarlyControl_sigmaOwned : ([254, 798] : List Wire).toFinset⊆s2Step103EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step103EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step103EarlyControl_sigmaReleaseOwned : ([798] : List Wire).toFinset⊆s2Step103EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step103EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step103EarlyControl_sigmaRelease : s2Step103EarlyControlHistoryArena.release {798} (fun _ => false)=some s2Step103EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step103EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step103EarlyControlSigmaArena,s2Step103EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step103EarlyControl_sigma : compileHmrSigmaDropLog s2Step103EarlyControlHistoryArena false 0 0 254 798 []=some s2Step103EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step103EarlyControl_sigmaOwned⟩
  · exact s2Step103EarlyControl_sigmaRelease

private theorem s2Step103EarlyControl_zeroBorrow : s2Step103EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step103EarlyControlLog.zeroWork=some s2Step103EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step103EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step103EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
      decide +kernel
    · ext q
      simp [s2Step103EarlyControlZeroArena,s2Step103EarlyControlArena,s2Step103EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step103EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step103EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step103EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step103EarlyControl_zero : compileHmrEqualityLog s2Step103EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step103EarlyControlLog.zeroWork=some (s2Step103EarlyControlZeroArena,s2Step103EarlyControlLog.zeroWork,s2Step103EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step103EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step103EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step103EarlyControl_logged : s2Step103EarlyControlPlan.Logged s2Step103EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] 777 798 254 253 252 251 794 35 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step103EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step103EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step103EarlyControl_zero
  · exact s2Step103EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step103EarlyControl_flags
  · exact s2Step103EarlyControl_fit
  · exact s2Step103EarlyControl_history
  · exact s2Step103EarlyControl_sigma
  · exact s2Step103EarlyControl_branch

private theorem s2Step103EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step103EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] 777 798 254 253 252 251 794 35 s2Step103EarlyControlLog=some s2Step103EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step103EarlyControlPlan s2Step103EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] 777 798 254 253 252 251 794 35 s2Step103EarlyControl_logged

private def s2Step103EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729],768⟩

private def s2Step103EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793],770⟩

private def s2Step103EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217],769⟩

private def s2Step103EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804],771⟩

private def s2Step103FrontBank : WindowBank := ⟨s2Step103EntryFRow,s2Step103EntryGRow,s2Step103EntryFvRow,s2Step103EntryGvRow⟩

private def s2Step103Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 799, 768]

private def s2Step103Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 846, 769]

private def s2Step103Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 785, 770]

private def s2Step103Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 771]

private theorem s2Step103Counter_apart : Disjoint s2Step103HeadFvAfter.live s2Step103CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step103HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step103Counter_borrowed : s2Step103HeadFvAfter.checkBorrow 4 s2Step103CounterWork=some s2Step103CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step103HeadFvAfter s2Step103CounterDuring s2Step103CounterWork.toFinset s2Step103Counter_bounded s2Step103Counter_apart rfl

private theorem s2Step103Counter_owned : (798::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step103HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step103HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step103Counter_checked : compileHmrCounterStepLog s2Step103HeadFvAfter true 798 [772, 773, 774, 775, 776, 777] s2Step103CounterWork=some s2Step103CounterDuring := by
  have owned : ∀q∈798::[772, 773, 774, 775, 776, 777],q∈s2Step103HeadFvAfter.live := fun q hq => s2Step103Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step103Counter_borrowed

private def s2Step103EntryFAfter : Arena := s2Step103EntryFBefore

private theorem s2Step103EntryBank_incomingDistinct : ([s2Step103EntryFRow,s2Step103EntryGRow,s2Step103EntryFvRow,s2Step103EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step103EntryF_Incoming : rowsOwned s2Step103EntryFBefore [s2Step103EntryFRow,s2Step103EntryGRow,s2Step103EntryFvRow,s2Step103EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step103EntryFRow,s2Step103EntryGRow,s2Step103EntryFvRow,s2Step103EntryGvRow] 0 s2Step103EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step103EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<798) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step103EntryBank_outgoingOwned : rowsOwned s2Step103EntryGvAfter [s2Step103EntryFOut,s2Step103EntryGOut,s2Step103EntryFvOut,s2Step103EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step103EntryGvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<798) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step103EntryF_Outgoing : rowsOwned s2Step103EntryGvAfter [s2Step103EntryFOut,s2Step103EntryGOut,s2Step103EntryFvOut,s2Step103EntryGvOut] :=
  hmrRows_owned_drop s2Step103EntryGvAfter [s2Step103EntryFOut,s2Step103EntryGOut,s2Step103EntryFvOut,s2Step103EntryGvOut] 0 s2Step103EntryBank_outgoingOwned

private theorem s2Step103EntryF_distinct : (s2Step103EntryFRow.sign::s2Step103EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step103EntryF_owned : (s2Step103EntryFRow.sign::s2Step103EntryFRow.payload).toFinset⊆s2Step103EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step103EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<798) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step103EntryF_reserved : s2Step103EntryFBefore.reserve s2Step103EntryFFresh.toFinset=some s2Step103EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step103EntryFFresh,arenaWires]
  · norm_num [s2Step103EntryFBefore,s2Step103EntryFFresh,arenaWires]
  · simp only [s2Step103EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step103EntryF_checked : planRowResizeLog s2Step103EntryFBefore s2Step103EntryFRow 218 s2Step103EntryFFresh=
    some (s2Step103EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729],768⟩,growRow 768 s2Step103EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step103EntryFBefore s2Step103EntryFAfter s2Step103EntryFRow 218 s2Step103EntryFFresh
    s2Step103EntryF_distinct s2Step103EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step103EntryF_reserved
  have rowEq : WindowRow.mk (s2Step103EntryFRow.payload++s2Step103EntryFFresh) s2Step103EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step103EntryFvAfter : Arena := s2Step103EntryFBefore

private def s2Step103EntryFvBefore : Arena := s2Step103EntryFBefore

private theorem s2Step103EntryFv_Incoming : rowsOwned s2Step103EntryFvBefore [s2Step103EntryFvRow,s2Step103EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step103EntryFRow,s2Step103EntryGRow,s2Step103EntryFvRow,s2Step103EntryGvRow] 2 s2Step103EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step103EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<798) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step103EntryFv_Outgoing : rowsOwned s2Step103EntryGvAfter [s2Step103EntryFvOut,s2Step103EntryGvOut] :=
  hmrRows_owned_drop s2Step103EntryGvAfter [s2Step103EntryFOut,s2Step103EntryGOut,s2Step103EntryFvOut,s2Step103EntryGvOut] 2 s2Step103EntryBank_outgoingOwned

private theorem s2Step103EntryFv_distinct : (s2Step103EntryFvRow.sign::s2Step103EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step103EntryFv_owned : (s2Step103EntryFvRow.sign::s2Step103EntryFvRow.payload).toFinset⊆s2Step103EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step103EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<798) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step103EntryFv_reserved : s2Step103EntryFvBefore.reserve s2Step103EntryFvFresh.toFinset=some s2Step103EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step103EntryFvFresh,arenaWires]
  · norm_num [s2Step103EntryFvBefore,s2Step103EntryFBefore,s2Step103EntryFvFresh,arenaWires]
  · simp only [s2Step103EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step103EntryFv_checked : planRowResizeLog s2Step103EntryFvBefore s2Step103EntryFvRow 65 s2Step103EntryFvFresh=
    some (s2Step103EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793],770⟩,growRow 770 s2Step103EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step103EntryFvBefore s2Step103EntryFvAfter s2Step103EntryFvRow 65 s2Step103EntryFvFresh
    s2Step103EntryFv_distinct s2Step103EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step103EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step103EntryFvRow.payload++s2Step103EntryFvFresh) s2Step103EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step103EntryGAfter : Arena := s2Step103EntryFBefore

private def s2Step103EntryGBefore : Arena := s2Step103EntryFBefore

private theorem s2Step103EntryG_Incoming : rowsOwned s2Step103EntryGBefore [s2Step103EntryGRow,s2Step103EntryFvRow,s2Step103EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step103EntryFRow,s2Step103EntryGRow,s2Step103EntryFvRow,s2Step103EntryGvRow] 1 s2Step103EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step103EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<798) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step103EntryG_Outgoing : rowsOwned s2Step103EntryGvAfter [s2Step103EntryGOut,s2Step103EntryFvOut,s2Step103EntryGvOut] :=
  hmrRows_owned_drop s2Step103EntryGvAfter [s2Step103EntryFOut,s2Step103EntryGOut,s2Step103EntryFvOut,s2Step103EntryGvOut] 1 s2Step103EntryBank_outgoingOwned

private theorem s2Step103EntryG_distinct : (s2Step103EntryGRow.sign::s2Step103EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step103EntryG_owned : (s2Step103EntryGRow.sign::s2Step103EntryGRow.payload).toFinset⊆s2Step103EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step103EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<798) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step103EntryG_reserved : s2Step103EntryGBefore.reserve s2Step103EntryGFresh.toFinset=some s2Step103EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step103EntryGFresh,arenaWires]
  · norm_num [s2Step103EntryGBefore,s2Step103EntryFBefore,s2Step103EntryGFresh,arenaWires]
  · simp only [s2Step103EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step103EntryG_checked : planRowResizeLog s2Step103EntryGBefore s2Step103EntryGRow 218 s2Step103EntryGFresh=
    some (s2Step103EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217],769⟩,growRow 769 s2Step103EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step103EntryGBefore s2Step103EntryGAfter s2Step103EntryGRow 218 s2Step103EntryGFresh
    s2Step103EntryG_distinct s2Step103EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step103EntryG_reserved
  have rowEq : WindowRow.mk (s2Step103EntryGRow.payload++s2Step103EntryGFresh) s2Step103EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step103EntryGvBefore : Arena := s2Step103EntryFBefore

private theorem s2Step103EntryGv_Incoming : rowsOwned s2Step103EntryGvBefore [s2Step103EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step103EntryFRow,s2Step103EntryGRow,s2Step103EntryFvRow,s2Step103EntryGvRow] 3 s2Step103EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step103EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<798) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step103EntryGv_Outgoing : rowsOwned s2Step103EntryGvAfter [s2Step103EntryGvOut] :=
  hmrRows_owned_drop s2Step103EntryGvAfter [s2Step103EntryFOut,s2Step103EntryGOut,s2Step103EntryFvOut,s2Step103EntryGvOut] 3 s2Step103EntryBank_outgoingOwned

private theorem s2Step103EntryGv_distinct : (s2Step103EntryGvRow.sign::s2Step103EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step103EntryGv_owned : (s2Step103EntryGvRow.sign::s2Step103EntryGvRow.payload).toFinset⊆s2Step103EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step103EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<798) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step103EntryGv_reserved : s2Step103EntryGvBefore.reserve s2Step103EntryGvFresh.toFinset=some s2Step103EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step103EntryGvFresh,arenaWires]
  · norm_num [s2Step103EntryGvBefore,s2Step103EntryFBefore,s2Step103EntryGvFresh,arenaWires]
  · simp only [s2Step103EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step103EntryGv_checked : planRowResizeLog s2Step103EntryGvBefore s2Step103EntryGvRow 65 s2Step103EntryGvFresh=
    some (s2Step103EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804],771⟩,growRow 771 s2Step103EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step103EntryGvBefore s2Step103EntryGvAfter s2Step103EntryGvRow 65 s2Step103EntryGvFresh
    s2Step103EntryGv_distinct s2Step103EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step103EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step103EntryGvRow.payload++s2Step103EntryGvFresh) s2Step103EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step103EntryBank_rows : planWindowRowsLog s2Step103EntryFBefore [(s2Step103EntryFRow,218),(s2Step103EntryGRow,218),(s2Step103EntryFvRow,65),(s2Step103EntryGvRow,65)] [s2Step103EntryFFresh,s2Step103EntryGFresh,s2Step103EntryFvFresh,s2Step103EntryGvFresh]=
    some (s2Step103EntryGvAfter,[s2Step103EntryFOut,s2Step103EntryGOut,s2Step103EntryFvOut,s2Step103EntryGvOut],(growRow 768 s2Step103EntryFFresh ++ (growRow 769 s2Step103EntryGFresh ++ (growRow 770 s2Step103EntryFvFresh ++ (growRow 771 s2Step103EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step103EntryGvAfter [] []=some (s2Step103EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step103EntryGvBefore s2Step103EntryGvAfter s2Step103EntryGvAfter
    s2Step103EntryGvRow s2Step103EntryGvOut 65 s2Step103EntryGvFresh [] [] []
    (growRow 771 s2Step103EntryGvFresh) ([]) s2Step103EntryGv_Incoming s2Step103EntryGv_checked h4 s2Step103EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step103EntryFvBefore s2Step103EntryFvAfter s2Step103EntryGvAfter
    s2Step103EntryFvRow s2Step103EntryFvOut 65 s2Step103EntryFvFresh [(s2Step103EntryGvRow,65)] [s2Step103EntryGvFresh] [s2Step103EntryGvOut]
    (growRow 770 s2Step103EntryFvFresh) ((growRow 771 s2Step103EntryGvFresh ++ [])) s2Step103EntryFv_Incoming s2Step103EntryFv_checked h3 s2Step103EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step103EntryGBefore s2Step103EntryGAfter s2Step103EntryGvAfter
    s2Step103EntryGRow s2Step103EntryGOut 218 s2Step103EntryGFresh [(s2Step103EntryFvRow,65),(s2Step103EntryGvRow,65)] [s2Step103EntryFvFresh,s2Step103EntryGvFresh] [s2Step103EntryFvOut,s2Step103EntryGvOut]
    (growRow 769 s2Step103EntryGFresh) ((growRow 770 s2Step103EntryFvFresh ++ (growRow 771 s2Step103EntryGvFresh ++ []))) s2Step103EntryG_Incoming s2Step103EntryG_checked h2 s2Step103EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step103EntryFBefore s2Step103EntryFAfter s2Step103EntryGvAfter
    s2Step103EntryFRow s2Step103EntryFOut 218 s2Step103EntryFFresh [(s2Step103EntryGRow,218),(s2Step103EntryFvRow,65),(s2Step103EntryGvRow,65)] [s2Step103EntryGFresh,s2Step103EntryFvFresh,s2Step103EntryGvFresh] [s2Step103EntryGOut,s2Step103EntryFvOut,s2Step103EntryGvOut]
    (growRow 768 s2Step103EntryFFresh) ((growRow 769 s2Step103EntryGFresh ++ (growRow 770 s2Step103EntryFvFresh ++ (growRow 771 s2Step103EntryGvFresh ++ [])))) s2Step103EntryF_Incoming s2Step103EntryF_checked h1 s2Step103EntryF_Outgoing
  exact h0

private theorem s2Step103EntryBank_checked : compileHmrBankResizeLog .entry s2Step103EntryFBefore ⟨s2Step103EntryFRow,s2Step103EntryGRow,s2Step103EntryFvRow,s2Step103EntryGvRow⟩ ⟨218,218,65,65⟩ [s2Step103EntryFFresh,s2Step103EntryGFresh,s2Step103EntryFvFresh,s2Step103EntryGvFresh]=
    some (s2Step103EntryGvAfter,⟨s2Step103EntryFOut,s2Step103EntryGOut,s2Step103EntryFvOut,s2Step103EntryGvOut⟩,(growRow 768 s2Step103EntryFFresh ++ (growRow 769 s2Step103EntryGFresh ++ (growRow 770 s2Step103EntryFvFresh ++ (growRow 771 s2Step103EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step103EntryBank_rows]
  rfl

private def s2Step103ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<217) ∨ (218≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step103ExitFBefore : Arena := s2Step103ExitGAfter

private def s2Step103ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 799],768⟩

private def s2Step103ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 785],770⟩

private def s2Step103ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 846],769⟩

private def s2Step103ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851],771⟩

private theorem s2Step103ExitBank_incomingDistinct : ([s2Step103ExitGRow,s2Step103ExitFRow,s2Step103ExitFvRow,s2Step103ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step103ExitF_Incoming : rowsOwned s2Step103ExitFBefore [s2Step103ExitFRow,s2Step103ExitFvRow,s2Step103ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step103ExitGRow,s2Step103ExitFRow,s2Step103ExitFvRow,s2Step103ExitGvRow] 1 s2Step103ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step103ExitFBefore (fun q => (0≤q ∧ q<217) ∨ (218≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step103ExitBank_outgoingOwned : rowsOwned s2Step103ExitGvAfter [s2Step103ExitGOut,s2Step103ExitFOut,s2Step103ExitFvOut,s2Step103ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step103ExitGvAfter (fun q => (0≤q ∧ q<217) ∨ (218≤q ∧ q<729) ∨ (730≤q ∧ q<781) ∨ (782≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step103ExitF_Outgoing : rowsOwned s2Step103ExitGvAfter [s2Step103ExitFOut,s2Step103ExitFvOut,s2Step103ExitGvOut] :=
  hmrRows_owned_drop s2Step103ExitGvAfter [s2Step103ExitGOut,s2Step103ExitFOut,s2Step103ExitFvOut,s2Step103ExitGvOut] 1 s2Step103ExitBank_outgoingOwned

private theorem s2Step103ExitF_distinct : (s2Step103ExitFRow.sign::s2Step103ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step103ExitF_owned : (s2Step103ExitFRow.sign::s2Step103ExitFRow.payload).toFinset⊆s2Step103ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step103ExitFBefore (fun q => (0≤q ∧ q<217) ∨ (218≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step103ExitF_retired : s2Step103ExitFBefore.retireSet s2Step103ExitFExtra.toFinset=s2Step103ExitFAfter := by
  unfold Arena.retireSet s2Step103ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step103ExitFBefore,s2Step103ExitGAfter,s2Step103ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step103ExitF_checked : planRowResizeLog s2Step103ExitFBefore s2Step103ExitFRow 217 []=
    some (s2Step103ExitFAfter,s2Step103ExitFOut,shrinkRow 768 s2Step103ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step103ExitFBefore s2Step103ExitFRow 217 s2Step103ExitF_distinct s2Step103ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step103ExitFRow.payload.take 217) s2Step103ExitFRow.sign=s2Step103ExitFOut := by decide +kernel
  have hi : s2Step103ExitFRow.payload.drop 217=s2Step103ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step103ExitF_retired] at result
  exact result

private def s2Step103ExitFvAfter : Arena := s2Step103ExitFAfter

private def s2Step103ExitFvBefore : Arena := s2Step103ExitFAfter

private theorem s2Step103ExitFv_Incoming : rowsOwned s2Step103ExitFvBefore [s2Step103ExitFvRow,s2Step103ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step103ExitGRow,s2Step103ExitFRow,s2Step103ExitFvRow,s2Step103ExitGvRow] 2 s2Step103ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step103ExitFvBefore (fun q => (0≤q ∧ q<217) ∨ (218≤q ∧ q<729) ∨ (730≤q ∧ q<781) ∨ (782≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step103ExitFv_Outgoing : rowsOwned s2Step103ExitGvAfter [s2Step103ExitFvOut,s2Step103ExitGvOut] :=
  hmrRows_owned_drop s2Step103ExitGvAfter [s2Step103ExitGOut,s2Step103ExitFOut,s2Step103ExitFvOut,s2Step103ExitGvOut] 2 s2Step103ExitBank_outgoingOwned

private theorem s2Step103ExitFv_distinct : (s2Step103ExitFvRow.sign::s2Step103ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step103ExitFv_owned : (s2Step103ExitFvRow.sign::s2Step103ExitFvRow.payload).toFinset⊆s2Step103ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step103ExitFvBefore (fun q => (0≤q ∧ q<217) ∨ (218≤q ∧ q<729) ∨ (730≤q ∧ q<781) ∨ (782≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step103ExitFv_reserved : s2Step103ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step103ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step103ExitFv_checked : planRowResizeLog s2Step103ExitFvBefore s2Step103ExitFvRow 66 []=
    some (s2Step103ExitFvAfter,s2Step103ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step103ExitFvBefore s2Step103ExitFvAfter s2Step103ExitFvRow 66 []
    s2Step103ExitFv_distinct s2Step103ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step103ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step103ExitFvRow.payload++[]) s2Step103ExitFvRow.sign=s2Step103ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step103ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private theorem s2Step103ExitG_Incoming : rowsOwned s2Step103ExitGBefore [s2Step103ExitGRow,s2Step103ExitFRow,s2Step103ExitFvRow,s2Step103ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step103ExitGRow,s2Step103ExitFRow,s2Step103ExitFvRow,s2Step103ExitGvRow] 0 s2Step103ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step103ExitGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step103ExitG_Outgoing : rowsOwned s2Step103ExitGvAfter [s2Step103ExitGOut,s2Step103ExitFOut,s2Step103ExitFvOut,s2Step103ExitGvOut] :=
  hmrRows_owned_drop s2Step103ExitGvAfter [s2Step103ExitGOut,s2Step103ExitFOut,s2Step103ExitFvOut,s2Step103ExitGvOut] 0 s2Step103ExitBank_outgoingOwned

private theorem s2Step103ExitG_distinct : (s2Step103ExitGRow.sign::s2Step103ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step103ExitG_owned : (s2Step103ExitGRow.sign::s2Step103ExitGRow.payload).toFinset⊆s2Step103ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step103ExitGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step103ExitG_retired : s2Step103ExitGBefore.retireSet s2Step103ExitGExtra.toFinset=s2Step103ExitGAfter := by
  unfold Arena.retireSet s2Step103ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step103ExitGBefore,s2Step103ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step103ExitG_checked : planRowResizeLog s2Step103ExitGBefore s2Step103ExitGRow 217 []=
    some (s2Step103ExitGAfter,s2Step103ExitGOut,shrinkRow 769 s2Step103ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step103ExitGBefore s2Step103ExitGRow 217 s2Step103ExitG_distinct s2Step103ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step103ExitGRow.payload.take 217) s2Step103ExitGRow.sign=s2Step103ExitGOut := by decide +kernel
  have hi : s2Step103ExitGRow.payload.drop 217=s2Step103ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step103ExitG_retired] at result
  exact result

private def s2Step103ExitGvBefore : Arena := s2Step103ExitFAfter

private theorem s2Step103ExitGv_Incoming : rowsOwned s2Step103ExitGvBefore [s2Step103ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step103ExitGRow,s2Step103ExitFRow,s2Step103ExitFvRow,s2Step103ExitGvRow] 3 s2Step103ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step103ExitGvBefore (fun q => (0≤q ∧ q<217) ∨ (218≤q ∧ q<729) ∨ (730≤q ∧ q<781) ∨ (782≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step103ExitGv_Outgoing : rowsOwned s2Step103ExitGvAfter [s2Step103ExitGvOut] :=
  hmrRows_owned_drop s2Step103ExitGvAfter [s2Step103ExitGOut,s2Step103ExitFOut,s2Step103ExitFvOut,s2Step103ExitGvOut] 3 s2Step103ExitBank_outgoingOwned

private theorem s2Step103ExitGv_distinct : (s2Step103ExitGvRow.sign::s2Step103ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step103ExitGv_owned : (s2Step103ExitGvRow.sign::s2Step103ExitGvRow.payload).toFinset⊆s2Step103ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step103ExitGvBefore (fun q => (0≤q ∧ q<217) ∨ (218≤q ∧ q<729) ∨ (730≤q ∧ q<781) ∨ (782≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step103ExitGv_reserved : s2Step103ExitGvBefore.reserve (∅ : Finset Wire)=some s2Step103ExitGvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step103ExitGv_checked : planRowResizeLog s2Step103ExitGvBefore s2Step103ExitGvRow 66 []=
    some (s2Step103ExitGvAfter,s2Step103ExitGvOut,growRow 771 []) := by
  have result := planRowResizeLog_of_growth s2Step103ExitGvBefore s2Step103ExitGvAfter s2Step103ExitGvRow 66 []
    s2Step103ExitGv_distinct s2Step103ExitGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step103ExitGv_reserved
  have rowEq : WindowRow.mk (s2Step103ExitGvRow.payload++[]) s2Step103ExitGvRow.sign=s2Step103ExitGvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step103ExitBank_rows : planWindowRowsLog s2Step103ExitGBefore [(s2Step103ExitGRow,217),(s2Step103ExitFRow,217),(s2Step103ExitFvRow,66),(s2Step103ExitGvRow,66)] [[],[],[],[]]=
    some (s2Step103ExitGvAfter,[s2Step103ExitGOut,s2Step103ExitFOut,s2Step103ExitFvOut,s2Step103ExitGvOut],(shrinkRow 769 s2Step103ExitGExtra ++ (shrinkRow 768 s2Step103ExitFExtra ++ (growRow 770 [] ++ (growRow 771 [] ++ []))))) := by
  have h4 : planWindowRowsLog s2Step103ExitGvAfter [] []=some (s2Step103ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step103ExitGvBefore s2Step103ExitGvAfter s2Step103ExitGvAfter
    s2Step103ExitGvRow s2Step103ExitGvOut 66 [] [] [] []
    (growRow 771 []) ([]) s2Step103ExitGv_Incoming s2Step103ExitGv_checked h4 s2Step103ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step103ExitFvBefore s2Step103ExitFvAfter s2Step103ExitGvAfter
    s2Step103ExitFvRow s2Step103ExitFvOut 66 [] [(s2Step103ExitGvRow,66)] [[]] [s2Step103ExitGvOut]
    (growRow 770 []) ((growRow 771 [] ++ [])) s2Step103ExitFv_Incoming s2Step103ExitFv_checked h3 s2Step103ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step103ExitFBefore s2Step103ExitFAfter s2Step103ExitGvAfter
    s2Step103ExitFRow s2Step103ExitFOut 217 [] [(s2Step103ExitFvRow,66),(s2Step103ExitGvRow,66)] [[],[]] [s2Step103ExitFvOut,s2Step103ExitGvOut]
    (shrinkRow 768 s2Step103ExitFExtra) ((growRow 770 [] ++ (growRow 771 [] ++ []))) s2Step103ExitF_Incoming s2Step103ExitF_checked h2 s2Step103ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step103ExitGBefore s2Step103ExitGAfter s2Step103ExitGvAfter
    s2Step103ExitGRow s2Step103ExitGOut 217 [] [(s2Step103ExitFRow,217),(s2Step103ExitFvRow,66),(s2Step103ExitGvRow,66)] [[],[],[]] [s2Step103ExitFOut,s2Step103ExitFvOut,s2Step103ExitGvOut]
    (shrinkRow 769 s2Step103ExitGExtra) ((shrinkRow 768 s2Step103ExitFExtra ++ (growRow 770 [] ++ (growRow 771 [] ++ [])))) s2Step103ExitG_Incoming s2Step103ExitG_checked h1 s2Step103ExitG_Outgoing
  exact h0

private theorem s2Step103ExitBank_checked : compileHmrBankResizeLog .exit s2Step103ExitGBefore ⟨s2Step103ExitFRow,s2Step103ExitGRow,s2Step103ExitFvRow,s2Step103ExitGvRow⟩ ⟨217,217,66,66⟩ [[],[],[],[]]=
    some (s2Step103ExitGvAfter,⟨s2Step103ExitFOut,s2Step103ExitGOut,s2Step103ExitFvOut,s2Step103ExitGvOut⟩,(shrinkRow 769 s2Step103ExitGExtra ++ (shrinkRow 768 s2Step103ExitFExtra ++ (growRow 770 [] ++ (growRow 771 [] ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step103ExitBank_rows]
  rfl

private theorem s2Step103Add0_apart : Disjoint s2Step103Add0Arena.live s2Step103Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step103Add0Arena (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step103Add0_card : s2Step103Add0Arena.live.card=875 := by
  decide +kernel

private theorem s2Step103Add0_borrowed : s2Step103Add0Arena.checkBorrow (hmrHybridCount s2Step103Add0Arena s2Step103Add0B.length) s2Step103Add0Work=some s2Step103Add0During := by
  have len : s2Step103Add0Work.length=hmrHybridCount s2Step103Add0Arena s2Step103Add0B.length := by
    rw [hmrHybridCount,s2Step103Add0_card]
    decide +kernel
  have nd : s2Step103Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step103Add0Arena s2Step103Add0During s2Step103Add0Work.toFinset s2Step103Add0_bounded s2Step103Add0_apart rfl

private theorem s2Step103Add0_distinct : (781::794::849::(s2Step103Add0A++s2Step103Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step103Add0_owned : (781::794::849::(s2Step103Add0A++s2Step103Add0B)).toFinset⊆s2Step103Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step103Add0Arena (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step103Add0_checked : compileHmrHybridCinLog s2Step103Add0Arena 794 781 849 s2Step103Add0A s2Step103Add0B s2Step103Add0Work=some s2Step103Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step103Add0Arena s2Step103Add0During 794 781 849 s2Step103Add0A s2Step103Add0B s2Step103Add0Work
    (by decide +kernel) (by decide +kernel) s2Step103Add0_distinct
    (fun q hq => s2Step103Add0_owned (List.mem_toFinset.mpr hq)) s2Step103Add0_borrowed

private theorem s2Step103Add1_apart : Disjoint s2Step103Add1Arena.live s2Step103Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step103Add1Arena (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step103Add1_card : s2Step103Add1Arena.live.card=875 := by
  decide +kernel

private theorem s2Step103Add1_borrowed : s2Step103Add1Arena.checkBorrow (hmrHybridCount s2Step103Add1Arena s2Step103Add1B.length) s2Step103Add1Work=some s2Step103Add1During := by
  have len : s2Step103Add1Work.length=hmrHybridCount s2Step103Add1Arena s2Step103Add1B.length := by
    rw [hmrHybridCount,s2Step103Add1_card]
    decide +kernel
  have nd : s2Step103Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step103Add1Arena s2Step103Add1During s2Step103Add1Work.toFinset s2Step103Add1_bounded s2Step103Add1_apart rfl

private theorem s2Step103Add1_distinct : (781::794::849::(s2Step103Add1A++s2Step103Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step103Add1_owned : (781::794::849::(s2Step103Add1A++s2Step103Add1B)).toFinset⊆s2Step103Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step103Add1Arena (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step103Add1_checked : compileHmrHybridCinLog s2Step103Add1Arena 794 781 849 s2Step103Add1A s2Step103Add1B s2Step103Add1Work=some s2Step103Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step103Add1Arena s2Step103Add1During 794 781 849 s2Step103Add1A s2Step103Add1B s2Step103Add1Work
    (by decide +kernel) (by decide +kernel) s2Step103Add1_distinct
    (fun q hq => s2Step103Add1_owned (List.mem_toFinset.mpr hq)) s2Step103Add1_borrowed

private theorem s2Step103F4_apart : Disjoint (s2Step103Add0A++s2Step103Add0B).toFinset (s2Step103Add1A++s2Step103Add1B).toFinset := by
  have nd : ((s2Step103Add0A++s2Step103Add0B)++(s2Step103Add1A++s2Step103Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step103F4_carry : s2Step103F4FlagArena.checkBorrow 1 [849]=some s2Step103Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step103F4FlagArena,s2Step103HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step103F4FlagArena,s2Step103HeadFvAfter,s2Step103Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step103F4_distinct : (798::794::781::849::((s2Step103Add0A++s2Step103Add1A)++(s2Step103Add0B++s2Step103Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step103F4_flag : s2Step103HeadFvAfter.checkBorrow 1 [781]=some s2Step103F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step103HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step103F4_owned : (798::794::((s2Step103Add0A++s2Step103Add1A)++(s2Step103Add0B++s2Step103Add1B))).toFinset⊆s2Step103HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step103HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step103F4_checked : compileHmrHybridF4Log s2Step103HeadFvAfter 798 794 s2Step103Add0A s2Step103Add0B s2Step103Add1A s2Step103Add1B [781] [849] s2Step103Add0Work s2Step103Add1Work=some s2Step103F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step103HeadFvAfter s2Step103F4FlagArena s2Step103Add0Arena s2Step103Add0During s2Step103Add1During 798 794
    s2Step103Add0A s2Step103Add0B s2Step103Add1A s2Step103Add1B [781] [849] s2Step103Add0Work s2Step103Add1Work
    (fun q hq => s2Step103F4_owned (List.mem_toFinset.mpr hq)) s2Step103F4_flag s2Step103F4_carry
    s2Step103F4_distinct s2Step103F4_apart s2Step103Add0_checked s2Step103Add1_checked

private theorem s2Step103Front_branch : s2Step103FrontSigmaArena.checkBorrow 1 [794]=some s2Step103HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step103FrontSigmaArena,s2Step103EntryGvAfter,s2Step103EntryFBefore,arenaWires]
  · ext q
    simp only [s2Step103FrontSigmaArena,s2Step103EntryGvAfter,s2Step103EntryFBefore,s2Step103HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step103Front_entry : HmrFrontEntryValid s2Step103EntryFBefore s2Step103FrontBank 218 65 ⟨217,217,66,66⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step103FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step103EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step103EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<798) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step103FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step103Front_sigma : s2Step103EntryGvAfter.checkBorrow 1 [798]=some s2Step103FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step103EntryGvAfter,s2Step103EntryFBefore,arenaWires]
  · rfl

private def s2Step103HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step103HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step103HeadFBefore : Arena := s2Step103HeadGAfter

private def s2Step103HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729],768⟩

private def s2Step103HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793],770⟩

private def s2Step103HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217],769⟩

private def s2Step103HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804],771⟩

private theorem s2Step103HeadBank_incomingDistinct : ([s2Step103HeadGRow,s2Step103HeadFRow,s2Step103HeadGvRow,s2Step103HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step103HeadF_Incoming : rowsOwned s2Step103HeadFBefore [s2Step103HeadFRow,s2Step103HeadGvRow,s2Step103HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step103HeadGRow,s2Step103HeadFRow,s2Step103HeadGvRow,s2Step103HeadFvRow] 1 s2Step103HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step103HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step103HeadBank_outgoingOwned : rowsOwned s2Step103HeadFvAfter [s2Step103HeadGOut,s2Step103HeadFOut,s2Step103HeadGvOut,s2Step103HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step103HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step103HeadF_Outgoing : rowsOwned s2Step103HeadFvAfter [s2Step103HeadFOut,s2Step103HeadGvOut,s2Step103HeadFvOut] :=
  hmrRows_owned_drop s2Step103HeadFvAfter [s2Step103HeadGOut,s2Step103HeadFOut,s2Step103HeadGvOut,s2Step103HeadFvOut] 1 s2Step103HeadBank_outgoingOwned

private theorem s2Step103HeadF_distinct : (s2Step103HeadFRow.sign::s2Step103HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step103HeadF_owned : (s2Step103HeadFRow.sign::s2Step103HeadFRow.payload).toFinset⊆s2Step103HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step103HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step103HeadF_reserved : s2Step103HeadFBefore.reserve s2Step103HeadFFresh.toFinset=some s2Step103HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step103HeadFFresh,arenaWires]
  · norm_num [s2Step103HeadFBefore,s2Step103HeadGAfter,s2Step103HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step103HeadFAfter,s2Step103HeadFBefore,s2Step103HeadGAfter,s2Step103HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step103HeadF_checked : planRowResizeLog s2Step103HeadFBefore s2Step103HeadFRow 219 s2Step103HeadFFresh=
    some (s2Step103HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 799],768⟩,growRow 768 s2Step103HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step103HeadFBefore s2Step103HeadFAfter s2Step103HeadFRow 219 s2Step103HeadFFresh
    s2Step103HeadF_distinct s2Step103HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step103HeadF_reserved
  have rowEq : WindowRow.mk (s2Step103HeadFRow.payload++s2Step103HeadFFresh) s2Step103HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 799],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step103HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step103HeadFvBefore : Arena := s2Step103HeadGvAfter

private theorem s2Step103HeadFv_Incoming : rowsOwned s2Step103HeadFvBefore [s2Step103HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step103HeadGRow,s2Step103HeadFRow,s2Step103HeadGvRow,s2Step103HeadFvRow] 3 s2Step103HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step103HeadFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step103HeadFv_Outgoing : rowsOwned s2Step103HeadFvAfter [s2Step103HeadFvOut] :=
  hmrRows_owned_drop s2Step103HeadFvAfter [s2Step103HeadGOut,s2Step103HeadFOut,s2Step103HeadGvOut,s2Step103HeadFvOut] 3 s2Step103HeadBank_outgoingOwned

private theorem s2Step103HeadFv_distinct : (s2Step103HeadFvRow.sign::s2Step103HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step103HeadFv_owned : (s2Step103HeadFvRow.sign::s2Step103HeadFvRow.payload).toFinset⊆s2Step103HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step103HeadFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step103HeadFv_reserved : s2Step103HeadFvBefore.reserve s2Step103HeadFvFresh.toFinset=some s2Step103HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step103HeadFvFresh,arenaWires]
  · norm_num [s2Step103HeadFvBefore,s2Step103HeadGvAfter,s2Step103HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step103HeadFvAfter,s2Step103HeadFvBefore,s2Step103HeadGvAfter,s2Step103HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step103HeadFv_checked : planRowResizeLog s2Step103HeadFvBefore s2Step103HeadFvRow 66 s2Step103HeadFvFresh=
    some (s2Step103HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 785],770⟩,growRow 770 s2Step103HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step103HeadFvBefore s2Step103HeadFvAfter s2Step103HeadFvRow 66 s2Step103HeadFvFresh
    s2Step103HeadFv_distinct s2Step103HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step103HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step103HeadFvRow.payload++s2Step103HeadFvFresh) s2Step103HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 785],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step103HeadG_Incoming : rowsOwned s2Step103HeadGBefore [s2Step103HeadGRow,s2Step103HeadFRow,s2Step103HeadGvRow,s2Step103HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step103HeadGRow,s2Step103HeadFRow,s2Step103HeadGvRow,s2Step103HeadFvRow] 0 s2Step103HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step103HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step103HeadG_Outgoing : rowsOwned s2Step103HeadFvAfter [s2Step103HeadGOut,s2Step103HeadFOut,s2Step103HeadGvOut,s2Step103HeadFvOut] :=
  hmrRows_owned_drop s2Step103HeadFvAfter [s2Step103HeadGOut,s2Step103HeadFOut,s2Step103HeadGvOut,s2Step103HeadFvOut] 0 s2Step103HeadBank_outgoingOwned

private theorem s2Step103HeadG_distinct : (s2Step103HeadGRow.sign::s2Step103HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step103HeadG_owned : (s2Step103HeadGRow.sign::s2Step103HeadGRow.payload).toFinset⊆s2Step103HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step103HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step103HeadG_reserved : s2Step103HeadGBefore.reserve s2Step103HeadGFresh.toFinset=some s2Step103HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step103HeadGFresh,arenaWires]
  · norm_num [s2Step103HeadGBefore,s2Step103HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step103HeadGAfter,s2Step103HeadGBefore,s2Step103HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step103HeadG_checked : planRowResizeLog s2Step103HeadGBefore s2Step103HeadGRow 219 s2Step103HeadGFresh=
    some (s2Step103HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 846],769⟩,growRow 769 s2Step103HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step103HeadGBefore s2Step103HeadGAfter s2Step103HeadGRow 219 s2Step103HeadGFresh
    s2Step103HeadG_distinct s2Step103HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step103HeadG_reserved
  have rowEq : WindowRow.mk (s2Step103HeadGRow.payload++s2Step103HeadGFresh) s2Step103HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 846],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step103HeadGvBefore : Arena := s2Step103HeadFAfter

private theorem s2Step103HeadGv_Incoming : rowsOwned s2Step103HeadGvBefore [s2Step103HeadGvRow,s2Step103HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step103HeadGRow,s2Step103HeadFRow,s2Step103HeadGvRow,s2Step103HeadFvRow] 2 s2Step103HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step103HeadGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step103HeadGv_Outgoing : rowsOwned s2Step103HeadFvAfter [s2Step103HeadGvOut,s2Step103HeadFvOut] :=
  hmrRows_owned_drop s2Step103HeadFvAfter [s2Step103HeadGOut,s2Step103HeadFOut,s2Step103HeadGvOut,s2Step103HeadFvOut] 2 s2Step103HeadBank_outgoingOwned

private theorem s2Step103HeadGv_distinct : (s2Step103HeadGvRow.sign::s2Step103HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step103HeadGv_owned : (s2Step103HeadGvRow.sign::s2Step103HeadGvRow.payload).toFinset⊆s2Step103HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step103HeadGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step103HeadGv_reserved : s2Step103HeadGvBefore.reserve s2Step103HeadGvFresh.toFinset=some s2Step103HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step103HeadGvFresh,arenaWires]
  · norm_num [s2Step103HeadGvBefore,s2Step103HeadFAfter,s2Step103HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step103HeadGvAfter,s2Step103HeadGvBefore,s2Step103HeadFAfter,s2Step103HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step103HeadGv_checked : planRowResizeLog s2Step103HeadGvBefore s2Step103HeadGvRow 66 s2Step103HeadGvFresh=
    some (s2Step103HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851],771⟩,growRow 771 s2Step103HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step103HeadGvBefore s2Step103HeadGvAfter s2Step103HeadGvRow 66 s2Step103HeadGvFresh
    s2Step103HeadGv_distinct s2Step103HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step103HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step103HeadGvRow.payload++s2Step103HeadGvFresh) s2Step103HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step103HeadBank_rows : planWindowRowsLog s2Step103HeadGBefore [(s2Step103HeadGRow,219),(s2Step103HeadFRow,219),(s2Step103HeadGvRow,66),(s2Step103HeadFvRow,66)] [s2Step103HeadGFresh,s2Step103HeadFFresh,s2Step103HeadGvFresh,s2Step103HeadFvFresh]=
    some (s2Step103HeadFvAfter,[s2Step103HeadGOut,s2Step103HeadFOut,s2Step103HeadGvOut,s2Step103HeadFvOut],(growRow 769 s2Step103HeadGFresh ++ (growRow 768 s2Step103HeadFFresh ++ (growRow 771 s2Step103HeadGvFresh ++ (growRow 770 s2Step103HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step103HeadFvAfter [] []=some (s2Step103HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step103HeadFvBefore s2Step103HeadFvAfter s2Step103HeadFvAfter
    s2Step103HeadFvRow s2Step103HeadFvOut 66 s2Step103HeadFvFresh [] [] []
    (growRow 770 s2Step103HeadFvFresh) ([]) s2Step103HeadFv_Incoming s2Step103HeadFv_checked h4 s2Step103HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step103HeadGvBefore s2Step103HeadGvAfter s2Step103HeadFvAfter
    s2Step103HeadGvRow s2Step103HeadGvOut 66 s2Step103HeadGvFresh [(s2Step103HeadFvRow,66)] [s2Step103HeadFvFresh] [s2Step103HeadFvOut]
    (growRow 771 s2Step103HeadGvFresh) ((growRow 770 s2Step103HeadFvFresh ++ [])) s2Step103HeadGv_Incoming s2Step103HeadGv_checked h3 s2Step103HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step103HeadFBefore s2Step103HeadFAfter s2Step103HeadFvAfter
    s2Step103HeadFRow s2Step103HeadFOut 219 s2Step103HeadFFresh [(s2Step103HeadGvRow,66),(s2Step103HeadFvRow,66)] [s2Step103HeadGvFresh,s2Step103HeadFvFresh] [s2Step103HeadGvOut,s2Step103HeadFvOut]
    (growRow 768 s2Step103HeadFFresh) ((growRow 771 s2Step103HeadGvFresh ++ (growRow 770 s2Step103HeadFvFresh ++ []))) s2Step103HeadF_Incoming s2Step103HeadF_checked h2 s2Step103HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step103HeadGBefore s2Step103HeadGAfter s2Step103HeadFvAfter
    s2Step103HeadGRow s2Step103HeadGOut 219 s2Step103HeadGFresh [(s2Step103HeadFRow,219),(s2Step103HeadGvRow,66),(s2Step103HeadFvRow,66)] [s2Step103HeadFFresh,s2Step103HeadGvFresh,s2Step103HeadFvFresh] [s2Step103HeadFOut,s2Step103HeadGvOut,s2Step103HeadFvOut]
    (growRow 769 s2Step103HeadGFresh) ((growRow 768 s2Step103HeadFFresh ++ (growRow 771 s2Step103HeadGvFresh ++ (growRow 770 s2Step103HeadFvFresh ++ [])))) s2Step103HeadG_Incoming s2Step103HeadG_checked h1 s2Step103HeadG_Outgoing
  exact h0

private theorem s2Step103HeadBank_checked : compileHmrBankResizeLog .headroom s2Step103HeadGBefore ⟨s2Step103HeadFRow,s2Step103HeadGRow,s2Step103HeadFvRow,s2Step103HeadGvRow⟩ ⟨219,219,66,66⟩ [s2Step103HeadGFresh,s2Step103HeadFFresh,s2Step103HeadGvFresh,s2Step103HeadFvFresh]=
    some (s2Step103HeadFvAfter,⟨s2Step103HeadFOut,s2Step103HeadGOut,s2Step103HeadFvOut,s2Step103HeadGvOut⟩,(growRow 769 s2Step103HeadGFresh ++ (growRow 768 s2Step103HeadFFresh ++ (growRow 771 s2Step103HeadGvFresh ++ (growRow 770 s2Step103HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step103HeadBank_rows]
  rfl

private theorem s2Step103Front_checked : compileHmrSourceFrontLog s2Step103EntryFBefore s2Step103FrontBank 218 65 ⟨217,217,66,66⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step103FrontLog=some s2Step103FrontPlan := by
  have pairEq : s2Step103FrontPair=⟨s2Step103HeadFRow,s2Step103HeadGRow,s2Step103HeadFvRow,s2Step103HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step103FrontHead=⟨s2Step103ExitFRow,s2Step103ExitGRow,s2Step103ExitFvRow,s2Step103ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step103Add0A=s2Step103FrontHead.f.wires := by decide +kernel
  have gEq : s2Step103Add0B=s2Step103FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step103Add1A=s2Step103FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step103Add1B=s2Step103FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step103EntryFBefore s2Step103FrontBank 218 65 ⟨217,217,66,66⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step103FrontLog s2Step103FrontPlan
  · exact s2Step103Front_entry
  · exact s2Step103EntryBank_checked
  · exact s2Step103Front_sigma
  · rfl
  · exact s2Step103Front_branch
  · rfl
  · simpa only [s2Step103FrontPlan,pairEq] using s2Step103HeadBank_checked
  · simpa only [s2Step103FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step103F4_checked
  · exact s2Step103Counter_checked
  · rfl
  · simpa only [s2Step103FrontPlan,headEq] using s2Step103ExitBank_checked

private theorem s2Step103Complete_explicit_checked : compileHmrEarlyStepLog s2Step103EntryFBefore s2Step103FrontBank 218 65 ⟨217,217,66,66⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] 35 s2Step103CompleteLog=some s2Step103CompletePlan := by
  let Q := s2Step103EarlyControlPlan
  have hq := s2Step103EarlyControl_plan_checked
  have fv1 : s2Step103CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step103CompleteOut.fv.payload[2]?.getD s2Step103CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step103CompleteOut.fv.payload[3]?.getD s2Step103CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step103CompleteOut.fv.payload[4]?.getD s2Step103CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step103EntryFBefore s2Step103EarlyControlArena s2Step103FrontBank 218 65 ⟨217,217,66,66⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] 35 s2Step103CompleteLog s2Step103FrontPlan Q
    s2Step103Front_checked s2Step103Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step103Complete_owned s2Step103Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step103EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] 777 798 s2Step103CompleteOut.fv.second (s2Step103CompleteOut.fv.payload[2]?.getD s2Step103CompleteOut.fv.sign) (s2Step103CompleteOut.fv.payload[3]?.getD s2Step103CompleteOut.fv.sign) (s2Step103CompleteOut.fv.payload[4]?.getD s2Step103CompleteOut.fv.sign) 794 35 s2Step103EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep103Arena : Arena := s2Step103EntryFBefore
def s2PrivateStep103Bank : WindowBank := s2Step103FrontBank
def s2PrivateStep103Spec : HmrSourceWalkStepLog := ⟨218,65,⟨217,217,66,66⟩,35,.early s2Step103CompleteLog⟩
def s2PrivateStep103Plan : HmrSourceStepPlan := .early s2Step103CompletePlan
theorem s2PrivateStep103_source : s2PrivateStep103Spec=s2ObservedLogs96[7] := rfl
theorem s2PrivateStep103_checked : compileHmrSourceStepLog s2PrivateStep103Arena s2PrivateStep103Bank
    s2PrivateStep103Spec.fgWidth s2PrivateStep103Spec.vWidth s2PrivateStep103Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880]
    6 498 103 s2PrivateStep103Spec.need none s2PrivateStep103Spec.log=some s2PrivateStep103Plan := by
  change compileHmrSourceStepLog s2Step103EntryFBefore s2Step103FrontBank 218 65 ⟨217,217,66,66⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] 6 498 103 35 none (.early s2Step103CompleteLog)=some (.early s2Step103CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 103<498)]
  rw [s2Step103Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
