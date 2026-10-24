import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep132
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

private def s2Step134CompleteMoves : List (Wire × Wire) := [(782,201)]

private def s2Step134EarlyControlLog : HmrEarlyControlLog := ⟨[782, 781, 814, 826, 783],[829],[837],[849, 790, 815, 867, 877, 879],[]⟩

private def s2Step134FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[826], [814], [781], [822]],[[], [], [], []]⟩,[817],[827],[783],[829],[837, 849, 790, 815, 867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[837, 849, 790, 815, 867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[783, 829, 837, 849]⟩

private def s2Step134CompleteLog : HmrEarlyStepLog := ⟨s2Step134FrontLog,s2Step134CompleteMoves,s2Step134EarlyControlLog⟩

private def s2Step134ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713],768⟩

private def s2Step134ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822],770⟩

private def s2Step134ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200],769⟩

private def s2Step134ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835],771⟩

private def s2Step134FrontOut : WindowBank := ⟨s2Step134ExitFOut,s2Step134ExitGOut,s2Step134ExitFvOut,s2Step134ExitGvOut⟩

private def s2Step134CompleteOut : WindowBank := s2Step134FrontOut.repacked s2Step134CompleteMoves

private def s2Step134EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step134EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step134EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step134EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step134EarlyControlPositiveArena,[829],s2Step134EarlyControlEqualityArena,[837],⟨⟨817,false⟩,[⟨⟨829,false⟩,837⟩]⟩⟩

private def s2Step134EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step134EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step134EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step134EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step134EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step134EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step134EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,782⟩,⟨⟨774,false⟩,781⟩,⟨⟨775,false⟩,814⟩,⟨⟨776,false⟩,826⟩,⟨⟨777,false⟩,783⟩]⟩

private def s2Step134EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step134EarlyControlZeroArena,s2Step134EarlyControlZeroPlan,s2Step134EarlyControlClassPlan,s2Step134EarlyControlFlagArena,s2Step134EarlyControlFittedArena,s2Step134EarlyControlHistoryArena,s2Step134EarlyControlSigmaArena,s2Step134EarlyControlOutputArena,s2Step134EarlyControlLog⟩

private def s2Step134CounterWork : List Wire := [783, 829, 837, 849]

private theorem s2Step134Counter_bounded : s2Step134CounterWork.toFinset⊆arenaWires := by norm_num [s2Step134CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step134HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step134CounterDuring : Arena := ⟨s2Step134HeadFvAfter.live∪s2Step134CounterWork.toFinset,Finset.union_subset s2Step134HeadFvAfter.bounded s2Step134Counter_bounded⟩

private def s2Step134EntryFFresh : List Wire := []

private def s2Step134EntryFvFresh : List Wire := []

private def s2Step134EntryGFresh : List Wire := []

private def s2Step134EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step134EntryGvAfter : Arena := s2Step134EntryFBefore

private def s2Step134EntryGvFresh : List Wire := []

private def s2Step134ExitFExtra : List Wire := [814]

private def s2Step134ExitGExtra : List Wire := [201, 826]

private def s2Step134ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<201) ∨ (202≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step134ExitGvExtra : List Wire := [781]

private def s2Step134Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step134Add0Work : List Wire := [837, 849, 790, 815, 867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step134Add0_bounded : s2Step134Add0Work.toFinset⊆arenaWires := by
  have h : s2Step134Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step134Add0During : Arena := ⟨s2Step134Add0Arena.live∪s2Step134Add0Work.toFinset,Finset.union_subset s2Step134Add0Arena.bounded s2Step134Add0_bounded⟩

private def s2Step134Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step134Add1Work : List Wire := [837, 849, 790, 815, 867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step134Add1_bounded : s2Step134Add1Work.toFinset⊆arenaWires := by
  have h : s2Step134Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step134Add1During : Arena := ⟨s2Step134Add1Arena.live∪s2Step134Add1Work.toFinset,Finset.union_subset s2Step134Add1Arena.bounded s2Step134Add1_bounded⟩

private def s2Step134F4FlagArena : Arena := ⟨s2Step134HeadFvAfter.live∪{783},Finset.union_subset s2Step134HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step134F4Plan : HmrHybridF4Plan := ⟨s2Step134F4FlagArena,[783],s2Step134Add0Arena,[829],s2Step134Add0During,s2Step134Add0Work,s2Step134Add1During,s2Step134Add1Work⟩

private def s2Step134HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 814],768⟩

private def s2Step134HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822],770⟩

private def s2Step134HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 826],769⟩

private def s2Step134HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 781],771⟩

private def s2Step134FrontHead : WindowBank := ⟨s2Step134HeadFOut,s2Step134HeadGOut,s2Step134HeadFvOut,s2Step134HeadGvOut⟩

private def s2Step134EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713],768⟩

private def s2Step134EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840],770⟩

private def s2Step134EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201],769⟩

private def s2Step134EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835],771⟩

private def s2Step134FrontPair : WindowBank := ⟨s2Step134EntryFOut,s2Step134EntryGOut,s2Step134EntryFvOut,s2Step134EntryGvOut⟩

private def s2Step134FrontSigmaArena : Arena := ⟨s2Step134EntryGvAfter.live∪{817},Finset.union_subset s2Step134EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step134HeadFFresh : List Wire := [814]

private def s2Step134HeadFvFresh : List Wire := [822]

private def s2Step134HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step134HeadGFresh : List Wire := [826]

private def s2Step134HeadGvFresh : List Wire := [781]

private def s2Step134FrontPlan : HmrSourceFront := ⟨s2Step134EntryGvAfter,s2Step134FrontPair,(growRow 768 s2Step134EntryFFresh ++ (growRow 769 s2Step134EntryGFresh ++ (growRow 770 s2Step134EntryFvFresh ++ (growRow 771 s2Step134EntryGvFresh ++ [])))),s2Step134FrontSigmaArena,[817],s2Step134HeadGBefore,[827],
  s2Step134HeadFvAfter,s2Step134FrontHead,(growRow 769 s2Step134HeadGFresh ++ (growRow 768 s2Step134HeadFFresh ++ (growRow 771 s2Step134HeadGvFresh ++ (growRow 770 s2Step134HeadFvFresh ++ [])))),s2Step134F4Plan,s2Step134CounterDuring,s2Step134CounterWork,s2Step134ExitGvAfter,s2Step134FrontOut,(shrinkRow 769 s2Step134ExitGExtra ++ (shrinkRow 768 s2Step134ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step134ExitGvExtra ++ []))))⟩

private def s2Step134CompletePlan : HmrEarlyStepPlan := ⟨s2Step134FrontPlan,s2Step134EarlyControlArena,s2Step134EarlyControlPlan,s2Step134CompleteMoves⟩

private theorem s2Step134Complete_apart : List.Disjoint (s2Step134CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [817, 827, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] := by
  have nd : ((s2Step134CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[817, 827, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step134Complete_owned : (s2Step134CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step134EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step134EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private def s2Step134CompleteMoveArena : Arena := ⟨s2Step134ExitGvAfter.live∪{201},Finset.union_subset s2Step134ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step134Complete_repack : s2Step134ExitGvAfter.checkRepack s2Step134CompleteMoves=some s2Step134EarlyControlArena := by
  have owned : 782∈s2Step134ExitGvAfter.live := by norm_num [s2Step134ExitGvAfter,arenaWires]
  have reserve : s2Step134ExitGvAfter.reserve {201}=some s2Step134CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step134ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step134CompleteMoveArena.retireSet {782}=s2Step134EarlyControlArena := by
    unfold Arena.retireSet s2Step134EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step134CompleteMoveArena,s2Step134ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step134CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step134CompleteMoveArena.retireSet {782}).checkRepack []=some s2Step134EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step134EarlyControl_branchOwned : ([827] : List Wire).toFinset⊆s2Step134EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step134EarlyControlSigmaArena (fun q => (0≤q ∧ q<781) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step134EarlyControl_branch : compileHmrBranchRetirement s2Step134EarlyControlSigmaArena 827=some s2Step134EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step134EarlyControl_branchOwned
  · ext q
    simp [s2Step134EarlyControlOutputArena,s2Step134EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step134EarlyControl_classEqualityBorrow : s2Step134EarlyControlPositiveArena.checkBorrow (([817, 829] : List Wire).length-1) s2Step134EarlyControlLog.classWork=some s2Step134EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step134EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step134EarlyControlPositiveArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step134EarlyControlEqualityArena,s2Step134EarlyControlPositiveArena,s2Step134EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step134EarlyControl_classEqualityOwned : ([817, 829] : List Wire).toFinset⊆s2Step134EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step134EarlyControlPositiveArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step134EarlyControl_classEquality : compileHmrEqualityLog s2Step134EarlyControlPositiveArena [817, 829] 0 s2Step134EarlyControlLog.classWork=some (s2Step134EarlyControlEqualityArena,s2Step134EarlyControlLog.classWork,s2Step134EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step134EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step134EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step134EarlyControl_classOwned : ([777, 783, 817] : List Wire).toFinset⊆s2Step134EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step134EarlyControlZeroArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step134EarlyControl_positiveBorrow : s2Step134EarlyControlZeroArena.checkBorrow (1) s2Step134EarlyControlLog.positiveWork=some s2Step134EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step134EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step134EarlyControlZeroArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step134EarlyControlPositiveArena,s2Step134EarlyControlZeroArena,s2Step134EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step134EarlyControl_class : compileHmrSourceClassLog s2Step134EarlyControlZeroArena false 777 s2Step134EarlyControlZeroPlan.top 0 817 s2Step134EarlyControlLog.positiveWork s2Step134EarlyControlLog.classWork=some s2Step134EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step134EarlyControlClassPlan s2Step134EarlyControlZeroArena false 777 s2Step134EarlyControlZeroPlan.top 0 817
  constructor
  · decide +kernel
  · exact s2Step134EarlyControl_classOwned
  · exact s2Step134EarlyControl_positiveBorrow
  · exact s2Step134EarlyControl_classEquality

private theorem s2Step134EarlyControl_entryRecordOwned : ([827, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).toFinset⊆s2Step134EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step134EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step134EarlyControl_entrySigmaOwned : ([817, 254] : List Wire).toFinset⊆s2Step134EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step134EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step134EarlyControl_fitBorrow : s2Step134EarlyControlFlagArena.checkBorrow ((37-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).length)) s2Step134EarlyControlLog.recordFresh=some s2Step134EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step134EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step134EarlyControlFlagArena (fun q => (0≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step134EarlyControlFittedArena,s2Step134EarlyControlFlagArena,s2Step134EarlyControlLog,arenaWires]

private theorem s2Step134EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).toFinset⊆s2Step134EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step134EarlyControlFlagArena (fun q => (0≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step134EarlyControl_fit : compileHmrRecordGrowLog s2Step134EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step134EarlyControlLog.recordFresh=some s2Step134EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step134EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step134EarlyControl_fitBorrow

private theorem s2Step134EarlyControl_flagsBorrow : s2Step134EarlyControlEqualityArena.checkBorrow (6) s2Step134EarlyControlLog.flagWork=some s2Step134EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step134EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step134EarlyControlEqualityArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step134EarlyControlFlagArena,s2Step134EarlyControlEqualityArena,s2Step134EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step134EarlyControl_flagsOwned : ([837, 253, 252, 251] : List Wire).toFinset⊆s2Step134EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step134EarlyControlEqualityArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step134EarlyControl_flags : compileHmrFlagsLog s2Step134EarlyControlClassPlan.equalityArena s2Step134EarlyControlClassPlan.equality.top 253 252 251 s2Step134EarlyControlLog.flagWork=some s2Step134EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step134EarlyControl_flagsOwned⟩
  · exact s2Step134EarlyControl_flagsBorrow

private theorem s2Step134EarlyControl_historyBorrow : s2Step134EarlyControlArena.checkBorrow ((37-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).length)) s2Step134EarlyControlLog.recordFresh=some s2Step134EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step134EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step134EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step134EarlyControlHistoryArena,s2Step134EarlyControlArena,s2Step134EarlyControlLog,arenaWires]

private theorem s2Step134EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).toFinset⊆s2Step134EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step134EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step134EarlyControl_history : compileHmrRecordGrowLog s2Step134EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step134EarlyControlLog.recordFresh=some s2Step134EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step134EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step134EarlyControl_historyBorrow

private theorem s2Step134EarlyControl_sigmaOwned : ([254, 817] : List Wire).toFinset⊆s2Step134EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step134EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step134EarlyControl_sigmaReleaseOwned : ([817] : List Wire).toFinset⊆s2Step134EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step134EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step134EarlyControl_sigmaRelease : s2Step134EarlyControlHistoryArena.release {817} (fun _ => false)=some s2Step134EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step134EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step134EarlyControlSigmaArena,s2Step134EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step134EarlyControl_sigma : compileHmrSigmaDropLog s2Step134EarlyControlHistoryArena false 0 0 254 817 []=some s2Step134EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step134EarlyControl_sigmaOwned⟩
  · exact s2Step134EarlyControl_sigmaRelease

private theorem s2Step134EarlyControl_zeroBorrow : s2Step134EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step134EarlyControlLog.zeroWork=some s2Step134EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step134EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step134EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step134EarlyControlZeroArena,s2Step134EarlyControlArena,s2Step134EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step134EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step134EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step134EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step134EarlyControl_zero : compileHmrEqualityLog s2Step134EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step134EarlyControlLog.zeroWork=some (s2Step134EarlyControlZeroArena,s2Step134EarlyControlLog.zeroWork,s2Step134EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step134EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step134EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step134EarlyControl_logged : s2Step134EarlyControlPlan.Logged s2Step134EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 817 254 253 252 251 827 37 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step134EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step134EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step134EarlyControl_zero
  · exact s2Step134EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step134EarlyControl_flags
  · exact s2Step134EarlyControl_fit
  · exact s2Step134EarlyControl_history
  · exact s2Step134EarlyControl_sigma
  · exact s2Step134EarlyControl_branch

private theorem s2Step134EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step134EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 817 254 253 252 251 827 37 s2Step134EarlyControlLog=some s2Step134EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step134EarlyControlPlan s2Step134EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 817 254 253 252 251 827 37 s2Step134EarlyControl_logged

private def s2Step134EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713],768⟩

private def s2Step134EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840],770⟩

private def s2Step134EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201],769⟩

private def s2Step134EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835],771⟩

private def s2Step134FrontBank : WindowBank := ⟨s2Step134EntryFRow,s2Step134EntryGRow,s2Step134EntryFvRow,s2Step134EntryGvRow⟩

private def s2Step134Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 814, 768]

private def s2Step134Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 826, 769]

private def s2Step134Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 770]

private def s2Step134Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 781, 771]

private theorem s2Step134Counter_apart : Disjoint s2Step134HeadFvAfter.live s2Step134CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step134HeadFvAfter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step134Counter_borrowed : s2Step134HeadFvAfter.checkBorrow 4 s2Step134CounterWork=some s2Step134CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step134HeadFvAfter s2Step134CounterDuring s2Step134CounterWork.toFinset s2Step134Counter_bounded s2Step134Counter_apart rfl

private theorem s2Step134Counter_owned : (817::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step134HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step134HeadFvAfter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step134Counter_checked : compileHmrCounterStepLog s2Step134HeadFvAfter true 817 [772, 773, 774, 775, 776, 777] s2Step134CounterWork=some s2Step134CounterDuring := by
  have owned : ∀q∈817::[772, 773, 774, 775, 776, 777],q∈s2Step134HeadFvAfter.live := fun q hq => s2Step134Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step134Counter_borrowed

private def s2Step134EntryFAfter : Arena := s2Step134EntryFBefore

private theorem s2Step134EntryBank_incomingDistinct : ([s2Step134EntryFRow,s2Step134EntryGRow,s2Step134EntryFvRow,s2Step134EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step134EntryF_Incoming : rowsOwned s2Step134EntryFBefore [s2Step134EntryFRow,s2Step134EntryGRow,s2Step134EntryFvRow,s2Step134EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step134EntryFRow,s2Step134EntryGRow,s2Step134EntryFvRow,s2Step134EntryGvRow] 0 s2Step134EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step134EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step134EntryBank_outgoingOwned : rowsOwned s2Step134EntryGvAfter [s2Step134EntryFOut,s2Step134EntryGOut,s2Step134EntryFvOut,s2Step134EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step134EntryGvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step134EntryF_Outgoing : rowsOwned s2Step134EntryGvAfter [s2Step134EntryFOut,s2Step134EntryGOut,s2Step134EntryFvOut,s2Step134EntryGvOut] :=
  hmrRows_owned_drop s2Step134EntryGvAfter [s2Step134EntryFOut,s2Step134EntryGOut,s2Step134EntryFvOut,s2Step134EntryGvOut] 0 s2Step134EntryBank_outgoingOwned

private theorem s2Step134EntryF_distinct : (s2Step134EntryFRow.sign::s2Step134EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step134EntryF_owned : (s2Step134EntryFRow.sign::s2Step134EntryFRow.payload).toFinset⊆s2Step134EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step134EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step134EntryF_reserved : s2Step134EntryFBefore.reserve s2Step134EntryFFresh.toFinset=some s2Step134EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step134EntryFFresh,arenaWires]
  · norm_num [s2Step134EntryFBefore,s2Step134EntryFFresh,arenaWires]
  · simp only [s2Step134EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step134EntryF_checked : planRowResizeLog s2Step134EntryFBefore s2Step134EntryFRow 202 s2Step134EntryFFresh=
    some (s2Step134EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713],768⟩,growRow 768 s2Step134EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step134EntryFBefore s2Step134EntryFAfter s2Step134EntryFRow 202 s2Step134EntryFFresh
    s2Step134EntryF_distinct s2Step134EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step134EntryF_reserved
  have rowEq : WindowRow.mk (s2Step134EntryFRow.payload++s2Step134EntryFFresh) s2Step134EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step134EntryFvAfter : Arena := s2Step134EntryFBefore

private def s2Step134EntryFvBefore : Arena := s2Step134EntryFBefore

private theorem s2Step134EntryFv_Incoming : rowsOwned s2Step134EntryFvBefore [s2Step134EntryFvRow,s2Step134EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step134EntryFRow,s2Step134EntryGRow,s2Step134EntryFvRow,s2Step134EntryGvRow] 2 s2Step134EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step134EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step134EntryFv_Outgoing : rowsOwned s2Step134EntryGvAfter [s2Step134EntryFvOut,s2Step134EntryGvOut] :=
  hmrRows_owned_drop s2Step134EntryGvAfter [s2Step134EntryFOut,s2Step134EntryGOut,s2Step134EntryFvOut,s2Step134EntryGvOut] 2 s2Step134EntryBank_outgoingOwned

private theorem s2Step134EntryFv_distinct : (s2Step134EntryFvRow.sign::s2Step134EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step134EntryFv_owned : (s2Step134EntryFvRow.sign::s2Step134EntryFvRow.payload).toFinset⊆s2Step134EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step134EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step134EntryFv_reserved : s2Step134EntryFvBefore.reserve s2Step134EntryFvFresh.toFinset=some s2Step134EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step134EntryFvFresh,arenaWires]
  · norm_num [s2Step134EntryFvBefore,s2Step134EntryFBefore,s2Step134EntryFvFresh,arenaWires]
  · simp only [s2Step134EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step134EntryFv_checked : planRowResizeLog s2Step134EntryFvBefore s2Step134EntryFvRow 80 s2Step134EntryFvFresh=
    some (s2Step134EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840],770⟩,growRow 770 s2Step134EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step134EntryFvBefore s2Step134EntryFvAfter s2Step134EntryFvRow 80 s2Step134EntryFvFresh
    s2Step134EntryFv_distinct s2Step134EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step134EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step134EntryFvRow.payload++s2Step134EntryFvFresh) s2Step134EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step134EntryGAfter : Arena := s2Step134EntryFBefore

private def s2Step134EntryGBefore : Arena := s2Step134EntryFBefore

private theorem s2Step134EntryG_Incoming : rowsOwned s2Step134EntryGBefore [s2Step134EntryGRow,s2Step134EntryFvRow,s2Step134EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step134EntryFRow,s2Step134EntryGRow,s2Step134EntryFvRow,s2Step134EntryGvRow] 1 s2Step134EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step134EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step134EntryG_Outgoing : rowsOwned s2Step134EntryGvAfter [s2Step134EntryGOut,s2Step134EntryFvOut,s2Step134EntryGvOut] :=
  hmrRows_owned_drop s2Step134EntryGvAfter [s2Step134EntryFOut,s2Step134EntryGOut,s2Step134EntryFvOut,s2Step134EntryGvOut] 1 s2Step134EntryBank_outgoingOwned

private theorem s2Step134EntryG_distinct : (s2Step134EntryGRow.sign::s2Step134EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step134EntryG_owned : (s2Step134EntryGRow.sign::s2Step134EntryGRow.payload).toFinset⊆s2Step134EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step134EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step134EntryG_reserved : s2Step134EntryGBefore.reserve s2Step134EntryGFresh.toFinset=some s2Step134EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step134EntryGFresh,arenaWires]
  · norm_num [s2Step134EntryGBefore,s2Step134EntryFBefore,s2Step134EntryGFresh,arenaWires]
  · simp only [s2Step134EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step134EntryG_checked : planRowResizeLog s2Step134EntryGBefore s2Step134EntryGRow 202 s2Step134EntryGFresh=
    some (s2Step134EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201],769⟩,growRow 769 s2Step134EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step134EntryGBefore s2Step134EntryGAfter s2Step134EntryGRow 202 s2Step134EntryGFresh
    s2Step134EntryG_distinct s2Step134EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step134EntryG_reserved
  have rowEq : WindowRow.mk (s2Step134EntryGRow.payload++s2Step134EntryGFresh) s2Step134EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step134EntryGvBefore : Arena := s2Step134EntryFBefore

private theorem s2Step134EntryGv_Incoming : rowsOwned s2Step134EntryGvBefore [s2Step134EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step134EntryFRow,s2Step134EntryGRow,s2Step134EntryFvRow,s2Step134EntryGvRow] 3 s2Step134EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step134EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step134EntryGv_Outgoing : rowsOwned s2Step134EntryGvAfter [s2Step134EntryGvOut] :=
  hmrRows_owned_drop s2Step134EntryGvAfter [s2Step134EntryFOut,s2Step134EntryGOut,s2Step134EntryFvOut,s2Step134EntryGvOut] 3 s2Step134EntryBank_outgoingOwned

private theorem s2Step134EntryGv_distinct : (s2Step134EntryGvRow.sign::s2Step134EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step134EntryGv_owned : (s2Step134EntryGvRow.sign::s2Step134EntryGvRow.payload).toFinset⊆s2Step134EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step134EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step134EntryGv_reserved : s2Step134EntryGvBefore.reserve s2Step134EntryGvFresh.toFinset=some s2Step134EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step134EntryGvFresh,arenaWires]
  · norm_num [s2Step134EntryGvBefore,s2Step134EntryFBefore,s2Step134EntryGvFresh,arenaWires]
  · simp only [s2Step134EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step134EntryGv_checked : planRowResizeLog s2Step134EntryGvBefore s2Step134EntryGvRow 80 s2Step134EntryGvFresh=
    some (s2Step134EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835],771⟩,growRow 771 s2Step134EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step134EntryGvBefore s2Step134EntryGvAfter s2Step134EntryGvRow 80 s2Step134EntryGvFresh
    s2Step134EntryGv_distinct s2Step134EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step134EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step134EntryGvRow.payload++s2Step134EntryGvFresh) s2Step134EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step134EntryBank_rows : planWindowRowsLog s2Step134EntryFBefore [(s2Step134EntryFRow,202),(s2Step134EntryGRow,202),(s2Step134EntryFvRow,80),(s2Step134EntryGvRow,80)] [s2Step134EntryFFresh,s2Step134EntryGFresh,s2Step134EntryFvFresh,s2Step134EntryGvFresh]=
    some (s2Step134EntryGvAfter,[s2Step134EntryFOut,s2Step134EntryGOut,s2Step134EntryFvOut,s2Step134EntryGvOut],(growRow 768 s2Step134EntryFFresh ++ (growRow 769 s2Step134EntryGFresh ++ (growRow 770 s2Step134EntryFvFresh ++ (growRow 771 s2Step134EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step134EntryGvAfter [] []=some (s2Step134EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step134EntryGvBefore s2Step134EntryGvAfter s2Step134EntryGvAfter
    s2Step134EntryGvRow s2Step134EntryGvOut 80 s2Step134EntryGvFresh [] [] []
    (growRow 771 s2Step134EntryGvFresh) ([]) s2Step134EntryGv_Incoming s2Step134EntryGv_checked h4 s2Step134EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step134EntryFvBefore s2Step134EntryFvAfter s2Step134EntryGvAfter
    s2Step134EntryFvRow s2Step134EntryFvOut 80 s2Step134EntryFvFresh [(s2Step134EntryGvRow,80)] [s2Step134EntryGvFresh] [s2Step134EntryGvOut]
    (growRow 770 s2Step134EntryFvFresh) ((growRow 771 s2Step134EntryGvFresh ++ [])) s2Step134EntryFv_Incoming s2Step134EntryFv_checked h3 s2Step134EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step134EntryGBefore s2Step134EntryGAfter s2Step134EntryGvAfter
    s2Step134EntryGRow s2Step134EntryGOut 202 s2Step134EntryGFresh [(s2Step134EntryFvRow,80),(s2Step134EntryGvRow,80)] [s2Step134EntryFvFresh,s2Step134EntryGvFresh] [s2Step134EntryFvOut,s2Step134EntryGvOut]
    (growRow 769 s2Step134EntryGFresh) ((growRow 770 s2Step134EntryFvFresh ++ (growRow 771 s2Step134EntryGvFresh ++ []))) s2Step134EntryG_Incoming s2Step134EntryG_checked h2 s2Step134EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step134EntryFBefore s2Step134EntryFAfter s2Step134EntryGvAfter
    s2Step134EntryFRow s2Step134EntryFOut 202 s2Step134EntryFFresh [(s2Step134EntryGRow,202),(s2Step134EntryFvRow,80),(s2Step134EntryGvRow,80)] [s2Step134EntryGFresh,s2Step134EntryFvFresh,s2Step134EntryGvFresh] [s2Step134EntryGOut,s2Step134EntryFvOut,s2Step134EntryGvOut]
    (growRow 768 s2Step134EntryFFresh) ((growRow 769 s2Step134EntryGFresh ++ (growRow 770 s2Step134EntryFvFresh ++ (growRow 771 s2Step134EntryGvFresh ++ [])))) s2Step134EntryF_Incoming s2Step134EntryF_checked h1 s2Step134EntryF_Outgoing
  exact h0

private theorem s2Step134EntryBank_checked : compileHmrBankResizeLog .entry s2Step134EntryFBefore ⟨s2Step134EntryFRow,s2Step134EntryGRow,s2Step134EntryFvRow,s2Step134EntryGvRow⟩ ⟨202,202,80,80⟩ [s2Step134EntryFFresh,s2Step134EntryGFresh,s2Step134EntryFvFresh,s2Step134EntryGvFresh]=
    some (s2Step134EntryGvAfter,⟨s2Step134EntryFOut,s2Step134EntryGOut,s2Step134EntryFvOut,s2Step134EntryGvOut⟩,(growRow 768 s2Step134EntryFFresh ++ (growRow 769 s2Step134EntryGFresh ++ (growRow 770 s2Step134EntryFvFresh ++ (growRow 771 s2Step134EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step134EntryBank_rows]
  rfl

private def s2Step134ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<201) ∨ (202≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step134ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<201) ∨ (202≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step134ExitFBefore : Arena := s2Step134ExitGAfter

private def s2Step134ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 814],768⟩

private def s2Step134ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822],770⟩

private def s2Step134ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 826],769⟩

private def s2Step134ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 781],771⟩

private theorem s2Step134ExitBank_incomingDistinct : ([s2Step134ExitGRow,s2Step134ExitFRow,s2Step134ExitFvRow,s2Step134ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step134ExitF_Incoming : rowsOwned s2Step134ExitFBefore [s2Step134ExitFRow,s2Step134ExitFvRow,s2Step134ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step134ExitGRow,s2Step134ExitFRow,s2Step134ExitFvRow,s2Step134ExitGvRow] 1 s2Step134ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step134ExitFBefore (fun q => (0≤q ∧ q<201) ∨ (202≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step134ExitBank_outgoingOwned : rowsOwned s2Step134ExitGvAfter [s2Step134ExitGOut,s2Step134ExitFOut,s2Step134ExitFvOut,s2Step134ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step134ExitGvAfter (fun q => (0≤q ∧ q<201) ∨ (202≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step134ExitF_Outgoing : rowsOwned s2Step134ExitGvAfter [s2Step134ExitFOut,s2Step134ExitFvOut,s2Step134ExitGvOut] :=
  hmrRows_owned_drop s2Step134ExitGvAfter [s2Step134ExitGOut,s2Step134ExitFOut,s2Step134ExitFvOut,s2Step134ExitGvOut] 1 s2Step134ExitBank_outgoingOwned

private theorem s2Step134ExitF_distinct : (s2Step134ExitFRow.sign::s2Step134ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step134ExitF_owned : (s2Step134ExitFRow.sign::s2Step134ExitFRow.payload).toFinset⊆s2Step134ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step134ExitFBefore (fun q => (0≤q ∧ q<201) ∨ (202≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step134ExitF_retired : s2Step134ExitFBefore.retireSet s2Step134ExitFExtra.toFinset=s2Step134ExitFAfter := by
  unfold Arena.retireSet s2Step134ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step134ExitFBefore,s2Step134ExitGAfter,s2Step134ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step134ExitF_checked : planRowResizeLog s2Step134ExitFBefore s2Step134ExitFRow 202 []=
    some (s2Step134ExitFAfter,s2Step134ExitFOut,shrinkRow 768 s2Step134ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step134ExitFBefore s2Step134ExitFRow 202 s2Step134ExitF_distinct s2Step134ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step134ExitFRow.payload.take 202) s2Step134ExitFRow.sign=s2Step134ExitFOut := by decide +kernel
  have hi : s2Step134ExitFRow.payload.drop 202=s2Step134ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step134ExitF_retired] at result
  exact result

private def s2Step134ExitFvAfter : Arena := s2Step134ExitFAfter

private def s2Step134ExitFvBefore : Arena := s2Step134ExitFAfter

private theorem s2Step134ExitFv_Incoming : rowsOwned s2Step134ExitFvBefore [s2Step134ExitFvRow,s2Step134ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step134ExitGRow,s2Step134ExitFRow,s2Step134ExitFvRow,s2Step134ExitGvRow] 2 s2Step134ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step134ExitFvBefore (fun q => (0≤q ∧ q<201) ∨ (202≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step134ExitFv_Outgoing : rowsOwned s2Step134ExitGvAfter [s2Step134ExitFvOut,s2Step134ExitGvOut] :=
  hmrRows_owned_drop s2Step134ExitGvAfter [s2Step134ExitGOut,s2Step134ExitFOut,s2Step134ExitFvOut,s2Step134ExitGvOut] 2 s2Step134ExitBank_outgoingOwned

private theorem s2Step134ExitFv_distinct : (s2Step134ExitFvRow.sign::s2Step134ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step134ExitFv_owned : (s2Step134ExitFvRow.sign::s2Step134ExitFvRow.payload).toFinset⊆s2Step134ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step134ExitFvBefore (fun q => (0≤q ∧ q<201) ∨ (202≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step134ExitFv_reserved : s2Step134ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step134ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step134ExitFv_checked : planRowResizeLog s2Step134ExitFvBefore s2Step134ExitFvRow 81 []=
    some (s2Step134ExitFvAfter,s2Step134ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step134ExitFvBefore s2Step134ExitFvAfter s2Step134ExitFvRow 81 []
    s2Step134ExitFv_distinct s2Step134ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step134ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step134ExitFvRow.payload++[]) s2Step134ExitFvRow.sign=s2Step134ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step134ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private theorem s2Step134ExitG_Incoming : rowsOwned s2Step134ExitGBefore [s2Step134ExitGRow,s2Step134ExitFRow,s2Step134ExitFvRow,s2Step134ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step134ExitGRow,s2Step134ExitFRow,s2Step134ExitFvRow,s2Step134ExitGvRow] 0 s2Step134ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step134ExitGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step134ExitG_Outgoing : rowsOwned s2Step134ExitGvAfter [s2Step134ExitGOut,s2Step134ExitFOut,s2Step134ExitFvOut,s2Step134ExitGvOut] :=
  hmrRows_owned_drop s2Step134ExitGvAfter [s2Step134ExitGOut,s2Step134ExitFOut,s2Step134ExitFvOut,s2Step134ExitGvOut] 0 s2Step134ExitBank_outgoingOwned

private theorem s2Step134ExitG_distinct : (s2Step134ExitGRow.sign::s2Step134ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step134ExitG_owned : (s2Step134ExitGRow.sign::s2Step134ExitGRow.payload).toFinset⊆s2Step134ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step134ExitGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step134ExitG_retired : s2Step134ExitGBefore.retireSet s2Step134ExitGExtra.toFinset=s2Step134ExitGAfter := by
  unfold Arena.retireSet s2Step134ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step134ExitGBefore,s2Step134ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step134ExitG_checked : planRowResizeLog s2Step134ExitGBefore s2Step134ExitGRow 201 []=
    some (s2Step134ExitGAfter,s2Step134ExitGOut,shrinkRow 769 s2Step134ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step134ExitGBefore s2Step134ExitGRow 201 s2Step134ExitG_distinct s2Step134ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step134ExitGRow.payload.take 201) s2Step134ExitGRow.sign=s2Step134ExitGOut := by decide +kernel
  have hi : s2Step134ExitGRow.payload.drop 201=s2Step134ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step134ExitG_retired] at result
  exact result

private def s2Step134ExitGvBefore : Arena := s2Step134ExitFAfter

private theorem s2Step134ExitGv_Incoming : rowsOwned s2Step134ExitGvBefore [s2Step134ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step134ExitGRow,s2Step134ExitFRow,s2Step134ExitFvRow,s2Step134ExitGvRow] 3 s2Step134ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step134ExitGvBefore (fun q => (0≤q ∧ q<201) ∨ (202≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step134ExitGv_Outgoing : rowsOwned s2Step134ExitGvAfter [s2Step134ExitGvOut] :=
  hmrRows_owned_drop s2Step134ExitGvAfter [s2Step134ExitGOut,s2Step134ExitFOut,s2Step134ExitFvOut,s2Step134ExitGvOut] 3 s2Step134ExitBank_outgoingOwned

private theorem s2Step134ExitGv_distinct : (s2Step134ExitGvRow.sign::s2Step134ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step134ExitGv_owned : (s2Step134ExitGvRow.sign::s2Step134ExitGvRow.payload).toFinset⊆s2Step134ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step134ExitGvBefore (fun q => (0≤q ∧ q<201) ∨ (202≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step134ExitGv_retired : s2Step134ExitGvBefore.retireSet s2Step134ExitGvExtra.toFinset=s2Step134ExitGvAfter := by
  unfold Arena.retireSet s2Step134ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step134ExitGvBefore,s2Step134ExitFAfter,s2Step134ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step134ExitGv_checked : planRowResizeLog s2Step134ExitGvBefore s2Step134ExitGvRow 80 []=
    some (s2Step134ExitGvAfter,s2Step134ExitGvOut,shrinkRow 771 s2Step134ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step134ExitGvBefore s2Step134ExitGvRow 80 s2Step134ExitGv_distinct s2Step134ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step134ExitGvRow.payload.take 80) s2Step134ExitGvRow.sign=s2Step134ExitGvOut := by decide +kernel
  have hi : s2Step134ExitGvRow.payload.drop 80=s2Step134ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step134ExitGv_retired] at result
  exact result

private theorem s2Step134ExitBank_rows : planWindowRowsLog s2Step134ExitGBefore [(s2Step134ExitGRow,201),(s2Step134ExitFRow,202),(s2Step134ExitFvRow,81),(s2Step134ExitGvRow,80)] [[],[],[],[]]=
    some (s2Step134ExitGvAfter,[s2Step134ExitGOut,s2Step134ExitFOut,s2Step134ExitFvOut,s2Step134ExitGvOut],(shrinkRow 769 s2Step134ExitGExtra ++ (shrinkRow 768 s2Step134ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step134ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step134ExitGvAfter [] []=some (s2Step134ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step134ExitGvBefore s2Step134ExitGvAfter s2Step134ExitGvAfter
    s2Step134ExitGvRow s2Step134ExitGvOut 80 [] [] [] []
    (shrinkRow 771 s2Step134ExitGvExtra) ([]) s2Step134ExitGv_Incoming s2Step134ExitGv_checked h4 s2Step134ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step134ExitFvBefore s2Step134ExitFvAfter s2Step134ExitGvAfter
    s2Step134ExitFvRow s2Step134ExitFvOut 81 [] [(s2Step134ExitGvRow,80)] [[]] [s2Step134ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step134ExitGvExtra ++ [])) s2Step134ExitFv_Incoming s2Step134ExitFv_checked h3 s2Step134ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step134ExitFBefore s2Step134ExitFAfter s2Step134ExitGvAfter
    s2Step134ExitFRow s2Step134ExitFOut 202 [] [(s2Step134ExitFvRow,81),(s2Step134ExitGvRow,80)] [[],[]] [s2Step134ExitFvOut,s2Step134ExitGvOut]
    (shrinkRow 768 s2Step134ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step134ExitGvExtra ++ []))) s2Step134ExitF_Incoming s2Step134ExitF_checked h2 s2Step134ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step134ExitGBefore s2Step134ExitGAfter s2Step134ExitGvAfter
    s2Step134ExitGRow s2Step134ExitGOut 201 [] [(s2Step134ExitFRow,202),(s2Step134ExitFvRow,81),(s2Step134ExitGvRow,80)] [[],[],[]] [s2Step134ExitFOut,s2Step134ExitFvOut,s2Step134ExitGvOut]
    (shrinkRow 769 s2Step134ExitGExtra) ((shrinkRow 768 s2Step134ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step134ExitGvExtra ++ [])))) s2Step134ExitG_Incoming s2Step134ExitG_checked h1 s2Step134ExitG_Outgoing
  exact h0

private theorem s2Step134ExitBank_checked : compileHmrBankResizeLog .exit s2Step134ExitGBefore ⟨s2Step134ExitFRow,s2Step134ExitGRow,s2Step134ExitFvRow,s2Step134ExitGvRow⟩ ⟨202,201,81,80⟩ [[],[],[],[]]=
    some (s2Step134ExitGvAfter,⟨s2Step134ExitFOut,s2Step134ExitGOut,s2Step134ExitFvOut,s2Step134ExitGvOut⟩,(shrinkRow 769 s2Step134ExitGExtra ++ (shrinkRow 768 s2Step134ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step134ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step134ExitBank_rows]
  rfl

private theorem s2Step134Add0_apart : Disjoint s2Step134Add0Arena.live s2Step134Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step134Add0Arena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step134Add0_card : s2Step134Add0Arena.live.card=875 := by
  decide +kernel

private theorem s2Step134Add0_borrowed : s2Step134Add0Arena.checkBorrow (hmrHybridCount s2Step134Add0Arena s2Step134Add0B.length) s2Step134Add0Work=some s2Step134Add0During := by
  have len : s2Step134Add0Work.length=hmrHybridCount s2Step134Add0Arena s2Step134Add0B.length := by
    rw [hmrHybridCount,s2Step134Add0_card]
    decide +kernel
  have nd : s2Step134Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step134Add0Arena s2Step134Add0During s2Step134Add0Work.toFinset s2Step134Add0_bounded s2Step134Add0_apart rfl

private theorem s2Step134Add0_distinct : (783::827::829::(s2Step134Add0A++s2Step134Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step134Add0_owned : (783::827::829::(s2Step134Add0A++s2Step134Add0B)).toFinset⊆s2Step134Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step134Add0Arena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step134Add0_checked : compileHmrHybridCinLog s2Step134Add0Arena 827 783 829 s2Step134Add0A s2Step134Add0B s2Step134Add0Work=some s2Step134Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step134Add0Arena s2Step134Add0During 827 783 829 s2Step134Add0A s2Step134Add0B s2Step134Add0Work
    (by decide +kernel) (by decide +kernel) s2Step134Add0_distinct
    (fun q hq => s2Step134Add0_owned (List.mem_toFinset.mpr hq)) s2Step134Add0_borrowed

private theorem s2Step134Add1_apart : Disjoint s2Step134Add1Arena.live s2Step134Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step134Add1Arena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step134Add1_card : s2Step134Add1Arena.live.card=875 := by
  decide +kernel

private theorem s2Step134Add1_borrowed : s2Step134Add1Arena.checkBorrow (hmrHybridCount s2Step134Add1Arena s2Step134Add1B.length) s2Step134Add1Work=some s2Step134Add1During := by
  have len : s2Step134Add1Work.length=hmrHybridCount s2Step134Add1Arena s2Step134Add1B.length := by
    rw [hmrHybridCount,s2Step134Add1_card]
    decide +kernel
  have nd : s2Step134Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step134Add1Arena s2Step134Add1During s2Step134Add1Work.toFinset s2Step134Add1_bounded s2Step134Add1_apart rfl

private theorem s2Step134Add1_distinct : (783::827::829::(s2Step134Add1A++s2Step134Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step134Add1_owned : (783::827::829::(s2Step134Add1A++s2Step134Add1B)).toFinset⊆s2Step134Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step134Add1Arena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step134Add1_checked : compileHmrHybridCinLog s2Step134Add1Arena 827 783 829 s2Step134Add1A s2Step134Add1B s2Step134Add1Work=some s2Step134Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step134Add1Arena s2Step134Add1During 827 783 829 s2Step134Add1A s2Step134Add1B s2Step134Add1Work
    (by decide +kernel) (by decide +kernel) s2Step134Add1_distinct
    (fun q hq => s2Step134Add1_owned (List.mem_toFinset.mpr hq)) s2Step134Add1_borrowed

private theorem s2Step134F4_apart : Disjoint (s2Step134Add0A++s2Step134Add0B).toFinset (s2Step134Add1A++s2Step134Add1B).toFinset := by
  have nd : ((s2Step134Add0A++s2Step134Add0B)++(s2Step134Add1A++s2Step134Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step134F4_carry : s2Step134F4FlagArena.checkBorrow 1 [829]=some s2Step134Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step134F4FlagArena,s2Step134HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step134F4FlagArena,s2Step134HeadFvAfter,s2Step134Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step134F4_distinct : (817::827::783::829::((s2Step134Add0A++s2Step134Add1A)++(s2Step134Add0B++s2Step134Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step134F4_flag : s2Step134HeadFvAfter.checkBorrow 1 [783]=some s2Step134F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step134HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step134F4_owned : (817::827::((s2Step134Add0A++s2Step134Add1A)++(s2Step134Add0B++s2Step134Add1B))).toFinset⊆s2Step134HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step134HeadFvAfter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step134F4_checked : compileHmrHybridF4Log s2Step134HeadFvAfter 817 827 s2Step134Add0A s2Step134Add0B s2Step134Add1A s2Step134Add1B [783] [829] s2Step134Add0Work s2Step134Add1Work=some s2Step134F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step134HeadFvAfter s2Step134F4FlagArena s2Step134Add0Arena s2Step134Add0During s2Step134Add1During 817 827
    s2Step134Add0A s2Step134Add0B s2Step134Add1A s2Step134Add1B [783] [829] s2Step134Add0Work s2Step134Add1Work
    (fun q hq => s2Step134F4_owned (List.mem_toFinset.mpr hq)) s2Step134F4_flag s2Step134F4_carry
    s2Step134F4_distinct s2Step134F4_apart s2Step134Add0_checked s2Step134Add1_checked

private theorem s2Step134Front_branch : s2Step134FrontSigmaArena.checkBorrow 1 [827]=some s2Step134HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step134FrontSigmaArena,s2Step134EntryGvAfter,s2Step134EntryFBefore,arenaWires]
  · ext q
    simp only [s2Step134FrontSigmaArena,s2Step134EntryGvAfter,s2Step134EntryFBefore,s2Step134HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step134Front_entry : HmrFrontEntryValid s2Step134EntryFBefore s2Step134FrontBank 202 80 ⟨202,201,81,80⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step134FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step134EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step134EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step134FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step134Front_sigma : s2Step134EntryGvAfter.checkBorrow 1 [817]=some s2Step134FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step134EntryGvAfter,s2Step134EntryFBefore,arenaWires]
  · rfl

private def s2Step134HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step134HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step134HeadFBefore : Arena := s2Step134HeadGAfter

private def s2Step134HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713],768⟩

private def s2Step134HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840],770⟩

private def s2Step134HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201],769⟩

private def s2Step134HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835],771⟩

private theorem s2Step134HeadBank_incomingDistinct : ([s2Step134HeadGRow,s2Step134HeadFRow,s2Step134HeadGvRow,s2Step134HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step134HeadF_Incoming : rowsOwned s2Step134HeadFBefore [s2Step134HeadFRow,s2Step134HeadGvRow,s2Step134HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step134HeadGRow,s2Step134HeadFRow,s2Step134HeadGvRow,s2Step134HeadFvRow] 1 s2Step134HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step134HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step134HeadBank_outgoingOwned : rowsOwned s2Step134HeadFvAfter [s2Step134HeadGOut,s2Step134HeadFOut,s2Step134HeadGvOut,s2Step134HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step134HeadFvAfter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step134HeadF_Outgoing : rowsOwned s2Step134HeadFvAfter [s2Step134HeadFOut,s2Step134HeadGvOut,s2Step134HeadFvOut] :=
  hmrRows_owned_drop s2Step134HeadFvAfter [s2Step134HeadGOut,s2Step134HeadFOut,s2Step134HeadGvOut,s2Step134HeadFvOut] 1 s2Step134HeadBank_outgoingOwned

private theorem s2Step134HeadF_distinct : (s2Step134HeadFRow.sign::s2Step134HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step134HeadF_owned : (s2Step134HeadFRow.sign::s2Step134HeadFRow.payload).toFinset⊆s2Step134HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step134HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step134HeadF_reserved : s2Step134HeadFBefore.reserve s2Step134HeadFFresh.toFinset=some s2Step134HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step134HeadFFresh,arenaWires]
  · norm_num [s2Step134HeadFBefore,s2Step134HeadGAfter,s2Step134HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step134HeadFAfter,s2Step134HeadFBefore,s2Step134HeadGAfter,s2Step134HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step134HeadF_checked : planRowResizeLog s2Step134HeadFBefore s2Step134HeadFRow 203 s2Step134HeadFFresh=
    some (s2Step134HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 814],768⟩,growRow 768 s2Step134HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step134HeadFBefore s2Step134HeadFAfter s2Step134HeadFRow 203 s2Step134HeadFFresh
    s2Step134HeadF_distinct s2Step134HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step134HeadF_reserved
  have rowEq : WindowRow.mk (s2Step134HeadFRow.payload++s2Step134HeadFFresh) s2Step134HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 814],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step134HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step134HeadFvBefore : Arena := s2Step134HeadGvAfter

private theorem s2Step134HeadFv_Incoming : rowsOwned s2Step134HeadFvBefore [s2Step134HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step134HeadGRow,s2Step134HeadFRow,s2Step134HeadGvRow,s2Step134HeadFvRow] 3 s2Step134HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step134HeadFvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step134HeadFv_Outgoing : rowsOwned s2Step134HeadFvAfter [s2Step134HeadFvOut] :=
  hmrRows_owned_drop s2Step134HeadFvAfter [s2Step134HeadGOut,s2Step134HeadFOut,s2Step134HeadGvOut,s2Step134HeadFvOut] 3 s2Step134HeadBank_outgoingOwned

private theorem s2Step134HeadFv_distinct : (s2Step134HeadFvRow.sign::s2Step134HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step134HeadFv_owned : (s2Step134HeadFvRow.sign::s2Step134HeadFvRow.payload).toFinset⊆s2Step134HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step134HeadFvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step134HeadFv_reserved : s2Step134HeadFvBefore.reserve s2Step134HeadFvFresh.toFinset=some s2Step134HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step134HeadFvFresh,arenaWires]
  · norm_num [s2Step134HeadFvBefore,s2Step134HeadGvAfter,s2Step134HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step134HeadFvAfter,s2Step134HeadFvBefore,s2Step134HeadGvAfter,s2Step134HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step134HeadFv_checked : planRowResizeLog s2Step134HeadFvBefore s2Step134HeadFvRow 81 s2Step134HeadFvFresh=
    some (s2Step134HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822],770⟩,growRow 770 s2Step134HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step134HeadFvBefore s2Step134HeadFvAfter s2Step134HeadFvRow 81 s2Step134HeadFvFresh
    s2Step134HeadFv_distinct s2Step134HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step134HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step134HeadFvRow.payload++s2Step134HeadFvFresh) s2Step134HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step134HeadG_Incoming : rowsOwned s2Step134HeadGBefore [s2Step134HeadGRow,s2Step134HeadFRow,s2Step134HeadGvRow,s2Step134HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step134HeadGRow,s2Step134HeadFRow,s2Step134HeadGvRow,s2Step134HeadFvRow] 0 s2Step134HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step134HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step134HeadG_Outgoing : rowsOwned s2Step134HeadFvAfter [s2Step134HeadGOut,s2Step134HeadFOut,s2Step134HeadGvOut,s2Step134HeadFvOut] :=
  hmrRows_owned_drop s2Step134HeadFvAfter [s2Step134HeadGOut,s2Step134HeadFOut,s2Step134HeadGvOut,s2Step134HeadFvOut] 0 s2Step134HeadBank_outgoingOwned

private theorem s2Step134HeadG_distinct : (s2Step134HeadGRow.sign::s2Step134HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step134HeadG_owned : (s2Step134HeadGRow.sign::s2Step134HeadGRow.payload).toFinset⊆s2Step134HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step134HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step134HeadG_reserved : s2Step134HeadGBefore.reserve s2Step134HeadGFresh.toFinset=some s2Step134HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step134HeadGFresh,arenaWires]
  · norm_num [s2Step134HeadGBefore,s2Step134HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step134HeadGAfter,s2Step134HeadGBefore,s2Step134HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step134HeadG_checked : planRowResizeLog s2Step134HeadGBefore s2Step134HeadGRow 203 s2Step134HeadGFresh=
    some (s2Step134HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 826],769⟩,growRow 769 s2Step134HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step134HeadGBefore s2Step134HeadGAfter s2Step134HeadGRow 203 s2Step134HeadGFresh
    s2Step134HeadG_distinct s2Step134HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step134HeadG_reserved
  have rowEq : WindowRow.mk (s2Step134HeadGRow.payload++s2Step134HeadGFresh) s2Step134HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 826],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step134HeadGvBefore : Arena := s2Step134HeadFAfter

private theorem s2Step134HeadGv_Incoming : rowsOwned s2Step134HeadGvBefore [s2Step134HeadGvRow,s2Step134HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step134HeadGRow,s2Step134HeadFRow,s2Step134HeadGvRow,s2Step134HeadFvRow] 2 s2Step134HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step134HeadGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step134HeadGv_Outgoing : rowsOwned s2Step134HeadFvAfter [s2Step134HeadGvOut,s2Step134HeadFvOut] :=
  hmrRows_owned_drop s2Step134HeadFvAfter [s2Step134HeadGOut,s2Step134HeadFOut,s2Step134HeadGvOut,s2Step134HeadFvOut] 2 s2Step134HeadBank_outgoingOwned

private theorem s2Step134HeadGv_distinct : (s2Step134HeadGvRow.sign::s2Step134HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step134HeadGv_owned : (s2Step134HeadGvRow.sign::s2Step134HeadGvRow.payload).toFinset⊆s2Step134HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step134HeadGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step134HeadGv_reserved : s2Step134HeadGvBefore.reserve s2Step134HeadGvFresh.toFinset=some s2Step134HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step134HeadGvFresh,arenaWires]
  · norm_num [s2Step134HeadGvBefore,s2Step134HeadFAfter,s2Step134HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step134HeadGvAfter,s2Step134HeadGvBefore,s2Step134HeadFAfter,s2Step134HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step134HeadGv_checked : planRowResizeLog s2Step134HeadGvBefore s2Step134HeadGvRow 81 s2Step134HeadGvFresh=
    some (s2Step134HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 781],771⟩,growRow 771 s2Step134HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step134HeadGvBefore s2Step134HeadGvAfter s2Step134HeadGvRow 81 s2Step134HeadGvFresh
    s2Step134HeadGv_distinct s2Step134HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step134HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step134HeadGvRow.payload++s2Step134HeadGvFresh) s2Step134HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 781],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step134HeadBank_rows : planWindowRowsLog s2Step134HeadGBefore [(s2Step134HeadGRow,203),(s2Step134HeadFRow,203),(s2Step134HeadGvRow,81),(s2Step134HeadFvRow,81)] [s2Step134HeadGFresh,s2Step134HeadFFresh,s2Step134HeadGvFresh,s2Step134HeadFvFresh]=
    some (s2Step134HeadFvAfter,[s2Step134HeadGOut,s2Step134HeadFOut,s2Step134HeadGvOut,s2Step134HeadFvOut],(growRow 769 s2Step134HeadGFresh ++ (growRow 768 s2Step134HeadFFresh ++ (growRow 771 s2Step134HeadGvFresh ++ (growRow 770 s2Step134HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step134HeadFvAfter [] []=some (s2Step134HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step134HeadFvBefore s2Step134HeadFvAfter s2Step134HeadFvAfter
    s2Step134HeadFvRow s2Step134HeadFvOut 81 s2Step134HeadFvFresh [] [] []
    (growRow 770 s2Step134HeadFvFresh) ([]) s2Step134HeadFv_Incoming s2Step134HeadFv_checked h4 s2Step134HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step134HeadGvBefore s2Step134HeadGvAfter s2Step134HeadFvAfter
    s2Step134HeadGvRow s2Step134HeadGvOut 81 s2Step134HeadGvFresh [(s2Step134HeadFvRow,81)] [s2Step134HeadFvFresh] [s2Step134HeadFvOut]
    (growRow 771 s2Step134HeadGvFresh) ((growRow 770 s2Step134HeadFvFresh ++ [])) s2Step134HeadGv_Incoming s2Step134HeadGv_checked h3 s2Step134HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step134HeadFBefore s2Step134HeadFAfter s2Step134HeadFvAfter
    s2Step134HeadFRow s2Step134HeadFOut 203 s2Step134HeadFFresh [(s2Step134HeadGvRow,81),(s2Step134HeadFvRow,81)] [s2Step134HeadGvFresh,s2Step134HeadFvFresh] [s2Step134HeadGvOut,s2Step134HeadFvOut]
    (growRow 768 s2Step134HeadFFresh) ((growRow 771 s2Step134HeadGvFresh ++ (growRow 770 s2Step134HeadFvFresh ++ []))) s2Step134HeadF_Incoming s2Step134HeadF_checked h2 s2Step134HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step134HeadGBefore s2Step134HeadGAfter s2Step134HeadFvAfter
    s2Step134HeadGRow s2Step134HeadGOut 203 s2Step134HeadGFresh [(s2Step134HeadFRow,203),(s2Step134HeadGvRow,81),(s2Step134HeadFvRow,81)] [s2Step134HeadFFresh,s2Step134HeadGvFresh,s2Step134HeadFvFresh] [s2Step134HeadFOut,s2Step134HeadGvOut,s2Step134HeadFvOut]
    (growRow 769 s2Step134HeadGFresh) ((growRow 768 s2Step134HeadFFresh ++ (growRow 771 s2Step134HeadGvFresh ++ (growRow 770 s2Step134HeadFvFresh ++ [])))) s2Step134HeadG_Incoming s2Step134HeadG_checked h1 s2Step134HeadG_Outgoing
  exact h0

private theorem s2Step134HeadBank_checked : compileHmrBankResizeLog .headroom s2Step134HeadGBefore ⟨s2Step134HeadFRow,s2Step134HeadGRow,s2Step134HeadFvRow,s2Step134HeadGvRow⟩ ⟨203,203,81,81⟩ [s2Step134HeadGFresh,s2Step134HeadFFresh,s2Step134HeadGvFresh,s2Step134HeadFvFresh]=
    some (s2Step134HeadFvAfter,⟨s2Step134HeadFOut,s2Step134HeadGOut,s2Step134HeadFvOut,s2Step134HeadGvOut⟩,(growRow 769 s2Step134HeadGFresh ++ (growRow 768 s2Step134HeadFFresh ++ (growRow 771 s2Step134HeadGvFresh ++ (growRow 770 s2Step134HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step134HeadBank_rows]
  rfl

private theorem s2Step134Front_checked : compileHmrSourceFrontLog s2Step134EntryFBefore s2Step134FrontBank 202 80 ⟨202,201,81,80⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step134FrontLog=some s2Step134FrontPlan := by
  have pairEq : s2Step134FrontPair=⟨s2Step134HeadFRow,s2Step134HeadGRow,s2Step134HeadFvRow,s2Step134HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step134FrontHead=⟨s2Step134ExitFRow,s2Step134ExitGRow,s2Step134ExitFvRow,s2Step134ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step134Add0A=s2Step134FrontHead.f.wires := by decide +kernel
  have gEq : s2Step134Add0B=s2Step134FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step134Add1A=s2Step134FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step134Add1B=s2Step134FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step134EntryFBefore s2Step134FrontBank 202 80 ⟨202,201,81,80⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step134FrontLog s2Step134FrontPlan
  · exact s2Step134Front_entry
  · exact s2Step134EntryBank_checked
  · exact s2Step134Front_sigma
  · rfl
  · exact s2Step134Front_branch
  · rfl
  · simpa only [s2Step134FrontPlan,pairEq] using s2Step134HeadBank_checked
  · simpa only [s2Step134FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step134F4_checked
  · exact s2Step134Counter_checked
  · rfl
  · simpa only [s2Step134FrontPlan,headEq] using s2Step134ExitBank_checked

private theorem s2Step134Complete_explicit_checked : compileHmrEarlyStepLog s2Step134EntryFBefore s2Step134FrontBank 202 80 ⟨202,201,81,80⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step134CompleteLog=some s2Step134CompletePlan := by
  let Q := s2Step134EarlyControlPlan
  have hq := s2Step134EarlyControl_plan_checked
  have fv1 : s2Step134CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step134CompleteOut.fv.payload[2]?.getD s2Step134CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step134CompleteOut.fv.payload[3]?.getD s2Step134CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step134CompleteOut.fv.payload[4]?.getD s2Step134CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step134EntryFBefore s2Step134EarlyControlArena s2Step134FrontBank 202 80 ⟨202,201,81,80⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step134CompleteLog s2Step134FrontPlan Q
    s2Step134Front_checked s2Step134Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step134Complete_owned s2Step134Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step134EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 817 s2Step134CompleteOut.fv.second (s2Step134CompleteOut.fv.payload[2]?.getD s2Step134CompleteOut.fv.sign) (s2Step134CompleteOut.fv.payload[3]?.getD s2Step134CompleteOut.fv.sign) (s2Step134CompleteOut.fv.payload[4]?.getD s2Step134CompleteOut.fv.sign) 827 37 s2Step134EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep134Arena : Arena := s2Step134EntryFBefore
def s2PrivateStep134Bank : WindowBank := s2Step134FrontBank
def s2PrivateStep134Spec : HmrSourceWalkStepLog := ⟨202,80,⟨202,201,81,80⟩,37,.early s2Step134CompleteLog⟩
def s2PrivateStep134Plan : HmrSourceStepPlan := .early s2Step134CompletePlan
theorem s2PrivateStep134_source : s2PrivateStep134Spec=s2ObservedLogs128[6] := rfl
theorem s2PrivateStep134_checked : compileHmrSourceStepLog s2PrivateStep134Arena s2PrivateStep134Bank
    s2PrivateStep134Spec.fgWidth s2PrivateStep134Spec.vWidth s2PrivateStep134Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881]
    6 498 134 s2PrivateStep134Spec.need none s2PrivateStep134Spec.log=some s2PrivateStep134Plan := by
  change compileHmrSourceStepLog s2Step134EntryFBefore s2Step134FrontBank 202 80 ⟨202,201,81,80⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 6 498 134 37 none (.early s2Step134CompleteLog)=some (.early s2Step134CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 134<498)]
  rw [s2Step134Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
