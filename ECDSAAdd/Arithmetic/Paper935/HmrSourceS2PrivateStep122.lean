import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep120
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

private def s2Step122CompleteMoves : List (Wire × Wire) := [(824,720),(832,721)]

private def s2Step122EarlyControlLog : HmrEarlyControlLog := ⟨[832, 824, 781, 802, 792],[825],[849],[790, 815, 867, 877, 879, 882],[]⟩

private def s2Step122FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [817, 792, 825], [], []],[[849], [802], [781], [807]],[[], [], [], []]⟩,[819],[806],[790],[815],[867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[790, 815, 867, 877]⟩

private def s2Step122CompleteLog : HmrEarlyStepLog := ⟨s2Step122FrontLog,s2Step122CompleteMoves,s2Step122EarlyControlLog⟩

private def s2Step122ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719],768⟩

private def s2Step122ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807],770⟩

private def s2Step122ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 817],769⟩

private def s2Step122ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830],771⟩

private def s2Step122FrontOut : WindowBank := ⟨s2Step122ExitFOut,s2Step122ExitGOut,s2Step122ExitFvOut,s2Step122ExitGvOut⟩

private def s2Step122CompleteOut : WindowBank := s2Step122FrontOut.repacked s2Step122CompleteMoves

private def s2Step122EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<815) ∨ (816≤q ∧ q<824) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step122EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step122EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step122EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step122EarlyControlPositiveArena,[825],s2Step122EarlyControlEqualityArena,[849],⟨⟨819,false⟩,[⟨⟨825,false⟩,849⟩]⟩⟩

private def s2Step122EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<883)),Finset.filter_subset _ _⟩

private def s2Step122EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<883)),Finset.filter_subset _ _⟩

private def s2Step122EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<815) ∨ (816≤q ∧ q<824) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step122EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<815) ∨ (816≤q ∧ q<819) ∨ (820≤q ∧ q<824) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step122EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<815) ∨ (816≤q ∧ q<819) ∨ (820≤q ∧ q<824) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step122EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<825) ∨ (826≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step122EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,832⟩,⟨⟨774,false⟩,824⟩,⟨⟨775,false⟩,781⟩,⟨⟨776,false⟩,802⟩,⟨⟨777,false⟩,792⟩]⟩

private def s2Step122EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step122EarlyControlZeroArena,s2Step122EarlyControlZeroPlan,s2Step122EarlyControlClassPlan,s2Step122EarlyControlFlagArena,s2Step122EarlyControlFittedArena,s2Step122EarlyControlHistoryArena,s2Step122EarlyControlSigmaArena,s2Step122EarlyControlOutputArena,s2Step122EarlyControlLog⟩

private def s2Step122CounterWork : List Wire := [790, 815, 867, 877]

private theorem s2Step122Counter_bounded : s2Step122CounterWork.toFinset⊆arenaWires := by norm_num [s2Step122CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step122HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step122CounterDuring : Arena := ⟨s2Step122HeadFvAfter.live∪s2Step122CounterWork.toFinset,Finset.union_subset s2Step122HeadFvAfter.bounded s2Step122Counter_bounded⟩

private def s2Step122EntryFFresh : List Wire := []

private def s2Step122EntryFvFresh : List Wire := []

private def s2Step122EntryGFresh : List Wire := [817, 792, 825]

private def s2Step122EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<819) ∨ (820≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step122EntryGvAfter : Arena := s2Step122EntryGAfter

private def s2Step122EntryGvFresh : List Wire := []

private def s2Step122ExitFExtra : List Wire := [720, 721, 802]

private def s2Step122ExitGExtra : List Wire := [792, 825, 849]

private def s2Step122ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<720) ∨ (722≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<815) ∨ (816≤q ∧ q<825) ∨ (826≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step122ExitGvExtra : List Wire := [781]

private def s2Step122Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step122Add0Work : List Wire := [867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step122Add0_bounded : s2Step122Add0Work.toFinset⊆arenaWires := by
  have h : s2Step122Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step122Add0During : Arena := ⟨s2Step122Add0Arena.live∪s2Step122Add0Work.toFinset,Finset.union_subset s2Step122Add0Arena.bounded s2Step122Add0_bounded⟩

private def s2Step122Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step122Add1Work : List Wire := [867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step122Add1_bounded : s2Step122Add1Work.toFinset⊆arenaWires := by
  have h : s2Step122Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step122Add1During : Arena := ⟨s2Step122Add1Arena.live∪s2Step122Add1Work.toFinset,Finset.union_subset s2Step122Add1Arena.bounded s2Step122Add1_bounded⟩

private def s2Step122F4FlagArena : Arena := ⟨s2Step122HeadFvAfter.live∪{790},Finset.union_subset s2Step122HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step122F4Plan : HmrHybridF4Plan := ⟨s2Step122F4FlagArena,[790],s2Step122Add0Arena,[815],s2Step122Add0During,s2Step122Add0Work,s2Step122Add1During,s2Step122Add1Work⟩

private def s2Step122HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 802],768⟩

private def s2Step122HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807],770⟩

private def s2Step122HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 817, 792, 825, 849],769⟩

private def s2Step122HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 781],771⟩

private def s2Step122FrontHead : WindowBank := ⟨s2Step122HeadFOut,s2Step122HeadGOut,s2Step122HeadFvOut,s2Step122HeadGvOut⟩

private def s2Step122EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721],768⟩

private def s2Step122EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821],770⟩

private def s2Step122EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 817, 792, 825],769⟩

private def s2Step122EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830],771⟩

private def s2Step122FrontPair : WindowBank := ⟨s2Step122EntryFOut,s2Step122EntryGOut,s2Step122EntryFvOut,s2Step122EntryGvOut⟩

private def s2Step122FrontSigmaArena : Arena := ⟨s2Step122EntryGvAfter.live∪{819},Finset.union_subset s2Step122EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step122HeadFFresh : List Wire := [802]

private def s2Step122HeadFvFresh : List Wire := [807]

private def s2Step122HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<807) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step122HeadGFresh : List Wire := [849]

private def s2Step122HeadGvFresh : List Wire := [781]

private def s2Step122FrontPlan : HmrSourceFront := ⟨s2Step122EntryGvAfter,s2Step122FrontPair,(growRow 768 s2Step122EntryFFresh ++ (growRow 769 s2Step122EntryGFresh ++ (growRow 770 s2Step122EntryFvFresh ++ (growRow 771 s2Step122EntryGvFresh ++ [])))),s2Step122FrontSigmaArena,[819],s2Step122HeadGBefore,[806],
  s2Step122HeadFvAfter,s2Step122FrontHead,(growRow 769 s2Step122HeadGFresh ++ (growRow 768 s2Step122HeadFFresh ++ (growRow 771 s2Step122HeadGvFresh ++ (growRow 770 s2Step122HeadFvFresh ++ [])))),s2Step122F4Plan,s2Step122CounterDuring,s2Step122CounterWork,s2Step122ExitGvAfter,s2Step122FrontOut,(shrinkRow 769 s2Step122ExitGExtra ++ (shrinkRow 768 s2Step122ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step122ExitGvExtra ++ []))))⟩

private def s2Step122CompletePlan : HmrEarlyStepPlan := ⟨s2Step122FrontPlan,s2Step122EarlyControlArena,s2Step122EarlyControlPlan,s2Step122CompleteMoves⟩

private theorem s2Step122Complete_apart : List.Disjoint (s2Step122CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [819, 806, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] := by
  have nd : ((s2Step122CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[819, 806, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step122Complete_owned : (s2Step122CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step122EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step122EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<815) ∨ (816≤q ∧ q<824) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private def s2Step122CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,721),(722,781),(782,790),(791,792),(793,802),(803,815),(816,824),(826,849),(850,867),(868,877),(878,879),(880,882)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s2Step122CompleteRelocationMove0Borrowed : Arena := ⟨s2Step122ExitGvAfter.live∪{720},Finset.union_subset s2Step122ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step122CompleteRelocationMove1Borrowed : Arena := ⟨s2Step122CompleteRelocationMove0After.live∪{721},Finset.union_subset s2Step122CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s2Step122CompleteRelocation_move0_owned : 824∈s2Step122ExitGvAfter.live := by norm_num [s2Step122ExitGvAfter,arenaWires]

private theorem s2Step122CompleteRelocation_move0_reserve : s2Step122ExitGvAfter.reserve {720}=some s2Step122CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step122ExitGvAfter,arenaWires]
  · rfl

private theorem s2Step122CompleteRelocation_move0_retire : s2Step122CompleteRelocationMove0Borrowed.retireSet {824}=s2Step122CompleteRelocationMove0After := by
  unfold Arena.retireSet s2Step122CompleteRelocationMove0After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step122CompleteRelocationMove0Borrowed,s2Step122ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step122CompleteRelocation_move1_owned : 832∈s2Step122CompleteRelocationMove0After.live := by norm_num [s2Step122CompleteRelocationMove0After,arenaWires]

private theorem s2Step122CompleteRelocation_move1_reserve : s2Step122CompleteRelocationMove0After.reserve {721}=some s2Step122CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step122CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s2Step122CompleteRelocation_move1_retire : s2Step122CompleteRelocationMove1Borrowed.retireSet {832}=s2Step122EarlyControlArena := by
  unfold Arena.retireSet s2Step122EarlyControlArena
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step122CompleteRelocationMove1Borrowed,s2Step122CompleteRelocationMove0After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step122CompleteRelocation_checked : s2Step122ExitGvAfter.checkRepack [(824,720),(832,721)]=some s2Step122EarlyControlArena := by
  have tail2 : s2Step122EarlyControlArena.checkRepack []=some s2Step122EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s2Step122CompleteRelocationMove0After s2Step122CompleteRelocationMove1Borrowed s2Step122EarlyControlArena s2Step122EarlyControlArena 832 721 []
    s2Step122CompleteRelocation_move1_owned s2Step122CompleteRelocation_move1_reserve s2Step122CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s2Step122ExitGvAfter s2Step122CompleteRelocationMove0Borrowed s2Step122CompleteRelocationMove0After s2Step122EarlyControlArena 824 720 [(832,721)]
    s2Step122CompleteRelocation_move0_owned s2Step122CompleteRelocation_move0_reserve s2Step122CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s2Step122Complete_repack : s2Step122ExitGvAfter.checkRepack s2Step122CompleteMoves=some s2Step122EarlyControlArena := by
  simpa only [s2Step122CompleteMoves] using s2Step122CompleteRelocation_checked

private theorem s2Step122EarlyControl_branchOwned : ([806] : List Wire).toFinset⊆s2Step122EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step122EarlyControlSigmaArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<815) ∨ (816≤q ∧ q<819) ∨ (820≤q ∧ q<824) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step122EarlyControl_branch : compileHmrBranchRetirement s2Step122EarlyControlSigmaArena 806=some s2Step122EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step122EarlyControl_branchOwned
  · ext q
    simp [s2Step122EarlyControlOutputArena,s2Step122EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step122EarlyControl_classEqualityBorrow : s2Step122EarlyControlPositiveArena.checkBorrow (([819, 825] : List Wire).length-1) s2Step122EarlyControlLog.classWork=some s2Step122EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step122EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step122EarlyControlPositiveArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step122EarlyControlEqualityArena,s2Step122EarlyControlPositiveArena,s2Step122EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step122EarlyControl_classEqualityOwned : ([819, 825] : List Wire).toFinset⊆s2Step122EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step122EarlyControlPositiveArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step122EarlyControl_classEquality : compileHmrEqualityLog s2Step122EarlyControlPositiveArena [819, 825] 0 s2Step122EarlyControlLog.classWork=some (s2Step122EarlyControlEqualityArena,s2Step122EarlyControlLog.classWork,s2Step122EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step122EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step122EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step122EarlyControl_classOwned : ([777, 792, 819] : List Wire).toFinset⊆s2Step122EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step122EarlyControlZeroArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<825) ∨ (826≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step122EarlyControl_positiveBorrow : s2Step122EarlyControlZeroArena.checkBorrow (1) s2Step122EarlyControlLog.positiveWork=some s2Step122EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step122EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step122EarlyControlZeroArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<825) ∨ (826≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step122EarlyControlPositiveArena,s2Step122EarlyControlZeroArena,s2Step122EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step122EarlyControl_class : compileHmrSourceClassLog s2Step122EarlyControlZeroArena false 777 s2Step122EarlyControlZeroPlan.top 0 819 s2Step122EarlyControlLog.positiveWork s2Step122EarlyControlLog.classWork=some s2Step122EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step122EarlyControlClassPlan s2Step122EarlyControlZeroArena false 777 s2Step122EarlyControlZeroPlan.top 0 819
  constructor
  · decide +kernel
  · exact s2Step122EarlyControl_classOwned
  · exact s2Step122EarlyControl_positiveBorrow
  · exact s2Step122EarlyControl_classEquality

private theorem s2Step122EarlyControl_entryRecordOwned : ([806, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).toFinset⊆s2Step122EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step122EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<815) ∨ (816≤q ∧ q<824) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step122EarlyControl_entrySigmaOwned : ([819, 254] : List Wire).toFinset⊆s2Step122EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step122EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<815) ∨ (816≤q ∧ q<824) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step122EarlyControl_fitBorrow : s2Step122EarlyControlFlagArena.checkBorrow ((37-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).length)) s2Step122EarlyControlLog.recordFresh=some s2Step122EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step122EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step122EarlyControlFlagArena (fun q => (0≤q ∧ q<883)) rfl
      decide +kernel
    · ext q
      simp [s2Step122EarlyControlFittedArena,s2Step122EarlyControlFlagArena,s2Step122EarlyControlLog,arenaWires]

private theorem s2Step122EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).toFinset⊆s2Step122EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step122EarlyControlFlagArena (fun q => (0≤q ∧ q<883)) rfl
  decide +kernel

private theorem s2Step122EarlyControl_fit : compileHmrRecordGrowLog s2Step122EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step122EarlyControlLog.recordFresh=some s2Step122EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step122EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step122EarlyControl_fitBorrow

private theorem s2Step122EarlyControl_flagsBorrow : s2Step122EarlyControlEqualityArena.checkBorrow (6) s2Step122EarlyControlLog.flagWork=some s2Step122EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step122EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step122EarlyControlEqualityArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step122EarlyControlFlagArena,s2Step122EarlyControlEqualityArena,s2Step122EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step122EarlyControl_flagsOwned : ([849, 253, 252, 251] : List Wire).toFinset⊆s2Step122EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step122EarlyControlEqualityArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step122EarlyControl_flags : compileHmrFlagsLog s2Step122EarlyControlClassPlan.equalityArena s2Step122EarlyControlClassPlan.equality.top 253 252 251 s2Step122EarlyControlLog.flagWork=some s2Step122EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step122EarlyControl_flagsOwned⟩
  · exact s2Step122EarlyControl_flagsBorrow

private theorem s2Step122EarlyControl_historyBorrow : s2Step122EarlyControlArena.checkBorrow ((37-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).length)) s2Step122EarlyControlLog.recordFresh=some s2Step122EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step122EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step122EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<815) ∨ (816≤q ∧ q<824) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step122EarlyControlHistoryArena,s2Step122EarlyControlArena,s2Step122EarlyControlLog,arenaWires]

private theorem s2Step122EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).toFinset⊆s2Step122EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step122EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<815) ∨ (816≤q ∧ q<824) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step122EarlyControl_history : compileHmrRecordGrowLog s2Step122EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step122EarlyControlLog.recordFresh=some s2Step122EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step122EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step122EarlyControl_historyBorrow

private theorem s2Step122EarlyControl_sigmaOwned : ([254, 819] : List Wire).toFinset⊆s2Step122EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step122EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<815) ∨ (816≤q ∧ q<824) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step122EarlyControl_sigmaReleaseOwned : ([819] : List Wire).toFinset⊆s2Step122EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step122EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<815) ∨ (816≤q ∧ q<824) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step122EarlyControl_sigmaRelease : s2Step122EarlyControlHistoryArena.release {819} (fun _ => false)=some s2Step122EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step122EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step122EarlyControlSigmaArena,s2Step122EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step122EarlyControl_sigma : compileHmrSigmaDropLog s2Step122EarlyControlHistoryArena false 0 0 254 819 []=some s2Step122EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step122EarlyControl_sigmaOwned⟩
  · exact s2Step122EarlyControl_sigmaRelease

private theorem s2Step122EarlyControl_zeroBorrow : s2Step122EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step122EarlyControlLog.zeroWork=some s2Step122EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step122EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step122EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<815) ∨ (816≤q ∧ q<824) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step122EarlyControlZeroArena,s2Step122EarlyControlArena,s2Step122EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step122EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step122EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step122EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<815) ∨ (816≤q ∧ q<824) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step122EarlyControl_zero : compileHmrEqualityLog s2Step122EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step122EarlyControlLog.zeroWork=some (s2Step122EarlyControlZeroArena,s2Step122EarlyControlLog.zeroWork,s2Step122EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step122EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step122EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step122EarlyControl_logged : s2Step122EarlyControlPlan.Logged s2Step122EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 819 254 253 252 251 806 37 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step122EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step122EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step122EarlyControl_zero
  · exact s2Step122EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step122EarlyControl_flags
  · exact s2Step122EarlyControl_fit
  · exact s2Step122EarlyControl_history
  · exact s2Step122EarlyControl_sigma
  · exact s2Step122EarlyControl_branch

private theorem s2Step122EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step122EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 819 254 253 252 251 806 37 s2Step122EarlyControlLog=some s2Step122EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step122EarlyControlPlan s2Step122EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 819 254 253 252 251 806 37 s2Step122EarlyControl_logged

private def s2Step122EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<819) ∨ (820≤q ∧ q<825) ∨ (826≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step122EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721],768⟩

private def s2Step122EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821],770⟩

private def s2Step122EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206],769⟩

private def s2Step122EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830],771⟩

private def s2Step122FrontBank : WindowBank := ⟨s2Step122EntryFRow,s2Step122EntryGRow,s2Step122EntryFvRow,s2Step122EntryGvRow⟩

private def s2Step122Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 802, 768]

private def s2Step122Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 817, 792, 825, 849, 769]

private def s2Step122Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 770]

private def s2Step122Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 781, 771]

private theorem s2Step122Counter_apart : Disjoint s2Step122HeadFvAfter.live s2Step122CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step122HeadFvAfter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step122Counter_borrowed : s2Step122HeadFvAfter.checkBorrow 4 s2Step122CounterWork=some s2Step122CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step122HeadFvAfter s2Step122CounterDuring s2Step122CounterWork.toFinset s2Step122Counter_bounded s2Step122Counter_apart rfl

private theorem s2Step122Counter_owned : (819::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step122HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step122HeadFvAfter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step122Counter_checked : compileHmrCounterStepLog s2Step122HeadFvAfter true 819 [772, 773, 774, 775, 776, 777] s2Step122CounterWork=some s2Step122CounterDuring := by
  have owned : ∀q∈819::[772, 773, 774, 775, 776, 777],q∈s2Step122HeadFvAfter.live := fun q hq => s2Step122Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step122Counter_borrowed

private def s2Step122EntryFAfter : Arena := s2Step122EntryFBefore

private theorem s2Step122EntryBank_incomingDistinct : ([s2Step122EntryFRow,s2Step122EntryGRow,s2Step122EntryFvRow,s2Step122EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step122EntryF_Incoming : rowsOwned s2Step122EntryFBefore [s2Step122EntryFRow,s2Step122EntryGRow,s2Step122EntryFvRow,s2Step122EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step122EntryFRow,s2Step122EntryGRow,s2Step122EntryFvRow,s2Step122EntryGvRow] 0 s2Step122EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step122EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<819) ∨ (820≤q ∧ q<825) ∨ (826≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step122EntryBank_outgoingOwned : rowsOwned s2Step122EntryGvAfter [s2Step122EntryFOut,s2Step122EntryGOut,s2Step122EntryFvOut,s2Step122EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step122EntryGvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<819) ∨ (820≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step122EntryF_Outgoing : rowsOwned s2Step122EntryGvAfter [s2Step122EntryFOut,s2Step122EntryGOut,s2Step122EntryFvOut,s2Step122EntryGvOut] :=
  hmrRows_owned_drop s2Step122EntryGvAfter [s2Step122EntryFOut,s2Step122EntryGOut,s2Step122EntryFvOut,s2Step122EntryGvOut] 0 s2Step122EntryBank_outgoingOwned

private theorem s2Step122EntryF_distinct : (s2Step122EntryFRow.sign::s2Step122EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step122EntryF_owned : (s2Step122EntryFRow.sign::s2Step122EntryFRow.payload).toFinset⊆s2Step122EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step122EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<819) ∨ (820≤q ∧ q<825) ∨ (826≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step122EntryF_reserved : s2Step122EntryFBefore.reserve s2Step122EntryFFresh.toFinset=some s2Step122EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step122EntryFFresh,arenaWires]
  · norm_num [s2Step122EntryFBefore,s2Step122EntryFFresh,arenaWires]
  · simp only [s2Step122EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step122EntryF_checked : planRowResizeLog s2Step122EntryFBefore s2Step122EntryFRow 210 s2Step122EntryFFresh=
    some (s2Step122EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721],768⟩,growRow 768 s2Step122EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step122EntryFBefore s2Step122EntryFAfter s2Step122EntryFRow 210 s2Step122EntryFFresh
    s2Step122EntryF_distinct s2Step122EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step122EntryF_reserved
  have rowEq : WindowRow.mk (s2Step122EntryFRow.payload++s2Step122EntryFFresh) s2Step122EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step122EntryFvAfter : Arena := s2Step122EntryGAfter

private def s2Step122EntryFvBefore : Arena := s2Step122EntryGAfter

private theorem s2Step122EntryFv_Incoming : rowsOwned s2Step122EntryFvBefore [s2Step122EntryFvRow,s2Step122EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step122EntryFRow,s2Step122EntryGRow,s2Step122EntryFvRow,s2Step122EntryGvRow] 2 s2Step122EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step122EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<819) ∨ (820≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step122EntryFv_Outgoing : rowsOwned s2Step122EntryGvAfter [s2Step122EntryFvOut,s2Step122EntryGvOut] :=
  hmrRows_owned_drop s2Step122EntryGvAfter [s2Step122EntryFOut,s2Step122EntryGOut,s2Step122EntryFvOut,s2Step122EntryGvOut] 2 s2Step122EntryBank_outgoingOwned

private theorem s2Step122EntryFv_distinct : (s2Step122EntryFvRow.sign::s2Step122EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step122EntryFv_owned : (s2Step122EntryFvRow.sign::s2Step122EntryFvRow.payload).toFinset⊆s2Step122EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step122EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<819) ∨ (820≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step122EntryFv_reserved : s2Step122EntryFvBefore.reserve s2Step122EntryFvFresh.toFinset=some s2Step122EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step122EntryFvFresh,arenaWires]
  · norm_num [s2Step122EntryFvBefore,s2Step122EntryGAfter,s2Step122EntryFvFresh,arenaWires]
  · simp only [s2Step122EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step122EntryFv_checked : planRowResizeLog s2Step122EntryFvBefore s2Step122EntryFvRow 74 s2Step122EntryFvFresh=
    some (s2Step122EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821],770⟩,growRow 770 s2Step122EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step122EntryFvBefore s2Step122EntryFvAfter s2Step122EntryFvRow 74 s2Step122EntryFvFresh
    s2Step122EntryFv_distinct s2Step122EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step122EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step122EntryFvRow.payload++s2Step122EntryFvFresh) s2Step122EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step122EntryGBefore : Arena := s2Step122EntryFBefore

private theorem s2Step122EntryG_Incoming : rowsOwned s2Step122EntryGBefore [s2Step122EntryGRow,s2Step122EntryFvRow,s2Step122EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step122EntryFRow,s2Step122EntryGRow,s2Step122EntryFvRow,s2Step122EntryGvRow] 1 s2Step122EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step122EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<819) ∨ (820≤q ∧ q<825) ∨ (826≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step122EntryG_Outgoing : rowsOwned s2Step122EntryGvAfter [s2Step122EntryGOut,s2Step122EntryFvOut,s2Step122EntryGvOut] :=
  hmrRows_owned_drop s2Step122EntryGvAfter [s2Step122EntryFOut,s2Step122EntryGOut,s2Step122EntryFvOut,s2Step122EntryGvOut] 1 s2Step122EntryBank_outgoingOwned

private theorem s2Step122EntryG_distinct : (s2Step122EntryGRow.sign::s2Step122EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step122EntryG_owned : (s2Step122EntryGRow.sign::s2Step122EntryGRow.payload).toFinset⊆s2Step122EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step122EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<819) ∨ (820≤q ∧ q<825) ∨ (826≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step122EntryG_reserved : s2Step122EntryGBefore.reserve s2Step122EntryGFresh.toFinset=some s2Step122EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step122EntryGFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s2Step122EntryGBefore,s2Step122EntryFBefore,s2Step122EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step122EntryGAfter,s2Step122EntryGBefore,s2Step122EntryFBefore,s2Step122EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step122EntryG_checked : planRowResizeLog s2Step122EntryGBefore s2Step122EntryGRow 210 s2Step122EntryGFresh=
    some (s2Step122EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 817, 792, 825],769⟩,growRow 769 s2Step122EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step122EntryGBefore s2Step122EntryGAfter s2Step122EntryGRow 210 s2Step122EntryGFresh
    s2Step122EntryG_distinct s2Step122EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step122EntryG_reserved
  have rowEq : WindowRow.mk (s2Step122EntryGRow.payload++s2Step122EntryGFresh) s2Step122EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 817, 792, 825],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step122EntryGvBefore : Arena := s2Step122EntryGAfter

private theorem s2Step122EntryGv_Incoming : rowsOwned s2Step122EntryGvBefore [s2Step122EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step122EntryFRow,s2Step122EntryGRow,s2Step122EntryFvRow,s2Step122EntryGvRow] 3 s2Step122EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step122EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<819) ∨ (820≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step122EntryGv_Outgoing : rowsOwned s2Step122EntryGvAfter [s2Step122EntryGvOut] :=
  hmrRows_owned_drop s2Step122EntryGvAfter [s2Step122EntryFOut,s2Step122EntryGOut,s2Step122EntryFvOut,s2Step122EntryGvOut] 3 s2Step122EntryBank_outgoingOwned

private theorem s2Step122EntryGv_distinct : (s2Step122EntryGvRow.sign::s2Step122EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step122EntryGv_owned : (s2Step122EntryGvRow.sign::s2Step122EntryGvRow.payload).toFinset⊆s2Step122EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step122EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<819) ∨ (820≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step122EntryGv_reserved : s2Step122EntryGvBefore.reserve s2Step122EntryGvFresh.toFinset=some s2Step122EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step122EntryGvFresh,arenaWires]
  · norm_num [s2Step122EntryGvBefore,s2Step122EntryGAfter,s2Step122EntryGvFresh,arenaWires]
  · simp only [s2Step122EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step122EntryGv_checked : planRowResizeLog s2Step122EntryGvBefore s2Step122EntryGvRow 74 s2Step122EntryGvFresh=
    some (s2Step122EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830],771⟩,growRow 771 s2Step122EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step122EntryGvBefore s2Step122EntryGvAfter s2Step122EntryGvRow 74 s2Step122EntryGvFresh
    s2Step122EntryGv_distinct s2Step122EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step122EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step122EntryGvRow.payload++s2Step122EntryGvFresh) s2Step122EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step122EntryBank_rows : planWindowRowsLog s2Step122EntryFBefore [(s2Step122EntryFRow,210),(s2Step122EntryGRow,210),(s2Step122EntryFvRow,74),(s2Step122EntryGvRow,74)] [s2Step122EntryFFresh,s2Step122EntryGFresh,s2Step122EntryFvFresh,s2Step122EntryGvFresh]=
    some (s2Step122EntryGvAfter,[s2Step122EntryFOut,s2Step122EntryGOut,s2Step122EntryFvOut,s2Step122EntryGvOut],(growRow 768 s2Step122EntryFFresh ++ (growRow 769 s2Step122EntryGFresh ++ (growRow 770 s2Step122EntryFvFresh ++ (growRow 771 s2Step122EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step122EntryGvAfter [] []=some (s2Step122EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step122EntryGvBefore s2Step122EntryGvAfter s2Step122EntryGvAfter
    s2Step122EntryGvRow s2Step122EntryGvOut 74 s2Step122EntryGvFresh [] [] []
    (growRow 771 s2Step122EntryGvFresh) ([]) s2Step122EntryGv_Incoming s2Step122EntryGv_checked h4 s2Step122EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step122EntryFvBefore s2Step122EntryFvAfter s2Step122EntryGvAfter
    s2Step122EntryFvRow s2Step122EntryFvOut 74 s2Step122EntryFvFresh [(s2Step122EntryGvRow,74)] [s2Step122EntryGvFresh] [s2Step122EntryGvOut]
    (growRow 770 s2Step122EntryFvFresh) ((growRow 771 s2Step122EntryGvFresh ++ [])) s2Step122EntryFv_Incoming s2Step122EntryFv_checked h3 s2Step122EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step122EntryGBefore s2Step122EntryGAfter s2Step122EntryGvAfter
    s2Step122EntryGRow s2Step122EntryGOut 210 s2Step122EntryGFresh [(s2Step122EntryFvRow,74),(s2Step122EntryGvRow,74)] [s2Step122EntryFvFresh,s2Step122EntryGvFresh] [s2Step122EntryFvOut,s2Step122EntryGvOut]
    (growRow 769 s2Step122EntryGFresh) ((growRow 770 s2Step122EntryFvFresh ++ (growRow 771 s2Step122EntryGvFresh ++ []))) s2Step122EntryG_Incoming s2Step122EntryG_checked h2 s2Step122EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step122EntryFBefore s2Step122EntryFAfter s2Step122EntryGvAfter
    s2Step122EntryFRow s2Step122EntryFOut 210 s2Step122EntryFFresh [(s2Step122EntryGRow,210),(s2Step122EntryFvRow,74),(s2Step122EntryGvRow,74)] [s2Step122EntryGFresh,s2Step122EntryFvFresh,s2Step122EntryGvFresh] [s2Step122EntryGOut,s2Step122EntryFvOut,s2Step122EntryGvOut]
    (growRow 768 s2Step122EntryFFresh) ((growRow 769 s2Step122EntryGFresh ++ (growRow 770 s2Step122EntryFvFresh ++ (growRow 771 s2Step122EntryGvFresh ++ [])))) s2Step122EntryF_Incoming s2Step122EntryF_checked h1 s2Step122EntryF_Outgoing
  exact h0

private theorem s2Step122EntryBank_checked : compileHmrBankResizeLog .entry s2Step122EntryFBefore ⟨s2Step122EntryFRow,s2Step122EntryGRow,s2Step122EntryFvRow,s2Step122EntryGvRow⟩ ⟨210,210,74,74⟩ [s2Step122EntryFFresh,s2Step122EntryGFresh,s2Step122EntryFvFresh,s2Step122EntryGvFresh]=
    some (s2Step122EntryGvAfter,⟨s2Step122EntryFOut,s2Step122EntryGOut,s2Step122EntryFvOut,s2Step122EntryGvOut⟩,(growRow 768 s2Step122EntryFFresh ++ (growRow 769 s2Step122EntryGFresh ++ (growRow 770 s2Step122EntryFvFresh ++ (growRow 771 s2Step122EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step122EntryBank_rows]
  rfl

private def s2Step122ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<720) ∨ (722≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<815) ∨ (816≤q ∧ q<825) ∨ (826≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step122ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<815) ∨ (816≤q ∧ q<825) ∨ (826≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step122ExitFBefore : Arena := s2Step122ExitGAfter

private def s2Step122ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 802],768⟩

private def s2Step122ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807],770⟩

private def s2Step122ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 817, 792, 825, 849],769⟩

private def s2Step122ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 781],771⟩

private theorem s2Step122ExitBank_incomingDistinct : ([s2Step122ExitGRow,s2Step122ExitFRow,s2Step122ExitFvRow,s2Step122ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step122ExitF_Incoming : rowsOwned s2Step122ExitFBefore [s2Step122ExitFRow,s2Step122ExitFvRow,s2Step122ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step122ExitGRow,s2Step122ExitFRow,s2Step122ExitFvRow,s2Step122ExitGvRow] 1 s2Step122ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step122ExitFBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<815) ∨ (816≤q ∧ q<825) ∨ (826≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step122ExitBank_outgoingOwned : rowsOwned s2Step122ExitGvAfter [s2Step122ExitGOut,s2Step122ExitFOut,s2Step122ExitFvOut,s2Step122ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step122ExitGvAfter (fun q => (0≤q ∧ q<720) ∨ (722≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<815) ∨ (816≤q ∧ q<825) ∨ (826≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step122ExitF_Outgoing : rowsOwned s2Step122ExitGvAfter [s2Step122ExitFOut,s2Step122ExitFvOut,s2Step122ExitGvOut] :=
  hmrRows_owned_drop s2Step122ExitGvAfter [s2Step122ExitGOut,s2Step122ExitFOut,s2Step122ExitFvOut,s2Step122ExitGvOut] 1 s2Step122ExitBank_outgoingOwned

private theorem s2Step122ExitF_distinct : (s2Step122ExitFRow.sign::s2Step122ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step122ExitF_owned : (s2Step122ExitFRow.sign::s2Step122ExitFRow.payload).toFinset⊆s2Step122ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step122ExitFBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<815) ∨ (816≤q ∧ q<825) ∨ (826≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step122ExitF_retired : s2Step122ExitFBefore.retireSet s2Step122ExitFExtra.toFinset=s2Step122ExitFAfter := by
  unfold Arena.retireSet s2Step122ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step122ExitFBefore,s2Step122ExitGAfter,s2Step122ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step122ExitF_checked : planRowResizeLog s2Step122ExitFBefore s2Step122ExitFRow 208 []=
    some (s2Step122ExitFAfter,s2Step122ExitFOut,shrinkRow 768 s2Step122ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step122ExitFBefore s2Step122ExitFRow 208 s2Step122ExitF_distinct s2Step122ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step122ExitFRow.payload.take 208) s2Step122ExitFRow.sign=s2Step122ExitFOut := by decide +kernel
  have hi : s2Step122ExitFRow.payload.drop 208=s2Step122ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step122ExitF_retired] at result
  exact result

private def s2Step122ExitFvAfter : Arena := s2Step122ExitFAfter

private def s2Step122ExitFvBefore : Arena := s2Step122ExitFAfter

private theorem s2Step122ExitFv_Incoming : rowsOwned s2Step122ExitFvBefore [s2Step122ExitFvRow,s2Step122ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step122ExitGRow,s2Step122ExitFRow,s2Step122ExitFvRow,s2Step122ExitGvRow] 2 s2Step122ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step122ExitFvBefore (fun q => (0≤q ∧ q<720) ∨ (722≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<815) ∨ (816≤q ∧ q<825) ∨ (826≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step122ExitFv_Outgoing : rowsOwned s2Step122ExitGvAfter [s2Step122ExitFvOut,s2Step122ExitGvOut] :=
  hmrRows_owned_drop s2Step122ExitGvAfter [s2Step122ExitGOut,s2Step122ExitFOut,s2Step122ExitFvOut,s2Step122ExitGvOut] 2 s2Step122ExitBank_outgoingOwned

private theorem s2Step122ExitFv_distinct : (s2Step122ExitFvRow.sign::s2Step122ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step122ExitFv_owned : (s2Step122ExitFvRow.sign::s2Step122ExitFvRow.payload).toFinset⊆s2Step122ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step122ExitFvBefore (fun q => (0≤q ∧ q<720) ∨ (722≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<815) ∨ (816≤q ∧ q<825) ∨ (826≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step122ExitFv_reserved : s2Step122ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step122ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step122ExitFv_checked : planRowResizeLog s2Step122ExitFvBefore s2Step122ExitFvRow 75 []=
    some (s2Step122ExitFvAfter,s2Step122ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step122ExitFvBefore s2Step122ExitFvAfter s2Step122ExitFvRow 75 []
    s2Step122ExitFv_distinct s2Step122ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step122ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step122ExitFvRow.payload++[]) s2Step122ExitFvRow.sign=s2Step122ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step122ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private theorem s2Step122ExitG_Incoming : rowsOwned s2Step122ExitGBefore [s2Step122ExitGRow,s2Step122ExitFRow,s2Step122ExitFvRow,s2Step122ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step122ExitGRow,s2Step122ExitFRow,s2Step122ExitFvRow,s2Step122ExitGvRow] 0 s2Step122ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step122ExitGBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step122ExitG_Outgoing : rowsOwned s2Step122ExitGvAfter [s2Step122ExitGOut,s2Step122ExitFOut,s2Step122ExitFvOut,s2Step122ExitGvOut] :=
  hmrRows_owned_drop s2Step122ExitGvAfter [s2Step122ExitGOut,s2Step122ExitFOut,s2Step122ExitFvOut,s2Step122ExitGvOut] 0 s2Step122ExitBank_outgoingOwned

private theorem s2Step122ExitG_distinct : (s2Step122ExitGRow.sign::s2Step122ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step122ExitG_owned : (s2Step122ExitGRow.sign::s2Step122ExitGRow.payload).toFinset⊆s2Step122ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step122ExitGBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step122ExitG_retired : s2Step122ExitGBefore.retireSet s2Step122ExitGExtra.toFinset=s2Step122ExitGAfter := by
  unfold Arena.retireSet s2Step122ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step122ExitGBefore,s2Step122ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step122ExitG_checked : planRowResizeLog s2Step122ExitGBefore s2Step122ExitGRow 208 []=
    some (s2Step122ExitGAfter,s2Step122ExitGOut,shrinkRow 769 s2Step122ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step122ExitGBefore s2Step122ExitGRow 208 s2Step122ExitG_distinct s2Step122ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step122ExitGRow.payload.take 208) s2Step122ExitGRow.sign=s2Step122ExitGOut := by decide +kernel
  have hi : s2Step122ExitGRow.payload.drop 208=s2Step122ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step122ExitG_retired] at result
  exact result

private def s2Step122ExitGvBefore : Arena := s2Step122ExitFAfter

private theorem s2Step122ExitGv_Incoming : rowsOwned s2Step122ExitGvBefore [s2Step122ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step122ExitGRow,s2Step122ExitFRow,s2Step122ExitFvRow,s2Step122ExitGvRow] 3 s2Step122ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step122ExitGvBefore (fun q => (0≤q ∧ q<720) ∨ (722≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<815) ∨ (816≤q ∧ q<825) ∨ (826≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step122ExitGv_Outgoing : rowsOwned s2Step122ExitGvAfter [s2Step122ExitGvOut] :=
  hmrRows_owned_drop s2Step122ExitGvAfter [s2Step122ExitGOut,s2Step122ExitFOut,s2Step122ExitFvOut,s2Step122ExitGvOut] 3 s2Step122ExitBank_outgoingOwned

private theorem s2Step122ExitGv_distinct : (s2Step122ExitGvRow.sign::s2Step122ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step122ExitGv_owned : (s2Step122ExitGvRow.sign::s2Step122ExitGvRow.payload).toFinset⊆s2Step122ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step122ExitGvBefore (fun q => (0≤q ∧ q<720) ∨ (722≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<815) ∨ (816≤q ∧ q<825) ∨ (826≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step122ExitGv_retired : s2Step122ExitGvBefore.retireSet s2Step122ExitGvExtra.toFinset=s2Step122ExitGvAfter := by
  unfold Arena.retireSet s2Step122ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step122ExitGvBefore,s2Step122ExitFAfter,s2Step122ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step122ExitGv_checked : planRowResizeLog s2Step122ExitGvBefore s2Step122ExitGvRow 74 []=
    some (s2Step122ExitGvAfter,s2Step122ExitGvOut,shrinkRow 771 s2Step122ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step122ExitGvBefore s2Step122ExitGvRow 74 s2Step122ExitGv_distinct s2Step122ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step122ExitGvRow.payload.take 74) s2Step122ExitGvRow.sign=s2Step122ExitGvOut := by decide +kernel
  have hi : s2Step122ExitGvRow.payload.drop 74=s2Step122ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step122ExitGv_retired] at result
  exact result

private theorem s2Step122ExitBank_rows : planWindowRowsLog s2Step122ExitGBefore [(s2Step122ExitGRow,208),(s2Step122ExitFRow,208),(s2Step122ExitFvRow,75),(s2Step122ExitGvRow,74)] [[],[],[],[]]=
    some (s2Step122ExitGvAfter,[s2Step122ExitGOut,s2Step122ExitFOut,s2Step122ExitFvOut,s2Step122ExitGvOut],(shrinkRow 769 s2Step122ExitGExtra ++ (shrinkRow 768 s2Step122ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step122ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step122ExitGvAfter [] []=some (s2Step122ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step122ExitGvBefore s2Step122ExitGvAfter s2Step122ExitGvAfter
    s2Step122ExitGvRow s2Step122ExitGvOut 74 [] [] [] []
    (shrinkRow 771 s2Step122ExitGvExtra) ([]) s2Step122ExitGv_Incoming s2Step122ExitGv_checked h4 s2Step122ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step122ExitFvBefore s2Step122ExitFvAfter s2Step122ExitGvAfter
    s2Step122ExitFvRow s2Step122ExitFvOut 75 [] [(s2Step122ExitGvRow,74)] [[]] [s2Step122ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step122ExitGvExtra ++ [])) s2Step122ExitFv_Incoming s2Step122ExitFv_checked h3 s2Step122ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step122ExitFBefore s2Step122ExitFAfter s2Step122ExitGvAfter
    s2Step122ExitFRow s2Step122ExitFOut 208 [] [(s2Step122ExitFvRow,75),(s2Step122ExitGvRow,74)] [[],[]] [s2Step122ExitFvOut,s2Step122ExitGvOut]
    (shrinkRow 768 s2Step122ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step122ExitGvExtra ++ []))) s2Step122ExitF_Incoming s2Step122ExitF_checked h2 s2Step122ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step122ExitGBefore s2Step122ExitGAfter s2Step122ExitGvAfter
    s2Step122ExitGRow s2Step122ExitGOut 208 [] [(s2Step122ExitFRow,208),(s2Step122ExitFvRow,75),(s2Step122ExitGvRow,74)] [[],[],[]] [s2Step122ExitFOut,s2Step122ExitFvOut,s2Step122ExitGvOut]
    (shrinkRow 769 s2Step122ExitGExtra) ((shrinkRow 768 s2Step122ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step122ExitGvExtra ++ [])))) s2Step122ExitG_Incoming s2Step122ExitG_checked h1 s2Step122ExitG_Outgoing
  exact h0

private theorem s2Step122ExitBank_checked : compileHmrBankResizeLog .exit s2Step122ExitGBefore ⟨s2Step122ExitFRow,s2Step122ExitGRow,s2Step122ExitFvRow,s2Step122ExitGvRow⟩ ⟨208,208,75,74⟩ [[],[],[],[]]=
    some (s2Step122ExitGvAfter,⟨s2Step122ExitFOut,s2Step122ExitGOut,s2Step122ExitFvOut,s2Step122ExitGvOut⟩,(shrinkRow 769 s2Step122ExitGExtra ++ (shrinkRow 768 s2Step122ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step122ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step122ExitBank_rows]
  rfl

private theorem s2Step122Add0_apart : Disjoint s2Step122Add0Arena.live s2Step122Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step122Add0Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step122Add0_card : s2Step122Add0Arena.live.card=879 := by
  decide +kernel

private theorem s2Step122Add0_borrowed : s2Step122Add0Arena.checkBorrow (hmrHybridCount s2Step122Add0Arena s2Step122Add0B.length) s2Step122Add0Work=some s2Step122Add0During := by
  have len : s2Step122Add0Work.length=hmrHybridCount s2Step122Add0Arena s2Step122Add0B.length := by
    rw [hmrHybridCount,s2Step122Add0_card]
    decide +kernel
  have nd : s2Step122Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step122Add0Arena s2Step122Add0During s2Step122Add0Work.toFinset s2Step122Add0_bounded s2Step122Add0_apart rfl

private theorem s2Step122Add0_distinct : (790::806::815::(s2Step122Add0A++s2Step122Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step122Add0_owned : (790::806::815::(s2Step122Add0A++s2Step122Add0B)).toFinset⊆s2Step122Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step122Add0Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step122Add0_checked : compileHmrHybridCinLog s2Step122Add0Arena 806 790 815 s2Step122Add0A s2Step122Add0B s2Step122Add0Work=some s2Step122Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step122Add0Arena s2Step122Add0During 806 790 815 s2Step122Add0A s2Step122Add0B s2Step122Add0Work
    (by decide +kernel) (by decide +kernel) s2Step122Add0_distinct
    (fun q hq => s2Step122Add0_owned (List.mem_toFinset.mpr hq)) s2Step122Add0_borrowed

private theorem s2Step122Add1_apart : Disjoint s2Step122Add1Arena.live s2Step122Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step122Add1Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step122Add1_card : s2Step122Add1Arena.live.card=879 := by
  decide +kernel

private theorem s2Step122Add1_borrowed : s2Step122Add1Arena.checkBorrow (hmrHybridCount s2Step122Add1Arena s2Step122Add1B.length) s2Step122Add1Work=some s2Step122Add1During := by
  have len : s2Step122Add1Work.length=hmrHybridCount s2Step122Add1Arena s2Step122Add1B.length := by
    rw [hmrHybridCount,s2Step122Add1_card]
    decide +kernel
  have nd : s2Step122Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step122Add1Arena s2Step122Add1During s2Step122Add1Work.toFinset s2Step122Add1_bounded s2Step122Add1_apart rfl

private theorem s2Step122Add1_distinct : (790::806::815::(s2Step122Add1A++s2Step122Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step122Add1_owned : (790::806::815::(s2Step122Add1A++s2Step122Add1B)).toFinset⊆s2Step122Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step122Add1Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step122Add1_checked : compileHmrHybridCinLog s2Step122Add1Arena 806 790 815 s2Step122Add1A s2Step122Add1B s2Step122Add1Work=some s2Step122Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step122Add1Arena s2Step122Add1During 806 790 815 s2Step122Add1A s2Step122Add1B s2Step122Add1Work
    (by decide +kernel) (by decide +kernel) s2Step122Add1_distinct
    (fun q hq => s2Step122Add1_owned (List.mem_toFinset.mpr hq)) s2Step122Add1_borrowed

private theorem s2Step122F4_apart : Disjoint (s2Step122Add0A++s2Step122Add0B).toFinset (s2Step122Add1A++s2Step122Add1B).toFinset := by
  have nd : ((s2Step122Add0A++s2Step122Add0B)++(s2Step122Add1A++s2Step122Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step122F4_carry : s2Step122F4FlagArena.checkBorrow 1 [815]=some s2Step122Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step122F4FlagArena,s2Step122HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step122F4FlagArena,s2Step122HeadFvAfter,s2Step122Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step122F4_distinct : (819::806::790::815::((s2Step122Add0A++s2Step122Add1A)++(s2Step122Add0B++s2Step122Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step122F4_flag : s2Step122HeadFvAfter.checkBorrow 1 [790]=some s2Step122F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step122HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step122F4_owned : (819::806::((s2Step122Add0A++s2Step122Add1A)++(s2Step122Add0B++s2Step122Add1B))).toFinset⊆s2Step122HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step122HeadFvAfter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step122F4_checked : compileHmrHybridF4Log s2Step122HeadFvAfter 819 806 s2Step122Add0A s2Step122Add0B s2Step122Add1A s2Step122Add1B [790] [815] s2Step122Add0Work s2Step122Add1Work=some s2Step122F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step122HeadFvAfter s2Step122F4FlagArena s2Step122Add0Arena s2Step122Add0During s2Step122Add1During 819 806
    s2Step122Add0A s2Step122Add0B s2Step122Add1A s2Step122Add1B [790] [815] s2Step122Add0Work s2Step122Add1Work
    (fun q hq => s2Step122F4_owned (List.mem_toFinset.mpr hq)) s2Step122F4_flag s2Step122F4_carry
    s2Step122F4_distinct s2Step122F4_apart s2Step122Add0_checked s2Step122Add1_checked

private theorem s2Step122Front_branch : s2Step122FrontSigmaArena.checkBorrow 1 [806]=some s2Step122HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step122FrontSigmaArena,s2Step122EntryGvAfter,s2Step122EntryGAfter,arenaWires]
  · ext q
    simp only [s2Step122FrontSigmaArena,s2Step122EntryGvAfter,s2Step122EntryGAfter,s2Step122HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step122Front_entry : HmrFrontEntryValid s2Step122EntryFBefore s2Step122FrontBank 210 74 ⟨208,208,75,74⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step122FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step122EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step122EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<819) ∨ (820≤q ∧ q<825) ∨ (826≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step122FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step122Front_sigma : s2Step122EntryGvAfter.checkBorrow 1 [819]=some s2Step122FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step122EntryGvAfter,s2Step122EntryGAfter,arenaWires]
  · rfl

private def s2Step122HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<807) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step122HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<807) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step122HeadFBefore : Arena := s2Step122HeadGAfter

private def s2Step122HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721],768⟩

private def s2Step122HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821],770⟩

private def s2Step122HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 817, 792, 825],769⟩

private def s2Step122HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830],771⟩

private theorem s2Step122HeadBank_incomingDistinct : ([s2Step122HeadGRow,s2Step122HeadFRow,s2Step122HeadGvRow,s2Step122HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step122HeadF_Incoming : rowsOwned s2Step122HeadFBefore [s2Step122HeadFRow,s2Step122HeadGvRow,s2Step122HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step122HeadGRow,s2Step122HeadFRow,s2Step122HeadGvRow,s2Step122HeadFvRow] 1 s2Step122HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step122HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<807) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step122HeadBank_outgoingOwned : rowsOwned s2Step122HeadFvAfter [s2Step122HeadGOut,s2Step122HeadFOut,s2Step122HeadGvOut,s2Step122HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step122HeadFvAfter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step122HeadF_Outgoing : rowsOwned s2Step122HeadFvAfter [s2Step122HeadFOut,s2Step122HeadGvOut,s2Step122HeadFvOut] :=
  hmrRows_owned_drop s2Step122HeadFvAfter [s2Step122HeadGOut,s2Step122HeadFOut,s2Step122HeadGvOut,s2Step122HeadFvOut] 1 s2Step122HeadBank_outgoingOwned

private theorem s2Step122HeadF_distinct : (s2Step122HeadFRow.sign::s2Step122HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step122HeadF_owned : (s2Step122HeadFRow.sign::s2Step122HeadFRow.payload).toFinset⊆s2Step122HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step122HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<807) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step122HeadF_reserved : s2Step122HeadFBefore.reserve s2Step122HeadFFresh.toFinset=some s2Step122HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step122HeadFFresh,arenaWires]
  · norm_num [s2Step122HeadFBefore,s2Step122HeadGAfter,s2Step122HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step122HeadFAfter,s2Step122HeadFBefore,s2Step122HeadGAfter,s2Step122HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step122HeadF_checked : planRowResizeLog s2Step122HeadFBefore s2Step122HeadFRow 211 s2Step122HeadFFresh=
    some (s2Step122HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 802],768⟩,growRow 768 s2Step122HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step122HeadFBefore s2Step122HeadFAfter s2Step122HeadFRow 211 s2Step122HeadFFresh
    s2Step122HeadF_distinct s2Step122HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step122HeadF_reserved
  have rowEq : WindowRow.mk (s2Step122HeadFRow.payload++s2Step122HeadFFresh) s2Step122HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 802],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step122HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<807) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step122HeadFvBefore : Arena := s2Step122HeadGvAfter

private theorem s2Step122HeadFv_Incoming : rowsOwned s2Step122HeadFvBefore [s2Step122HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step122HeadGRow,s2Step122HeadFRow,s2Step122HeadGvRow,s2Step122HeadFvRow] 3 s2Step122HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step122HeadFvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<807) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step122HeadFv_Outgoing : rowsOwned s2Step122HeadFvAfter [s2Step122HeadFvOut] :=
  hmrRows_owned_drop s2Step122HeadFvAfter [s2Step122HeadGOut,s2Step122HeadFOut,s2Step122HeadGvOut,s2Step122HeadFvOut] 3 s2Step122HeadBank_outgoingOwned

private theorem s2Step122HeadFv_distinct : (s2Step122HeadFvRow.sign::s2Step122HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step122HeadFv_owned : (s2Step122HeadFvRow.sign::s2Step122HeadFvRow.payload).toFinset⊆s2Step122HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step122HeadFvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<807) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step122HeadFv_reserved : s2Step122HeadFvBefore.reserve s2Step122HeadFvFresh.toFinset=some s2Step122HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step122HeadFvFresh,arenaWires]
  · norm_num [s2Step122HeadFvBefore,s2Step122HeadGvAfter,s2Step122HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step122HeadFvAfter,s2Step122HeadFvBefore,s2Step122HeadGvAfter,s2Step122HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step122HeadFv_checked : planRowResizeLog s2Step122HeadFvBefore s2Step122HeadFvRow 75 s2Step122HeadFvFresh=
    some (s2Step122HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807],770⟩,growRow 770 s2Step122HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step122HeadFvBefore s2Step122HeadFvAfter s2Step122HeadFvRow 75 s2Step122HeadFvFresh
    s2Step122HeadFv_distinct s2Step122HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step122HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step122HeadFvRow.payload++s2Step122HeadFvFresh) s2Step122HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step122HeadG_Incoming : rowsOwned s2Step122HeadGBefore [s2Step122HeadGRow,s2Step122HeadFRow,s2Step122HeadGvRow,s2Step122HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step122HeadGRow,s2Step122HeadFRow,s2Step122HeadGvRow,s2Step122HeadFvRow] 0 s2Step122HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step122HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<807) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step122HeadG_Outgoing : rowsOwned s2Step122HeadFvAfter [s2Step122HeadGOut,s2Step122HeadFOut,s2Step122HeadGvOut,s2Step122HeadFvOut] :=
  hmrRows_owned_drop s2Step122HeadFvAfter [s2Step122HeadGOut,s2Step122HeadFOut,s2Step122HeadGvOut,s2Step122HeadFvOut] 0 s2Step122HeadBank_outgoingOwned

private theorem s2Step122HeadG_distinct : (s2Step122HeadGRow.sign::s2Step122HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step122HeadG_owned : (s2Step122HeadGRow.sign::s2Step122HeadGRow.payload).toFinset⊆s2Step122HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step122HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<807) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step122HeadG_reserved : s2Step122HeadGBefore.reserve s2Step122HeadGFresh.toFinset=some s2Step122HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step122HeadGFresh,arenaWires]
  · norm_num [s2Step122HeadGBefore,s2Step122HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step122HeadGAfter,s2Step122HeadGBefore,s2Step122HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step122HeadG_checked : planRowResizeLog s2Step122HeadGBefore s2Step122HeadGRow 211 s2Step122HeadGFresh=
    some (s2Step122HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 817, 792, 825, 849],769⟩,growRow 769 s2Step122HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step122HeadGBefore s2Step122HeadGAfter s2Step122HeadGRow 211 s2Step122HeadGFresh
    s2Step122HeadG_distinct s2Step122HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step122HeadG_reserved
  have rowEq : WindowRow.mk (s2Step122HeadGRow.payload++s2Step122HeadGFresh) s2Step122HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 817, 792, 825, 849],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step122HeadGvBefore : Arena := s2Step122HeadFAfter

private theorem s2Step122HeadGv_Incoming : rowsOwned s2Step122HeadGvBefore [s2Step122HeadGvRow,s2Step122HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step122HeadGRow,s2Step122HeadFRow,s2Step122HeadGvRow,s2Step122HeadFvRow] 2 s2Step122HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step122HeadGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<807) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step122HeadGv_Outgoing : rowsOwned s2Step122HeadFvAfter [s2Step122HeadGvOut,s2Step122HeadFvOut] :=
  hmrRows_owned_drop s2Step122HeadFvAfter [s2Step122HeadGOut,s2Step122HeadFOut,s2Step122HeadGvOut,s2Step122HeadFvOut] 2 s2Step122HeadBank_outgoingOwned

private theorem s2Step122HeadGv_distinct : (s2Step122HeadGvRow.sign::s2Step122HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step122HeadGv_owned : (s2Step122HeadGvRow.sign::s2Step122HeadGvRow.payload).toFinset⊆s2Step122HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step122HeadGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<807) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step122HeadGv_reserved : s2Step122HeadGvBefore.reserve s2Step122HeadGvFresh.toFinset=some s2Step122HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step122HeadGvFresh,arenaWires]
  · norm_num [s2Step122HeadGvBefore,s2Step122HeadFAfter,s2Step122HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step122HeadGvAfter,s2Step122HeadGvBefore,s2Step122HeadFAfter,s2Step122HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step122HeadGv_checked : planRowResizeLog s2Step122HeadGvBefore s2Step122HeadGvRow 75 s2Step122HeadGvFresh=
    some (s2Step122HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 781],771⟩,growRow 771 s2Step122HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step122HeadGvBefore s2Step122HeadGvAfter s2Step122HeadGvRow 75 s2Step122HeadGvFresh
    s2Step122HeadGv_distinct s2Step122HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step122HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step122HeadGvRow.payload++s2Step122HeadGvFresh) s2Step122HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 781],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step122HeadBank_rows : planWindowRowsLog s2Step122HeadGBefore [(s2Step122HeadGRow,211),(s2Step122HeadFRow,211),(s2Step122HeadGvRow,75),(s2Step122HeadFvRow,75)] [s2Step122HeadGFresh,s2Step122HeadFFresh,s2Step122HeadGvFresh,s2Step122HeadFvFresh]=
    some (s2Step122HeadFvAfter,[s2Step122HeadGOut,s2Step122HeadFOut,s2Step122HeadGvOut,s2Step122HeadFvOut],(growRow 769 s2Step122HeadGFresh ++ (growRow 768 s2Step122HeadFFresh ++ (growRow 771 s2Step122HeadGvFresh ++ (growRow 770 s2Step122HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step122HeadFvAfter [] []=some (s2Step122HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step122HeadFvBefore s2Step122HeadFvAfter s2Step122HeadFvAfter
    s2Step122HeadFvRow s2Step122HeadFvOut 75 s2Step122HeadFvFresh [] [] []
    (growRow 770 s2Step122HeadFvFresh) ([]) s2Step122HeadFv_Incoming s2Step122HeadFv_checked h4 s2Step122HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step122HeadGvBefore s2Step122HeadGvAfter s2Step122HeadFvAfter
    s2Step122HeadGvRow s2Step122HeadGvOut 75 s2Step122HeadGvFresh [(s2Step122HeadFvRow,75)] [s2Step122HeadFvFresh] [s2Step122HeadFvOut]
    (growRow 771 s2Step122HeadGvFresh) ((growRow 770 s2Step122HeadFvFresh ++ [])) s2Step122HeadGv_Incoming s2Step122HeadGv_checked h3 s2Step122HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step122HeadFBefore s2Step122HeadFAfter s2Step122HeadFvAfter
    s2Step122HeadFRow s2Step122HeadFOut 211 s2Step122HeadFFresh [(s2Step122HeadGvRow,75),(s2Step122HeadFvRow,75)] [s2Step122HeadGvFresh,s2Step122HeadFvFresh] [s2Step122HeadGvOut,s2Step122HeadFvOut]
    (growRow 768 s2Step122HeadFFresh) ((growRow 771 s2Step122HeadGvFresh ++ (growRow 770 s2Step122HeadFvFresh ++ []))) s2Step122HeadF_Incoming s2Step122HeadF_checked h2 s2Step122HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step122HeadGBefore s2Step122HeadGAfter s2Step122HeadFvAfter
    s2Step122HeadGRow s2Step122HeadGOut 211 s2Step122HeadGFresh [(s2Step122HeadFRow,211),(s2Step122HeadGvRow,75),(s2Step122HeadFvRow,75)] [s2Step122HeadFFresh,s2Step122HeadGvFresh,s2Step122HeadFvFresh] [s2Step122HeadFOut,s2Step122HeadGvOut,s2Step122HeadFvOut]
    (growRow 769 s2Step122HeadGFresh) ((growRow 768 s2Step122HeadFFresh ++ (growRow 771 s2Step122HeadGvFresh ++ (growRow 770 s2Step122HeadFvFresh ++ [])))) s2Step122HeadG_Incoming s2Step122HeadG_checked h1 s2Step122HeadG_Outgoing
  exact h0

private theorem s2Step122HeadBank_checked : compileHmrBankResizeLog .headroom s2Step122HeadGBefore ⟨s2Step122HeadFRow,s2Step122HeadGRow,s2Step122HeadFvRow,s2Step122HeadGvRow⟩ ⟨211,211,75,75⟩ [s2Step122HeadGFresh,s2Step122HeadFFresh,s2Step122HeadGvFresh,s2Step122HeadFvFresh]=
    some (s2Step122HeadFvAfter,⟨s2Step122HeadFOut,s2Step122HeadGOut,s2Step122HeadFvOut,s2Step122HeadGvOut⟩,(growRow 769 s2Step122HeadGFresh ++ (growRow 768 s2Step122HeadFFresh ++ (growRow 771 s2Step122HeadGvFresh ++ (growRow 770 s2Step122HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step122HeadBank_rows]
  rfl

private theorem s2Step122Front_checked : compileHmrSourceFrontLog s2Step122EntryFBefore s2Step122FrontBank 210 74 ⟨208,208,75,74⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step122FrontLog=some s2Step122FrontPlan := by
  have pairEq : s2Step122FrontPair=⟨s2Step122HeadFRow,s2Step122HeadGRow,s2Step122HeadFvRow,s2Step122HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step122FrontHead=⟨s2Step122ExitFRow,s2Step122ExitGRow,s2Step122ExitFvRow,s2Step122ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step122Add0A=s2Step122FrontHead.f.wires := by decide +kernel
  have gEq : s2Step122Add0B=s2Step122FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step122Add1A=s2Step122FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step122Add1B=s2Step122FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step122EntryFBefore s2Step122FrontBank 210 74 ⟨208,208,75,74⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step122FrontLog s2Step122FrontPlan
  · exact s2Step122Front_entry
  · exact s2Step122EntryBank_checked
  · exact s2Step122Front_sigma
  · rfl
  · exact s2Step122Front_branch
  · rfl
  · simpa only [s2Step122FrontPlan,pairEq] using s2Step122HeadBank_checked
  · simpa only [s2Step122FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step122F4_checked
  · exact s2Step122Counter_checked
  · rfl
  · simpa only [s2Step122FrontPlan,headEq] using s2Step122ExitBank_checked

private theorem s2Step122Complete_explicit_checked : compileHmrEarlyStepLog s2Step122EntryFBefore s2Step122FrontBank 210 74 ⟨208,208,75,74⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step122CompleteLog=some s2Step122CompletePlan := by
  let Q := s2Step122EarlyControlPlan
  have hq := s2Step122EarlyControl_plan_checked
  have fv1 : s2Step122CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step122CompleteOut.fv.payload[2]?.getD s2Step122CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step122CompleteOut.fv.payload[3]?.getD s2Step122CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step122CompleteOut.fv.payload[4]?.getD s2Step122CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step122EntryFBefore s2Step122EarlyControlArena s2Step122FrontBank 210 74 ⟨208,208,75,74⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step122CompleteLog s2Step122FrontPlan Q
    s2Step122Front_checked s2Step122Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step122Complete_owned s2Step122Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step122EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 819 s2Step122CompleteOut.fv.second (s2Step122CompleteOut.fv.payload[2]?.getD s2Step122CompleteOut.fv.sign) (s2Step122CompleteOut.fv.payload[3]?.getD s2Step122CompleteOut.fv.sign) (s2Step122CompleteOut.fv.payload[4]?.getD s2Step122CompleteOut.fv.sign) 806 37 s2Step122EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep122Arena : Arena := s2Step122EntryFBefore
def s2PrivateStep122Bank : WindowBank := s2Step122FrontBank
def s2PrivateStep122Spec : HmrSourceWalkStepLog := ⟨210,74,⟨208,208,75,74⟩,37,.early s2Step122CompleteLog⟩
def s2PrivateStep122Plan : HmrSourceStepPlan := .early s2Step122CompletePlan
theorem s2PrivateStep122_source : s2PrivateStep122Spec=s2ObservedLogs112[10] := rfl
theorem s2PrivateStep122_checked : compileHmrSourceStepLog s2PrivateStep122Arena s2PrivateStep122Bank
    s2PrivateStep122Spec.fgWidth s2PrivateStep122Spec.vWidth s2PrivateStep122Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881]
    6 498 122 s2PrivateStep122Spec.need none s2PrivateStep122Spec.log=some s2PrivateStep122Plan := by
  change compileHmrSourceStepLog s2Step122EntryFBefore s2Step122FrontBank 210 74 ⟨208,208,75,74⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 6 498 122 37 none (.early s2Step122CompleteLog)=some (.early s2Step122CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 122<498)]
  rw [s2Step122Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
