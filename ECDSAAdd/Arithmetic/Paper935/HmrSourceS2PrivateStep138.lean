import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep136
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

private def s2Step138CompleteMoves : List (Wire × Wire) := [(841,712)]

private def s2Step138EarlyControlLog : HmrEarlyControlLog := ⟨[841, 837, 783, 814, 826],[849],[781],[790, 815, 867, 877, 879, 882],[883]⟩

private def s2Step138FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [849], [], [837]],[[781], [826], [783], [814]],[[], [], [], []]⟩,[778],[782],[790],[815],[867, 877, 879, 882, 883, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[867, 877, 879, 882, 883, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[790, 815, 867, 877]⟩

private def s2Step138CompleteLog : HmrEarlyStepLog := ⟨s2Step138FrontLog,s2Step138CompleteMoves,s2Step138EarlyControlLog⟩

private def s2Step138ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711],768⟩

private def s2Step138ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827],770⟩

private def s2Step138ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199],769⟩

private def s2Step138ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817],771⟩

private def s2Step138FrontOut : WindowBank := ⟨s2Step138ExitFOut,s2Step138ExitGOut,s2Step138ExitFvOut,s2Step138ExitGvOut⟩

private def s2Step138CompleteOut : WindowBank := s2Step138FrontOut.repacked s2Step138CompleteMoves

private def s2Step138EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<837) ∨ (838≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (884≤q ∧ q<885)),Finset.filter_subset _ _⟩

private def s2Step138EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (884≤q ∧ q<885)),Finset.filter_subset _ _⟩

private def s2Step138EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (884≤q ∧ q<885)),Finset.filter_subset _ _⟩

private def s2Step138EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step138EarlyControlPositiveArena,[849],s2Step138EarlyControlEqualityArena,[781],⟨⟨778,false⟩,[⟨⟨849,false⟩,781⟩]⟩⟩

private def s2Step138EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<885)),Finset.filter_subset _ _⟩

private def s2Step138EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<883) ∨ (884≤q ∧ q<885)),Finset.filter_subset _ _⟩

private def s2Step138EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<837) ∨ (838≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885)),Finset.filter_subset _ _⟩

private def s2Step138EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<837) ∨ (838≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885)),Finset.filter_subset _ _⟩

private def s2Step138EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<837) ∨ (838≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885)),Finset.filter_subset _ _⟩

private def s2Step138EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (884≤q ∧ q<885)),Finset.filter_subset _ _⟩

private def s2Step138EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,841⟩,⟨⟨774,false⟩,837⟩,⟨⟨775,false⟩,783⟩,⟨⟨776,false⟩,814⟩,⟨⟨777,false⟩,826⟩]⟩

private def s2Step138EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step138EarlyControlZeroArena,s2Step138EarlyControlZeroPlan,s2Step138EarlyControlClassPlan,s2Step138EarlyControlFlagArena,s2Step138EarlyControlFittedArena,s2Step138EarlyControlHistoryArena,s2Step138EarlyControlSigmaArena,s2Step138EarlyControlOutputArena,s2Step138EarlyControlLog⟩

private def s2Step138CounterWork : List Wire := [790, 815, 867, 877]

private theorem s2Step138Counter_bounded : s2Step138CounterWork.toFinset⊆arenaWires := by norm_num [s2Step138CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step138HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (884≤q ∧ q<885)),Finset.filter_subset _ _⟩

private def s2Step138CounterDuring : Arena := ⟨s2Step138HeadFvAfter.live∪s2Step138CounterWork.toFinset,Finset.union_subset s2Step138HeadFvAfter.bounded s2Step138Counter_bounded⟩

private def s2Step138EntryFFresh : List Wire := []

private def s2Step138EntryFvFresh : List Wire := []

private def s2Step138EntryGFresh : List Wire := [849]

private def s2Step138EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (884≤q ∧ q<885)),Finset.filter_subset _ _⟩

private def s2Step138EntryGvFresh : List Wire := [837]

private def s2Step138ExitFExtra : List Wire := [712, 826]

private def s2Step138ExitFvExtra : List Wire := [814]

private def s2Step138ExitGExtra : List Wire := [849, 781]

private def s2Step138ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<712) ∨ (713≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (884≤q ∧ q<885)),Finset.filter_subset _ _⟩

private def s2Step138ExitGvExtra : List Wire := [837, 783]

private def s2Step138Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (884≤q ∧ q<885)),Finset.filter_subset _ _⟩

private def s2Step138Add0Work : List Wire := [867, 877, 879, 882, 883, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step138Add0_bounded : s2Step138Add0Work.toFinset⊆arenaWires := by
  have h : s2Step138Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step138Add0During : Arena := ⟨s2Step138Add0Arena.live∪s2Step138Add0Work.toFinset,Finset.union_subset s2Step138Add0Arena.bounded s2Step138Add0_bounded⟩

private def s2Step138Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (884≤q ∧ q<885)),Finset.filter_subset _ _⟩

private def s2Step138Add1Work : List Wire := [867, 877, 879, 882, 883, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step138Add1_bounded : s2Step138Add1Work.toFinset⊆arenaWires := by
  have h : s2Step138Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step138Add1During : Arena := ⟨s2Step138Add1Arena.live∪s2Step138Add1Work.toFinset,Finset.union_subset s2Step138Add1Arena.bounded s2Step138Add1_bounded⟩

private def s2Step138F4FlagArena : Arena := ⟨s2Step138HeadFvAfter.live∪{790},Finset.union_subset s2Step138HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step138F4Plan : HmrHybridF4Plan := ⟨s2Step138F4FlagArena,[790],s2Step138Add0Arena,[815],s2Step138Add0During,s2Step138Add0Work,s2Step138Add1During,s2Step138Add1Work⟩

private def s2Step138HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 826],768⟩

private def s2Step138HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 814],770⟩

private def s2Step138HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 849, 781],769⟩

private def s2Step138HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 837, 783],771⟩

private def s2Step138FrontHead : WindowBank := ⟨s2Step138HeadFOut,s2Step138HeadGOut,s2Step138HeadFvOut,s2Step138HeadGvOut⟩

private def s2Step138EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712],768⟩

private def s2Step138EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827],770⟩

private def s2Step138EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 849],769⟩

private def s2Step138EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 837],771⟩

private def s2Step138FrontPair : WindowBank := ⟨s2Step138EntryFOut,s2Step138EntryGOut,s2Step138EntryFvOut,s2Step138EntryGvOut⟩

private def s2Step138FrontSigmaArena : Arena := ⟨s2Step138EntryGvAfter.live∪{778},Finset.union_subset s2Step138EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step138HeadFFresh : List Wire := [826]

private def s2Step138HeadFvFresh : List Wire := [814]

private def s2Step138HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (884≤q ∧ q<885)),Finset.filter_subset _ _⟩

private def s2Step138HeadGFresh : List Wire := [781]

private def s2Step138HeadGvFresh : List Wire := [783]

private def s2Step138FrontPlan : HmrSourceFront := ⟨s2Step138EntryGvAfter,s2Step138FrontPair,(growRow 768 s2Step138EntryFFresh ++ (growRow 769 s2Step138EntryGFresh ++ (growRow 770 s2Step138EntryFvFresh ++ (growRow 771 s2Step138EntryGvFresh ++ [])))),s2Step138FrontSigmaArena,[778],s2Step138HeadGBefore,[782],
  s2Step138HeadFvAfter,s2Step138FrontHead,(growRow 769 s2Step138HeadGFresh ++ (growRow 768 s2Step138HeadFFresh ++ (growRow 771 s2Step138HeadGvFresh ++ (growRow 770 s2Step138HeadFvFresh ++ [])))),s2Step138F4Plan,s2Step138CounterDuring,s2Step138CounterWork,s2Step138ExitGvAfter,s2Step138FrontOut,(shrinkRow 769 s2Step138ExitGExtra ++ (shrinkRow 768 s2Step138ExitFExtra ++ (shrinkRow 770 s2Step138ExitFvExtra ++ (shrinkRow 771 s2Step138ExitGvExtra ++ []))))⟩

private def s2Step138CompletePlan : HmrEarlyStepPlan := ⟨s2Step138FrontPlan,s2Step138EarlyControlArena,s2Step138EarlyControlPlan,s2Step138CompleteMoves⟩

private theorem s2Step138Complete_apart : List.Disjoint (s2Step138CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [778, 782, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884] := by
  have nd : ((s2Step138CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[778, 782, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step138Complete_owned : (s2Step138CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step138EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step138EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<837) ∨ (838≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (884≤q ∧ q<885)) rfl
  decide +kernel

private def s2Step138CompleteMoveArena : Arena := ⟨s2Step138ExitGvAfter.live∪{712},Finset.union_subset s2Step138ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step138Complete_repack : s2Step138ExitGvAfter.checkRepack s2Step138CompleteMoves=some s2Step138EarlyControlArena := by
  have owned : 841∈s2Step138ExitGvAfter.live := by norm_num [s2Step138ExitGvAfter,arenaWires]
  have reserve : s2Step138ExitGvAfter.reserve {712}=some s2Step138CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step138ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step138CompleteMoveArena.retireSet {841}=s2Step138EarlyControlArena := by
    unfold Arena.retireSet s2Step138EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step138CompleteMoveArena,s2Step138ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step138CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step138CompleteMoveArena.retireSet {841}).checkRepack []=some s2Step138EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step138EarlyControl_branchOwned : ([782] : List Wire).toFinset⊆s2Step138EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step138EarlyControlSigmaArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<837) ∨ (838≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885)) rfl
  decide +kernel

private theorem s2Step138EarlyControl_branch : compileHmrBranchRetirement s2Step138EarlyControlSigmaArena 782=some s2Step138EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step138EarlyControl_branchOwned
  · ext q
    simp [s2Step138EarlyControlOutputArena,s2Step138EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step138EarlyControl_classEqualityBorrow : s2Step138EarlyControlPositiveArena.checkBorrow (([778, 849] : List Wire).length-1) s2Step138EarlyControlLog.classWork=some s2Step138EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step138EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step138EarlyControlPositiveArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (884≤q ∧ q<885)) rfl
      decide +kernel
    · ext q
      simp [s2Step138EarlyControlEqualityArena,s2Step138EarlyControlPositiveArena,s2Step138EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step138EarlyControl_classEqualityOwned : ([778, 849] : List Wire).toFinset⊆s2Step138EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step138EarlyControlPositiveArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (884≤q ∧ q<885)) rfl
  decide +kernel

private theorem s2Step138EarlyControl_classEquality : compileHmrEqualityLog s2Step138EarlyControlPositiveArena [778, 849] 0 s2Step138EarlyControlLog.classWork=some (s2Step138EarlyControlEqualityArena,s2Step138EarlyControlLog.classWork,s2Step138EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step138EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step138EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step138EarlyControl_classOwned : ([777, 826, 778] : List Wire).toFinset⊆s2Step138EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step138EarlyControlZeroArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (884≤q ∧ q<885)) rfl
  decide +kernel

private theorem s2Step138EarlyControl_positiveBorrow : s2Step138EarlyControlZeroArena.checkBorrow (1) s2Step138EarlyControlLog.positiveWork=some s2Step138EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step138EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step138EarlyControlZeroArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (884≤q ∧ q<885)) rfl
      decide +kernel
    · ext q
      simp [s2Step138EarlyControlPositiveArena,s2Step138EarlyControlZeroArena,s2Step138EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step138EarlyControl_class : compileHmrSourceClassLog s2Step138EarlyControlZeroArena false 777 s2Step138EarlyControlZeroPlan.top 0 778 s2Step138EarlyControlLog.positiveWork s2Step138EarlyControlLog.classWork=some s2Step138EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step138EarlyControlClassPlan s2Step138EarlyControlZeroArena false 777 s2Step138EarlyControlZeroPlan.top 0 778
  constructor
  · decide +kernel
  · exact s2Step138EarlyControl_classOwned
  · exact s2Step138EarlyControl_positiveBorrow
  · exact s2Step138EarlyControl_classEquality

private theorem s2Step138EarlyControl_entryRecordOwned : ([782, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884] : List Wire).toFinset⊆s2Step138EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step138EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<837) ∨ (838≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (884≤q ∧ q<885)) rfl
  decide +kernel

private theorem s2Step138EarlyControl_entrySigmaOwned : ([778, 254] : List Wire).toFinset⊆s2Step138EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step138EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<837) ∨ (838≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (884≤q ∧ q<885)) rfl
  decide +kernel

private theorem s2Step138EarlyControl_fitBorrow : s2Step138EarlyControlFlagArena.checkBorrow ((39-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884] : List Wire).length)) s2Step138EarlyControlLog.recordFresh=some s2Step138EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step138EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step138EarlyControlFlagArena (fun q => (0≤q ∧ q<883) ∨ (884≤q ∧ q<885)) rfl
      decide +kernel
    · ext q
      simp [s2Step138EarlyControlFittedArena,s2Step138EarlyControlFlagArena,s2Step138EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step138EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884] : List Wire).toFinset⊆s2Step138EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step138EarlyControlFlagArena (fun q => (0≤q ∧ q<883) ∨ (884≤q ∧ q<885)) rfl
  decide +kernel

private theorem s2Step138EarlyControl_fit : compileHmrRecordGrowLog s2Step138EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884] 39 s2Step138EarlyControlLog.recordFresh=some s2Step138EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step138EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step138EarlyControl_fitBorrow

private theorem s2Step138EarlyControl_flagsBorrow : s2Step138EarlyControlEqualityArena.checkBorrow (6) s2Step138EarlyControlLog.flagWork=some s2Step138EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step138EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step138EarlyControlEqualityArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (884≤q ∧ q<885)) rfl
      decide +kernel
    · ext q
      simp [s2Step138EarlyControlFlagArena,s2Step138EarlyControlEqualityArena,s2Step138EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step138EarlyControl_flagsOwned : ([781, 253, 252, 251] : List Wire).toFinset⊆s2Step138EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step138EarlyControlEqualityArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (884≤q ∧ q<885)) rfl
  decide +kernel

private theorem s2Step138EarlyControl_flags : compileHmrFlagsLog s2Step138EarlyControlClassPlan.equalityArena s2Step138EarlyControlClassPlan.equality.top 253 252 251 s2Step138EarlyControlLog.flagWork=some s2Step138EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step138EarlyControl_flagsOwned⟩
  · exact s2Step138EarlyControl_flagsBorrow

private theorem s2Step138EarlyControl_historyBorrow : s2Step138EarlyControlArena.checkBorrow ((39-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884] : List Wire).length)) s2Step138EarlyControlLog.recordFresh=some s2Step138EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step138EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step138EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<837) ∨ (838≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (884≤q ∧ q<885)) rfl
      decide +kernel
    · ext q
      simp [s2Step138EarlyControlHistoryArena,s2Step138EarlyControlArena,s2Step138EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step138EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884] : List Wire).toFinset⊆s2Step138EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step138EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<837) ∨ (838≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (884≤q ∧ q<885)) rfl
  decide +kernel

private theorem s2Step138EarlyControl_history : compileHmrRecordGrowLog s2Step138EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884] 39 s2Step138EarlyControlLog.recordFresh=some s2Step138EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step138EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step138EarlyControl_historyBorrow

private theorem s2Step138EarlyControl_sigmaOwned : ([254, 778] : List Wire).toFinset⊆s2Step138EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step138EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<837) ∨ (838≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885)) rfl
  decide +kernel

private theorem s2Step138EarlyControl_sigmaReleaseOwned : ([778] : List Wire).toFinset⊆s2Step138EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step138EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<837) ∨ (838≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885)) rfl
  decide +kernel

private theorem s2Step138EarlyControl_sigmaRelease : s2Step138EarlyControlHistoryArena.release {778} (fun _ => false)=some s2Step138EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step138EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step138EarlyControlSigmaArena,s2Step138EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step138EarlyControl_sigma : compileHmrSigmaDropLog s2Step138EarlyControlHistoryArena false 0 0 254 778 []=some s2Step138EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step138EarlyControl_sigmaOwned⟩
  · exact s2Step138EarlyControl_sigmaRelease

private theorem s2Step138EarlyControl_zeroBorrow : s2Step138EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step138EarlyControlLog.zeroWork=some s2Step138EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step138EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step138EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<837) ∨ (838≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (884≤q ∧ q<885)) rfl
      decide +kernel
    · ext q
      simp [s2Step138EarlyControlZeroArena,s2Step138EarlyControlArena,s2Step138EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step138EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step138EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step138EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<837) ∨ (838≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (884≤q ∧ q<885)) rfl
  decide +kernel

private theorem s2Step138EarlyControl_zero : compileHmrEqualityLog s2Step138EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step138EarlyControlLog.zeroWork=some (s2Step138EarlyControlZeroArena,s2Step138EarlyControlLog.zeroWork,s2Step138EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step138EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step138EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step138EarlyControl_logged : s2Step138EarlyControlPlan.Logged s2Step138EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884] 777 778 254 253 252 251 782 39 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step138EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step138EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step138EarlyControl_zero
  · exact s2Step138EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step138EarlyControl_flags
  · exact s2Step138EarlyControl_fit
  · exact s2Step138EarlyControl_history
  · exact s2Step138EarlyControl_sigma
  · exact s2Step138EarlyControl_branch

private theorem s2Step138EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step138EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884] 777 778 254 253 252 251 782 39 s2Step138EarlyControlLog=some s2Step138EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step138EarlyControlPlan s2Step138EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884] 777 778 254 253 252 251 782 39 s2Step138EarlyControl_logged

private def s2Step138EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (884≤q ∧ q<885)),Finset.filter_subset _ _⟩

private def s2Step138EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712],768⟩

private def s2Step138EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827],770⟩

private def s2Step138EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199],769⟩

private def s2Step138EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817],771⟩

private def s2Step138FrontBank : WindowBank := ⟨s2Step138EntryFRow,s2Step138EntryGRow,s2Step138EntryFvRow,s2Step138EntryGvRow⟩

private def s2Step138Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 826, 768]

private def s2Step138Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 849, 781, 769]

private def s2Step138Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 814, 770]

private def s2Step138Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 837, 783, 771]

private theorem s2Step138Counter_apart : Disjoint s2Step138HeadFvAfter.live s2Step138CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step138HeadFvAfter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (884≤q ∧ q<885)) rfl
  decide +kernel

private theorem s2Step138Counter_borrowed : s2Step138HeadFvAfter.checkBorrow 4 s2Step138CounterWork=some s2Step138CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step138HeadFvAfter s2Step138CounterDuring s2Step138CounterWork.toFinset s2Step138Counter_bounded s2Step138Counter_apart rfl

private theorem s2Step138Counter_owned : (778::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step138HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step138HeadFvAfter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (884≤q ∧ q<885)) rfl
  decide +kernel

private theorem s2Step138Counter_checked : compileHmrCounterStepLog s2Step138HeadFvAfter true 778 [772, 773, 774, 775, 776, 777] s2Step138CounterWork=some s2Step138CounterDuring := by
  have owned : ∀q∈778::[772, 773, 774, 775, 776, 777],q∈s2Step138HeadFvAfter.live := fun q hq => s2Step138Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step138Counter_borrowed

private def s2Step138EntryFAfter : Arena := s2Step138EntryFBefore

private theorem s2Step138EntryBank_incomingDistinct : ([s2Step138EntryFRow,s2Step138EntryGRow,s2Step138EntryFvRow,s2Step138EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step138EntryF_Incoming : rowsOwned s2Step138EntryFBefore [s2Step138EntryFRow,s2Step138EntryGRow,s2Step138EntryFvRow,s2Step138EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step138EntryFRow,s2Step138EntryGRow,s2Step138EntryFvRow,s2Step138EntryGvRow] 0 s2Step138EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step138EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (884≤q ∧ q<885)) rfl
    decide +kernel

private theorem s2Step138EntryBank_outgoingOwned : rowsOwned s2Step138EntryGvAfter [s2Step138EntryFOut,s2Step138EntryGOut,s2Step138EntryFvOut,s2Step138EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step138EntryGvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (884≤q ∧ q<885)) rfl
    decide +kernel

private theorem s2Step138EntryF_Outgoing : rowsOwned s2Step138EntryGvAfter [s2Step138EntryFOut,s2Step138EntryGOut,s2Step138EntryFvOut,s2Step138EntryGvOut] :=
  hmrRows_owned_drop s2Step138EntryGvAfter [s2Step138EntryFOut,s2Step138EntryGOut,s2Step138EntryFvOut,s2Step138EntryGvOut] 0 s2Step138EntryBank_outgoingOwned

private theorem s2Step138EntryF_distinct : (s2Step138EntryFRow.sign::s2Step138EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step138EntryF_owned : (s2Step138EntryFRow.sign::s2Step138EntryFRow.payload).toFinset⊆s2Step138EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step138EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (884≤q ∧ q<885)) rfl
  decide +kernel

private theorem s2Step138EntryF_reserved : s2Step138EntryFBefore.reserve s2Step138EntryFFresh.toFinset=some s2Step138EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step138EntryFFresh,arenaWires]
  · norm_num [s2Step138EntryFBefore,s2Step138EntryFFresh,arenaWires]
  · simp only [s2Step138EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step138EntryF_checked : planRowResizeLog s2Step138EntryFBefore s2Step138EntryFRow 201 s2Step138EntryFFresh=
    some (s2Step138EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712],768⟩,growRow 768 s2Step138EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step138EntryFBefore s2Step138EntryFAfter s2Step138EntryFRow 201 s2Step138EntryFFresh
    s2Step138EntryF_distinct s2Step138EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step138EntryF_reserved
  have rowEq : WindowRow.mk (s2Step138EntryFRow.payload++s2Step138EntryFFresh) s2Step138EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step138EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<837) ∨ (838≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (884≤q ∧ q<885)),Finset.filter_subset _ _⟩

private def s2Step138EntryFvAfter : Arena := s2Step138EntryGAfter

private def s2Step138EntryFvBefore : Arena := s2Step138EntryGAfter

private theorem s2Step138EntryFv_Incoming : rowsOwned s2Step138EntryFvBefore [s2Step138EntryFvRow,s2Step138EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step138EntryFRow,s2Step138EntryGRow,s2Step138EntryFvRow,s2Step138EntryGvRow] 2 s2Step138EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step138EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<837) ∨ (838≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (884≤q ∧ q<885)) rfl
    decide +kernel

private theorem s2Step138EntryFv_Outgoing : rowsOwned s2Step138EntryGvAfter [s2Step138EntryFvOut,s2Step138EntryGvOut] :=
  hmrRows_owned_drop s2Step138EntryGvAfter [s2Step138EntryFOut,s2Step138EntryGOut,s2Step138EntryFvOut,s2Step138EntryGvOut] 2 s2Step138EntryBank_outgoingOwned

private theorem s2Step138EntryFv_distinct : (s2Step138EntryFvRow.sign::s2Step138EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step138EntryFv_owned : (s2Step138EntryFvRow.sign::s2Step138EntryFvRow.payload).toFinset⊆s2Step138EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step138EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<837) ∨ (838≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (884≤q ∧ q<885)) rfl
  decide +kernel

private theorem s2Step138EntryFv_reserved : s2Step138EntryFvBefore.reserve s2Step138EntryFvFresh.toFinset=some s2Step138EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step138EntryFvFresh,arenaWires]
  · norm_num [s2Step138EntryFvBefore,s2Step138EntryGAfter,s2Step138EntryFvFresh,arenaWires]
  · simp only [s2Step138EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step138EntryFv_checked : planRowResizeLog s2Step138EntryFvBefore s2Step138EntryFvRow 83 s2Step138EntryFvFresh=
    some (s2Step138EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827],770⟩,growRow 770 s2Step138EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step138EntryFvBefore s2Step138EntryFvAfter s2Step138EntryFvRow 83 s2Step138EntryFvFresh
    s2Step138EntryFv_distinct s2Step138EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step138EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step138EntryFvRow.payload++s2Step138EntryFvFresh) s2Step138EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step138EntryGBefore : Arena := s2Step138EntryFBefore

private theorem s2Step138EntryG_Incoming : rowsOwned s2Step138EntryGBefore [s2Step138EntryGRow,s2Step138EntryFvRow,s2Step138EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step138EntryFRow,s2Step138EntryGRow,s2Step138EntryFvRow,s2Step138EntryGvRow] 1 s2Step138EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step138EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (884≤q ∧ q<885)) rfl
    decide +kernel

private theorem s2Step138EntryG_Outgoing : rowsOwned s2Step138EntryGvAfter [s2Step138EntryGOut,s2Step138EntryFvOut,s2Step138EntryGvOut] :=
  hmrRows_owned_drop s2Step138EntryGvAfter [s2Step138EntryFOut,s2Step138EntryGOut,s2Step138EntryFvOut,s2Step138EntryGvOut] 1 s2Step138EntryBank_outgoingOwned

private theorem s2Step138EntryG_distinct : (s2Step138EntryGRow.sign::s2Step138EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step138EntryG_owned : (s2Step138EntryGRow.sign::s2Step138EntryGRow.payload).toFinset⊆s2Step138EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step138EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (884≤q ∧ q<885)) rfl
  decide +kernel

private theorem s2Step138EntryG_reserved : s2Step138EntryGBefore.reserve s2Step138EntryGFresh.toFinset=some s2Step138EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step138EntryGFresh,arenaWires]
  · norm_num [s2Step138EntryGBefore,s2Step138EntryFBefore,s2Step138EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step138EntryGAfter,s2Step138EntryGBefore,s2Step138EntryFBefore,s2Step138EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step138EntryG_checked : planRowResizeLog s2Step138EntryGBefore s2Step138EntryGRow 201 s2Step138EntryGFresh=
    some (s2Step138EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 849],769⟩,growRow 769 s2Step138EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step138EntryGBefore s2Step138EntryGAfter s2Step138EntryGRow 201 s2Step138EntryGFresh
    s2Step138EntryG_distinct s2Step138EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step138EntryG_reserved
  have rowEq : WindowRow.mk (s2Step138EntryGRow.payload++s2Step138EntryGFresh) s2Step138EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 849],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step138EntryGvBefore : Arena := s2Step138EntryGAfter

private theorem s2Step138EntryGv_Incoming : rowsOwned s2Step138EntryGvBefore [s2Step138EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step138EntryFRow,s2Step138EntryGRow,s2Step138EntryFvRow,s2Step138EntryGvRow] 3 s2Step138EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step138EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<837) ∨ (838≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (884≤q ∧ q<885)) rfl
    decide +kernel

private theorem s2Step138EntryGv_Outgoing : rowsOwned s2Step138EntryGvAfter [s2Step138EntryGvOut] :=
  hmrRows_owned_drop s2Step138EntryGvAfter [s2Step138EntryFOut,s2Step138EntryGOut,s2Step138EntryFvOut,s2Step138EntryGvOut] 3 s2Step138EntryBank_outgoingOwned

private theorem s2Step138EntryGv_distinct : (s2Step138EntryGvRow.sign::s2Step138EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step138EntryGv_owned : (s2Step138EntryGvRow.sign::s2Step138EntryGvRow.payload).toFinset⊆s2Step138EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step138EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<837) ∨ (838≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (884≤q ∧ q<885)) rfl
  decide +kernel

private theorem s2Step138EntryGv_reserved : s2Step138EntryGvBefore.reserve s2Step138EntryGvFresh.toFinset=some s2Step138EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step138EntryGvFresh,arenaWires]
  · norm_num [s2Step138EntryGvBefore,s2Step138EntryGAfter,s2Step138EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step138EntryGvAfter,s2Step138EntryGvBefore,s2Step138EntryGAfter,s2Step138EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step138EntryGv_checked : planRowResizeLog s2Step138EntryGvBefore s2Step138EntryGvRow 83 s2Step138EntryGvFresh=
    some (s2Step138EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 837],771⟩,growRow 771 s2Step138EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step138EntryGvBefore s2Step138EntryGvAfter s2Step138EntryGvRow 83 s2Step138EntryGvFresh
    s2Step138EntryGv_distinct s2Step138EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step138EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step138EntryGvRow.payload++s2Step138EntryGvFresh) s2Step138EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 837],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step138EntryBank_rows : planWindowRowsLog s2Step138EntryFBefore [(s2Step138EntryFRow,201),(s2Step138EntryGRow,201),(s2Step138EntryFvRow,83),(s2Step138EntryGvRow,83)] [s2Step138EntryFFresh,s2Step138EntryGFresh,s2Step138EntryFvFresh,s2Step138EntryGvFresh]=
    some (s2Step138EntryGvAfter,[s2Step138EntryFOut,s2Step138EntryGOut,s2Step138EntryFvOut,s2Step138EntryGvOut],(growRow 768 s2Step138EntryFFresh ++ (growRow 769 s2Step138EntryGFresh ++ (growRow 770 s2Step138EntryFvFresh ++ (growRow 771 s2Step138EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step138EntryGvAfter [] []=some (s2Step138EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step138EntryGvBefore s2Step138EntryGvAfter s2Step138EntryGvAfter
    s2Step138EntryGvRow s2Step138EntryGvOut 83 s2Step138EntryGvFresh [] [] []
    (growRow 771 s2Step138EntryGvFresh) ([]) s2Step138EntryGv_Incoming s2Step138EntryGv_checked h4 s2Step138EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step138EntryFvBefore s2Step138EntryFvAfter s2Step138EntryGvAfter
    s2Step138EntryFvRow s2Step138EntryFvOut 83 s2Step138EntryFvFresh [(s2Step138EntryGvRow,83)] [s2Step138EntryGvFresh] [s2Step138EntryGvOut]
    (growRow 770 s2Step138EntryFvFresh) ((growRow 771 s2Step138EntryGvFresh ++ [])) s2Step138EntryFv_Incoming s2Step138EntryFv_checked h3 s2Step138EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step138EntryGBefore s2Step138EntryGAfter s2Step138EntryGvAfter
    s2Step138EntryGRow s2Step138EntryGOut 201 s2Step138EntryGFresh [(s2Step138EntryFvRow,83),(s2Step138EntryGvRow,83)] [s2Step138EntryFvFresh,s2Step138EntryGvFresh] [s2Step138EntryFvOut,s2Step138EntryGvOut]
    (growRow 769 s2Step138EntryGFresh) ((growRow 770 s2Step138EntryFvFresh ++ (growRow 771 s2Step138EntryGvFresh ++ []))) s2Step138EntryG_Incoming s2Step138EntryG_checked h2 s2Step138EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step138EntryFBefore s2Step138EntryFAfter s2Step138EntryGvAfter
    s2Step138EntryFRow s2Step138EntryFOut 201 s2Step138EntryFFresh [(s2Step138EntryGRow,201),(s2Step138EntryFvRow,83),(s2Step138EntryGvRow,83)] [s2Step138EntryGFresh,s2Step138EntryFvFresh,s2Step138EntryGvFresh] [s2Step138EntryGOut,s2Step138EntryFvOut,s2Step138EntryGvOut]
    (growRow 768 s2Step138EntryFFresh) ((growRow 769 s2Step138EntryGFresh ++ (growRow 770 s2Step138EntryFvFresh ++ (growRow 771 s2Step138EntryGvFresh ++ [])))) s2Step138EntryF_Incoming s2Step138EntryF_checked h1 s2Step138EntryF_Outgoing
  exact h0

private theorem s2Step138EntryBank_checked : compileHmrBankResizeLog .entry s2Step138EntryFBefore ⟨s2Step138EntryFRow,s2Step138EntryGRow,s2Step138EntryFvRow,s2Step138EntryGvRow⟩ ⟨201,201,83,83⟩ [s2Step138EntryFFresh,s2Step138EntryGFresh,s2Step138EntryFvFresh,s2Step138EntryGvFresh]=
    some (s2Step138EntryGvAfter,⟨s2Step138EntryFOut,s2Step138EntryGOut,s2Step138EntryFvOut,s2Step138EntryGvOut⟩,(growRow 768 s2Step138EntryFFresh ++ (growRow 769 s2Step138EntryGFresh ++ (growRow 770 s2Step138EntryFvFresh ++ (growRow 771 s2Step138EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step138EntryBank_rows]
  rfl

private def s2Step138ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<712) ∨ (713≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (884≤q ∧ q<885)),Finset.filter_subset _ _⟩

private def s2Step138ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (884≤q ∧ q<885)),Finset.filter_subset _ _⟩

private def s2Step138ExitFBefore : Arena := s2Step138ExitGAfter

private def s2Step138ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 826],768⟩

private def s2Step138ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 814],770⟩

private def s2Step138ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 849, 781],769⟩

private def s2Step138ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 837, 783],771⟩

private theorem s2Step138ExitBank_incomingDistinct : ([s2Step138ExitGRow,s2Step138ExitFRow,s2Step138ExitFvRow,s2Step138ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step138ExitF_Incoming : rowsOwned s2Step138ExitFBefore [s2Step138ExitFRow,s2Step138ExitFvRow,s2Step138ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step138ExitGRow,s2Step138ExitFRow,s2Step138ExitFvRow,s2Step138ExitGvRow] 1 s2Step138ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step138ExitFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (884≤q ∧ q<885)) rfl
    decide +kernel

private theorem s2Step138ExitBank_outgoingOwned : rowsOwned s2Step138ExitGvAfter [s2Step138ExitGOut,s2Step138ExitFOut,s2Step138ExitFvOut,s2Step138ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step138ExitGvAfter (fun q => (0≤q ∧ q<712) ∨ (713≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (884≤q ∧ q<885)) rfl
    decide +kernel

private theorem s2Step138ExitF_Outgoing : rowsOwned s2Step138ExitGvAfter [s2Step138ExitFOut,s2Step138ExitFvOut,s2Step138ExitGvOut] :=
  hmrRows_owned_drop s2Step138ExitGvAfter [s2Step138ExitGOut,s2Step138ExitFOut,s2Step138ExitFvOut,s2Step138ExitGvOut] 1 s2Step138ExitBank_outgoingOwned

private theorem s2Step138ExitF_distinct : (s2Step138ExitFRow.sign::s2Step138ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step138ExitF_owned : (s2Step138ExitFRow.sign::s2Step138ExitFRow.payload).toFinset⊆s2Step138ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step138ExitFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (884≤q ∧ q<885)) rfl
  decide +kernel

private theorem s2Step138ExitF_retired : s2Step138ExitFBefore.retireSet s2Step138ExitFExtra.toFinset=s2Step138ExitFAfter := by
  unfold Arena.retireSet s2Step138ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step138ExitFBefore,s2Step138ExitGAfter,s2Step138ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step138ExitF_checked : planRowResizeLog s2Step138ExitFBefore s2Step138ExitFRow 200 []=
    some (s2Step138ExitFAfter,s2Step138ExitFOut,shrinkRow 768 s2Step138ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step138ExitFBefore s2Step138ExitFRow 200 s2Step138ExitF_distinct s2Step138ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step138ExitFRow.payload.take 200) s2Step138ExitFRow.sign=s2Step138ExitFOut := by decide +kernel
  have hi : s2Step138ExitFRow.payload.drop 200=s2Step138ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step138ExitF_retired] at result
  exact result

private def s2Step138ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<712) ∨ (713≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (884≤q ∧ q<885)),Finset.filter_subset _ _⟩

private def s2Step138ExitFvBefore : Arena := s2Step138ExitFAfter

private theorem s2Step138ExitFv_Incoming : rowsOwned s2Step138ExitFvBefore [s2Step138ExitFvRow,s2Step138ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step138ExitGRow,s2Step138ExitFRow,s2Step138ExitFvRow,s2Step138ExitGvRow] 2 s2Step138ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step138ExitFvBefore (fun q => (0≤q ∧ q<712) ∨ (713≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (884≤q ∧ q<885)) rfl
    decide +kernel

private theorem s2Step138ExitFv_Outgoing : rowsOwned s2Step138ExitGvAfter [s2Step138ExitFvOut,s2Step138ExitGvOut] :=
  hmrRows_owned_drop s2Step138ExitGvAfter [s2Step138ExitGOut,s2Step138ExitFOut,s2Step138ExitFvOut,s2Step138ExitGvOut] 2 s2Step138ExitBank_outgoingOwned

private theorem s2Step138ExitFv_distinct : (s2Step138ExitFvRow.sign::s2Step138ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step138ExitFv_owned : (s2Step138ExitFvRow.sign::s2Step138ExitFvRow.payload).toFinset⊆s2Step138ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step138ExitFvBefore (fun q => (0≤q ∧ q<712) ∨ (713≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (884≤q ∧ q<885)) rfl
  decide +kernel

private theorem s2Step138ExitFv_retired : s2Step138ExitFvBefore.retireSet s2Step138ExitFvExtra.toFinset=s2Step138ExitFvAfter := by
  unfold Arena.retireSet s2Step138ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step138ExitFvBefore,s2Step138ExitFAfter,s2Step138ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step138ExitFv_checked : planRowResizeLog s2Step138ExitFvBefore s2Step138ExitFvRow 83 []=
    some (s2Step138ExitFvAfter,s2Step138ExitFvOut,shrinkRow 770 s2Step138ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step138ExitFvBefore s2Step138ExitFvRow 83 s2Step138ExitFv_distinct s2Step138ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step138ExitFvRow.payload.take 83) s2Step138ExitFvRow.sign=s2Step138ExitFvOut := by decide +kernel
  have hi : s2Step138ExitFvRow.payload.drop 83=s2Step138ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step138ExitFv_retired] at result
  exact result

private def s2Step138ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (884≤q ∧ q<885)),Finset.filter_subset _ _⟩

private theorem s2Step138ExitG_Incoming : rowsOwned s2Step138ExitGBefore [s2Step138ExitGRow,s2Step138ExitFRow,s2Step138ExitFvRow,s2Step138ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step138ExitGRow,s2Step138ExitFRow,s2Step138ExitFvRow,s2Step138ExitGvRow] 0 s2Step138ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step138ExitGBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (884≤q ∧ q<885)) rfl
    decide +kernel

private theorem s2Step138ExitG_Outgoing : rowsOwned s2Step138ExitGvAfter [s2Step138ExitGOut,s2Step138ExitFOut,s2Step138ExitFvOut,s2Step138ExitGvOut] :=
  hmrRows_owned_drop s2Step138ExitGvAfter [s2Step138ExitGOut,s2Step138ExitFOut,s2Step138ExitFvOut,s2Step138ExitGvOut] 0 s2Step138ExitBank_outgoingOwned

private theorem s2Step138ExitG_distinct : (s2Step138ExitGRow.sign::s2Step138ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step138ExitG_owned : (s2Step138ExitGRow.sign::s2Step138ExitGRow.payload).toFinset⊆s2Step138ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step138ExitGBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (884≤q ∧ q<885)) rfl
  decide +kernel

private theorem s2Step138ExitG_retired : s2Step138ExitGBefore.retireSet s2Step138ExitGExtra.toFinset=s2Step138ExitGAfter := by
  unfold Arena.retireSet s2Step138ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step138ExitGBefore,s2Step138ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step138ExitG_checked : planRowResizeLog s2Step138ExitGBefore s2Step138ExitGRow 200 []=
    some (s2Step138ExitGAfter,s2Step138ExitGOut,shrinkRow 769 s2Step138ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step138ExitGBefore s2Step138ExitGRow 200 s2Step138ExitG_distinct s2Step138ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step138ExitGRow.payload.take 200) s2Step138ExitGRow.sign=s2Step138ExitGOut := by decide +kernel
  have hi : s2Step138ExitGRow.payload.drop 200=s2Step138ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step138ExitG_retired] at result
  exact result

private def s2Step138ExitGvBefore : Arena := s2Step138ExitFvAfter

private theorem s2Step138ExitGv_Incoming : rowsOwned s2Step138ExitGvBefore [s2Step138ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step138ExitGRow,s2Step138ExitFRow,s2Step138ExitFvRow,s2Step138ExitGvRow] 3 s2Step138ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step138ExitGvBefore (fun q => (0≤q ∧ q<712) ∨ (713≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (884≤q ∧ q<885)) rfl
    decide +kernel

private theorem s2Step138ExitGv_Outgoing : rowsOwned s2Step138ExitGvAfter [s2Step138ExitGvOut] :=
  hmrRows_owned_drop s2Step138ExitGvAfter [s2Step138ExitGOut,s2Step138ExitFOut,s2Step138ExitFvOut,s2Step138ExitGvOut] 3 s2Step138ExitBank_outgoingOwned

private theorem s2Step138ExitGv_distinct : (s2Step138ExitGvRow.sign::s2Step138ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step138ExitGv_owned : (s2Step138ExitGvRow.sign::s2Step138ExitGvRow.payload).toFinset⊆s2Step138ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step138ExitGvBefore (fun q => (0≤q ∧ q<712) ∨ (713≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (884≤q ∧ q<885)) rfl
  decide +kernel

private theorem s2Step138ExitGv_retired : s2Step138ExitGvBefore.retireSet s2Step138ExitGvExtra.toFinset=s2Step138ExitGvAfter := by
  unfold Arena.retireSet s2Step138ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step138ExitGvBefore,s2Step138ExitFvAfter,s2Step138ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step138ExitGv_checked : planRowResizeLog s2Step138ExitGvBefore s2Step138ExitGvRow 82 []=
    some (s2Step138ExitGvAfter,s2Step138ExitGvOut,shrinkRow 771 s2Step138ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step138ExitGvBefore s2Step138ExitGvRow 82 s2Step138ExitGv_distinct s2Step138ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step138ExitGvRow.payload.take 82) s2Step138ExitGvRow.sign=s2Step138ExitGvOut := by decide +kernel
  have hi : s2Step138ExitGvRow.payload.drop 82=s2Step138ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step138ExitGv_retired] at result
  exact result

private theorem s2Step138ExitBank_rows : planWindowRowsLog s2Step138ExitGBefore [(s2Step138ExitGRow,200),(s2Step138ExitFRow,200),(s2Step138ExitFvRow,83),(s2Step138ExitGvRow,82)] [[],[],[],[]]=
    some (s2Step138ExitGvAfter,[s2Step138ExitGOut,s2Step138ExitFOut,s2Step138ExitFvOut,s2Step138ExitGvOut],(shrinkRow 769 s2Step138ExitGExtra ++ (shrinkRow 768 s2Step138ExitFExtra ++ (shrinkRow 770 s2Step138ExitFvExtra ++ (shrinkRow 771 s2Step138ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step138ExitGvAfter [] []=some (s2Step138ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step138ExitGvBefore s2Step138ExitGvAfter s2Step138ExitGvAfter
    s2Step138ExitGvRow s2Step138ExitGvOut 82 [] [] [] []
    (shrinkRow 771 s2Step138ExitGvExtra) ([]) s2Step138ExitGv_Incoming s2Step138ExitGv_checked h4 s2Step138ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step138ExitFvBefore s2Step138ExitFvAfter s2Step138ExitGvAfter
    s2Step138ExitFvRow s2Step138ExitFvOut 83 [] [(s2Step138ExitGvRow,82)] [[]] [s2Step138ExitGvOut]
    (shrinkRow 770 s2Step138ExitFvExtra) ((shrinkRow 771 s2Step138ExitGvExtra ++ [])) s2Step138ExitFv_Incoming s2Step138ExitFv_checked h3 s2Step138ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step138ExitFBefore s2Step138ExitFAfter s2Step138ExitGvAfter
    s2Step138ExitFRow s2Step138ExitFOut 200 [] [(s2Step138ExitFvRow,83),(s2Step138ExitGvRow,82)] [[],[]] [s2Step138ExitFvOut,s2Step138ExitGvOut]
    (shrinkRow 768 s2Step138ExitFExtra) ((shrinkRow 770 s2Step138ExitFvExtra ++ (shrinkRow 771 s2Step138ExitGvExtra ++ []))) s2Step138ExitF_Incoming s2Step138ExitF_checked h2 s2Step138ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step138ExitGBefore s2Step138ExitGAfter s2Step138ExitGvAfter
    s2Step138ExitGRow s2Step138ExitGOut 200 [] [(s2Step138ExitFRow,200),(s2Step138ExitFvRow,83),(s2Step138ExitGvRow,82)] [[],[],[]] [s2Step138ExitFOut,s2Step138ExitFvOut,s2Step138ExitGvOut]
    (shrinkRow 769 s2Step138ExitGExtra) ((shrinkRow 768 s2Step138ExitFExtra ++ (shrinkRow 770 s2Step138ExitFvExtra ++ (shrinkRow 771 s2Step138ExitGvExtra ++ [])))) s2Step138ExitG_Incoming s2Step138ExitG_checked h1 s2Step138ExitG_Outgoing
  exact h0

private theorem s2Step138ExitBank_checked : compileHmrBankResizeLog .exit s2Step138ExitGBefore ⟨s2Step138ExitFRow,s2Step138ExitGRow,s2Step138ExitFvRow,s2Step138ExitGvRow⟩ ⟨200,200,83,82⟩ [[],[],[],[]]=
    some (s2Step138ExitGvAfter,⟨s2Step138ExitFOut,s2Step138ExitGOut,s2Step138ExitFvOut,s2Step138ExitGvOut⟩,(shrinkRow 769 s2Step138ExitGExtra ++ (shrinkRow 768 s2Step138ExitFExtra ++ (shrinkRow 770 s2Step138ExitFvExtra ++ (shrinkRow 771 s2Step138ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step138ExitBank_rows]
  rfl

private theorem s2Step138Add0_apart : Disjoint s2Step138Add0Arena.live s2Step138Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step138Add0Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (884≤q ∧ q<885)) rfl
  decide +kernel

private theorem s2Step138Add0_card : s2Step138Add0Arena.live.card=880 := by
  decide +kernel

private theorem s2Step138Add0_borrowed : s2Step138Add0Arena.checkBorrow (hmrHybridCount s2Step138Add0Arena s2Step138Add0B.length) s2Step138Add0Work=some s2Step138Add0During := by
  have len : s2Step138Add0Work.length=hmrHybridCount s2Step138Add0Arena s2Step138Add0B.length := by
    rw [hmrHybridCount,s2Step138Add0_card]
    decide +kernel
  have nd : s2Step138Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step138Add0Arena s2Step138Add0During s2Step138Add0Work.toFinset s2Step138Add0_bounded s2Step138Add0_apart rfl

private theorem s2Step138Add0_distinct : (790::782::815::(s2Step138Add0A++s2Step138Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step138Add0_owned : (790::782::815::(s2Step138Add0A++s2Step138Add0B)).toFinset⊆s2Step138Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step138Add0Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (884≤q ∧ q<885)) rfl
  decide +kernel

private theorem s2Step138Add0_checked : compileHmrHybridCinLog s2Step138Add0Arena 782 790 815 s2Step138Add0A s2Step138Add0B s2Step138Add0Work=some s2Step138Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step138Add0Arena s2Step138Add0During 782 790 815 s2Step138Add0A s2Step138Add0B s2Step138Add0Work
    (by decide +kernel) (by decide +kernel) s2Step138Add0_distinct
    (fun q hq => s2Step138Add0_owned (List.mem_toFinset.mpr hq)) s2Step138Add0_borrowed

private theorem s2Step138Add1_apart : Disjoint s2Step138Add1Arena.live s2Step138Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step138Add1Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (884≤q ∧ q<885)) rfl
  decide +kernel

private theorem s2Step138Add1_card : s2Step138Add1Arena.live.card=880 := by
  decide +kernel

private theorem s2Step138Add1_borrowed : s2Step138Add1Arena.checkBorrow (hmrHybridCount s2Step138Add1Arena s2Step138Add1B.length) s2Step138Add1Work=some s2Step138Add1During := by
  have len : s2Step138Add1Work.length=hmrHybridCount s2Step138Add1Arena s2Step138Add1B.length := by
    rw [hmrHybridCount,s2Step138Add1_card]
    decide +kernel
  have nd : s2Step138Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step138Add1Arena s2Step138Add1During s2Step138Add1Work.toFinset s2Step138Add1_bounded s2Step138Add1_apart rfl

private theorem s2Step138Add1_distinct : (790::782::815::(s2Step138Add1A++s2Step138Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step138Add1_owned : (790::782::815::(s2Step138Add1A++s2Step138Add1B)).toFinset⊆s2Step138Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step138Add1Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (884≤q ∧ q<885)) rfl
  decide +kernel

private theorem s2Step138Add1_checked : compileHmrHybridCinLog s2Step138Add1Arena 782 790 815 s2Step138Add1A s2Step138Add1B s2Step138Add1Work=some s2Step138Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step138Add1Arena s2Step138Add1During 782 790 815 s2Step138Add1A s2Step138Add1B s2Step138Add1Work
    (by decide +kernel) (by decide +kernel) s2Step138Add1_distinct
    (fun q hq => s2Step138Add1_owned (List.mem_toFinset.mpr hq)) s2Step138Add1_borrowed

private theorem s2Step138F4_apart : Disjoint (s2Step138Add0A++s2Step138Add0B).toFinset (s2Step138Add1A++s2Step138Add1B).toFinset := by
  have nd : ((s2Step138Add0A++s2Step138Add0B)++(s2Step138Add1A++s2Step138Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step138F4_carry : s2Step138F4FlagArena.checkBorrow 1 [815]=some s2Step138Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step138F4FlagArena,s2Step138HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step138F4FlagArena,s2Step138HeadFvAfter,s2Step138Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step138F4_distinct : (778::782::790::815::((s2Step138Add0A++s2Step138Add1A)++(s2Step138Add0B++s2Step138Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step138F4_flag : s2Step138HeadFvAfter.checkBorrow 1 [790]=some s2Step138F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step138HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step138F4_owned : (778::782::((s2Step138Add0A++s2Step138Add1A)++(s2Step138Add0B++s2Step138Add1B))).toFinset⊆s2Step138HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step138HeadFvAfter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (884≤q ∧ q<885)) rfl
  decide +kernel

private theorem s2Step138F4_checked : compileHmrHybridF4Log s2Step138HeadFvAfter 778 782 s2Step138Add0A s2Step138Add0B s2Step138Add1A s2Step138Add1B [790] [815] s2Step138Add0Work s2Step138Add1Work=some s2Step138F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step138HeadFvAfter s2Step138F4FlagArena s2Step138Add0Arena s2Step138Add0During s2Step138Add1During 778 782
    s2Step138Add0A s2Step138Add0B s2Step138Add1A s2Step138Add1B [790] [815] s2Step138Add0Work s2Step138Add1Work
    (fun q hq => s2Step138F4_owned (List.mem_toFinset.mpr hq)) s2Step138F4_flag s2Step138F4_carry
    s2Step138F4_distinct s2Step138F4_apart s2Step138Add0_checked s2Step138Add1_checked

private theorem s2Step138Front_branch : s2Step138FrontSigmaArena.checkBorrow 1 [782]=some s2Step138HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step138FrontSigmaArena,s2Step138EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step138FrontSigmaArena,s2Step138EntryGvAfter,s2Step138HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step138Front_entry : HmrFrontEntryValid s2Step138EntryFBefore s2Step138FrontBank 201 83 ⟨200,200,83,82⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step138FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step138EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step138EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (884≤q ∧ q<885)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step138FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step138Front_sigma : s2Step138EntryGvAfter.checkBorrow 1 [778]=some s2Step138FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step138EntryGvAfter,arenaWires]
  · rfl

private def s2Step138HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (884≤q ∧ q<885)),Finset.filter_subset _ _⟩

private def s2Step138HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (884≤q ∧ q<885)),Finset.filter_subset _ _⟩

private def s2Step138HeadFBefore : Arena := s2Step138HeadGAfter

private def s2Step138HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712],768⟩

private def s2Step138HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827],770⟩

private def s2Step138HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 849],769⟩

private def s2Step138HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 837],771⟩

private theorem s2Step138HeadBank_incomingDistinct : ([s2Step138HeadGRow,s2Step138HeadFRow,s2Step138HeadGvRow,s2Step138HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step138HeadF_Incoming : rowsOwned s2Step138HeadFBefore [s2Step138HeadFRow,s2Step138HeadGvRow,s2Step138HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step138HeadGRow,s2Step138HeadFRow,s2Step138HeadGvRow,s2Step138HeadFvRow] 1 s2Step138HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step138HeadFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (884≤q ∧ q<885)) rfl
    decide +kernel

private theorem s2Step138HeadBank_outgoingOwned : rowsOwned s2Step138HeadFvAfter [s2Step138HeadGOut,s2Step138HeadFOut,s2Step138HeadGvOut,s2Step138HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step138HeadFvAfter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (884≤q ∧ q<885)) rfl
    decide +kernel

private theorem s2Step138HeadF_Outgoing : rowsOwned s2Step138HeadFvAfter [s2Step138HeadFOut,s2Step138HeadGvOut,s2Step138HeadFvOut] :=
  hmrRows_owned_drop s2Step138HeadFvAfter [s2Step138HeadGOut,s2Step138HeadFOut,s2Step138HeadGvOut,s2Step138HeadFvOut] 1 s2Step138HeadBank_outgoingOwned

private theorem s2Step138HeadF_distinct : (s2Step138HeadFRow.sign::s2Step138HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step138HeadF_owned : (s2Step138HeadFRow.sign::s2Step138HeadFRow.payload).toFinset⊆s2Step138HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step138HeadFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (884≤q ∧ q<885)) rfl
  decide +kernel

private theorem s2Step138HeadF_reserved : s2Step138HeadFBefore.reserve s2Step138HeadFFresh.toFinset=some s2Step138HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step138HeadFFresh,arenaWires]
  · norm_num [s2Step138HeadFBefore,s2Step138HeadGAfter,s2Step138HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step138HeadFAfter,s2Step138HeadFBefore,s2Step138HeadGAfter,s2Step138HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step138HeadF_checked : planRowResizeLog s2Step138HeadFBefore s2Step138HeadFRow 202 s2Step138HeadFFresh=
    some (s2Step138HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 826],768⟩,growRow 768 s2Step138HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step138HeadFBefore s2Step138HeadFAfter s2Step138HeadFRow 202 s2Step138HeadFFresh
    s2Step138HeadF_distinct s2Step138HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step138HeadF_reserved
  have rowEq : WindowRow.mk (s2Step138HeadFRow.payload++s2Step138HeadFFresh) s2Step138HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 826],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step138HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (884≤q ∧ q<885)),Finset.filter_subset _ _⟩

private def s2Step138HeadFvBefore : Arena := s2Step138HeadGvAfter

private theorem s2Step138HeadFv_Incoming : rowsOwned s2Step138HeadFvBefore [s2Step138HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step138HeadGRow,s2Step138HeadFRow,s2Step138HeadGvRow,s2Step138HeadFvRow] 3 s2Step138HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step138HeadFvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (884≤q ∧ q<885)) rfl
    decide +kernel

private theorem s2Step138HeadFv_Outgoing : rowsOwned s2Step138HeadFvAfter [s2Step138HeadFvOut] :=
  hmrRows_owned_drop s2Step138HeadFvAfter [s2Step138HeadGOut,s2Step138HeadFOut,s2Step138HeadGvOut,s2Step138HeadFvOut] 3 s2Step138HeadBank_outgoingOwned

private theorem s2Step138HeadFv_distinct : (s2Step138HeadFvRow.sign::s2Step138HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step138HeadFv_owned : (s2Step138HeadFvRow.sign::s2Step138HeadFvRow.payload).toFinset⊆s2Step138HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step138HeadFvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (884≤q ∧ q<885)) rfl
  decide +kernel

private theorem s2Step138HeadFv_reserved : s2Step138HeadFvBefore.reserve s2Step138HeadFvFresh.toFinset=some s2Step138HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step138HeadFvFresh,arenaWires]
  · norm_num [s2Step138HeadFvBefore,s2Step138HeadGvAfter,s2Step138HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step138HeadFvAfter,s2Step138HeadFvBefore,s2Step138HeadGvAfter,s2Step138HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step138HeadFv_checked : planRowResizeLog s2Step138HeadFvBefore s2Step138HeadFvRow 84 s2Step138HeadFvFresh=
    some (s2Step138HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 814],770⟩,growRow 770 s2Step138HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step138HeadFvBefore s2Step138HeadFvAfter s2Step138HeadFvRow 84 s2Step138HeadFvFresh
    s2Step138HeadFv_distinct s2Step138HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step138HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step138HeadFvRow.payload++s2Step138HeadFvFresh) s2Step138HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 814],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step138HeadG_Incoming : rowsOwned s2Step138HeadGBefore [s2Step138HeadGRow,s2Step138HeadFRow,s2Step138HeadGvRow,s2Step138HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step138HeadGRow,s2Step138HeadFRow,s2Step138HeadGvRow,s2Step138HeadFvRow] 0 s2Step138HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step138HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (884≤q ∧ q<885)) rfl
    decide +kernel

private theorem s2Step138HeadG_Outgoing : rowsOwned s2Step138HeadFvAfter [s2Step138HeadGOut,s2Step138HeadFOut,s2Step138HeadGvOut,s2Step138HeadFvOut] :=
  hmrRows_owned_drop s2Step138HeadFvAfter [s2Step138HeadGOut,s2Step138HeadFOut,s2Step138HeadGvOut,s2Step138HeadFvOut] 0 s2Step138HeadBank_outgoingOwned

private theorem s2Step138HeadG_distinct : (s2Step138HeadGRow.sign::s2Step138HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step138HeadG_owned : (s2Step138HeadGRow.sign::s2Step138HeadGRow.payload).toFinset⊆s2Step138HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step138HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (884≤q ∧ q<885)) rfl
  decide +kernel

private theorem s2Step138HeadG_reserved : s2Step138HeadGBefore.reserve s2Step138HeadGFresh.toFinset=some s2Step138HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step138HeadGFresh,arenaWires]
  · norm_num [s2Step138HeadGBefore,s2Step138HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step138HeadGAfter,s2Step138HeadGBefore,s2Step138HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step138HeadG_checked : planRowResizeLog s2Step138HeadGBefore s2Step138HeadGRow 202 s2Step138HeadGFresh=
    some (s2Step138HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 849, 781],769⟩,growRow 769 s2Step138HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step138HeadGBefore s2Step138HeadGAfter s2Step138HeadGRow 202 s2Step138HeadGFresh
    s2Step138HeadG_distinct s2Step138HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step138HeadG_reserved
  have rowEq : WindowRow.mk (s2Step138HeadGRow.payload++s2Step138HeadGFresh) s2Step138HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 849, 781],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step138HeadGvBefore : Arena := s2Step138HeadFAfter

private theorem s2Step138HeadGv_Incoming : rowsOwned s2Step138HeadGvBefore [s2Step138HeadGvRow,s2Step138HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step138HeadGRow,s2Step138HeadFRow,s2Step138HeadGvRow,s2Step138HeadFvRow] 2 s2Step138HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step138HeadGvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (884≤q ∧ q<885)) rfl
    decide +kernel

private theorem s2Step138HeadGv_Outgoing : rowsOwned s2Step138HeadFvAfter [s2Step138HeadGvOut,s2Step138HeadFvOut] :=
  hmrRows_owned_drop s2Step138HeadFvAfter [s2Step138HeadGOut,s2Step138HeadFOut,s2Step138HeadGvOut,s2Step138HeadFvOut] 2 s2Step138HeadBank_outgoingOwned

private theorem s2Step138HeadGv_distinct : (s2Step138HeadGvRow.sign::s2Step138HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step138HeadGv_owned : (s2Step138HeadGvRow.sign::s2Step138HeadGvRow.payload).toFinset⊆s2Step138HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step138HeadGvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (884≤q ∧ q<885)) rfl
  decide +kernel

private theorem s2Step138HeadGv_reserved : s2Step138HeadGvBefore.reserve s2Step138HeadGvFresh.toFinset=some s2Step138HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step138HeadGvFresh,arenaWires]
  · norm_num [s2Step138HeadGvBefore,s2Step138HeadFAfter,s2Step138HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step138HeadGvAfter,s2Step138HeadGvBefore,s2Step138HeadFAfter,s2Step138HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step138HeadGv_checked : planRowResizeLog s2Step138HeadGvBefore s2Step138HeadGvRow 84 s2Step138HeadGvFresh=
    some (s2Step138HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 837, 783],771⟩,growRow 771 s2Step138HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step138HeadGvBefore s2Step138HeadGvAfter s2Step138HeadGvRow 84 s2Step138HeadGvFresh
    s2Step138HeadGv_distinct s2Step138HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step138HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step138HeadGvRow.payload++s2Step138HeadGvFresh) s2Step138HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 837, 783],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step138HeadBank_rows : planWindowRowsLog s2Step138HeadGBefore [(s2Step138HeadGRow,202),(s2Step138HeadFRow,202),(s2Step138HeadGvRow,84),(s2Step138HeadFvRow,84)] [s2Step138HeadGFresh,s2Step138HeadFFresh,s2Step138HeadGvFresh,s2Step138HeadFvFresh]=
    some (s2Step138HeadFvAfter,[s2Step138HeadGOut,s2Step138HeadFOut,s2Step138HeadGvOut,s2Step138HeadFvOut],(growRow 769 s2Step138HeadGFresh ++ (growRow 768 s2Step138HeadFFresh ++ (growRow 771 s2Step138HeadGvFresh ++ (growRow 770 s2Step138HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step138HeadFvAfter [] []=some (s2Step138HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step138HeadFvBefore s2Step138HeadFvAfter s2Step138HeadFvAfter
    s2Step138HeadFvRow s2Step138HeadFvOut 84 s2Step138HeadFvFresh [] [] []
    (growRow 770 s2Step138HeadFvFresh) ([]) s2Step138HeadFv_Incoming s2Step138HeadFv_checked h4 s2Step138HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step138HeadGvBefore s2Step138HeadGvAfter s2Step138HeadFvAfter
    s2Step138HeadGvRow s2Step138HeadGvOut 84 s2Step138HeadGvFresh [(s2Step138HeadFvRow,84)] [s2Step138HeadFvFresh] [s2Step138HeadFvOut]
    (growRow 771 s2Step138HeadGvFresh) ((growRow 770 s2Step138HeadFvFresh ++ [])) s2Step138HeadGv_Incoming s2Step138HeadGv_checked h3 s2Step138HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step138HeadFBefore s2Step138HeadFAfter s2Step138HeadFvAfter
    s2Step138HeadFRow s2Step138HeadFOut 202 s2Step138HeadFFresh [(s2Step138HeadGvRow,84),(s2Step138HeadFvRow,84)] [s2Step138HeadGvFresh,s2Step138HeadFvFresh] [s2Step138HeadGvOut,s2Step138HeadFvOut]
    (growRow 768 s2Step138HeadFFresh) ((growRow 771 s2Step138HeadGvFresh ++ (growRow 770 s2Step138HeadFvFresh ++ []))) s2Step138HeadF_Incoming s2Step138HeadF_checked h2 s2Step138HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step138HeadGBefore s2Step138HeadGAfter s2Step138HeadFvAfter
    s2Step138HeadGRow s2Step138HeadGOut 202 s2Step138HeadGFresh [(s2Step138HeadFRow,202),(s2Step138HeadGvRow,84),(s2Step138HeadFvRow,84)] [s2Step138HeadFFresh,s2Step138HeadGvFresh,s2Step138HeadFvFresh] [s2Step138HeadFOut,s2Step138HeadGvOut,s2Step138HeadFvOut]
    (growRow 769 s2Step138HeadGFresh) ((growRow 768 s2Step138HeadFFresh ++ (growRow 771 s2Step138HeadGvFresh ++ (growRow 770 s2Step138HeadFvFresh ++ [])))) s2Step138HeadG_Incoming s2Step138HeadG_checked h1 s2Step138HeadG_Outgoing
  exact h0

private theorem s2Step138HeadBank_checked : compileHmrBankResizeLog .headroom s2Step138HeadGBefore ⟨s2Step138HeadFRow,s2Step138HeadGRow,s2Step138HeadFvRow,s2Step138HeadGvRow⟩ ⟨202,202,84,84⟩ [s2Step138HeadGFresh,s2Step138HeadFFresh,s2Step138HeadGvFresh,s2Step138HeadFvFresh]=
    some (s2Step138HeadFvAfter,⟨s2Step138HeadFOut,s2Step138HeadGOut,s2Step138HeadFvOut,s2Step138HeadGvOut⟩,(growRow 769 s2Step138HeadGFresh ++ (growRow 768 s2Step138HeadFFresh ++ (growRow 771 s2Step138HeadGvFresh ++ (growRow 770 s2Step138HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step138HeadBank_rows]
  rfl

private theorem s2Step138Front_checked : compileHmrSourceFrontLog s2Step138EntryFBefore s2Step138FrontBank 201 83 ⟨200,200,83,82⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step138FrontLog=some s2Step138FrontPlan := by
  have pairEq : s2Step138FrontPair=⟨s2Step138HeadFRow,s2Step138HeadGRow,s2Step138HeadFvRow,s2Step138HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step138FrontHead=⟨s2Step138ExitFRow,s2Step138ExitGRow,s2Step138ExitFvRow,s2Step138ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step138Add0A=s2Step138FrontHead.f.wires := by decide +kernel
  have gEq : s2Step138Add0B=s2Step138FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step138Add1A=s2Step138FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step138Add1B=s2Step138FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step138EntryFBefore s2Step138FrontBank 201 83 ⟨200,200,83,82⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step138FrontLog s2Step138FrontPlan
  · exact s2Step138Front_entry
  · exact s2Step138EntryBank_checked
  · exact s2Step138Front_sigma
  · rfl
  · exact s2Step138Front_branch
  · rfl
  · simpa only [s2Step138FrontPlan,pairEq] using s2Step138HeadBank_checked
  · simpa only [s2Step138FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step138F4_checked
  · exact s2Step138Counter_checked
  · rfl
  · simpa only [s2Step138FrontPlan,headEq] using s2Step138ExitBank_checked

private theorem s2Step138Complete_explicit_checked : compileHmrEarlyStepLog s2Step138EntryFBefore s2Step138FrontBank 201 83 ⟨200,200,83,82⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884] 39 s2Step138CompleteLog=some s2Step138CompletePlan := by
  let Q := s2Step138EarlyControlPlan
  have hq := s2Step138EarlyControl_plan_checked
  have fv1 : s2Step138CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step138CompleteOut.fv.payload[2]?.getD s2Step138CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step138CompleteOut.fv.payload[3]?.getD s2Step138CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step138CompleteOut.fv.payload[4]?.getD s2Step138CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step138EntryFBefore s2Step138EarlyControlArena s2Step138FrontBank 201 83 ⟨200,200,83,82⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884] 39 s2Step138CompleteLog s2Step138FrontPlan Q
    s2Step138Front_checked s2Step138Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step138Complete_owned s2Step138Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step138EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884] 777 778 s2Step138CompleteOut.fv.second (s2Step138CompleteOut.fv.payload[2]?.getD s2Step138CompleteOut.fv.sign) (s2Step138CompleteOut.fv.payload[3]?.getD s2Step138CompleteOut.fv.sign) (s2Step138CompleteOut.fv.payload[4]?.getD s2Step138CompleteOut.fv.sign) 782 39 s2Step138EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep138Arena : Arena := s2Step138EntryFBefore
def s2PrivateStep138Bank : WindowBank := s2Step138FrontBank
def s2PrivateStep138Spec : HmrSourceWalkStepLog := ⟨201,83,⟨200,200,83,82⟩,39,.early s2Step138CompleteLog⟩
def s2PrivateStep138Plan : HmrSourceStepPlan := .early s2Step138CompletePlan
theorem s2PrivateStep138_source : s2PrivateStep138Spec=s2ObservedLogs128[10] := rfl
theorem s2PrivateStep138_checked : compileHmrSourceStepLog s2PrivateStep138Arena s2PrivateStep138Bank
    s2PrivateStep138Spec.fgWidth s2PrivateStep138Spec.vWidth s2PrivateStep138Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884]
    6 498 138 s2PrivateStep138Spec.need none s2PrivateStep138Spec.log=some s2PrivateStep138Plan := by
  change compileHmrSourceStepLog s2Step138EntryFBefore s2Step138FrontBank 201 83 ⟨200,200,83,82⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884] 6 498 138 39 none (.early s2Step138CompleteLog)=some (.early s2Step138CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 138<498)]
  rw [s2Step138Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
