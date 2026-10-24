import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep117
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

private def s2Step119CompleteMoves : List (Wire × Wire) := [(790,209)]

private def s2Step119EarlyControlLog : HmrEarlyControlLog := ⟨[790, 807, 781, 817, 792],[849],[806],[802, 867, 877, 879, 882, 883],[]⟩

private def s2Step119FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[817], [781], [807], [821]],[[], [], [], []]⟩,[819],[815],[792],[849],[806, 802, 867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[806, 802, 867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[792, 849, 806, 802]⟩

private def s2Step119CompleteLog : HmrEarlyStepLog := ⟨s2Step119FrontLog,s2Step119CompleteMoves,s2Step119EarlyControlLog⟩

private def s2Step119ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721],768⟩

private def s2Step119ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821],770⟩

private def s2Step119ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208],769⟩

private def s2Step119ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794],771⟩

private def s2Step119FrontOut : WindowBank := ⟨s2Step119ExitFOut,s2Step119ExitGOut,s2Step119ExitFvOut,s2Step119ExitGvOut⟩

private def s2Step119CompleteOut : WindowBank := s2Step119FrontOut.repacked s2Step119CompleteMoves

private def s2Step119EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step119EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step119EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step119EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step119EarlyControlPositiveArena,[849],s2Step119EarlyControlEqualityArena,[806],⟨⟨819,false⟩,[⟨⟨849,false⟩,806⟩]⟩⟩

private def s2Step119EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<884)),Finset.filter_subset _ _⟩

private def s2Step119EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<884)),Finset.filter_subset _ _⟩

private def s2Step119EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step119EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<819) ∨ (820≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step119EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<819) ∨ (820≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step119EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step119EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,790⟩,⟨⟨774,false⟩,807⟩,⟨⟨775,false⟩,781⟩,⟨⟨776,false⟩,817⟩,⟨⟨777,false⟩,792⟩]⟩

private def s2Step119EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step119EarlyControlZeroArena,s2Step119EarlyControlZeroPlan,s2Step119EarlyControlClassPlan,s2Step119EarlyControlFlagArena,s2Step119EarlyControlFittedArena,s2Step119EarlyControlHistoryArena,s2Step119EarlyControlSigmaArena,s2Step119EarlyControlOutputArena,s2Step119EarlyControlLog⟩

private def s2Step119CounterWork : List Wire := [792, 849, 806, 802]

private theorem s2Step119Counter_bounded : s2Step119CounterWork.toFinset⊆arenaWires := by norm_num [s2Step119CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step119HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step119CounterDuring : Arena := ⟨s2Step119HeadFvAfter.live∪s2Step119CounterWork.toFinset,Finset.union_subset s2Step119HeadFvAfter.bounded s2Step119Counter_bounded⟩

private def s2Step119EntryFFresh : List Wire := []

private def s2Step119EntryFvFresh : List Wire := []

private def s2Step119EntryGFresh : List Wire := []

private def s2Step119EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<819) ∨ (820≤q ∧ q<821) ∨ (822≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step119EntryGvAfter : Arena := s2Step119EntryFBefore

private def s2Step119EntryGvFresh : List Wire := []

private def s2Step119ExitFExtra : List Wire := [781]

private def s2Step119ExitGExtra : List Wire := [209, 817]

private def s2Step119ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<209) ∨ (210≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step119ExitGvExtra : List Wire := [807]

private def s2Step119Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step119Add0Work : List Wire := [806, 802, 867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step119Add0_bounded : s2Step119Add0Work.toFinset⊆arenaWires := by
  have h : s2Step119Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step119Add0During : Arena := ⟨s2Step119Add0Arena.live∪s2Step119Add0Work.toFinset,Finset.union_subset s2Step119Add0Arena.bounded s2Step119Add0_bounded⟩

private def s2Step119Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step119Add1Work : List Wire := [806, 802, 867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step119Add1_bounded : s2Step119Add1Work.toFinset⊆arenaWires := by
  have h : s2Step119Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step119Add1During : Arena := ⟨s2Step119Add1Arena.live∪s2Step119Add1Work.toFinset,Finset.union_subset s2Step119Add1Arena.bounded s2Step119Add1_bounded⟩

private def s2Step119F4FlagArena : Arena := ⟨s2Step119HeadFvAfter.live∪{792},Finset.union_subset s2Step119HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step119F4Plan : HmrHybridF4Plan := ⟨s2Step119F4FlagArena,[792],s2Step119Add0Arena,[849],s2Step119Add0During,s2Step119Add0Work,s2Step119Add1During,s2Step119Add1Work⟩

private def s2Step119HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 781],768⟩

private def s2Step119HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821],770⟩

private def s2Step119HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 817],769⟩

private def s2Step119HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 807],771⟩

private def s2Step119FrontHead : WindowBank := ⟨s2Step119HeadFOut,s2Step119HeadGOut,s2Step119HeadFvOut,s2Step119HeadGvOut⟩

private def s2Step119EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721],768⟩

private def s2Step119EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846],770⟩

private def s2Step119EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209],769⟩

private def s2Step119EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794],771⟩

private def s2Step119FrontPair : WindowBank := ⟨s2Step119EntryFOut,s2Step119EntryGOut,s2Step119EntryFvOut,s2Step119EntryGvOut⟩

private def s2Step119FrontSigmaArena : Arena := ⟨s2Step119EntryGvAfter.live∪{819},Finset.union_subset s2Step119EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step119HeadFFresh : List Wire := [781]

private def s2Step119HeadFvFresh : List Wire := [821]

private def s2Step119HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<821) ∨ (822≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step119HeadGFresh : List Wire := [817]

private def s2Step119HeadGvFresh : List Wire := [807]

private def s2Step119FrontPlan : HmrSourceFront := ⟨s2Step119EntryGvAfter,s2Step119FrontPair,(growRow 768 s2Step119EntryFFresh ++ (growRow 769 s2Step119EntryGFresh ++ (growRow 770 s2Step119EntryFvFresh ++ (growRow 771 s2Step119EntryGvFresh ++ [])))),s2Step119FrontSigmaArena,[819],s2Step119HeadGBefore,[815],
  s2Step119HeadFvAfter,s2Step119FrontHead,(growRow 769 s2Step119HeadGFresh ++ (growRow 768 s2Step119HeadFFresh ++ (growRow 771 s2Step119HeadGvFresh ++ (growRow 770 s2Step119HeadFvFresh ++ [])))),s2Step119F4Plan,s2Step119CounterDuring,s2Step119CounterWork,s2Step119ExitGvAfter,s2Step119FrontOut,(shrinkRow 769 s2Step119ExitGExtra ++ (shrinkRow 768 s2Step119ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step119ExitGvExtra ++ []))))⟩

private def s2Step119CompletePlan : HmrEarlyStepPlan := ⟨s2Step119FrontPlan,s2Step119EarlyControlArena,s2Step119EarlyControlPlan,s2Step119CompleteMoves⟩

private theorem s2Step119Complete_apart : List.Disjoint (s2Step119CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [819, 815, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] := by
  have nd : ((s2Step119CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[819, 815, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step119Complete_owned : (s2Step119CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step119EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step119EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private def s2Step119CompleteMoveArena : Arena := ⟨s2Step119ExitGvAfter.live∪{209},Finset.union_subset s2Step119ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step119Complete_repack : s2Step119ExitGvAfter.checkRepack s2Step119CompleteMoves=some s2Step119EarlyControlArena := by
  have owned : 790∈s2Step119ExitGvAfter.live := by norm_num [s2Step119ExitGvAfter,arenaWires]
  have reserve : s2Step119ExitGvAfter.reserve {209}=some s2Step119CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step119ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step119CompleteMoveArena.retireSet {790}=s2Step119EarlyControlArena := by
    unfold Arena.retireSet s2Step119EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step119CompleteMoveArena,s2Step119ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step119CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step119CompleteMoveArena.retireSet {790}).checkRepack []=some s2Step119EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step119EarlyControl_branchOwned : ([815] : List Wire).toFinset⊆s2Step119EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step119EarlyControlSigmaArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<819) ∨ (820≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step119EarlyControl_branch : compileHmrBranchRetirement s2Step119EarlyControlSigmaArena 815=some s2Step119EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step119EarlyControl_branchOwned
  · ext q
    simp [s2Step119EarlyControlOutputArena,s2Step119EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step119EarlyControl_classEqualityBorrow : s2Step119EarlyControlPositiveArena.checkBorrow (([819, 849] : List Wire).length-1) s2Step119EarlyControlLog.classWork=some s2Step119EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step119EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step119EarlyControlPositiveArena (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step119EarlyControlEqualityArena,s2Step119EarlyControlPositiveArena,s2Step119EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step119EarlyControl_classEqualityOwned : ([819, 849] : List Wire).toFinset⊆s2Step119EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step119EarlyControlPositiveArena (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step119EarlyControl_classEquality : compileHmrEqualityLog s2Step119EarlyControlPositiveArena [819, 849] 0 s2Step119EarlyControlLog.classWork=some (s2Step119EarlyControlEqualityArena,s2Step119EarlyControlLog.classWork,s2Step119EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step119EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step119EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step119EarlyControl_classOwned : ([777, 792, 819] : List Wire).toFinset⊆s2Step119EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step119EarlyControlZeroArena (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step119EarlyControl_positiveBorrow : s2Step119EarlyControlZeroArena.checkBorrow (1) s2Step119EarlyControlLog.positiveWork=some s2Step119EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step119EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step119EarlyControlZeroArena (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step119EarlyControlPositiveArena,s2Step119EarlyControlZeroArena,s2Step119EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step119EarlyControl_class : compileHmrSourceClassLog s2Step119EarlyControlZeroArena false 777 s2Step119EarlyControlZeroPlan.top 0 819 s2Step119EarlyControlLog.positiveWork s2Step119EarlyControlLog.classWork=some s2Step119EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step119EarlyControlClassPlan s2Step119EarlyControlZeroArena false 777 s2Step119EarlyControlZeroPlan.top 0 819
  constructor
  · decide +kernel
  · exact s2Step119EarlyControl_classOwned
  · exact s2Step119EarlyControl_positiveBorrow
  · exact s2Step119EarlyControl_classEquality

private theorem s2Step119EarlyControl_entryRecordOwned : ([815, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).toFinset⊆s2Step119EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step119EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step119EarlyControl_entrySigmaOwned : ([819, 254] : List Wire).toFinset⊆s2Step119EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step119EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step119EarlyControl_fitBorrow : s2Step119EarlyControlFlagArena.checkBorrow ((37-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).length)) s2Step119EarlyControlLog.recordFresh=some s2Step119EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step119EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step119EarlyControlFlagArena (fun q => (0≤q ∧ q<884)) rfl
      decide +kernel
    · ext q
      simp [s2Step119EarlyControlFittedArena,s2Step119EarlyControlFlagArena,s2Step119EarlyControlLog,arenaWires]

private theorem s2Step119EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).toFinset⊆s2Step119EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step119EarlyControlFlagArena (fun q => (0≤q ∧ q<884)) rfl
  decide +kernel

private theorem s2Step119EarlyControl_fit : compileHmrRecordGrowLog s2Step119EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step119EarlyControlLog.recordFresh=some s2Step119EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step119EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step119EarlyControl_fitBorrow

private theorem s2Step119EarlyControl_flagsBorrow : s2Step119EarlyControlEqualityArena.checkBorrow (6) s2Step119EarlyControlLog.flagWork=some s2Step119EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step119EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step119EarlyControlEqualityArena (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step119EarlyControlFlagArena,s2Step119EarlyControlEqualityArena,s2Step119EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step119EarlyControl_flagsOwned : ([806, 253, 252, 251] : List Wire).toFinset⊆s2Step119EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step119EarlyControlEqualityArena (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step119EarlyControl_flags : compileHmrFlagsLog s2Step119EarlyControlClassPlan.equalityArena s2Step119EarlyControlClassPlan.equality.top 253 252 251 s2Step119EarlyControlLog.flagWork=some s2Step119EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step119EarlyControl_flagsOwned⟩
  · exact s2Step119EarlyControl_flagsBorrow

private theorem s2Step119EarlyControl_historyBorrow : s2Step119EarlyControlArena.checkBorrow ((37-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).length)) s2Step119EarlyControlLog.recordFresh=some s2Step119EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step119EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step119EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step119EarlyControlHistoryArena,s2Step119EarlyControlArena,s2Step119EarlyControlLog,arenaWires]

private theorem s2Step119EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).toFinset⊆s2Step119EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step119EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step119EarlyControl_history : compileHmrRecordGrowLog s2Step119EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step119EarlyControlLog.recordFresh=some s2Step119EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step119EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step119EarlyControl_historyBorrow

private theorem s2Step119EarlyControl_sigmaOwned : ([254, 819] : List Wire).toFinset⊆s2Step119EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step119EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step119EarlyControl_sigmaReleaseOwned : ([819] : List Wire).toFinset⊆s2Step119EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step119EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step119EarlyControl_sigmaRelease : s2Step119EarlyControlHistoryArena.release {819} (fun _ => false)=some s2Step119EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step119EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step119EarlyControlSigmaArena,s2Step119EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step119EarlyControl_sigma : compileHmrSigmaDropLog s2Step119EarlyControlHistoryArena false 0 0 254 819 []=some s2Step119EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step119EarlyControl_sigmaOwned⟩
  · exact s2Step119EarlyControl_sigmaRelease

private theorem s2Step119EarlyControl_zeroBorrow : s2Step119EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step119EarlyControlLog.zeroWork=some s2Step119EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step119EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step119EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step119EarlyControlZeroArena,s2Step119EarlyControlArena,s2Step119EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step119EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step119EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step119EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step119EarlyControl_zero : compileHmrEqualityLog s2Step119EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step119EarlyControlLog.zeroWork=some (s2Step119EarlyControlZeroArena,s2Step119EarlyControlLog.zeroWork,s2Step119EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step119EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step119EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step119EarlyControl_logged : s2Step119EarlyControlPlan.Logged s2Step119EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 819 254 253 252 251 815 37 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step119EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step119EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step119EarlyControl_zero
  · exact s2Step119EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step119EarlyControl_flags
  · exact s2Step119EarlyControl_fit
  · exact s2Step119EarlyControl_history
  · exact s2Step119EarlyControl_sigma
  · exact s2Step119EarlyControl_branch

private theorem s2Step119EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step119EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 819 254 253 252 251 815 37 s2Step119EarlyControlLog=some s2Step119EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step119EarlyControlPlan s2Step119EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 819 254 253 252 251 815 37 s2Step119EarlyControl_logged

private def s2Step119EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721],768⟩

private def s2Step119EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846],770⟩

private def s2Step119EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209],769⟩

private def s2Step119EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794],771⟩

private def s2Step119FrontBank : WindowBank := ⟨s2Step119EntryFRow,s2Step119EntryGRow,s2Step119EntryFvRow,s2Step119EntryGvRow⟩

private def s2Step119Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 781, 768]

private def s2Step119Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 817, 769]

private def s2Step119Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 770]

private def s2Step119Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 807, 771]

private theorem s2Step119Counter_apart : Disjoint s2Step119HeadFvAfter.live s2Step119CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step119HeadFvAfter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step119Counter_borrowed : s2Step119HeadFvAfter.checkBorrow 4 s2Step119CounterWork=some s2Step119CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step119HeadFvAfter s2Step119CounterDuring s2Step119CounterWork.toFinset s2Step119Counter_bounded s2Step119Counter_apart rfl

private theorem s2Step119Counter_owned : (819::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step119HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step119HeadFvAfter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step119Counter_checked : compileHmrCounterStepLog s2Step119HeadFvAfter true 819 [772, 773, 774, 775, 776, 777] s2Step119CounterWork=some s2Step119CounterDuring := by
  have owned : ∀q∈819::[772, 773, 774, 775, 776, 777],q∈s2Step119HeadFvAfter.live := fun q hq => s2Step119Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step119Counter_borrowed

private def s2Step119EntryFAfter : Arena := s2Step119EntryFBefore

private theorem s2Step119EntryBank_incomingDistinct : ([s2Step119EntryFRow,s2Step119EntryGRow,s2Step119EntryFvRow,s2Step119EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step119EntryF_Incoming : rowsOwned s2Step119EntryFBefore [s2Step119EntryFRow,s2Step119EntryGRow,s2Step119EntryFvRow,s2Step119EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step119EntryFRow,s2Step119EntryGRow,s2Step119EntryFvRow,s2Step119EntryGvRow] 0 s2Step119EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step119EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<819) ∨ (820≤q ∧ q<821) ∨ (822≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step119EntryBank_outgoingOwned : rowsOwned s2Step119EntryGvAfter [s2Step119EntryFOut,s2Step119EntryGOut,s2Step119EntryFvOut,s2Step119EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step119EntryGvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<819) ∨ (820≤q ∧ q<821) ∨ (822≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step119EntryF_Outgoing : rowsOwned s2Step119EntryGvAfter [s2Step119EntryFOut,s2Step119EntryGOut,s2Step119EntryFvOut,s2Step119EntryGvOut] :=
  hmrRows_owned_drop s2Step119EntryGvAfter [s2Step119EntryFOut,s2Step119EntryGOut,s2Step119EntryFvOut,s2Step119EntryGvOut] 0 s2Step119EntryBank_outgoingOwned

private theorem s2Step119EntryF_distinct : (s2Step119EntryFRow.sign::s2Step119EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step119EntryF_owned : (s2Step119EntryFRow.sign::s2Step119EntryFRow.payload).toFinset⊆s2Step119EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step119EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<819) ∨ (820≤q ∧ q<821) ∨ (822≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step119EntryF_reserved : s2Step119EntryFBefore.reserve s2Step119EntryFFresh.toFinset=some s2Step119EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step119EntryFFresh,arenaWires]
  · norm_num [s2Step119EntryFBefore,s2Step119EntryFFresh,arenaWires]
  · simp only [s2Step119EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step119EntryF_checked : planRowResizeLog s2Step119EntryFBefore s2Step119EntryFRow 210 s2Step119EntryFFresh=
    some (s2Step119EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721],768⟩,growRow 768 s2Step119EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step119EntryFBefore s2Step119EntryFAfter s2Step119EntryFRow 210 s2Step119EntryFFresh
    s2Step119EntryF_distinct s2Step119EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step119EntryF_reserved
  have rowEq : WindowRow.mk (s2Step119EntryFRow.payload++s2Step119EntryFFresh) s2Step119EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step119EntryFvAfter : Arena := s2Step119EntryFBefore

private def s2Step119EntryFvBefore : Arena := s2Step119EntryFBefore

private theorem s2Step119EntryFv_Incoming : rowsOwned s2Step119EntryFvBefore [s2Step119EntryFvRow,s2Step119EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step119EntryFRow,s2Step119EntryGRow,s2Step119EntryFvRow,s2Step119EntryGvRow] 2 s2Step119EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step119EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<819) ∨ (820≤q ∧ q<821) ∨ (822≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step119EntryFv_Outgoing : rowsOwned s2Step119EntryGvAfter [s2Step119EntryFvOut,s2Step119EntryGvOut] :=
  hmrRows_owned_drop s2Step119EntryGvAfter [s2Step119EntryFOut,s2Step119EntryGOut,s2Step119EntryFvOut,s2Step119EntryGvOut] 2 s2Step119EntryBank_outgoingOwned

private theorem s2Step119EntryFv_distinct : (s2Step119EntryFvRow.sign::s2Step119EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step119EntryFv_owned : (s2Step119EntryFvRow.sign::s2Step119EntryFvRow.payload).toFinset⊆s2Step119EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step119EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<819) ∨ (820≤q ∧ q<821) ∨ (822≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step119EntryFv_reserved : s2Step119EntryFvBefore.reserve s2Step119EntryFvFresh.toFinset=some s2Step119EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step119EntryFvFresh,arenaWires]
  · norm_num [s2Step119EntryFvBefore,s2Step119EntryFBefore,s2Step119EntryFvFresh,arenaWires]
  · simp only [s2Step119EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step119EntryFv_checked : planRowResizeLog s2Step119EntryFvBefore s2Step119EntryFvRow 73 s2Step119EntryFvFresh=
    some (s2Step119EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846],770⟩,growRow 770 s2Step119EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step119EntryFvBefore s2Step119EntryFvAfter s2Step119EntryFvRow 73 s2Step119EntryFvFresh
    s2Step119EntryFv_distinct s2Step119EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step119EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step119EntryFvRow.payload++s2Step119EntryFvFresh) s2Step119EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step119EntryGAfter : Arena := s2Step119EntryFBefore

private def s2Step119EntryGBefore : Arena := s2Step119EntryFBefore

private theorem s2Step119EntryG_Incoming : rowsOwned s2Step119EntryGBefore [s2Step119EntryGRow,s2Step119EntryFvRow,s2Step119EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step119EntryFRow,s2Step119EntryGRow,s2Step119EntryFvRow,s2Step119EntryGvRow] 1 s2Step119EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step119EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<819) ∨ (820≤q ∧ q<821) ∨ (822≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step119EntryG_Outgoing : rowsOwned s2Step119EntryGvAfter [s2Step119EntryGOut,s2Step119EntryFvOut,s2Step119EntryGvOut] :=
  hmrRows_owned_drop s2Step119EntryGvAfter [s2Step119EntryFOut,s2Step119EntryGOut,s2Step119EntryFvOut,s2Step119EntryGvOut] 1 s2Step119EntryBank_outgoingOwned

private theorem s2Step119EntryG_distinct : (s2Step119EntryGRow.sign::s2Step119EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step119EntryG_owned : (s2Step119EntryGRow.sign::s2Step119EntryGRow.payload).toFinset⊆s2Step119EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step119EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<819) ∨ (820≤q ∧ q<821) ∨ (822≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step119EntryG_reserved : s2Step119EntryGBefore.reserve s2Step119EntryGFresh.toFinset=some s2Step119EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step119EntryGFresh,arenaWires]
  · norm_num [s2Step119EntryGBefore,s2Step119EntryFBefore,s2Step119EntryGFresh,arenaWires]
  · simp only [s2Step119EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step119EntryG_checked : planRowResizeLog s2Step119EntryGBefore s2Step119EntryGRow 210 s2Step119EntryGFresh=
    some (s2Step119EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209],769⟩,growRow 769 s2Step119EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step119EntryGBefore s2Step119EntryGAfter s2Step119EntryGRow 210 s2Step119EntryGFresh
    s2Step119EntryG_distinct s2Step119EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step119EntryG_reserved
  have rowEq : WindowRow.mk (s2Step119EntryGRow.payload++s2Step119EntryGFresh) s2Step119EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step119EntryGvBefore : Arena := s2Step119EntryFBefore

private theorem s2Step119EntryGv_Incoming : rowsOwned s2Step119EntryGvBefore [s2Step119EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step119EntryFRow,s2Step119EntryGRow,s2Step119EntryFvRow,s2Step119EntryGvRow] 3 s2Step119EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step119EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<819) ∨ (820≤q ∧ q<821) ∨ (822≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step119EntryGv_Outgoing : rowsOwned s2Step119EntryGvAfter [s2Step119EntryGvOut] :=
  hmrRows_owned_drop s2Step119EntryGvAfter [s2Step119EntryFOut,s2Step119EntryGOut,s2Step119EntryFvOut,s2Step119EntryGvOut] 3 s2Step119EntryBank_outgoingOwned

private theorem s2Step119EntryGv_distinct : (s2Step119EntryGvRow.sign::s2Step119EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step119EntryGv_owned : (s2Step119EntryGvRow.sign::s2Step119EntryGvRow.payload).toFinset⊆s2Step119EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step119EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<819) ∨ (820≤q ∧ q<821) ∨ (822≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step119EntryGv_reserved : s2Step119EntryGvBefore.reserve s2Step119EntryGvFresh.toFinset=some s2Step119EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step119EntryGvFresh,arenaWires]
  · norm_num [s2Step119EntryGvBefore,s2Step119EntryFBefore,s2Step119EntryGvFresh,arenaWires]
  · simp only [s2Step119EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step119EntryGv_checked : planRowResizeLog s2Step119EntryGvBefore s2Step119EntryGvRow 73 s2Step119EntryGvFresh=
    some (s2Step119EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794],771⟩,growRow 771 s2Step119EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step119EntryGvBefore s2Step119EntryGvAfter s2Step119EntryGvRow 73 s2Step119EntryGvFresh
    s2Step119EntryGv_distinct s2Step119EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step119EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step119EntryGvRow.payload++s2Step119EntryGvFresh) s2Step119EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step119EntryBank_rows : planWindowRowsLog s2Step119EntryFBefore [(s2Step119EntryFRow,210),(s2Step119EntryGRow,210),(s2Step119EntryFvRow,73),(s2Step119EntryGvRow,73)] [s2Step119EntryFFresh,s2Step119EntryGFresh,s2Step119EntryFvFresh,s2Step119EntryGvFresh]=
    some (s2Step119EntryGvAfter,[s2Step119EntryFOut,s2Step119EntryGOut,s2Step119EntryFvOut,s2Step119EntryGvOut],(growRow 768 s2Step119EntryFFresh ++ (growRow 769 s2Step119EntryGFresh ++ (growRow 770 s2Step119EntryFvFresh ++ (growRow 771 s2Step119EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step119EntryGvAfter [] []=some (s2Step119EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step119EntryGvBefore s2Step119EntryGvAfter s2Step119EntryGvAfter
    s2Step119EntryGvRow s2Step119EntryGvOut 73 s2Step119EntryGvFresh [] [] []
    (growRow 771 s2Step119EntryGvFresh) ([]) s2Step119EntryGv_Incoming s2Step119EntryGv_checked h4 s2Step119EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step119EntryFvBefore s2Step119EntryFvAfter s2Step119EntryGvAfter
    s2Step119EntryFvRow s2Step119EntryFvOut 73 s2Step119EntryFvFresh [(s2Step119EntryGvRow,73)] [s2Step119EntryGvFresh] [s2Step119EntryGvOut]
    (growRow 770 s2Step119EntryFvFresh) ((growRow 771 s2Step119EntryGvFresh ++ [])) s2Step119EntryFv_Incoming s2Step119EntryFv_checked h3 s2Step119EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step119EntryGBefore s2Step119EntryGAfter s2Step119EntryGvAfter
    s2Step119EntryGRow s2Step119EntryGOut 210 s2Step119EntryGFresh [(s2Step119EntryFvRow,73),(s2Step119EntryGvRow,73)] [s2Step119EntryFvFresh,s2Step119EntryGvFresh] [s2Step119EntryFvOut,s2Step119EntryGvOut]
    (growRow 769 s2Step119EntryGFresh) ((growRow 770 s2Step119EntryFvFresh ++ (growRow 771 s2Step119EntryGvFresh ++ []))) s2Step119EntryG_Incoming s2Step119EntryG_checked h2 s2Step119EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step119EntryFBefore s2Step119EntryFAfter s2Step119EntryGvAfter
    s2Step119EntryFRow s2Step119EntryFOut 210 s2Step119EntryFFresh [(s2Step119EntryGRow,210),(s2Step119EntryFvRow,73),(s2Step119EntryGvRow,73)] [s2Step119EntryGFresh,s2Step119EntryFvFresh,s2Step119EntryGvFresh] [s2Step119EntryGOut,s2Step119EntryFvOut,s2Step119EntryGvOut]
    (growRow 768 s2Step119EntryFFresh) ((growRow 769 s2Step119EntryGFresh ++ (growRow 770 s2Step119EntryFvFresh ++ (growRow 771 s2Step119EntryGvFresh ++ [])))) s2Step119EntryF_Incoming s2Step119EntryF_checked h1 s2Step119EntryF_Outgoing
  exact h0

private theorem s2Step119EntryBank_checked : compileHmrBankResizeLog .entry s2Step119EntryFBefore ⟨s2Step119EntryFRow,s2Step119EntryGRow,s2Step119EntryFvRow,s2Step119EntryGvRow⟩ ⟨210,210,73,73⟩ [s2Step119EntryFFresh,s2Step119EntryGFresh,s2Step119EntryFvFresh,s2Step119EntryGvFresh]=
    some (s2Step119EntryGvAfter,⟨s2Step119EntryFOut,s2Step119EntryGOut,s2Step119EntryFvOut,s2Step119EntryGvOut⟩,(growRow 768 s2Step119EntryFFresh ++ (growRow 769 s2Step119EntryGFresh ++ (growRow 770 s2Step119EntryFvFresh ++ (growRow 771 s2Step119EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step119EntryBank_rows]
  rfl

private def s2Step119ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<209) ∨ (210≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<817) ∨ (818≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step119ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<209) ∨ (210≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<817) ∨ (818≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step119ExitFBefore : Arena := s2Step119ExitGAfter

private def s2Step119ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 781],768⟩

private def s2Step119ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821],770⟩

private def s2Step119ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 817],769⟩

private def s2Step119ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 807],771⟩

private theorem s2Step119ExitBank_incomingDistinct : ([s2Step119ExitGRow,s2Step119ExitFRow,s2Step119ExitFvRow,s2Step119ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step119ExitF_Incoming : rowsOwned s2Step119ExitFBefore [s2Step119ExitFRow,s2Step119ExitFvRow,s2Step119ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step119ExitGRow,s2Step119ExitFRow,s2Step119ExitFvRow,s2Step119ExitGvRow] 1 s2Step119ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step119ExitFBefore (fun q => (0≤q ∧ q<209) ∨ (210≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<817) ∨ (818≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step119ExitBank_outgoingOwned : rowsOwned s2Step119ExitGvAfter [s2Step119ExitGOut,s2Step119ExitFOut,s2Step119ExitFvOut,s2Step119ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step119ExitGvAfter (fun q => (0≤q ∧ q<209) ∨ (210≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step119ExitF_Outgoing : rowsOwned s2Step119ExitGvAfter [s2Step119ExitFOut,s2Step119ExitFvOut,s2Step119ExitGvOut] :=
  hmrRows_owned_drop s2Step119ExitGvAfter [s2Step119ExitGOut,s2Step119ExitFOut,s2Step119ExitFvOut,s2Step119ExitGvOut] 1 s2Step119ExitBank_outgoingOwned

private theorem s2Step119ExitF_distinct : (s2Step119ExitFRow.sign::s2Step119ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step119ExitF_owned : (s2Step119ExitFRow.sign::s2Step119ExitFRow.payload).toFinset⊆s2Step119ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step119ExitFBefore (fun q => (0≤q ∧ q<209) ∨ (210≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<817) ∨ (818≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step119ExitF_retired : s2Step119ExitFBefore.retireSet s2Step119ExitFExtra.toFinset=s2Step119ExitFAfter := by
  unfold Arena.retireSet s2Step119ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step119ExitFBefore,s2Step119ExitGAfter,s2Step119ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step119ExitF_checked : planRowResizeLog s2Step119ExitFBefore s2Step119ExitFRow 210 []=
    some (s2Step119ExitFAfter,s2Step119ExitFOut,shrinkRow 768 s2Step119ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step119ExitFBefore s2Step119ExitFRow 210 s2Step119ExitF_distinct s2Step119ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step119ExitFRow.payload.take 210) s2Step119ExitFRow.sign=s2Step119ExitFOut := by decide +kernel
  have hi : s2Step119ExitFRow.payload.drop 210=s2Step119ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step119ExitF_retired] at result
  exact result

private def s2Step119ExitFvAfter : Arena := s2Step119ExitFAfter

private def s2Step119ExitFvBefore : Arena := s2Step119ExitFAfter

private theorem s2Step119ExitFv_Incoming : rowsOwned s2Step119ExitFvBefore [s2Step119ExitFvRow,s2Step119ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step119ExitGRow,s2Step119ExitFRow,s2Step119ExitFvRow,s2Step119ExitGvRow] 2 s2Step119ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step119ExitFvBefore (fun q => (0≤q ∧ q<209) ∨ (210≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<817) ∨ (818≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step119ExitFv_Outgoing : rowsOwned s2Step119ExitGvAfter [s2Step119ExitFvOut,s2Step119ExitGvOut] :=
  hmrRows_owned_drop s2Step119ExitGvAfter [s2Step119ExitGOut,s2Step119ExitFOut,s2Step119ExitFvOut,s2Step119ExitGvOut] 2 s2Step119ExitBank_outgoingOwned

private theorem s2Step119ExitFv_distinct : (s2Step119ExitFvRow.sign::s2Step119ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step119ExitFv_owned : (s2Step119ExitFvRow.sign::s2Step119ExitFvRow.payload).toFinset⊆s2Step119ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step119ExitFvBefore (fun q => (0≤q ∧ q<209) ∨ (210≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<817) ∨ (818≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step119ExitFv_reserved : s2Step119ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step119ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step119ExitFv_checked : planRowResizeLog s2Step119ExitFvBefore s2Step119ExitFvRow 74 []=
    some (s2Step119ExitFvAfter,s2Step119ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step119ExitFvBefore s2Step119ExitFvAfter s2Step119ExitFvRow 74 []
    s2Step119ExitFv_distinct s2Step119ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step119ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step119ExitFvRow.payload++[]) s2Step119ExitFvRow.sign=s2Step119ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step119ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private theorem s2Step119ExitG_Incoming : rowsOwned s2Step119ExitGBefore [s2Step119ExitGRow,s2Step119ExitFRow,s2Step119ExitFvRow,s2Step119ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step119ExitGRow,s2Step119ExitFRow,s2Step119ExitFvRow,s2Step119ExitGvRow] 0 s2Step119ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step119ExitGBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step119ExitG_Outgoing : rowsOwned s2Step119ExitGvAfter [s2Step119ExitGOut,s2Step119ExitFOut,s2Step119ExitFvOut,s2Step119ExitGvOut] :=
  hmrRows_owned_drop s2Step119ExitGvAfter [s2Step119ExitGOut,s2Step119ExitFOut,s2Step119ExitFvOut,s2Step119ExitGvOut] 0 s2Step119ExitBank_outgoingOwned

private theorem s2Step119ExitG_distinct : (s2Step119ExitGRow.sign::s2Step119ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step119ExitG_owned : (s2Step119ExitGRow.sign::s2Step119ExitGRow.payload).toFinset⊆s2Step119ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step119ExitGBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step119ExitG_retired : s2Step119ExitGBefore.retireSet s2Step119ExitGExtra.toFinset=s2Step119ExitGAfter := by
  unfold Arena.retireSet s2Step119ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step119ExitGBefore,s2Step119ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step119ExitG_checked : planRowResizeLog s2Step119ExitGBefore s2Step119ExitGRow 209 []=
    some (s2Step119ExitGAfter,s2Step119ExitGOut,shrinkRow 769 s2Step119ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step119ExitGBefore s2Step119ExitGRow 209 s2Step119ExitG_distinct s2Step119ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step119ExitGRow.payload.take 209) s2Step119ExitGRow.sign=s2Step119ExitGOut := by decide +kernel
  have hi : s2Step119ExitGRow.payload.drop 209=s2Step119ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step119ExitG_retired] at result
  exact result

private def s2Step119ExitGvBefore : Arena := s2Step119ExitFAfter

private theorem s2Step119ExitGv_Incoming : rowsOwned s2Step119ExitGvBefore [s2Step119ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step119ExitGRow,s2Step119ExitFRow,s2Step119ExitFvRow,s2Step119ExitGvRow] 3 s2Step119ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step119ExitGvBefore (fun q => (0≤q ∧ q<209) ∨ (210≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<817) ∨ (818≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step119ExitGv_Outgoing : rowsOwned s2Step119ExitGvAfter [s2Step119ExitGvOut] :=
  hmrRows_owned_drop s2Step119ExitGvAfter [s2Step119ExitGOut,s2Step119ExitFOut,s2Step119ExitFvOut,s2Step119ExitGvOut] 3 s2Step119ExitBank_outgoingOwned

private theorem s2Step119ExitGv_distinct : (s2Step119ExitGvRow.sign::s2Step119ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step119ExitGv_owned : (s2Step119ExitGvRow.sign::s2Step119ExitGvRow.payload).toFinset⊆s2Step119ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step119ExitGvBefore (fun q => (0≤q ∧ q<209) ∨ (210≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<817) ∨ (818≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step119ExitGv_retired : s2Step119ExitGvBefore.retireSet s2Step119ExitGvExtra.toFinset=s2Step119ExitGvAfter := by
  unfold Arena.retireSet s2Step119ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step119ExitGvBefore,s2Step119ExitFAfter,s2Step119ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step119ExitGv_checked : planRowResizeLog s2Step119ExitGvBefore s2Step119ExitGvRow 73 []=
    some (s2Step119ExitGvAfter,s2Step119ExitGvOut,shrinkRow 771 s2Step119ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step119ExitGvBefore s2Step119ExitGvRow 73 s2Step119ExitGv_distinct s2Step119ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step119ExitGvRow.payload.take 73) s2Step119ExitGvRow.sign=s2Step119ExitGvOut := by decide +kernel
  have hi : s2Step119ExitGvRow.payload.drop 73=s2Step119ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step119ExitGv_retired] at result
  exact result

private theorem s2Step119ExitBank_rows : planWindowRowsLog s2Step119ExitGBefore [(s2Step119ExitGRow,209),(s2Step119ExitFRow,210),(s2Step119ExitFvRow,74),(s2Step119ExitGvRow,73)] [[],[],[],[]]=
    some (s2Step119ExitGvAfter,[s2Step119ExitGOut,s2Step119ExitFOut,s2Step119ExitFvOut,s2Step119ExitGvOut],(shrinkRow 769 s2Step119ExitGExtra ++ (shrinkRow 768 s2Step119ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step119ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step119ExitGvAfter [] []=some (s2Step119ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step119ExitGvBefore s2Step119ExitGvAfter s2Step119ExitGvAfter
    s2Step119ExitGvRow s2Step119ExitGvOut 73 [] [] [] []
    (shrinkRow 771 s2Step119ExitGvExtra) ([]) s2Step119ExitGv_Incoming s2Step119ExitGv_checked h4 s2Step119ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step119ExitFvBefore s2Step119ExitFvAfter s2Step119ExitGvAfter
    s2Step119ExitFvRow s2Step119ExitFvOut 74 [] [(s2Step119ExitGvRow,73)] [[]] [s2Step119ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step119ExitGvExtra ++ [])) s2Step119ExitFv_Incoming s2Step119ExitFv_checked h3 s2Step119ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step119ExitFBefore s2Step119ExitFAfter s2Step119ExitGvAfter
    s2Step119ExitFRow s2Step119ExitFOut 210 [] [(s2Step119ExitFvRow,74),(s2Step119ExitGvRow,73)] [[],[]] [s2Step119ExitFvOut,s2Step119ExitGvOut]
    (shrinkRow 768 s2Step119ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step119ExitGvExtra ++ []))) s2Step119ExitF_Incoming s2Step119ExitF_checked h2 s2Step119ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step119ExitGBefore s2Step119ExitGAfter s2Step119ExitGvAfter
    s2Step119ExitGRow s2Step119ExitGOut 209 [] [(s2Step119ExitFRow,210),(s2Step119ExitFvRow,74),(s2Step119ExitGvRow,73)] [[],[],[]] [s2Step119ExitFOut,s2Step119ExitFvOut,s2Step119ExitGvOut]
    (shrinkRow 769 s2Step119ExitGExtra) ((shrinkRow 768 s2Step119ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step119ExitGvExtra ++ [])))) s2Step119ExitG_Incoming s2Step119ExitG_checked h1 s2Step119ExitG_Outgoing
  exact h0

private theorem s2Step119ExitBank_checked : compileHmrBankResizeLog .exit s2Step119ExitGBefore ⟨s2Step119ExitFRow,s2Step119ExitGRow,s2Step119ExitFvRow,s2Step119ExitGvRow⟩ ⟨210,209,74,73⟩ [[],[],[],[]]=
    some (s2Step119ExitGvAfter,⟨s2Step119ExitFOut,s2Step119ExitGOut,s2Step119ExitFvOut,s2Step119ExitGvOut⟩,(shrinkRow 769 s2Step119ExitGExtra ++ (shrinkRow 768 s2Step119ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step119ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step119ExitBank_rows]
  rfl

private theorem s2Step119Add0_apart : Disjoint s2Step119Add0Arena.live s2Step119Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step119Add0Arena (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step119Add0_card : s2Step119Add0Arena.live.card=877 := by
  decide +kernel

private theorem s2Step119Add0_borrowed : s2Step119Add0Arena.checkBorrow (hmrHybridCount s2Step119Add0Arena s2Step119Add0B.length) s2Step119Add0Work=some s2Step119Add0During := by
  have len : s2Step119Add0Work.length=hmrHybridCount s2Step119Add0Arena s2Step119Add0B.length := by
    rw [hmrHybridCount,s2Step119Add0_card]
    decide +kernel
  have nd : s2Step119Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step119Add0Arena s2Step119Add0During s2Step119Add0Work.toFinset s2Step119Add0_bounded s2Step119Add0_apart rfl

private theorem s2Step119Add0_distinct : (792::815::849::(s2Step119Add0A++s2Step119Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step119Add0_owned : (792::815::849::(s2Step119Add0A++s2Step119Add0B)).toFinset⊆s2Step119Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step119Add0Arena (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step119Add0_checked : compileHmrHybridCinLog s2Step119Add0Arena 815 792 849 s2Step119Add0A s2Step119Add0B s2Step119Add0Work=some s2Step119Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step119Add0Arena s2Step119Add0During 815 792 849 s2Step119Add0A s2Step119Add0B s2Step119Add0Work
    (by decide +kernel) (by decide +kernel) s2Step119Add0_distinct
    (fun q hq => s2Step119Add0_owned (List.mem_toFinset.mpr hq)) s2Step119Add0_borrowed

private theorem s2Step119Add1_apart : Disjoint s2Step119Add1Arena.live s2Step119Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step119Add1Arena (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step119Add1_card : s2Step119Add1Arena.live.card=877 := by
  decide +kernel

private theorem s2Step119Add1_borrowed : s2Step119Add1Arena.checkBorrow (hmrHybridCount s2Step119Add1Arena s2Step119Add1B.length) s2Step119Add1Work=some s2Step119Add1During := by
  have len : s2Step119Add1Work.length=hmrHybridCount s2Step119Add1Arena s2Step119Add1B.length := by
    rw [hmrHybridCount,s2Step119Add1_card]
    decide +kernel
  have nd : s2Step119Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step119Add1Arena s2Step119Add1During s2Step119Add1Work.toFinset s2Step119Add1_bounded s2Step119Add1_apart rfl

private theorem s2Step119Add1_distinct : (792::815::849::(s2Step119Add1A++s2Step119Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step119Add1_owned : (792::815::849::(s2Step119Add1A++s2Step119Add1B)).toFinset⊆s2Step119Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step119Add1Arena (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step119Add1_checked : compileHmrHybridCinLog s2Step119Add1Arena 815 792 849 s2Step119Add1A s2Step119Add1B s2Step119Add1Work=some s2Step119Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step119Add1Arena s2Step119Add1During 815 792 849 s2Step119Add1A s2Step119Add1B s2Step119Add1Work
    (by decide +kernel) (by decide +kernel) s2Step119Add1_distinct
    (fun q hq => s2Step119Add1_owned (List.mem_toFinset.mpr hq)) s2Step119Add1_borrowed

private theorem s2Step119F4_apart : Disjoint (s2Step119Add0A++s2Step119Add0B).toFinset (s2Step119Add1A++s2Step119Add1B).toFinset := by
  have nd : ((s2Step119Add0A++s2Step119Add0B)++(s2Step119Add1A++s2Step119Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step119F4_carry : s2Step119F4FlagArena.checkBorrow 1 [849]=some s2Step119Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step119F4FlagArena,s2Step119HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step119F4FlagArena,s2Step119HeadFvAfter,s2Step119Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step119F4_distinct : (819::815::792::849::((s2Step119Add0A++s2Step119Add1A)++(s2Step119Add0B++s2Step119Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step119F4_flag : s2Step119HeadFvAfter.checkBorrow 1 [792]=some s2Step119F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step119HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step119F4_owned : (819::815::((s2Step119Add0A++s2Step119Add1A)++(s2Step119Add0B++s2Step119Add1B))).toFinset⊆s2Step119HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step119HeadFvAfter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step119F4_checked : compileHmrHybridF4Log s2Step119HeadFvAfter 819 815 s2Step119Add0A s2Step119Add0B s2Step119Add1A s2Step119Add1B [792] [849] s2Step119Add0Work s2Step119Add1Work=some s2Step119F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step119HeadFvAfter s2Step119F4FlagArena s2Step119Add0Arena s2Step119Add0During s2Step119Add1During 819 815
    s2Step119Add0A s2Step119Add0B s2Step119Add1A s2Step119Add1B [792] [849] s2Step119Add0Work s2Step119Add1Work
    (fun q hq => s2Step119F4_owned (List.mem_toFinset.mpr hq)) s2Step119F4_flag s2Step119F4_carry
    s2Step119F4_distinct s2Step119F4_apart s2Step119Add0_checked s2Step119Add1_checked

private theorem s2Step119Front_branch : s2Step119FrontSigmaArena.checkBorrow 1 [815]=some s2Step119HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step119FrontSigmaArena,s2Step119EntryGvAfter,s2Step119EntryFBefore,arenaWires]
  · ext q
    simp only [s2Step119FrontSigmaArena,s2Step119EntryGvAfter,s2Step119EntryFBefore,s2Step119HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step119Front_entry : HmrFrontEntryValid s2Step119EntryFBefore s2Step119FrontBank 210 73 ⟨210,209,74,73⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step119FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step119EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step119EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<819) ∨ (820≤q ∧ q<821) ∨ (822≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step119FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step119Front_sigma : s2Step119EntryGvAfter.checkBorrow 1 [819]=some s2Step119FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step119EntryGvAfter,s2Step119EntryFBefore,arenaWires]
  · rfl

private def s2Step119HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<821) ∨ (822≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step119HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<821) ∨ (822≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step119HeadFBefore : Arena := s2Step119HeadGAfter

private def s2Step119HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721],768⟩

private def s2Step119HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846],770⟩

private def s2Step119HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209],769⟩

private def s2Step119HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794],771⟩

private theorem s2Step119HeadBank_incomingDistinct : ([s2Step119HeadGRow,s2Step119HeadFRow,s2Step119HeadGvRow,s2Step119HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step119HeadF_Incoming : rowsOwned s2Step119HeadFBefore [s2Step119HeadFRow,s2Step119HeadGvRow,s2Step119HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step119HeadGRow,s2Step119HeadFRow,s2Step119HeadGvRow,s2Step119HeadFvRow] 1 s2Step119HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step119HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<821) ∨ (822≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step119HeadBank_outgoingOwned : rowsOwned s2Step119HeadFvAfter [s2Step119HeadGOut,s2Step119HeadFOut,s2Step119HeadGvOut,s2Step119HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step119HeadFvAfter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step119HeadF_Outgoing : rowsOwned s2Step119HeadFvAfter [s2Step119HeadFOut,s2Step119HeadGvOut,s2Step119HeadFvOut] :=
  hmrRows_owned_drop s2Step119HeadFvAfter [s2Step119HeadGOut,s2Step119HeadFOut,s2Step119HeadGvOut,s2Step119HeadFvOut] 1 s2Step119HeadBank_outgoingOwned

private theorem s2Step119HeadF_distinct : (s2Step119HeadFRow.sign::s2Step119HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step119HeadF_owned : (s2Step119HeadFRow.sign::s2Step119HeadFRow.payload).toFinset⊆s2Step119HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step119HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<821) ∨ (822≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step119HeadF_reserved : s2Step119HeadFBefore.reserve s2Step119HeadFFresh.toFinset=some s2Step119HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step119HeadFFresh,arenaWires]
  · norm_num [s2Step119HeadFBefore,s2Step119HeadGAfter,s2Step119HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step119HeadFAfter,s2Step119HeadFBefore,s2Step119HeadGAfter,s2Step119HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step119HeadF_checked : planRowResizeLog s2Step119HeadFBefore s2Step119HeadFRow 211 s2Step119HeadFFresh=
    some (s2Step119HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 781],768⟩,growRow 768 s2Step119HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step119HeadFBefore s2Step119HeadFAfter s2Step119HeadFRow 211 s2Step119HeadFFresh
    s2Step119HeadF_distinct s2Step119HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step119HeadF_reserved
  have rowEq : WindowRow.mk (s2Step119HeadFRow.payload++s2Step119HeadFFresh) s2Step119HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 781],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step119HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<821) ∨ (822≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step119HeadFvBefore : Arena := s2Step119HeadGvAfter

private theorem s2Step119HeadFv_Incoming : rowsOwned s2Step119HeadFvBefore [s2Step119HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step119HeadGRow,s2Step119HeadFRow,s2Step119HeadGvRow,s2Step119HeadFvRow] 3 s2Step119HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step119HeadFvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<821) ∨ (822≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step119HeadFv_Outgoing : rowsOwned s2Step119HeadFvAfter [s2Step119HeadFvOut] :=
  hmrRows_owned_drop s2Step119HeadFvAfter [s2Step119HeadGOut,s2Step119HeadFOut,s2Step119HeadGvOut,s2Step119HeadFvOut] 3 s2Step119HeadBank_outgoingOwned

private theorem s2Step119HeadFv_distinct : (s2Step119HeadFvRow.sign::s2Step119HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step119HeadFv_owned : (s2Step119HeadFvRow.sign::s2Step119HeadFvRow.payload).toFinset⊆s2Step119HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step119HeadFvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<821) ∨ (822≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step119HeadFv_reserved : s2Step119HeadFvBefore.reserve s2Step119HeadFvFresh.toFinset=some s2Step119HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step119HeadFvFresh,arenaWires]
  · norm_num [s2Step119HeadFvBefore,s2Step119HeadGvAfter,s2Step119HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step119HeadFvAfter,s2Step119HeadFvBefore,s2Step119HeadGvAfter,s2Step119HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step119HeadFv_checked : planRowResizeLog s2Step119HeadFvBefore s2Step119HeadFvRow 74 s2Step119HeadFvFresh=
    some (s2Step119HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821],770⟩,growRow 770 s2Step119HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step119HeadFvBefore s2Step119HeadFvAfter s2Step119HeadFvRow 74 s2Step119HeadFvFresh
    s2Step119HeadFv_distinct s2Step119HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step119HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step119HeadFvRow.payload++s2Step119HeadFvFresh) s2Step119HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step119HeadG_Incoming : rowsOwned s2Step119HeadGBefore [s2Step119HeadGRow,s2Step119HeadFRow,s2Step119HeadGvRow,s2Step119HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step119HeadGRow,s2Step119HeadFRow,s2Step119HeadGvRow,s2Step119HeadFvRow] 0 s2Step119HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step119HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<821) ∨ (822≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step119HeadG_Outgoing : rowsOwned s2Step119HeadFvAfter [s2Step119HeadGOut,s2Step119HeadFOut,s2Step119HeadGvOut,s2Step119HeadFvOut] :=
  hmrRows_owned_drop s2Step119HeadFvAfter [s2Step119HeadGOut,s2Step119HeadFOut,s2Step119HeadGvOut,s2Step119HeadFvOut] 0 s2Step119HeadBank_outgoingOwned

private theorem s2Step119HeadG_distinct : (s2Step119HeadGRow.sign::s2Step119HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step119HeadG_owned : (s2Step119HeadGRow.sign::s2Step119HeadGRow.payload).toFinset⊆s2Step119HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step119HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<821) ∨ (822≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step119HeadG_reserved : s2Step119HeadGBefore.reserve s2Step119HeadGFresh.toFinset=some s2Step119HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step119HeadGFresh,arenaWires]
  · norm_num [s2Step119HeadGBefore,s2Step119HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step119HeadGAfter,s2Step119HeadGBefore,s2Step119HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step119HeadG_checked : planRowResizeLog s2Step119HeadGBefore s2Step119HeadGRow 211 s2Step119HeadGFresh=
    some (s2Step119HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 817],769⟩,growRow 769 s2Step119HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step119HeadGBefore s2Step119HeadGAfter s2Step119HeadGRow 211 s2Step119HeadGFresh
    s2Step119HeadG_distinct s2Step119HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step119HeadG_reserved
  have rowEq : WindowRow.mk (s2Step119HeadGRow.payload++s2Step119HeadGFresh) s2Step119HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 817],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step119HeadGvBefore : Arena := s2Step119HeadFAfter

private theorem s2Step119HeadGv_Incoming : rowsOwned s2Step119HeadGvBefore [s2Step119HeadGvRow,s2Step119HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step119HeadGRow,s2Step119HeadFRow,s2Step119HeadGvRow,s2Step119HeadFvRow] 2 s2Step119HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step119HeadGvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<821) ∨ (822≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step119HeadGv_Outgoing : rowsOwned s2Step119HeadFvAfter [s2Step119HeadGvOut,s2Step119HeadFvOut] :=
  hmrRows_owned_drop s2Step119HeadFvAfter [s2Step119HeadGOut,s2Step119HeadFOut,s2Step119HeadGvOut,s2Step119HeadFvOut] 2 s2Step119HeadBank_outgoingOwned

private theorem s2Step119HeadGv_distinct : (s2Step119HeadGvRow.sign::s2Step119HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step119HeadGv_owned : (s2Step119HeadGvRow.sign::s2Step119HeadGvRow.payload).toFinset⊆s2Step119HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step119HeadGvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<821) ∨ (822≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step119HeadGv_reserved : s2Step119HeadGvBefore.reserve s2Step119HeadGvFresh.toFinset=some s2Step119HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step119HeadGvFresh,arenaWires]
  · norm_num [s2Step119HeadGvBefore,s2Step119HeadFAfter,s2Step119HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step119HeadGvAfter,s2Step119HeadGvBefore,s2Step119HeadFAfter,s2Step119HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step119HeadGv_checked : planRowResizeLog s2Step119HeadGvBefore s2Step119HeadGvRow 74 s2Step119HeadGvFresh=
    some (s2Step119HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 807],771⟩,growRow 771 s2Step119HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step119HeadGvBefore s2Step119HeadGvAfter s2Step119HeadGvRow 74 s2Step119HeadGvFresh
    s2Step119HeadGv_distinct s2Step119HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step119HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step119HeadGvRow.payload++s2Step119HeadGvFresh) s2Step119HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 807],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step119HeadBank_rows : planWindowRowsLog s2Step119HeadGBefore [(s2Step119HeadGRow,211),(s2Step119HeadFRow,211),(s2Step119HeadGvRow,74),(s2Step119HeadFvRow,74)] [s2Step119HeadGFresh,s2Step119HeadFFresh,s2Step119HeadGvFresh,s2Step119HeadFvFresh]=
    some (s2Step119HeadFvAfter,[s2Step119HeadGOut,s2Step119HeadFOut,s2Step119HeadGvOut,s2Step119HeadFvOut],(growRow 769 s2Step119HeadGFresh ++ (growRow 768 s2Step119HeadFFresh ++ (growRow 771 s2Step119HeadGvFresh ++ (growRow 770 s2Step119HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step119HeadFvAfter [] []=some (s2Step119HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step119HeadFvBefore s2Step119HeadFvAfter s2Step119HeadFvAfter
    s2Step119HeadFvRow s2Step119HeadFvOut 74 s2Step119HeadFvFresh [] [] []
    (growRow 770 s2Step119HeadFvFresh) ([]) s2Step119HeadFv_Incoming s2Step119HeadFv_checked h4 s2Step119HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step119HeadGvBefore s2Step119HeadGvAfter s2Step119HeadFvAfter
    s2Step119HeadGvRow s2Step119HeadGvOut 74 s2Step119HeadGvFresh [(s2Step119HeadFvRow,74)] [s2Step119HeadFvFresh] [s2Step119HeadFvOut]
    (growRow 771 s2Step119HeadGvFresh) ((growRow 770 s2Step119HeadFvFresh ++ [])) s2Step119HeadGv_Incoming s2Step119HeadGv_checked h3 s2Step119HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step119HeadFBefore s2Step119HeadFAfter s2Step119HeadFvAfter
    s2Step119HeadFRow s2Step119HeadFOut 211 s2Step119HeadFFresh [(s2Step119HeadGvRow,74),(s2Step119HeadFvRow,74)] [s2Step119HeadGvFresh,s2Step119HeadFvFresh] [s2Step119HeadGvOut,s2Step119HeadFvOut]
    (growRow 768 s2Step119HeadFFresh) ((growRow 771 s2Step119HeadGvFresh ++ (growRow 770 s2Step119HeadFvFresh ++ []))) s2Step119HeadF_Incoming s2Step119HeadF_checked h2 s2Step119HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step119HeadGBefore s2Step119HeadGAfter s2Step119HeadFvAfter
    s2Step119HeadGRow s2Step119HeadGOut 211 s2Step119HeadGFresh [(s2Step119HeadFRow,211),(s2Step119HeadGvRow,74),(s2Step119HeadFvRow,74)] [s2Step119HeadFFresh,s2Step119HeadGvFresh,s2Step119HeadFvFresh] [s2Step119HeadFOut,s2Step119HeadGvOut,s2Step119HeadFvOut]
    (growRow 769 s2Step119HeadGFresh) ((growRow 768 s2Step119HeadFFresh ++ (growRow 771 s2Step119HeadGvFresh ++ (growRow 770 s2Step119HeadFvFresh ++ [])))) s2Step119HeadG_Incoming s2Step119HeadG_checked h1 s2Step119HeadG_Outgoing
  exact h0

private theorem s2Step119HeadBank_checked : compileHmrBankResizeLog .headroom s2Step119HeadGBefore ⟨s2Step119HeadFRow,s2Step119HeadGRow,s2Step119HeadFvRow,s2Step119HeadGvRow⟩ ⟨211,211,74,74⟩ [s2Step119HeadGFresh,s2Step119HeadFFresh,s2Step119HeadGvFresh,s2Step119HeadFvFresh]=
    some (s2Step119HeadFvAfter,⟨s2Step119HeadFOut,s2Step119HeadGOut,s2Step119HeadFvOut,s2Step119HeadGvOut⟩,(growRow 769 s2Step119HeadGFresh ++ (growRow 768 s2Step119HeadFFresh ++ (growRow 771 s2Step119HeadGvFresh ++ (growRow 770 s2Step119HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step119HeadBank_rows]
  rfl

private theorem s2Step119Front_checked : compileHmrSourceFrontLog s2Step119EntryFBefore s2Step119FrontBank 210 73 ⟨210,209,74,73⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step119FrontLog=some s2Step119FrontPlan := by
  have pairEq : s2Step119FrontPair=⟨s2Step119HeadFRow,s2Step119HeadGRow,s2Step119HeadFvRow,s2Step119HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step119FrontHead=⟨s2Step119ExitFRow,s2Step119ExitGRow,s2Step119ExitFvRow,s2Step119ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step119Add0A=s2Step119FrontHead.f.wires := by decide +kernel
  have gEq : s2Step119Add0B=s2Step119FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step119Add1A=s2Step119FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step119Add1B=s2Step119FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step119EntryFBefore s2Step119FrontBank 210 73 ⟨210,209,74,73⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step119FrontLog s2Step119FrontPlan
  · exact s2Step119Front_entry
  · exact s2Step119EntryBank_checked
  · exact s2Step119Front_sigma
  · rfl
  · exact s2Step119Front_branch
  · rfl
  · simpa only [s2Step119FrontPlan,pairEq] using s2Step119HeadBank_checked
  · simpa only [s2Step119FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step119F4_checked
  · exact s2Step119Counter_checked
  · rfl
  · simpa only [s2Step119FrontPlan,headEq] using s2Step119ExitBank_checked

private theorem s2Step119Complete_explicit_checked : compileHmrEarlyStepLog s2Step119EntryFBefore s2Step119FrontBank 210 73 ⟨210,209,74,73⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step119CompleteLog=some s2Step119CompletePlan := by
  let Q := s2Step119EarlyControlPlan
  have hq := s2Step119EarlyControl_plan_checked
  have fv1 : s2Step119CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step119CompleteOut.fv.payload[2]?.getD s2Step119CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step119CompleteOut.fv.payload[3]?.getD s2Step119CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step119CompleteOut.fv.payload[4]?.getD s2Step119CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step119EntryFBefore s2Step119EarlyControlArena s2Step119FrontBank 210 73 ⟨210,209,74,73⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step119CompleteLog s2Step119FrontPlan Q
    s2Step119Front_checked s2Step119Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step119Complete_owned s2Step119Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step119EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 819 s2Step119CompleteOut.fv.second (s2Step119CompleteOut.fv.payload[2]?.getD s2Step119CompleteOut.fv.sign) (s2Step119CompleteOut.fv.payload[3]?.getD s2Step119CompleteOut.fv.sign) (s2Step119CompleteOut.fv.payload[4]?.getD s2Step119CompleteOut.fv.sign) 815 37 s2Step119EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep119Arena : Arena := s2Step119EntryFBefore
def s2PrivateStep119Bank : WindowBank := s2Step119FrontBank
def s2PrivateStep119Spec : HmrSourceWalkStepLog := ⟨210,73,⟨210,209,74,73⟩,37,.early s2Step119CompleteLog⟩
def s2PrivateStep119Plan : HmrSourceStepPlan := .early s2Step119CompletePlan
theorem s2PrivateStep119_source : s2PrivateStep119Spec=s2ObservedLogs112[7] := rfl
theorem s2PrivateStep119_checked : compileHmrSourceStepLog s2PrivateStep119Arena s2PrivateStep119Bank
    s2PrivateStep119Spec.fgWidth s2PrivateStep119Spec.vWidth s2PrivateStep119Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881]
    6 498 119 s2PrivateStep119Spec.need none s2PrivateStep119Spec.log=some s2PrivateStep119Plan := by
  change compileHmrSourceStepLog s2Step119EntryFBefore s2Step119FrontBank 210 73 ⟨210,209,74,73⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 6 498 119 37 none (.early s2Step119CompleteLog)=some (.early s2Step119CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 119<498)]
  rw [s2Step119Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
