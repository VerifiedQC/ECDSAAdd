import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep121
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

private def s2Step123CompleteMoves : List (Wire × Wire) := [(837,719)]

private def s2Step123EarlyControlLog : HmrEarlyControlLog := ⟨[837, 802, 781, 824, 825],[849],[790],[815, 867, 877, 879, 882, 883],[]⟩

private def s2Step123FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [806]],[[824], [781], [802], [792]],[[], [], [], []]⟩,[819],[832],[825],[849],[790, 815, 867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[790, 815, 867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[825, 849, 790, 815]⟩

private def s2Step123CompleteLog : HmrEarlyStepLog := ⟨s2Step123FrontLog,s2Step123CompleteMoves,s2Step123EarlyControlLog⟩

private def s2Step123ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718],768⟩

private def s2Step123ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792],770⟩

private def s2Step123ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 817],769⟩

private def s2Step123ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806],771⟩

private def s2Step123FrontOut : WindowBank := ⟨s2Step123ExitFOut,s2Step123ExitGOut,s2Step123ExitFvOut,s2Step123ExitGvOut⟩

private def s2Step123CompleteOut : WindowBank := s2Step123FrontOut.repacked s2Step123CompleteMoves

private def s2Step123EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<815) ∨ (816≤q ∧ q<824) ∨ (826≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step123EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step123EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step123EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step123EarlyControlPositiveArena,[849],s2Step123EarlyControlEqualityArena,[790],⟨⟨819,false⟩,[⟨⟨849,false⟩,790⟩]⟩⟩

private def s2Step123EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<884)),Finset.filter_subset _ _⟩

private def s2Step123EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<884)),Finset.filter_subset _ _⟩

private def s2Step123EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<815) ∨ (816≤q ∧ q<824) ∨ (826≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step123EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<815) ∨ (816≤q ∧ q<819) ∨ (820≤q ∧ q<824) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step123EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<815) ∨ (816≤q ∧ q<819) ∨ (820≤q ∧ q<824) ∨ (826≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step123EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step123EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,837⟩,⟨⟨774,false⟩,802⟩,⟨⟨775,false⟩,781⟩,⟨⟨776,false⟩,824⟩,⟨⟨777,false⟩,825⟩]⟩

private def s2Step123EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step123EarlyControlZeroArena,s2Step123EarlyControlZeroPlan,s2Step123EarlyControlClassPlan,s2Step123EarlyControlFlagArena,s2Step123EarlyControlFittedArena,s2Step123EarlyControlHistoryArena,s2Step123EarlyControlSigmaArena,s2Step123EarlyControlOutputArena,s2Step123EarlyControlLog⟩

private def s2Step123CounterWork : List Wire := [825, 849, 790, 815]

private theorem s2Step123Counter_bounded : s2Step123CounterWork.toFinset⊆arenaWires := by norm_num [s2Step123CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step123HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<825) ∨ (826≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step123CounterDuring : Arena := ⟨s2Step123HeadFvAfter.live∪s2Step123CounterWork.toFinset,Finset.union_subset s2Step123HeadFvAfter.bounded s2Step123Counter_bounded⟩

private def s2Step123EntryFFresh : List Wire := []

private def s2Step123EntryFvFresh : List Wire := []

private def s2Step123EntryGFresh : List Wire := []

private def s2Step123EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<815) ∨ (816≤q ∧ q<819) ∨ (820≤q ∧ q<824) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step123EntryGvFresh : List Wire := [806]

private def s2Step123ExitFExtra : List Wire := [719, 781]

private def s2Step123ExitGExtra : List Wire := [824]

private def s2Step123ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<719) ∨ (720≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<815) ∨ (816≤q ∧ q<824) ∨ (826≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step123ExitGvExtra : List Wire := [802]

private def s2Step123Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step123Add0Work : List Wire := [790, 815, 867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step123Add0_bounded : s2Step123Add0Work.toFinset⊆arenaWires := by
  have h : s2Step123Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step123Add0During : Arena := ⟨s2Step123Add0Arena.live∪s2Step123Add0Work.toFinset,Finset.union_subset s2Step123Add0Arena.bounded s2Step123Add0_bounded⟩

private def s2Step123Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step123Add1Work : List Wire := [790, 815, 867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step123Add1_bounded : s2Step123Add1Work.toFinset⊆arenaWires := by
  have h : s2Step123Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step123Add1During : Arena := ⟨s2Step123Add1Arena.live∪s2Step123Add1Work.toFinset,Finset.union_subset s2Step123Add1Arena.bounded s2Step123Add1_bounded⟩

private def s2Step123F4FlagArena : Arena := ⟨s2Step123HeadFvAfter.live∪{825},Finset.union_subset s2Step123HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step123F4Plan : HmrHybridF4Plan := ⟨s2Step123F4FlagArena,[825],s2Step123Add0Arena,[849],s2Step123Add0During,s2Step123Add0Work,s2Step123Add1During,s2Step123Add1Work⟩

private def s2Step123HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 781],768⟩

private def s2Step123HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792],770⟩

private def s2Step123HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 817, 824],769⟩

private def s2Step123HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 802],771⟩

private def s2Step123FrontHead : WindowBank := ⟨s2Step123HeadFOut,s2Step123HeadGOut,s2Step123HeadFvOut,s2Step123HeadGvOut⟩

private def s2Step123EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719],768⟩

private def s2Step123EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807],770⟩

private def s2Step123EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 817],769⟩

private def s2Step123EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806],771⟩

private def s2Step123FrontPair : WindowBank := ⟨s2Step123EntryFOut,s2Step123EntryGOut,s2Step123EntryFvOut,s2Step123EntryGvOut⟩

private def s2Step123FrontSigmaArena : Arena := ⟨s2Step123EntryGvAfter.live∪{819},Finset.union_subset s2Step123EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step123HeadFFresh : List Wire := [781]

private def s2Step123HeadFvFresh : List Wire := [792]

private def s2Step123HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<815) ∨ (816≤q ∧ q<824) ∨ (826≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step123HeadGFresh : List Wire := [824]

private def s2Step123HeadGvFresh : List Wire := [802]

private def s2Step123FrontPlan : HmrSourceFront := ⟨s2Step123EntryGvAfter,s2Step123FrontPair,(growRow 768 s2Step123EntryFFresh ++ (growRow 769 s2Step123EntryGFresh ++ (growRow 770 s2Step123EntryFvFresh ++ (growRow 771 s2Step123EntryGvFresh ++ [])))),s2Step123FrontSigmaArena,[819],s2Step123HeadGBefore,[832],
  s2Step123HeadFvAfter,s2Step123FrontHead,(growRow 769 s2Step123HeadGFresh ++ (growRow 768 s2Step123HeadFFresh ++ (growRow 771 s2Step123HeadGvFresh ++ (growRow 770 s2Step123HeadFvFresh ++ [])))),s2Step123F4Plan,s2Step123CounterDuring,s2Step123CounterWork,s2Step123ExitGvAfter,s2Step123FrontOut,(shrinkRow 769 s2Step123ExitGExtra ++ (shrinkRow 768 s2Step123ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step123ExitGvExtra ++ []))))⟩

private def s2Step123CompletePlan : HmrEarlyStepPlan := ⟨s2Step123FrontPlan,s2Step123EarlyControlArena,s2Step123EarlyControlPlan,s2Step123CompleteMoves⟩

private theorem s2Step123Complete_apart : List.Disjoint (s2Step123CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [819, 832, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] := by
  have nd : ((s2Step123CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[819, 832, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step123Complete_owned : (s2Step123CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step123EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step123EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<815) ∨ (816≤q ∧ q<824) ∨ (826≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private def s2Step123CompleteMoveArena : Arena := ⟨s2Step123ExitGvAfter.live∪{719},Finset.union_subset s2Step123ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step123Complete_repack : s2Step123ExitGvAfter.checkRepack s2Step123CompleteMoves=some s2Step123EarlyControlArena := by
  have owned : 837∈s2Step123ExitGvAfter.live := by norm_num [s2Step123ExitGvAfter,arenaWires]
  have reserve : s2Step123ExitGvAfter.reserve {719}=some s2Step123CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step123ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step123CompleteMoveArena.retireSet {837}=s2Step123EarlyControlArena := by
    unfold Arena.retireSet s2Step123EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step123CompleteMoveArena,s2Step123ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step123CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step123CompleteMoveArena.retireSet {837}).checkRepack []=some s2Step123EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step123EarlyControl_branchOwned : ([832] : List Wire).toFinset⊆s2Step123EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step123EarlyControlSigmaArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<815) ∨ (816≤q ∧ q<819) ∨ (820≤q ∧ q<824) ∨ (826≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step123EarlyControl_branch : compileHmrBranchRetirement s2Step123EarlyControlSigmaArena 832=some s2Step123EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step123EarlyControl_branchOwned
  · ext q
    simp [s2Step123EarlyControlOutputArena,s2Step123EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step123EarlyControl_classEqualityBorrow : s2Step123EarlyControlPositiveArena.checkBorrow (([819, 849] : List Wire).length-1) s2Step123EarlyControlLog.classWork=some s2Step123EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step123EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step123EarlyControlPositiveArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step123EarlyControlEqualityArena,s2Step123EarlyControlPositiveArena,s2Step123EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step123EarlyControl_classEqualityOwned : ([819, 849] : List Wire).toFinset⊆s2Step123EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step123EarlyControlPositiveArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step123EarlyControl_classEquality : compileHmrEqualityLog s2Step123EarlyControlPositiveArena [819, 849] 0 s2Step123EarlyControlLog.classWork=some (s2Step123EarlyControlEqualityArena,s2Step123EarlyControlLog.classWork,s2Step123EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step123EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step123EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step123EarlyControl_classOwned : ([777, 825, 819] : List Wire).toFinset⊆s2Step123EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step123EarlyControlZeroArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step123EarlyControl_positiveBorrow : s2Step123EarlyControlZeroArena.checkBorrow (1) s2Step123EarlyControlLog.positiveWork=some s2Step123EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step123EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step123EarlyControlZeroArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step123EarlyControlPositiveArena,s2Step123EarlyControlZeroArena,s2Step123EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step123EarlyControl_class : compileHmrSourceClassLog s2Step123EarlyControlZeroArena false 777 s2Step123EarlyControlZeroPlan.top 0 819 s2Step123EarlyControlLog.positiveWork s2Step123EarlyControlLog.classWork=some s2Step123EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step123EarlyControlClassPlan s2Step123EarlyControlZeroArena false 777 s2Step123EarlyControlZeroPlan.top 0 819
  constructor
  · decide +kernel
  · exact s2Step123EarlyControl_classOwned
  · exact s2Step123EarlyControl_positiveBorrow
  · exact s2Step123EarlyControl_classEquality

private theorem s2Step123EarlyControl_entryRecordOwned : ([832, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).toFinset⊆s2Step123EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step123EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<815) ∨ (816≤q ∧ q<824) ∨ (826≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step123EarlyControl_entrySigmaOwned : ([819, 254] : List Wire).toFinset⊆s2Step123EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step123EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<815) ∨ (816≤q ∧ q<824) ∨ (826≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step123EarlyControl_fitBorrow : s2Step123EarlyControlFlagArena.checkBorrow ((37-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).length)) s2Step123EarlyControlLog.recordFresh=some s2Step123EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step123EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step123EarlyControlFlagArena (fun q => (0≤q ∧ q<884)) rfl
      decide +kernel
    · ext q
      simp [s2Step123EarlyControlFittedArena,s2Step123EarlyControlFlagArena,s2Step123EarlyControlLog,arenaWires]

private theorem s2Step123EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).toFinset⊆s2Step123EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step123EarlyControlFlagArena (fun q => (0≤q ∧ q<884)) rfl
  decide +kernel

private theorem s2Step123EarlyControl_fit : compileHmrRecordGrowLog s2Step123EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step123EarlyControlLog.recordFresh=some s2Step123EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step123EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step123EarlyControl_fitBorrow

private theorem s2Step123EarlyControl_flagsBorrow : s2Step123EarlyControlEqualityArena.checkBorrow (6) s2Step123EarlyControlLog.flagWork=some s2Step123EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step123EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step123EarlyControlEqualityArena (fun q => (0≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step123EarlyControlFlagArena,s2Step123EarlyControlEqualityArena,s2Step123EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step123EarlyControl_flagsOwned : ([790, 253, 252, 251] : List Wire).toFinset⊆s2Step123EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step123EarlyControlEqualityArena (fun q => (0≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step123EarlyControl_flags : compileHmrFlagsLog s2Step123EarlyControlClassPlan.equalityArena s2Step123EarlyControlClassPlan.equality.top 253 252 251 s2Step123EarlyControlLog.flagWork=some s2Step123EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step123EarlyControl_flagsOwned⟩
  · exact s2Step123EarlyControl_flagsBorrow

private theorem s2Step123EarlyControl_historyBorrow : s2Step123EarlyControlArena.checkBorrow ((37-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).length)) s2Step123EarlyControlLog.recordFresh=some s2Step123EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step123EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step123EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<815) ∨ (816≤q ∧ q<824) ∨ (826≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step123EarlyControlHistoryArena,s2Step123EarlyControlArena,s2Step123EarlyControlLog,arenaWires]

private theorem s2Step123EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).toFinset⊆s2Step123EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step123EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<815) ∨ (816≤q ∧ q<824) ∨ (826≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step123EarlyControl_history : compileHmrRecordGrowLog s2Step123EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step123EarlyControlLog.recordFresh=some s2Step123EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step123EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step123EarlyControl_historyBorrow

private theorem s2Step123EarlyControl_sigmaOwned : ([254, 819] : List Wire).toFinset⊆s2Step123EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step123EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<815) ∨ (816≤q ∧ q<824) ∨ (826≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step123EarlyControl_sigmaReleaseOwned : ([819] : List Wire).toFinset⊆s2Step123EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step123EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<815) ∨ (816≤q ∧ q<824) ∨ (826≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step123EarlyControl_sigmaRelease : s2Step123EarlyControlHistoryArena.release {819} (fun _ => false)=some s2Step123EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step123EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step123EarlyControlSigmaArena,s2Step123EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step123EarlyControl_sigma : compileHmrSigmaDropLog s2Step123EarlyControlHistoryArena false 0 0 254 819 []=some s2Step123EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step123EarlyControl_sigmaOwned⟩
  · exact s2Step123EarlyControl_sigmaRelease

private theorem s2Step123EarlyControl_zeroBorrow : s2Step123EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step123EarlyControlLog.zeroWork=some s2Step123EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step123EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step123EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<815) ∨ (816≤q ∧ q<824) ∨ (826≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step123EarlyControlZeroArena,s2Step123EarlyControlArena,s2Step123EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step123EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step123EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step123EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<815) ∨ (816≤q ∧ q<824) ∨ (826≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step123EarlyControl_zero : compileHmrEqualityLog s2Step123EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step123EarlyControlLog.zeroWork=some (s2Step123EarlyControlZeroArena,s2Step123EarlyControlLog.zeroWork,s2Step123EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step123EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step123EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step123EarlyControl_logged : s2Step123EarlyControlPlan.Logged s2Step123EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 819 254 253 252 251 832 37 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step123EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step123EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step123EarlyControl_zero
  · exact s2Step123EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step123EarlyControl_flags
  · exact s2Step123EarlyControl_fit
  · exact s2Step123EarlyControl_history
  · exact s2Step123EarlyControl_sigma
  · exact s2Step123EarlyControl_branch

private theorem s2Step123EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step123EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 819 254 253 252 251 832 37 s2Step123EarlyControlLog=some s2Step123EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step123EarlyControlPlan s2Step123EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 819 254 253 252 251 832 37 s2Step123EarlyControl_logged

private def s2Step123EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<815) ∨ (816≤q ∧ q<819) ∨ (820≤q ∧ q<824) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step123EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719],768⟩

private def s2Step123EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807],770⟩

private def s2Step123EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 817],769⟩

private def s2Step123EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830],771⟩

private def s2Step123FrontBank : WindowBank := ⟨s2Step123EntryFRow,s2Step123EntryGRow,s2Step123EntryFvRow,s2Step123EntryGvRow⟩

private def s2Step123Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 781, 768]

private def s2Step123Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 817, 824, 769]

private def s2Step123Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 770]

private def s2Step123Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 802, 771]

private theorem s2Step123Counter_apart : Disjoint s2Step123HeadFvAfter.live s2Step123CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step123HeadFvAfter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<825) ∨ (826≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step123Counter_borrowed : s2Step123HeadFvAfter.checkBorrow 4 s2Step123CounterWork=some s2Step123CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step123HeadFvAfter s2Step123CounterDuring s2Step123CounterWork.toFinset s2Step123Counter_bounded s2Step123Counter_apart rfl

private theorem s2Step123Counter_owned : (819::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step123HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step123HeadFvAfter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<825) ∨ (826≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step123Counter_checked : compileHmrCounterStepLog s2Step123HeadFvAfter true 819 [772, 773, 774, 775, 776, 777] s2Step123CounterWork=some s2Step123CounterDuring := by
  have owned : ∀q∈819::[772, 773, 774, 775, 776, 777],q∈s2Step123HeadFvAfter.live := fun q hq => s2Step123Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step123Counter_borrowed

private def s2Step123EntryFAfter : Arena := s2Step123EntryFBefore

private theorem s2Step123EntryBank_incomingDistinct : ([s2Step123EntryFRow,s2Step123EntryGRow,s2Step123EntryFvRow,s2Step123EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step123EntryF_Incoming : rowsOwned s2Step123EntryFBefore [s2Step123EntryFRow,s2Step123EntryGRow,s2Step123EntryFvRow,s2Step123EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step123EntryFRow,s2Step123EntryGRow,s2Step123EntryFvRow,s2Step123EntryGvRow] 0 s2Step123EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step123EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<815) ∨ (816≤q ∧ q<819) ∨ (820≤q ∧ q<824) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step123EntryBank_outgoingOwned : rowsOwned s2Step123EntryGvAfter [s2Step123EntryFOut,s2Step123EntryGOut,s2Step123EntryFvOut,s2Step123EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step123EntryGvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<815) ∨ (816≤q ∧ q<819) ∨ (820≤q ∧ q<824) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step123EntryF_Outgoing : rowsOwned s2Step123EntryGvAfter [s2Step123EntryFOut,s2Step123EntryGOut,s2Step123EntryFvOut,s2Step123EntryGvOut] :=
  hmrRows_owned_drop s2Step123EntryGvAfter [s2Step123EntryFOut,s2Step123EntryGOut,s2Step123EntryFvOut,s2Step123EntryGvOut] 0 s2Step123EntryBank_outgoingOwned

private theorem s2Step123EntryF_distinct : (s2Step123EntryFRow.sign::s2Step123EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step123EntryF_owned : (s2Step123EntryFRow.sign::s2Step123EntryFRow.payload).toFinset⊆s2Step123EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step123EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<815) ∨ (816≤q ∧ q<819) ∨ (820≤q ∧ q<824) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step123EntryF_reserved : s2Step123EntryFBefore.reserve s2Step123EntryFFresh.toFinset=some s2Step123EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step123EntryFFresh,arenaWires]
  · norm_num [s2Step123EntryFBefore,s2Step123EntryFFresh,arenaWires]
  · simp only [s2Step123EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step123EntryF_checked : planRowResizeLog s2Step123EntryFBefore s2Step123EntryFRow 208 s2Step123EntryFFresh=
    some (s2Step123EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719],768⟩,growRow 768 s2Step123EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step123EntryFBefore s2Step123EntryFAfter s2Step123EntryFRow 208 s2Step123EntryFFresh
    s2Step123EntryF_distinct s2Step123EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step123EntryF_reserved
  have rowEq : WindowRow.mk (s2Step123EntryFRow.payload++s2Step123EntryFFresh) s2Step123EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step123EntryFvAfter : Arena := s2Step123EntryFBefore

private def s2Step123EntryFvBefore : Arena := s2Step123EntryFBefore

private theorem s2Step123EntryFv_Incoming : rowsOwned s2Step123EntryFvBefore [s2Step123EntryFvRow,s2Step123EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step123EntryFRow,s2Step123EntryGRow,s2Step123EntryFvRow,s2Step123EntryGvRow] 2 s2Step123EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step123EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<815) ∨ (816≤q ∧ q<819) ∨ (820≤q ∧ q<824) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step123EntryFv_Outgoing : rowsOwned s2Step123EntryGvAfter [s2Step123EntryFvOut,s2Step123EntryGvOut] :=
  hmrRows_owned_drop s2Step123EntryGvAfter [s2Step123EntryFOut,s2Step123EntryGOut,s2Step123EntryFvOut,s2Step123EntryGvOut] 2 s2Step123EntryBank_outgoingOwned

private theorem s2Step123EntryFv_distinct : (s2Step123EntryFvRow.sign::s2Step123EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step123EntryFv_owned : (s2Step123EntryFvRow.sign::s2Step123EntryFvRow.payload).toFinset⊆s2Step123EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step123EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<815) ∨ (816≤q ∧ q<819) ∨ (820≤q ∧ q<824) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step123EntryFv_reserved : s2Step123EntryFvBefore.reserve s2Step123EntryFvFresh.toFinset=some s2Step123EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step123EntryFvFresh,arenaWires]
  · norm_num [s2Step123EntryFvBefore,s2Step123EntryFBefore,s2Step123EntryFvFresh,arenaWires]
  · simp only [s2Step123EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step123EntryFv_checked : planRowResizeLog s2Step123EntryFvBefore s2Step123EntryFvRow 75 s2Step123EntryFvFresh=
    some (s2Step123EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807],770⟩,growRow 770 s2Step123EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step123EntryFvBefore s2Step123EntryFvAfter s2Step123EntryFvRow 75 s2Step123EntryFvFresh
    s2Step123EntryFv_distinct s2Step123EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step123EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step123EntryFvRow.payload++s2Step123EntryFvFresh) s2Step123EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step123EntryGAfter : Arena := s2Step123EntryFBefore

private def s2Step123EntryGBefore : Arena := s2Step123EntryFBefore

private theorem s2Step123EntryG_Incoming : rowsOwned s2Step123EntryGBefore [s2Step123EntryGRow,s2Step123EntryFvRow,s2Step123EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step123EntryFRow,s2Step123EntryGRow,s2Step123EntryFvRow,s2Step123EntryGvRow] 1 s2Step123EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step123EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<815) ∨ (816≤q ∧ q<819) ∨ (820≤q ∧ q<824) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step123EntryG_Outgoing : rowsOwned s2Step123EntryGvAfter [s2Step123EntryGOut,s2Step123EntryFvOut,s2Step123EntryGvOut] :=
  hmrRows_owned_drop s2Step123EntryGvAfter [s2Step123EntryFOut,s2Step123EntryGOut,s2Step123EntryFvOut,s2Step123EntryGvOut] 1 s2Step123EntryBank_outgoingOwned

private theorem s2Step123EntryG_distinct : (s2Step123EntryGRow.sign::s2Step123EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step123EntryG_owned : (s2Step123EntryGRow.sign::s2Step123EntryGRow.payload).toFinset⊆s2Step123EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step123EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<815) ∨ (816≤q ∧ q<819) ∨ (820≤q ∧ q<824) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step123EntryG_reserved : s2Step123EntryGBefore.reserve s2Step123EntryGFresh.toFinset=some s2Step123EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step123EntryGFresh,arenaWires]
  · norm_num [s2Step123EntryGBefore,s2Step123EntryFBefore,s2Step123EntryGFresh,arenaWires]
  · simp only [s2Step123EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step123EntryG_checked : planRowResizeLog s2Step123EntryGBefore s2Step123EntryGRow 208 s2Step123EntryGFresh=
    some (s2Step123EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 817],769⟩,growRow 769 s2Step123EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step123EntryGBefore s2Step123EntryGAfter s2Step123EntryGRow 208 s2Step123EntryGFresh
    s2Step123EntryG_distinct s2Step123EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step123EntryG_reserved
  have rowEq : WindowRow.mk (s2Step123EntryGRow.payload++s2Step123EntryGFresh) s2Step123EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 817],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step123EntryGvBefore : Arena := s2Step123EntryFBefore

private theorem s2Step123EntryGv_Incoming : rowsOwned s2Step123EntryGvBefore [s2Step123EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step123EntryFRow,s2Step123EntryGRow,s2Step123EntryFvRow,s2Step123EntryGvRow] 3 s2Step123EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step123EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<815) ∨ (816≤q ∧ q<819) ∨ (820≤q ∧ q<824) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step123EntryGv_Outgoing : rowsOwned s2Step123EntryGvAfter [s2Step123EntryGvOut] :=
  hmrRows_owned_drop s2Step123EntryGvAfter [s2Step123EntryFOut,s2Step123EntryGOut,s2Step123EntryFvOut,s2Step123EntryGvOut] 3 s2Step123EntryBank_outgoingOwned

private theorem s2Step123EntryGv_distinct : (s2Step123EntryGvRow.sign::s2Step123EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step123EntryGv_owned : (s2Step123EntryGvRow.sign::s2Step123EntryGvRow.payload).toFinset⊆s2Step123EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step123EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<815) ∨ (816≤q ∧ q<819) ∨ (820≤q ∧ q<824) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step123EntryGv_reserved : s2Step123EntryGvBefore.reserve s2Step123EntryGvFresh.toFinset=some s2Step123EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step123EntryGvFresh,arenaWires]
  · norm_num [s2Step123EntryGvBefore,s2Step123EntryFBefore,s2Step123EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step123EntryGvAfter,s2Step123EntryGvBefore,s2Step123EntryFBefore,s2Step123EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step123EntryGv_checked : planRowResizeLog s2Step123EntryGvBefore s2Step123EntryGvRow 75 s2Step123EntryGvFresh=
    some (s2Step123EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806],771⟩,growRow 771 s2Step123EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step123EntryGvBefore s2Step123EntryGvAfter s2Step123EntryGvRow 75 s2Step123EntryGvFresh
    s2Step123EntryGv_distinct s2Step123EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step123EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step123EntryGvRow.payload++s2Step123EntryGvFresh) s2Step123EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step123EntryBank_rows : planWindowRowsLog s2Step123EntryFBefore [(s2Step123EntryFRow,208),(s2Step123EntryGRow,208),(s2Step123EntryFvRow,75),(s2Step123EntryGvRow,75)] [s2Step123EntryFFresh,s2Step123EntryGFresh,s2Step123EntryFvFresh,s2Step123EntryGvFresh]=
    some (s2Step123EntryGvAfter,[s2Step123EntryFOut,s2Step123EntryGOut,s2Step123EntryFvOut,s2Step123EntryGvOut],(growRow 768 s2Step123EntryFFresh ++ (growRow 769 s2Step123EntryGFresh ++ (growRow 770 s2Step123EntryFvFresh ++ (growRow 771 s2Step123EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step123EntryGvAfter [] []=some (s2Step123EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step123EntryGvBefore s2Step123EntryGvAfter s2Step123EntryGvAfter
    s2Step123EntryGvRow s2Step123EntryGvOut 75 s2Step123EntryGvFresh [] [] []
    (growRow 771 s2Step123EntryGvFresh) ([]) s2Step123EntryGv_Incoming s2Step123EntryGv_checked h4 s2Step123EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step123EntryFvBefore s2Step123EntryFvAfter s2Step123EntryGvAfter
    s2Step123EntryFvRow s2Step123EntryFvOut 75 s2Step123EntryFvFresh [(s2Step123EntryGvRow,75)] [s2Step123EntryGvFresh] [s2Step123EntryGvOut]
    (growRow 770 s2Step123EntryFvFresh) ((growRow 771 s2Step123EntryGvFresh ++ [])) s2Step123EntryFv_Incoming s2Step123EntryFv_checked h3 s2Step123EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step123EntryGBefore s2Step123EntryGAfter s2Step123EntryGvAfter
    s2Step123EntryGRow s2Step123EntryGOut 208 s2Step123EntryGFresh [(s2Step123EntryFvRow,75),(s2Step123EntryGvRow,75)] [s2Step123EntryFvFresh,s2Step123EntryGvFresh] [s2Step123EntryFvOut,s2Step123EntryGvOut]
    (growRow 769 s2Step123EntryGFresh) ((growRow 770 s2Step123EntryFvFresh ++ (growRow 771 s2Step123EntryGvFresh ++ []))) s2Step123EntryG_Incoming s2Step123EntryG_checked h2 s2Step123EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step123EntryFBefore s2Step123EntryFAfter s2Step123EntryGvAfter
    s2Step123EntryFRow s2Step123EntryFOut 208 s2Step123EntryFFresh [(s2Step123EntryGRow,208),(s2Step123EntryFvRow,75),(s2Step123EntryGvRow,75)] [s2Step123EntryGFresh,s2Step123EntryFvFresh,s2Step123EntryGvFresh] [s2Step123EntryGOut,s2Step123EntryFvOut,s2Step123EntryGvOut]
    (growRow 768 s2Step123EntryFFresh) ((growRow 769 s2Step123EntryGFresh ++ (growRow 770 s2Step123EntryFvFresh ++ (growRow 771 s2Step123EntryGvFresh ++ [])))) s2Step123EntryF_Incoming s2Step123EntryF_checked h1 s2Step123EntryF_Outgoing
  exact h0

private theorem s2Step123EntryBank_checked : compileHmrBankResizeLog .entry s2Step123EntryFBefore ⟨s2Step123EntryFRow,s2Step123EntryGRow,s2Step123EntryFvRow,s2Step123EntryGvRow⟩ ⟨208,208,75,75⟩ [s2Step123EntryFFresh,s2Step123EntryGFresh,s2Step123EntryFvFresh,s2Step123EntryGvFresh]=
    some (s2Step123EntryGvAfter,⟨s2Step123EntryFOut,s2Step123EntryGOut,s2Step123EntryFvOut,s2Step123EntryGvOut⟩,(growRow 768 s2Step123EntryFFresh ++ (growRow 769 s2Step123EntryGFresh ++ (growRow 770 s2Step123EntryFvFresh ++ (growRow 771 s2Step123EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step123EntryBank_rows]
  rfl

private def s2Step123ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<719) ∨ (720≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<824) ∨ (826≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step123ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<824) ∨ (826≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step123ExitFBefore : Arena := s2Step123ExitGAfter

private def s2Step123ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 781],768⟩

private def s2Step123ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792],770⟩

private def s2Step123ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 817, 824],769⟩

private def s2Step123ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 802],771⟩

private theorem s2Step123ExitBank_incomingDistinct : ([s2Step123ExitGRow,s2Step123ExitFRow,s2Step123ExitFvRow,s2Step123ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step123ExitF_Incoming : rowsOwned s2Step123ExitFBefore [s2Step123ExitFRow,s2Step123ExitFvRow,s2Step123ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step123ExitGRow,s2Step123ExitFRow,s2Step123ExitFvRow,s2Step123ExitGvRow] 1 s2Step123ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step123ExitFBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<824) ∨ (826≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step123ExitBank_outgoingOwned : rowsOwned s2Step123ExitGvAfter [s2Step123ExitGOut,s2Step123ExitFOut,s2Step123ExitFvOut,s2Step123ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step123ExitGvAfter (fun q => (0≤q ∧ q<719) ∨ (720≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<815) ∨ (816≤q ∧ q<824) ∨ (826≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step123ExitF_Outgoing : rowsOwned s2Step123ExitGvAfter [s2Step123ExitFOut,s2Step123ExitFvOut,s2Step123ExitGvOut] :=
  hmrRows_owned_drop s2Step123ExitGvAfter [s2Step123ExitGOut,s2Step123ExitFOut,s2Step123ExitFvOut,s2Step123ExitGvOut] 1 s2Step123ExitBank_outgoingOwned

private theorem s2Step123ExitF_distinct : (s2Step123ExitFRow.sign::s2Step123ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step123ExitF_owned : (s2Step123ExitFRow.sign::s2Step123ExitFRow.payload).toFinset⊆s2Step123ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step123ExitFBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<824) ∨ (826≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step123ExitF_retired : s2Step123ExitFBefore.retireSet s2Step123ExitFExtra.toFinset=s2Step123ExitFAfter := by
  unfold Arena.retireSet s2Step123ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step123ExitFBefore,s2Step123ExitGAfter,s2Step123ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step123ExitF_checked : planRowResizeLog s2Step123ExitFBefore s2Step123ExitFRow 207 []=
    some (s2Step123ExitFAfter,s2Step123ExitFOut,shrinkRow 768 s2Step123ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step123ExitFBefore s2Step123ExitFRow 207 s2Step123ExitF_distinct s2Step123ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step123ExitFRow.payload.take 207) s2Step123ExitFRow.sign=s2Step123ExitFOut := by decide +kernel
  have hi : s2Step123ExitFRow.payload.drop 207=s2Step123ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step123ExitF_retired] at result
  exact result

private def s2Step123ExitFvAfter : Arena := s2Step123ExitFAfter

private def s2Step123ExitFvBefore : Arena := s2Step123ExitFAfter

private theorem s2Step123ExitFv_Incoming : rowsOwned s2Step123ExitFvBefore [s2Step123ExitFvRow,s2Step123ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step123ExitGRow,s2Step123ExitFRow,s2Step123ExitFvRow,s2Step123ExitGvRow] 2 s2Step123ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step123ExitFvBefore (fun q => (0≤q ∧ q<719) ∨ (720≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<824) ∨ (826≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step123ExitFv_Outgoing : rowsOwned s2Step123ExitGvAfter [s2Step123ExitFvOut,s2Step123ExitGvOut] :=
  hmrRows_owned_drop s2Step123ExitGvAfter [s2Step123ExitGOut,s2Step123ExitFOut,s2Step123ExitFvOut,s2Step123ExitGvOut] 2 s2Step123ExitBank_outgoingOwned

private theorem s2Step123ExitFv_distinct : (s2Step123ExitFvRow.sign::s2Step123ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step123ExitFv_owned : (s2Step123ExitFvRow.sign::s2Step123ExitFvRow.payload).toFinset⊆s2Step123ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step123ExitFvBefore (fun q => (0≤q ∧ q<719) ∨ (720≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<824) ∨ (826≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step123ExitFv_reserved : s2Step123ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step123ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step123ExitFv_checked : planRowResizeLog s2Step123ExitFvBefore s2Step123ExitFvRow 76 []=
    some (s2Step123ExitFvAfter,s2Step123ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step123ExitFvBefore s2Step123ExitFvAfter s2Step123ExitFvRow 76 []
    s2Step123ExitFv_distinct s2Step123ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step123ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step123ExitFvRow.payload++[]) s2Step123ExitFvRow.sign=s2Step123ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step123ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<825) ∨ (826≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private theorem s2Step123ExitG_Incoming : rowsOwned s2Step123ExitGBefore [s2Step123ExitGRow,s2Step123ExitFRow,s2Step123ExitFvRow,s2Step123ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step123ExitGRow,s2Step123ExitFRow,s2Step123ExitFvRow,s2Step123ExitGvRow] 0 s2Step123ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step123ExitGBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<825) ∨ (826≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step123ExitG_Outgoing : rowsOwned s2Step123ExitGvAfter [s2Step123ExitGOut,s2Step123ExitFOut,s2Step123ExitFvOut,s2Step123ExitGvOut] :=
  hmrRows_owned_drop s2Step123ExitGvAfter [s2Step123ExitGOut,s2Step123ExitFOut,s2Step123ExitFvOut,s2Step123ExitGvOut] 0 s2Step123ExitBank_outgoingOwned

private theorem s2Step123ExitG_distinct : (s2Step123ExitGRow.sign::s2Step123ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step123ExitG_owned : (s2Step123ExitGRow.sign::s2Step123ExitGRow.payload).toFinset⊆s2Step123ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step123ExitGBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<825) ∨ (826≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step123ExitG_retired : s2Step123ExitGBefore.retireSet s2Step123ExitGExtra.toFinset=s2Step123ExitGAfter := by
  unfold Arena.retireSet s2Step123ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step123ExitGBefore,s2Step123ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step123ExitG_checked : planRowResizeLog s2Step123ExitGBefore s2Step123ExitGRow 208 []=
    some (s2Step123ExitGAfter,s2Step123ExitGOut,shrinkRow 769 s2Step123ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step123ExitGBefore s2Step123ExitGRow 208 s2Step123ExitG_distinct s2Step123ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step123ExitGRow.payload.take 208) s2Step123ExitGRow.sign=s2Step123ExitGOut := by decide +kernel
  have hi : s2Step123ExitGRow.payload.drop 208=s2Step123ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step123ExitG_retired] at result
  exact result

private def s2Step123ExitGvBefore : Arena := s2Step123ExitFAfter

private theorem s2Step123ExitGv_Incoming : rowsOwned s2Step123ExitGvBefore [s2Step123ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step123ExitGRow,s2Step123ExitFRow,s2Step123ExitFvRow,s2Step123ExitGvRow] 3 s2Step123ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step123ExitGvBefore (fun q => (0≤q ∧ q<719) ∨ (720≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<824) ∨ (826≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step123ExitGv_Outgoing : rowsOwned s2Step123ExitGvAfter [s2Step123ExitGvOut] :=
  hmrRows_owned_drop s2Step123ExitGvAfter [s2Step123ExitGOut,s2Step123ExitFOut,s2Step123ExitFvOut,s2Step123ExitGvOut] 3 s2Step123ExitBank_outgoingOwned

private theorem s2Step123ExitGv_distinct : (s2Step123ExitGvRow.sign::s2Step123ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step123ExitGv_owned : (s2Step123ExitGvRow.sign::s2Step123ExitGvRow.payload).toFinset⊆s2Step123ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step123ExitGvBefore (fun q => (0≤q ∧ q<719) ∨ (720≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<824) ∨ (826≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step123ExitGv_retired : s2Step123ExitGvBefore.retireSet s2Step123ExitGvExtra.toFinset=s2Step123ExitGvAfter := by
  unfold Arena.retireSet s2Step123ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step123ExitGvBefore,s2Step123ExitFAfter,s2Step123ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step123ExitGv_checked : planRowResizeLog s2Step123ExitGvBefore s2Step123ExitGvRow 75 []=
    some (s2Step123ExitGvAfter,s2Step123ExitGvOut,shrinkRow 771 s2Step123ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step123ExitGvBefore s2Step123ExitGvRow 75 s2Step123ExitGv_distinct s2Step123ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step123ExitGvRow.payload.take 75) s2Step123ExitGvRow.sign=s2Step123ExitGvOut := by decide +kernel
  have hi : s2Step123ExitGvRow.payload.drop 75=s2Step123ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step123ExitGv_retired] at result
  exact result

private theorem s2Step123ExitBank_rows : planWindowRowsLog s2Step123ExitGBefore [(s2Step123ExitGRow,208),(s2Step123ExitFRow,207),(s2Step123ExitFvRow,76),(s2Step123ExitGvRow,75)] [[],[],[],[]]=
    some (s2Step123ExitGvAfter,[s2Step123ExitGOut,s2Step123ExitFOut,s2Step123ExitFvOut,s2Step123ExitGvOut],(shrinkRow 769 s2Step123ExitGExtra ++ (shrinkRow 768 s2Step123ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step123ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step123ExitGvAfter [] []=some (s2Step123ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step123ExitGvBefore s2Step123ExitGvAfter s2Step123ExitGvAfter
    s2Step123ExitGvRow s2Step123ExitGvOut 75 [] [] [] []
    (shrinkRow 771 s2Step123ExitGvExtra) ([]) s2Step123ExitGv_Incoming s2Step123ExitGv_checked h4 s2Step123ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step123ExitFvBefore s2Step123ExitFvAfter s2Step123ExitGvAfter
    s2Step123ExitFvRow s2Step123ExitFvOut 76 [] [(s2Step123ExitGvRow,75)] [[]] [s2Step123ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step123ExitGvExtra ++ [])) s2Step123ExitFv_Incoming s2Step123ExitFv_checked h3 s2Step123ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step123ExitFBefore s2Step123ExitFAfter s2Step123ExitGvAfter
    s2Step123ExitFRow s2Step123ExitFOut 207 [] [(s2Step123ExitFvRow,76),(s2Step123ExitGvRow,75)] [[],[]] [s2Step123ExitFvOut,s2Step123ExitGvOut]
    (shrinkRow 768 s2Step123ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step123ExitGvExtra ++ []))) s2Step123ExitF_Incoming s2Step123ExitF_checked h2 s2Step123ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step123ExitGBefore s2Step123ExitGAfter s2Step123ExitGvAfter
    s2Step123ExitGRow s2Step123ExitGOut 208 [] [(s2Step123ExitFRow,207),(s2Step123ExitFvRow,76),(s2Step123ExitGvRow,75)] [[],[],[]] [s2Step123ExitFOut,s2Step123ExitFvOut,s2Step123ExitGvOut]
    (shrinkRow 769 s2Step123ExitGExtra) ((shrinkRow 768 s2Step123ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step123ExitGvExtra ++ [])))) s2Step123ExitG_Incoming s2Step123ExitG_checked h1 s2Step123ExitG_Outgoing
  exact h0

private theorem s2Step123ExitBank_checked : compileHmrBankResizeLog .exit s2Step123ExitGBefore ⟨s2Step123ExitFRow,s2Step123ExitGRow,s2Step123ExitFvRow,s2Step123ExitGvRow⟩ ⟨207,208,76,75⟩ [[],[],[],[]]=
    some (s2Step123ExitGvAfter,⟨s2Step123ExitFOut,s2Step123ExitGOut,s2Step123ExitFvOut,s2Step123ExitGvOut⟩,(shrinkRow 769 s2Step123ExitGExtra ++ (shrinkRow 768 s2Step123ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step123ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step123ExitBank_rows]
  rfl

private theorem s2Step123Add0_apart : Disjoint s2Step123Add0Arena.live s2Step123Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step123Add0Arena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step123Add0_card : s2Step123Add0Arena.live.card=877 := by
  decide +kernel

private theorem s2Step123Add0_borrowed : s2Step123Add0Arena.checkBorrow (hmrHybridCount s2Step123Add0Arena s2Step123Add0B.length) s2Step123Add0Work=some s2Step123Add0During := by
  have len : s2Step123Add0Work.length=hmrHybridCount s2Step123Add0Arena s2Step123Add0B.length := by
    rw [hmrHybridCount,s2Step123Add0_card]
    decide +kernel
  have nd : s2Step123Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step123Add0Arena s2Step123Add0During s2Step123Add0Work.toFinset s2Step123Add0_bounded s2Step123Add0_apart rfl

private theorem s2Step123Add0_distinct : (825::832::849::(s2Step123Add0A++s2Step123Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step123Add0_owned : (825::832::849::(s2Step123Add0A++s2Step123Add0B)).toFinset⊆s2Step123Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step123Add0Arena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step123Add0_checked : compileHmrHybridCinLog s2Step123Add0Arena 832 825 849 s2Step123Add0A s2Step123Add0B s2Step123Add0Work=some s2Step123Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step123Add0Arena s2Step123Add0During 832 825 849 s2Step123Add0A s2Step123Add0B s2Step123Add0Work
    (by decide +kernel) (by decide +kernel) s2Step123Add0_distinct
    (fun q hq => s2Step123Add0_owned (List.mem_toFinset.mpr hq)) s2Step123Add0_borrowed

private theorem s2Step123Add1_apart : Disjoint s2Step123Add1Arena.live s2Step123Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step123Add1Arena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step123Add1_card : s2Step123Add1Arena.live.card=877 := by
  decide +kernel

private theorem s2Step123Add1_borrowed : s2Step123Add1Arena.checkBorrow (hmrHybridCount s2Step123Add1Arena s2Step123Add1B.length) s2Step123Add1Work=some s2Step123Add1During := by
  have len : s2Step123Add1Work.length=hmrHybridCount s2Step123Add1Arena s2Step123Add1B.length := by
    rw [hmrHybridCount,s2Step123Add1_card]
    decide +kernel
  have nd : s2Step123Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step123Add1Arena s2Step123Add1During s2Step123Add1Work.toFinset s2Step123Add1_bounded s2Step123Add1_apart rfl

private theorem s2Step123Add1_distinct : (825::832::849::(s2Step123Add1A++s2Step123Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step123Add1_owned : (825::832::849::(s2Step123Add1A++s2Step123Add1B)).toFinset⊆s2Step123Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step123Add1Arena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step123Add1_checked : compileHmrHybridCinLog s2Step123Add1Arena 832 825 849 s2Step123Add1A s2Step123Add1B s2Step123Add1Work=some s2Step123Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step123Add1Arena s2Step123Add1During 832 825 849 s2Step123Add1A s2Step123Add1B s2Step123Add1Work
    (by decide +kernel) (by decide +kernel) s2Step123Add1_distinct
    (fun q hq => s2Step123Add1_owned (List.mem_toFinset.mpr hq)) s2Step123Add1_borrowed

private theorem s2Step123F4_apart : Disjoint (s2Step123Add0A++s2Step123Add0B).toFinset (s2Step123Add1A++s2Step123Add1B).toFinset := by
  have nd : ((s2Step123Add0A++s2Step123Add0B)++(s2Step123Add1A++s2Step123Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step123F4_carry : s2Step123F4FlagArena.checkBorrow 1 [849]=some s2Step123Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step123F4FlagArena,s2Step123HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step123F4FlagArena,s2Step123HeadFvAfter,s2Step123Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step123F4_distinct : (819::832::825::849::((s2Step123Add0A++s2Step123Add1A)++(s2Step123Add0B++s2Step123Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step123F4_flag : s2Step123HeadFvAfter.checkBorrow 1 [825]=some s2Step123F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step123HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step123F4_owned : (819::832::((s2Step123Add0A++s2Step123Add1A)++(s2Step123Add0B++s2Step123Add1B))).toFinset⊆s2Step123HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step123HeadFvAfter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<825) ∨ (826≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step123F4_checked : compileHmrHybridF4Log s2Step123HeadFvAfter 819 832 s2Step123Add0A s2Step123Add0B s2Step123Add1A s2Step123Add1B [825] [849] s2Step123Add0Work s2Step123Add1Work=some s2Step123F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step123HeadFvAfter s2Step123F4FlagArena s2Step123Add0Arena s2Step123Add0During s2Step123Add1During 819 832
    s2Step123Add0A s2Step123Add0B s2Step123Add1A s2Step123Add1B [825] [849] s2Step123Add0Work s2Step123Add1Work
    (fun q hq => s2Step123F4_owned (List.mem_toFinset.mpr hq)) s2Step123F4_flag s2Step123F4_carry
    s2Step123F4_distinct s2Step123F4_apart s2Step123Add0_checked s2Step123Add1_checked

private theorem s2Step123Front_branch : s2Step123FrontSigmaArena.checkBorrow 1 [832]=some s2Step123HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step123FrontSigmaArena,s2Step123EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step123FrontSigmaArena,s2Step123EntryGvAfter,s2Step123HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step123Front_entry : HmrFrontEntryValid s2Step123EntryFBefore s2Step123FrontBank 208 75 ⟨207,208,76,75⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step123FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step123EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step123EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<815) ∨ (816≤q ∧ q<819) ∨ (820≤q ∧ q<824) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step123FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step123Front_sigma : s2Step123EntryGvAfter.checkBorrow 1 [819]=some s2Step123FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step123EntryGvAfter,arenaWires]
  · rfl

private def s2Step123HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<815) ∨ (816≤q ∧ q<825) ∨ (826≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step123HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<815) ∨ (816≤q ∧ q<825) ∨ (826≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step123HeadFBefore : Arena := s2Step123HeadGAfter

private def s2Step123HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719],768⟩

private def s2Step123HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807],770⟩

private def s2Step123HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 817],769⟩

private def s2Step123HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806],771⟩

private theorem s2Step123HeadBank_incomingDistinct : ([s2Step123HeadGRow,s2Step123HeadFRow,s2Step123HeadGvRow,s2Step123HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step123HeadF_Incoming : rowsOwned s2Step123HeadFBefore [s2Step123HeadFRow,s2Step123HeadGvRow,s2Step123HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step123HeadGRow,s2Step123HeadFRow,s2Step123HeadGvRow,s2Step123HeadFvRow] 1 s2Step123HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step123HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<815) ∨ (816≤q ∧ q<825) ∨ (826≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step123HeadBank_outgoingOwned : rowsOwned s2Step123HeadFvAfter [s2Step123HeadGOut,s2Step123HeadFOut,s2Step123HeadGvOut,s2Step123HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step123HeadFvAfter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<825) ∨ (826≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step123HeadF_Outgoing : rowsOwned s2Step123HeadFvAfter [s2Step123HeadFOut,s2Step123HeadGvOut,s2Step123HeadFvOut] :=
  hmrRows_owned_drop s2Step123HeadFvAfter [s2Step123HeadGOut,s2Step123HeadFOut,s2Step123HeadGvOut,s2Step123HeadFvOut] 1 s2Step123HeadBank_outgoingOwned

private theorem s2Step123HeadF_distinct : (s2Step123HeadFRow.sign::s2Step123HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step123HeadF_owned : (s2Step123HeadFRow.sign::s2Step123HeadFRow.payload).toFinset⊆s2Step123HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step123HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<815) ∨ (816≤q ∧ q<825) ∨ (826≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step123HeadF_reserved : s2Step123HeadFBefore.reserve s2Step123HeadFFresh.toFinset=some s2Step123HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step123HeadFFresh,arenaWires]
  · norm_num [s2Step123HeadFBefore,s2Step123HeadGAfter,s2Step123HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step123HeadFAfter,s2Step123HeadFBefore,s2Step123HeadGAfter,s2Step123HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step123HeadF_checked : planRowResizeLog s2Step123HeadFBefore s2Step123HeadFRow 209 s2Step123HeadFFresh=
    some (s2Step123HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 781],768⟩,growRow 768 s2Step123HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step123HeadFBefore s2Step123HeadFAfter s2Step123HeadFRow 209 s2Step123HeadFFresh
    s2Step123HeadF_distinct s2Step123HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step123HeadF_reserved
  have rowEq : WindowRow.mk (s2Step123HeadFRow.payload++s2Step123HeadFFresh) s2Step123HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 781],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step123HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<815) ∨ (816≤q ∧ q<825) ∨ (826≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step123HeadFvBefore : Arena := s2Step123HeadGvAfter

private theorem s2Step123HeadFv_Incoming : rowsOwned s2Step123HeadFvBefore [s2Step123HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step123HeadGRow,s2Step123HeadFRow,s2Step123HeadGvRow,s2Step123HeadFvRow] 3 s2Step123HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step123HeadFvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<815) ∨ (816≤q ∧ q<825) ∨ (826≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step123HeadFv_Outgoing : rowsOwned s2Step123HeadFvAfter [s2Step123HeadFvOut] :=
  hmrRows_owned_drop s2Step123HeadFvAfter [s2Step123HeadGOut,s2Step123HeadFOut,s2Step123HeadGvOut,s2Step123HeadFvOut] 3 s2Step123HeadBank_outgoingOwned

private theorem s2Step123HeadFv_distinct : (s2Step123HeadFvRow.sign::s2Step123HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step123HeadFv_owned : (s2Step123HeadFvRow.sign::s2Step123HeadFvRow.payload).toFinset⊆s2Step123HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step123HeadFvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<815) ∨ (816≤q ∧ q<825) ∨ (826≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step123HeadFv_reserved : s2Step123HeadFvBefore.reserve s2Step123HeadFvFresh.toFinset=some s2Step123HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step123HeadFvFresh,arenaWires]
  · norm_num [s2Step123HeadFvBefore,s2Step123HeadGvAfter,s2Step123HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step123HeadFvAfter,s2Step123HeadFvBefore,s2Step123HeadGvAfter,s2Step123HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step123HeadFv_checked : planRowResizeLog s2Step123HeadFvBefore s2Step123HeadFvRow 76 s2Step123HeadFvFresh=
    some (s2Step123HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792],770⟩,growRow 770 s2Step123HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step123HeadFvBefore s2Step123HeadFvAfter s2Step123HeadFvRow 76 s2Step123HeadFvFresh
    s2Step123HeadFv_distinct s2Step123HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step123HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step123HeadFvRow.payload++s2Step123HeadFvFresh) s2Step123HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step123HeadG_Incoming : rowsOwned s2Step123HeadGBefore [s2Step123HeadGRow,s2Step123HeadFRow,s2Step123HeadGvRow,s2Step123HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step123HeadGRow,s2Step123HeadFRow,s2Step123HeadGvRow,s2Step123HeadFvRow] 0 s2Step123HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step123HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<815) ∨ (816≤q ∧ q<824) ∨ (826≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step123HeadG_Outgoing : rowsOwned s2Step123HeadFvAfter [s2Step123HeadGOut,s2Step123HeadFOut,s2Step123HeadGvOut,s2Step123HeadFvOut] :=
  hmrRows_owned_drop s2Step123HeadFvAfter [s2Step123HeadGOut,s2Step123HeadFOut,s2Step123HeadGvOut,s2Step123HeadFvOut] 0 s2Step123HeadBank_outgoingOwned

private theorem s2Step123HeadG_distinct : (s2Step123HeadGRow.sign::s2Step123HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step123HeadG_owned : (s2Step123HeadGRow.sign::s2Step123HeadGRow.payload).toFinset⊆s2Step123HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step123HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<815) ∨ (816≤q ∧ q<824) ∨ (826≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step123HeadG_reserved : s2Step123HeadGBefore.reserve s2Step123HeadGFresh.toFinset=some s2Step123HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step123HeadGFresh,arenaWires]
  · norm_num [s2Step123HeadGBefore,s2Step123HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step123HeadGAfter,s2Step123HeadGBefore,s2Step123HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step123HeadG_checked : planRowResizeLog s2Step123HeadGBefore s2Step123HeadGRow 209 s2Step123HeadGFresh=
    some (s2Step123HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 817, 824],769⟩,growRow 769 s2Step123HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step123HeadGBefore s2Step123HeadGAfter s2Step123HeadGRow 209 s2Step123HeadGFresh
    s2Step123HeadG_distinct s2Step123HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step123HeadG_reserved
  have rowEq : WindowRow.mk (s2Step123HeadGRow.payload++s2Step123HeadGFresh) s2Step123HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 817, 824],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step123HeadGvBefore : Arena := s2Step123HeadFAfter

private theorem s2Step123HeadGv_Incoming : rowsOwned s2Step123HeadGvBefore [s2Step123HeadGvRow,s2Step123HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step123HeadGRow,s2Step123HeadFRow,s2Step123HeadGvRow,s2Step123HeadFvRow] 2 s2Step123HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step123HeadGvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<815) ∨ (816≤q ∧ q<825) ∨ (826≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step123HeadGv_Outgoing : rowsOwned s2Step123HeadFvAfter [s2Step123HeadGvOut,s2Step123HeadFvOut] :=
  hmrRows_owned_drop s2Step123HeadFvAfter [s2Step123HeadGOut,s2Step123HeadFOut,s2Step123HeadGvOut,s2Step123HeadFvOut] 2 s2Step123HeadBank_outgoingOwned

private theorem s2Step123HeadGv_distinct : (s2Step123HeadGvRow.sign::s2Step123HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step123HeadGv_owned : (s2Step123HeadGvRow.sign::s2Step123HeadGvRow.payload).toFinset⊆s2Step123HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step123HeadGvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<815) ∨ (816≤q ∧ q<825) ∨ (826≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step123HeadGv_reserved : s2Step123HeadGvBefore.reserve s2Step123HeadGvFresh.toFinset=some s2Step123HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step123HeadGvFresh,arenaWires]
  · norm_num [s2Step123HeadGvBefore,s2Step123HeadFAfter,s2Step123HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step123HeadGvAfter,s2Step123HeadGvBefore,s2Step123HeadFAfter,s2Step123HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step123HeadGv_checked : planRowResizeLog s2Step123HeadGvBefore s2Step123HeadGvRow 76 s2Step123HeadGvFresh=
    some (s2Step123HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 802],771⟩,growRow 771 s2Step123HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step123HeadGvBefore s2Step123HeadGvAfter s2Step123HeadGvRow 76 s2Step123HeadGvFresh
    s2Step123HeadGv_distinct s2Step123HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step123HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step123HeadGvRow.payload++s2Step123HeadGvFresh) s2Step123HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 802],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step123HeadBank_rows : planWindowRowsLog s2Step123HeadGBefore [(s2Step123HeadGRow,209),(s2Step123HeadFRow,209),(s2Step123HeadGvRow,76),(s2Step123HeadFvRow,76)] [s2Step123HeadGFresh,s2Step123HeadFFresh,s2Step123HeadGvFresh,s2Step123HeadFvFresh]=
    some (s2Step123HeadFvAfter,[s2Step123HeadGOut,s2Step123HeadFOut,s2Step123HeadGvOut,s2Step123HeadFvOut],(growRow 769 s2Step123HeadGFresh ++ (growRow 768 s2Step123HeadFFresh ++ (growRow 771 s2Step123HeadGvFresh ++ (growRow 770 s2Step123HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step123HeadFvAfter [] []=some (s2Step123HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step123HeadFvBefore s2Step123HeadFvAfter s2Step123HeadFvAfter
    s2Step123HeadFvRow s2Step123HeadFvOut 76 s2Step123HeadFvFresh [] [] []
    (growRow 770 s2Step123HeadFvFresh) ([]) s2Step123HeadFv_Incoming s2Step123HeadFv_checked h4 s2Step123HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step123HeadGvBefore s2Step123HeadGvAfter s2Step123HeadFvAfter
    s2Step123HeadGvRow s2Step123HeadGvOut 76 s2Step123HeadGvFresh [(s2Step123HeadFvRow,76)] [s2Step123HeadFvFresh] [s2Step123HeadFvOut]
    (growRow 771 s2Step123HeadGvFresh) ((growRow 770 s2Step123HeadFvFresh ++ [])) s2Step123HeadGv_Incoming s2Step123HeadGv_checked h3 s2Step123HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step123HeadFBefore s2Step123HeadFAfter s2Step123HeadFvAfter
    s2Step123HeadFRow s2Step123HeadFOut 209 s2Step123HeadFFresh [(s2Step123HeadGvRow,76),(s2Step123HeadFvRow,76)] [s2Step123HeadGvFresh,s2Step123HeadFvFresh] [s2Step123HeadGvOut,s2Step123HeadFvOut]
    (growRow 768 s2Step123HeadFFresh) ((growRow 771 s2Step123HeadGvFresh ++ (growRow 770 s2Step123HeadFvFresh ++ []))) s2Step123HeadF_Incoming s2Step123HeadF_checked h2 s2Step123HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step123HeadGBefore s2Step123HeadGAfter s2Step123HeadFvAfter
    s2Step123HeadGRow s2Step123HeadGOut 209 s2Step123HeadGFresh [(s2Step123HeadFRow,209),(s2Step123HeadGvRow,76),(s2Step123HeadFvRow,76)] [s2Step123HeadFFresh,s2Step123HeadGvFresh,s2Step123HeadFvFresh] [s2Step123HeadFOut,s2Step123HeadGvOut,s2Step123HeadFvOut]
    (growRow 769 s2Step123HeadGFresh) ((growRow 768 s2Step123HeadFFresh ++ (growRow 771 s2Step123HeadGvFresh ++ (growRow 770 s2Step123HeadFvFresh ++ [])))) s2Step123HeadG_Incoming s2Step123HeadG_checked h1 s2Step123HeadG_Outgoing
  exact h0

private theorem s2Step123HeadBank_checked : compileHmrBankResizeLog .headroom s2Step123HeadGBefore ⟨s2Step123HeadFRow,s2Step123HeadGRow,s2Step123HeadFvRow,s2Step123HeadGvRow⟩ ⟨209,209,76,76⟩ [s2Step123HeadGFresh,s2Step123HeadFFresh,s2Step123HeadGvFresh,s2Step123HeadFvFresh]=
    some (s2Step123HeadFvAfter,⟨s2Step123HeadFOut,s2Step123HeadGOut,s2Step123HeadFvOut,s2Step123HeadGvOut⟩,(growRow 769 s2Step123HeadGFresh ++ (growRow 768 s2Step123HeadFFresh ++ (growRow 771 s2Step123HeadGvFresh ++ (growRow 770 s2Step123HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step123HeadBank_rows]
  rfl

private theorem s2Step123Front_checked : compileHmrSourceFrontLog s2Step123EntryFBefore s2Step123FrontBank 208 75 ⟨207,208,76,75⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step123FrontLog=some s2Step123FrontPlan := by
  have pairEq : s2Step123FrontPair=⟨s2Step123HeadFRow,s2Step123HeadGRow,s2Step123HeadFvRow,s2Step123HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step123FrontHead=⟨s2Step123ExitFRow,s2Step123ExitGRow,s2Step123ExitFvRow,s2Step123ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step123Add0A=s2Step123FrontHead.f.wires := by decide +kernel
  have gEq : s2Step123Add0B=s2Step123FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step123Add1A=s2Step123FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step123Add1B=s2Step123FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step123EntryFBefore s2Step123FrontBank 208 75 ⟨207,208,76,75⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step123FrontLog s2Step123FrontPlan
  · exact s2Step123Front_entry
  · exact s2Step123EntryBank_checked
  · exact s2Step123Front_sigma
  · rfl
  · exact s2Step123Front_branch
  · rfl
  · simpa only [s2Step123FrontPlan,pairEq] using s2Step123HeadBank_checked
  · simpa only [s2Step123FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step123F4_checked
  · exact s2Step123Counter_checked
  · rfl
  · simpa only [s2Step123FrontPlan,headEq] using s2Step123ExitBank_checked

private theorem s2Step123Complete_explicit_checked : compileHmrEarlyStepLog s2Step123EntryFBefore s2Step123FrontBank 208 75 ⟨207,208,76,75⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step123CompleteLog=some s2Step123CompletePlan := by
  let Q := s2Step123EarlyControlPlan
  have hq := s2Step123EarlyControl_plan_checked
  have fv1 : s2Step123CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step123CompleteOut.fv.payload[2]?.getD s2Step123CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step123CompleteOut.fv.payload[3]?.getD s2Step123CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step123CompleteOut.fv.payload[4]?.getD s2Step123CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step123EntryFBefore s2Step123EarlyControlArena s2Step123FrontBank 208 75 ⟨207,208,76,75⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step123CompleteLog s2Step123FrontPlan Q
    s2Step123Front_checked s2Step123Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step123Complete_owned s2Step123Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step123EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 819 s2Step123CompleteOut.fv.second (s2Step123CompleteOut.fv.payload[2]?.getD s2Step123CompleteOut.fv.sign) (s2Step123CompleteOut.fv.payload[3]?.getD s2Step123CompleteOut.fv.sign) (s2Step123CompleteOut.fv.payload[4]?.getD s2Step123CompleteOut.fv.sign) 832 37 s2Step123EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep123Arena : Arena := s2Step123EntryFBefore
def s2PrivateStep123Bank : WindowBank := s2Step123FrontBank
def s2PrivateStep123Spec : HmrSourceWalkStepLog := ⟨208,75,⟨207,208,76,75⟩,37,.early s2Step123CompleteLog⟩
def s2PrivateStep123Plan : HmrSourceStepPlan := .early s2Step123CompletePlan
theorem s2PrivateStep123_source : s2PrivateStep123Spec=s2ObservedLogs112[11] := rfl
theorem s2PrivateStep123_checked : compileHmrSourceStepLog s2PrivateStep123Arena s2PrivateStep123Bank
    s2PrivateStep123Spec.fgWidth s2PrivateStep123Spec.vWidth s2PrivateStep123Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881]
    6 498 123 s2PrivateStep123Spec.need none s2PrivateStep123Spec.log=some s2PrivateStep123Plan := by
  change compileHmrSourceStepLog s2Step123EntryFBefore s2Step123FrontBank 208 75 ⟨207,208,76,75⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 6 498 123 37 none (.early s2Step123CompleteLog)=some (.early s2Step123CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 123<498)]
  rw [s2Step123Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
