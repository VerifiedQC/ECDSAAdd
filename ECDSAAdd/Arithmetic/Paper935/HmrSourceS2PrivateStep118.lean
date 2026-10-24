import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep116
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

private def s2Step118CompleteMoves : List (Wire × Wire) := [(817,210)]

private def s2Step118EarlyControlLog : HmrEarlyControlLog := ⟨[817, 781, 807, 821, 792],[849],[806],[802, 867, 877, 879, 882, 883],[]⟩

private def s2Step118FrontLog : HmrFrontAllocationLog := ⟨⟨[[781], [], [], []],[[821], [807], [794], [846]],[[], [], [], []]⟩,[815],[819],[792],[849],[806, 802, 867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[806, 802, 867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[792, 849, 806, 802]⟩

private def s2Step118CompleteLog : HmrEarlyStepLog := ⟨s2Step118FrontLog,s2Step118CompleteMoves,s2Step118EarlyControlLog⟩

private def s2Step118ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721],768⟩

private def s2Step118ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846],770⟩

private def s2Step118ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209],769⟩

private def s2Step118ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794],771⟩

private def s2Step118FrontOut : WindowBank := ⟨s2Step118ExitFOut,s2Step118ExitGOut,s2Step118ExitFvOut,s2Step118ExitGvOut⟩

private def s2Step118CompleteOut : WindowBank := s2Step118FrontOut.repacked s2Step118CompleteMoves

private def s2Step118EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<821) ∨ (822≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step118EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step118EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step118EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step118EarlyControlPositiveArena,[849],s2Step118EarlyControlEqualityArena,[806],⟨⟨815,false⟩,[⟨⟨849,false⟩,806⟩]⟩⟩

private def s2Step118EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<884)),Finset.filter_subset _ _⟩

private def s2Step118EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<884)),Finset.filter_subset _ _⟩

private def s2Step118EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<821) ∨ (822≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step118EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<819) ∨ (820≤q ∧ q<821) ∨ (822≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step118EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<821) ∨ (822≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step118EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step118EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,817⟩,⟨⟨774,false⟩,781⟩,⟨⟨775,false⟩,807⟩,⟨⟨776,false⟩,821⟩,⟨⟨777,false⟩,792⟩]⟩

private def s2Step118EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step118EarlyControlZeroArena,s2Step118EarlyControlZeroPlan,s2Step118EarlyControlClassPlan,s2Step118EarlyControlFlagArena,s2Step118EarlyControlFittedArena,s2Step118EarlyControlHistoryArena,s2Step118EarlyControlSigmaArena,s2Step118EarlyControlOutputArena,s2Step118EarlyControlLog⟩

private def s2Step118CounterWork : List Wire := [792, 849, 806, 802]

private theorem s2Step118Counter_bounded : s2Step118CounterWork.toFinset⊆arenaWires := by norm_num [s2Step118CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step118HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step118CounterDuring : Arena := ⟨s2Step118HeadFvAfter.live∪s2Step118CounterWork.toFinset,Finset.union_subset s2Step118HeadFvAfter.bounded s2Step118Counter_bounded⟩

private def s2Step118EntryFFresh : List Wire := [781]

private def s2Step118EntryFvFresh : List Wire := []

private def s2Step118EntryGFresh : List Wire := []

private def s2Step118EntryFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<819) ∨ (820≤q ∧ q<821) ∨ (822≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step118EntryGvAfter : Arena := s2Step118EntryFAfter

private def s2Step118EntryGvFresh : List Wire := []

private def s2Step118ExitFExtra : List Wire := [781, 807]

private def s2Step118ExitGExtra : List Wire := [210, 821]

private def s2Step118ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<210) ∨ (211≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<821) ∨ (822≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step118ExitGvAfter : Arena := s2Step118ExitFAfter

private def s2Step118Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step118Add0Work : List Wire := [806, 802, 867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step118Add0_bounded : s2Step118Add0Work.toFinset⊆arenaWires := by
  have h : s2Step118Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step118Add0During : Arena := ⟨s2Step118Add0Arena.live∪s2Step118Add0Work.toFinset,Finset.union_subset s2Step118Add0Arena.bounded s2Step118Add0_bounded⟩

private def s2Step118Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step118Add1Work : List Wire := [806, 802, 867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step118Add1_bounded : s2Step118Add1Work.toFinset⊆arenaWires := by
  have h : s2Step118Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step118Add1During : Arena := ⟨s2Step118Add1Arena.live∪s2Step118Add1Work.toFinset,Finset.union_subset s2Step118Add1Arena.bounded s2Step118Add1_bounded⟩

private def s2Step118F4FlagArena : Arena := ⟨s2Step118HeadFvAfter.live∪{792},Finset.union_subset s2Step118HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step118F4Plan : HmrHybridF4Plan := ⟨s2Step118F4FlagArena,[792],s2Step118Add0Arena,[849],s2Step118Add0During,s2Step118Add0Work,s2Step118Add1During,s2Step118Add1Work⟩

private def s2Step118HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 781, 807],768⟩

private def s2Step118HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846],770⟩

private def s2Step118HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 821],769⟩

private def s2Step118HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794],771⟩

private def s2Step118FrontHead : WindowBank := ⟨s2Step118HeadFOut,s2Step118HeadGOut,s2Step118HeadFvOut,s2Step118HeadGvOut⟩

private def s2Step118EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 781],768⟩

private def s2Step118EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809],770⟩

private def s2Step118EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210],769⟩

private def s2Step118EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805],771⟩

private def s2Step118FrontPair : WindowBank := ⟨s2Step118EntryFOut,s2Step118EntryGOut,s2Step118EntryFvOut,s2Step118EntryGvOut⟩

private def s2Step118FrontSigmaArena : Arena := ⟨s2Step118EntryGvAfter.live∪{815},Finset.union_subset s2Step118EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step118HeadFFresh : List Wire := [807]

private def s2Step118HeadFvFresh : List Wire := [846]

private def s2Step118HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<821) ∨ (822≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step118HeadGFresh : List Wire := [821]

private def s2Step118HeadGvFresh : List Wire := [794]

private def s2Step118FrontPlan : HmrSourceFront := ⟨s2Step118EntryGvAfter,s2Step118FrontPair,(growRow 768 s2Step118EntryFFresh ++ (growRow 769 s2Step118EntryGFresh ++ (growRow 770 s2Step118EntryFvFresh ++ (growRow 771 s2Step118EntryGvFresh ++ [])))),s2Step118FrontSigmaArena,[815],s2Step118HeadGBefore,[819],
  s2Step118HeadFvAfter,s2Step118FrontHead,(growRow 769 s2Step118HeadGFresh ++ (growRow 768 s2Step118HeadFFresh ++ (growRow 771 s2Step118HeadGvFresh ++ (growRow 770 s2Step118HeadFvFresh ++ [])))),s2Step118F4Plan,s2Step118CounterDuring,s2Step118CounterWork,s2Step118ExitGvAfter,s2Step118FrontOut,(shrinkRow 769 s2Step118ExitGExtra ++ (shrinkRow 768 s2Step118ExitFExtra ++ (growRow 770 [] ++ (growRow 771 [] ++ []))))⟩

private def s2Step118CompletePlan : HmrEarlyStepPlan := ⟨s2Step118FrontPlan,s2Step118EarlyControlArena,s2Step118EarlyControlPlan,s2Step118CompleteMoves⟩

private theorem s2Step118Complete_apart : List.Disjoint (s2Step118CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [815, 819, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] := by
  have nd : ((s2Step118CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[815, 819, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step118Complete_owned : (s2Step118CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step118EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step118EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<821) ∨ (822≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private def s2Step118CompleteMoveArena : Arena := ⟨s2Step118ExitGvAfter.live∪{210},Finset.union_subset s2Step118ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step118Complete_repack : s2Step118ExitGvAfter.checkRepack s2Step118CompleteMoves=some s2Step118EarlyControlArena := by
  have owned : 817∈s2Step118ExitGvAfter.live := by norm_num [s2Step118ExitGvAfter,s2Step118ExitFAfter,arenaWires]
  have reserve : s2Step118ExitGvAfter.reserve {210}=some s2Step118CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step118ExitGvAfter,s2Step118ExitFAfter,arenaWires]
    · rfl
  have retired : s2Step118CompleteMoveArena.retireSet {817}=s2Step118EarlyControlArena := by
    unfold Arena.retireSet s2Step118EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step118CompleteMoveArena,s2Step118ExitGvAfter,s2Step118ExitFAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step118CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step118CompleteMoveArena.retireSet {817}).checkRepack []=some s2Step118EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step118EarlyControl_branchOwned : ([819] : List Wire).toFinset⊆s2Step118EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step118EarlyControlSigmaArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<821) ∨ (822≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step118EarlyControl_branch : compileHmrBranchRetirement s2Step118EarlyControlSigmaArena 819=some s2Step118EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step118EarlyControl_branchOwned
  · ext q
    simp [s2Step118EarlyControlOutputArena,s2Step118EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step118EarlyControl_classEqualityBorrow : s2Step118EarlyControlPositiveArena.checkBorrow (([815, 849] : List Wire).length-1) s2Step118EarlyControlLog.classWork=some s2Step118EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step118EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step118EarlyControlPositiveArena (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step118EarlyControlEqualityArena,s2Step118EarlyControlPositiveArena,s2Step118EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step118EarlyControl_classEqualityOwned : ([815, 849] : List Wire).toFinset⊆s2Step118EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step118EarlyControlPositiveArena (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step118EarlyControl_classEquality : compileHmrEqualityLog s2Step118EarlyControlPositiveArena [815, 849] 0 s2Step118EarlyControlLog.classWork=some (s2Step118EarlyControlEqualityArena,s2Step118EarlyControlLog.classWork,s2Step118EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step118EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step118EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step118EarlyControl_classOwned : ([777, 792, 815] : List Wire).toFinset⊆s2Step118EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step118EarlyControlZeroArena (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step118EarlyControl_positiveBorrow : s2Step118EarlyControlZeroArena.checkBorrow (1) s2Step118EarlyControlLog.positiveWork=some s2Step118EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step118EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step118EarlyControlZeroArena (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step118EarlyControlPositiveArena,s2Step118EarlyControlZeroArena,s2Step118EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step118EarlyControl_class : compileHmrSourceClassLog s2Step118EarlyControlZeroArena false 777 s2Step118EarlyControlZeroPlan.top 0 815 s2Step118EarlyControlLog.positiveWork s2Step118EarlyControlLog.classWork=some s2Step118EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step118EarlyControlClassPlan s2Step118EarlyControlZeroArena false 777 s2Step118EarlyControlZeroPlan.top 0 815
  constructor
  · decide +kernel
  · exact s2Step118EarlyControl_classOwned
  · exact s2Step118EarlyControl_positiveBorrow
  · exact s2Step118EarlyControl_classEquality

private theorem s2Step118EarlyControl_entryRecordOwned : ([819, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).toFinset⊆s2Step118EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step118EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<821) ∨ (822≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step118EarlyControl_entrySigmaOwned : ([815, 254] : List Wire).toFinset⊆s2Step118EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step118EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<821) ∨ (822≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step118EarlyControl_fitBorrow : s2Step118EarlyControlFlagArena.checkBorrow ((37-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).length)) s2Step118EarlyControlLog.recordFresh=some s2Step118EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step118EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step118EarlyControlFlagArena (fun q => (0≤q ∧ q<884)) rfl
      decide +kernel
    · ext q
      simp [s2Step118EarlyControlFittedArena,s2Step118EarlyControlFlagArena,s2Step118EarlyControlLog,arenaWires]

private theorem s2Step118EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).toFinset⊆s2Step118EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step118EarlyControlFlagArena (fun q => (0≤q ∧ q<884)) rfl
  decide +kernel

private theorem s2Step118EarlyControl_fit : compileHmrRecordGrowLog s2Step118EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step118EarlyControlLog.recordFresh=some s2Step118EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step118EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step118EarlyControl_fitBorrow

private theorem s2Step118EarlyControl_flagsBorrow : s2Step118EarlyControlEqualityArena.checkBorrow (6) s2Step118EarlyControlLog.flagWork=some s2Step118EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step118EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step118EarlyControlEqualityArena (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step118EarlyControlFlagArena,s2Step118EarlyControlEqualityArena,s2Step118EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step118EarlyControl_flagsOwned : ([806, 253, 252, 251] : List Wire).toFinset⊆s2Step118EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step118EarlyControlEqualityArena (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step118EarlyControl_flags : compileHmrFlagsLog s2Step118EarlyControlClassPlan.equalityArena s2Step118EarlyControlClassPlan.equality.top 253 252 251 s2Step118EarlyControlLog.flagWork=some s2Step118EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step118EarlyControl_flagsOwned⟩
  · exact s2Step118EarlyControl_flagsBorrow

private theorem s2Step118EarlyControl_historyBorrow : s2Step118EarlyControlArena.checkBorrow ((37-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).length)) s2Step118EarlyControlLog.recordFresh=some s2Step118EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step118EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step118EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<821) ∨ (822≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step118EarlyControlHistoryArena,s2Step118EarlyControlArena,s2Step118EarlyControlLog,arenaWires]

private theorem s2Step118EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).toFinset⊆s2Step118EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step118EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<821) ∨ (822≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step118EarlyControl_history : compileHmrRecordGrowLog s2Step118EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step118EarlyControlLog.recordFresh=some s2Step118EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step118EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step118EarlyControl_historyBorrow

private theorem s2Step118EarlyControl_sigmaOwned : ([254, 815] : List Wire).toFinset⊆s2Step118EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step118EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<821) ∨ (822≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step118EarlyControl_sigmaReleaseOwned : ([815] : List Wire).toFinset⊆s2Step118EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step118EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<821) ∨ (822≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step118EarlyControl_sigmaRelease : s2Step118EarlyControlHistoryArena.release {815} (fun _ => false)=some s2Step118EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step118EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step118EarlyControlSigmaArena,s2Step118EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step118EarlyControl_sigma : compileHmrSigmaDropLog s2Step118EarlyControlHistoryArena false 0 0 254 815 []=some s2Step118EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step118EarlyControl_sigmaOwned⟩
  · exact s2Step118EarlyControl_sigmaRelease

private theorem s2Step118EarlyControl_zeroBorrow : s2Step118EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step118EarlyControlLog.zeroWork=some s2Step118EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step118EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step118EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<821) ∨ (822≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step118EarlyControlZeroArena,s2Step118EarlyControlArena,s2Step118EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step118EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step118EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step118EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<821) ∨ (822≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step118EarlyControl_zero : compileHmrEqualityLog s2Step118EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step118EarlyControlLog.zeroWork=some (s2Step118EarlyControlZeroArena,s2Step118EarlyControlLog.zeroWork,s2Step118EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step118EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step118EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step118EarlyControl_logged : s2Step118EarlyControlPlan.Logged s2Step118EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 815 254 253 252 251 819 37 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step118EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step118EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step118EarlyControl_zero
  · exact s2Step118EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step118EarlyControl_flags
  · exact s2Step118EarlyControl_fit
  · exact s2Step118EarlyControl_history
  · exact s2Step118EarlyControl_sigma
  · exact s2Step118EarlyControl_branch

private theorem s2Step118EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step118EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 815 254 253 252 251 819 37 s2Step118EarlyControlLog=some s2Step118EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step118EarlyControlPlan s2Step118EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 815 254 253 252 251 819 37 s2Step118EarlyControl_logged

private def s2Step118EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<819) ∨ (820≤q ∧ q<821) ∨ (822≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step118EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721],768⟩

private def s2Step118EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809],770⟩

private def s2Step118EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210],769⟩

private def s2Step118EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805],771⟩

private def s2Step118FrontBank : WindowBank := ⟨s2Step118EntryFRow,s2Step118EntryGRow,s2Step118EntryFvRow,s2Step118EntryGvRow⟩

private def s2Step118Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 781, 807, 768]

private def s2Step118Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 821, 769]

private def s2Step118Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 770]

private def s2Step118Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 771]

private theorem s2Step118Counter_apart : Disjoint s2Step118HeadFvAfter.live s2Step118CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step118HeadFvAfter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step118Counter_borrowed : s2Step118HeadFvAfter.checkBorrow 4 s2Step118CounterWork=some s2Step118CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step118HeadFvAfter s2Step118CounterDuring s2Step118CounterWork.toFinset s2Step118Counter_bounded s2Step118Counter_apart rfl

private theorem s2Step118Counter_owned : (815::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step118HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step118HeadFvAfter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step118Counter_checked : compileHmrCounterStepLog s2Step118HeadFvAfter true 815 [772, 773, 774, 775, 776, 777] s2Step118CounterWork=some s2Step118CounterDuring := by
  have owned : ∀q∈815::[772, 773, 774, 775, 776, 777],q∈s2Step118HeadFvAfter.live := fun q hq => s2Step118Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step118Counter_borrowed

private theorem s2Step118EntryBank_incomingDistinct : ([s2Step118EntryFRow,s2Step118EntryGRow,s2Step118EntryFvRow,s2Step118EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step118EntryF_Incoming : rowsOwned s2Step118EntryFBefore [s2Step118EntryFRow,s2Step118EntryGRow,s2Step118EntryFvRow,s2Step118EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step118EntryFRow,s2Step118EntryGRow,s2Step118EntryFvRow,s2Step118EntryGvRow] 0 s2Step118EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step118EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<819) ∨ (820≤q ∧ q<821) ∨ (822≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step118EntryBank_outgoingOwned : rowsOwned s2Step118EntryGvAfter [s2Step118EntryFOut,s2Step118EntryGOut,s2Step118EntryFvOut,s2Step118EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step118EntryGvAfter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<819) ∨ (820≤q ∧ q<821) ∨ (822≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step118EntryF_Outgoing : rowsOwned s2Step118EntryGvAfter [s2Step118EntryFOut,s2Step118EntryGOut,s2Step118EntryFvOut,s2Step118EntryGvOut] :=
  hmrRows_owned_drop s2Step118EntryGvAfter [s2Step118EntryFOut,s2Step118EntryGOut,s2Step118EntryFvOut,s2Step118EntryGvOut] 0 s2Step118EntryBank_outgoingOwned

private theorem s2Step118EntryF_distinct : (s2Step118EntryFRow.sign::s2Step118EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step118EntryF_owned : (s2Step118EntryFRow.sign::s2Step118EntryFRow.payload).toFinset⊆s2Step118EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step118EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<819) ∨ (820≤q ∧ q<821) ∨ (822≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step118EntryF_reserved : s2Step118EntryFBefore.reserve s2Step118EntryFFresh.toFinset=some s2Step118EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step118EntryFFresh,arenaWires]
  · norm_num [s2Step118EntryFBefore,s2Step118EntryFFresh,arenaWires]
  · ext q
    simp only [s2Step118EntryFAfter,s2Step118EntryFBefore,s2Step118EntryFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step118EntryF_checked : planRowResizeLog s2Step118EntryFBefore s2Step118EntryFRow 211 s2Step118EntryFFresh=
    some (s2Step118EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 781],768⟩,growRow 768 s2Step118EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step118EntryFBefore s2Step118EntryFAfter s2Step118EntryFRow 211 s2Step118EntryFFresh
    s2Step118EntryF_distinct s2Step118EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step118EntryF_reserved
  have rowEq : WindowRow.mk (s2Step118EntryFRow.payload++s2Step118EntryFFresh) s2Step118EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 781],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step118EntryFvAfter : Arena := s2Step118EntryFAfter

private def s2Step118EntryFvBefore : Arena := s2Step118EntryFAfter

private theorem s2Step118EntryFv_Incoming : rowsOwned s2Step118EntryFvBefore [s2Step118EntryFvRow,s2Step118EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step118EntryFRow,s2Step118EntryGRow,s2Step118EntryFvRow,s2Step118EntryGvRow] 2 s2Step118EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step118EntryFvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<819) ∨ (820≤q ∧ q<821) ∨ (822≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step118EntryFv_Outgoing : rowsOwned s2Step118EntryGvAfter [s2Step118EntryFvOut,s2Step118EntryGvOut] :=
  hmrRows_owned_drop s2Step118EntryGvAfter [s2Step118EntryFOut,s2Step118EntryGOut,s2Step118EntryFvOut,s2Step118EntryGvOut] 2 s2Step118EntryBank_outgoingOwned

private theorem s2Step118EntryFv_distinct : (s2Step118EntryFvRow.sign::s2Step118EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step118EntryFv_owned : (s2Step118EntryFvRow.sign::s2Step118EntryFvRow.payload).toFinset⊆s2Step118EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step118EntryFvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<819) ∨ (820≤q ∧ q<821) ∨ (822≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step118EntryFv_reserved : s2Step118EntryFvBefore.reserve s2Step118EntryFvFresh.toFinset=some s2Step118EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step118EntryFvFresh,arenaWires]
  · norm_num [s2Step118EntryFvBefore,s2Step118EntryFAfter,s2Step118EntryFvFresh,arenaWires]
  · simp only [s2Step118EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step118EntryFv_checked : planRowResizeLog s2Step118EntryFvBefore s2Step118EntryFvRow 72 s2Step118EntryFvFresh=
    some (s2Step118EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809],770⟩,growRow 770 s2Step118EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step118EntryFvBefore s2Step118EntryFvAfter s2Step118EntryFvRow 72 s2Step118EntryFvFresh
    s2Step118EntryFv_distinct s2Step118EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step118EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step118EntryFvRow.payload++s2Step118EntryFvFresh) s2Step118EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step118EntryGAfter : Arena := s2Step118EntryFAfter

private def s2Step118EntryGBefore : Arena := s2Step118EntryFAfter

private theorem s2Step118EntryG_Incoming : rowsOwned s2Step118EntryGBefore [s2Step118EntryGRow,s2Step118EntryFvRow,s2Step118EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step118EntryFRow,s2Step118EntryGRow,s2Step118EntryFvRow,s2Step118EntryGvRow] 1 s2Step118EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step118EntryGBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<819) ∨ (820≤q ∧ q<821) ∨ (822≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step118EntryG_Outgoing : rowsOwned s2Step118EntryGvAfter [s2Step118EntryGOut,s2Step118EntryFvOut,s2Step118EntryGvOut] :=
  hmrRows_owned_drop s2Step118EntryGvAfter [s2Step118EntryFOut,s2Step118EntryGOut,s2Step118EntryFvOut,s2Step118EntryGvOut] 1 s2Step118EntryBank_outgoingOwned

private theorem s2Step118EntryG_distinct : (s2Step118EntryGRow.sign::s2Step118EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step118EntryG_owned : (s2Step118EntryGRow.sign::s2Step118EntryGRow.payload).toFinset⊆s2Step118EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step118EntryGBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<819) ∨ (820≤q ∧ q<821) ∨ (822≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step118EntryG_reserved : s2Step118EntryGBefore.reserve s2Step118EntryGFresh.toFinset=some s2Step118EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step118EntryGFresh,arenaWires]
  · norm_num [s2Step118EntryGBefore,s2Step118EntryFAfter,s2Step118EntryGFresh,arenaWires]
  · simp only [s2Step118EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step118EntryG_checked : planRowResizeLog s2Step118EntryGBefore s2Step118EntryGRow 211 s2Step118EntryGFresh=
    some (s2Step118EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210],769⟩,growRow 769 s2Step118EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step118EntryGBefore s2Step118EntryGAfter s2Step118EntryGRow 211 s2Step118EntryGFresh
    s2Step118EntryG_distinct s2Step118EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step118EntryG_reserved
  have rowEq : WindowRow.mk (s2Step118EntryGRow.payload++s2Step118EntryGFresh) s2Step118EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step118EntryGvBefore : Arena := s2Step118EntryFAfter

private theorem s2Step118EntryGv_Incoming : rowsOwned s2Step118EntryGvBefore [s2Step118EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step118EntryFRow,s2Step118EntryGRow,s2Step118EntryFvRow,s2Step118EntryGvRow] 3 s2Step118EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step118EntryGvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<819) ∨ (820≤q ∧ q<821) ∨ (822≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step118EntryGv_Outgoing : rowsOwned s2Step118EntryGvAfter [s2Step118EntryGvOut] :=
  hmrRows_owned_drop s2Step118EntryGvAfter [s2Step118EntryFOut,s2Step118EntryGOut,s2Step118EntryFvOut,s2Step118EntryGvOut] 3 s2Step118EntryBank_outgoingOwned

private theorem s2Step118EntryGv_distinct : (s2Step118EntryGvRow.sign::s2Step118EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step118EntryGv_owned : (s2Step118EntryGvRow.sign::s2Step118EntryGvRow.payload).toFinset⊆s2Step118EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step118EntryGvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<819) ∨ (820≤q ∧ q<821) ∨ (822≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step118EntryGv_reserved : s2Step118EntryGvBefore.reserve s2Step118EntryGvFresh.toFinset=some s2Step118EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step118EntryGvFresh,arenaWires]
  · norm_num [s2Step118EntryGvBefore,s2Step118EntryFAfter,s2Step118EntryGvFresh,arenaWires]
  · simp only [s2Step118EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step118EntryGv_checked : planRowResizeLog s2Step118EntryGvBefore s2Step118EntryGvRow 72 s2Step118EntryGvFresh=
    some (s2Step118EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805],771⟩,growRow 771 s2Step118EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step118EntryGvBefore s2Step118EntryGvAfter s2Step118EntryGvRow 72 s2Step118EntryGvFresh
    s2Step118EntryGv_distinct s2Step118EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step118EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step118EntryGvRow.payload++s2Step118EntryGvFresh) s2Step118EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step118EntryBank_rows : planWindowRowsLog s2Step118EntryFBefore [(s2Step118EntryFRow,211),(s2Step118EntryGRow,211),(s2Step118EntryFvRow,72),(s2Step118EntryGvRow,72)] [s2Step118EntryFFresh,s2Step118EntryGFresh,s2Step118EntryFvFresh,s2Step118EntryGvFresh]=
    some (s2Step118EntryGvAfter,[s2Step118EntryFOut,s2Step118EntryGOut,s2Step118EntryFvOut,s2Step118EntryGvOut],(growRow 768 s2Step118EntryFFresh ++ (growRow 769 s2Step118EntryGFresh ++ (growRow 770 s2Step118EntryFvFresh ++ (growRow 771 s2Step118EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step118EntryGvAfter [] []=some (s2Step118EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step118EntryGvBefore s2Step118EntryGvAfter s2Step118EntryGvAfter
    s2Step118EntryGvRow s2Step118EntryGvOut 72 s2Step118EntryGvFresh [] [] []
    (growRow 771 s2Step118EntryGvFresh) ([]) s2Step118EntryGv_Incoming s2Step118EntryGv_checked h4 s2Step118EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step118EntryFvBefore s2Step118EntryFvAfter s2Step118EntryGvAfter
    s2Step118EntryFvRow s2Step118EntryFvOut 72 s2Step118EntryFvFresh [(s2Step118EntryGvRow,72)] [s2Step118EntryGvFresh] [s2Step118EntryGvOut]
    (growRow 770 s2Step118EntryFvFresh) ((growRow 771 s2Step118EntryGvFresh ++ [])) s2Step118EntryFv_Incoming s2Step118EntryFv_checked h3 s2Step118EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step118EntryGBefore s2Step118EntryGAfter s2Step118EntryGvAfter
    s2Step118EntryGRow s2Step118EntryGOut 211 s2Step118EntryGFresh [(s2Step118EntryFvRow,72),(s2Step118EntryGvRow,72)] [s2Step118EntryFvFresh,s2Step118EntryGvFresh] [s2Step118EntryFvOut,s2Step118EntryGvOut]
    (growRow 769 s2Step118EntryGFresh) ((growRow 770 s2Step118EntryFvFresh ++ (growRow 771 s2Step118EntryGvFresh ++ []))) s2Step118EntryG_Incoming s2Step118EntryG_checked h2 s2Step118EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step118EntryFBefore s2Step118EntryFAfter s2Step118EntryGvAfter
    s2Step118EntryFRow s2Step118EntryFOut 211 s2Step118EntryFFresh [(s2Step118EntryGRow,211),(s2Step118EntryFvRow,72),(s2Step118EntryGvRow,72)] [s2Step118EntryGFresh,s2Step118EntryFvFresh,s2Step118EntryGvFresh] [s2Step118EntryGOut,s2Step118EntryFvOut,s2Step118EntryGvOut]
    (growRow 768 s2Step118EntryFFresh) ((growRow 769 s2Step118EntryGFresh ++ (growRow 770 s2Step118EntryFvFresh ++ (growRow 771 s2Step118EntryGvFresh ++ [])))) s2Step118EntryF_Incoming s2Step118EntryF_checked h1 s2Step118EntryF_Outgoing
  exact h0

private theorem s2Step118EntryBank_checked : compileHmrBankResizeLog .entry s2Step118EntryFBefore ⟨s2Step118EntryFRow,s2Step118EntryGRow,s2Step118EntryFvRow,s2Step118EntryGvRow⟩ ⟨211,211,72,72⟩ [s2Step118EntryFFresh,s2Step118EntryGFresh,s2Step118EntryFvFresh,s2Step118EntryGvFresh]=
    some (s2Step118EntryGvAfter,⟨s2Step118EntryFOut,s2Step118EntryGOut,s2Step118EntryFvOut,s2Step118EntryGvOut⟩,(growRow 768 s2Step118EntryFFresh ++ (growRow 769 s2Step118EntryGFresh ++ (growRow 770 s2Step118EntryFvFresh ++ (growRow 771 s2Step118EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step118EntryBank_rows]
  rfl

private def s2Step118ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<210) ∨ (211≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<821) ∨ (822≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step118ExitFBefore : Arena := s2Step118ExitGAfter

private def s2Step118ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 781, 807],768⟩

private def s2Step118ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846],770⟩

private def s2Step118ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 821],769⟩

private def s2Step118ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794],771⟩

private theorem s2Step118ExitBank_incomingDistinct : ([s2Step118ExitGRow,s2Step118ExitFRow,s2Step118ExitFvRow,s2Step118ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step118ExitF_Incoming : rowsOwned s2Step118ExitFBefore [s2Step118ExitFRow,s2Step118ExitFvRow,s2Step118ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step118ExitGRow,s2Step118ExitFRow,s2Step118ExitFvRow,s2Step118ExitGvRow] 1 s2Step118ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step118ExitFBefore (fun q => (0≤q ∧ q<210) ∨ (211≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<821) ∨ (822≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step118ExitBank_outgoingOwned : rowsOwned s2Step118ExitGvAfter [s2Step118ExitGOut,s2Step118ExitFOut,s2Step118ExitFvOut,s2Step118ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step118ExitGvAfter (fun q => (0≤q ∧ q<210) ∨ (211≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<821) ∨ (822≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step118ExitF_Outgoing : rowsOwned s2Step118ExitGvAfter [s2Step118ExitFOut,s2Step118ExitFvOut,s2Step118ExitGvOut] :=
  hmrRows_owned_drop s2Step118ExitGvAfter [s2Step118ExitGOut,s2Step118ExitFOut,s2Step118ExitFvOut,s2Step118ExitGvOut] 1 s2Step118ExitBank_outgoingOwned

private theorem s2Step118ExitF_distinct : (s2Step118ExitFRow.sign::s2Step118ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step118ExitF_owned : (s2Step118ExitFRow.sign::s2Step118ExitFRow.payload).toFinset⊆s2Step118ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step118ExitFBefore (fun q => (0≤q ∧ q<210) ∨ (211≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<821) ∨ (822≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step118ExitF_retired : s2Step118ExitFBefore.retireSet s2Step118ExitFExtra.toFinset=s2Step118ExitFAfter := by
  unfold Arena.retireSet s2Step118ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step118ExitFBefore,s2Step118ExitGAfter,s2Step118ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step118ExitF_checked : planRowResizeLog s2Step118ExitFBefore s2Step118ExitFRow 210 []=
    some (s2Step118ExitFAfter,s2Step118ExitFOut,shrinkRow 768 s2Step118ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step118ExitFBefore s2Step118ExitFRow 210 s2Step118ExitF_distinct s2Step118ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step118ExitFRow.payload.take 210) s2Step118ExitFRow.sign=s2Step118ExitFOut := by decide +kernel
  have hi : s2Step118ExitFRow.payload.drop 210=s2Step118ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step118ExitF_retired] at result
  exact result

private def s2Step118ExitFvAfter : Arena := s2Step118ExitFAfter

private def s2Step118ExitFvBefore : Arena := s2Step118ExitFAfter

private theorem s2Step118ExitFv_Incoming : rowsOwned s2Step118ExitFvBefore [s2Step118ExitFvRow,s2Step118ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step118ExitGRow,s2Step118ExitFRow,s2Step118ExitFvRow,s2Step118ExitGvRow] 2 s2Step118ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step118ExitFvBefore (fun q => (0≤q ∧ q<210) ∨ (211≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<821) ∨ (822≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step118ExitFv_Outgoing : rowsOwned s2Step118ExitGvAfter [s2Step118ExitFvOut,s2Step118ExitGvOut] :=
  hmrRows_owned_drop s2Step118ExitGvAfter [s2Step118ExitGOut,s2Step118ExitFOut,s2Step118ExitFvOut,s2Step118ExitGvOut] 2 s2Step118ExitBank_outgoingOwned

private theorem s2Step118ExitFv_distinct : (s2Step118ExitFvRow.sign::s2Step118ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step118ExitFv_owned : (s2Step118ExitFvRow.sign::s2Step118ExitFvRow.payload).toFinset⊆s2Step118ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step118ExitFvBefore (fun q => (0≤q ∧ q<210) ∨ (211≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<821) ∨ (822≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step118ExitFv_reserved : s2Step118ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step118ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step118ExitFv_checked : planRowResizeLog s2Step118ExitFvBefore s2Step118ExitFvRow 73 []=
    some (s2Step118ExitFvAfter,s2Step118ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step118ExitFvBefore s2Step118ExitFvAfter s2Step118ExitFvRow 73 []
    s2Step118ExitFv_distinct s2Step118ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step118ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step118ExitFvRow.payload++[]) s2Step118ExitFvRow.sign=s2Step118ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step118ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private theorem s2Step118ExitG_Incoming : rowsOwned s2Step118ExitGBefore [s2Step118ExitGRow,s2Step118ExitFRow,s2Step118ExitFvRow,s2Step118ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step118ExitGRow,s2Step118ExitFRow,s2Step118ExitFvRow,s2Step118ExitGvRow] 0 s2Step118ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step118ExitGBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step118ExitG_Outgoing : rowsOwned s2Step118ExitGvAfter [s2Step118ExitGOut,s2Step118ExitFOut,s2Step118ExitFvOut,s2Step118ExitGvOut] :=
  hmrRows_owned_drop s2Step118ExitGvAfter [s2Step118ExitGOut,s2Step118ExitFOut,s2Step118ExitFvOut,s2Step118ExitGvOut] 0 s2Step118ExitBank_outgoingOwned

private theorem s2Step118ExitG_distinct : (s2Step118ExitGRow.sign::s2Step118ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step118ExitG_owned : (s2Step118ExitGRow.sign::s2Step118ExitGRow.payload).toFinset⊆s2Step118ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step118ExitGBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step118ExitG_retired : s2Step118ExitGBefore.retireSet s2Step118ExitGExtra.toFinset=s2Step118ExitGAfter := by
  unfold Arena.retireSet s2Step118ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step118ExitGBefore,s2Step118ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step118ExitG_checked : planRowResizeLog s2Step118ExitGBefore s2Step118ExitGRow 210 []=
    some (s2Step118ExitGAfter,s2Step118ExitGOut,shrinkRow 769 s2Step118ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step118ExitGBefore s2Step118ExitGRow 210 s2Step118ExitG_distinct s2Step118ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step118ExitGRow.payload.take 210) s2Step118ExitGRow.sign=s2Step118ExitGOut := by decide +kernel
  have hi : s2Step118ExitGRow.payload.drop 210=s2Step118ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step118ExitG_retired] at result
  exact result

private def s2Step118ExitGvBefore : Arena := s2Step118ExitFAfter

private theorem s2Step118ExitGv_Incoming : rowsOwned s2Step118ExitGvBefore [s2Step118ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step118ExitGRow,s2Step118ExitFRow,s2Step118ExitFvRow,s2Step118ExitGvRow] 3 s2Step118ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step118ExitGvBefore (fun q => (0≤q ∧ q<210) ∨ (211≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<821) ∨ (822≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step118ExitGv_Outgoing : rowsOwned s2Step118ExitGvAfter [s2Step118ExitGvOut] :=
  hmrRows_owned_drop s2Step118ExitGvAfter [s2Step118ExitGOut,s2Step118ExitFOut,s2Step118ExitFvOut,s2Step118ExitGvOut] 3 s2Step118ExitBank_outgoingOwned

private theorem s2Step118ExitGv_distinct : (s2Step118ExitGvRow.sign::s2Step118ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step118ExitGv_owned : (s2Step118ExitGvRow.sign::s2Step118ExitGvRow.payload).toFinset⊆s2Step118ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step118ExitGvBefore (fun q => (0≤q ∧ q<210) ∨ (211≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<821) ∨ (822≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step118ExitGv_reserved : s2Step118ExitGvBefore.reserve (∅ : Finset Wire)=some s2Step118ExitGvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step118ExitGv_checked : planRowResizeLog s2Step118ExitGvBefore s2Step118ExitGvRow 73 []=
    some (s2Step118ExitGvAfter,s2Step118ExitGvOut,growRow 771 []) := by
  have result := planRowResizeLog_of_growth s2Step118ExitGvBefore s2Step118ExitGvAfter s2Step118ExitGvRow 73 []
    s2Step118ExitGv_distinct s2Step118ExitGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step118ExitGv_reserved
  have rowEq : WindowRow.mk (s2Step118ExitGvRow.payload++[]) s2Step118ExitGvRow.sign=s2Step118ExitGvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step118ExitBank_rows : planWindowRowsLog s2Step118ExitGBefore [(s2Step118ExitGRow,210),(s2Step118ExitFRow,210),(s2Step118ExitFvRow,73),(s2Step118ExitGvRow,73)] [[],[],[],[]]=
    some (s2Step118ExitGvAfter,[s2Step118ExitGOut,s2Step118ExitFOut,s2Step118ExitFvOut,s2Step118ExitGvOut],(shrinkRow 769 s2Step118ExitGExtra ++ (shrinkRow 768 s2Step118ExitFExtra ++ (growRow 770 [] ++ (growRow 771 [] ++ []))))) := by
  have h4 : planWindowRowsLog s2Step118ExitGvAfter [] []=some (s2Step118ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step118ExitGvBefore s2Step118ExitGvAfter s2Step118ExitGvAfter
    s2Step118ExitGvRow s2Step118ExitGvOut 73 [] [] [] []
    (growRow 771 []) ([]) s2Step118ExitGv_Incoming s2Step118ExitGv_checked h4 s2Step118ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step118ExitFvBefore s2Step118ExitFvAfter s2Step118ExitGvAfter
    s2Step118ExitFvRow s2Step118ExitFvOut 73 [] [(s2Step118ExitGvRow,73)] [[]] [s2Step118ExitGvOut]
    (growRow 770 []) ((growRow 771 [] ++ [])) s2Step118ExitFv_Incoming s2Step118ExitFv_checked h3 s2Step118ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step118ExitFBefore s2Step118ExitFAfter s2Step118ExitGvAfter
    s2Step118ExitFRow s2Step118ExitFOut 210 [] [(s2Step118ExitFvRow,73),(s2Step118ExitGvRow,73)] [[],[]] [s2Step118ExitFvOut,s2Step118ExitGvOut]
    (shrinkRow 768 s2Step118ExitFExtra) ((growRow 770 [] ++ (growRow 771 [] ++ []))) s2Step118ExitF_Incoming s2Step118ExitF_checked h2 s2Step118ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step118ExitGBefore s2Step118ExitGAfter s2Step118ExitGvAfter
    s2Step118ExitGRow s2Step118ExitGOut 210 [] [(s2Step118ExitFRow,210),(s2Step118ExitFvRow,73),(s2Step118ExitGvRow,73)] [[],[],[]] [s2Step118ExitFOut,s2Step118ExitFvOut,s2Step118ExitGvOut]
    (shrinkRow 769 s2Step118ExitGExtra) ((shrinkRow 768 s2Step118ExitFExtra ++ (growRow 770 [] ++ (growRow 771 [] ++ [])))) s2Step118ExitG_Incoming s2Step118ExitG_checked h1 s2Step118ExitG_Outgoing
  exact h0

private theorem s2Step118ExitBank_checked : compileHmrBankResizeLog .exit s2Step118ExitGBefore ⟨s2Step118ExitFRow,s2Step118ExitGRow,s2Step118ExitFvRow,s2Step118ExitGvRow⟩ ⟨210,210,73,73⟩ [[],[],[],[]]=
    some (s2Step118ExitGvAfter,⟨s2Step118ExitFOut,s2Step118ExitGOut,s2Step118ExitFvOut,s2Step118ExitGvOut⟩,(shrinkRow 769 s2Step118ExitGExtra ++ (shrinkRow 768 s2Step118ExitFExtra ++ (growRow 770 [] ++ (growRow 771 [] ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step118ExitBank_rows]
  rfl

private theorem s2Step118Add0_apart : Disjoint s2Step118Add0Arena.live s2Step118Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step118Add0Arena (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step118Add0_card : s2Step118Add0Arena.live.card=877 := by
  decide +kernel

private theorem s2Step118Add0_borrowed : s2Step118Add0Arena.checkBorrow (hmrHybridCount s2Step118Add0Arena s2Step118Add0B.length) s2Step118Add0Work=some s2Step118Add0During := by
  have len : s2Step118Add0Work.length=hmrHybridCount s2Step118Add0Arena s2Step118Add0B.length := by
    rw [hmrHybridCount,s2Step118Add0_card]
    decide +kernel
  have nd : s2Step118Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step118Add0Arena s2Step118Add0During s2Step118Add0Work.toFinset s2Step118Add0_bounded s2Step118Add0_apart rfl

private theorem s2Step118Add0_distinct : (792::819::849::(s2Step118Add0A++s2Step118Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step118Add0_owned : (792::819::849::(s2Step118Add0A++s2Step118Add0B)).toFinset⊆s2Step118Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step118Add0Arena (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step118Add0_checked : compileHmrHybridCinLog s2Step118Add0Arena 819 792 849 s2Step118Add0A s2Step118Add0B s2Step118Add0Work=some s2Step118Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step118Add0Arena s2Step118Add0During 819 792 849 s2Step118Add0A s2Step118Add0B s2Step118Add0Work
    (by decide +kernel) (by decide +kernel) s2Step118Add0_distinct
    (fun q hq => s2Step118Add0_owned (List.mem_toFinset.mpr hq)) s2Step118Add0_borrowed

private theorem s2Step118Add1_apart : Disjoint s2Step118Add1Arena.live s2Step118Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step118Add1Arena (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step118Add1_card : s2Step118Add1Arena.live.card=877 := by
  decide +kernel

private theorem s2Step118Add1_borrowed : s2Step118Add1Arena.checkBorrow (hmrHybridCount s2Step118Add1Arena s2Step118Add1B.length) s2Step118Add1Work=some s2Step118Add1During := by
  have len : s2Step118Add1Work.length=hmrHybridCount s2Step118Add1Arena s2Step118Add1B.length := by
    rw [hmrHybridCount,s2Step118Add1_card]
    decide +kernel
  have nd : s2Step118Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step118Add1Arena s2Step118Add1During s2Step118Add1Work.toFinset s2Step118Add1_bounded s2Step118Add1_apart rfl

private theorem s2Step118Add1_distinct : (792::819::849::(s2Step118Add1A++s2Step118Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step118Add1_owned : (792::819::849::(s2Step118Add1A++s2Step118Add1B)).toFinset⊆s2Step118Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step118Add1Arena (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step118Add1_checked : compileHmrHybridCinLog s2Step118Add1Arena 819 792 849 s2Step118Add1A s2Step118Add1B s2Step118Add1Work=some s2Step118Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step118Add1Arena s2Step118Add1During 819 792 849 s2Step118Add1A s2Step118Add1B s2Step118Add1Work
    (by decide +kernel) (by decide +kernel) s2Step118Add1_distinct
    (fun q hq => s2Step118Add1_owned (List.mem_toFinset.mpr hq)) s2Step118Add1_borrowed

private theorem s2Step118F4_apart : Disjoint (s2Step118Add0A++s2Step118Add0B).toFinset (s2Step118Add1A++s2Step118Add1B).toFinset := by
  have nd : ((s2Step118Add0A++s2Step118Add0B)++(s2Step118Add1A++s2Step118Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step118F4_carry : s2Step118F4FlagArena.checkBorrow 1 [849]=some s2Step118Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step118F4FlagArena,s2Step118HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step118F4FlagArena,s2Step118HeadFvAfter,s2Step118Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step118F4_distinct : (815::819::792::849::((s2Step118Add0A++s2Step118Add1A)++(s2Step118Add0B++s2Step118Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step118F4_flag : s2Step118HeadFvAfter.checkBorrow 1 [792]=some s2Step118F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step118HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step118F4_owned : (815::819::((s2Step118Add0A++s2Step118Add1A)++(s2Step118Add0B++s2Step118Add1B))).toFinset⊆s2Step118HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step118HeadFvAfter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step118F4_checked : compileHmrHybridF4Log s2Step118HeadFvAfter 815 819 s2Step118Add0A s2Step118Add0B s2Step118Add1A s2Step118Add1B [792] [849] s2Step118Add0Work s2Step118Add1Work=some s2Step118F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step118HeadFvAfter s2Step118F4FlagArena s2Step118Add0Arena s2Step118Add0During s2Step118Add1During 815 819
    s2Step118Add0A s2Step118Add0B s2Step118Add1A s2Step118Add1B [792] [849] s2Step118Add0Work s2Step118Add1Work
    (fun q hq => s2Step118F4_owned (List.mem_toFinset.mpr hq)) s2Step118F4_flag s2Step118F4_carry
    s2Step118F4_distinct s2Step118F4_apart s2Step118Add0_checked s2Step118Add1_checked

private theorem s2Step118Front_branch : s2Step118FrontSigmaArena.checkBorrow 1 [819]=some s2Step118HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step118FrontSigmaArena,s2Step118EntryGvAfter,s2Step118EntryFAfter,arenaWires]
  · ext q
    simp only [s2Step118FrontSigmaArena,s2Step118EntryGvAfter,s2Step118EntryFAfter,s2Step118HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step118Front_entry : HmrFrontEntryValid s2Step118EntryFBefore s2Step118FrontBank 211 72 ⟨210,210,73,73⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step118FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step118EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step118EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<819) ∨ (820≤q ∧ q<821) ∨ (822≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step118FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step118Front_sigma : s2Step118EntryGvAfter.checkBorrow 1 [815]=some s2Step118FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step118EntryGvAfter,s2Step118EntryFAfter,arenaWires]
  · rfl

private def s2Step118HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step118HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step118HeadFBefore : Arena := s2Step118HeadGAfter

private def s2Step118HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 781],768⟩

private def s2Step118HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809],770⟩

private def s2Step118HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210],769⟩

private def s2Step118HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805],771⟩

private theorem s2Step118HeadBank_incomingDistinct : ([s2Step118HeadGRow,s2Step118HeadFRow,s2Step118HeadGvRow,s2Step118HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step118HeadF_Incoming : rowsOwned s2Step118HeadFBefore [s2Step118HeadFRow,s2Step118HeadGvRow,s2Step118HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step118HeadGRow,s2Step118HeadFRow,s2Step118HeadGvRow,s2Step118HeadFvRow] 1 s2Step118HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step118HeadFBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step118HeadBank_outgoingOwned : rowsOwned s2Step118HeadFvAfter [s2Step118HeadGOut,s2Step118HeadFOut,s2Step118HeadGvOut,s2Step118HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step118HeadFvAfter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step118HeadF_Outgoing : rowsOwned s2Step118HeadFvAfter [s2Step118HeadFOut,s2Step118HeadGvOut,s2Step118HeadFvOut] :=
  hmrRows_owned_drop s2Step118HeadFvAfter [s2Step118HeadGOut,s2Step118HeadFOut,s2Step118HeadGvOut,s2Step118HeadFvOut] 1 s2Step118HeadBank_outgoingOwned

private theorem s2Step118HeadF_distinct : (s2Step118HeadFRow.sign::s2Step118HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step118HeadF_owned : (s2Step118HeadFRow.sign::s2Step118HeadFRow.payload).toFinset⊆s2Step118HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step118HeadFBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step118HeadF_reserved : s2Step118HeadFBefore.reserve s2Step118HeadFFresh.toFinset=some s2Step118HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step118HeadFFresh,arenaWires]
  · norm_num [s2Step118HeadFBefore,s2Step118HeadGAfter,s2Step118HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step118HeadFAfter,s2Step118HeadFBefore,s2Step118HeadGAfter,s2Step118HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step118HeadF_checked : planRowResizeLog s2Step118HeadFBefore s2Step118HeadFRow 212 s2Step118HeadFFresh=
    some (s2Step118HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 781, 807],768⟩,growRow 768 s2Step118HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step118HeadFBefore s2Step118HeadFAfter s2Step118HeadFRow 212 s2Step118HeadFFresh
    s2Step118HeadF_distinct s2Step118HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step118HeadF_reserved
  have rowEq : WindowRow.mk (s2Step118HeadFRow.payload++s2Step118HeadFFresh) s2Step118HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 781, 807],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step118HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step118HeadFvBefore : Arena := s2Step118HeadGvAfter

private theorem s2Step118HeadFv_Incoming : rowsOwned s2Step118HeadFvBefore [s2Step118HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step118HeadGRow,s2Step118HeadFRow,s2Step118HeadGvRow,s2Step118HeadFvRow] 3 s2Step118HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step118HeadFvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step118HeadFv_Outgoing : rowsOwned s2Step118HeadFvAfter [s2Step118HeadFvOut] :=
  hmrRows_owned_drop s2Step118HeadFvAfter [s2Step118HeadGOut,s2Step118HeadFOut,s2Step118HeadGvOut,s2Step118HeadFvOut] 3 s2Step118HeadBank_outgoingOwned

private theorem s2Step118HeadFv_distinct : (s2Step118HeadFvRow.sign::s2Step118HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step118HeadFv_owned : (s2Step118HeadFvRow.sign::s2Step118HeadFvRow.payload).toFinset⊆s2Step118HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step118HeadFvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step118HeadFv_reserved : s2Step118HeadFvBefore.reserve s2Step118HeadFvFresh.toFinset=some s2Step118HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step118HeadFvFresh,arenaWires]
  · norm_num [s2Step118HeadFvBefore,s2Step118HeadGvAfter,s2Step118HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step118HeadFvAfter,s2Step118HeadFvBefore,s2Step118HeadGvAfter,s2Step118HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step118HeadFv_checked : planRowResizeLog s2Step118HeadFvBefore s2Step118HeadFvRow 73 s2Step118HeadFvFresh=
    some (s2Step118HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846],770⟩,growRow 770 s2Step118HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step118HeadFvBefore s2Step118HeadFvAfter s2Step118HeadFvRow 73 s2Step118HeadFvFresh
    s2Step118HeadFv_distinct s2Step118HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step118HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step118HeadFvRow.payload++s2Step118HeadFvFresh) s2Step118HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step118HeadG_Incoming : rowsOwned s2Step118HeadGBefore [s2Step118HeadGRow,s2Step118HeadFRow,s2Step118HeadGvRow,s2Step118HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step118HeadGRow,s2Step118HeadFRow,s2Step118HeadGvRow,s2Step118HeadFvRow] 0 s2Step118HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step118HeadGBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<821) ∨ (822≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step118HeadG_Outgoing : rowsOwned s2Step118HeadFvAfter [s2Step118HeadGOut,s2Step118HeadFOut,s2Step118HeadGvOut,s2Step118HeadFvOut] :=
  hmrRows_owned_drop s2Step118HeadFvAfter [s2Step118HeadGOut,s2Step118HeadFOut,s2Step118HeadGvOut,s2Step118HeadFvOut] 0 s2Step118HeadBank_outgoingOwned

private theorem s2Step118HeadG_distinct : (s2Step118HeadGRow.sign::s2Step118HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step118HeadG_owned : (s2Step118HeadGRow.sign::s2Step118HeadGRow.payload).toFinset⊆s2Step118HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step118HeadGBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<821) ∨ (822≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step118HeadG_reserved : s2Step118HeadGBefore.reserve s2Step118HeadGFresh.toFinset=some s2Step118HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step118HeadGFresh,arenaWires]
  · norm_num [s2Step118HeadGBefore,s2Step118HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step118HeadGAfter,s2Step118HeadGBefore,s2Step118HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step118HeadG_checked : planRowResizeLog s2Step118HeadGBefore s2Step118HeadGRow 212 s2Step118HeadGFresh=
    some (s2Step118HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 821],769⟩,growRow 769 s2Step118HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step118HeadGBefore s2Step118HeadGAfter s2Step118HeadGRow 212 s2Step118HeadGFresh
    s2Step118HeadG_distinct s2Step118HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step118HeadG_reserved
  have rowEq : WindowRow.mk (s2Step118HeadGRow.payload++s2Step118HeadGFresh) s2Step118HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 821],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step118HeadGvBefore : Arena := s2Step118HeadFAfter

private theorem s2Step118HeadGv_Incoming : rowsOwned s2Step118HeadGvBefore [s2Step118HeadGvRow,s2Step118HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step118HeadGRow,s2Step118HeadFRow,s2Step118HeadGvRow,s2Step118HeadFvRow] 2 s2Step118HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step118HeadGvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step118HeadGv_Outgoing : rowsOwned s2Step118HeadFvAfter [s2Step118HeadGvOut,s2Step118HeadFvOut] :=
  hmrRows_owned_drop s2Step118HeadFvAfter [s2Step118HeadGOut,s2Step118HeadFOut,s2Step118HeadGvOut,s2Step118HeadFvOut] 2 s2Step118HeadBank_outgoingOwned

private theorem s2Step118HeadGv_distinct : (s2Step118HeadGvRow.sign::s2Step118HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step118HeadGv_owned : (s2Step118HeadGvRow.sign::s2Step118HeadGvRow.payload).toFinset⊆s2Step118HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step118HeadGvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step118HeadGv_reserved : s2Step118HeadGvBefore.reserve s2Step118HeadGvFresh.toFinset=some s2Step118HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step118HeadGvFresh,arenaWires]
  · norm_num [s2Step118HeadGvBefore,s2Step118HeadFAfter,s2Step118HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step118HeadGvAfter,s2Step118HeadGvBefore,s2Step118HeadFAfter,s2Step118HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step118HeadGv_checked : planRowResizeLog s2Step118HeadGvBefore s2Step118HeadGvRow 73 s2Step118HeadGvFresh=
    some (s2Step118HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794],771⟩,growRow 771 s2Step118HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step118HeadGvBefore s2Step118HeadGvAfter s2Step118HeadGvRow 73 s2Step118HeadGvFresh
    s2Step118HeadGv_distinct s2Step118HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step118HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step118HeadGvRow.payload++s2Step118HeadGvFresh) s2Step118HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step118HeadBank_rows : planWindowRowsLog s2Step118HeadGBefore [(s2Step118HeadGRow,212),(s2Step118HeadFRow,212),(s2Step118HeadGvRow,73),(s2Step118HeadFvRow,73)] [s2Step118HeadGFresh,s2Step118HeadFFresh,s2Step118HeadGvFresh,s2Step118HeadFvFresh]=
    some (s2Step118HeadFvAfter,[s2Step118HeadGOut,s2Step118HeadFOut,s2Step118HeadGvOut,s2Step118HeadFvOut],(growRow 769 s2Step118HeadGFresh ++ (growRow 768 s2Step118HeadFFresh ++ (growRow 771 s2Step118HeadGvFresh ++ (growRow 770 s2Step118HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step118HeadFvAfter [] []=some (s2Step118HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step118HeadFvBefore s2Step118HeadFvAfter s2Step118HeadFvAfter
    s2Step118HeadFvRow s2Step118HeadFvOut 73 s2Step118HeadFvFresh [] [] []
    (growRow 770 s2Step118HeadFvFresh) ([]) s2Step118HeadFv_Incoming s2Step118HeadFv_checked h4 s2Step118HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step118HeadGvBefore s2Step118HeadGvAfter s2Step118HeadFvAfter
    s2Step118HeadGvRow s2Step118HeadGvOut 73 s2Step118HeadGvFresh [(s2Step118HeadFvRow,73)] [s2Step118HeadFvFresh] [s2Step118HeadFvOut]
    (growRow 771 s2Step118HeadGvFresh) ((growRow 770 s2Step118HeadFvFresh ++ [])) s2Step118HeadGv_Incoming s2Step118HeadGv_checked h3 s2Step118HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step118HeadFBefore s2Step118HeadFAfter s2Step118HeadFvAfter
    s2Step118HeadFRow s2Step118HeadFOut 212 s2Step118HeadFFresh [(s2Step118HeadGvRow,73),(s2Step118HeadFvRow,73)] [s2Step118HeadGvFresh,s2Step118HeadFvFresh] [s2Step118HeadGvOut,s2Step118HeadFvOut]
    (growRow 768 s2Step118HeadFFresh) ((growRow 771 s2Step118HeadGvFresh ++ (growRow 770 s2Step118HeadFvFresh ++ []))) s2Step118HeadF_Incoming s2Step118HeadF_checked h2 s2Step118HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step118HeadGBefore s2Step118HeadGAfter s2Step118HeadFvAfter
    s2Step118HeadGRow s2Step118HeadGOut 212 s2Step118HeadGFresh [(s2Step118HeadFRow,212),(s2Step118HeadGvRow,73),(s2Step118HeadFvRow,73)] [s2Step118HeadFFresh,s2Step118HeadGvFresh,s2Step118HeadFvFresh] [s2Step118HeadFOut,s2Step118HeadGvOut,s2Step118HeadFvOut]
    (growRow 769 s2Step118HeadGFresh) ((growRow 768 s2Step118HeadFFresh ++ (growRow 771 s2Step118HeadGvFresh ++ (growRow 770 s2Step118HeadFvFresh ++ [])))) s2Step118HeadG_Incoming s2Step118HeadG_checked h1 s2Step118HeadG_Outgoing
  exact h0

private theorem s2Step118HeadBank_checked : compileHmrBankResizeLog .headroom s2Step118HeadGBefore ⟨s2Step118HeadFRow,s2Step118HeadGRow,s2Step118HeadFvRow,s2Step118HeadGvRow⟩ ⟨212,212,73,73⟩ [s2Step118HeadGFresh,s2Step118HeadFFresh,s2Step118HeadGvFresh,s2Step118HeadFvFresh]=
    some (s2Step118HeadFvAfter,⟨s2Step118HeadFOut,s2Step118HeadGOut,s2Step118HeadFvOut,s2Step118HeadGvOut⟩,(growRow 769 s2Step118HeadGFresh ++ (growRow 768 s2Step118HeadFFresh ++ (growRow 771 s2Step118HeadGvFresh ++ (growRow 770 s2Step118HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step118HeadBank_rows]
  rfl

private theorem s2Step118Front_checked : compileHmrSourceFrontLog s2Step118EntryFBefore s2Step118FrontBank 211 72 ⟨210,210,73,73⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step118FrontLog=some s2Step118FrontPlan := by
  have pairEq : s2Step118FrontPair=⟨s2Step118HeadFRow,s2Step118HeadGRow,s2Step118HeadFvRow,s2Step118HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step118FrontHead=⟨s2Step118ExitFRow,s2Step118ExitGRow,s2Step118ExitFvRow,s2Step118ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step118Add0A=s2Step118FrontHead.f.wires := by decide +kernel
  have gEq : s2Step118Add0B=s2Step118FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step118Add1A=s2Step118FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step118Add1B=s2Step118FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step118EntryFBefore s2Step118FrontBank 211 72 ⟨210,210,73,73⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step118FrontLog s2Step118FrontPlan
  · exact s2Step118Front_entry
  · exact s2Step118EntryBank_checked
  · exact s2Step118Front_sigma
  · rfl
  · exact s2Step118Front_branch
  · rfl
  · simpa only [s2Step118FrontPlan,pairEq] using s2Step118HeadBank_checked
  · simpa only [s2Step118FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step118F4_checked
  · exact s2Step118Counter_checked
  · rfl
  · simpa only [s2Step118FrontPlan,headEq] using s2Step118ExitBank_checked

private theorem s2Step118Complete_explicit_checked : compileHmrEarlyStepLog s2Step118EntryFBefore s2Step118FrontBank 211 72 ⟨210,210,73,73⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step118CompleteLog=some s2Step118CompletePlan := by
  let Q := s2Step118EarlyControlPlan
  have hq := s2Step118EarlyControl_plan_checked
  have fv1 : s2Step118CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step118CompleteOut.fv.payload[2]?.getD s2Step118CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step118CompleteOut.fv.payload[3]?.getD s2Step118CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step118CompleteOut.fv.payload[4]?.getD s2Step118CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step118EntryFBefore s2Step118EarlyControlArena s2Step118FrontBank 211 72 ⟨210,210,73,73⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step118CompleteLog s2Step118FrontPlan Q
    s2Step118Front_checked s2Step118Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step118Complete_owned s2Step118Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step118EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 815 s2Step118CompleteOut.fv.second (s2Step118CompleteOut.fv.payload[2]?.getD s2Step118CompleteOut.fv.sign) (s2Step118CompleteOut.fv.payload[3]?.getD s2Step118CompleteOut.fv.sign) (s2Step118CompleteOut.fv.payload[4]?.getD s2Step118CompleteOut.fv.sign) 819 37 s2Step118EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep118Arena : Arena := s2Step118EntryFBefore
def s2PrivateStep118Bank : WindowBank := s2Step118FrontBank
def s2PrivateStep118Spec : HmrSourceWalkStepLog := ⟨211,72,⟨210,210,73,73⟩,37,.early s2Step118CompleteLog⟩
def s2PrivateStep118Plan : HmrSourceStepPlan := .early s2Step118CompletePlan
theorem s2PrivateStep118_source : s2PrivateStep118Spec=s2ObservedLogs112[6] := rfl
theorem s2PrivateStep118_checked : compileHmrSourceStepLog s2PrivateStep118Arena s2PrivateStep118Bank
    s2PrivateStep118Spec.fgWidth s2PrivateStep118Spec.vWidth s2PrivateStep118Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881]
    6 498 118 s2PrivateStep118Spec.need none s2PrivateStep118Spec.log=some s2PrivateStep118Plan := by
  change compileHmrSourceStepLog s2Step118EntryFBefore s2Step118FrontBank 211 72 ⟨210,210,73,73⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 6 498 118 37 none (.early s2Step118CompleteLog)=some (.early s2Step118CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 118<498)]
  rw [s2Step118Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
