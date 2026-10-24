import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep133
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

private def s2Step135CompleteMoves : List (Wire × Wire) := [(784,200)]

private def s2Step135EarlyControlLog : HmrEarlyControlLog := ⟨[784, 817, 783, 826, 827],[814],[837],[849, 790, 815, 867, 877, 879],[]⟩

private def s2Step135FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [827], [], [817]],[[814], [826], [783], [829]],[[], [], [], []]⟩,[782],[781],[837],[849],[790, 815, 867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[790, 815, 867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[837, 849, 790, 815]⟩

private def s2Step135CompleteLog : HmrEarlyStepLog := ⟨s2Step135FrontLog,s2Step135CompleteMoves,s2Step135EarlyControlLog⟩

private def s2Step135ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713],768⟩

private def s2Step135ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829],770⟩

private def s2Step135ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199],769⟩

private def s2Step135ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835],771⟩

private def s2Step135FrontOut : WindowBank := ⟨s2Step135ExitFOut,s2Step135ExitGOut,s2Step135ExitFvOut,s2Step135ExitGvOut⟩

private def s2Step135CompleteOut : WindowBank := s2Step135FrontOut.repacked s2Step135CompleteMoves

private def s2Step135EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<826) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step135EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step135EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step135EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step135EarlyControlPositiveArena,[814],s2Step135EarlyControlEqualityArena,[837],⟨⟨782,false⟩,[⟨⟨814,false⟩,837⟩]⟩⟩

private def s2Step135EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step135EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step135EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<826) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step135EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<826) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step135EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<826) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step135EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step135EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,784⟩,⟨⟨774,false⟩,817⟩,⟨⟨775,false⟩,783⟩,⟨⟨776,false⟩,826⟩,⟨⟨777,false⟩,827⟩]⟩

private def s2Step135EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step135EarlyControlZeroArena,s2Step135EarlyControlZeroPlan,s2Step135EarlyControlClassPlan,s2Step135EarlyControlFlagArena,s2Step135EarlyControlFittedArena,s2Step135EarlyControlHistoryArena,s2Step135EarlyControlSigmaArena,s2Step135EarlyControlOutputArena,s2Step135EarlyControlLog⟩

private def s2Step135CounterWork : List Wire := [837, 849, 790, 815]

private theorem s2Step135Counter_bounded : s2Step135CounterWork.toFinset⊆arenaWires := by norm_num [s2Step135CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step135HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step135CounterDuring : Arena := ⟨s2Step135HeadFvAfter.live∪s2Step135CounterWork.toFinset,Finset.union_subset s2Step135HeadFvAfter.bounded s2Step135Counter_bounded⟩

private def s2Step135EntryFFresh : List Wire := []

private def s2Step135EntryFvFresh : List Wire := []

private def s2Step135EntryGFresh : List Wire := [827]

private def s2Step135EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step135EntryGvFresh : List Wire := [817]

private def s2Step135ExitFExtra : List Wire := [826]

private def s2Step135ExitGExtra : List Wire := [200, 827, 814]

private def s2Step135ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<200) ∨ (201≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<826) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step135ExitGvExtra : List Wire := [817, 783]

private def s2Step135Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step135Add0Work : List Wire := [790, 815, 867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step135Add0_bounded : s2Step135Add0Work.toFinset⊆arenaWires := by
  have h : s2Step135Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step135Add0During : Arena := ⟨s2Step135Add0Arena.live∪s2Step135Add0Work.toFinset,Finset.union_subset s2Step135Add0Arena.bounded s2Step135Add0_bounded⟩

private def s2Step135Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step135Add1Work : List Wire := [790, 815, 867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step135Add1_bounded : s2Step135Add1Work.toFinset⊆arenaWires := by
  have h : s2Step135Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step135Add1During : Arena := ⟨s2Step135Add1Arena.live∪s2Step135Add1Work.toFinset,Finset.union_subset s2Step135Add1Arena.bounded s2Step135Add1_bounded⟩

private def s2Step135F4FlagArena : Arena := ⟨s2Step135HeadFvAfter.live∪{837},Finset.union_subset s2Step135HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step135F4Plan : HmrHybridF4Plan := ⟨s2Step135F4FlagArena,[837],s2Step135Add0Arena,[849],s2Step135Add0During,s2Step135Add0Work,s2Step135Add1During,s2Step135Add1Work⟩

private def s2Step135HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 826],768⟩

private def s2Step135HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829],770⟩

private def s2Step135HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 827, 814],769⟩

private def s2Step135HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 817, 783],771⟩

private def s2Step135FrontHead : WindowBank := ⟨s2Step135HeadFOut,s2Step135HeadGOut,s2Step135HeadFvOut,s2Step135HeadGvOut⟩

private def s2Step135EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713],768⟩

private def s2Step135EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822],770⟩

private def s2Step135EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 827],769⟩

private def s2Step135EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 817],771⟩

private def s2Step135FrontPair : WindowBank := ⟨s2Step135EntryFOut,s2Step135EntryGOut,s2Step135EntryFvOut,s2Step135EntryGvOut⟩

private def s2Step135FrontSigmaArena : Arena := ⟨s2Step135EntryGvAfter.live∪{782},Finset.union_subset s2Step135EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step135HeadFFresh : List Wire := [826]

private def s2Step135HeadFvFresh : List Wire := [829]

private def s2Step135HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step135HeadGFresh : List Wire := [814]

private def s2Step135HeadGvFresh : List Wire := [783]

private def s2Step135FrontPlan : HmrSourceFront := ⟨s2Step135EntryGvAfter,s2Step135FrontPair,(growRow 768 s2Step135EntryFFresh ++ (growRow 769 s2Step135EntryGFresh ++ (growRow 770 s2Step135EntryFvFresh ++ (growRow 771 s2Step135EntryGvFresh ++ [])))),s2Step135FrontSigmaArena,[782],s2Step135HeadGBefore,[781],
  s2Step135HeadFvAfter,s2Step135FrontHead,(growRow 769 s2Step135HeadGFresh ++ (growRow 768 s2Step135HeadFFresh ++ (growRow 771 s2Step135HeadGvFresh ++ (growRow 770 s2Step135HeadFvFresh ++ [])))),s2Step135F4Plan,s2Step135CounterDuring,s2Step135CounterWork,s2Step135ExitGvAfter,s2Step135FrontOut,(shrinkRow 769 s2Step135ExitGExtra ++ (shrinkRow 768 s2Step135ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step135ExitGvExtra ++ []))))⟩

private def s2Step135CompletePlan : HmrEarlyStepPlan := ⟨s2Step135FrontPlan,s2Step135EarlyControlArena,s2Step135EarlyControlPlan,s2Step135CompleteMoves⟩

private theorem s2Step135Complete_apart : List.Disjoint (s2Step135CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [782, 781, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] := by
  have nd : ((s2Step135CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[782, 781, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step135Complete_owned : (s2Step135CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step135EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step135EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<826) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private def s2Step135CompleteMoveArena : Arena := ⟨s2Step135ExitGvAfter.live∪{200},Finset.union_subset s2Step135ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step135Complete_repack : s2Step135ExitGvAfter.checkRepack s2Step135CompleteMoves=some s2Step135EarlyControlArena := by
  have owned : 784∈s2Step135ExitGvAfter.live := by norm_num [s2Step135ExitGvAfter,arenaWires]
  have reserve : s2Step135ExitGvAfter.reserve {200}=some s2Step135CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step135ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step135CompleteMoveArena.retireSet {784}=s2Step135EarlyControlArena := by
    unfold Arena.retireSet s2Step135EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step135CompleteMoveArena,s2Step135ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step135CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step135CompleteMoveArena.retireSet {784}).checkRepack []=some s2Step135EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step135EarlyControl_branchOwned : ([781] : List Wire).toFinset⊆s2Step135EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step135EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<826) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step135EarlyControl_branch : compileHmrBranchRetirement s2Step135EarlyControlSigmaArena 781=some s2Step135EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step135EarlyControl_branchOwned
  · ext q
    simp [s2Step135EarlyControlOutputArena,s2Step135EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step135EarlyControl_classEqualityBorrow : s2Step135EarlyControlPositiveArena.checkBorrow (([782, 814] : List Wire).length-1) s2Step135EarlyControlLog.classWork=some s2Step135EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step135EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step135EarlyControlPositiveArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step135EarlyControlEqualityArena,s2Step135EarlyControlPositiveArena,s2Step135EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step135EarlyControl_classEqualityOwned : ([782, 814] : List Wire).toFinset⊆s2Step135EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step135EarlyControlPositiveArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step135EarlyControl_classEquality : compileHmrEqualityLog s2Step135EarlyControlPositiveArena [782, 814] 0 s2Step135EarlyControlLog.classWork=some (s2Step135EarlyControlEqualityArena,s2Step135EarlyControlLog.classWork,s2Step135EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step135EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step135EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step135EarlyControl_classOwned : ([777, 827, 782] : List Wire).toFinset⊆s2Step135EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step135EarlyControlZeroArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step135EarlyControl_positiveBorrow : s2Step135EarlyControlZeroArena.checkBorrow (1) s2Step135EarlyControlLog.positiveWork=some s2Step135EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step135EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step135EarlyControlZeroArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step135EarlyControlPositiveArena,s2Step135EarlyControlZeroArena,s2Step135EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step135EarlyControl_class : compileHmrSourceClassLog s2Step135EarlyControlZeroArena false 777 s2Step135EarlyControlZeroPlan.top 0 782 s2Step135EarlyControlLog.positiveWork s2Step135EarlyControlLog.classWork=some s2Step135EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step135EarlyControlClassPlan s2Step135EarlyControlZeroArena false 777 s2Step135EarlyControlZeroPlan.top 0 782
  constructor
  · decide +kernel
  · exact s2Step135EarlyControl_classOwned
  · exact s2Step135EarlyControl_positiveBorrow
  · exact s2Step135EarlyControl_classEquality

private theorem s2Step135EarlyControl_entryRecordOwned : ([781, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).toFinset⊆s2Step135EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step135EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<826) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step135EarlyControl_entrySigmaOwned : ([782, 254] : List Wire).toFinset⊆s2Step135EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step135EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<826) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step135EarlyControl_fitBorrow : s2Step135EarlyControlFlagArena.checkBorrow ((37-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).length)) s2Step135EarlyControlLog.recordFresh=some s2Step135EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step135EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step135EarlyControlFlagArena (fun q => (0≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step135EarlyControlFittedArena,s2Step135EarlyControlFlagArena,s2Step135EarlyControlLog,arenaWires]

private theorem s2Step135EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).toFinset⊆s2Step135EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step135EarlyControlFlagArena (fun q => (0≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step135EarlyControl_fit : compileHmrRecordGrowLog s2Step135EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step135EarlyControlLog.recordFresh=some s2Step135EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step135EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step135EarlyControl_fitBorrow

private theorem s2Step135EarlyControl_flagsBorrow : s2Step135EarlyControlEqualityArena.checkBorrow (6) s2Step135EarlyControlLog.flagWork=some s2Step135EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step135EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step135EarlyControlEqualityArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step135EarlyControlFlagArena,s2Step135EarlyControlEqualityArena,s2Step135EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step135EarlyControl_flagsOwned : ([837, 253, 252, 251] : List Wire).toFinset⊆s2Step135EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step135EarlyControlEqualityArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step135EarlyControl_flags : compileHmrFlagsLog s2Step135EarlyControlClassPlan.equalityArena s2Step135EarlyControlClassPlan.equality.top 253 252 251 s2Step135EarlyControlLog.flagWork=some s2Step135EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step135EarlyControl_flagsOwned⟩
  · exact s2Step135EarlyControl_flagsBorrow

private theorem s2Step135EarlyControl_historyBorrow : s2Step135EarlyControlArena.checkBorrow ((37-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).length)) s2Step135EarlyControlLog.recordFresh=some s2Step135EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step135EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step135EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<826) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step135EarlyControlHistoryArena,s2Step135EarlyControlArena,s2Step135EarlyControlLog,arenaWires]

private theorem s2Step135EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).toFinset⊆s2Step135EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step135EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<826) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step135EarlyControl_history : compileHmrRecordGrowLog s2Step135EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step135EarlyControlLog.recordFresh=some s2Step135EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step135EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step135EarlyControl_historyBorrow

private theorem s2Step135EarlyControl_sigmaOwned : ([254, 782] : List Wire).toFinset⊆s2Step135EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step135EarlyControlHistoryArena (fun q => (0≤q ∧ q<783) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<826) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step135EarlyControl_sigmaReleaseOwned : ([782] : List Wire).toFinset⊆s2Step135EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step135EarlyControlHistoryArena (fun q => (0≤q ∧ q<783) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<826) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step135EarlyControl_sigmaRelease : s2Step135EarlyControlHistoryArena.release {782} (fun _ => false)=some s2Step135EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step135EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step135EarlyControlSigmaArena,s2Step135EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step135EarlyControl_sigma : compileHmrSigmaDropLog s2Step135EarlyControlHistoryArena false 0 0 254 782 []=some s2Step135EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step135EarlyControl_sigmaOwned⟩
  · exact s2Step135EarlyControl_sigmaRelease

private theorem s2Step135EarlyControl_zeroBorrow : s2Step135EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step135EarlyControlLog.zeroWork=some s2Step135EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step135EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step135EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<826) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step135EarlyControlZeroArena,s2Step135EarlyControlArena,s2Step135EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step135EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step135EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step135EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<826) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step135EarlyControl_zero : compileHmrEqualityLog s2Step135EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step135EarlyControlLog.zeroWork=some (s2Step135EarlyControlZeroArena,s2Step135EarlyControlLog.zeroWork,s2Step135EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step135EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step135EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step135EarlyControl_logged : s2Step135EarlyControlPlan.Logged s2Step135EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 782 254 253 252 251 781 37 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step135EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step135EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step135EarlyControl_zero
  · exact s2Step135EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step135EarlyControl_flags
  · exact s2Step135EarlyControl_fit
  · exact s2Step135EarlyControl_history
  · exact s2Step135EarlyControl_sigma
  · exact s2Step135EarlyControl_branch

private theorem s2Step135EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step135EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 782 254 253 252 251 781 37 s2Step135EarlyControlLog=some s2Step135EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step135EarlyControlPlan s2Step135EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 782 254 253 252 251 781 37 s2Step135EarlyControl_logged

private def s2Step135EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step135EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713],768⟩

private def s2Step135EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822],770⟩

private def s2Step135EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200],769⟩

private def s2Step135EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835],771⟩

private def s2Step135FrontBank : WindowBank := ⟨s2Step135EntryFRow,s2Step135EntryGRow,s2Step135EntryFvRow,s2Step135EntryGvRow⟩

private def s2Step135Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 826, 768]

private def s2Step135Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 827, 814, 769]

private def s2Step135Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 770]

private def s2Step135Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 817, 783, 771]

private theorem s2Step135Counter_apart : Disjoint s2Step135HeadFvAfter.live s2Step135CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step135HeadFvAfter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step135Counter_borrowed : s2Step135HeadFvAfter.checkBorrow 4 s2Step135CounterWork=some s2Step135CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step135HeadFvAfter s2Step135CounterDuring s2Step135CounterWork.toFinset s2Step135Counter_bounded s2Step135Counter_apart rfl

private theorem s2Step135Counter_owned : (782::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step135HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step135HeadFvAfter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step135Counter_checked : compileHmrCounterStepLog s2Step135HeadFvAfter true 782 [772, 773, 774, 775, 776, 777] s2Step135CounterWork=some s2Step135CounterDuring := by
  have owned : ∀q∈782::[772, 773, 774, 775, 776, 777],q∈s2Step135HeadFvAfter.live := fun q hq => s2Step135Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step135Counter_borrowed

private def s2Step135EntryFAfter : Arena := s2Step135EntryFBefore

private theorem s2Step135EntryBank_incomingDistinct : ([s2Step135EntryFRow,s2Step135EntryGRow,s2Step135EntryFvRow,s2Step135EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step135EntryF_Incoming : rowsOwned s2Step135EntryFBefore [s2Step135EntryFRow,s2Step135EntryGRow,s2Step135EntryFvRow,s2Step135EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step135EntryFRow,s2Step135EntryGRow,s2Step135EntryFvRow,s2Step135EntryGvRow] 0 s2Step135EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step135EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step135EntryBank_outgoingOwned : rowsOwned s2Step135EntryGvAfter [s2Step135EntryFOut,s2Step135EntryGOut,s2Step135EntryFvOut,s2Step135EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step135EntryGvAfter (fun q => (0≤q ∧ q<781) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step135EntryF_Outgoing : rowsOwned s2Step135EntryGvAfter [s2Step135EntryFOut,s2Step135EntryGOut,s2Step135EntryFvOut,s2Step135EntryGvOut] :=
  hmrRows_owned_drop s2Step135EntryGvAfter [s2Step135EntryFOut,s2Step135EntryGOut,s2Step135EntryFvOut,s2Step135EntryGvOut] 0 s2Step135EntryBank_outgoingOwned

private theorem s2Step135EntryF_distinct : (s2Step135EntryFRow.sign::s2Step135EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step135EntryF_owned : (s2Step135EntryFRow.sign::s2Step135EntryFRow.payload).toFinset⊆s2Step135EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step135EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step135EntryF_reserved : s2Step135EntryFBefore.reserve s2Step135EntryFFresh.toFinset=some s2Step135EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step135EntryFFresh,arenaWires]
  · norm_num [s2Step135EntryFBefore,s2Step135EntryFFresh,arenaWires]
  · simp only [s2Step135EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step135EntryF_checked : planRowResizeLog s2Step135EntryFBefore s2Step135EntryFRow 202 s2Step135EntryFFresh=
    some (s2Step135EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713],768⟩,growRow 768 s2Step135EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step135EntryFBefore s2Step135EntryFAfter s2Step135EntryFRow 202 s2Step135EntryFFresh
    s2Step135EntryF_distinct s2Step135EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step135EntryF_reserved
  have rowEq : WindowRow.mk (s2Step135EntryFRow.payload++s2Step135EntryFFresh) s2Step135EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step135EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step135EntryFvAfter : Arena := s2Step135EntryGAfter

private def s2Step135EntryFvBefore : Arena := s2Step135EntryGAfter

private theorem s2Step135EntryFv_Incoming : rowsOwned s2Step135EntryFvBefore [s2Step135EntryFvRow,s2Step135EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step135EntryFRow,s2Step135EntryGRow,s2Step135EntryFvRow,s2Step135EntryGvRow] 2 s2Step135EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step135EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step135EntryFv_Outgoing : rowsOwned s2Step135EntryGvAfter [s2Step135EntryFvOut,s2Step135EntryGvOut] :=
  hmrRows_owned_drop s2Step135EntryGvAfter [s2Step135EntryFOut,s2Step135EntryGOut,s2Step135EntryFvOut,s2Step135EntryGvOut] 2 s2Step135EntryBank_outgoingOwned

private theorem s2Step135EntryFv_distinct : (s2Step135EntryFvRow.sign::s2Step135EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step135EntryFv_owned : (s2Step135EntryFvRow.sign::s2Step135EntryFvRow.payload).toFinset⊆s2Step135EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step135EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step135EntryFv_reserved : s2Step135EntryFvBefore.reserve s2Step135EntryFvFresh.toFinset=some s2Step135EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step135EntryFvFresh,arenaWires]
  · norm_num [s2Step135EntryFvBefore,s2Step135EntryGAfter,s2Step135EntryFvFresh,arenaWires]
  · simp only [s2Step135EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step135EntryFv_checked : planRowResizeLog s2Step135EntryFvBefore s2Step135EntryFvRow 81 s2Step135EntryFvFresh=
    some (s2Step135EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822],770⟩,growRow 770 s2Step135EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step135EntryFvBefore s2Step135EntryFvAfter s2Step135EntryFvRow 81 s2Step135EntryFvFresh
    s2Step135EntryFv_distinct s2Step135EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step135EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step135EntryFvRow.payload++s2Step135EntryFvFresh) s2Step135EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step135EntryGBefore : Arena := s2Step135EntryFBefore

private theorem s2Step135EntryG_Incoming : rowsOwned s2Step135EntryGBefore [s2Step135EntryGRow,s2Step135EntryFvRow,s2Step135EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step135EntryFRow,s2Step135EntryGRow,s2Step135EntryFvRow,s2Step135EntryGvRow] 1 s2Step135EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step135EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step135EntryG_Outgoing : rowsOwned s2Step135EntryGvAfter [s2Step135EntryGOut,s2Step135EntryFvOut,s2Step135EntryGvOut] :=
  hmrRows_owned_drop s2Step135EntryGvAfter [s2Step135EntryFOut,s2Step135EntryGOut,s2Step135EntryFvOut,s2Step135EntryGvOut] 1 s2Step135EntryBank_outgoingOwned

private theorem s2Step135EntryG_distinct : (s2Step135EntryGRow.sign::s2Step135EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step135EntryG_owned : (s2Step135EntryGRow.sign::s2Step135EntryGRow.payload).toFinset⊆s2Step135EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step135EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step135EntryG_reserved : s2Step135EntryGBefore.reserve s2Step135EntryGFresh.toFinset=some s2Step135EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step135EntryGFresh,arenaWires]
  · norm_num [s2Step135EntryGBefore,s2Step135EntryFBefore,s2Step135EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step135EntryGAfter,s2Step135EntryGBefore,s2Step135EntryFBefore,s2Step135EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step135EntryG_checked : planRowResizeLog s2Step135EntryGBefore s2Step135EntryGRow 202 s2Step135EntryGFresh=
    some (s2Step135EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 827],769⟩,growRow 769 s2Step135EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step135EntryGBefore s2Step135EntryGAfter s2Step135EntryGRow 202 s2Step135EntryGFresh
    s2Step135EntryG_distinct s2Step135EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step135EntryG_reserved
  have rowEq : WindowRow.mk (s2Step135EntryGRow.payload++s2Step135EntryGFresh) s2Step135EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 827],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step135EntryGvBefore : Arena := s2Step135EntryGAfter

private theorem s2Step135EntryGv_Incoming : rowsOwned s2Step135EntryGvBefore [s2Step135EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step135EntryFRow,s2Step135EntryGRow,s2Step135EntryFvRow,s2Step135EntryGvRow] 3 s2Step135EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step135EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step135EntryGv_Outgoing : rowsOwned s2Step135EntryGvAfter [s2Step135EntryGvOut] :=
  hmrRows_owned_drop s2Step135EntryGvAfter [s2Step135EntryFOut,s2Step135EntryGOut,s2Step135EntryFvOut,s2Step135EntryGvOut] 3 s2Step135EntryBank_outgoingOwned

private theorem s2Step135EntryGv_distinct : (s2Step135EntryGvRow.sign::s2Step135EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step135EntryGv_owned : (s2Step135EntryGvRow.sign::s2Step135EntryGvRow.payload).toFinset⊆s2Step135EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step135EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step135EntryGv_reserved : s2Step135EntryGvBefore.reserve s2Step135EntryGvFresh.toFinset=some s2Step135EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step135EntryGvFresh,arenaWires]
  · norm_num [s2Step135EntryGvBefore,s2Step135EntryGAfter,s2Step135EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step135EntryGvAfter,s2Step135EntryGvBefore,s2Step135EntryGAfter,s2Step135EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step135EntryGv_checked : planRowResizeLog s2Step135EntryGvBefore s2Step135EntryGvRow 81 s2Step135EntryGvFresh=
    some (s2Step135EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 817],771⟩,growRow 771 s2Step135EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step135EntryGvBefore s2Step135EntryGvAfter s2Step135EntryGvRow 81 s2Step135EntryGvFresh
    s2Step135EntryGv_distinct s2Step135EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step135EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step135EntryGvRow.payload++s2Step135EntryGvFresh) s2Step135EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 817],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step135EntryBank_rows : planWindowRowsLog s2Step135EntryFBefore [(s2Step135EntryFRow,202),(s2Step135EntryGRow,202),(s2Step135EntryFvRow,81),(s2Step135EntryGvRow,81)] [s2Step135EntryFFresh,s2Step135EntryGFresh,s2Step135EntryFvFresh,s2Step135EntryGvFresh]=
    some (s2Step135EntryGvAfter,[s2Step135EntryFOut,s2Step135EntryGOut,s2Step135EntryFvOut,s2Step135EntryGvOut],(growRow 768 s2Step135EntryFFresh ++ (growRow 769 s2Step135EntryGFresh ++ (growRow 770 s2Step135EntryFvFresh ++ (growRow 771 s2Step135EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step135EntryGvAfter [] []=some (s2Step135EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step135EntryGvBefore s2Step135EntryGvAfter s2Step135EntryGvAfter
    s2Step135EntryGvRow s2Step135EntryGvOut 81 s2Step135EntryGvFresh [] [] []
    (growRow 771 s2Step135EntryGvFresh) ([]) s2Step135EntryGv_Incoming s2Step135EntryGv_checked h4 s2Step135EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step135EntryFvBefore s2Step135EntryFvAfter s2Step135EntryGvAfter
    s2Step135EntryFvRow s2Step135EntryFvOut 81 s2Step135EntryFvFresh [(s2Step135EntryGvRow,81)] [s2Step135EntryGvFresh] [s2Step135EntryGvOut]
    (growRow 770 s2Step135EntryFvFresh) ((growRow 771 s2Step135EntryGvFresh ++ [])) s2Step135EntryFv_Incoming s2Step135EntryFv_checked h3 s2Step135EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step135EntryGBefore s2Step135EntryGAfter s2Step135EntryGvAfter
    s2Step135EntryGRow s2Step135EntryGOut 202 s2Step135EntryGFresh [(s2Step135EntryFvRow,81),(s2Step135EntryGvRow,81)] [s2Step135EntryFvFresh,s2Step135EntryGvFresh] [s2Step135EntryFvOut,s2Step135EntryGvOut]
    (growRow 769 s2Step135EntryGFresh) ((growRow 770 s2Step135EntryFvFresh ++ (growRow 771 s2Step135EntryGvFresh ++ []))) s2Step135EntryG_Incoming s2Step135EntryG_checked h2 s2Step135EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step135EntryFBefore s2Step135EntryFAfter s2Step135EntryGvAfter
    s2Step135EntryFRow s2Step135EntryFOut 202 s2Step135EntryFFresh [(s2Step135EntryGRow,202),(s2Step135EntryFvRow,81),(s2Step135EntryGvRow,81)] [s2Step135EntryGFresh,s2Step135EntryFvFresh,s2Step135EntryGvFresh] [s2Step135EntryGOut,s2Step135EntryFvOut,s2Step135EntryGvOut]
    (growRow 768 s2Step135EntryFFresh) ((growRow 769 s2Step135EntryGFresh ++ (growRow 770 s2Step135EntryFvFresh ++ (growRow 771 s2Step135EntryGvFresh ++ [])))) s2Step135EntryF_Incoming s2Step135EntryF_checked h1 s2Step135EntryF_Outgoing
  exact h0

private theorem s2Step135EntryBank_checked : compileHmrBankResizeLog .entry s2Step135EntryFBefore ⟨s2Step135EntryFRow,s2Step135EntryGRow,s2Step135EntryFvRow,s2Step135EntryGvRow⟩ ⟨202,202,81,81⟩ [s2Step135EntryFFresh,s2Step135EntryGFresh,s2Step135EntryFvFresh,s2Step135EntryGvFresh]=
    some (s2Step135EntryGvAfter,⟨s2Step135EntryFOut,s2Step135EntryGOut,s2Step135EntryFvOut,s2Step135EntryGvOut⟩,(growRow 768 s2Step135EntryFFresh ++ (growRow 769 s2Step135EntryGFresh ++ (growRow 770 s2Step135EntryFvFresh ++ (growRow 771 s2Step135EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step135EntryBank_rows]
  rfl

private def s2Step135ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<200) ∨ (201≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step135ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<200) ∨ (201≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step135ExitFBefore : Arena := s2Step135ExitGAfter

private def s2Step135ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 826],768⟩

private def s2Step135ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829],770⟩

private def s2Step135ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 827, 814],769⟩

private def s2Step135ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 817, 783],771⟩

private theorem s2Step135ExitBank_incomingDistinct : ([s2Step135ExitGRow,s2Step135ExitFRow,s2Step135ExitFvRow,s2Step135ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step135ExitF_Incoming : rowsOwned s2Step135ExitFBefore [s2Step135ExitFRow,s2Step135ExitFvRow,s2Step135ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step135ExitGRow,s2Step135ExitFRow,s2Step135ExitFvRow,s2Step135ExitGvRow] 1 s2Step135ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step135ExitFBefore (fun q => (0≤q ∧ q<200) ∨ (201≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step135ExitBank_outgoingOwned : rowsOwned s2Step135ExitGvAfter [s2Step135ExitGOut,s2Step135ExitFOut,s2Step135ExitFvOut,s2Step135ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step135ExitGvAfter (fun q => (0≤q ∧ q<200) ∨ (201≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<826) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step135ExitF_Outgoing : rowsOwned s2Step135ExitGvAfter [s2Step135ExitFOut,s2Step135ExitFvOut,s2Step135ExitGvOut] :=
  hmrRows_owned_drop s2Step135ExitGvAfter [s2Step135ExitGOut,s2Step135ExitFOut,s2Step135ExitFvOut,s2Step135ExitGvOut] 1 s2Step135ExitBank_outgoingOwned

private theorem s2Step135ExitF_distinct : (s2Step135ExitFRow.sign::s2Step135ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step135ExitF_owned : (s2Step135ExitFRow.sign::s2Step135ExitFRow.payload).toFinset⊆s2Step135ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step135ExitFBefore (fun q => (0≤q ∧ q<200) ∨ (201≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step135ExitF_retired : s2Step135ExitFBefore.retireSet s2Step135ExitFExtra.toFinset=s2Step135ExitFAfter := by
  unfold Arena.retireSet s2Step135ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step135ExitFBefore,s2Step135ExitGAfter,s2Step135ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step135ExitF_checked : planRowResizeLog s2Step135ExitFBefore s2Step135ExitFRow 202 []=
    some (s2Step135ExitFAfter,s2Step135ExitFOut,shrinkRow 768 s2Step135ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step135ExitFBefore s2Step135ExitFRow 202 s2Step135ExitF_distinct s2Step135ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step135ExitFRow.payload.take 202) s2Step135ExitFRow.sign=s2Step135ExitFOut := by decide +kernel
  have hi : s2Step135ExitFRow.payload.drop 202=s2Step135ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step135ExitF_retired] at result
  exact result

private def s2Step135ExitFvAfter : Arena := s2Step135ExitFAfter

private def s2Step135ExitFvBefore : Arena := s2Step135ExitFAfter

private theorem s2Step135ExitFv_Incoming : rowsOwned s2Step135ExitFvBefore [s2Step135ExitFvRow,s2Step135ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step135ExitGRow,s2Step135ExitFRow,s2Step135ExitFvRow,s2Step135ExitGvRow] 2 s2Step135ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step135ExitFvBefore (fun q => (0≤q ∧ q<200) ∨ (201≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step135ExitFv_Outgoing : rowsOwned s2Step135ExitGvAfter [s2Step135ExitFvOut,s2Step135ExitGvOut] :=
  hmrRows_owned_drop s2Step135ExitGvAfter [s2Step135ExitGOut,s2Step135ExitFOut,s2Step135ExitFvOut,s2Step135ExitGvOut] 2 s2Step135ExitBank_outgoingOwned

private theorem s2Step135ExitFv_distinct : (s2Step135ExitFvRow.sign::s2Step135ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step135ExitFv_owned : (s2Step135ExitFvRow.sign::s2Step135ExitFvRow.payload).toFinset⊆s2Step135ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step135ExitFvBefore (fun q => (0≤q ∧ q<200) ∨ (201≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step135ExitFv_reserved : s2Step135ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step135ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step135ExitFv_checked : planRowResizeLog s2Step135ExitFvBefore s2Step135ExitFvRow 82 []=
    some (s2Step135ExitFvAfter,s2Step135ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step135ExitFvBefore s2Step135ExitFvAfter s2Step135ExitFvRow 82 []
    s2Step135ExitFv_distinct s2Step135ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step135ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step135ExitFvRow.payload++[]) s2Step135ExitFvRow.sign=s2Step135ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step135ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private theorem s2Step135ExitG_Incoming : rowsOwned s2Step135ExitGBefore [s2Step135ExitGRow,s2Step135ExitFRow,s2Step135ExitFvRow,s2Step135ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step135ExitGRow,s2Step135ExitFRow,s2Step135ExitFvRow,s2Step135ExitGvRow] 0 s2Step135ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step135ExitGBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step135ExitG_Outgoing : rowsOwned s2Step135ExitGvAfter [s2Step135ExitGOut,s2Step135ExitFOut,s2Step135ExitFvOut,s2Step135ExitGvOut] :=
  hmrRows_owned_drop s2Step135ExitGvAfter [s2Step135ExitGOut,s2Step135ExitFOut,s2Step135ExitFvOut,s2Step135ExitGvOut] 0 s2Step135ExitBank_outgoingOwned

private theorem s2Step135ExitG_distinct : (s2Step135ExitGRow.sign::s2Step135ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step135ExitG_owned : (s2Step135ExitGRow.sign::s2Step135ExitGRow.payload).toFinset⊆s2Step135ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step135ExitGBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step135ExitG_retired : s2Step135ExitGBefore.retireSet s2Step135ExitGExtra.toFinset=s2Step135ExitGAfter := by
  unfold Arena.retireSet s2Step135ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step135ExitGBefore,s2Step135ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step135ExitG_checked : planRowResizeLog s2Step135ExitGBefore s2Step135ExitGRow 200 []=
    some (s2Step135ExitGAfter,s2Step135ExitGOut,shrinkRow 769 s2Step135ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step135ExitGBefore s2Step135ExitGRow 200 s2Step135ExitG_distinct s2Step135ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step135ExitGRow.payload.take 200) s2Step135ExitGRow.sign=s2Step135ExitGOut := by decide +kernel
  have hi : s2Step135ExitGRow.payload.drop 200=s2Step135ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step135ExitG_retired] at result
  exact result

private def s2Step135ExitGvBefore : Arena := s2Step135ExitFAfter

private theorem s2Step135ExitGv_Incoming : rowsOwned s2Step135ExitGvBefore [s2Step135ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step135ExitGRow,s2Step135ExitFRow,s2Step135ExitFvRow,s2Step135ExitGvRow] 3 s2Step135ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step135ExitGvBefore (fun q => (0≤q ∧ q<200) ∨ (201≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step135ExitGv_Outgoing : rowsOwned s2Step135ExitGvAfter [s2Step135ExitGvOut] :=
  hmrRows_owned_drop s2Step135ExitGvAfter [s2Step135ExitGOut,s2Step135ExitFOut,s2Step135ExitFvOut,s2Step135ExitGvOut] 3 s2Step135ExitBank_outgoingOwned

private theorem s2Step135ExitGv_distinct : (s2Step135ExitGvRow.sign::s2Step135ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step135ExitGv_owned : (s2Step135ExitGvRow.sign::s2Step135ExitGvRow.payload).toFinset⊆s2Step135ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step135ExitGvBefore (fun q => (0≤q ∧ q<200) ∨ (201≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step135ExitGv_retired : s2Step135ExitGvBefore.retireSet s2Step135ExitGvExtra.toFinset=s2Step135ExitGvAfter := by
  unfold Arena.retireSet s2Step135ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step135ExitGvBefore,s2Step135ExitFAfter,s2Step135ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step135ExitGv_checked : planRowResizeLog s2Step135ExitGvBefore s2Step135ExitGvRow 80 []=
    some (s2Step135ExitGvAfter,s2Step135ExitGvOut,shrinkRow 771 s2Step135ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step135ExitGvBefore s2Step135ExitGvRow 80 s2Step135ExitGv_distinct s2Step135ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step135ExitGvRow.payload.take 80) s2Step135ExitGvRow.sign=s2Step135ExitGvOut := by decide +kernel
  have hi : s2Step135ExitGvRow.payload.drop 80=s2Step135ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step135ExitGv_retired] at result
  exact result

private theorem s2Step135ExitBank_rows : planWindowRowsLog s2Step135ExitGBefore [(s2Step135ExitGRow,200),(s2Step135ExitFRow,202),(s2Step135ExitFvRow,82),(s2Step135ExitGvRow,80)] [[],[],[],[]]=
    some (s2Step135ExitGvAfter,[s2Step135ExitGOut,s2Step135ExitFOut,s2Step135ExitFvOut,s2Step135ExitGvOut],(shrinkRow 769 s2Step135ExitGExtra ++ (shrinkRow 768 s2Step135ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step135ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step135ExitGvAfter [] []=some (s2Step135ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step135ExitGvBefore s2Step135ExitGvAfter s2Step135ExitGvAfter
    s2Step135ExitGvRow s2Step135ExitGvOut 80 [] [] [] []
    (shrinkRow 771 s2Step135ExitGvExtra) ([]) s2Step135ExitGv_Incoming s2Step135ExitGv_checked h4 s2Step135ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step135ExitFvBefore s2Step135ExitFvAfter s2Step135ExitGvAfter
    s2Step135ExitFvRow s2Step135ExitFvOut 82 [] [(s2Step135ExitGvRow,80)] [[]] [s2Step135ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step135ExitGvExtra ++ [])) s2Step135ExitFv_Incoming s2Step135ExitFv_checked h3 s2Step135ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step135ExitFBefore s2Step135ExitFAfter s2Step135ExitGvAfter
    s2Step135ExitFRow s2Step135ExitFOut 202 [] [(s2Step135ExitFvRow,82),(s2Step135ExitGvRow,80)] [[],[]] [s2Step135ExitFvOut,s2Step135ExitGvOut]
    (shrinkRow 768 s2Step135ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step135ExitGvExtra ++ []))) s2Step135ExitF_Incoming s2Step135ExitF_checked h2 s2Step135ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step135ExitGBefore s2Step135ExitGAfter s2Step135ExitGvAfter
    s2Step135ExitGRow s2Step135ExitGOut 200 [] [(s2Step135ExitFRow,202),(s2Step135ExitFvRow,82),(s2Step135ExitGvRow,80)] [[],[],[]] [s2Step135ExitFOut,s2Step135ExitFvOut,s2Step135ExitGvOut]
    (shrinkRow 769 s2Step135ExitGExtra) ((shrinkRow 768 s2Step135ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step135ExitGvExtra ++ [])))) s2Step135ExitG_Incoming s2Step135ExitG_checked h1 s2Step135ExitG_Outgoing
  exact h0

private theorem s2Step135ExitBank_checked : compileHmrBankResizeLog .exit s2Step135ExitGBefore ⟨s2Step135ExitFRow,s2Step135ExitGRow,s2Step135ExitFvRow,s2Step135ExitGvRow⟩ ⟨202,200,82,80⟩ [[],[],[],[]]=
    some (s2Step135ExitGvAfter,⟨s2Step135ExitFOut,s2Step135ExitGOut,s2Step135ExitFvOut,s2Step135ExitGvOut⟩,(shrinkRow 769 s2Step135ExitGExtra ++ (shrinkRow 768 s2Step135ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step135ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step135ExitBank_rows]
  rfl

private theorem s2Step135Add0_apart : Disjoint s2Step135Add0Arena.live s2Step135Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step135Add0Arena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step135Add0_card : s2Step135Add0Arena.live.card=877 := by
  decide +kernel

private theorem s2Step135Add0_borrowed : s2Step135Add0Arena.checkBorrow (hmrHybridCount s2Step135Add0Arena s2Step135Add0B.length) s2Step135Add0Work=some s2Step135Add0During := by
  have len : s2Step135Add0Work.length=hmrHybridCount s2Step135Add0Arena s2Step135Add0B.length := by
    rw [hmrHybridCount,s2Step135Add0_card]
    decide +kernel
  have nd : s2Step135Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step135Add0Arena s2Step135Add0During s2Step135Add0Work.toFinset s2Step135Add0_bounded s2Step135Add0_apart rfl

private theorem s2Step135Add0_distinct : (837::781::849::(s2Step135Add0A++s2Step135Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step135Add0_owned : (837::781::849::(s2Step135Add0A++s2Step135Add0B)).toFinset⊆s2Step135Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step135Add0Arena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step135Add0_checked : compileHmrHybridCinLog s2Step135Add0Arena 781 837 849 s2Step135Add0A s2Step135Add0B s2Step135Add0Work=some s2Step135Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step135Add0Arena s2Step135Add0During 781 837 849 s2Step135Add0A s2Step135Add0B s2Step135Add0Work
    (by decide +kernel) (by decide +kernel) s2Step135Add0_distinct
    (fun q hq => s2Step135Add0_owned (List.mem_toFinset.mpr hq)) s2Step135Add0_borrowed

private theorem s2Step135Add1_apart : Disjoint s2Step135Add1Arena.live s2Step135Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step135Add1Arena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step135Add1_card : s2Step135Add1Arena.live.card=877 := by
  decide +kernel

private theorem s2Step135Add1_borrowed : s2Step135Add1Arena.checkBorrow (hmrHybridCount s2Step135Add1Arena s2Step135Add1B.length) s2Step135Add1Work=some s2Step135Add1During := by
  have len : s2Step135Add1Work.length=hmrHybridCount s2Step135Add1Arena s2Step135Add1B.length := by
    rw [hmrHybridCount,s2Step135Add1_card]
    decide +kernel
  have nd : s2Step135Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step135Add1Arena s2Step135Add1During s2Step135Add1Work.toFinset s2Step135Add1_bounded s2Step135Add1_apart rfl

private theorem s2Step135Add1_distinct : (837::781::849::(s2Step135Add1A++s2Step135Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step135Add1_owned : (837::781::849::(s2Step135Add1A++s2Step135Add1B)).toFinset⊆s2Step135Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step135Add1Arena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step135Add1_checked : compileHmrHybridCinLog s2Step135Add1Arena 781 837 849 s2Step135Add1A s2Step135Add1B s2Step135Add1Work=some s2Step135Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step135Add1Arena s2Step135Add1During 781 837 849 s2Step135Add1A s2Step135Add1B s2Step135Add1Work
    (by decide +kernel) (by decide +kernel) s2Step135Add1_distinct
    (fun q hq => s2Step135Add1_owned (List.mem_toFinset.mpr hq)) s2Step135Add1_borrowed

private theorem s2Step135F4_apart : Disjoint (s2Step135Add0A++s2Step135Add0B).toFinset (s2Step135Add1A++s2Step135Add1B).toFinset := by
  have nd : ((s2Step135Add0A++s2Step135Add0B)++(s2Step135Add1A++s2Step135Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step135F4_carry : s2Step135F4FlagArena.checkBorrow 1 [849]=some s2Step135Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step135F4FlagArena,s2Step135HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step135F4FlagArena,s2Step135HeadFvAfter,s2Step135Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step135F4_distinct : (782::781::837::849::((s2Step135Add0A++s2Step135Add1A)++(s2Step135Add0B++s2Step135Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step135F4_flag : s2Step135HeadFvAfter.checkBorrow 1 [837]=some s2Step135F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step135HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step135F4_owned : (782::781::((s2Step135Add0A++s2Step135Add1A)++(s2Step135Add0B++s2Step135Add1B))).toFinset⊆s2Step135HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step135HeadFvAfter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step135F4_checked : compileHmrHybridF4Log s2Step135HeadFvAfter 782 781 s2Step135Add0A s2Step135Add0B s2Step135Add1A s2Step135Add1B [837] [849] s2Step135Add0Work s2Step135Add1Work=some s2Step135F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step135HeadFvAfter s2Step135F4FlagArena s2Step135Add0Arena s2Step135Add0During s2Step135Add1During 782 781
    s2Step135Add0A s2Step135Add0B s2Step135Add1A s2Step135Add1B [837] [849] s2Step135Add0Work s2Step135Add1Work
    (fun q hq => s2Step135F4_owned (List.mem_toFinset.mpr hq)) s2Step135F4_flag s2Step135F4_carry
    s2Step135F4_distinct s2Step135F4_apart s2Step135Add0_checked s2Step135Add1_checked

private theorem s2Step135Front_branch : s2Step135FrontSigmaArena.checkBorrow 1 [781]=some s2Step135HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step135FrontSigmaArena,s2Step135EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step135FrontSigmaArena,s2Step135EntryGvAfter,s2Step135HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step135Front_entry : HmrFrontEntryValid s2Step135EntryFBefore s2Step135FrontBank 202 81 ⟨202,200,82,80⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step135FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step135EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step135EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step135FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step135Front_sigma : s2Step135EntryGvAfter.checkBorrow 1 [782]=some s2Step135FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step135EntryGvAfter,arenaWires]
  · rfl

private def s2Step135HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step135HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step135HeadFBefore : Arena := s2Step135HeadGAfter

private def s2Step135HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713],768⟩

private def s2Step135HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822],770⟩

private def s2Step135HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 827],769⟩

private def s2Step135HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 817],771⟩

private theorem s2Step135HeadBank_incomingDistinct : ([s2Step135HeadGRow,s2Step135HeadFRow,s2Step135HeadGvRow,s2Step135HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step135HeadF_Incoming : rowsOwned s2Step135HeadFBefore [s2Step135HeadFRow,s2Step135HeadGvRow,s2Step135HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step135HeadGRow,s2Step135HeadFRow,s2Step135HeadGvRow,s2Step135HeadFvRow] 1 s2Step135HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step135HeadFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step135HeadBank_outgoingOwned : rowsOwned s2Step135HeadFvAfter [s2Step135HeadGOut,s2Step135HeadFOut,s2Step135HeadGvOut,s2Step135HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step135HeadFvAfter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step135HeadF_Outgoing : rowsOwned s2Step135HeadFvAfter [s2Step135HeadFOut,s2Step135HeadGvOut,s2Step135HeadFvOut] :=
  hmrRows_owned_drop s2Step135HeadFvAfter [s2Step135HeadGOut,s2Step135HeadFOut,s2Step135HeadGvOut,s2Step135HeadFvOut] 1 s2Step135HeadBank_outgoingOwned

private theorem s2Step135HeadF_distinct : (s2Step135HeadFRow.sign::s2Step135HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step135HeadF_owned : (s2Step135HeadFRow.sign::s2Step135HeadFRow.payload).toFinset⊆s2Step135HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step135HeadFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step135HeadF_reserved : s2Step135HeadFBefore.reserve s2Step135HeadFFresh.toFinset=some s2Step135HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step135HeadFFresh,arenaWires]
  · norm_num [s2Step135HeadFBefore,s2Step135HeadGAfter,s2Step135HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step135HeadFAfter,s2Step135HeadFBefore,s2Step135HeadGAfter,s2Step135HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step135HeadF_checked : planRowResizeLog s2Step135HeadFBefore s2Step135HeadFRow 203 s2Step135HeadFFresh=
    some (s2Step135HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 826],768⟩,growRow 768 s2Step135HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step135HeadFBefore s2Step135HeadFAfter s2Step135HeadFRow 203 s2Step135HeadFFresh
    s2Step135HeadF_distinct s2Step135HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step135HeadF_reserved
  have rowEq : WindowRow.mk (s2Step135HeadFRow.payload++s2Step135HeadFFresh) s2Step135HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 826],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step135HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step135HeadFvBefore : Arena := s2Step135HeadGvAfter

private theorem s2Step135HeadFv_Incoming : rowsOwned s2Step135HeadFvBefore [s2Step135HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step135HeadGRow,s2Step135HeadFRow,s2Step135HeadGvRow,s2Step135HeadFvRow] 3 s2Step135HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step135HeadFvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step135HeadFv_Outgoing : rowsOwned s2Step135HeadFvAfter [s2Step135HeadFvOut] :=
  hmrRows_owned_drop s2Step135HeadFvAfter [s2Step135HeadGOut,s2Step135HeadFOut,s2Step135HeadGvOut,s2Step135HeadFvOut] 3 s2Step135HeadBank_outgoingOwned

private theorem s2Step135HeadFv_distinct : (s2Step135HeadFvRow.sign::s2Step135HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step135HeadFv_owned : (s2Step135HeadFvRow.sign::s2Step135HeadFvRow.payload).toFinset⊆s2Step135HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step135HeadFvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step135HeadFv_reserved : s2Step135HeadFvBefore.reserve s2Step135HeadFvFresh.toFinset=some s2Step135HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step135HeadFvFresh,arenaWires]
  · norm_num [s2Step135HeadFvBefore,s2Step135HeadGvAfter,s2Step135HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step135HeadFvAfter,s2Step135HeadFvBefore,s2Step135HeadGvAfter,s2Step135HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step135HeadFv_checked : planRowResizeLog s2Step135HeadFvBefore s2Step135HeadFvRow 82 s2Step135HeadFvFresh=
    some (s2Step135HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829],770⟩,growRow 770 s2Step135HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step135HeadFvBefore s2Step135HeadFvAfter s2Step135HeadFvRow 82 s2Step135HeadFvFresh
    s2Step135HeadFv_distinct s2Step135HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step135HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step135HeadFvRow.payload++s2Step135HeadFvFresh) s2Step135HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step135HeadG_Incoming : rowsOwned s2Step135HeadGBefore [s2Step135HeadGRow,s2Step135HeadFRow,s2Step135HeadGvRow,s2Step135HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step135HeadGRow,s2Step135HeadFRow,s2Step135HeadGvRow,s2Step135HeadFvRow] 0 s2Step135HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step135HeadGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step135HeadG_Outgoing : rowsOwned s2Step135HeadFvAfter [s2Step135HeadGOut,s2Step135HeadFOut,s2Step135HeadGvOut,s2Step135HeadFvOut] :=
  hmrRows_owned_drop s2Step135HeadFvAfter [s2Step135HeadGOut,s2Step135HeadFOut,s2Step135HeadGvOut,s2Step135HeadFvOut] 0 s2Step135HeadBank_outgoingOwned

private theorem s2Step135HeadG_distinct : (s2Step135HeadGRow.sign::s2Step135HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step135HeadG_owned : (s2Step135HeadGRow.sign::s2Step135HeadGRow.payload).toFinset⊆s2Step135HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step135HeadGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step135HeadG_reserved : s2Step135HeadGBefore.reserve s2Step135HeadGFresh.toFinset=some s2Step135HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step135HeadGFresh,arenaWires]
  · norm_num [s2Step135HeadGBefore,s2Step135HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step135HeadGAfter,s2Step135HeadGBefore,s2Step135HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step135HeadG_checked : planRowResizeLog s2Step135HeadGBefore s2Step135HeadGRow 203 s2Step135HeadGFresh=
    some (s2Step135HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 827, 814],769⟩,growRow 769 s2Step135HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step135HeadGBefore s2Step135HeadGAfter s2Step135HeadGRow 203 s2Step135HeadGFresh
    s2Step135HeadG_distinct s2Step135HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step135HeadG_reserved
  have rowEq : WindowRow.mk (s2Step135HeadGRow.payload++s2Step135HeadGFresh) s2Step135HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 827, 814],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step135HeadGvBefore : Arena := s2Step135HeadFAfter

private theorem s2Step135HeadGv_Incoming : rowsOwned s2Step135HeadGvBefore [s2Step135HeadGvRow,s2Step135HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step135HeadGRow,s2Step135HeadFRow,s2Step135HeadGvRow,s2Step135HeadFvRow] 2 s2Step135HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step135HeadGvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step135HeadGv_Outgoing : rowsOwned s2Step135HeadFvAfter [s2Step135HeadGvOut,s2Step135HeadFvOut] :=
  hmrRows_owned_drop s2Step135HeadFvAfter [s2Step135HeadGOut,s2Step135HeadFOut,s2Step135HeadGvOut,s2Step135HeadFvOut] 2 s2Step135HeadBank_outgoingOwned

private theorem s2Step135HeadGv_distinct : (s2Step135HeadGvRow.sign::s2Step135HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step135HeadGv_owned : (s2Step135HeadGvRow.sign::s2Step135HeadGvRow.payload).toFinset⊆s2Step135HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step135HeadGvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step135HeadGv_reserved : s2Step135HeadGvBefore.reserve s2Step135HeadGvFresh.toFinset=some s2Step135HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step135HeadGvFresh,arenaWires]
  · norm_num [s2Step135HeadGvBefore,s2Step135HeadFAfter,s2Step135HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step135HeadGvAfter,s2Step135HeadGvBefore,s2Step135HeadFAfter,s2Step135HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step135HeadGv_checked : planRowResizeLog s2Step135HeadGvBefore s2Step135HeadGvRow 82 s2Step135HeadGvFresh=
    some (s2Step135HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 817, 783],771⟩,growRow 771 s2Step135HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step135HeadGvBefore s2Step135HeadGvAfter s2Step135HeadGvRow 82 s2Step135HeadGvFresh
    s2Step135HeadGv_distinct s2Step135HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step135HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step135HeadGvRow.payload++s2Step135HeadGvFresh) s2Step135HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 817, 783],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step135HeadBank_rows : planWindowRowsLog s2Step135HeadGBefore [(s2Step135HeadGRow,203),(s2Step135HeadFRow,203),(s2Step135HeadGvRow,82),(s2Step135HeadFvRow,82)] [s2Step135HeadGFresh,s2Step135HeadFFresh,s2Step135HeadGvFresh,s2Step135HeadFvFresh]=
    some (s2Step135HeadFvAfter,[s2Step135HeadGOut,s2Step135HeadFOut,s2Step135HeadGvOut,s2Step135HeadFvOut],(growRow 769 s2Step135HeadGFresh ++ (growRow 768 s2Step135HeadFFresh ++ (growRow 771 s2Step135HeadGvFresh ++ (growRow 770 s2Step135HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step135HeadFvAfter [] []=some (s2Step135HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step135HeadFvBefore s2Step135HeadFvAfter s2Step135HeadFvAfter
    s2Step135HeadFvRow s2Step135HeadFvOut 82 s2Step135HeadFvFresh [] [] []
    (growRow 770 s2Step135HeadFvFresh) ([]) s2Step135HeadFv_Incoming s2Step135HeadFv_checked h4 s2Step135HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step135HeadGvBefore s2Step135HeadGvAfter s2Step135HeadFvAfter
    s2Step135HeadGvRow s2Step135HeadGvOut 82 s2Step135HeadGvFresh [(s2Step135HeadFvRow,82)] [s2Step135HeadFvFresh] [s2Step135HeadFvOut]
    (growRow 771 s2Step135HeadGvFresh) ((growRow 770 s2Step135HeadFvFresh ++ [])) s2Step135HeadGv_Incoming s2Step135HeadGv_checked h3 s2Step135HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step135HeadFBefore s2Step135HeadFAfter s2Step135HeadFvAfter
    s2Step135HeadFRow s2Step135HeadFOut 203 s2Step135HeadFFresh [(s2Step135HeadGvRow,82),(s2Step135HeadFvRow,82)] [s2Step135HeadGvFresh,s2Step135HeadFvFresh] [s2Step135HeadGvOut,s2Step135HeadFvOut]
    (growRow 768 s2Step135HeadFFresh) ((growRow 771 s2Step135HeadGvFresh ++ (growRow 770 s2Step135HeadFvFresh ++ []))) s2Step135HeadF_Incoming s2Step135HeadF_checked h2 s2Step135HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step135HeadGBefore s2Step135HeadGAfter s2Step135HeadFvAfter
    s2Step135HeadGRow s2Step135HeadGOut 203 s2Step135HeadGFresh [(s2Step135HeadFRow,203),(s2Step135HeadGvRow,82),(s2Step135HeadFvRow,82)] [s2Step135HeadFFresh,s2Step135HeadGvFresh,s2Step135HeadFvFresh] [s2Step135HeadFOut,s2Step135HeadGvOut,s2Step135HeadFvOut]
    (growRow 769 s2Step135HeadGFresh) ((growRow 768 s2Step135HeadFFresh ++ (growRow 771 s2Step135HeadGvFresh ++ (growRow 770 s2Step135HeadFvFresh ++ [])))) s2Step135HeadG_Incoming s2Step135HeadG_checked h1 s2Step135HeadG_Outgoing
  exact h0

private theorem s2Step135HeadBank_checked : compileHmrBankResizeLog .headroom s2Step135HeadGBefore ⟨s2Step135HeadFRow,s2Step135HeadGRow,s2Step135HeadFvRow,s2Step135HeadGvRow⟩ ⟨203,203,82,82⟩ [s2Step135HeadGFresh,s2Step135HeadFFresh,s2Step135HeadGvFresh,s2Step135HeadFvFresh]=
    some (s2Step135HeadFvAfter,⟨s2Step135HeadFOut,s2Step135HeadGOut,s2Step135HeadFvOut,s2Step135HeadGvOut⟩,(growRow 769 s2Step135HeadGFresh ++ (growRow 768 s2Step135HeadFFresh ++ (growRow 771 s2Step135HeadGvFresh ++ (growRow 770 s2Step135HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step135HeadBank_rows]
  rfl

private theorem s2Step135Front_checked : compileHmrSourceFrontLog s2Step135EntryFBefore s2Step135FrontBank 202 81 ⟨202,200,82,80⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step135FrontLog=some s2Step135FrontPlan := by
  have pairEq : s2Step135FrontPair=⟨s2Step135HeadFRow,s2Step135HeadGRow,s2Step135HeadFvRow,s2Step135HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step135FrontHead=⟨s2Step135ExitFRow,s2Step135ExitGRow,s2Step135ExitFvRow,s2Step135ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step135Add0A=s2Step135FrontHead.f.wires := by decide +kernel
  have gEq : s2Step135Add0B=s2Step135FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step135Add1A=s2Step135FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step135Add1B=s2Step135FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step135EntryFBefore s2Step135FrontBank 202 81 ⟨202,200,82,80⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step135FrontLog s2Step135FrontPlan
  · exact s2Step135Front_entry
  · exact s2Step135EntryBank_checked
  · exact s2Step135Front_sigma
  · rfl
  · exact s2Step135Front_branch
  · rfl
  · simpa only [s2Step135FrontPlan,pairEq] using s2Step135HeadBank_checked
  · simpa only [s2Step135FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step135F4_checked
  · exact s2Step135Counter_checked
  · rfl
  · simpa only [s2Step135FrontPlan,headEq] using s2Step135ExitBank_checked

private theorem s2Step135Complete_explicit_checked : compileHmrEarlyStepLog s2Step135EntryFBefore s2Step135FrontBank 202 81 ⟨202,200,82,80⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step135CompleteLog=some s2Step135CompletePlan := by
  let Q := s2Step135EarlyControlPlan
  have hq := s2Step135EarlyControl_plan_checked
  have fv1 : s2Step135CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step135CompleteOut.fv.payload[2]?.getD s2Step135CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step135CompleteOut.fv.payload[3]?.getD s2Step135CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step135CompleteOut.fv.payload[4]?.getD s2Step135CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step135EntryFBefore s2Step135EarlyControlArena s2Step135FrontBank 202 81 ⟨202,200,82,80⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step135CompleteLog s2Step135FrontPlan Q
    s2Step135Front_checked s2Step135Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step135Complete_owned s2Step135Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step135EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 782 s2Step135CompleteOut.fv.second (s2Step135CompleteOut.fv.payload[2]?.getD s2Step135CompleteOut.fv.sign) (s2Step135CompleteOut.fv.payload[3]?.getD s2Step135CompleteOut.fv.sign) (s2Step135CompleteOut.fv.payload[4]?.getD s2Step135CompleteOut.fv.sign) 781 37 s2Step135EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep135Arena : Arena := s2Step135EntryFBefore
def s2PrivateStep135Bank : WindowBank := s2Step135FrontBank
def s2PrivateStep135Spec : HmrSourceWalkStepLog := ⟨202,81,⟨202,200,82,80⟩,37,.early s2Step135CompleteLog⟩
def s2PrivateStep135Plan : HmrSourceStepPlan := .early s2Step135CompletePlan
theorem s2PrivateStep135_source : s2PrivateStep135Spec=s2ObservedLogs128[7] := rfl
theorem s2PrivateStep135_checked : compileHmrSourceStepLog s2PrivateStep135Arena s2PrivateStep135Bank
    s2PrivateStep135Spec.fgWidth s2PrivateStep135Spec.vWidth s2PrivateStep135Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881]
    6 498 135 s2PrivateStep135Spec.need none s2PrivateStep135Spec.log=some s2PrivateStep135Plan := by
  change compileHmrSourceStepLog s2Step135EntryFBefore s2Step135FrontBank 202 81 ⟨202,200,82,80⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 6 498 135 37 none (.early s2Step135CompleteLog)=some (.early s2Step135CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 135<498)]
  rw [s2Step135Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
