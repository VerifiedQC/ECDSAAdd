import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep135
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

private def s2Step137CompleteMoves : List (Wire × Wire) := [(778,713)]

private def s2Step137EarlyControlLog : HmrEarlyControlLog := ⟨[778, 782, 781, 826, 783],[814],[790],[815, 867, 877, 879, 882, 883],[884]⟩

private def s2Step137FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [826, 783], [], []],[[814], [781], [782], [827]],[[], [], [], []]⟩,[837],[849],[790],[815],[867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[790, 815, 867, 877]⟩

private def s2Step137CompleteLog : HmrEarlyStepLog := ⟨s2Step137FrontLog,s2Step137CompleteMoves,s2Step137EarlyControlLog⟩

private def s2Step137ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712],768⟩

private def s2Step137ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827],770⟩

private def s2Step137ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199],769⟩

private def s2Step137ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817],771⟩

private def s2Step137FrontOut : WindowBank := ⟨s2Step137ExitFOut,s2Step137ExitGOut,s2Step137ExitFvOut,s2Step137ExitGvOut⟩

private def s2Step137CompleteOut : WindowBank := s2Step137FrontOut.repacked s2Step137CompleteMoves

private def s2Step137EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step137EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step137EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step137EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step137EarlyControlPositiveArena,[814],s2Step137EarlyControlEqualityArena,[790],⟨⟨837,false⟩,[⟨⟨814,false⟩,790⟩]⟩⟩

private def s2Step137EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<885)),Finset.filter_subset _ _⟩

private def s2Step137EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<884)),Finset.filter_subset _ _⟩

private def s2Step137EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (884≤q ∧ q<885)),Finset.filter_subset _ _⟩

private def s2Step137EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (884≤q ∧ q<885)),Finset.filter_subset _ _⟩

private def s2Step137EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<837) ∨ (838≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (884≤q ∧ q<885)),Finset.filter_subset _ _⟩

private def s2Step137EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step137EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,778⟩,⟨⟨774,false⟩,782⟩,⟨⟨775,false⟩,781⟩,⟨⟨776,false⟩,826⟩,⟨⟨777,false⟩,783⟩]⟩

private def s2Step137EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step137EarlyControlZeroArena,s2Step137EarlyControlZeroPlan,s2Step137EarlyControlClassPlan,s2Step137EarlyControlFlagArena,s2Step137EarlyControlFittedArena,s2Step137EarlyControlHistoryArena,s2Step137EarlyControlSigmaArena,s2Step137EarlyControlOutputArena,s2Step137EarlyControlLog⟩

private def s2Step137CounterWork : List Wire := [790, 815, 867, 877]

private theorem s2Step137Counter_bounded : s2Step137CounterWork.toFinset⊆arenaWires := by norm_num [s2Step137CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step137HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step137CounterDuring : Arena := ⟨s2Step137HeadFvAfter.live∪s2Step137CounterWork.toFinset,Finset.union_subset s2Step137HeadFvAfter.bounded s2Step137Counter_bounded⟩

private def s2Step137EntryFFresh : List Wire := []

private def s2Step137EntryFvFresh : List Wire := []

private def s2Step137EntryGFresh : List Wire := [826, 783]

private def s2Step137EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step137EntryGvAfter : Arena := s2Step137EntryGAfter

private def s2Step137EntryGvFresh : List Wire := []

private def s2Step137ExitFExtra : List Wire := [713, 781]

private def s2Step137ExitGExtra : List Wire := [826, 783, 814]

private def s2Step137ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<713) ∨ (714≤q ∧ q<781) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step137ExitGvExtra : List Wire := [782]

private def s2Step137Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step137Add0Work : List Wire := [867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step137Add0_bounded : s2Step137Add0Work.toFinset⊆arenaWires := by
  have h : s2Step137Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step137Add0During : Arena := ⟨s2Step137Add0Arena.live∪s2Step137Add0Work.toFinset,Finset.union_subset s2Step137Add0Arena.bounded s2Step137Add0_bounded⟩

private def s2Step137Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step137Add1Work : List Wire := [867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step137Add1_bounded : s2Step137Add1Work.toFinset⊆arenaWires := by
  have h : s2Step137Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step137Add1During : Arena := ⟨s2Step137Add1Arena.live∪s2Step137Add1Work.toFinset,Finset.union_subset s2Step137Add1Arena.bounded s2Step137Add1_bounded⟩

private def s2Step137F4FlagArena : Arena := ⟨s2Step137HeadFvAfter.live∪{790},Finset.union_subset s2Step137HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step137F4Plan : HmrHybridF4Plan := ⟨s2Step137F4FlagArena,[790],s2Step137Add0Arena,[815],s2Step137Add0During,s2Step137Add0Work,s2Step137Add1During,s2Step137Add1Work⟩

private def s2Step137HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 781],768⟩

private def s2Step137HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827],770⟩

private def s2Step137HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 826, 783, 814],769⟩

private def s2Step137HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782],771⟩

private def s2Step137FrontHead : WindowBank := ⟨s2Step137HeadFOut,s2Step137HeadGOut,s2Step137HeadFvOut,s2Step137HeadGvOut⟩

private def s2Step137EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713],768⟩

private def s2Step137EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829],770⟩

private def s2Step137EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 826, 783],769⟩

private def s2Step137EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817],771⟩

private def s2Step137FrontPair : WindowBank := ⟨s2Step137EntryFOut,s2Step137EntryGOut,s2Step137EntryFvOut,s2Step137EntryGvOut⟩

private def s2Step137FrontSigmaArena : Arena := ⟨s2Step137EntryGvAfter.live∪{837},Finset.union_subset s2Step137EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step137HeadFFresh : List Wire := [781]

private def s2Step137HeadFvFresh : List Wire := [827]

private def s2Step137HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<827) ∨ (828≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step137HeadGFresh : List Wire := [814]

private def s2Step137HeadGvFresh : List Wire := [782]

private def s2Step137FrontPlan : HmrSourceFront := ⟨s2Step137EntryGvAfter,s2Step137FrontPair,(growRow 768 s2Step137EntryFFresh ++ (growRow 769 s2Step137EntryGFresh ++ (growRow 770 s2Step137EntryFvFresh ++ (growRow 771 s2Step137EntryGvFresh ++ [])))),s2Step137FrontSigmaArena,[837],s2Step137HeadGBefore,[849],
  s2Step137HeadFvAfter,s2Step137FrontHead,(growRow 769 s2Step137HeadGFresh ++ (growRow 768 s2Step137HeadFFresh ++ (growRow 771 s2Step137HeadGvFresh ++ (growRow 770 s2Step137HeadFvFresh ++ [])))),s2Step137F4Plan,s2Step137CounterDuring,s2Step137CounterWork,s2Step137ExitGvAfter,s2Step137FrontOut,(shrinkRow 769 s2Step137ExitGExtra ++ (shrinkRow 768 s2Step137ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step137ExitGvExtra ++ []))))⟩

private def s2Step137CompletePlan : HmrEarlyStepPlan := ⟨s2Step137FrontPlan,s2Step137EarlyControlArena,s2Step137EarlyControlPlan,s2Step137CompleteMoves⟩

private theorem s2Step137Complete_apart : List.Disjoint (s2Step137CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [837, 849, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] := by
  have nd : ((s2Step137CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[837, 849, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step137Complete_owned : (s2Step137CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step137EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step137EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private def s2Step137CompleteMoveArena : Arena := ⟨s2Step137ExitGvAfter.live∪{713},Finset.union_subset s2Step137ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step137Complete_repack : s2Step137ExitGvAfter.checkRepack s2Step137CompleteMoves=some s2Step137EarlyControlArena := by
  have owned : 778∈s2Step137ExitGvAfter.live := by norm_num [s2Step137ExitGvAfter,arenaWires]
  have reserve : s2Step137ExitGvAfter.reserve {713}=some s2Step137CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step137ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step137CompleteMoveArena.retireSet {778}=s2Step137EarlyControlArena := by
    unfold Arena.retireSet s2Step137EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step137CompleteMoveArena,s2Step137ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step137CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step137CompleteMoveArena.retireSet {778}).checkRepack []=some s2Step137EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step137EarlyControl_branchOwned : ([849] : List Wire).toFinset⊆s2Step137EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step137EarlyControlSigmaArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<837) ∨ (838≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (884≤q ∧ q<885)) rfl
  decide +kernel

private theorem s2Step137EarlyControl_branch : compileHmrBranchRetirement s2Step137EarlyControlSigmaArena 849=some s2Step137EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step137EarlyControl_branchOwned
  · ext q
    simp [s2Step137EarlyControlOutputArena,s2Step137EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step137EarlyControl_classEqualityBorrow : s2Step137EarlyControlPositiveArena.checkBorrow (([837, 814] : List Wire).length-1) s2Step137EarlyControlLog.classWork=some s2Step137EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step137EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step137EarlyControlPositiveArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step137EarlyControlEqualityArena,s2Step137EarlyControlPositiveArena,s2Step137EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step137EarlyControl_classEqualityOwned : ([837, 814] : List Wire).toFinset⊆s2Step137EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step137EarlyControlPositiveArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step137EarlyControl_classEquality : compileHmrEqualityLog s2Step137EarlyControlPositiveArena [837, 814] 0 s2Step137EarlyControlLog.classWork=some (s2Step137EarlyControlEqualityArena,s2Step137EarlyControlLog.classWork,s2Step137EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step137EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step137EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step137EarlyControl_classOwned : ([777, 783, 837] : List Wire).toFinset⊆s2Step137EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step137EarlyControlZeroArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step137EarlyControl_positiveBorrow : s2Step137EarlyControlZeroArena.checkBorrow (1) s2Step137EarlyControlLog.positiveWork=some s2Step137EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step137EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step137EarlyControlZeroArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step137EarlyControlPositiveArena,s2Step137EarlyControlZeroArena,s2Step137EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step137EarlyControl_class : compileHmrSourceClassLog s2Step137EarlyControlZeroArena false 777 s2Step137EarlyControlZeroPlan.top 0 837 s2Step137EarlyControlLog.positiveWork s2Step137EarlyControlLog.classWork=some s2Step137EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step137EarlyControlClassPlan s2Step137EarlyControlZeroArena false 777 s2Step137EarlyControlZeroPlan.top 0 837
  constructor
  · decide +kernel
  · exact s2Step137EarlyControl_classOwned
  · exact s2Step137EarlyControl_positiveBorrow
  · exact s2Step137EarlyControl_classEquality

private theorem s2Step137EarlyControl_entryRecordOwned : ([849, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).toFinset⊆s2Step137EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step137EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step137EarlyControl_entrySigmaOwned : ([837, 254] : List Wire).toFinset⊆s2Step137EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step137EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step137EarlyControl_fitBorrow : s2Step137EarlyControlFlagArena.checkBorrow ((38-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).length)) s2Step137EarlyControlLog.recordFresh=some s2Step137EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step137EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step137EarlyControlFlagArena (fun q => (0≤q ∧ q<884)) rfl
      decide +kernel
    · ext q
      simp [s2Step137EarlyControlFittedArena,s2Step137EarlyControlFlagArena,s2Step137EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step137EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).toFinset⊆s2Step137EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step137EarlyControlFlagArena (fun q => (0≤q ∧ q<884)) rfl
  decide +kernel

private theorem s2Step137EarlyControl_fit : compileHmrRecordGrowLog s2Step137EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 38 s2Step137EarlyControlLog.recordFresh=some s2Step137EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step137EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step137EarlyControl_fitBorrow

private theorem s2Step137EarlyControl_flagsBorrow : s2Step137EarlyControlEqualityArena.checkBorrow (6) s2Step137EarlyControlLog.flagWork=some s2Step137EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step137EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step137EarlyControlEqualityArena (fun q => (0≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step137EarlyControlFlagArena,s2Step137EarlyControlEqualityArena,s2Step137EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step137EarlyControl_flagsOwned : ([790, 253, 252, 251] : List Wire).toFinset⊆s2Step137EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step137EarlyControlEqualityArena (fun q => (0≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step137EarlyControl_flags : compileHmrFlagsLog s2Step137EarlyControlClassPlan.equalityArena s2Step137EarlyControlClassPlan.equality.top 253 252 251 s2Step137EarlyControlLog.flagWork=some s2Step137EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step137EarlyControl_flagsOwned⟩
  · exact s2Step137EarlyControl_flagsBorrow

private theorem s2Step137EarlyControl_historyBorrow : s2Step137EarlyControlArena.checkBorrow ((38-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).length)) s2Step137EarlyControlLog.recordFresh=some s2Step137EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step137EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step137EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step137EarlyControlHistoryArena,s2Step137EarlyControlArena,s2Step137EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step137EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).toFinset⊆s2Step137EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step137EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step137EarlyControl_history : compileHmrRecordGrowLog s2Step137EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 38 s2Step137EarlyControlLog.recordFresh=some s2Step137EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step137EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step137EarlyControl_historyBorrow

private theorem s2Step137EarlyControl_sigmaOwned : ([254, 837] : List Wire).toFinset⊆s2Step137EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step137EarlyControlHistoryArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (884≤q ∧ q<885)) rfl
  decide +kernel

private theorem s2Step137EarlyControl_sigmaReleaseOwned : ([837] : List Wire).toFinset⊆s2Step137EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step137EarlyControlHistoryArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (884≤q ∧ q<885)) rfl
  decide +kernel

private theorem s2Step137EarlyControl_sigmaRelease : s2Step137EarlyControlHistoryArena.release {837} (fun _ => false)=some s2Step137EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step137EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step137EarlyControlSigmaArena,s2Step137EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step137EarlyControl_sigma : compileHmrSigmaDropLog s2Step137EarlyControlHistoryArena false 0 0 254 837 []=some s2Step137EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step137EarlyControl_sigmaOwned⟩
  · exact s2Step137EarlyControl_sigmaRelease

private theorem s2Step137EarlyControl_zeroBorrow : s2Step137EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step137EarlyControlLog.zeroWork=some s2Step137EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step137EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step137EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step137EarlyControlZeroArena,s2Step137EarlyControlArena,s2Step137EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step137EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step137EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step137EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step137EarlyControl_zero : compileHmrEqualityLog s2Step137EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step137EarlyControlLog.zeroWork=some (s2Step137EarlyControlZeroArena,s2Step137EarlyControlLog.zeroWork,s2Step137EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step137EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step137EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step137EarlyControl_logged : s2Step137EarlyControlPlan.Logged s2Step137EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 837 254 253 252 251 849 38 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step137EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step137EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step137EarlyControl_zero
  · exact s2Step137EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step137EarlyControl_flags
  · exact s2Step137EarlyControl_fit
  · exact s2Step137EarlyControl_history
  · exact s2Step137EarlyControl_sigma
  · exact s2Step137EarlyControl_branch

private theorem s2Step137EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step137EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 837 254 253 252 251 849 38 s2Step137EarlyControlLog=some s2Step137EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step137EarlyControlPlan s2Step137EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 837 254 253 252 251 849 38 s2Step137EarlyControl_logged

private def s2Step137EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step137EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713],768⟩

private def s2Step137EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829],770⟩

private def s2Step137EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199],769⟩

private def s2Step137EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817],771⟩

private def s2Step137FrontBank : WindowBank := ⟨s2Step137EntryFRow,s2Step137EntryGRow,s2Step137EntryFvRow,s2Step137EntryGvRow⟩

private def s2Step137Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 781, 768]

private def s2Step137Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 826, 783, 814, 769]

private def s2Step137Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 770]

private def s2Step137Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 771]

private theorem s2Step137Counter_apart : Disjoint s2Step137HeadFvAfter.live s2Step137CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step137HeadFvAfter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step137Counter_borrowed : s2Step137HeadFvAfter.checkBorrow 4 s2Step137CounterWork=some s2Step137CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step137HeadFvAfter s2Step137CounterDuring s2Step137CounterWork.toFinset s2Step137Counter_bounded s2Step137Counter_apart rfl

private theorem s2Step137Counter_owned : (837::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step137HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step137HeadFvAfter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step137Counter_checked : compileHmrCounterStepLog s2Step137HeadFvAfter true 837 [772, 773, 774, 775, 776, 777] s2Step137CounterWork=some s2Step137CounterDuring := by
  have owned : ∀q∈837::[772, 773, 774, 775, 776, 777],q∈s2Step137HeadFvAfter.live := fun q hq => s2Step137Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step137Counter_borrowed

private def s2Step137EntryFAfter : Arena := s2Step137EntryFBefore

private theorem s2Step137EntryBank_incomingDistinct : ([s2Step137EntryFRow,s2Step137EntryGRow,s2Step137EntryFvRow,s2Step137EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step137EntryF_Incoming : rowsOwned s2Step137EntryFBefore [s2Step137EntryFRow,s2Step137EntryGRow,s2Step137EntryFvRow,s2Step137EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step137EntryFRow,s2Step137EntryGRow,s2Step137EntryFvRow,s2Step137EntryGvRow] 0 s2Step137EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step137EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step137EntryBank_outgoingOwned : rowsOwned s2Step137EntryGvAfter [s2Step137EntryFOut,s2Step137EntryGOut,s2Step137EntryFvOut,s2Step137EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step137EntryGvAfter (fun q => (0≤q ∧ q<781) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step137EntryF_Outgoing : rowsOwned s2Step137EntryGvAfter [s2Step137EntryFOut,s2Step137EntryGOut,s2Step137EntryFvOut,s2Step137EntryGvOut] :=
  hmrRows_owned_drop s2Step137EntryGvAfter [s2Step137EntryFOut,s2Step137EntryGOut,s2Step137EntryFvOut,s2Step137EntryGvOut] 0 s2Step137EntryBank_outgoingOwned

private theorem s2Step137EntryF_distinct : (s2Step137EntryFRow.sign::s2Step137EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step137EntryF_owned : (s2Step137EntryFRow.sign::s2Step137EntryFRow.payload).toFinset⊆s2Step137EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step137EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step137EntryF_reserved : s2Step137EntryFBefore.reserve s2Step137EntryFFresh.toFinset=some s2Step137EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step137EntryFFresh,arenaWires]
  · norm_num [s2Step137EntryFBefore,s2Step137EntryFFresh,arenaWires]
  · simp only [s2Step137EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step137EntryF_checked : planRowResizeLog s2Step137EntryFBefore s2Step137EntryFRow 202 s2Step137EntryFFresh=
    some (s2Step137EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713],768⟩,growRow 768 s2Step137EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step137EntryFBefore s2Step137EntryFAfter s2Step137EntryFRow 202 s2Step137EntryFFresh
    s2Step137EntryF_distinct s2Step137EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step137EntryF_reserved
  have rowEq : WindowRow.mk (s2Step137EntryFRow.payload++s2Step137EntryFFresh) s2Step137EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step137EntryFvAfter : Arena := s2Step137EntryGAfter

private def s2Step137EntryFvBefore : Arena := s2Step137EntryGAfter

private theorem s2Step137EntryFv_Incoming : rowsOwned s2Step137EntryFvBefore [s2Step137EntryFvRow,s2Step137EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step137EntryFRow,s2Step137EntryGRow,s2Step137EntryFvRow,s2Step137EntryGvRow] 2 s2Step137EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step137EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step137EntryFv_Outgoing : rowsOwned s2Step137EntryGvAfter [s2Step137EntryFvOut,s2Step137EntryGvOut] :=
  hmrRows_owned_drop s2Step137EntryGvAfter [s2Step137EntryFOut,s2Step137EntryGOut,s2Step137EntryFvOut,s2Step137EntryGvOut] 2 s2Step137EntryBank_outgoingOwned

private theorem s2Step137EntryFv_distinct : (s2Step137EntryFvRow.sign::s2Step137EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step137EntryFv_owned : (s2Step137EntryFvRow.sign::s2Step137EntryFvRow.payload).toFinset⊆s2Step137EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step137EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step137EntryFv_reserved : s2Step137EntryFvBefore.reserve s2Step137EntryFvFresh.toFinset=some s2Step137EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step137EntryFvFresh,arenaWires]
  · norm_num [s2Step137EntryFvBefore,s2Step137EntryGAfter,s2Step137EntryFvFresh,arenaWires]
  · simp only [s2Step137EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step137EntryFv_checked : planRowResizeLog s2Step137EntryFvBefore s2Step137EntryFvRow 82 s2Step137EntryFvFresh=
    some (s2Step137EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829],770⟩,growRow 770 s2Step137EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step137EntryFvBefore s2Step137EntryFvAfter s2Step137EntryFvRow 82 s2Step137EntryFvFresh
    s2Step137EntryFv_distinct s2Step137EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step137EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step137EntryFvRow.payload++s2Step137EntryFvFresh) s2Step137EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step137EntryGBefore : Arena := s2Step137EntryFBefore

private theorem s2Step137EntryG_Incoming : rowsOwned s2Step137EntryGBefore [s2Step137EntryGRow,s2Step137EntryFvRow,s2Step137EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step137EntryFRow,s2Step137EntryGRow,s2Step137EntryFvRow,s2Step137EntryGvRow] 1 s2Step137EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step137EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step137EntryG_Outgoing : rowsOwned s2Step137EntryGvAfter [s2Step137EntryGOut,s2Step137EntryFvOut,s2Step137EntryGvOut] :=
  hmrRows_owned_drop s2Step137EntryGvAfter [s2Step137EntryFOut,s2Step137EntryGOut,s2Step137EntryFvOut,s2Step137EntryGvOut] 1 s2Step137EntryBank_outgoingOwned

private theorem s2Step137EntryG_distinct : (s2Step137EntryGRow.sign::s2Step137EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step137EntryG_owned : (s2Step137EntryGRow.sign::s2Step137EntryGRow.payload).toFinset⊆s2Step137EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step137EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step137EntryG_reserved : s2Step137EntryGBefore.reserve s2Step137EntryGFresh.toFinset=some s2Step137EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step137EntryGFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s2Step137EntryGBefore,s2Step137EntryFBefore,s2Step137EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step137EntryGAfter,s2Step137EntryGBefore,s2Step137EntryFBefore,s2Step137EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step137EntryG_checked : planRowResizeLog s2Step137EntryGBefore s2Step137EntryGRow 202 s2Step137EntryGFresh=
    some (s2Step137EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 826, 783],769⟩,growRow 769 s2Step137EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step137EntryGBefore s2Step137EntryGAfter s2Step137EntryGRow 202 s2Step137EntryGFresh
    s2Step137EntryG_distinct s2Step137EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step137EntryG_reserved
  have rowEq : WindowRow.mk (s2Step137EntryGRow.payload++s2Step137EntryGFresh) s2Step137EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 826, 783],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step137EntryGvBefore : Arena := s2Step137EntryGAfter

private theorem s2Step137EntryGv_Incoming : rowsOwned s2Step137EntryGvBefore [s2Step137EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step137EntryFRow,s2Step137EntryGRow,s2Step137EntryFvRow,s2Step137EntryGvRow] 3 s2Step137EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step137EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step137EntryGv_Outgoing : rowsOwned s2Step137EntryGvAfter [s2Step137EntryGvOut] :=
  hmrRows_owned_drop s2Step137EntryGvAfter [s2Step137EntryFOut,s2Step137EntryGOut,s2Step137EntryFvOut,s2Step137EntryGvOut] 3 s2Step137EntryBank_outgoingOwned

private theorem s2Step137EntryGv_distinct : (s2Step137EntryGvRow.sign::s2Step137EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step137EntryGv_owned : (s2Step137EntryGvRow.sign::s2Step137EntryGvRow.payload).toFinset⊆s2Step137EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step137EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step137EntryGv_reserved : s2Step137EntryGvBefore.reserve s2Step137EntryGvFresh.toFinset=some s2Step137EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step137EntryGvFresh,arenaWires]
  · norm_num [s2Step137EntryGvBefore,s2Step137EntryGAfter,s2Step137EntryGvFresh,arenaWires]
  · simp only [s2Step137EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step137EntryGv_checked : planRowResizeLog s2Step137EntryGvBefore s2Step137EntryGvRow 82 s2Step137EntryGvFresh=
    some (s2Step137EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817],771⟩,growRow 771 s2Step137EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step137EntryGvBefore s2Step137EntryGvAfter s2Step137EntryGvRow 82 s2Step137EntryGvFresh
    s2Step137EntryGv_distinct s2Step137EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step137EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step137EntryGvRow.payload++s2Step137EntryGvFresh) s2Step137EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step137EntryBank_rows : planWindowRowsLog s2Step137EntryFBefore [(s2Step137EntryFRow,202),(s2Step137EntryGRow,202),(s2Step137EntryFvRow,82),(s2Step137EntryGvRow,82)] [s2Step137EntryFFresh,s2Step137EntryGFresh,s2Step137EntryFvFresh,s2Step137EntryGvFresh]=
    some (s2Step137EntryGvAfter,[s2Step137EntryFOut,s2Step137EntryGOut,s2Step137EntryFvOut,s2Step137EntryGvOut],(growRow 768 s2Step137EntryFFresh ++ (growRow 769 s2Step137EntryGFresh ++ (growRow 770 s2Step137EntryFvFresh ++ (growRow 771 s2Step137EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step137EntryGvAfter [] []=some (s2Step137EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step137EntryGvBefore s2Step137EntryGvAfter s2Step137EntryGvAfter
    s2Step137EntryGvRow s2Step137EntryGvOut 82 s2Step137EntryGvFresh [] [] []
    (growRow 771 s2Step137EntryGvFresh) ([]) s2Step137EntryGv_Incoming s2Step137EntryGv_checked h4 s2Step137EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step137EntryFvBefore s2Step137EntryFvAfter s2Step137EntryGvAfter
    s2Step137EntryFvRow s2Step137EntryFvOut 82 s2Step137EntryFvFresh [(s2Step137EntryGvRow,82)] [s2Step137EntryGvFresh] [s2Step137EntryGvOut]
    (growRow 770 s2Step137EntryFvFresh) ((growRow 771 s2Step137EntryGvFresh ++ [])) s2Step137EntryFv_Incoming s2Step137EntryFv_checked h3 s2Step137EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step137EntryGBefore s2Step137EntryGAfter s2Step137EntryGvAfter
    s2Step137EntryGRow s2Step137EntryGOut 202 s2Step137EntryGFresh [(s2Step137EntryFvRow,82),(s2Step137EntryGvRow,82)] [s2Step137EntryFvFresh,s2Step137EntryGvFresh] [s2Step137EntryFvOut,s2Step137EntryGvOut]
    (growRow 769 s2Step137EntryGFresh) ((growRow 770 s2Step137EntryFvFresh ++ (growRow 771 s2Step137EntryGvFresh ++ []))) s2Step137EntryG_Incoming s2Step137EntryG_checked h2 s2Step137EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step137EntryFBefore s2Step137EntryFAfter s2Step137EntryGvAfter
    s2Step137EntryFRow s2Step137EntryFOut 202 s2Step137EntryFFresh [(s2Step137EntryGRow,202),(s2Step137EntryFvRow,82),(s2Step137EntryGvRow,82)] [s2Step137EntryGFresh,s2Step137EntryFvFresh,s2Step137EntryGvFresh] [s2Step137EntryGOut,s2Step137EntryFvOut,s2Step137EntryGvOut]
    (growRow 768 s2Step137EntryFFresh) ((growRow 769 s2Step137EntryGFresh ++ (growRow 770 s2Step137EntryFvFresh ++ (growRow 771 s2Step137EntryGvFresh ++ [])))) s2Step137EntryF_Incoming s2Step137EntryF_checked h1 s2Step137EntryF_Outgoing
  exact h0

private theorem s2Step137EntryBank_checked : compileHmrBankResizeLog .entry s2Step137EntryFBefore ⟨s2Step137EntryFRow,s2Step137EntryGRow,s2Step137EntryFvRow,s2Step137EntryGvRow⟩ ⟨202,202,82,82⟩ [s2Step137EntryFFresh,s2Step137EntryGFresh,s2Step137EntryFvFresh,s2Step137EntryGvFresh]=
    some (s2Step137EntryGvAfter,⟨s2Step137EntryFOut,s2Step137EntryGOut,s2Step137EntryFvOut,s2Step137EntryGvOut⟩,(growRow 768 s2Step137EntryFFresh ++ (growRow 769 s2Step137EntryGFresh ++ (growRow 770 s2Step137EntryFvFresh ++ (growRow 771 s2Step137EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step137EntryBank_rows]
  rfl

private def s2Step137ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<713) ∨ (714≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step137ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step137ExitFBefore : Arena := s2Step137ExitGAfter

private def s2Step137ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 781],768⟩

private def s2Step137ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827],770⟩

private def s2Step137ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 826, 783, 814],769⟩

private def s2Step137ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782],771⟩

private theorem s2Step137ExitBank_incomingDistinct : ([s2Step137ExitGRow,s2Step137ExitFRow,s2Step137ExitFvRow,s2Step137ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step137ExitF_Incoming : rowsOwned s2Step137ExitFBefore [s2Step137ExitFRow,s2Step137ExitFvRow,s2Step137ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step137ExitGRow,s2Step137ExitFRow,s2Step137ExitFvRow,s2Step137ExitGvRow] 1 s2Step137ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step137ExitFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step137ExitBank_outgoingOwned : rowsOwned s2Step137ExitGvAfter [s2Step137ExitGOut,s2Step137ExitFOut,s2Step137ExitFvOut,s2Step137ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step137ExitGvAfter (fun q => (0≤q ∧ q<713) ∨ (714≤q ∧ q<781) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step137ExitF_Outgoing : rowsOwned s2Step137ExitGvAfter [s2Step137ExitFOut,s2Step137ExitFvOut,s2Step137ExitGvOut] :=
  hmrRows_owned_drop s2Step137ExitGvAfter [s2Step137ExitGOut,s2Step137ExitFOut,s2Step137ExitFvOut,s2Step137ExitGvOut] 1 s2Step137ExitBank_outgoingOwned

private theorem s2Step137ExitF_distinct : (s2Step137ExitFRow.sign::s2Step137ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step137ExitF_owned : (s2Step137ExitFRow.sign::s2Step137ExitFRow.payload).toFinset⊆s2Step137ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step137ExitFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step137ExitF_retired : s2Step137ExitFBefore.retireSet s2Step137ExitFExtra.toFinset=s2Step137ExitFAfter := by
  unfold Arena.retireSet s2Step137ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step137ExitFBefore,s2Step137ExitGAfter,s2Step137ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step137ExitF_checked : planRowResizeLog s2Step137ExitFBefore s2Step137ExitFRow 201 []=
    some (s2Step137ExitFAfter,s2Step137ExitFOut,shrinkRow 768 s2Step137ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step137ExitFBefore s2Step137ExitFRow 201 s2Step137ExitF_distinct s2Step137ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step137ExitFRow.payload.take 201) s2Step137ExitFRow.sign=s2Step137ExitFOut := by decide +kernel
  have hi : s2Step137ExitFRow.payload.drop 201=s2Step137ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step137ExitF_retired] at result
  exact result

private def s2Step137ExitFvAfter : Arena := s2Step137ExitFAfter

private def s2Step137ExitFvBefore : Arena := s2Step137ExitFAfter

private theorem s2Step137ExitFv_Incoming : rowsOwned s2Step137ExitFvBefore [s2Step137ExitFvRow,s2Step137ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step137ExitGRow,s2Step137ExitFRow,s2Step137ExitFvRow,s2Step137ExitGvRow] 2 s2Step137ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step137ExitFvBefore (fun q => (0≤q ∧ q<713) ∨ (714≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step137ExitFv_Outgoing : rowsOwned s2Step137ExitGvAfter [s2Step137ExitFvOut,s2Step137ExitGvOut] :=
  hmrRows_owned_drop s2Step137ExitGvAfter [s2Step137ExitGOut,s2Step137ExitFOut,s2Step137ExitFvOut,s2Step137ExitGvOut] 2 s2Step137ExitBank_outgoingOwned

private theorem s2Step137ExitFv_distinct : (s2Step137ExitFvRow.sign::s2Step137ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step137ExitFv_owned : (s2Step137ExitFvRow.sign::s2Step137ExitFvRow.payload).toFinset⊆s2Step137ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step137ExitFvBefore (fun q => (0≤q ∧ q<713) ∨ (714≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step137ExitFv_reserved : s2Step137ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step137ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step137ExitFv_checked : planRowResizeLog s2Step137ExitFvBefore s2Step137ExitFvRow 83 []=
    some (s2Step137ExitFvAfter,s2Step137ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step137ExitFvBefore s2Step137ExitFvAfter s2Step137ExitFvRow 83 []
    s2Step137ExitFv_distinct s2Step137ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step137ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step137ExitFvRow.payload++[]) s2Step137ExitFvRow.sign=s2Step137ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step137ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private theorem s2Step137ExitG_Incoming : rowsOwned s2Step137ExitGBefore [s2Step137ExitGRow,s2Step137ExitFRow,s2Step137ExitFvRow,s2Step137ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step137ExitGRow,s2Step137ExitFRow,s2Step137ExitFvRow,s2Step137ExitGvRow] 0 s2Step137ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step137ExitGBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step137ExitG_Outgoing : rowsOwned s2Step137ExitGvAfter [s2Step137ExitGOut,s2Step137ExitFOut,s2Step137ExitFvOut,s2Step137ExitGvOut] :=
  hmrRows_owned_drop s2Step137ExitGvAfter [s2Step137ExitGOut,s2Step137ExitFOut,s2Step137ExitFvOut,s2Step137ExitGvOut] 0 s2Step137ExitBank_outgoingOwned

private theorem s2Step137ExitG_distinct : (s2Step137ExitGRow.sign::s2Step137ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step137ExitG_owned : (s2Step137ExitGRow.sign::s2Step137ExitGRow.payload).toFinset⊆s2Step137ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step137ExitGBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step137ExitG_retired : s2Step137ExitGBefore.retireSet s2Step137ExitGExtra.toFinset=s2Step137ExitGAfter := by
  unfold Arena.retireSet s2Step137ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step137ExitGBefore,s2Step137ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step137ExitG_checked : planRowResizeLog s2Step137ExitGBefore s2Step137ExitGRow 200 []=
    some (s2Step137ExitGAfter,s2Step137ExitGOut,shrinkRow 769 s2Step137ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step137ExitGBefore s2Step137ExitGRow 200 s2Step137ExitG_distinct s2Step137ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step137ExitGRow.payload.take 200) s2Step137ExitGRow.sign=s2Step137ExitGOut := by decide +kernel
  have hi : s2Step137ExitGRow.payload.drop 200=s2Step137ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step137ExitG_retired] at result
  exact result

private def s2Step137ExitGvBefore : Arena := s2Step137ExitFAfter

private theorem s2Step137ExitGv_Incoming : rowsOwned s2Step137ExitGvBefore [s2Step137ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step137ExitGRow,s2Step137ExitFRow,s2Step137ExitFvRow,s2Step137ExitGvRow] 3 s2Step137ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step137ExitGvBefore (fun q => (0≤q ∧ q<713) ∨ (714≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step137ExitGv_Outgoing : rowsOwned s2Step137ExitGvAfter [s2Step137ExitGvOut] :=
  hmrRows_owned_drop s2Step137ExitGvAfter [s2Step137ExitGOut,s2Step137ExitFOut,s2Step137ExitFvOut,s2Step137ExitGvOut] 3 s2Step137ExitBank_outgoingOwned

private theorem s2Step137ExitGv_distinct : (s2Step137ExitGvRow.sign::s2Step137ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step137ExitGv_owned : (s2Step137ExitGvRow.sign::s2Step137ExitGvRow.payload).toFinset⊆s2Step137ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step137ExitGvBefore (fun q => (0≤q ∧ q<713) ∨ (714≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step137ExitGv_retired : s2Step137ExitGvBefore.retireSet s2Step137ExitGvExtra.toFinset=s2Step137ExitGvAfter := by
  unfold Arena.retireSet s2Step137ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step137ExitGvBefore,s2Step137ExitFAfter,s2Step137ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step137ExitGv_checked : planRowResizeLog s2Step137ExitGvBefore s2Step137ExitGvRow 82 []=
    some (s2Step137ExitGvAfter,s2Step137ExitGvOut,shrinkRow 771 s2Step137ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step137ExitGvBefore s2Step137ExitGvRow 82 s2Step137ExitGv_distinct s2Step137ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step137ExitGvRow.payload.take 82) s2Step137ExitGvRow.sign=s2Step137ExitGvOut := by decide +kernel
  have hi : s2Step137ExitGvRow.payload.drop 82=s2Step137ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step137ExitGv_retired] at result
  exact result

private theorem s2Step137ExitBank_rows : planWindowRowsLog s2Step137ExitGBefore [(s2Step137ExitGRow,200),(s2Step137ExitFRow,201),(s2Step137ExitFvRow,83),(s2Step137ExitGvRow,82)] [[],[],[],[]]=
    some (s2Step137ExitGvAfter,[s2Step137ExitGOut,s2Step137ExitFOut,s2Step137ExitFvOut,s2Step137ExitGvOut],(shrinkRow 769 s2Step137ExitGExtra ++ (shrinkRow 768 s2Step137ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step137ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step137ExitGvAfter [] []=some (s2Step137ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step137ExitGvBefore s2Step137ExitGvAfter s2Step137ExitGvAfter
    s2Step137ExitGvRow s2Step137ExitGvOut 82 [] [] [] []
    (shrinkRow 771 s2Step137ExitGvExtra) ([]) s2Step137ExitGv_Incoming s2Step137ExitGv_checked h4 s2Step137ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step137ExitFvBefore s2Step137ExitFvAfter s2Step137ExitGvAfter
    s2Step137ExitFvRow s2Step137ExitFvOut 83 [] [(s2Step137ExitGvRow,82)] [[]] [s2Step137ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step137ExitGvExtra ++ [])) s2Step137ExitFv_Incoming s2Step137ExitFv_checked h3 s2Step137ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step137ExitFBefore s2Step137ExitFAfter s2Step137ExitGvAfter
    s2Step137ExitFRow s2Step137ExitFOut 201 [] [(s2Step137ExitFvRow,83),(s2Step137ExitGvRow,82)] [[],[]] [s2Step137ExitFvOut,s2Step137ExitGvOut]
    (shrinkRow 768 s2Step137ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step137ExitGvExtra ++ []))) s2Step137ExitF_Incoming s2Step137ExitF_checked h2 s2Step137ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step137ExitGBefore s2Step137ExitGAfter s2Step137ExitGvAfter
    s2Step137ExitGRow s2Step137ExitGOut 200 [] [(s2Step137ExitFRow,201),(s2Step137ExitFvRow,83),(s2Step137ExitGvRow,82)] [[],[],[]] [s2Step137ExitFOut,s2Step137ExitFvOut,s2Step137ExitGvOut]
    (shrinkRow 769 s2Step137ExitGExtra) ((shrinkRow 768 s2Step137ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step137ExitGvExtra ++ [])))) s2Step137ExitG_Incoming s2Step137ExitG_checked h1 s2Step137ExitG_Outgoing
  exact h0

private theorem s2Step137ExitBank_checked : compileHmrBankResizeLog .exit s2Step137ExitGBefore ⟨s2Step137ExitFRow,s2Step137ExitGRow,s2Step137ExitFvRow,s2Step137ExitGvRow⟩ ⟨201,200,83,82⟩ [[],[],[],[]]=
    some (s2Step137ExitGvAfter,⟨s2Step137ExitFOut,s2Step137ExitGOut,s2Step137ExitFvOut,s2Step137ExitGvOut⟩,(shrinkRow 769 s2Step137ExitGExtra ++ (shrinkRow 768 s2Step137ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step137ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step137ExitBank_rows]
  rfl

private theorem s2Step137Add0_apart : Disjoint s2Step137Add0Arena.live s2Step137Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step137Add0Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step137Add0_card : s2Step137Add0Arena.live.card=879 := by
  decide +kernel

private theorem s2Step137Add0_borrowed : s2Step137Add0Arena.checkBorrow (hmrHybridCount s2Step137Add0Arena s2Step137Add0B.length) s2Step137Add0Work=some s2Step137Add0During := by
  have len : s2Step137Add0Work.length=hmrHybridCount s2Step137Add0Arena s2Step137Add0B.length := by
    rw [hmrHybridCount,s2Step137Add0_card]
    decide +kernel
  have nd : s2Step137Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step137Add0Arena s2Step137Add0During s2Step137Add0Work.toFinset s2Step137Add0_bounded s2Step137Add0_apart rfl

private theorem s2Step137Add0_distinct : (790::849::815::(s2Step137Add0A++s2Step137Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step137Add0_owned : (790::849::815::(s2Step137Add0A++s2Step137Add0B)).toFinset⊆s2Step137Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step137Add0Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step137Add0_checked : compileHmrHybridCinLog s2Step137Add0Arena 849 790 815 s2Step137Add0A s2Step137Add0B s2Step137Add0Work=some s2Step137Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step137Add0Arena s2Step137Add0During 849 790 815 s2Step137Add0A s2Step137Add0B s2Step137Add0Work
    (by decide +kernel) (by decide +kernel) s2Step137Add0_distinct
    (fun q hq => s2Step137Add0_owned (List.mem_toFinset.mpr hq)) s2Step137Add0_borrowed

private theorem s2Step137Add1_apart : Disjoint s2Step137Add1Arena.live s2Step137Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step137Add1Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step137Add1_card : s2Step137Add1Arena.live.card=879 := by
  decide +kernel

private theorem s2Step137Add1_borrowed : s2Step137Add1Arena.checkBorrow (hmrHybridCount s2Step137Add1Arena s2Step137Add1B.length) s2Step137Add1Work=some s2Step137Add1During := by
  have len : s2Step137Add1Work.length=hmrHybridCount s2Step137Add1Arena s2Step137Add1B.length := by
    rw [hmrHybridCount,s2Step137Add1_card]
    decide +kernel
  have nd : s2Step137Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step137Add1Arena s2Step137Add1During s2Step137Add1Work.toFinset s2Step137Add1_bounded s2Step137Add1_apart rfl

private theorem s2Step137Add1_distinct : (790::849::815::(s2Step137Add1A++s2Step137Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step137Add1_owned : (790::849::815::(s2Step137Add1A++s2Step137Add1B)).toFinset⊆s2Step137Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step137Add1Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step137Add1_checked : compileHmrHybridCinLog s2Step137Add1Arena 849 790 815 s2Step137Add1A s2Step137Add1B s2Step137Add1Work=some s2Step137Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step137Add1Arena s2Step137Add1During 849 790 815 s2Step137Add1A s2Step137Add1B s2Step137Add1Work
    (by decide +kernel) (by decide +kernel) s2Step137Add1_distinct
    (fun q hq => s2Step137Add1_owned (List.mem_toFinset.mpr hq)) s2Step137Add1_borrowed

private theorem s2Step137F4_apart : Disjoint (s2Step137Add0A++s2Step137Add0B).toFinset (s2Step137Add1A++s2Step137Add1B).toFinset := by
  have nd : ((s2Step137Add0A++s2Step137Add0B)++(s2Step137Add1A++s2Step137Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step137F4_carry : s2Step137F4FlagArena.checkBorrow 1 [815]=some s2Step137Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step137F4FlagArena,s2Step137HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step137F4FlagArena,s2Step137HeadFvAfter,s2Step137Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step137F4_distinct : (837::849::790::815::((s2Step137Add0A++s2Step137Add1A)++(s2Step137Add0B++s2Step137Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step137F4_flag : s2Step137HeadFvAfter.checkBorrow 1 [790]=some s2Step137F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step137HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step137F4_owned : (837::849::((s2Step137Add0A++s2Step137Add1A)++(s2Step137Add0B++s2Step137Add1B))).toFinset⊆s2Step137HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step137HeadFvAfter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step137F4_checked : compileHmrHybridF4Log s2Step137HeadFvAfter 837 849 s2Step137Add0A s2Step137Add0B s2Step137Add1A s2Step137Add1B [790] [815] s2Step137Add0Work s2Step137Add1Work=some s2Step137F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step137HeadFvAfter s2Step137F4FlagArena s2Step137Add0Arena s2Step137Add0During s2Step137Add1During 837 849
    s2Step137Add0A s2Step137Add0B s2Step137Add1A s2Step137Add1B [790] [815] s2Step137Add0Work s2Step137Add1Work
    (fun q hq => s2Step137F4_owned (List.mem_toFinset.mpr hq)) s2Step137F4_flag s2Step137F4_carry
    s2Step137F4_distinct s2Step137F4_apart s2Step137Add0_checked s2Step137Add1_checked

private theorem s2Step137Front_branch : s2Step137FrontSigmaArena.checkBorrow 1 [849]=some s2Step137HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step137FrontSigmaArena,s2Step137EntryGvAfter,s2Step137EntryGAfter,arenaWires]
  · ext q
    simp only [s2Step137FrontSigmaArena,s2Step137EntryGvAfter,s2Step137EntryGAfter,s2Step137HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step137Front_entry : HmrFrontEntryValid s2Step137EntryFBefore s2Step137FrontBank 202 82 ⟨201,200,83,82⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step137FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step137EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step137EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step137FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step137Front_sigma : s2Step137EntryGvAfter.checkBorrow 1 [837]=some s2Step137FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step137EntryGvAfter,s2Step137EntryGAfter,arenaWires]
  · rfl

private def s2Step137HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<827) ∨ (828≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step137HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<827) ∨ (828≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step137HeadFBefore : Arena := s2Step137HeadGAfter

private def s2Step137HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713],768⟩

private def s2Step137HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829],770⟩

private def s2Step137HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 826, 783],769⟩

private def s2Step137HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817],771⟩

private theorem s2Step137HeadBank_incomingDistinct : ([s2Step137HeadGRow,s2Step137HeadFRow,s2Step137HeadGvRow,s2Step137HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step137HeadF_Incoming : rowsOwned s2Step137HeadFBefore [s2Step137HeadFRow,s2Step137HeadGvRow,s2Step137HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step137HeadGRow,s2Step137HeadFRow,s2Step137HeadGvRow,s2Step137HeadFvRow] 1 s2Step137HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step137HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<827) ∨ (828≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step137HeadBank_outgoingOwned : rowsOwned s2Step137HeadFvAfter [s2Step137HeadGOut,s2Step137HeadFOut,s2Step137HeadGvOut,s2Step137HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step137HeadFvAfter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step137HeadF_Outgoing : rowsOwned s2Step137HeadFvAfter [s2Step137HeadFOut,s2Step137HeadGvOut,s2Step137HeadFvOut] :=
  hmrRows_owned_drop s2Step137HeadFvAfter [s2Step137HeadGOut,s2Step137HeadFOut,s2Step137HeadGvOut,s2Step137HeadFvOut] 1 s2Step137HeadBank_outgoingOwned

private theorem s2Step137HeadF_distinct : (s2Step137HeadFRow.sign::s2Step137HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step137HeadF_owned : (s2Step137HeadFRow.sign::s2Step137HeadFRow.payload).toFinset⊆s2Step137HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step137HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<827) ∨ (828≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step137HeadF_reserved : s2Step137HeadFBefore.reserve s2Step137HeadFFresh.toFinset=some s2Step137HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step137HeadFFresh,arenaWires]
  · norm_num [s2Step137HeadFBefore,s2Step137HeadGAfter,s2Step137HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step137HeadFAfter,s2Step137HeadFBefore,s2Step137HeadGAfter,s2Step137HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step137HeadF_checked : planRowResizeLog s2Step137HeadFBefore s2Step137HeadFRow 203 s2Step137HeadFFresh=
    some (s2Step137HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 781],768⟩,growRow 768 s2Step137HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step137HeadFBefore s2Step137HeadFAfter s2Step137HeadFRow 203 s2Step137HeadFFresh
    s2Step137HeadF_distinct s2Step137HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step137HeadF_reserved
  have rowEq : WindowRow.mk (s2Step137HeadFRow.payload++s2Step137HeadFFresh) s2Step137HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 781],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step137HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<827) ∨ (828≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step137HeadFvBefore : Arena := s2Step137HeadGvAfter

private theorem s2Step137HeadFv_Incoming : rowsOwned s2Step137HeadFvBefore [s2Step137HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step137HeadGRow,s2Step137HeadFRow,s2Step137HeadGvRow,s2Step137HeadFvRow] 3 s2Step137HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step137HeadFvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<827) ∨ (828≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step137HeadFv_Outgoing : rowsOwned s2Step137HeadFvAfter [s2Step137HeadFvOut] :=
  hmrRows_owned_drop s2Step137HeadFvAfter [s2Step137HeadGOut,s2Step137HeadFOut,s2Step137HeadGvOut,s2Step137HeadFvOut] 3 s2Step137HeadBank_outgoingOwned

private theorem s2Step137HeadFv_distinct : (s2Step137HeadFvRow.sign::s2Step137HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step137HeadFv_owned : (s2Step137HeadFvRow.sign::s2Step137HeadFvRow.payload).toFinset⊆s2Step137HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step137HeadFvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<827) ∨ (828≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step137HeadFv_reserved : s2Step137HeadFvBefore.reserve s2Step137HeadFvFresh.toFinset=some s2Step137HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step137HeadFvFresh,arenaWires]
  · norm_num [s2Step137HeadFvBefore,s2Step137HeadGvAfter,s2Step137HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step137HeadFvAfter,s2Step137HeadFvBefore,s2Step137HeadGvAfter,s2Step137HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step137HeadFv_checked : planRowResizeLog s2Step137HeadFvBefore s2Step137HeadFvRow 83 s2Step137HeadFvFresh=
    some (s2Step137HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827],770⟩,growRow 770 s2Step137HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step137HeadFvBefore s2Step137HeadFvAfter s2Step137HeadFvRow 83 s2Step137HeadFvFresh
    s2Step137HeadFv_distinct s2Step137HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step137HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step137HeadFvRow.payload++s2Step137HeadFvFresh) s2Step137HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step137HeadG_Incoming : rowsOwned s2Step137HeadGBefore [s2Step137HeadGRow,s2Step137HeadFRow,s2Step137HeadGvRow,s2Step137HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step137HeadGRow,s2Step137HeadFRow,s2Step137HeadGvRow,s2Step137HeadFvRow] 0 s2Step137HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step137HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<827) ∨ (828≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step137HeadG_Outgoing : rowsOwned s2Step137HeadFvAfter [s2Step137HeadGOut,s2Step137HeadFOut,s2Step137HeadGvOut,s2Step137HeadFvOut] :=
  hmrRows_owned_drop s2Step137HeadFvAfter [s2Step137HeadGOut,s2Step137HeadFOut,s2Step137HeadGvOut,s2Step137HeadFvOut] 0 s2Step137HeadBank_outgoingOwned

private theorem s2Step137HeadG_distinct : (s2Step137HeadGRow.sign::s2Step137HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step137HeadG_owned : (s2Step137HeadGRow.sign::s2Step137HeadGRow.payload).toFinset⊆s2Step137HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step137HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<827) ∨ (828≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step137HeadG_reserved : s2Step137HeadGBefore.reserve s2Step137HeadGFresh.toFinset=some s2Step137HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step137HeadGFresh,arenaWires]
  · norm_num [s2Step137HeadGBefore,s2Step137HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step137HeadGAfter,s2Step137HeadGBefore,s2Step137HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step137HeadG_checked : planRowResizeLog s2Step137HeadGBefore s2Step137HeadGRow 203 s2Step137HeadGFresh=
    some (s2Step137HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 826, 783, 814],769⟩,growRow 769 s2Step137HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step137HeadGBefore s2Step137HeadGAfter s2Step137HeadGRow 203 s2Step137HeadGFresh
    s2Step137HeadG_distinct s2Step137HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step137HeadG_reserved
  have rowEq : WindowRow.mk (s2Step137HeadGRow.payload++s2Step137HeadGFresh) s2Step137HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 826, 783, 814],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step137HeadGvBefore : Arena := s2Step137HeadFAfter

private theorem s2Step137HeadGv_Incoming : rowsOwned s2Step137HeadGvBefore [s2Step137HeadGvRow,s2Step137HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step137HeadGRow,s2Step137HeadFRow,s2Step137HeadGvRow,s2Step137HeadFvRow] 2 s2Step137HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step137HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<827) ∨ (828≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step137HeadGv_Outgoing : rowsOwned s2Step137HeadFvAfter [s2Step137HeadGvOut,s2Step137HeadFvOut] :=
  hmrRows_owned_drop s2Step137HeadFvAfter [s2Step137HeadGOut,s2Step137HeadFOut,s2Step137HeadGvOut,s2Step137HeadFvOut] 2 s2Step137HeadBank_outgoingOwned

private theorem s2Step137HeadGv_distinct : (s2Step137HeadGvRow.sign::s2Step137HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step137HeadGv_owned : (s2Step137HeadGvRow.sign::s2Step137HeadGvRow.payload).toFinset⊆s2Step137HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step137HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<827) ∨ (828≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step137HeadGv_reserved : s2Step137HeadGvBefore.reserve s2Step137HeadGvFresh.toFinset=some s2Step137HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step137HeadGvFresh,arenaWires]
  · norm_num [s2Step137HeadGvBefore,s2Step137HeadFAfter,s2Step137HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step137HeadGvAfter,s2Step137HeadGvBefore,s2Step137HeadFAfter,s2Step137HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step137HeadGv_checked : planRowResizeLog s2Step137HeadGvBefore s2Step137HeadGvRow 83 s2Step137HeadGvFresh=
    some (s2Step137HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782],771⟩,growRow 771 s2Step137HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step137HeadGvBefore s2Step137HeadGvAfter s2Step137HeadGvRow 83 s2Step137HeadGvFresh
    s2Step137HeadGv_distinct s2Step137HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step137HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step137HeadGvRow.payload++s2Step137HeadGvFresh) s2Step137HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step137HeadBank_rows : planWindowRowsLog s2Step137HeadGBefore [(s2Step137HeadGRow,203),(s2Step137HeadFRow,203),(s2Step137HeadGvRow,83),(s2Step137HeadFvRow,83)] [s2Step137HeadGFresh,s2Step137HeadFFresh,s2Step137HeadGvFresh,s2Step137HeadFvFresh]=
    some (s2Step137HeadFvAfter,[s2Step137HeadGOut,s2Step137HeadFOut,s2Step137HeadGvOut,s2Step137HeadFvOut],(growRow 769 s2Step137HeadGFresh ++ (growRow 768 s2Step137HeadFFresh ++ (growRow 771 s2Step137HeadGvFresh ++ (growRow 770 s2Step137HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step137HeadFvAfter [] []=some (s2Step137HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step137HeadFvBefore s2Step137HeadFvAfter s2Step137HeadFvAfter
    s2Step137HeadFvRow s2Step137HeadFvOut 83 s2Step137HeadFvFresh [] [] []
    (growRow 770 s2Step137HeadFvFresh) ([]) s2Step137HeadFv_Incoming s2Step137HeadFv_checked h4 s2Step137HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step137HeadGvBefore s2Step137HeadGvAfter s2Step137HeadFvAfter
    s2Step137HeadGvRow s2Step137HeadGvOut 83 s2Step137HeadGvFresh [(s2Step137HeadFvRow,83)] [s2Step137HeadFvFresh] [s2Step137HeadFvOut]
    (growRow 771 s2Step137HeadGvFresh) ((growRow 770 s2Step137HeadFvFresh ++ [])) s2Step137HeadGv_Incoming s2Step137HeadGv_checked h3 s2Step137HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step137HeadFBefore s2Step137HeadFAfter s2Step137HeadFvAfter
    s2Step137HeadFRow s2Step137HeadFOut 203 s2Step137HeadFFresh [(s2Step137HeadGvRow,83),(s2Step137HeadFvRow,83)] [s2Step137HeadGvFresh,s2Step137HeadFvFresh] [s2Step137HeadGvOut,s2Step137HeadFvOut]
    (growRow 768 s2Step137HeadFFresh) ((growRow 771 s2Step137HeadGvFresh ++ (growRow 770 s2Step137HeadFvFresh ++ []))) s2Step137HeadF_Incoming s2Step137HeadF_checked h2 s2Step137HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step137HeadGBefore s2Step137HeadGAfter s2Step137HeadFvAfter
    s2Step137HeadGRow s2Step137HeadGOut 203 s2Step137HeadGFresh [(s2Step137HeadFRow,203),(s2Step137HeadGvRow,83),(s2Step137HeadFvRow,83)] [s2Step137HeadFFresh,s2Step137HeadGvFresh,s2Step137HeadFvFresh] [s2Step137HeadFOut,s2Step137HeadGvOut,s2Step137HeadFvOut]
    (growRow 769 s2Step137HeadGFresh) ((growRow 768 s2Step137HeadFFresh ++ (growRow 771 s2Step137HeadGvFresh ++ (growRow 770 s2Step137HeadFvFresh ++ [])))) s2Step137HeadG_Incoming s2Step137HeadG_checked h1 s2Step137HeadG_Outgoing
  exact h0

private theorem s2Step137HeadBank_checked : compileHmrBankResizeLog .headroom s2Step137HeadGBefore ⟨s2Step137HeadFRow,s2Step137HeadGRow,s2Step137HeadFvRow,s2Step137HeadGvRow⟩ ⟨203,203,83,83⟩ [s2Step137HeadGFresh,s2Step137HeadFFresh,s2Step137HeadGvFresh,s2Step137HeadFvFresh]=
    some (s2Step137HeadFvAfter,⟨s2Step137HeadFOut,s2Step137HeadGOut,s2Step137HeadFvOut,s2Step137HeadGvOut⟩,(growRow 769 s2Step137HeadGFresh ++ (growRow 768 s2Step137HeadFFresh ++ (growRow 771 s2Step137HeadGvFresh ++ (growRow 770 s2Step137HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step137HeadBank_rows]
  rfl

private theorem s2Step137Front_checked : compileHmrSourceFrontLog s2Step137EntryFBefore s2Step137FrontBank 202 82 ⟨201,200,83,82⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step137FrontLog=some s2Step137FrontPlan := by
  have pairEq : s2Step137FrontPair=⟨s2Step137HeadFRow,s2Step137HeadGRow,s2Step137HeadFvRow,s2Step137HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step137FrontHead=⟨s2Step137ExitFRow,s2Step137ExitGRow,s2Step137ExitFvRow,s2Step137ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step137Add0A=s2Step137FrontHead.f.wires := by decide +kernel
  have gEq : s2Step137Add0B=s2Step137FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step137Add1A=s2Step137FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step137Add1B=s2Step137FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step137EntryFBefore s2Step137FrontBank 202 82 ⟨201,200,83,82⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step137FrontLog s2Step137FrontPlan
  · exact s2Step137Front_entry
  · exact s2Step137EntryBank_checked
  · exact s2Step137Front_sigma
  · rfl
  · exact s2Step137Front_branch
  · rfl
  · simpa only [s2Step137FrontPlan,pairEq] using s2Step137HeadBank_checked
  · simpa only [s2Step137FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step137F4_checked
  · exact s2Step137Counter_checked
  · rfl
  · simpa only [s2Step137FrontPlan,headEq] using s2Step137ExitBank_checked

private theorem s2Step137Complete_explicit_checked : compileHmrEarlyStepLog s2Step137EntryFBefore s2Step137FrontBank 202 82 ⟨201,200,83,82⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 38 s2Step137CompleteLog=some s2Step137CompletePlan := by
  let Q := s2Step137EarlyControlPlan
  have hq := s2Step137EarlyControl_plan_checked
  have fv1 : s2Step137CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step137CompleteOut.fv.payload[2]?.getD s2Step137CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step137CompleteOut.fv.payload[3]?.getD s2Step137CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step137CompleteOut.fv.payload[4]?.getD s2Step137CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step137EntryFBefore s2Step137EarlyControlArena s2Step137FrontBank 202 82 ⟨201,200,83,82⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 38 s2Step137CompleteLog s2Step137FrontPlan Q
    s2Step137Front_checked s2Step137Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step137Complete_owned s2Step137Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step137EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 837 s2Step137CompleteOut.fv.second (s2Step137CompleteOut.fv.payload[2]?.getD s2Step137CompleteOut.fv.sign) (s2Step137CompleteOut.fv.payload[3]?.getD s2Step137CompleteOut.fv.sign) (s2Step137CompleteOut.fv.payload[4]?.getD s2Step137CompleteOut.fv.sign) 849 38 s2Step137EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep137Arena : Arena := s2Step137EntryFBefore
def s2PrivateStep137Bank : WindowBank := s2Step137FrontBank
def s2PrivateStep137Spec : HmrSourceWalkStepLog := ⟨202,82,⟨201,200,83,82⟩,38,.early s2Step137CompleteLog⟩
def s2PrivateStep137Plan : HmrSourceStepPlan := .early s2Step137CompletePlan
theorem s2PrivateStep137_source : s2PrivateStep137Spec=s2ObservedLogs128[9] := rfl
theorem s2PrivateStep137_checked : compileHmrSourceStepLog s2PrivateStep137Arena s2PrivateStep137Bank
    s2PrivateStep137Spec.fgWidth s2PrivateStep137Spec.vWidth s2PrivateStep137Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881]
    6 498 137 s2PrivateStep137Spec.need none s2PrivateStep137Spec.log=some s2PrivateStep137Plan := by
  change compileHmrSourceStepLog s2Step137EntryFBefore s2Step137FrontBank 202 82 ⟨201,200,83,82⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 6 498 137 38 none (.early s2Step137CompleteLog)=some (.early s2Step137CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 137<498)]
  rw [s2Step137Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
