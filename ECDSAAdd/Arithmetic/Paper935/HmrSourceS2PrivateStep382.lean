import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep380
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

private def s2Step382CompleteMoves : List (Wire × Wire) := [(792,592)]

private def s2Step382EarlyControlLog : HmrEarlyControlLog := ⟨[792, 799, 809, 837, 810],[793],[825],[827, 844, 907, 913, 914, 915],[]⟩

private def s2Step382FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [837], [], []],[[810], [809], [799], [803]],[[], [], [], []]⟩,[824],[846],[793],[825],[827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[793, 825, 827, 844]⟩

private def s2Step382CompleteLog : HmrEarlyStepLog := ⟨s2Step382FrontLog,s2Step382CompleteMoves,s2Step382EarlyControlLog⟩

private def s2Step382ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591],768⟩

private def s2Step382ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 81, 80, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826, 789, 800, 842, 785, 803],770⟩

private def s2Step382ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79],769⟩

private def s2Step382ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 596, 595, 594, 593, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811, 796, 802, 797, 835],771⟩

private def s2Step382FrontOut : WindowBank := ⟨s2Step382ExitFOut,s2Step382ExitGOut,s2Step382ExitFvOut,s2Step382ExitGvOut⟩

private def s2Step382CompleteOut : WindowBank := s2Step382FrontOut.repacked s2Step382CompleteMoves

private def s2Step382EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<809) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step382EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step382EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step382EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step382EarlyControlPositiveArena,[793],s2Step382EarlyControlEqualityArena,[825],⟨⟨824,false⟩,[⟨⟨793,false⟩,825⟩]⟩⟩

private def s2Step382EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<916)),Finset.filter_subset _ _⟩

private def s2Step382EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<916)),Finset.filter_subset _ _⟩

private def s2Step382EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<809) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step382EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<809) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (847≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step382EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<809) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step382EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step382EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,792⟩,⟨⟨774,false⟩,799⟩,⟨⟨775,false⟩,809⟩,⟨⟨776,false⟩,837⟩,⟨⟨777,false⟩,810⟩]⟩

private def s2Step382EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step382EarlyControlZeroArena,s2Step382EarlyControlZeroPlan,s2Step382EarlyControlClassPlan,s2Step382EarlyControlFlagArena,s2Step382EarlyControlFittedArena,s2Step382EarlyControlHistoryArena,s2Step382EarlyControlSigmaArena,s2Step382EarlyControlOutputArena,s2Step382EarlyControlLog⟩

private def s2Step382CounterWork : List Wire := [793, 825, 827, 844]

private theorem s2Step382Counter_bounded : s2Step382CounterWork.toFinset⊆arenaWires := by norm_num [s2Step382CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step382HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step382CounterDuring : Arena := ⟨s2Step382HeadFvAfter.live∪s2Step382CounterWork.toFinset,Finset.union_subset s2Step382HeadFvAfter.bounded s2Step382Counter_bounded⟩

private def s2Step382EntryFFresh : List Wire := []

private def s2Step382EntryFvFresh : List Wire := []

private def s2Step382EntryGFresh : List Wire := [837]

private def s2Step382EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (847≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step382EntryGvAfter : Arena := s2Step382EntryGAfter

private def s2Step382EntryGvFresh : List Wire := []

private def s2Step382ExitFExtra : List Wire := [592, 809]

private def s2Step382ExitGExtra : List Wire := [837, 810]

private def s2Step382ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<592) ∨ (593≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<809) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step382ExitGvExtra : List Wire := [799]

private def s2Step382Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step382Add0Work : List Wire := [827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step382Add0_bounded : s2Step382Add0Work.toFinset⊆arenaWires := by
  have h : s2Step382Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step382Add0During : Arena := ⟨s2Step382Add0Arena.live∪s2Step382Add0Work.toFinset,Finset.union_subset s2Step382Add0Arena.bounded s2Step382Add0_bounded⟩

private def s2Step382Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step382Add1Work : List Wire := [827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step382Add1_bounded : s2Step382Add1Work.toFinset⊆arenaWires := by
  have h : s2Step382Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step382Add1During : Arena := ⟨s2Step382Add1Arena.live∪s2Step382Add1Work.toFinset,Finset.union_subset s2Step382Add1Arena.bounded s2Step382Add1_bounded⟩

private def s2Step382F4FlagArena : Arena := ⟨s2Step382HeadFvAfter.live∪{793},Finset.union_subset s2Step382HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step382F4Plan : HmrHybridF4Plan := ⟨s2Step382F4FlagArena,[793],s2Step382Add0Arena,[825],s2Step382Add0During,s2Step382Add0Work,s2Step382Add1During,s2Step382Add1Work⟩

private def s2Step382HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 809],768⟩

private def s2Step382HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 81, 80, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826, 789, 800, 842, 785, 803],770⟩

private def s2Step382HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 837, 810],769⟩

private def s2Step382HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 596, 595, 594, 593, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811, 796, 802, 797, 835, 799],771⟩

private def s2Step382FrontHead : WindowBank := ⟨s2Step382HeadFOut,s2Step382HeadGOut,s2Step382HeadFvOut,s2Step382HeadGvOut⟩

private def s2Step382EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592],768⟩

private def s2Step382EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 81, 80, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826, 789, 800, 842, 785],770⟩

private def s2Step382EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 837],769⟩

private def s2Step382EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 596, 595, 594, 593, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811, 796, 802, 797, 835],771⟩

private def s2Step382FrontPair : WindowBank := ⟨s2Step382EntryFOut,s2Step382EntryGOut,s2Step382EntryFvOut,s2Step382EntryGvOut⟩

private def s2Step382FrontSigmaArena : Arena := ⟨s2Step382EntryGvAfter.live∪{824},Finset.union_subset s2Step382EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step382HeadFFresh : List Wire := [809]

private def s2Step382HeadFvFresh : List Wire := [803]

private def s2Step382HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step382HeadGFresh : List Wire := [810]

private def s2Step382HeadGvFresh : List Wire := [799]

private def s2Step382FrontPlan : HmrSourceFront := ⟨s2Step382EntryGvAfter,s2Step382FrontPair,(growRow 768 s2Step382EntryFFresh ++ (growRow 769 s2Step382EntryGFresh ++ (growRow 770 s2Step382EntryFvFresh ++ (growRow 771 s2Step382EntryGvFresh ++ [])))),s2Step382FrontSigmaArena,[824],s2Step382HeadGBefore,[846],
  s2Step382HeadFvAfter,s2Step382FrontHead,(growRow 769 s2Step382HeadGFresh ++ (growRow 768 s2Step382HeadFFresh ++ (growRow 771 s2Step382HeadGvFresh ++ (growRow 770 s2Step382HeadFvFresh ++ [])))),s2Step382F4Plan,s2Step382CounterDuring,s2Step382CounterWork,s2Step382ExitGvAfter,s2Step382FrontOut,(shrinkRow 769 s2Step382ExitGExtra ++ (shrinkRow 768 s2Step382ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step382ExitGvExtra ++ []))))⟩

private def s2Step382CompletePlan : HmrEarlyStepPlan := ⟨s2Step382FrontPlan,s2Step382EarlyControlArena,s2Step382EarlyControlPlan,s2Step382CompleteMoves⟩

private theorem s2Step382Complete_apart : List.Disjoint (s2Step382CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [824, 846, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] := by
  have nd : ((s2Step382CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[824, 846, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step382Complete_owned : (s2Step382CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step382EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step382EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<809) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private def s2Step382CompleteMoveArena : Arena := ⟨s2Step382ExitGvAfter.live∪{592},Finset.union_subset s2Step382ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step382Complete_repack : s2Step382ExitGvAfter.checkRepack s2Step382CompleteMoves=some s2Step382EarlyControlArena := by
  have owned : 792∈s2Step382ExitGvAfter.live := by norm_num [s2Step382ExitGvAfter,arenaWires]
  have reserve : s2Step382ExitGvAfter.reserve {592}=some s2Step382CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step382ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step382CompleteMoveArena.retireSet {792}=s2Step382EarlyControlArena := by
    unfold Arena.retireSet s2Step382EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step382CompleteMoveArena,s2Step382ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step382CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step382CompleteMoveArena.retireSet {792}).checkRepack []=some s2Step382EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step382EarlyControl_branchOwned : ([846] : List Wire).toFinset⊆s2Step382EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step382EarlyControlSigmaArena (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<809) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step382EarlyControl_branch : compileHmrBranchRetirement s2Step382EarlyControlSigmaArena 846=some s2Step382EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step382EarlyControl_branchOwned
  · ext q
    simp [s2Step382EarlyControlOutputArena,s2Step382EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step382EarlyControl_classEqualityBorrow : s2Step382EarlyControlPositiveArena.checkBorrow (([824, 793] : List Wire).length-1) s2Step382EarlyControlLog.classWork=some s2Step382EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step382EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step382EarlyControlPositiveArena (fun q => (0≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step382EarlyControlEqualityArena,s2Step382EarlyControlPositiveArena,s2Step382EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step382EarlyControl_classEqualityOwned : ([824, 793] : List Wire).toFinset⊆s2Step382EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step382EarlyControlPositiveArena (fun q => (0≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step382EarlyControl_classEquality : compileHmrEqualityLog s2Step382EarlyControlPositiveArena [824, 793] 0 s2Step382EarlyControlLog.classWork=some (s2Step382EarlyControlEqualityArena,s2Step382EarlyControlLog.classWork,s2Step382EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step382EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step382EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step382EarlyControl_classOwned : ([777, 810, 824] : List Wire).toFinset⊆s2Step382EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step382EarlyControlZeroArena (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step382EarlyControl_positiveBorrow : s2Step382EarlyControlZeroArena.checkBorrow (1) s2Step382EarlyControlLog.positiveWork=some s2Step382EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step382EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step382EarlyControlZeroArena (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step382EarlyControlPositiveArena,s2Step382EarlyControlZeroArena,s2Step382EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step382EarlyControl_class : compileHmrSourceClassLog s2Step382EarlyControlZeroArena false 777 s2Step382EarlyControlZeroPlan.top 0 824 s2Step382EarlyControlLog.positiveWork s2Step382EarlyControlLog.classWork=some s2Step382EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step382EarlyControlClassPlan s2Step382EarlyControlZeroArena false 777 s2Step382EarlyControlZeroPlan.top 0 824
  constructor
  · decide +kernel
  · exact s2Step382EarlyControl_classOwned
  · exact s2Step382EarlyControl_positiveBorrow
  · exact s2Step382EarlyControl_classEquality

private theorem s2Step382EarlyControl_entryRecordOwned : ([846, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step382EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step382EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<809) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step382EarlyControl_entrySigmaOwned : ([824, 254] : List Wire).toFinset⊆s2Step382EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step382EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<809) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step382EarlyControl_fitBorrow : s2Step382EarlyControlFlagArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step382EarlyControlLog.recordFresh=some s2Step382EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step382EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step382EarlyControlFlagArena (fun q => (0≤q ∧ q<916)) rfl
      decide +kernel
    · ext q
      simp [s2Step382EarlyControlFittedArena,s2Step382EarlyControlFlagArena,s2Step382EarlyControlLog,arenaWires]

private theorem s2Step382EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step382EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step382EarlyControlFlagArena (fun q => (0≤q ∧ q<916)) rfl
  decide +kernel

private theorem s2Step382EarlyControl_fit : compileHmrRecordGrowLog s2Step382EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step382EarlyControlLog.recordFresh=some s2Step382EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step382EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step382EarlyControl_fitBorrow

private theorem s2Step382EarlyControl_flagsBorrow : s2Step382EarlyControlEqualityArena.checkBorrow (6) s2Step382EarlyControlLog.flagWork=some s2Step382EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step382EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step382EarlyControlEqualityArena (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step382EarlyControlFlagArena,s2Step382EarlyControlEqualityArena,s2Step382EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step382EarlyControl_flagsOwned : ([825, 253, 252, 251] : List Wire).toFinset⊆s2Step382EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step382EarlyControlEqualityArena (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step382EarlyControl_flags : compileHmrFlagsLog s2Step382EarlyControlClassPlan.equalityArena s2Step382EarlyControlClassPlan.equality.top 253 252 251 s2Step382EarlyControlLog.flagWork=some s2Step382EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step382EarlyControl_flagsOwned⟩
  · exact s2Step382EarlyControl_flagsBorrow

private theorem s2Step382EarlyControl_historyBorrow : s2Step382EarlyControlArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step382EarlyControlLog.recordFresh=some s2Step382EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step382EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step382EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<809) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step382EarlyControlHistoryArena,s2Step382EarlyControlArena,s2Step382EarlyControlLog,arenaWires]

private theorem s2Step382EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step382EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step382EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<809) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step382EarlyControl_history : compileHmrRecordGrowLog s2Step382EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step382EarlyControlLog.recordFresh=some s2Step382EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step382EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step382EarlyControl_historyBorrow

private theorem s2Step382EarlyControl_sigmaOwned : ([254, 824] : List Wire).toFinset⊆s2Step382EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step382EarlyControlHistoryArena (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<809) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step382EarlyControl_sigmaReleaseOwned : ([824] : List Wire).toFinset⊆s2Step382EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step382EarlyControlHistoryArena (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<809) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step382EarlyControl_sigmaRelease : s2Step382EarlyControlHistoryArena.release {824} (fun _ => false)=some s2Step382EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step382EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step382EarlyControlSigmaArena,s2Step382EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step382EarlyControl_sigma : compileHmrSigmaDropLog s2Step382EarlyControlHistoryArena false 0 0 254 824 []=some s2Step382EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step382EarlyControl_sigmaOwned⟩
  · exact s2Step382EarlyControl_sigmaRelease

private theorem s2Step382EarlyControl_zeroBorrow : s2Step382EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step382EarlyControlLog.zeroWork=some s2Step382EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step382EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step382EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<809) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step382EarlyControlZeroArena,s2Step382EarlyControlArena,s2Step382EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step382EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step382EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step382EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<809) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step382EarlyControl_zero : compileHmrEqualityLog s2Step382EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step382EarlyControlLog.zeroWork=some (s2Step382EarlyControlZeroArena,s2Step382EarlyControlLog.zeroWork,s2Step382EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step382EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step382EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step382EarlyControl_logged : s2Step382EarlyControlPlan.Logged s2Step382EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 824 254 253 252 251 846 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step382EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step382EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step382EarlyControl_zero
  · exact s2Step382EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step382EarlyControl_flags
  · exact s2Step382EarlyControl_fit
  · exact s2Step382EarlyControl_history
  · exact s2Step382EarlyControl_sigma
  · exact s2Step382EarlyControl_branch

private theorem s2Step382EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step382EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 824 254 253 252 251 846 60 s2Step382EarlyControlLog=some s2Step382EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step382EarlyControlPlan s2Step382EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 824 254 253 252 251 846 60 s2Step382EarlyControl_logged

private def s2Step382EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (847≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step382EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592],768⟩

private def s2Step382EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 81, 80, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826, 789, 800, 842, 785],770⟩

private def s2Step382EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79],769⟩

private def s2Step382EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 596, 595, 594, 593, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811, 796, 802, 797, 835],771⟩

private def s2Step382FrontBank : WindowBank := ⟨s2Step382EntryFRow,s2Step382EntryGRow,s2Step382EntryFvRow,s2Step382EntryGvRow⟩

private def s2Step382Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 809, 768]

private def s2Step382Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 837, 810, 769]

private def s2Step382Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 81, 80, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826, 789, 800, 842, 785, 803, 770]

private def s2Step382Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 596, 595, 594, 593, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811, 796, 802, 797, 835, 799, 771]

private theorem s2Step382Counter_apart : Disjoint s2Step382HeadFvAfter.live s2Step382CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step382HeadFvAfter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step382Counter_borrowed : s2Step382HeadFvAfter.checkBorrow 4 s2Step382CounterWork=some s2Step382CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step382HeadFvAfter s2Step382CounterDuring s2Step382CounterWork.toFinset s2Step382Counter_bounded s2Step382Counter_apart rfl

private theorem s2Step382Counter_owned : (824::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step382HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step382HeadFvAfter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step382Counter_checked : compileHmrCounterStepLog s2Step382HeadFvAfter true 824 [772, 773, 774, 775, 776, 777] s2Step382CounterWork=some s2Step382CounterDuring := by
  have owned : ∀q∈824::[772, 773, 774, 775, 776, 777],q∈s2Step382HeadFvAfter.live := fun q hq => s2Step382Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step382Counter_borrowed

private def s2Step382EntryFAfter : Arena := s2Step382EntryFBefore

private theorem s2Step382EntryBank_incomingDistinct : ([s2Step382EntryFRow,s2Step382EntryGRow,s2Step382EntryFvRow,s2Step382EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step382EntryF_Incoming : rowsOwned s2Step382EntryFBefore [s2Step382EntryFRow,s2Step382EntryGRow,s2Step382EntryFvRow,s2Step382EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step382EntryFRow,s2Step382EntryGRow,s2Step382EntryFvRow,s2Step382EntryGvRow] 0 s2Step382EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step382EntryFBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (847≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step382EntryBank_outgoingOwned : rowsOwned s2Step382EntryGvAfter [s2Step382EntryFOut,s2Step382EntryGOut,s2Step382EntryFvOut,s2Step382EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step382EntryGvAfter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (847≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step382EntryF_Outgoing : rowsOwned s2Step382EntryGvAfter [s2Step382EntryFOut,s2Step382EntryGOut,s2Step382EntryFvOut,s2Step382EntryGvOut] :=
  hmrRows_owned_drop s2Step382EntryGvAfter [s2Step382EntryFOut,s2Step382EntryGOut,s2Step382EntryFvOut,s2Step382EntryGvOut] 0 s2Step382EntryBank_outgoingOwned

private theorem s2Step382EntryF_distinct : (s2Step382EntryFRow.sign::s2Step382EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step382EntryF_owned : (s2Step382EntryFRow.sign::s2Step382EntryFRow.payload).toFinset⊆s2Step382EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step382EntryFBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (847≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step382EntryF_reserved : s2Step382EntryFBefore.reserve s2Step382EntryFFresh.toFinset=some s2Step382EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step382EntryFFresh,arenaWires]
  · norm_num [s2Step382EntryFBefore,s2Step382EntryFFresh,arenaWires]
  · simp only [s2Step382EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step382EntryF_checked : planRowResizeLog s2Step382EntryFBefore s2Step382EntryFRow 81 s2Step382EntryFFresh=
    some (s2Step382EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592],768⟩,growRow 768 s2Step382EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step382EntryFBefore s2Step382EntryFAfter s2Step382EntryFRow 81 s2Step382EntryFFresh
    s2Step382EntryF_distinct s2Step382EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step382EntryF_reserved
  have rowEq : WindowRow.mk (s2Step382EntryFRow.payload++s2Step382EntryFFresh) s2Step382EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step382EntryFvAfter : Arena := s2Step382EntryGAfter

private def s2Step382EntryFvBefore : Arena := s2Step382EntryGAfter

private theorem s2Step382EntryFv_Incoming : rowsOwned s2Step382EntryFvBefore [s2Step382EntryFvRow,s2Step382EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step382EntryFRow,s2Step382EntryGRow,s2Step382EntryFvRow,s2Step382EntryGvRow] 2 s2Step382EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step382EntryFvBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (847≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step382EntryFv_Outgoing : rowsOwned s2Step382EntryGvAfter [s2Step382EntryFvOut,s2Step382EntryGvOut] :=
  hmrRows_owned_drop s2Step382EntryGvAfter [s2Step382EntryFOut,s2Step382EntryGOut,s2Step382EntryFvOut,s2Step382EntryGvOut] 2 s2Step382EntryBank_outgoingOwned

private theorem s2Step382EntryFv_distinct : (s2Step382EntryFvRow.sign::s2Step382EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step382EntryFv_owned : (s2Step382EntryFvRow.sign::s2Step382EntryFvRow.payload).toFinset⊆s2Step382EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step382EntryFvBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (847≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step382EntryFv_reserved : s2Step382EntryFvBefore.reserve s2Step382EntryFvFresh.toFinset=some s2Step382EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step382EntryFvFresh,arenaWires]
  · norm_num [s2Step382EntryFvBefore,s2Step382EntryGAfter,s2Step382EntryFvFresh,arenaWires]
  · simp only [s2Step382EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step382EntryFv_checked : planRowResizeLog s2Step382EntryFvBefore s2Step382EntryFvRow 207 s2Step382EntryFvFresh=
    some (s2Step382EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 81, 80, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826, 789, 800, 842, 785],770⟩,growRow 770 s2Step382EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step382EntryFvBefore s2Step382EntryFvAfter s2Step382EntryFvRow 207 s2Step382EntryFvFresh
    s2Step382EntryFv_distinct s2Step382EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step382EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step382EntryFvRow.payload++s2Step382EntryFvFresh) s2Step382EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 81, 80, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826, 789, 800, 842, 785],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step382EntryGBefore : Arena := s2Step382EntryFBefore

private theorem s2Step382EntryG_Incoming : rowsOwned s2Step382EntryGBefore [s2Step382EntryGRow,s2Step382EntryFvRow,s2Step382EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step382EntryFRow,s2Step382EntryGRow,s2Step382EntryFvRow,s2Step382EntryGvRow] 1 s2Step382EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step382EntryGBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (847≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step382EntryG_Outgoing : rowsOwned s2Step382EntryGvAfter [s2Step382EntryGOut,s2Step382EntryFvOut,s2Step382EntryGvOut] :=
  hmrRows_owned_drop s2Step382EntryGvAfter [s2Step382EntryFOut,s2Step382EntryGOut,s2Step382EntryFvOut,s2Step382EntryGvOut] 1 s2Step382EntryBank_outgoingOwned

private theorem s2Step382EntryG_distinct : (s2Step382EntryGRow.sign::s2Step382EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step382EntryG_owned : (s2Step382EntryGRow.sign::s2Step382EntryGRow.payload).toFinset⊆s2Step382EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step382EntryGBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (847≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step382EntryG_reserved : s2Step382EntryGBefore.reserve s2Step382EntryGFresh.toFinset=some s2Step382EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step382EntryGFresh,arenaWires]
  · norm_num [s2Step382EntryGBefore,s2Step382EntryFBefore,s2Step382EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step382EntryGAfter,s2Step382EntryGBefore,s2Step382EntryFBefore,s2Step382EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step382EntryG_checked : planRowResizeLog s2Step382EntryGBefore s2Step382EntryGRow 81 s2Step382EntryGFresh=
    some (s2Step382EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 837],769⟩,growRow 769 s2Step382EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step382EntryGBefore s2Step382EntryGAfter s2Step382EntryGRow 81 s2Step382EntryGFresh
    s2Step382EntryG_distinct s2Step382EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step382EntryG_reserved
  have rowEq : WindowRow.mk (s2Step382EntryGRow.payload++s2Step382EntryGFresh) s2Step382EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 837],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step382EntryGvBefore : Arena := s2Step382EntryGAfter

private theorem s2Step382EntryGv_Incoming : rowsOwned s2Step382EntryGvBefore [s2Step382EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step382EntryFRow,s2Step382EntryGRow,s2Step382EntryFvRow,s2Step382EntryGvRow] 3 s2Step382EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step382EntryGvBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (847≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step382EntryGv_Outgoing : rowsOwned s2Step382EntryGvAfter [s2Step382EntryGvOut] :=
  hmrRows_owned_drop s2Step382EntryGvAfter [s2Step382EntryFOut,s2Step382EntryGOut,s2Step382EntryFvOut,s2Step382EntryGvOut] 3 s2Step382EntryBank_outgoingOwned

private theorem s2Step382EntryGv_distinct : (s2Step382EntryGvRow.sign::s2Step382EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step382EntryGv_owned : (s2Step382EntryGvRow.sign::s2Step382EntryGvRow.payload).toFinset⊆s2Step382EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step382EntryGvBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (847≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step382EntryGv_reserved : s2Step382EntryGvBefore.reserve s2Step382EntryGvFresh.toFinset=some s2Step382EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step382EntryGvFresh,arenaWires]
  · norm_num [s2Step382EntryGvBefore,s2Step382EntryGAfter,s2Step382EntryGvFresh,arenaWires]
  · simp only [s2Step382EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step382EntryGv_checked : planRowResizeLog s2Step382EntryGvBefore s2Step382EntryGvRow 207 s2Step382EntryGvFresh=
    some (s2Step382EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 596, 595, 594, 593, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811, 796, 802, 797, 835],771⟩,growRow 771 s2Step382EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step382EntryGvBefore s2Step382EntryGvAfter s2Step382EntryGvRow 207 s2Step382EntryGvFresh
    s2Step382EntryGv_distinct s2Step382EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step382EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step382EntryGvRow.payload++s2Step382EntryGvFresh) s2Step382EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 596, 595, 594, 593, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811, 796, 802, 797, 835],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step382EntryBank_rows : planWindowRowsLog s2Step382EntryFBefore [(s2Step382EntryFRow,81),(s2Step382EntryGRow,81),(s2Step382EntryFvRow,207),(s2Step382EntryGvRow,207)] [s2Step382EntryFFresh,s2Step382EntryGFresh,s2Step382EntryFvFresh,s2Step382EntryGvFresh]=
    some (s2Step382EntryGvAfter,[s2Step382EntryFOut,s2Step382EntryGOut,s2Step382EntryFvOut,s2Step382EntryGvOut],(growRow 768 s2Step382EntryFFresh ++ (growRow 769 s2Step382EntryGFresh ++ (growRow 770 s2Step382EntryFvFresh ++ (growRow 771 s2Step382EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step382EntryGvAfter [] []=some (s2Step382EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step382EntryGvBefore s2Step382EntryGvAfter s2Step382EntryGvAfter
    s2Step382EntryGvRow s2Step382EntryGvOut 207 s2Step382EntryGvFresh [] [] []
    (growRow 771 s2Step382EntryGvFresh) ([]) s2Step382EntryGv_Incoming s2Step382EntryGv_checked h4 s2Step382EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step382EntryFvBefore s2Step382EntryFvAfter s2Step382EntryGvAfter
    s2Step382EntryFvRow s2Step382EntryFvOut 207 s2Step382EntryFvFresh [(s2Step382EntryGvRow,207)] [s2Step382EntryGvFresh] [s2Step382EntryGvOut]
    (growRow 770 s2Step382EntryFvFresh) ((growRow 771 s2Step382EntryGvFresh ++ [])) s2Step382EntryFv_Incoming s2Step382EntryFv_checked h3 s2Step382EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step382EntryGBefore s2Step382EntryGAfter s2Step382EntryGvAfter
    s2Step382EntryGRow s2Step382EntryGOut 81 s2Step382EntryGFresh [(s2Step382EntryFvRow,207),(s2Step382EntryGvRow,207)] [s2Step382EntryFvFresh,s2Step382EntryGvFresh] [s2Step382EntryFvOut,s2Step382EntryGvOut]
    (growRow 769 s2Step382EntryGFresh) ((growRow 770 s2Step382EntryFvFresh ++ (growRow 771 s2Step382EntryGvFresh ++ []))) s2Step382EntryG_Incoming s2Step382EntryG_checked h2 s2Step382EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step382EntryFBefore s2Step382EntryFAfter s2Step382EntryGvAfter
    s2Step382EntryFRow s2Step382EntryFOut 81 s2Step382EntryFFresh [(s2Step382EntryGRow,81),(s2Step382EntryFvRow,207),(s2Step382EntryGvRow,207)] [s2Step382EntryGFresh,s2Step382EntryFvFresh,s2Step382EntryGvFresh] [s2Step382EntryGOut,s2Step382EntryFvOut,s2Step382EntryGvOut]
    (growRow 768 s2Step382EntryFFresh) ((growRow 769 s2Step382EntryGFresh ++ (growRow 770 s2Step382EntryFvFresh ++ (growRow 771 s2Step382EntryGvFresh ++ [])))) s2Step382EntryF_Incoming s2Step382EntryF_checked h1 s2Step382EntryF_Outgoing
  exact h0

private theorem s2Step382EntryBank_checked : compileHmrBankResizeLog .entry s2Step382EntryFBefore ⟨s2Step382EntryFRow,s2Step382EntryGRow,s2Step382EntryFvRow,s2Step382EntryGvRow⟩ ⟨81,81,207,207⟩ [s2Step382EntryFFresh,s2Step382EntryGFresh,s2Step382EntryFvFresh,s2Step382EntryGvFresh]=
    some (s2Step382EntryGvAfter,⟨s2Step382EntryFOut,s2Step382EntryGOut,s2Step382EntryFvOut,s2Step382EntryGvOut⟩,(growRow 768 s2Step382EntryFFresh ++ (growRow 769 s2Step382EntryGFresh ++ (growRow 770 s2Step382EntryFvFresh ++ (growRow 771 s2Step382EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step382EntryBank_rows]
  rfl

private def s2Step382ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<592) ∨ (593≤q ∧ q<793) ∨ (794≤q ∧ q<809) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step382ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<810) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step382ExitFBefore : Arena := s2Step382ExitGAfter

private def s2Step382ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 809],768⟩

private def s2Step382ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 81, 80, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826, 789, 800, 842, 785, 803],770⟩

private def s2Step382ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 837, 810],769⟩

private def s2Step382ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 596, 595, 594, 593, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811, 796, 802, 797, 835, 799],771⟩

private theorem s2Step382ExitBank_incomingDistinct : ([s2Step382ExitGRow,s2Step382ExitFRow,s2Step382ExitFvRow,s2Step382ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step382ExitF_Incoming : rowsOwned s2Step382ExitFBefore [s2Step382ExitFRow,s2Step382ExitFvRow,s2Step382ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step382ExitGRow,s2Step382ExitFRow,s2Step382ExitFvRow,s2Step382ExitGvRow] 1 s2Step382ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step382ExitFBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<810) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step382ExitBank_outgoingOwned : rowsOwned s2Step382ExitGvAfter [s2Step382ExitGOut,s2Step382ExitFOut,s2Step382ExitFvOut,s2Step382ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step382ExitGvAfter (fun q => (0≤q ∧ q<592) ∨ (593≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<809) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step382ExitF_Outgoing : rowsOwned s2Step382ExitGvAfter [s2Step382ExitFOut,s2Step382ExitFvOut,s2Step382ExitGvOut] :=
  hmrRows_owned_drop s2Step382ExitGvAfter [s2Step382ExitGOut,s2Step382ExitFOut,s2Step382ExitFvOut,s2Step382ExitGvOut] 1 s2Step382ExitBank_outgoingOwned

private theorem s2Step382ExitF_distinct : (s2Step382ExitFRow.sign::s2Step382ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step382ExitF_owned : (s2Step382ExitFRow.sign::s2Step382ExitFRow.payload).toFinset⊆s2Step382ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step382ExitFBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<810) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step382ExitF_retired : s2Step382ExitFBefore.retireSet s2Step382ExitFExtra.toFinset=s2Step382ExitFAfter := by
  unfold Arena.retireSet s2Step382ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step382ExitFBefore,s2Step382ExitGAfter,s2Step382ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step382ExitF_checked : planRowResizeLog s2Step382ExitFBefore s2Step382ExitFRow 80 []=
    some (s2Step382ExitFAfter,s2Step382ExitFOut,shrinkRow 768 s2Step382ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step382ExitFBefore s2Step382ExitFRow 80 s2Step382ExitF_distinct s2Step382ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step382ExitFRow.payload.take 80) s2Step382ExitFRow.sign=s2Step382ExitFOut := by decide +kernel
  have hi : s2Step382ExitFRow.payload.drop 80=s2Step382ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step382ExitF_retired] at result
  exact result

private def s2Step382ExitFvAfter : Arena := s2Step382ExitFAfter

private def s2Step382ExitFvBefore : Arena := s2Step382ExitFAfter

private theorem s2Step382ExitFv_Incoming : rowsOwned s2Step382ExitFvBefore [s2Step382ExitFvRow,s2Step382ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step382ExitGRow,s2Step382ExitFRow,s2Step382ExitFvRow,s2Step382ExitGvRow] 2 s2Step382ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step382ExitFvBefore (fun q => (0≤q ∧ q<592) ∨ (593≤q ∧ q<793) ∨ (794≤q ∧ q<809) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step382ExitFv_Outgoing : rowsOwned s2Step382ExitGvAfter [s2Step382ExitFvOut,s2Step382ExitGvOut] :=
  hmrRows_owned_drop s2Step382ExitGvAfter [s2Step382ExitGOut,s2Step382ExitFOut,s2Step382ExitFvOut,s2Step382ExitGvOut] 2 s2Step382ExitBank_outgoingOwned

private theorem s2Step382ExitFv_distinct : (s2Step382ExitFvRow.sign::s2Step382ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step382ExitFv_owned : (s2Step382ExitFvRow.sign::s2Step382ExitFvRow.payload).toFinset⊆s2Step382ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step382ExitFvBefore (fun q => (0≤q ∧ q<592) ∨ (593≤q ∧ q<793) ∨ (794≤q ∧ q<809) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step382ExitFv_reserved : s2Step382ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step382ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step382ExitFv_checked : planRowResizeLog s2Step382ExitFvBefore s2Step382ExitFvRow 208 []=
    some (s2Step382ExitFvAfter,s2Step382ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step382ExitFvBefore s2Step382ExitFvAfter s2Step382ExitFvRow 208 []
    s2Step382ExitFv_distinct s2Step382ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step382ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step382ExitFvRow.payload++[]) s2Step382ExitFvRow.sign=s2Step382ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step382ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private theorem s2Step382ExitG_Incoming : rowsOwned s2Step382ExitGBefore [s2Step382ExitGRow,s2Step382ExitFRow,s2Step382ExitFvRow,s2Step382ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step382ExitGRow,s2Step382ExitFRow,s2Step382ExitFvRow,s2Step382ExitGvRow] 0 s2Step382ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step382ExitGBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step382ExitG_Outgoing : rowsOwned s2Step382ExitGvAfter [s2Step382ExitGOut,s2Step382ExitFOut,s2Step382ExitFvOut,s2Step382ExitGvOut] :=
  hmrRows_owned_drop s2Step382ExitGvAfter [s2Step382ExitGOut,s2Step382ExitFOut,s2Step382ExitFvOut,s2Step382ExitGvOut] 0 s2Step382ExitBank_outgoingOwned

private theorem s2Step382ExitG_distinct : (s2Step382ExitGRow.sign::s2Step382ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step382ExitG_owned : (s2Step382ExitGRow.sign::s2Step382ExitGRow.payload).toFinset⊆s2Step382ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step382ExitGBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step382ExitG_retired : s2Step382ExitGBefore.retireSet s2Step382ExitGExtra.toFinset=s2Step382ExitGAfter := by
  unfold Arena.retireSet s2Step382ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step382ExitGBefore,s2Step382ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step382ExitG_checked : planRowResizeLog s2Step382ExitGBefore s2Step382ExitGRow 80 []=
    some (s2Step382ExitGAfter,s2Step382ExitGOut,shrinkRow 769 s2Step382ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step382ExitGBefore s2Step382ExitGRow 80 s2Step382ExitG_distinct s2Step382ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step382ExitGRow.payload.take 80) s2Step382ExitGRow.sign=s2Step382ExitGOut := by decide +kernel
  have hi : s2Step382ExitGRow.payload.drop 80=s2Step382ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step382ExitG_retired] at result
  exact result

private def s2Step382ExitGvBefore : Arena := s2Step382ExitFAfter

private theorem s2Step382ExitGv_Incoming : rowsOwned s2Step382ExitGvBefore [s2Step382ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step382ExitGRow,s2Step382ExitFRow,s2Step382ExitFvRow,s2Step382ExitGvRow] 3 s2Step382ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step382ExitGvBefore (fun q => (0≤q ∧ q<592) ∨ (593≤q ∧ q<793) ∨ (794≤q ∧ q<809) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step382ExitGv_Outgoing : rowsOwned s2Step382ExitGvAfter [s2Step382ExitGvOut] :=
  hmrRows_owned_drop s2Step382ExitGvAfter [s2Step382ExitGOut,s2Step382ExitFOut,s2Step382ExitFvOut,s2Step382ExitGvOut] 3 s2Step382ExitBank_outgoingOwned

private theorem s2Step382ExitGv_distinct : (s2Step382ExitGvRow.sign::s2Step382ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step382ExitGv_owned : (s2Step382ExitGvRow.sign::s2Step382ExitGvRow.payload).toFinset⊆s2Step382ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step382ExitGvBefore (fun q => (0≤q ∧ q<592) ∨ (593≤q ∧ q<793) ∨ (794≤q ∧ q<809) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step382ExitGv_retired : s2Step382ExitGvBefore.retireSet s2Step382ExitGvExtra.toFinset=s2Step382ExitGvAfter := by
  unfold Arena.retireSet s2Step382ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step382ExitGvBefore,s2Step382ExitFAfter,s2Step382ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step382ExitGv_checked : planRowResizeLog s2Step382ExitGvBefore s2Step382ExitGvRow 207 []=
    some (s2Step382ExitGvAfter,s2Step382ExitGvOut,shrinkRow 771 s2Step382ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step382ExitGvBefore s2Step382ExitGvRow 207 s2Step382ExitGv_distinct s2Step382ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step382ExitGvRow.payload.take 207) s2Step382ExitGvRow.sign=s2Step382ExitGvOut := by decide +kernel
  have hi : s2Step382ExitGvRow.payload.drop 207=s2Step382ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step382ExitGv_retired] at result
  exact result

private theorem s2Step382ExitBank_rows : planWindowRowsLog s2Step382ExitGBefore [(s2Step382ExitGRow,80),(s2Step382ExitFRow,80),(s2Step382ExitFvRow,208),(s2Step382ExitGvRow,207)] [[],[],[],[]]=
    some (s2Step382ExitGvAfter,[s2Step382ExitGOut,s2Step382ExitFOut,s2Step382ExitFvOut,s2Step382ExitGvOut],(shrinkRow 769 s2Step382ExitGExtra ++ (shrinkRow 768 s2Step382ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step382ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step382ExitGvAfter [] []=some (s2Step382ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step382ExitGvBefore s2Step382ExitGvAfter s2Step382ExitGvAfter
    s2Step382ExitGvRow s2Step382ExitGvOut 207 [] [] [] []
    (shrinkRow 771 s2Step382ExitGvExtra) ([]) s2Step382ExitGv_Incoming s2Step382ExitGv_checked h4 s2Step382ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step382ExitFvBefore s2Step382ExitFvAfter s2Step382ExitGvAfter
    s2Step382ExitFvRow s2Step382ExitFvOut 208 [] [(s2Step382ExitGvRow,207)] [[]] [s2Step382ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step382ExitGvExtra ++ [])) s2Step382ExitFv_Incoming s2Step382ExitFv_checked h3 s2Step382ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step382ExitFBefore s2Step382ExitFAfter s2Step382ExitGvAfter
    s2Step382ExitFRow s2Step382ExitFOut 80 [] [(s2Step382ExitFvRow,208),(s2Step382ExitGvRow,207)] [[],[]] [s2Step382ExitFvOut,s2Step382ExitGvOut]
    (shrinkRow 768 s2Step382ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step382ExitGvExtra ++ []))) s2Step382ExitF_Incoming s2Step382ExitF_checked h2 s2Step382ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step382ExitGBefore s2Step382ExitGAfter s2Step382ExitGvAfter
    s2Step382ExitGRow s2Step382ExitGOut 80 [] [(s2Step382ExitFRow,80),(s2Step382ExitFvRow,208),(s2Step382ExitGvRow,207)] [[],[],[]] [s2Step382ExitFOut,s2Step382ExitFvOut,s2Step382ExitGvOut]
    (shrinkRow 769 s2Step382ExitGExtra) ((shrinkRow 768 s2Step382ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step382ExitGvExtra ++ [])))) s2Step382ExitG_Incoming s2Step382ExitG_checked h1 s2Step382ExitG_Outgoing
  exact h0

private theorem s2Step382ExitBank_checked : compileHmrBankResizeLog .exit s2Step382ExitGBefore ⟨s2Step382ExitFRow,s2Step382ExitGRow,s2Step382ExitFvRow,s2Step382ExitGvRow⟩ ⟨80,80,208,207⟩ [[],[],[],[]]=
    some (s2Step382ExitGvAfter,⟨s2Step382ExitFOut,s2Step382ExitGOut,s2Step382ExitFvOut,s2Step382ExitGvOut⟩,(shrinkRow 769 s2Step382ExitGExtra ++ (shrinkRow 768 s2Step382ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step382ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step382ExitBank_rows]
  rfl

private theorem s2Step382Add0_apart : Disjoint s2Step382Add0Arena.live s2Step382Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step382Add0Arena (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step382Add0_card : s2Step382Add0Arena.live.card=910 := by
  decide +kernel

private theorem s2Step382Add0_borrowed : s2Step382Add0Arena.checkBorrow (hmrHybridCount s2Step382Add0Arena s2Step382Add0B.length) s2Step382Add0Work=some s2Step382Add0During := by
  have len : s2Step382Add0Work.length=hmrHybridCount s2Step382Add0Arena s2Step382Add0B.length := by
    rw [hmrHybridCount,s2Step382Add0_card]
    decide +kernel
  have nd : s2Step382Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step382Add0Arena s2Step382Add0During s2Step382Add0Work.toFinset s2Step382Add0_bounded s2Step382Add0_apart rfl

private theorem s2Step382Add0_distinct : (793::846::825::(s2Step382Add0A++s2Step382Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step382Add0_owned : (793::846::825::(s2Step382Add0A++s2Step382Add0B)).toFinset⊆s2Step382Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step382Add0Arena (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step382Add0_checked : compileHmrHybridCinLog s2Step382Add0Arena 846 793 825 s2Step382Add0A s2Step382Add0B s2Step382Add0Work=some s2Step382Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step382Add0Arena s2Step382Add0During 846 793 825 s2Step382Add0A s2Step382Add0B s2Step382Add0Work
    (by decide +kernel) (by decide +kernel) s2Step382Add0_distinct
    (fun q hq => s2Step382Add0_owned (List.mem_toFinset.mpr hq)) s2Step382Add0_borrowed

private theorem s2Step382Add1_apart : Disjoint s2Step382Add1Arena.live s2Step382Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step382Add1Arena (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step382Add1_card : s2Step382Add1Arena.live.card=910 := by
  decide +kernel

private theorem s2Step382Add1_borrowed : s2Step382Add1Arena.checkBorrow (hmrHybridCount s2Step382Add1Arena s2Step382Add1B.length) s2Step382Add1Work=some s2Step382Add1During := by
  have len : s2Step382Add1Work.length=hmrHybridCount s2Step382Add1Arena s2Step382Add1B.length := by
    rw [hmrHybridCount,s2Step382Add1_card]
    decide +kernel
  have nd : s2Step382Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step382Add1Arena s2Step382Add1During s2Step382Add1Work.toFinset s2Step382Add1_bounded s2Step382Add1_apart rfl

private theorem s2Step382Add1_distinct : (793::846::825::(s2Step382Add1A++s2Step382Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step382Add1_owned : (793::846::825::(s2Step382Add1A++s2Step382Add1B)).toFinset⊆s2Step382Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step382Add1Arena (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step382Add1_checked : compileHmrHybridCinLog s2Step382Add1Arena 846 793 825 s2Step382Add1A s2Step382Add1B s2Step382Add1Work=some s2Step382Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step382Add1Arena s2Step382Add1During 846 793 825 s2Step382Add1A s2Step382Add1B s2Step382Add1Work
    (by decide +kernel) (by decide +kernel) s2Step382Add1_distinct
    (fun q hq => s2Step382Add1_owned (List.mem_toFinset.mpr hq)) s2Step382Add1_borrowed

private theorem s2Step382F4_apart : Disjoint (s2Step382Add0A++s2Step382Add0B).toFinset (s2Step382Add1A++s2Step382Add1B).toFinset := by
  have nd : ((s2Step382Add0A++s2Step382Add0B)++(s2Step382Add1A++s2Step382Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step382F4_carry : s2Step382F4FlagArena.checkBorrow 1 [825]=some s2Step382Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step382F4FlagArena,s2Step382HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step382F4FlagArena,s2Step382HeadFvAfter,s2Step382Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step382F4_distinct : (824::846::793::825::((s2Step382Add0A++s2Step382Add1A)++(s2Step382Add0B++s2Step382Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step382F4_flag : s2Step382HeadFvAfter.checkBorrow 1 [793]=some s2Step382F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step382HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step382F4_owned : (824::846::((s2Step382Add0A++s2Step382Add1A)++(s2Step382Add0B++s2Step382Add1B))).toFinset⊆s2Step382HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step382HeadFvAfter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step382F4_checked : compileHmrHybridF4Log s2Step382HeadFvAfter 824 846 s2Step382Add0A s2Step382Add0B s2Step382Add1A s2Step382Add1B [793] [825] s2Step382Add0Work s2Step382Add1Work=some s2Step382F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step382HeadFvAfter s2Step382F4FlagArena s2Step382Add0Arena s2Step382Add0During s2Step382Add1During 824 846
    s2Step382Add0A s2Step382Add0B s2Step382Add1A s2Step382Add1B [793] [825] s2Step382Add0Work s2Step382Add1Work
    (fun q hq => s2Step382F4_owned (List.mem_toFinset.mpr hq)) s2Step382F4_flag s2Step382F4_carry
    s2Step382F4_distinct s2Step382F4_apart s2Step382Add0_checked s2Step382Add1_checked

private theorem s2Step382Front_branch : s2Step382FrontSigmaArena.checkBorrow 1 [846]=some s2Step382HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step382FrontSigmaArena,s2Step382EntryGvAfter,s2Step382EntryGAfter,arenaWires]
  · ext q
    simp only [s2Step382FrontSigmaArena,s2Step382EntryGvAfter,s2Step382EntryGAfter,s2Step382HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step382Front_entry : HmrFrontEntryValid s2Step382EntryFBefore s2Step382FrontBank 81 207 ⟨80,80,208,207⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step382FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step382EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step382EntryFBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (847≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step382FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step382Front_sigma : s2Step382EntryGvAfter.checkBorrow 1 [824]=some s2Step382FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step382EntryGvAfter,s2Step382EntryGAfter,arenaWires]
  · rfl

private def s2Step382HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step382HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (810≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step382HeadFBefore : Arena := s2Step382HeadGAfter

private def s2Step382HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592],768⟩

private def s2Step382HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 81, 80, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826, 789, 800, 842, 785],770⟩

private def s2Step382HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 837],769⟩

private def s2Step382HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 596, 595, 594, 593, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811, 796, 802, 797, 835],771⟩

private theorem s2Step382HeadBank_incomingDistinct : ([s2Step382HeadGRow,s2Step382HeadFRow,s2Step382HeadGvRow,s2Step382HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step382HeadF_Incoming : rowsOwned s2Step382HeadFBefore [s2Step382HeadFRow,s2Step382HeadGvRow,s2Step382HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step382HeadGRow,s2Step382HeadFRow,s2Step382HeadGvRow,s2Step382HeadFvRow] 1 s2Step382HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step382HeadFBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (810≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step382HeadBank_outgoingOwned : rowsOwned s2Step382HeadFvAfter [s2Step382HeadGOut,s2Step382HeadFOut,s2Step382HeadGvOut,s2Step382HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step382HeadFvAfter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step382HeadF_Outgoing : rowsOwned s2Step382HeadFvAfter [s2Step382HeadFOut,s2Step382HeadGvOut,s2Step382HeadFvOut] :=
  hmrRows_owned_drop s2Step382HeadFvAfter [s2Step382HeadGOut,s2Step382HeadFOut,s2Step382HeadGvOut,s2Step382HeadFvOut] 1 s2Step382HeadBank_outgoingOwned

private theorem s2Step382HeadF_distinct : (s2Step382HeadFRow.sign::s2Step382HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step382HeadF_owned : (s2Step382HeadFRow.sign::s2Step382HeadFRow.payload).toFinset⊆s2Step382HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step382HeadFBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (810≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step382HeadF_reserved : s2Step382HeadFBefore.reserve s2Step382HeadFFresh.toFinset=some s2Step382HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step382HeadFFresh,arenaWires]
  · norm_num [s2Step382HeadFBefore,s2Step382HeadGAfter,s2Step382HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step382HeadFAfter,s2Step382HeadFBefore,s2Step382HeadGAfter,s2Step382HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step382HeadF_checked : planRowResizeLog s2Step382HeadFBefore s2Step382HeadFRow 82 s2Step382HeadFFresh=
    some (s2Step382HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 809],768⟩,growRow 768 s2Step382HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step382HeadFBefore s2Step382HeadFAfter s2Step382HeadFRow 82 s2Step382HeadFFresh
    s2Step382HeadF_distinct s2Step382HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step382HeadF_reserved
  have rowEq : WindowRow.mk (s2Step382HeadFRow.payload++s2Step382HeadFFresh) s2Step382HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 809],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step382HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step382HeadFvBefore : Arena := s2Step382HeadGvAfter

private theorem s2Step382HeadFv_Incoming : rowsOwned s2Step382HeadFvBefore [s2Step382HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step382HeadGRow,s2Step382HeadFRow,s2Step382HeadGvRow,s2Step382HeadFvRow] 3 s2Step382HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step382HeadFvBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step382HeadFv_Outgoing : rowsOwned s2Step382HeadFvAfter [s2Step382HeadFvOut] :=
  hmrRows_owned_drop s2Step382HeadFvAfter [s2Step382HeadGOut,s2Step382HeadFOut,s2Step382HeadGvOut,s2Step382HeadFvOut] 3 s2Step382HeadBank_outgoingOwned

private theorem s2Step382HeadFv_distinct : (s2Step382HeadFvRow.sign::s2Step382HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step382HeadFv_owned : (s2Step382HeadFvRow.sign::s2Step382HeadFvRow.payload).toFinset⊆s2Step382HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step382HeadFvBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step382HeadFv_reserved : s2Step382HeadFvBefore.reserve s2Step382HeadFvFresh.toFinset=some s2Step382HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step382HeadFvFresh,arenaWires]
  · norm_num [s2Step382HeadFvBefore,s2Step382HeadGvAfter,s2Step382HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step382HeadFvAfter,s2Step382HeadFvBefore,s2Step382HeadGvAfter,s2Step382HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step382HeadFv_checked : planRowResizeLog s2Step382HeadFvBefore s2Step382HeadFvRow 208 s2Step382HeadFvFresh=
    some (s2Step382HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 81, 80, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826, 789, 800, 842, 785, 803],770⟩,growRow 770 s2Step382HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step382HeadFvBefore s2Step382HeadFvAfter s2Step382HeadFvRow 208 s2Step382HeadFvFresh
    s2Step382HeadFv_distinct s2Step382HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step382HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step382HeadFvRow.payload++s2Step382HeadFvFresh) s2Step382HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 81, 80, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826, 789, 800, 842, 785, 803],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step382HeadG_Incoming : rowsOwned s2Step382HeadGBefore [s2Step382HeadGRow,s2Step382HeadFRow,s2Step382HeadGvRow,s2Step382HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step382HeadGRow,s2Step382HeadFRow,s2Step382HeadGvRow,s2Step382HeadFvRow] 0 s2Step382HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step382HeadGBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step382HeadG_Outgoing : rowsOwned s2Step382HeadFvAfter [s2Step382HeadGOut,s2Step382HeadFOut,s2Step382HeadGvOut,s2Step382HeadFvOut] :=
  hmrRows_owned_drop s2Step382HeadFvAfter [s2Step382HeadGOut,s2Step382HeadFOut,s2Step382HeadGvOut,s2Step382HeadFvOut] 0 s2Step382HeadBank_outgoingOwned

private theorem s2Step382HeadG_distinct : (s2Step382HeadGRow.sign::s2Step382HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step382HeadG_owned : (s2Step382HeadGRow.sign::s2Step382HeadGRow.payload).toFinset⊆s2Step382HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step382HeadGBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step382HeadG_reserved : s2Step382HeadGBefore.reserve s2Step382HeadGFresh.toFinset=some s2Step382HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step382HeadGFresh,arenaWires]
  · norm_num [s2Step382HeadGBefore,s2Step382HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step382HeadGAfter,s2Step382HeadGBefore,s2Step382HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step382HeadG_checked : planRowResizeLog s2Step382HeadGBefore s2Step382HeadGRow 82 s2Step382HeadGFresh=
    some (s2Step382HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 837, 810],769⟩,growRow 769 s2Step382HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step382HeadGBefore s2Step382HeadGAfter s2Step382HeadGRow 82 s2Step382HeadGFresh
    s2Step382HeadG_distinct s2Step382HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step382HeadG_reserved
  have rowEq : WindowRow.mk (s2Step382HeadGRow.payload++s2Step382HeadGFresh) s2Step382HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 837, 810],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step382HeadGvBefore : Arena := s2Step382HeadFAfter

private theorem s2Step382HeadGv_Incoming : rowsOwned s2Step382HeadGvBefore [s2Step382HeadGvRow,s2Step382HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step382HeadGRow,s2Step382HeadFRow,s2Step382HeadGvRow,s2Step382HeadFvRow] 2 s2Step382HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step382HeadGvBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step382HeadGv_Outgoing : rowsOwned s2Step382HeadFvAfter [s2Step382HeadGvOut,s2Step382HeadFvOut] :=
  hmrRows_owned_drop s2Step382HeadFvAfter [s2Step382HeadGOut,s2Step382HeadFOut,s2Step382HeadGvOut,s2Step382HeadFvOut] 2 s2Step382HeadBank_outgoingOwned

private theorem s2Step382HeadGv_distinct : (s2Step382HeadGvRow.sign::s2Step382HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step382HeadGv_owned : (s2Step382HeadGvRow.sign::s2Step382HeadGvRow.payload).toFinset⊆s2Step382HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step382HeadGvBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step382HeadGv_reserved : s2Step382HeadGvBefore.reserve s2Step382HeadGvFresh.toFinset=some s2Step382HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step382HeadGvFresh,arenaWires]
  · norm_num [s2Step382HeadGvBefore,s2Step382HeadFAfter,s2Step382HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step382HeadGvAfter,s2Step382HeadGvBefore,s2Step382HeadFAfter,s2Step382HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step382HeadGv_checked : planRowResizeLog s2Step382HeadGvBefore s2Step382HeadGvRow 208 s2Step382HeadGvFresh=
    some (s2Step382HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 596, 595, 594, 593, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811, 796, 802, 797, 835, 799],771⟩,growRow 771 s2Step382HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step382HeadGvBefore s2Step382HeadGvAfter s2Step382HeadGvRow 208 s2Step382HeadGvFresh
    s2Step382HeadGv_distinct s2Step382HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step382HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step382HeadGvRow.payload++s2Step382HeadGvFresh) s2Step382HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 596, 595, 594, 593, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811, 796, 802, 797, 835, 799],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step382HeadBank_rows : planWindowRowsLog s2Step382HeadGBefore [(s2Step382HeadGRow,82),(s2Step382HeadFRow,82),(s2Step382HeadGvRow,208),(s2Step382HeadFvRow,208)] [s2Step382HeadGFresh,s2Step382HeadFFresh,s2Step382HeadGvFresh,s2Step382HeadFvFresh]=
    some (s2Step382HeadFvAfter,[s2Step382HeadGOut,s2Step382HeadFOut,s2Step382HeadGvOut,s2Step382HeadFvOut],(growRow 769 s2Step382HeadGFresh ++ (growRow 768 s2Step382HeadFFresh ++ (growRow 771 s2Step382HeadGvFresh ++ (growRow 770 s2Step382HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step382HeadFvAfter [] []=some (s2Step382HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step382HeadFvBefore s2Step382HeadFvAfter s2Step382HeadFvAfter
    s2Step382HeadFvRow s2Step382HeadFvOut 208 s2Step382HeadFvFresh [] [] []
    (growRow 770 s2Step382HeadFvFresh) ([]) s2Step382HeadFv_Incoming s2Step382HeadFv_checked h4 s2Step382HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step382HeadGvBefore s2Step382HeadGvAfter s2Step382HeadFvAfter
    s2Step382HeadGvRow s2Step382HeadGvOut 208 s2Step382HeadGvFresh [(s2Step382HeadFvRow,208)] [s2Step382HeadFvFresh] [s2Step382HeadFvOut]
    (growRow 771 s2Step382HeadGvFresh) ((growRow 770 s2Step382HeadFvFresh ++ [])) s2Step382HeadGv_Incoming s2Step382HeadGv_checked h3 s2Step382HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step382HeadFBefore s2Step382HeadFAfter s2Step382HeadFvAfter
    s2Step382HeadFRow s2Step382HeadFOut 82 s2Step382HeadFFresh [(s2Step382HeadGvRow,208),(s2Step382HeadFvRow,208)] [s2Step382HeadGvFresh,s2Step382HeadFvFresh] [s2Step382HeadGvOut,s2Step382HeadFvOut]
    (growRow 768 s2Step382HeadFFresh) ((growRow 771 s2Step382HeadGvFresh ++ (growRow 770 s2Step382HeadFvFresh ++ []))) s2Step382HeadF_Incoming s2Step382HeadF_checked h2 s2Step382HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step382HeadGBefore s2Step382HeadGAfter s2Step382HeadFvAfter
    s2Step382HeadGRow s2Step382HeadGOut 82 s2Step382HeadGFresh [(s2Step382HeadFRow,82),(s2Step382HeadGvRow,208),(s2Step382HeadFvRow,208)] [s2Step382HeadFFresh,s2Step382HeadGvFresh,s2Step382HeadFvFresh] [s2Step382HeadFOut,s2Step382HeadGvOut,s2Step382HeadFvOut]
    (growRow 769 s2Step382HeadGFresh) ((growRow 768 s2Step382HeadFFresh ++ (growRow 771 s2Step382HeadGvFresh ++ (growRow 770 s2Step382HeadFvFresh ++ [])))) s2Step382HeadG_Incoming s2Step382HeadG_checked h1 s2Step382HeadG_Outgoing
  exact h0

private theorem s2Step382HeadBank_checked : compileHmrBankResizeLog .headroom s2Step382HeadGBefore ⟨s2Step382HeadFRow,s2Step382HeadGRow,s2Step382HeadFvRow,s2Step382HeadGvRow⟩ ⟨82,82,208,208⟩ [s2Step382HeadGFresh,s2Step382HeadFFresh,s2Step382HeadGvFresh,s2Step382HeadFvFresh]=
    some (s2Step382HeadFvAfter,⟨s2Step382HeadFOut,s2Step382HeadGOut,s2Step382HeadFvOut,s2Step382HeadGvOut⟩,(growRow 769 s2Step382HeadGFresh ++ (growRow 768 s2Step382HeadFFresh ++ (growRow 771 s2Step382HeadGvFresh ++ (growRow 770 s2Step382HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step382HeadBank_rows]
  rfl

private theorem s2Step382Front_checked : compileHmrSourceFrontLog s2Step382EntryFBefore s2Step382FrontBank 81 207 ⟨80,80,208,207⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step382FrontLog=some s2Step382FrontPlan := by
  have pairEq : s2Step382FrontPair=⟨s2Step382HeadFRow,s2Step382HeadGRow,s2Step382HeadFvRow,s2Step382HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step382FrontHead=⟨s2Step382ExitFRow,s2Step382ExitGRow,s2Step382ExitFvRow,s2Step382ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step382Add0A=s2Step382FrontHead.f.wires := by decide +kernel
  have gEq : s2Step382Add0B=s2Step382FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step382Add1A=s2Step382FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step382Add1B=s2Step382FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step382EntryFBefore s2Step382FrontBank 81 207 ⟨80,80,208,207⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step382FrontLog s2Step382FrontPlan
  · exact s2Step382Front_entry
  · exact s2Step382EntryBank_checked
  · exact s2Step382Front_sigma
  · rfl
  · exact s2Step382Front_branch
  · rfl
  · simpa only [s2Step382FrontPlan,pairEq] using s2Step382HeadBank_checked
  · simpa only [s2Step382FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step382F4_checked
  · exact s2Step382Counter_checked
  · rfl
  · simpa only [s2Step382FrontPlan,headEq] using s2Step382ExitBank_checked

private theorem s2Step382Complete_explicit_checked : compileHmrEarlyStepLog s2Step382EntryFBefore s2Step382FrontBank 81 207 ⟨80,80,208,207⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step382CompleteLog=some s2Step382CompletePlan := by
  let Q := s2Step382EarlyControlPlan
  have hq := s2Step382EarlyControl_plan_checked
  have fv1 : s2Step382CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step382CompleteOut.fv.payload[2]?.getD s2Step382CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step382CompleteOut.fv.payload[3]?.getD s2Step382CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step382CompleteOut.fv.payload[4]?.getD s2Step382CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step382EntryFBefore s2Step382EarlyControlArena s2Step382FrontBank 81 207 ⟨80,80,208,207⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step382CompleteLog s2Step382FrontPlan Q
    s2Step382Front_checked s2Step382Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step382Complete_owned s2Step382Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step382EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 824 s2Step382CompleteOut.fv.second (s2Step382CompleteOut.fv.payload[2]?.getD s2Step382CompleteOut.fv.sign) (s2Step382CompleteOut.fv.payload[3]?.getD s2Step382CompleteOut.fv.sign) (s2Step382CompleteOut.fv.payload[4]?.getD s2Step382CompleteOut.fv.sign) 846 60 s2Step382EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep382Arena : Arena := s2Step382EntryFBefore
def s2PrivateStep382Bank : WindowBank := s2Step382FrontBank
def s2PrivateStep382Spec : HmrSourceWalkStepLog := ⟨81,207,⟨80,80,208,207⟩,60,.early s2Step382CompleteLog⟩
def s2PrivateStep382Plan : HmrSourceStepPlan := .early s2Step382CompletePlan
theorem s2PrivateStep382_source : s2PrivateStep382Spec=s2ObservedLogs368[14] := rfl
theorem s2PrivateStep382_checked : compileHmrSourceStepLog s2PrivateStep382Arena s2PrivateStep382Bank
    s2PrivateStep382Spec.fgWidth s2PrivateStep382Spec.vWidth s2PrivateStep382Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]
    6 498 382 s2PrivateStep382Spec.need none s2PrivateStep382Spec.log=some s2PrivateStep382Plan := by
  change compileHmrSourceStepLog s2Step382EntryFBefore s2Step382FrontBank 81 207 ⟨80,80,208,207⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 6 498 382 60 none (.early s2Step382CompleteLog)=some (.early s2Step382CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 382<498)]
  rw [s2Step382Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
