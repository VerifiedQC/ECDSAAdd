import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep134
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

private def s2Step136CompleteMoves : List (Wire × Wire) := []

private def s2Step136EarlyControlLog : HmrEarlyControlLog := ⟨[837, 849, 814, 781, 782],[827],[790],[815, 867, 877, 879, 882, 883],[]⟩

private def s2Step136FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [781, 782], [], [784, 817]],[[827], [814], [837], [849]],[[], [], [], []]⟩,[783],[826],[790],[815],[867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[790, 815, 867, 877]⟩

private def s2Step136CompleteLog : HmrEarlyStepLog := ⟨s2Step136FrontLog,s2Step136CompleteMoves,s2Step136EarlyControlLog⟩

private def s2Step136ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713],768⟩

private def s2Step136ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829],770⟩

private def s2Step136ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199],769⟩

private def s2Step136ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817],771⟩

private def s2Step136FrontOut : WindowBank := ⟨s2Step136ExitFOut,s2Step136ExitGOut,s2Step136ExitFvOut,s2Step136ExitGvOut⟩

private def s2Step136CompleteOut : WindowBank := s2Step136FrontOut.repacked s2Step136CompleteMoves

private def s2Step136EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step136EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step136EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step136EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step136EarlyControlPositiveArena,[827],s2Step136EarlyControlEqualityArena,[790],⟨⟨783,false⟩,[⟨⟨827,false⟩,790⟩]⟩⟩

private def s2Step136EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<884)),Finset.filter_subset _ _⟩

private def s2Step136EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<884)),Finset.filter_subset _ _⟩

private def s2Step136EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step136EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step136EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step136EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<827) ∨ (828≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step136EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,837⟩,⟨⟨774,false⟩,849⟩,⟨⟨775,false⟩,814⟩,⟨⟨776,false⟩,781⟩,⟨⟨777,false⟩,782⟩]⟩

private def s2Step136EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step136EarlyControlZeroArena,s2Step136EarlyControlZeroPlan,s2Step136EarlyControlClassPlan,s2Step136EarlyControlFlagArena,s2Step136EarlyControlFittedArena,s2Step136EarlyControlHistoryArena,s2Step136EarlyControlSigmaArena,s2Step136EarlyControlOutputArena,s2Step136EarlyControlLog⟩

private def s2Step136CounterWork : List Wire := [790, 815, 867, 877]

private theorem s2Step136Counter_bounded : s2Step136CounterWork.toFinset⊆arenaWires := by norm_num [s2Step136CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step136HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step136CounterDuring : Arena := ⟨s2Step136HeadFvAfter.live∪s2Step136CounterWork.toFinset,Finset.union_subset s2Step136HeadFvAfter.bounded s2Step136Counter_bounded⟩

private def s2Step136EntryFFresh : List Wire := []

private def s2Step136EntryFvFresh : List Wire := []

private def s2Step136EntryGFresh : List Wire := [781, 782]

private def s2Step136EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step136EntryGvFresh : List Wire := [784, 817]

private def s2Step136ExitFExtra : List Wire := [814]

private def s2Step136ExitFvExtra : List Wire := [849]

private def s2Step136ExitGExtra : List Wire := [781, 782, 827]

private def s2Step136ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step136ExitGvExtra : List Wire := [837]

private def s2Step136Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step136Add0Work : List Wire := [867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step136Add0_bounded : s2Step136Add0Work.toFinset⊆arenaWires := by
  have h : s2Step136Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step136Add0During : Arena := ⟨s2Step136Add0Arena.live∪s2Step136Add0Work.toFinset,Finset.union_subset s2Step136Add0Arena.bounded s2Step136Add0_bounded⟩

private def s2Step136Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step136Add1Work : List Wire := [867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step136Add1_bounded : s2Step136Add1Work.toFinset⊆arenaWires := by
  have h : s2Step136Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step136Add1During : Arena := ⟨s2Step136Add1Arena.live∪s2Step136Add1Work.toFinset,Finset.union_subset s2Step136Add1Arena.bounded s2Step136Add1_bounded⟩

private def s2Step136F4FlagArena : Arena := ⟨s2Step136HeadFvAfter.live∪{790},Finset.union_subset s2Step136HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step136F4Plan : HmrHybridF4Plan := ⟨s2Step136F4FlagArena,[790],s2Step136Add0Arena,[815],s2Step136Add0During,s2Step136Add0Work,s2Step136Add1During,s2Step136Add1Work⟩

private def s2Step136HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 814],768⟩

private def s2Step136HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 849],770⟩

private def s2Step136HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 781, 782, 827],769⟩

private def s2Step136HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 837],771⟩

private def s2Step136FrontHead : WindowBank := ⟨s2Step136HeadFOut,s2Step136HeadGOut,s2Step136HeadFvOut,s2Step136HeadGvOut⟩

private def s2Step136EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713],768⟩

private def s2Step136EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829],770⟩

private def s2Step136EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 781, 782],769⟩

private def s2Step136EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817],771⟩

private def s2Step136FrontPair : WindowBank := ⟨s2Step136EntryFOut,s2Step136EntryGOut,s2Step136EntryFvOut,s2Step136EntryGvOut⟩

private def s2Step136FrontSigmaArena : Arena := ⟨s2Step136EntryGvAfter.live∪{783},Finset.union_subset s2Step136EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step136HeadFFresh : List Wire := [814]

private def s2Step136HeadFvFresh : List Wire := [849]

private def s2Step136HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step136HeadGFresh : List Wire := [827]

private def s2Step136HeadGvFresh : List Wire := [837]

private def s2Step136FrontPlan : HmrSourceFront := ⟨s2Step136EntryGvAfter,s2Step136FrontPair,(growRow 768 s2Step136EntryFFresh ++ (growRow 769 s2Step136EntryGFresh ++ (growRow 770 s2Step136EntryFvFresh ++ (growRow 771 s2Step136EntryGvFresh ++ [])))),s2Step136FrontSigmaArena,[783],s2Step136HeadGBefore,[826],
  s2Step136HeadFvAfter,s2Step136FrontHead,(growRow 769 s2Step136HeadGFresh ++ (growRow 768 s2Step136HeadFFresh ++ (growRow 771 s2Step136HeadGvFresh ++ (growRow 770 s2Step136HeadFvFresh ++ [])))),s2Step136F4Plan,s2Step136CounterDuring,s2Step136CounterWork,s2Step136ExitGvAfter,s2Step136FrontOut,(shrinkRow 769 s2Step136ExitGExtra ++ (shrinkRow 768 s2Step136ExitFExtra ++ (shrinkRow 770 s2Step136ExitFvExtra ++ (shrinkRow 771 s2Step136ExitGvExtra ++ []))))⟩

private def s2Step136CompletePlan : HmrEarlyStepPlan := ⟨s2Step136FrontPlan,s2Step136EarlyControlArena,s2Step136EarlyControlPlan,s2Step136CompleteMoves⟩

private theorem s2Step136Complete_apart : List.Disjoint (s2Step136CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [783, 826, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] := by
  have nd : ((s2Step136CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[783, 826, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step136Complete_owned : (s2Step136CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step136EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step136EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step136Complete_repack : s2Step136ExitGvAfter.checkRepack s2Step136CompleteMoves=some s2Step136EarlyControlArena := by rfl

private theorem s2Step136EarlyControl_branchOwned : ([826] : List Wire).toFinset⊆s2Step136EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step136EarlyControlSigmaArena (fun q => (0≤q ∧ q<781) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step136EarlyControl_branch : compileHmrBranchRetirement s2Step136EarlyControlSigmaArena 826=some s2Step136EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step136EarlyControl_branchOwned
  · ext q
    simp [s2Step136EarlyControlOutputArena,s2Step136EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step136EarlyControl_classEqualityBorrow : s2Step136EarlyControlPositiveArena.checkBorrow (([783, 827] : List Wire).length-1) s2Step136EarlyControlLog.classWork=some s2Step136EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step136EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step136EarlyControlPositiveArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step136EarlyControlEqualityArena,s2Step136EarlyControlPositiveArena,s2Step136EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step136EarlyControl_classEqualityOwned : ([783, 827] : List Wire).toFinset⊆s2Step136EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step136EarlyControlPositiveArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step136EarlyControl_classEquality : compileHmrEqualityLog s2Step136EarlyControlPositiveArena [783, 827] 0 s2Step136EarlyControlLog.classWork=some (s2Step136EarlyControlEqualityArena,s2Step136EarlyControlLog.classWork,s2Step136EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step136EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step136EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step136EarlyControl_classOwned : ([777, 782, 783] : List Wire).toFinset⊆s2Step136EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step136EarlyControlZeroArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<827) ∨ (828≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step136EarlyControl_positiveBorrow : s2Step136EarlyControlZeroArena.checkBorrow (1) s2Step136EarlyControlLog.positiveWork=some s2Step136EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step136EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step136EarlyControlZeroArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<827) ∨ (828≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step136EarlyControlPositiveArena,s2Step136EarlyControlZeroArena,s2Step136EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step136EarlyControl_class : compileHmrSourceClassLog s2Step136EarlyControlZeroArena false 777 s2Step136EarlyControlZeroPlan.top 0 783 s2Step136EarlyControlLog.positiveWork s2Step136EarlyControlLog.classWork=some s2Step136EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step136EarlyControlClassPlan s2Step136EarlyControlZeroArena false 777 s2Step136EarlyControlZeroPlan.top 0 783
  constructor
  · decide +kernel
  · exact s2Step136EarlyControl_classOwned
  · exact s2Step136EarlyControl_positiveBorrow
  · exact s2Step136EarlyControl_classEquality

private theorem s2Step136EarlyControl_entryRecordOwned : ([826, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).toFinset⊆s2Step136EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step136EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step136EarlyControl_entrySigmaOwned : ([783, 254] : List Wire).toFinset⊆s2Step136EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step136EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step136EarlyControl_fitBorrow : s2Step136EarlyControlFlagArena.checkBorrow ((37-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).length)) s2Step136EarlyControlLog.recordFresh=some s2Step136EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step136EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step136EarlyControlFlagArena (fun q => (0≤q ∧ q<884)) rfl
      decide +kernel
    · ext q
      simp [s2Step136EarlyControlFittedArena,s2Step136EarlyControlFlagArena,s2Step136EarlyControlLog,arenaWires]

private theorem s2Step136EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).toFinset⊆s2Step136EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step136EarlyControlFlagArena (fun q => (0≤q ∧ q<884)) rfl
  decide +kernel

private theorem s2Step136EarlyControl_fit : compileHmrRecordGrowLog s2Step136EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step136EarlyControlLog.recordFresh=some s2Step136EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step136EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step136EarlyControl_fitBorrow

private theorem s2Step136EarlyControl_flagsBorrow : s2Step136EarlyControlEqualityArena.checkBorrow (6) s2Step136EarlyControlLog.flagWork=some s2Step136EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step136EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step136EarlyControlEqualityArena (fun q => (0≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step136EarlyControlFlagArena,s2Step136EarlyControlEqualityArena,s2Step136EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step136EarlyControl_flagsOwned : ([790, 253, 252, 251] : List Wire).toFinset⊆s2Step136EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step136EarlyControlEqualityArena (fun q => (0≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step136EarlyControl_flags : compileHmrFlagsLog s2Step136EarlyControlClassPlan.equalityArena s2Step136EarlyControlClassPlan.equality.top 253 252 251 s2Step136EarlyControlLog.flagWork=some s2Step136EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step136EarlyControl_flagsOwned⟩
  · exact s2Step136EarlyControl_flagsBorrow

private theorem s2Step136EarlyControl_historyBorrow : s2Step136EarlyControlArena.checkBorrow ((37-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).length)) s2Step136EarlyControlLog.recordFresh=some s2Step136EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step136EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step136EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step136EarlyControlHistoryArena,s2Step136EarlyControlArena,s2Step136EarlyControlLog,arenaWires]

private theorem s2Step136EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).toFinset⊆s2Step136EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step136EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step136EarlyControl_history : compileHmrRecordGrowLog s2Step136EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step136EarlyControlLog.recordFresh=some s2Step136EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step136EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step136EarlyControl_historyBorrow

private theorem s2Step136EarlyControl_sigmaOwned : ([254, 783] : List Wire).toFinset⊆s2Step136EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step136EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step136EarlyControl_sigmaReleaseOwned : ([783] : List Wire).toFinset⊆s2Step136EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step136EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step136EarlyControl_sigmaRelease : s2Step136EarlyControlHistoryArena.release {783} (fun _ => false)=some s2Step136EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step136EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step136EarlyControlSigmaArena,s2Step136EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step136EarlyControl_sigma : compileHmrSigmaDropLog s2Step136EarlyControlHistoryArena false 0 0 254 783 []=some s2Step136EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step136EarlyControl_sigmaOwned⟩
  · exact s2Step136EarlyControl_sigmaRelease

private theorem s2Step136EarlyControl_zeroBorrow : s2Step136EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step136EarlyControlLog.zeroWork=some s2Step136EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step136EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step136EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step136EarlyControlZeroArena,s2Step136EarlyControlArena,s2Step136EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step136EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step136EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step136EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step136EarlyControl_zero : compileHmrEqualityLog s2Step136EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step136EarlyControlLog.zeroWork=some (s2Step136EarlyControlZeroArena,s2Step136EarlyControlLog.zeroWork,s2Step136EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step136EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step136EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step136EarlyControl_logged : s2Step136EarlyControlPlan.Logged s2Step136EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 783 254 253 252 251 826 37 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step136EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step136EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step136EarlyControl_zero
  · exact s2Step136EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step136EarlyControl_flags
  · exact s2Step136EarlyControl_fit
  · exact s2Step136EarlyControl_history
  · exact s2Step136EarlyControl_sigma
  · exact s2Step136EarlyControl_branch

private theorem s2Step136EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step136EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 783 254 253 252 251 826 37 s2Step136EarlyControlLog=some s2Step136EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step136EarlyControlPlan s2Step136EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 783 254 253 252 251 826 37 s2Step136EarlyControl_logged

private def s2Step136EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<826) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step136EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713],768⟩

private def s2Step136EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829],770⟩

private def s2Step136EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199],769⟩

private def s2Step136EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835],771⟩

private def s2Step136FrontBank : WindowBank := ⟨s2Step136EntryFRow,s2Step136EntryGRow,s2Step136EntryFvRow,s2Step136EntryGvRow⟩

private def s2Step136Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 814, 768]

private def s2Step136Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 781, 782, 827, 769]

private def s2Step136Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 849, 770]

private def s2Step136Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 837, 771]

private theorem s2Step136Counter_apart : Disjoint s2Step136HeadFvAfter.live s2Step136CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step136HeadFvAfter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step136Counter_borrowed : s2Step136HeadFvAfter.checkBorrow 4 s2Step136CounterWork=some s2Step136CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step136HeadFvAfter s2Step136CounterDuring s2Step136CounterWork.toFinset s2Step136Counter_bounded s2Step136Counter_apart rfl

private theorem s2Step136Counter_owned : (783::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step136HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step136HeadFvAfter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step136Counter_checked : compileHmrCounterStepLog s2Step136HeadFvAfter true 783 [772, 773, 774, 775, 776, 777] s2Step136CounterWork=some s2Step136CounterDuring := by
  have owned : ∀q∈783::[772, 773, 774, 775, 776, 777],q∈s2Step136HeadFvAfter.live := fun q hq => s2Step136Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step136Counter_borrowed

private def s2Step136EntryFAfter : Arena := s2Step136EntryFBefore

private theorem s2Step136EntryBank_incomingDistinct : ([s2Step136EntryFRow,s2Step136EntryGRow,s2Step136EntryFvRow,s2Step136EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step136EntryF_Incoming : rowsOwned s2Step136EntryFBefore [s2Step136EntryFRow,s2Step136EntryGRow,s2Step136EntryFvRow,s2Step136EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step136EntryFRow,s2Step136EntryGRow,s2Step136EntryFvRow,s2Step136EntryGvRow] 0 s2Step136EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step136EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<826) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step136EntryBank_outgoingOwned : rowsOwned s2Step136EntryGvAfter [s2Step136EntryFOut,s2Step136EntryGOut,s2Step136EntryFvOut,s2Step136EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step136EntryGvAfter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step136EntryF_Outgoing : rowsOwned s2Step136EntryGvAfter [s2Step136EntryFOut,s2Step136EntryGOut,s2Step136EntryFvOut,s2Step136EntryGvOut] :=
  hmrRows_owned_drop s2Step136EntryGvAfter [s2Step136EntryFOut,s2Step136EntryGOut,s2Step136EntryFvOut,s2Step136EntryGvOut] 0 s2Step136EntryBank_outgoingOwned

private theorem s2Step136EntryF_distinct : (s2Step136EntryFRow.sign::s2Step136EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step136EntryF_owned : (s2Step136EntryFRow.sign::s2Step136EntryFRow.payload).toFinset⊆s2Step136EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step136EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<826) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step136EntryF_reserved : s2Step136EntryFBefore.reserve s2Step136EntryFFresh.toFinset=some s2Step136EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step136EntryFFresh,arenaWires]
  · norm_num [s2Step136EntryFBefore,s2Step136EntryFFresh,arenaWires]
  · simp only [s2Step136EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step136EntryF_checked : planRowResizeLog s2Step136EntryFBefore s2Step136EntryFRow 202 s2Step136EntryFFresh=
    some (s2Step136EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713],768⟩,growRow 768 s2Step136EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step136EntryFBefore s2Step136EntryFAfter s2Step136EntryFRow 202 s2Step136EntryFFresh
    s2Step136EntryF_distinct s2Step136EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step136EntryF_reserved
  have rowEq : WindowRow.mk (s2Step136EntryFRow.payload++s2Step136EntryFFresh) s2Step136EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step136EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<826) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step136EntryFvAfter : Arena := s2Step136EntryGAfter

private def s2Step136EntryFvBefore : Arena := s2Step136EntryGAfter

private theorem s2Step136EntryFv_Incoming : rowsOwned s2Step136EntryFvBefore [s2Step136EntryFvRow,s2Step136EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step136EntryFRow,s2Step136EntryGRow,s2Step136EntryFvRow,s2Step136EntryGvRow] 2 s2Step136EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step136EntryFvBefore (fun q => (0≤q ∧ q<783) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<826) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step136EntryFv_Outgoing : rowsOwned s2Step136EntryGvAfter [s2Step136EntryFvOut,s2Step136EntryGvOut] :=
  hmrRows_owned_drop s2Step136EntryGvAfter [s2Step136EntryFOut,s2Step136EntryGOut,s2Step136EntryFvOut,s2Step136EntryGvOut] 2 s2Step136EntryBank_outgoingOwned

private theorem s2Step136EntryFv_distinct : (s2Step136EntryFvRow.sign::s2Step136EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step136EntryFv_owned : (s2Step136EntryFvRow.sign::s2Step136EntryFvRow.payload).toFinset⊆s2Step136EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step136EntryFvBefore (fun q => (0≤q ∧ q<783) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<826) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step136EntryFv_reserved : s2Step136EntryFvBefore.reserve s2Step136EntryFvFresh.toFinset=some s2Step136EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step136EntryFvFresh,arenaWires]
  · norm_num [s2Step136EntryFvBefore,s2Step136EntryGAfter,s2Step136EntryFvFresh,arenaWires]
  · simp only [s2Step136EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step136EntryFv_checked : planRowResizeLog s2Step136EntryFvBefore s2Step136EntryFvRow 82 s2Step136EntryFvFresh=
    some (s2Step136EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829],770⟩,growRow 770 s2Step136EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step136EntryFvBefore s2Step136EntryFvAfter s2Step136EntryFvRow 82 s2Step136EntryFvFresh
    s2Step136EntryFv_distinct s2Step136EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step136EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step136EntryFvRow.payload++s2Step136EntryFvFresh) s2Step136EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step136EntryGBefore : Arena := s2Step136EntryFBefore

private theorem s2Step136EntryG_Incoming : rowsOwned s2Step136EntryGBefore [s2Step136EntryGRow,s2Step136EntryFvRow,s2Step136EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step136EntryFRow,s2Step136EntryGRow,s2Step136EntryFvRow,s2Step136EntryGvRow] 1 s2Step136EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step136EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<826) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step136EntryG_Outgoing : rowsOwned s2Step136EntryGvAfter [s2Step136EntryGOut,s2Step136EntryFvOut,s2Step136EntryGvOut] :=
  hmrRows_owned_drop s2Step136EntryGvAfter [s2Step136EntryFOut,s2Step136EntryGOut,s2Step136EntryFvOut,s2Step136EntryGvOut] 1 s2Step136EntryBank_outgoingOwned

private theorem s2Step136EntryG_distinct : (s2Step136EntryGRow.sign::s2Step136EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step136EntryG_owned : (s2Step136EntryGRow.sign::s2Step136EntryGRow.payload).toFinset⊆s2Step136EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step136EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<826) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step136EntryG_reserved : s2Step136EntryGBefore.reserve s2Step136EntryGFresh.toFinset=some s2Step136EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step136EntryGFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s2Step136EntryGBefore,s2Step136EntryFBefore,s2Step136EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step136EntryGAfter,s2Step136EntryGBefore,s2Step136EntryFBefore,s2Step136EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step136EntryG_checked : planRowResizeLog s2Step136EntryGBefore s2Step136EntryGRow 202 s2Step136EntryGFresh=
    some (s2Step136EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 781, 782],769⟩,growRow 769 s2Step136EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step136EntryGBefore s2Step136EntryGAfter s2Step136EntryGRow 202 s2Step136EntryGFresh
    s2Step136EntryG_distinct s2Step136EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step136EntryG_reserved
  have rowEq : WindowRow.mk (s2Step136EntryGRow.payload++s2Step136EntryGFresh) s2Step136EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 781, 782],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step136EntryGvBefore : Arena := s2Step136EntryGAfter

private theorem s2Step136EntryGv_Incoming : rowsOwned s2Step136EntryGvBefore [s2Step136EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step136EntryFRow,s2Step136EntryGRow,s2Step136EntryFvRow,s2Step136EntryGvRow] 3 s2Step136EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step136EntryGvBefore (fun q => (0≤q ∧ q<783) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<826) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step136EntryGv_Outgoing : rowsOwned s2Step136EntryGvAfter [s2Step136EntryGvOut] :=
  hmrRows_owned_drop s2Step136EntryGvAfter [s2Step136EntryFOut,s2Step136EntryGOut,s2Step136EntryFvOut,s2Step136EntryGvOut] 3 s2Step136EntryBank_outgoingOwned

private theorem s2Step136EntryGv_distinct : (s2Step136EntryGvRow.sign::s2Step136EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step136EntryGv_owned : (s2Step136EntryGvRow.sign::s2Step136EntryGvRow.payload).toFinset⊆s2Step136EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step136EntryGvBefore (fun q => (0≤q ∧ q<783) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<826) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step136EntryGv_reserved : s2Step136EntryGvBefore.reserve s2Step136EntryGvFresh.toFinset=some s2Step136EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step136EntryGvFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s2Step136EntryGvBefore,s2Step136EntryGAfter,s2Step136EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step136EntryGvAfter,s2Step136EntryGvBefore,s2Step136EntryGAfter,s2Step136EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step136EntryGv_checked : planRowResizeLog s2Step136EntryGvBefore s2Step136EntryGvRow 82 s2Step136EntryGvFresh=
    some (s2Step136EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817],771⟩,growRow 771 s2Step136EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step136EntryGvBefore s2Step136EntryGvAfter s2Step136EntryGvRow 82 s2Step136EntryGvFresh
    s2Step136EntryGv_distinct s2Step136EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step136EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step136EntryGvRow.payload++s2Step136EntryGvFresh) s2Step136EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step136EntryBank_rows : planWindowRowsLog s2Step136EntryFBefore [(s2Step136EntryFRow,202),(s2Step136EntryGRow,202),(s2Step136EntryFvRow,82),(s2Step136EntryGvRow,82)] [s2Step136EntryFFresh,s2Step136EntryGFresh,s2Step136EntryFvFresh,s2Step136EntryGvFresh]=
    some (s2Step136EntryGvAfter,[s2Step136EntryFOut,s2Step136EntryGOut,s2Step136EntryFvOut,s2Step136EntryGvOut],(growRow 768 s2Step136EntryFFresh ++ (growRow 769 s2Step136EntryGFresh ++ (growRow 770 s2Step136EntryFvFresh ++ (growRow 771 s2Step136EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step136EntryGvAfter [] []=some (s2Step136EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step136EntryGvBefore s2Step136EntryGvAfter s2Step136EntryGvAfter
    s2Step136EntryGvRow s2Step136EntryGvOut 82 s2Step136EntryGvFresh [] [] []
    (growRow 771 s2Step136EntryGvFresh) ([]) s2Step136EntryGv_Incoming s2Step136EntryGv_checked h4 s2Step136EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step136EntryFvBefore s2Step136EntryFvAfter s2Step136EntryGvAfter
    s2Step136EntryFvRow s2Step136EntryFvOut 82 s2Step136EntryFvFresh [(s2Step136EntryGvRow,82)] [s2Step136EntryGvFresh] [s2Step136EntryGvOut]
    (growRow 770 s2Step136EntryFvFresh) ((growRow 771 s2Step136EntryGvFresh ++ [])) s2Step136EntryFv_Incoming s2Step136EntryFv_checked h3 s2Step136EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step136EntryGBefore s2Step136EntryGAfter s2Step136EntryGvAfter
    s2Step136EntryGRow s2Step136EntryGOut 202 s2Step136EntryGFresh [(s2Step136EntryFvRow,82),(s2Step136EntryGvRow,82)] [s2Step136EntryFvFresh,s2Step136EntryGvFresh] [s2Step136EntryFvOut,s2Step136EntryGvOut]
    (growRow 769 s2Step136EntryGFresh) ((growRow 770 s2Step136EntryFvFresh ++ (growRow 771 s2Step136EntryGvFresh ++ []))) s2Step136EntryG_Incoming s2Step136EntryG_checked h2 s2Step136EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step136EntryFBefore s2Step136EntryFAfter s2Step136EntryGvAfter
    s2Step136EntryFRow s2Step136EntryFOut 202 s2Step136EntryFFresh [(s2Step136EntryGRow,202),(s2Step136EntryFvRow,82),(s2Step136EntryGvRow,82)] [s2Step136EntryGFresh,s2Step136EntryFvFresh,s2Step136EntryGvFresh] [s2Step136EntryGOut,s2Step136EntryFvOut,s2Step136EntryGvOut]
    (growRow 768 s2Step136EntryFFresh) ((growRow 769 s2Step136EntryGFresh ++ (growRow 770 s2Step136EntryFvFresh ++ (growRow 771 s2Step136EntryGvFresh ++ [])))) s2Step136EntryF_Incoming s2Step136EntryF_checked h1 s2Step136EntryF_Outgoing
  exact h0

private theorem s2Step136EntryBank_checked : compileHmrBankResizeLog .entry s2Step136EntryFBefore ⟨s2Step136EntryFRow,s2Step136EntryGRow,s2Step136EntryFvRow,s2Step136EntryGvRow⟩ ⟨202,202,82,82⟩ [s2Step136EntryFFresh,s2Step136EntryGFresh,s2Step136EntryFvFresh,s2Step136EntryGvFresh]=
    some (s2Step136EntryGvAfter,⟨s2Step136EntryFOut,s2Step136EntryGOut,s2Step136EntryFvOut,s2Step136EntryGvOut⟩,(growRow 768 s2Step136EntryFFresh ++ (growRow 769 s2Step136EntryGFresh ++ (growRow 770 s2Step136EntryFvFresh ++ (growRow 771 s2Step136EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step136EntryBank_rows]
  rfl

private def s2Step136ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<827) ∨ (828≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step136ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<827) ∨ (828≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step136ExitFBefore : Arena := s2Step136ExitGAfter

private def s2Step136ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 814],768⟩

private def s2Step136ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 849],770⟩

private def s2Step136ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 781, 782, 827],769⟩

private def s2Step136ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 837],771⟩

private theorem s2Step136ExitBank_incomingDistinct : ([s2Step136ExitGRow,s2Step136ExitFRow,s2Step136ExitFvRow,s2Step136ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step136ExitF_Incoming : rowsOwned s2Step136ExitFBefore [s2Step136ExitFRow,s2Step136ExitFvRow,s2Step136ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step136ExitGRow,s2Step136ExitFRow,s2Step136ExitFvRow,s2Step136ExitGvRow] 1 s2Step136ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step136ExitFBefore (fun q => (0≤q ∧ q<781) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<827) ∨ (828≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step136ExitBank_outgoingOwned : rowsOwned s2Step136ExitGvAfter [s2Step136ExitGOut,s2Step136ExitFOut,s2Step136ExitFvOut,s2Step136ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step136ExitGvAfter (fun q => (0≤q ∧ q<781) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step136ExitF_Outgoing : rowsOwned s2Step136ExitGvAfter [s2Step136ExitFOut,s2Step136ExitFvOut,s2Step136ExitGvOut] :=
  hmrRows_owned_drop s2Step136ExitGvAfter [s2Step136ExitGOut,s2Step136ExitFOut,s2Step136ExitFvOut,s2Step136ExitGvOut] 1 s2Step136ExitBank_outgoingOwned

private theorem s2Step136ExitF_distinct : (s2Step136ExitFRow.sign::s2Step136ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step136ExitF_owned : (s2Step136ExitFRow.sign::s2Step136ExitFRow.payload).toFinset⊆s2Step136ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step136ExitFBefore (fun q => (0≤q ∧ q<781) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<827) ∨ (828≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step136ExitF_retired : s2Step136ExitFBefore.retireSet s2Step136ExitFExtra.toFinset=s2Step136ExitFAfter := by
  unfold Arena.retireSet s2Step136ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step136ExitFBefore,s2Step136ExitGAfter,s2Step136ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step136ExitF_checked : planRowResizeLog s2Step136ExitFBefore s2Step136ExitFRow 202 []=
    some (s2Step136ExitFAfter,s2Step136ExitFOut,shrinkRow 768 s2Step136ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step136ExitFBefore s2Step136ExitFRow 202 s2Step136ExitF_distinct s2Step136ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step136ExitFRow.payload.take 202) s2Step136ExitFRow.sign=s2Step136ExitFOut := by decide +kernel
  have hi : s2Step136ExitFRow.payload.drop 202=s2Step136ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step136ExitF_retired] at result
  exact result

private def s2Step136ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<827) ∨ (828≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step136ExitFvBefore : Arena := s2Step136ExitFAfter

private theorem s2Step136ExitFv_Incoming : rowsOwned s2Step136ExitFvBefore [s2Step136ExitFvRow,s2Step136ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step136ExitGRow,s2Step136ExitFRow,s2Step136ExitFvRow,s2Step136ExitGvRow] 2 s2Step136ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step136ExitFvBefore (fun q => (0≤q ∧ q<781) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<827) ∨ (828≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step136ExitFv_Outgoing : rowsOwned s2Step136ExitGvAfter [s2Step136ExitFvOut,s2Step136ExitGvOut] :=
  hmrRows_owned_drop s2Step136ExitGvAfter [s2Step136ExitGOut,s2Step136ExitFOut,s2Step136ExitFvOut,s2Step136ExitGvOut] 2 s2Step136ExitBank_outgoingOwned

private theorem s2Step136ExitFv_distinct : (s2Step136ExitFvRow.sign::s2Step136ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step136ExitFv_owned : (s2Step136ExitFvRow.sign::s2Step136ExitFvRow.payload).toFinset⊆s2Step136ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step136ExitFvBefore (fun q => (0≤q ∧ q<781) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<827) ∨ (828≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step136ExitFv_retired : s2Step136ExitFvBefore.retireSet s2Step136ExitFvExtra.toFinset=s2Step136ExitFvAfter := by
  unfold Arena.retireSet s2Step136ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step136ExitFvBefore,s2Step136ExitFAfter,s2Step136ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step136ExitFv_checked : planRowResizeLog s2Step136ExitFvBefore s2Step136ExitFvRow 82 []=
    some (s2Step136ExitFvAfter,s2Step136ExitFvOut,shrinkRow 770 s2Step136ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step136ExitFvBefore s2Step136ExitFvRow 82 s2Step136ExitFv_distinct s2Step136ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step136ExitFvRow.payload.take 82) s2Step136ExitFvRow.sign=s2Step136ExitFvOut := by decide +kernel
  have hi : s2Step136ExitFvRow.payload.drop 82=s2Step136ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step136ExitFv_retired] at result
  exact result

private def s2Step136ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private theorem s2Step136ExitG_Incoming : rowsOwned s2Step136ExitGBefore [s2Step136ExitGRow,s2Step136ExitFRow,s2Step136ExitFvRow,s2Step136ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step136ExitGRow,s2Step136ExitFRow,s2Step136ExitFvRow,s2Step136ExitGvRow] 0 s2Step136ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step136ExitGBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step136ExitG_Outgoing : rowsOwned s2Step136ExitGvAfter [s2Step136ExitGOut,s2Step136ExitFOut,s2Step136ExitFvOut,s2Step136ExitGvOut] :=
  hmrRows_owned_drop s2Step136ExitGvAfter [s2Step136ExitGOut,s2Step136ExitFOut,s2Step136ExitFvOut,s2Step136ExitGvOut] 0 s2Step136ExitBank_outgoingOwned

private theorem s2Step136ExitG_distinct : (s2Step136ExitGRow.sign::s2Step136ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step136ExitG_owned : (s2Step136ExitGRow.sign::s2Step136ExitGRow.payload).toFinset⊆s2Step136ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step136ExitGBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step136ExitG_retired : s2Step136ExitGBefore.retireSet s2Step136ExitGExtra.toFinset=s2Step136ExitGAfter := by
  unfold Arena.retireSet s2Step136ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step136ExitGBefore,s2Step136ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step136ExitG_checked : planRowResizeLog s2Step136ExitGBefore s2Step136ExitGRow 200 []=
    some (s2Step136ExitGAfter,s2Step136ExitGOut,shrinkRow 769 s2Step136ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step136ExitGBefore s2Step136ExitGRow 200 s2Step136ExitG_distinct s2Step136ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step136ExitGRow.payload.take 200) s2Step136ExitGRow.sign=s2Step136ExitGOut := by decide +kernel
  have hi : s2Step136ExitGRow.payload.drop 200=s2Step136ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step136ExitG_retired] at result
  exact result

private def s2Step136ExitGvBefore : Arena := s2Step136ExitFvAfter

private theorem s2Step136ExitGv_Incoming : rowsOwned s2Step136ExitGvBefore [s2Step136ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step136ExitGRow,s2Step136ExitFRow,s2Step136ExitFvRow,s2Step136ExitGvRow] 3 s2Step136ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step136ExitGvBefore (fun q => (0≤q ∧ q<781) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<827) ∨ (828≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step136ExitGv_Outgoing : rowsOwned s2Step136ExitGvAfter [s2Step136ExitGvOut] :=
  hmrRows_owned_drop s2Step136ExitGvAfter [s2Step136ExitGOut,s2Step136ExitFOut,s2Step136ExitFvOut,s2Step136ExitGvOut] 3 s2Step136ExitBank_outgoingOwned

private theorem s2Step136ExitGv_distinct : (s2Step136ExitGvRow.sign::s2Step136ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step136ExitGv_owned : (s2Step136ExitGvRow.sign::s2Step136ExitGvRow.payload).toFinset⊆s2Step136ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step136ExitGvBefore (fun q => (0≤q ∧ q<781) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<827) ∨ (828≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step136ExitGv_retired : s2Step136ExitGvBefore.retireSet s2Step136ExitGvExtra.toFinset=s2Step136ExitGvAfter := by
  unfold Arena.retireSet s2Step136ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step136ExitGvBefore,s2Step136ExitFvAfter,s2Step136ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step136ExitGv_checked : planRowResizeLog s2Step136ExitGvBefore s2Step136ExitGvRow 82 []=
    some (s2Step136ExitGvAfter,s2Step136ExitGvOut,shrinkRow 771 s2Step136ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step136ExitGvBefore s2Step136ExitGvRow 82 s2Step136ExitGv_distinct s2Step136ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step136ExitGvRow.payload.take 82) s2Step136ExitGvRow.sign=s2Step136ExitGvOut := by decide +kernel
  have hi : s2Step136ExitGvRow.payload.drop 82=s2Step136ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step136ExitGv_retired] at result
  exact result

private theorem s2Step136ExitBank_rows : planWindowRowsLog s2Step136ExitGBefore [(s2Step136ExitGRow,200),(s2Step136ExitFRow,202),(s2Step136ExitFvRow,82),(s2Step136ExitGvRow,82)] [[],[],[],[]]=
    some (s2Step136ExitGvAfter,[s2Step136ExitGOut,s2Step136ExitFOut,s2Step136ExitFvOut,s2Step136ExitGvOut],(shrinkRow 769 s2Step136ExitGExtra ++ (shrinkRow 768 s2Step136ExitFExtra ++ (shrinkRow 770 s2Step136ExitFvExtra ++ (shrinkRow 771 s2Step136ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step136ExitGvAfter [] []=some (s2Step136ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step136ExitGvBefore s2Step136ExitGvAfter s2Step136ExitGvAfter
    s2Step136ExitGvRow s2Step136ExitGvOut 82 [] [] [] []
    (shrinkRow 771 s2Step136ExitGvExtra) ([]) s2Step136ExitGv_Incoming s2Step136ExitGv_checked h4 s2Step136ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step136ExitFvBefore s2Step136ExitFvAfter s2Step136ExitGvAfter
    s2Step136ExitFvRow s2Step136ExitFvOut 82 [] [(s2Step136ExitGvRow,82)] [[]] [s2Step136ExitGvOut]
    (shrinkRow 770 s2Step136ExitFvExtra) ((shrinkRow 771 s2Step136ExitGvExtra ++ [])) s2Step136ExitFv_Incoming s2Step136ExitFv_checked h3 s2Step136ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step136ExitFBefore s2Step136ExitFAfter s2Step136ExitGvAfter
    s2Step136ExitFRow s2Step136ExitFOut 202 [] [(s2Step136ExitFvRow,82),(s2Step136ExitGvRow,82)] [[],[]] [s2Step136ExitFvOut,s2Step136ExitGvOut]
    (shrinkRow 768 s2Step136ExitFExtra) ((shrinkRow 770 s2Step136ExitFvExtra ++ (shrinkRow 771 s2Step136ExitGvExtra ++ []))) s2Step136ExitF_Incoming s2Step136ExitF_checked h2 s2Step136ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step136ExitGBefore s2Step136ExitGAfter s2Step136ExitGvAfter
    s2Step136ExitGRow s2Step136ExitGOut 200 [] [(s2Step136ExitFRow,202),(s2Step136ExitFvRow,82),(s2Step136ExitGvRow,82)] [[],[],[]] [s2Step136ExitFOut,s2Step136ExitFvOut,s2Step136ExitGvOut]
    (shrinkRow 769 s2Step136ExitGExtra) ((shrinkRow 768 s2Step136ExitFExtra ++ (shrinkRow 770 s2Step136ExitFvExtra ++ (shrinkRow 771 s2Step136ExitGvExtra ++ [])))) s2Step136ExitG_Incoming s2Step136ExitG_checked h1 s2Step136ExitG_Outgoing
  exact h0

private theorem s2Step136ExitBank_checked : compileHmrBankResizeLog .exit s2Step136ExitGBefore ⟨s2Step136ExitFRow,s2Step136ExitGRow,s2Step136ExitFvRow,s2Step136ExitGvRow⟩ ⟨202,200,82,82⟩ [[],[],[],[]]=
    some (s2Step136ExitGvAfter,⟨s2Step136ExitFOut,s2Step136ExitGOut,s2Step136ExitFvOut,s2Step136ExitGvOut⟩,(shrinkRow 769 s2Step136ExitGExtra ++ (shrinkRow 768 s2Step136ExitFExtra ++ (shrinkRow 770 s2Step136ExitFvExtra ++ (shrinkRow 771 s2Step136ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step136ExitBank_rows]
  rfl

private theorem s2Step136Add0_apart : Disjoint s2Step136Add0Arena.live s2Step136Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step136Add0Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step136Add0_card : s2Step136Add0Arena.live.card=879 := by
  decide +kernel

private theorem s2Step136Add0_borrowed : s2Step136Add0Arena.checkBorrow (hmrHybridCount s2Step136Add0Arena s2Step136Add0B.length) s2Step136Add0Work=some s2Step136Add0During := by
  have len : s2Step136Add0Work.length=hmrHybridCount s2Step136Add0Arena s2Step136Add0B.length := by
    rw [hmrHybridCount,s2Step136Add0_card]
    decide +kernel
  have nd : s2Step136Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step136Add0Arena s2Step136Add0During s2Step136Add0Work.toFinset s2Step136Add0_bounded s2Step136Add0_apart rfl

private theorem s2Step136Add0_distinct : (790::826::815::(s2Step136Add0A++s2Step136Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step136Add0_owned : (790::826::815::(s2Step136Add0A++s2Step136Add0B)).toFinset⊆s2Step136Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step136Add0Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step136Add0_checked : compileHmrHybridCinLog s2Step136Add0Arena 826 790 815 s2Step136Add0A s2Step136Add0B s2Step136Add0Work=some s2Step136Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step136Add0Arena s2Step136Add0During 826 790 815 s2Step136Add0A s2Step136Add0B s2Step136Add0Work
    (by decide +kernel) (by decide +kernel) s2Step136Add0_distinct
    (fun q hq => s2Step136Add0_owned (List.mem_toFinset.mpr hq)) s2Step136Add0_borrowed

private theorem s2Step136Add1_apart : Disjoint s2Step136Add1Arena.live s2Step136Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step136Add1Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step136Add1_card : s2Step136Add1Arena.live.card=879 := by
  decide +kernel

private theorem s2Step136Add1_borrowed : s2Step136Add1Arena.checkBorrow (hmrHybridCount s2Step136Add1Arena s2Step136Add1B.length) s2Step136Add1Work=some s2Step136Add1During := by
  have len : s2Step136Add1Work.length=hmrHybridCount s2Step136Add1Arena s2Step136Add1B.length := by
    rw [hmrHybridCount,s2Step136Add1_card]
    decide +kernel
  have nd : s2Step136Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step136Add1Arena s2Step136Add1During s2Step136Add1Work.toFinset s2Step136Add1_bounded s2Step136Add1_apart rfl

private theorem s2Step136Add1_distinct : (790::826::815::(s2Step136Add1A++s2Step136Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step136Add1_owned : (790::826::815::(s2Step136Add1A++s2Step136Add1B)).toFinset⊆s2Step136Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step136Add1Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step136Add1_checked : compileHmrHybridCinLog s2Step136Add1Arena 826 790 815 s2Step136Add1A s2Step136Add1B s2Step136Add1Work=some s2Step136Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step136Add1Arena s2Step136Add1During 826 790 815 s2Step136Add1A s2Step136Add1B s2Step136Add1Work
    (by decide +kernel) (by decide +kernel) s2Step136Add1_distinct
    (fun q hq => s2Step136Add1_owned (List.mem_toFinset.mpr hq)) s2Step136Add1_borrowed

private theorem s2Step136F4_apart : Disjoint (s2Step136Add0A++s2Step136Add0B).toFinset (s2Step136Add1A++s2Step136Add1B).toFinset := by
  have nd : ((s2Step136Add0A++s2Step136Add0B)++(s2Step136Add1A++s2Step136Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step136F4_carry : s2Step136F4FlagArena.checkBorrow 1 [815]=some s2Step136Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step136F4FlagArena,s2Step136HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step136F4FlagArena,s2Step136HeadFvAfter,s2Step136Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step136F4_distinct : (783::826::790::815::((s2Step136Add0A++s2Step136Add1A)++(s2Step136Add0B++s2Step136Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step136F4_flag : s2Step136HeadFvAfter.checkBorrow 1 [790]=some s2Step136F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step136HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step136F4_owned : (783::826::((s2Step136Add0A++s2Step136Add1A)++(s2Step136Add0B++s2Step136Add1B))).toFinset⊆s2Step136HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step136HeadFvAfter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step136F4_checked : compileHmrHybridF4Log s2Step136HeadFvAfter 783 826 s2Step136Add0A s2Step136Add0B s2Step136Add1A s2Step136Add1B [790] [815] s2Step136Add0Work s2Step136Add1Work=some s2Step136F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step136HeadFvAfter s2Step136F4FlagArena s2Step136Add0Arena s2Step136Add0During s2Step136Add1During 783 826
    s2Step136Add0A s2Step136Add0B s2Step136Add1A s2Step136Add1B [790] [815] s2Step136Add0Work s2Step136Add1Work
    (fun q hq => s2Step136F4_owned (List.mem_toFinset.mpr hq)) s2Step136F4_flag s2Step136F4_carry
    s2Step136F4_distinct s2Step136F4_apart s2Step136Add0_checked s2Step136Add1_checked

private theorem s2Step136Front_branch : s2Step136FrontSigmaArena.checkBorrow 1 [826]=some s2Step136HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step136FrontSigmaArena,s2Step136EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step136FrontSigmaArena,s2Step136EntryGvAfter,s2Step136HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step136Front_entry : HmrFrontEntryValid s2Step136EntryFBefore s2Step136FrontBank 202 82 ⟨202,200,82,82⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step136FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step136EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step136EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<826) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step136FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step136Front_sigma : s2Step136EntryGvAfter.checkBorrow 1 [783]=some s2Step136FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step136EntryGvAfter,arenaWires]
  · rfl

private def s2Step136HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step136HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step136HeadFBefore : Arena := s2Step136HeadGAfter

private def s2Step136HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713],768⟩

private def s2Step136HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829],770⟩

private def s2Step136HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 781, 782],769⟩

private def s2Step136HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817],771⟩

private theorem s2Step136HeadBank_incomingDistinct : ([s2Step136HeadGRow,s2Step136HeadFRow,s2Step136HeadGvRow,s2Step136HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step136HeadF_Incoming : rowsOwned s2Step136HeadFBefore [s2Step136HeadFRow,s2Step136HeadGvRow,s2Step136HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step136HeadGRow,s2Step136HeadFRow,s2Step136HeadGvRow,s2Step136HeadFvRow] 1 s2Step136HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step136HeadFBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step136HeadBank_outgoingOwned : rowsOwned s2Step136HeadFvAfter [s2Step136HeadGOut,s2Step136HeadFOut,s2Step136HeadGvOut,s2Step136HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step136HeadFvAfter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step136HeadF_Outgoing : rowsOwned s2Step136HeadFvAfter [s2Step136HeadFOut,s2Step136HeadGvOut,s2Step136HeadFvOut] :=
  hmrRows_owned_drop s2Step136HeadFvAfter [s2Step136HeadGOut,s2Step136HeadFOut,s2Step136HeadGvOut,s2Step136HeadFvOut] 1 s2Step136HeadBank_outgoingOwned

private theorem s2Step136HeadF_distinct : (s2Step136HeadFRow.sign::s2Step136HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step136HeadF_owned : (s2Step136HeadFRow.sign::s2Step136HeadFRow.payload).toFinset⊆s2Step136HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step136HeadFBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step136HeadF_reserved : s2Step136HeadFBefore.reserve s2Step136HeadFFresh.toFinset=some s2Step136HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step136HeadFFresh,arenaWires]
  · norm_num [s2Step136HeadFBefore,s2Step136HeadGAfter,s2Step136HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step136HeadFAfter,s2Step136HeadFBefore,s2Step136HeadGAfter,s2Step136HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step136HeadF_checked : planRowResizeLog s2Step136HeadFBefore s2Step136HeadFRow 203 s2Step136HeadFFresh=
    some (s2Step136HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 814],768⟩,growRow 768 s2Step136HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step136HeadFBefore s2Step136HeadFAfter s2Step136HeadFRow 203 s2Step136HeadFFresh
    s2Step136HeadF_distinct s2Step136HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step136HeadF_reserved
  have rowEq : WindowRow.mk (s2Step136HeadFRow.payload++s2Step136HeadFFresh) s2Step136HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 814],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step136HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step136HeadFvBefore : Arena := s2Step136HeadGvAfter

private theorem s2Step136HeadFv_Incoming : rowsOwned s2Step136HeadFvBefore [s2Step136HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step136HeadGRow,s2Step136HeadFRow,s2Step136HeadGvRow,s2Step136HeadFvRow] 3 s2Step136HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step136HeadFvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step136HeadFv_Outgoing : rowsOwned s2Step136HeadFvAfter [s2Step136HeadFvOut] :=
  hmrRows_owned_drop s2Step136HeadFvAfter [s2Step136HeadGOut,s2Step136HeadFOut,s2Step136HeadGvOut,s2Step136HeadFvOut] 3 s2Step136HeadBank_outgoingOwned

private theorem s2Step136HeadFv_distinct : (s2Step136HeadFvRow.sign::s2Step136HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step136HeadFv_owned : (s2Step136HeadFvRow.sign::s2Step136HeadFvRow.payload).toFinset⊆s2Step136HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step136HeadFvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step136HeadFv_reserved : s2Step136HeadFvBefore.reserve s2Step136HeadFvFresh.toFinset=some s2Step136HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step136HeadFvFresh,arenaWires]
  · norm_num [s2Step136HeadFvBefore,s2Step136HeadGvAfter,s2Step136HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step136HeadFvAfter,s2Step136HeadFvBefore,s2Step136HeadGvAfter,s2Step136HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step136HeadFv_checked : planRowResizeLog s2Step136HeadFvBefore s2Step136HeadFvRow 83 s2Step136HeadFvFresh=
    some (s2Step136HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 849],770⟩,growRow 770 s2Step136HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step136HeadFvBefore s2Step136HeadFvAfter s2Step136HeadFvRow 83 s2Step136HeadFvFresh
    s2Step136HeadFv_distinct s2Step136HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step136HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step136HeadFvRow.payload++s2Step136HeadFvFresh) s2Step136HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 849],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step136HeadG_Incoming : rowsOwned s2Step136HeadGBefore [s2Step136HeadGRow,s2Step136HeadFRow,s2Step136HeadGvRow,s2Step136HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step136HeadGRow,s2Step136HeadFRow,s2Step136HeadGvRow,s2Step136HeadFvRow] 0 s2Step136HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step136HeadGBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step136HeadG_Outgoing : rowsOwned s2Step136HeadFvAfter [s2Step136HeadGOut,s2Step136HeadFOut,s2Step136HeadGvOut,s2Step136HeadFvOut] :=
  hmrRows_owned_drop s2Step136HeadFvAfter [s2Step136HeadGOut,s2Step136HeadFOut,s2Step136HeadGvOut,s2Step136HeadFvOut] 0 s2Step136HeadBank_outgoingOwned

private theorem s2Step136HeadG_distinct : (s2Step136HeadGRow.sign::s2Step136HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step136HeadG_owned : (s2Step136HeadGRow.sign::s2Step136HeadGRow.payload).toFinset⊆s2Step136HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step136HeadGBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step136HeadG_reserved : s2Step136HeadGBefore.reserve s2Step136HeadGFresh.toFinset=some s2Step136HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step136HeadGFresh,arenaWires]
  · norm_num [s2Step136HeadGBefore,s2Step136HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step136HeadGAfter,s2Step136HeadGBefore,s2Step136HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step136HeadG_checked : planRowResizeLog s2Step136HeadGBefore s2Step136HeadGRow 203 s2Step136HeadGFresh=
    some (s2Step136HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 781, 782, 827],769⟩,growRow 769 s2Step136HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step136HeadGBefore s2Step136HeadGAfter s2Step136HeadGRow 203 s2Step136HeadGFresh
    s2Step136HeadG_distinct s2Step136HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step136HeadG_reserved
  have rowEq : WindowRow.mk (s2Step136HeadGRow.payload++s2Step136HeadGFresh) s2Step136HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 781, 782, 827],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step136HeadGvBefore : Arena := s2Step136HeadFAfter

private theorem s2Step136HeadGv_Incoming : rowsOwned s2Step136HeadGvBefore [s2Step136HeadGvRow,s2Step136HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step136HeadGRow,s2Step136HeadFRow,s2Step136HeadGvRow,s2Step136HeadFvRow] 2 s2Step136HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step136HeadGvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step136HeadGv_Outgoing : rowsOwned s2Step136HeadFvAfter [s2Step136HeadGvOut,s2Step136HeadFvOut] :=
  hmrRows_owned_drop s2Step136HeadFvAfter [s2Step136HeadGOut,s2Step136HeadFOut,s2Step136HeadGvOut,s2Step136HeadFvOut] 2 s2Step136HeadBank_outgoingOwned

private theorem s2Step136HeadGv_distinct : (s2Step136HeadGvRow.sign::s2Step136HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step136HeadGv_owned : (s2Step136HeadGvRow.sign::s2Step136HeadGvRow.payload).toFinset⊆s2Step136HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step136HeadGvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step136HeadGv_reserved : s2Step136HeadGvBefore.reserve s2Step136HeadGvFresh.toFinset=some s2Step136HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step136HeadGvFresh,arenaWires]
  · norm_num [s2Step136HeadGvBefore,s2Step136HeadFAfter,s2Step136HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step136HeadGvAfter,s2Step136HeadGvBefore,s2Step136HeadFAfter,s2Step136HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step136HeadGv_checked : planRowResizeLog s2Step136HeadGvBefore s2Step136HeadGvRow 83 s2Step136HeadGvFresh=
    some (s2Step136HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 837],771⟩,growRow 771 s2Step136HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step136HeadGvBefore s2Step136HeadGvAfter s2Step136HeadGvRow 83 s2Step136HeadGvFresh
    s2Step136HeadGv_distinct s2Step136HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step136HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step136HeadGvRow.payload++s2Step136HeadGvFresh) s2Step136HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 837],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step136HeadBank_rows : planWindowRowsLog s2Step136HeadGBefore [(s2Step136HeadGRow,203),(s2Step136HeadFRow,203),(s2Step136HeadGvRow,83),(s2Step136HeadFvRow,83)] [s2Step136HeadGFresh,s2Step136HeadFFresh,s2Step136HeadGvFresh,s2Step136HeadFvFresh]=
    some (s2Step136HeadFvAfter,[s2Step136HeadGOut,s2Step136HeadFOut,s2Step136HeadGvOut,s2Step136HeadFvOut],(growRow 769 s2Step136HeadGFresh ++ (growRow 768 s2Step136HeadFFresh ++ (growRow 771 s2Step136HeadGvFresh ++ (growRow 770 s2Step136HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step136HeadFvAfter [] []=some (s2Step136HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step136HeadFvBefore s2Step136HeadFvAfter s2Step136HeadFvAfter
    s2Step136HeadFvRow s2Step136HeadFvOut 83 s2Step136HeadFvFresh [] [] []
    (growRow 770 s2Step136HeadFvFresh) ([]) s2Step136HeadFv_Incoming s2Step136HeadFv_checked h4 s2Step136HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step136HeadGvBefore s2Step136HeadGvAfter s2Step136HeadFvAfter
    s2Step136HeadGvRow s2Step136HeadGvOut 83 s2Step136HeadGvFresh [(s2Step136HeadFvRow,83)] [s2Step136HeadFvFresh] [s2Step136HeadFvOut]
    (growRow 771 s2Step136HeadGvFresh) ((growRow 770 s2Step136HeadFvFresh ++ [])) s2Step136HeadGv_Incoming s2Step136HeadGv_checked h3 s2Step136HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step136HeadFBefore s2Step136HeadFAfter s2Step136HeadFvAfter
    s2Step136HeadFRow s2Step136HeadFOut 203 s2Step136HeadFFresh [(s2Step136HeadGvRow,83),(s2Step136HeadFvRow,83)] [s2Step136HeadGvFresh,s2Step136HeadFvFresh] [s2Step136HeadGvOut,s2Step136HeadFvOut]
    (growRow 768 s2Step136HeadFFresh) ((growRow 771 s2Step136HeadGvFresh ++ (growRow 770 s2Step136HeadFvFresh ++ []))) s2Step136HeadF_Incoming s2Step136HeadF_checked h2 s2Step136HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step136HeadGBefore s2Step136HeadGAfter s2Step136HeadFvAfter
    s2Step136HeadGRow s2Step136HeadGOut 203 s2Step136HeadGFresh [(s2Step136HeadFRow,203),(s2Step136HeadGvRow,83),(s2Step136HeadFvRow,83)] [s2Step136HeadFFresh,s2Step136HeadGvFresh,s2Step136HeadFvFresh] [s2Step136HeadFOut,s2Step136HeadGvOut,s2Step136HeadFvOut]
    (growRow 769 s2Step136HeadGFresh) ((growRow 768 s2Step136HeadFFresh ++ (growRow 771 s2Step136HeadGvFresh ++ (growRow 770 s2Step136HeadFvFresh ++ [])))) s2Step136HeadG_Incoming s2Step136HeadG_checked h1 s2Step136HeadG_Outgoing
  exact h0

private theorem s2Step136HeadBank_checked : compileHmrBankResizeLog .headroom s2Step136HeadGBefore ⟨s2Step136HeadFRow,s2Step136HeadGRow,s2Step136HeadFvRow,s2Step136HeadGvRow⟩ ⟨203,203,83,83⟩ [s2Step136HeadGFresh,s2Step136HeadFFresh,s2Step136HeadGvFresh,s2Step136HeadFvFresh]=
    some (s2Step136HeadFvAfter,⟨s2Step136HeadFOut,s2Step136HeadGOut,s2Step136HeadFvOut,s2Step136HeadGvOut⟩,(growRow 769 s2Step136HeadGFresh ++ (growRow 768 s2Step136HeadFFresh ++ (growRow 771 s2Step136HeadGvFresh ++ (growRow 770 s2Step136HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step136HeadBank_rows]
  rfl

private theorem s2Step136Front_checked : compileHmrSourceFrontLog s2Step136EntryFBefore s2Step136FrontBank 202 82 ⟨202,200,82,82⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step136FrontLog=some s2Step136FrontPlan := by
  have pairEq : s2Step136FrontPair=⟨s2Step136HeadFRow,s2Step136HeadGRow,s2Step136HeadFvRow,s2Step136HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step136FrontHead=⟨s2Step136ExitFRow,s2Step136ExitGRow,s2Step136ExitFvRow,s2Step136ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step136Add0A=s2Step136FrontHead.f.wires := by decide +kernel
  have gEq : s2Step136Add0B=s2Step136FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step136Add1A=s2Step136FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step136Add1B=s2Step136FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step136EntryFBefore s2Step136FrontBank 202 82 ⟨202,200,82,82⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step136FrontLog s2Step136FrontPlan
  · exact s2Step136Front_entry
  · exact s2Step136EntryBank_checked
  · exact s2Step136Front_sigma
  · rfl
  · exact s2Step136Front_branch
  · rfl
  · simpa only [s2Step136FrontPlan,pairEq] using s2Step136HeadBank_checked
  · simpa only [s2Step136FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step136F4_checked
  · exact s2Step136Counter_checked
  · rfl
  · simpa only [s2Step136FrontPlan,headEq] using s2Step136ExitBank_checked

private theorem s2Step136Complete_explicit_checked : compileHmrEarlyStepLog s2Step136EntryFBefore s2Step136FrontBank 202 82 ⟨202,200,82,82⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step136CompleteLog=some s2Step136CompletePlan := by
  let Q := s2Step136EarlyControlPlan
  have hq := s2Step136EarlyControl_plan_checked
  have fv1 : s2Step136CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step136CompleteOut.fv.payload[2]?.getD s2Step136CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step136CompleteOut.fv.payload[3]?.getD s2Step136CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step136CompleteOut.fv.payload[4]?.getD s2Step136CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step136EntryFBefore s2Step136EarlyControlArena s2Step136FrontBank 202 82 ⟨202,200,82,82⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step136CompleteLog s2Step136FrontPlan Q
    s2Step136Front_checked s2Step136Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step136Complete_owned s2Step136Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step136EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 783 s2Step136CompleteOut.fv.second (s2Step136CompleteOut.fv.payload[2]?.getD s2Step136CompleteOut.fv.sign) (s2Step136CompleteOut.fv.payload[3]?.getD s2Step136CompleteOut.fv.sign) (s2Step136CompleteOut.fv.payload[4]?.getD s2Step136CompleteOut.fv.sign) 826 37 s2Step136EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep136Arena : Arena := s2Step136EntryFBefore
def s2PrivateStep136Bank : WindowBank := s2Step136FrontBank
def s2PrivateStep136Spec : HmrSourceWalkStepLog := ⟨202,82,⟨202,200,82,82⟩,37,.early s2Step136CompleteLog⟩
def s2PrivateStep136Plan : HmrSourceStepPlan := .early s2Step136CompletePlan
theorem s2PrivateStep136_source : s2PrivateStep136Spec=s2ObservedLogs128[8] := rfl
theorem s2PrivateStep136_checked : compileHmrSourceStepLog s2PrivateStep136Arena s2PrivateStep136Bank
    s2PrivateStep136Spec.fgWidth s2PrivateStep136Spec.vWidth s2PrivateStep136Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881]
    6 498 136 s2PrivateStep136Spec.need none s2PrivateStep136Spec.log=some s2PrivateStep136Plan := by
  change compileHmrSourceStepLog s2Step136EntryFBefore s2Step136FrontBank 202 82 ⟨202,200,82,82⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 6 498 136 37 none (.early s2Step136CompleteLog)=some (.early s2Step136CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 136<498)]
  rw [s2Step136Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
