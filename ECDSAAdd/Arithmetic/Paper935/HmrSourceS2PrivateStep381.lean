import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep379
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

private def s2Step381CompleteMoves : List (Wire × Wire) := [(846,80)]

private def s2Step381EarlyControlLog : HmrEarlyControlLog := ⟨[846, 810, 809, 799, 803],[793],[825],[827, 844, 907, 913, 914, 915],[]⟩

private def s2Step381FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[809], [810], [835], [785]],[[], [], [], []]⟩,[824],[837],[799],[803],[793, 825, 827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[793, 825, 827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[799, 803, 793, 825]⟩

private def s2Step381CompleteLog : HmrEarlyStepLog := ⟨s2Step381FrontLog,s2Step381CompleteMoves,s2Step381EarlyControlLog⟩

private def s2Step381ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592],768⟩

private def s2Step381ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 81, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826, 789, 800, 842, 785],770⟩

private def s2Step381ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79],769⟩

private def s2Step381ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 596, 595, 594, 593, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811, 796, 802, 797, 835],771⟩

private def s2Step381FrontOut : WindowBank := ⟨s2Step381ExitFOut,s2Step381ExitGOut,s2Step381ExitFvOut,s2Step381ExitGvOut⟩

private def s2Step381CompleteOut : WindowBank := s2Step381FrontOut.repacked s2Step381CompleteMoves

private def s2Step381EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (847≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step381EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step381EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step381EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step381EarlyControlPositiveArena,[793],s2Step381EarlyControlEqualityArena,[825],⟨⟨824,false⟩,[⟨⟨793,false⟩,825⟩]⟩⟩

private def s2Step381EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<916)),Finset.filter_subset _ _⟩

private def s2Step381EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<916)),Finset.filter_subset _ _⟩

private def s2Step381EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (847≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step381EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (847≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step381EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (847≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step381EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step381EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,846⟩,⟨⟨774,false⟩,810⟩,⟨⟨775,false⟩,809⟩,⟨⟨776,false⟩,799⟩,⟨⟨777,false⟩,803⟩]⟩

private def s2Step381EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step381EarlyControlZeroArena,s2Step381EarlyControlZeroPlan,s2Step381EarlyControlClassPlan,s2Step381EarlyControlFlagArena,s2Step381EarlyControlFittedArena,s2Step381EarlyControlHistoryArena,s2Step381EarlyControlSigmaArena,s2Step381EarlyControlOutputArena,s2Step381EarlyControlLog⟩

private def s2Step381CounterWork : List Wire := [799, 803, 793, 825]

private theorem s2Step381Counter_bounded : s2Step381CounterWork.toFinset⊆arenaWires := by norm_num [s2Step381CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step381HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step381CounterDuring : Arena := ⟨s2Step381HeadFvAfter.live∪s2Step381CounterWork.toFinset,Finset.union_subset s2Step381HeadFvAfter.bounded s2Step381Counter_bounded⟩

private def s2Step381EntryFFresh : List Wire := []

private def s2Step381EntryFvFresh : List Wire := []

private def s2Step381EntryGFresh : List Wire := []

private def s2Step381EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step381EntryGvAfter : Arena := s2Step381EntryFBefore

private def s2Step381EntryGvFresh : List Wire := []

private def s2Step381ExitFExtra : List Wire := [810]

private def s2Step381ExitGExtra : List Wire := [80, 809]

private def s2Step381ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<80) ∨ (81≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step381ExitGvAfter : Arena := s2Step381ExitFAfter

private def s2Step381Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step381Add0Work : List Wire := [793, 825, 827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step381Add0_bounded : s2Step381Add0Work.toFinset⊆arenaWires := by
  have h : s2Step381Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step381Add0During : Arena := ⟨s2Step381Add0Arena.live∪s2Step381Add0Work.toFinset,Finset.union_subset s2Step381Add0Arena.bounded s2Step381Add0_bounded⟩

private def s2Step381Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step381Add1Work : List Wire := [793, 825, 827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step381Add1_bounded : s2Step381Add1Work.toFinset⊆arenaWires := by
  have h : s2Step381Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step381Add1During : Arena := ⟨s2Step381Add1Arena.live∪s2Step381Add1Work.toFinset,Finset.union_subset s2Step381Add1Arena.bounded s2Step381Add1_bounded⟩

private def s2Step381F4FlagArena : Arena := ⟨s2Step381HeadFvAfter.live∪{799},Finset.union_subset s2Step381HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step381F4Plan : HmrHybridF4Plan := ⟨s2Step381F4FlagArena,[799],s2Step381Add0Arena,[803],s2Step381Add0During,s2Step381Add0Work,s2Step381Add1During,s2Step381Add1Work⟩

private def s2Step381HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 810],768⟩

private def s2Step381HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 81, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826, 789, 800, 842, 785],770⟩

private def s2Step381HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 809],769⟩

private def s2Step381HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 596, 595, 594, 593, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811, 796, 802, 797, 835],771⟩

private def s2Step381FrontHead : WindowBank := ⟨s2Step381HeadFOut,s2Step381HeadGOut,s2Step381HeadFvOut,s2Step381HeadGvOut⟩

private def s2Step381EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592],768⟩

private def s2Step381EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 81, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826, 789, 800, 842],770⟩

private def s2Step381EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80],769⟩

private def s2Step381EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 596, 595, 594, 593, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811, 796, 802, 797],771⟩

private def s2Step381FrontPair : WindowBank := ⟨s2Step381EntryFOut,s2Step381EntryGOut,s2Step381EntryFvOut,s2Step381EntryGvOut⟩

private def s2Step381FrontSigmaArena : Arena := ⟨s2Step381EntryGvAfter.live∪{824},Finset.union_subset s2Step381EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step381HeadFFresh : List Wire := [810]

private def s2Step381HeadFvFresh : List Wire := [785]

private def s2Step381HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step381HeadGFresh : List Wire := [809]

private def s2Step381HeadGvFresh : List Wire := [835]

private def s2Step381FrontPlan : HmrSourceFront := ⟨s2Step381EntryGvAfter,s2Step381FrontPair,(growRow 768 s2Step381EntryFFresh ++ (growRow 769 s2Step381EntryGFresh ++ (growRow 770 s2Step381EntryFvFresh ++ (growRow 771 s2Step381EntryGvFresh ++ [])))),s2Step381FrontSigmaArena,[824],s2Step381HeadGBefore,[837],
  s2Step381HeadFvAfter,s2Step381FrontHead,(growRow 769 s2Step381HeadGFresh ++ (growRow 768 s2Step381HeadFFresh ++ (growRow 771 s2Step381HeadGvFresh ++ (growRow 770 s2Step381HeadFvFresh ++ [])))),s2Step381F4Plan,s2Step381CounterDuring,s2Step381CounterWork,s2Step381ExitGvAfter,s2Step381FrontOut,(shrinkRow 769 s2Step381ExitGExtra ++ (shrinkRow 768 s2Step381ExitFExtra ++ (growRow 770 [] ++ (growRow 771 [] ++ []))))⟩

private def s2Step381CompletePlan : HmrEarlyStepPlan := ⟨s2Step381FrontPlan,s2Step381EarlyControlArena,s2Step381EarlyControlPlan,s2Step381CompleteMoves⟩

private theorem s2Step381Complete_apart : List.Disjoint (s2Step381CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [824, 837, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] := by
  have nd : ((s2Step381CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[824, 837, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step381Complete_owned : (s2Step381CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step381EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step381EarlyControlArena (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (847≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private def s2Step381CompleteMoveArena : Arena := ⟨s2Step381ExitGvAfter.live∪{80},Finset.union_subset s2Step381ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step381Complete_repack : s2Step381ExitGvAfter.checkRepack s2Step381CompleteMoves=some s2Step381EarlyControlArena := by
  have owned : 846∈s2Step381ExitGvAfter.live := by norm_num [s2Step381ExitGvAfter,s2Step381ExitFAfter,arenaWires]
  have reserve : s2Step381ExitGvAfter.reserve {80}=some s2Step381CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step381ExitGvAfter,s2Step381ExitFAfter,arenaWires]
    · rfl
  have retired : s2Step381CompleteMoveArena.retireSet {846}=s2Step381EarlyControlArena := by
    unfold Arena.retireSet s2Step381EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step381CompleteMoveArena,s2Step381ExitGvAfter,s2Step381ExitFAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step381CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step381CompleteMoveArena.retireSet {846}).checkRepack []=some s2Step381EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step381EarlyControl_branchOwned : ([837] : List Wire).toFinset⊆s2Step381EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step381EarlyControlSigmaArena (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (847≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step381EarlyControl_branch : compileHmrBranchRetirement s2Step381EarlyControlSigmaArena 837=some s2Step381EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step381EarlyControl_branchOwned
  · ext q
    simp [s2Step381EarlyControlOutputArena,s2Step381EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step381EarlyControl_classEqualityBorrow : s2Step381EarlyControlPositiveArena.checkBorrow (([824, 793] : List Wire).length-1) s2Step381EarlyControlLog.classWork=some s2Step381EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step381EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step381EarlyControlPositiveArena (fun q => (0≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step381EarlyControlEqualityArena,s2Step381EarlyControlPositiveArena,s2Step381EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step381EarlyControl_classEqualityOwned : ([824, 793] : List Wire).toFinset⊆s2Step381EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step381EarlyControlPositiveArena (fun q => (0≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step381EarlyControl_classEquality : compileHmrEqualityLog s2Step381EarlyControlPositiveArena [824, 793] 0 s2Step381EarlyControlLog.classWork=some (s2Step381EarlyControlEqualityArena,s2Step381EarlyControlLog.classWork,s2Step381EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step381EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step381EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step381EarlyControl_classOwned : ([777, 803, 824] : List Wire).toFinset⊆s2Step381EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step381EarlyControlZeroArena (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step381EarlyControl_positiveBorrow : s2Step381EarlyControlZeroArena.checkBorrow (1) s2Step381EarlyControlLog.positiveWork=some s2Step381EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step381EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step381EarlyControlZeroArena (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step381EarlyControlPositiveArena,s2Step381EarlyControlZeroArena,s2Step381EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step381EarlyControl_class : compileHmrSourceClassLog s2Step381EarlyControlZeroArena false 777 s2Step381EarlyControlZeroPlan.top 0 824 s2Step381EarlyControlLog.positiveWork s2Step381EarlyControlLog.classWork=some s2Step381EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step381EarlyControlClassPlan s2Step381EarlyControlZeroArena false 777 s2Step381EarlyControlZeroPlan.top 0 824
  constructor
  · decide +kernel
  · exact s2Step381EarlyControl_classOwned
  · exact s2Step381EarlyControl_positiveBorrow
  · exact s2Step381EarlyControl_classEquality

private theorem s2Step381EarlyControl_entryRecordOwned : ([837, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step381EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step381EarlyControlArena (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (847≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step381EarlyControl_entrySigmaOwned : ([824, 254] : List Wire).toFinset⊆s2Step381EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step381EarlyControlArena (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (847≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step381EarlyControl_fitBorrow : s2Step381EarlyControlFlagArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step381EarlyControlLog.recordFresh=some s2Step381EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step381EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step381EarlyControlFlagArena (fun q => (0≤q ∧ q<916)) rfl
      decide +kernel
    · ext q
      simp [s2Step381EarlyControlFittedArena,s2Step381EarlyControlFlagArena,s2Step381EarlyControlLog,arenaWires]

private theorem s2Step381EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step381EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step381EarlyControlFlagArena (fun q => (0≤q ∧ q<916)) rfl
  decide +kernel

private theorem s2Step381EarlyControl_fit : compileHmrRecordGrowLog s2Step381EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step381EarlyControlLog.recordFresh=some s2Step381EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step381EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step381EarlyControl_fitBorrow

private theorem s2Step381EarlyControl_flagsBorrow : s2Step381EarlyControlEqualityArena.checkBorrow (6) s2Step381EarlyControlLog.flagWork=some s2Step381EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step381EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step381EarlyControlEqualityArena (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step381EarlyControlFlagArena,s2Step381EarlyControlEqualityArena,s2Step381EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step381EarlyControl_flagsOwned : ([825, 253, 252, 251] : List Wire).toFinset⊆s2Step381EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step381EarlyControlEqualityArena (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step381EarlyControl_flags : compileHmrFlagsLog s2Step381EarlyControlClassPlan.equalityArena s2Step381EarlyControlClassPlan.equality.top 253 252 251 s2Step381EarlyControlLog.flagWork=some s2Step381EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step381EarlyControl_flagsOwned⟩
  · exact s2Step381EarlyControl_flagsBorrow

private theorem s2Step381EarlyControl_historyBorrow : s2Step381EarlyControlArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step381EarlyControlLog.recordFresh=some s2Step381EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step381EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step381EarlyControlArena (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (847≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step381EarlyControlHistoryArena,s2Step381EarlyControlArena,s2Step381EarlyControlLog,arenaWires]

private theorem s2Step381EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step381EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step381EarlyControlArena (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (847≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step381EarlyControl_history : compileHmrRecordGrowLog s2Step381EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step381EarlyControlLog.recordFresh=some s2Step381EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step381EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step381EarlyControl_historyBorrow

private theorem s2Step381EarlyControl_sigmaOwned : ([254, 824] : List Wire).toFinset⊆s2Step381EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step381EarlyControlHistoryArena (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (847≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step381EarlyControl_sigmaReleaseOwned : ([824] : List Wire).toFinset⊆s2Step381EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step381EarlyControlHistoryArena (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (847≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step381EarlyControl_sigmaRelease : s2Step381EarlyControlHistoryArena.release {824} (fun _ => false)=some s2Step381EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step381EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step381EarlyControlSigmaArena,s2Step381EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step381EarlyControl_sigma : compileHmrSigmaDropLog s2Step381EarlyControlHistoryArena false 0 0 254 824 []=some s2Step381EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step381EarlyControl_sigmaOwned⟩
  · exact s2Step381EarlyControl_sigmaRelease

private theorem s2Step381EarlyControl_zeroBorrow : s2Step381EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step381EarlyControlLog.zeroWork=some s2Step381EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step381EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step381EarlyControlArena (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (847≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step381EarlyControlZeroArena,s2Step381EarlyControlArena,s2Step381EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step381EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step381EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step381EarlyControlArena (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (847≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step381EarlyControl_zero : compileHmrEqualityLog s2Step381EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step381EarlyControlLog.zeroWork=some (s2Step381EarlyControlZeroArena,s2Step381EarlyControlLog.zeroWork,s2Step381EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step381EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step381EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step381EarlyControl_logged : s2Step381EarlyControlPlan.Logged s2Step381EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 824 254 253 252 251 837 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step381EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step381EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step381EarlyControl_zero
  · exact s2Step381EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step381EarlyControl_flags
  · exact s2Step381EarlyControl_fit
  · exact s2Step381EarlyControl_history
  · exact s2Step381EarlyControl_sigma
  · exact s2Step381EarlyControl_branch

private theorem s2Step381EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step381EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 824 254 253 252 251 837 60 s2Step381EarlyControlLog=some s2Step381EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step381EarlyControlPlan s2Step381EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 824 254 253 252 251 837 60 s2Step381EarlyControl_logged

private def s2Step381EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592],768⟩

private def s2Step381EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 81, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826, 789, 800, 842],770⟩

private def s2Step381EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80],769⟩

private def s2Step381EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 596, 595, 594, 593, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811, 796, 802, 797],771⟩

private def s2Step381FrontBank : WindowBank := ⟨s2Step381EntryFRow,s2Step381EntryGRow,s2Step381EntryFvRow,s2Step381EntryGvRow⟩

private def s2Step381Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 810, 768]

private def s2Step381Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 809, 769]

private def s2Step381Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 81, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826, 789, 800, 842, 785, 770]

private def s2Step381Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 596, 595, 594, 593, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811, 796, 802, 797, 835, 771]

private theorem s2Step381Counter_apart : Disjoint s2Step381HeadFvAfter.live s2Step381CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step381HeadFvAfter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step381Counter_borrowed : s2Step381HeadFvAfter.checkBorrow 4 s2Step381CounterWork=some s2Step381CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step381HeadFvAfter s2Step381CounterDuring s2Step381CounterWork.toFinset s2Step381Counter_bounded s2Step381Counter_apart rfl

private theorem s2Step381Counter_owned : (824::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step381HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step381HeadFvAfter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step381Counter_checked : compileHmrCounterStepLog s2Step381HeadFvAfter true 824 [772, 773, 774, 775, 776, 777] s2Step381CounterWork=some s2Step381CounterDuring := by
  have owned : ∀q∈824::[772, 773, 774, 775, 776, 777],q∈s2Step381HeadFvAfter.live := fun q hq => s2Step381Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step381Counter_borrowed

private def s2Step381EntryFAfter : Arena := s2Step381EntryFBefore

private theorem s2Step381EntryBank_incomingDistinct : ([s2Step381EntryFRow,s2Step381EntryGRow,s2Step381EntryFvRow,s2Step381EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step381EntryF_Incoming : rowsOwned s2Step381EntryFBefore [s2Step381EntryFRow,s2Step381EntryGRow,s2Step381EntryFvRow,s2Step381EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step381EntryFRow,s2Step381EntryGRow,s2Step381EntryFvRow,s2Step381EntryGvRow] 0 s2Step381EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step381EntryFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step381EntryBank_outgoingOwned : rowsOwned s2Step381EntryGvAfter [s2Step381EntryFOut,s2Step381EntryGOut,s2Step381EntryFvOut,s2Step381EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step381EntryGvAfter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step381EntryF_Outgoing : rowsOwned s2Step381EntryGvAfter [s2Step381EntryFOut,s2Step381EntryGOut,s2Step381EntryFvOut,s2Step381EntryGvOut] :=
  hmrRows_owned_drop s2Step381EntryGvAfter [s2Step381EntryFOut,s2Step381EntryGOut,s2Step381EntryFvOut,s2Step381EntryGvOut] 0 s2Step381EntryBank_outgoingOwned

private theorem s2Step381EntryF_distinct : (s2Step381EntryFRow.sign::s2Step381EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step381EntryF_owned : (s2Step381EntryFRow.sign::s2Step381EntryFRow.payload).toFinset⊆s2Step381EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step381EntryFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step381EntryF_reserved : s2Step381EntryFBefore.reserve s2Step381EntryFFresh.toFinset=some s2Step381EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step381EntryFFresh,arenaWires]
  · norm_num [s2Step381EntryFBefore,s2Step381EntryFFresh,arenaWires]
  · simp only [s2Step381EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step381EntryF_checked : planRowResizeLog s2Step381EntryFBefore s2Step381EntryFRow 81 s2Step381EntryFFresh=
    some (s2Step381EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592],768⟩,growRow 768 s2Step381EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step381EntryFBefore s2Step381EntryFAfter s2Step381EntryFRow 81 s2Step381EntryFFresh
    s2Step381EntryF_distinct s2Step381EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step381EntryF_reserved
  have rowEq : WindowRow.mk (s2Step381EntryFRow.payload++s2Step381EntryFFresh) s2Step381EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step381EntryFvAfter : Arena := s2Step381EntryFBefore

private def s2Step381EntryFvBefore : Arena := s2Step381EntryFBefore

private theorem s2Step381EntryFv_Incoming : rowsOwned s2Step381EntryFvBefore [s2Step381EntryFvRow,s2Step381EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step381EntryFRow,s2Step381EntryGRow,s2Step381EntryFvRow,s2Step381EntryGvRow] 2 s2Step381EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step381EntryFvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step381EntryFv_Outgoing : rowsOwned s2Step381EntryGvAfter [s2Step381EntryFvOut,s2Step381EntryGvOut] :=
  hmrRows_owned_drop s2Step381EntryGvAfter [s2Step381EntryFOut,s2Step381EntryGOut,s2Step381EntryFvOut,s2Step381EntryGvOut] 2 s2Step381EntryBank_outgoingOwned

private theorem s2Step381EntryFv_distinct : (s2Step381EntryFvRow.sign::s2Step381EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step381EntryFv_owned : (s2Step381EntryFvRow.sign::s2Step381EntryFvRow.payload).toFinset⊆s2Step381EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step381EntryFvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step381EntryFv_reserved : s2Step381EntryFvBefore.reserve s2Step381EntryFvFresh.toFinset=some s2Step381EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step381EntryFvFresh,arenaWires]
  · norm_num [s2Step381EntryFvBefore,s2Step381EntryFBefore,s2Step381EntryFvFresh,arenaWires]
  · simp only [s2Step381EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step381EntryFv_checked : planRowResizeLog s2Step381EntryFvBefore s2Step381EntryFvRow 206 s2Step381EntryFvFresh=
    some (s2Step381EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 81, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826, 789, 800, 842],770⟩,growRow 770 s2Step381EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step381EntryFvBefore s2Step381EntryFvAfter s2Step381EntryFvRow 206 s2Step381EntryFvFresh
    s2Step381EntryFv_distinct s2Step381EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step381EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step381EntryFvRow.payload++s2Step381EntryFvFresh) s2Step381EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 81, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826, 789, 800, 842],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step381EntryGAfter : Arena := s2Step381EntryFBefore

private def s2Step381EntryGBefore : Arena := s2Step381EntryFBefore

private theorem s2Step381EntryG_Incoming : rowsOwned s2Step381EntryGBefore [s2Step381EntryGRow,s2Step381EntryFvRow,s2Step381EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step381EntryFRow,s2Step381EntryGRow,s2Step381EntryFvRow,s2Step381EntryGvRow] 1 s2Step381EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step381EntryGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step381EntryG_Outgoing : rowsOwned s2Step381EntryGvAfter [s2Step381EntryGOut,s2Step381EntryFvOut,s2Step381EntryGvOut] :=
  hmrRows_owned_drop s2Step381EntryGvAfter [s2Step381EntryFOut,s2Step381EntryGOut,s2Step381EntryFvOut,s2Step381EntryGvOut] 1 s2Step381EntryBank_outgoingOwned

private theorem s2Step381EntryG_distinct : (s2Step381EntryGRow.sign::s2Step381EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step381EntryG_owned : (s2Step381EntryGRow.sign::s2Step381EntryGRow.payload).toFinset⊆s2Step381EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step381EntryGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step381EntryG_reserved : s2Step381EntryGBefore.reserve s2Step381EntryGFresh.toFinset=some s2Step381EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step381EntryGFresh,arenaWires]
  · norm_num [s2Step381EntryGBefore,s2Step381EntryFBefore,s2Step381EntryGFresh,arenaWires]
  · simp only [s2Step381EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step381EntryG_checked : planRowResizeLog s2Step381EntryGBefore s2Step381EntryGRow 81 s2Step381EntryGFresh=
    some (s2Step381EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80],769⟩,growRow 769 s2Step381EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step381EntryGBefore s2Step381EntryGAfter s2Step381EntryGRow 81 s2Step381EntryGFresh
    s2Step381EntryG_distinct s2Step381EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step381EntryG_reserved
  have rowEq : WindowRow.mk (s2Step381EntryGRow.payload++s2Step381EntryGFresh) s2Step381EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step381EntryGvBefore : Arena := s2Step381EntryFBefore

private theorem s2Step381EntryGv_Incoming : rowsOwned s2Step381EntryGvBefore [s2Step381EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step381EntryFRow,s2Step381EntryGRow,s2Step381EntryFvRow,s2Step381EntryGvRow] 3 s2Step381EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step381EntryGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step381EntryGv_Outgoing : rowsOwned s2Step381EntryGvAfter [s2Step381EntryGvOut] :=
  hmrRows_owned_drop s2Step381EntryGvAfter [s2Step381EntryFOut,s2Step381EntryGOut,s2Step381EntryFvOut,s2Step381EntryGvOut] 3 s2Step381EntryBank_outgoingOwned

private theorem s2Step381EntryGv_distinct : (s2Step381EntryGvRow.sign::s2Step381EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step381EntryGv_owned : (s2Step381EntryGvRow.sign::s2Step381EntryGvRow.payload).toFinset⊆s2Step381EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step381EntryGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step381EntryGv_reserved : s2Step381EntryGvBefore.reserve s2Step381EntryGvFresh.toFinset=some s2Step381EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step381EntryGvFresh,arenaWires]
  · norm_num [s2Step381EntryGvBefore,s2Step381EntryFBefore,s2Step381EntryGvFresh,arenaWires]
  · simp only [s2Step381EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step381EntryGv_checked : planRowResizeLog s2Step381EntryGvBefore s2Step381EntryGvRow 206 s2Step381EntryGvFresh=
    some (s2Step381EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 596, 595, 594, 593, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811, 796, 802, 797],771⟩,growRow 771 s2Step381EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step381EntryGvBefore s2Step381EntryGvAfter s2Step381EntryGvRow 206 s2Step381EntryGvFresh
    s2Step381EntryGv_distinct s2Step381EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step381EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step381EntryGvRow.payload++s2Step381EntryGvFresh) s2Step381EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 596, 595, 594, 593, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811, 796, 802, 797],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step381EntryBank_rows : planWindowRowsLog s2Step381EntryFBefore [(s2Step381EntryFRow,81),(s2Step381EntryGRow,81),(s2Step381EntryFvRow,206),(s2Step381EntryGvRow,206)] [s2Step381EntryFFresh,s2Step381EntryGFresh,s2Step381EntryFvFresh,s2Step381EntryGvFresh]=
    some (s2Step381EntryGvAfter,[s2Step381EntryFOut,s2Step381EntryGOut,s2Step381EntryFvOut,s2Step381EntryGvOut],(growRow 768 s2Step381EntryFFresh ++ (growRow 769 s2Step381EntryGFresh ++ (growRow 770 s2Step381EntryFvFresh ++ (growRow 771 s2Step381EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step381EntryGvAfter [] []=some (s2Step381EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step381EntryGvBefore s2Step381EntryGvAfter s2Step381EntryGvAfter
    s2Step381EntryGvRow s2Step381EntryGvOut 206 s2Step381EntryGvFresh [] [] []
    (growRow 771 s2Step381EntryGvFresh) ([]) s2Step381EntryGv_Incoming s2Step381EntryGv_checked h4 s2Step381EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step381EntryFvBefore s2Step381EntryFvAfter s2Step381EntryGvAfter
    s2Step381EntryFvRow s2Step381EntryFvOut 206 s2Step381EntryFvFresh [(s2Step381EntryGvRow,206)] [s2Step381EntryGvFresh] [s2Step381EntryGvOut]
    (growRow 770 s2Step381EntryFvFresh) ((growRow 771 s2Step381EntryGvFresh ++ [])) s2Step381EntryFv_Incoming s2Step381EntryFv_checked h3 s2Step381EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step381EntryGBefore s2Step381EntryGAfter s2Step381EntryGvAfter
    s2Step381EntryGRow s2Step381EntryGOut 81 s2Step381EntryGFresh [(s2Step381EntryFvRow,206),(s2Step381EntryGvRow,206)] [s2Step381EntryFvFresh,s2Step381EntryGvFresh] [s2Step381EntryFvOut,s2Step381EntryGvOut]
    (growRow 769 s2Step381EntryGFresh) ((growRow 770 s2Step381EntryFvFresh ++ (growRow 771 s2Step381EntryGvFresh ++ []))) s2Step381EntryG_Incoming s2Step381EntryG_checked h2 s2Step381EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step381EntryFBefore s2Step381EntryFAfter s2Step381EntryGvAfter
    s2Step381EntryFRow s2Step381EntryFOut 81 s2Step381EntryFFresh [(s2Step381EntryGRow,81),(s2Step381EntryFvRow,206),(s2Step381EntryGvRow,206)] [s2Step381EntryGFresh,s2Step381EntryFvFresh,s2Step381EntryGvFresh] [s2Step381EntryGOut,s2Step381EntryFvOut,s2Step381EntryGvOut]
    (growRow 768 s2Step381EntryFFresh) ((growRow 769 s2Step381EntryGFresh ++ (growRow 770 s2Step381EntryFvFresh ++ (growRow 771 s2Step381EntryGvFresh ++ [])))) s2Step381EntryF_Incoming s2Step381EntryF_checked h1 s2Step381EntryF_Outgoing
  exact h0

private theorem s2Step381EntryBank_checked : compileHmrBankResizeLog .entry s2Step381EntryFBefore ⟨s2Step381EntryFRow,s2Step381EntryGRow,s2Step381EntryFvRow,s2Step381EntryGvRow⟩ ⟨81,81,206,206⟩ [s2Step381EntryFFresh,s2Step381EntryGFresh,s2Step381EntryFvFresh,s2Step381EntryGvFresh]=
    some (s2Step381EntryGvAfter,⟨s2Step381EntryFOut,s2Step381EntryGOut,s2Step381EntryFvOut,s2Step381EntryGvOut⟩,(growRow 768 s2Step381EntryFFresh ++ (growRow 769 s2Step381EntryGFresh ++ (growRow 770 s2Step381EntryFvFresh ++ (growRow 771 s2Step381EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step381EntryBank_rows]
  rfl

private def s2Step381ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<80) ∨ (81≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (810≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step381ExitFBefore : Arena := s2Step381ExitGAfter

private def s2Step381ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 810],768⟩

private def s2Step381ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 81, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826, 789, 800, 842, 785],770⟩

private def s2Step381ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 809],769⟩

private def s2Step381ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 596, 595, 594, 593, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811, 796, 802, 797, 835],771⟩

private theorem s2Step381ExitBank_incomingDistinct : ([s2Step381ExitGRow,s2Step381ExitFRow,s2Step381ExitFvRow,s2Step381ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step381ExitF_Incoming : rowsOwned s2Step381ExitFBefore [s2Step381ExitFRow,s2Step381ExitFvRow,s2Step381ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step381ExitGRow,s2Step381ExitFRow,s2Step381ExitFvRow,s2Step381ExitGvRow] 1 s2Step381ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step381ExitFBefore (fun q => (0≤q ∧ q<80) ∨ (81≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (810≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step381ExitBank_outgoingOwned : rowsOwned s2Step381ExitGvAfter [s2Step381ExitGOut,s2Step381ExitFOut,s2Step381ExitFvOut,s2Step381ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step381ExitGvAfter (fun q => (0≤q ∧ q<80) ∨ (81≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step381ExitF_Outgoing : rowsOwned s2Step381ExitGvAfter [s2Step381ExitFOut,s2Step381ExitFvOut,s2Step381ExitGvOut] :=
  hmrRows_owned_drop s2Step381ExitGvAfter [s2Step381ExitGOut,s2Step381ExitFOut,s2Step381ExitFvOut,s2Step381ExitGvOut] 1 s2Step381ExitBank_outgoingOwned

private theorem s2Step381ExitF_distinct : (s2Step381ExitFRow.sign::s2Step381ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step381ExitF_owned : (s2Step381ExitFRow.sign::s2Step381ExitFRow.payload).toFinset⊆s2Step381ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step381ExitFBefore (fun q => (0≤q ∧ q<80) ∨ (81≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (810≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step381ExitF_retired : s2Step381ExitFBefore.retireSet s2Step381ExitFExtra.toFinset=s2Step381ExitFAfter := by
  unfold Arena.retireSet s2Step381ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step381ExitFBefore,s2Step381ExitGAfter,s2Step381ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step381ExitF_checked : planRowResizeLog s2Step381ExitFBefore s2Step381ExitFRow 81 []=
    some (s2Step381ExitFAfter,s2Step381ExitFOut,shrinkRow 768 s2Step381ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step381ExitFBefore s2Step381ExitFRow 81 s2Step381ExitF_distinct s2Step381ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step381ExitFRow.payload.take 81) s2Step381ExitFRow.sign=s2Step381ExitFOut := by decide +kernel
  have hi : s2Step381ExitFRow.payload.drop 81=s2Step381ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step381ExitF_retired] at result
  exact result

private def s2Step381ExitFvAfter : Arena := s2Step381ExitFAfter

private def s2Step381ExitFvBefore : Arena := s2Step381ExitFAfter

private theorem s2Step381ExitFv_Incoming : rowsOwned s2Step381ExitFvBefore [s2Step381ExitFvRow,s2Step381ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step381ExitGRow,s2Step381ExitFRow,s2Step381ExitFvRow,s2Step381ExitGvRow] 2 s2Step381ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step381ExitFvBefore (fun q => (0≤q ∧ q<80) ∨ (81≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step381ExitFv_Outgoing : rowsOwned s2Step381ExitGvAfter [s2Step381ExitFvOut,s2Step381ExitGvOut] :=
  hmrRows_owned_drop s2Step381ExitGvAfter [s2Step381ExitGOut,s2Step381ExitFOut,s2Step381ExitFvOut,s2Step381ExitGvOut] 2 s2Step381ExitBank_outgoingOwned

private theorem s2Step381ExitFv_distinct : (s2Step381ExitFvRow.sign::s2Step381ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step381ExitFv_owned : (s2Step381ExitFvRow.sign::s2Step381ExitFvRow.payload).toFinset⊆s2Step381ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step381ExitFvBefore (fun q => (0≤q ∧ q<80) ∨ (81≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step381ExitFv_reserved : s2Step381ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step381ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step381ExitFv_checked : planRowResizeLog s2Step381ExitFvBefore s2Step381ExitFvRow 207 []=
    some (s2Step381ExitFvAfter,s2Step381ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step381ExitFvBefore s2Step381ExitFvAfter s2Step381ExitFvRow 207 []
    s2Step381ExitFv_distinct s2Step381ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step381ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step381ExitFvRow.payload++[]) s2Step381ExitFvRow.sign=s2Step381ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step381ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private theorem s2Step381ExitG_Incoming : rowsOwned s2Step381ExitGBefore [s2Step381ExitGRow,s2Step381ExitFRow,s2Step381ExitFvRow,s2Step381ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step381ExitGRow,s2Step381ExitFRow,s2Step381ExitFvRow,s2Step381ExitGvRow] 0 s2Step381ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step381ExitGBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step381ExitG_Outgoing : rowsOwned s2Step381ExitGvAfter [s2Step381ExitGOut,s2Step381ExitFOut,s2Step381ExitFvOut,s2Step381ExitGvOut] :=
  hmrRows_owned_drop s2Step381ExitGvAfter [s2Step381ExitGOut,s2Step381ExitFOut,s2Step381ExitFvOut,s2Step381ExitGvOut] 0 s2Step381ExitBank_outgoingOwned

private theorem s2Step381ExitG_distinct : (s2Step381ExitGRow.sign::s2Step381ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step381ExitG_owned : (s2Step381ExitGRow.sign::s2Step381ExitGRow.payload).toFinset⊆s2Step381ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step381ExitGBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step381ExitG_retired : s2Step381ExitGBefore.retireSet s2Step381ExitGExtra.toFinset=s2Step381ExitGAfter := by
  unfold Arena.retireSet s2Step381ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step381ExitGBefore,s2Step381ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step381ExitG_checked : planRowResizeLog s2Step381ExitGBefore s2Step381ExitGRow 80 []=
    some (s2Step381ExitGAfter,s2Step381ExitGOut,shrinkRow 769 s2Step381ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step381ExitGBefore s2Step381ExitGRow 80 s2Step381ExitG_distinct s2Step381ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step381ExitGRow.payload.take 80) s2Step381ExitGRow.sign=s2Step381ExitGOut := by decide +kernel
  have hi : s2Step381ExitGRow.payload.drop 80=s2Step381ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step381ExitG_retired] at result
  exact result

private def s2Step381ExitGvBefore : Arena := s2Step381ExitFAfter

private theorem s2Step381ExitGv_Incoming : rowsOwned s2Step381ExitGvBefore [s2Step381ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step381ExitGRow,s2Step381ExitFRow,s2Step381ExitFvRow,s2Step381ExitGvRow] 3 s2Step381ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step381ExitGvBefore (fun q => (0≤q ∧ q<80) ∨ (81≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step381ExitGv_Outgoing : rowsOwned s2Step381ExitGvAfter [s2Step381ExitGvOut] :=
  hmrRows_owned_drop s2Step381ExitGvAfter [s2Step381ExitGOut,s2Step381ExitFOut,s2Step381ExitFvOut,s2Step381ExitGvOut] 3 s2Step381ExitBank_outgoingOwned

private theorem s2Step381ExitGv_distinct : (s2Step381ExitGvRow.sign::s2Step381ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step381ExitGv_owned : (s2Step381ExitGvRow.sign::s2Step381ExitGvRow.payload).toFinset⊆s2Step381ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step381ExitGvBefore (fun q => (0≤q ∧ q<80) ∨ (81≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step381ExitGv_reserved : s2Step381ExitGvBefore.reserve (∅ : Finset Wire)=some s2Step381ExitGvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step381ExitGv_checked : planRowResizeLog s2Step381ExitGvBefore s2Step381ExitGvRow 207 []=
    some (s2Step381ExitGvAfter,s2Step381ExitGvOut,growRow 771 []) := by
  have result := planRowResizeLog_of_growth s2Step381ExitGvBefore s2Step381ExitGvAfter s2Step381ExitGvRow 207 []
    s2Step381ExitGv_distinct s2Step381ExitGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step381ExitGv_reserved
  have rowEq : WindowRow.mk (s2Step381ExitGvRow.payload++[]) s2Step381ExitGvRow.sign=s2Step381ExitGvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step381ExitBank_rows : planWindowRowsLog s2Step381ExitGBefore [(s2Step381ExitGRow,80),(s2Step381ExitFRow,81),(s2Step381ExitFvRow,207),(s2Step381ExitGvRow,207)] [[],[],[],[]]=
    some (s2Step381ExitGvAfter,[s2Step381ExitGOut,s2Step381ExitFOut,s2Step381ExitFvOut,s2Step381ExitGvOut],(shrinkRow 769 s2Step381ExitGExtra ++ (shrinkRow 768 s2Step381ExitFExtra ++ (growRow 770 [] ++ (growRow 771 [] ++ []))))) := by
  have h4 : planWindowRowsLog s2Step381ExitGvAfter [] []=some (s2Step381ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step381ExitGvBefore s2Step381ExitGvAfter s2Step381ExitGvAfter
    s2Step381ExitGvRow s2Step381ExitGvOut 207 [] [] [] []
    (growRow 771 []) ([]) s2Step381ExitGv_Incoming s2Step381ExitGv_checked h4 s2Step381ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step381ExitFvBefore s2Step381ExitFvAfter s2Step381ExitGvAfter
    s2Step381ExitFvRow s2Step381ExitFvOut 207 [] [(s2Step381ExitGvRow,207)] [[]] [s2Step381ExitGvOut]
    (growRow 770 []) ((growRow 771 [] ++ [])) s2Step381ExitFv_Incoming s2Step381ExitFv_checked h3 s2Step381ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step381ExitFBefore s2Step381ExitFAfter s2Step381ExitGvAfter
    s2Step381ExitFRow s2Step381ExitFOut 81 [] [(s2Step381ExitFvRow,207),(s2Step381ExitGvRow,207)] [[],[]] [s2Step381ExitFvOut,s2Step381ExitGvOut]
    (shrinkRow 768 s2Step381ExitFExtra) ((growRow 770 [] ++ (growRow 771 [] ++ []))) s2Step381ExitF_Incoming s2Step381ExitF_checked h2 s2Step381ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step381ExitGBefore s2Step381ExitGAfter s2Step381ExitGvAfter
    s2Step381ExitGRow s2Step381ExitGOut 80 [] [(s2Step381ExitFRow,81),(s2Step381ExitFvRow,207),(s2Step381ExitGvRow,207)] [[],[],[]] [s2Step381ExitFOut,s2Step381ExitFvOut,s2Step381ExitGvOut]
    (shrinkRow 769 s2Step381ExitGExtra) ((shrinkRow 768 s2Step381ExitFExtra ++ (growRow 770 [] ++ (growRow 771 [] ++ [])))) s2Step381ExitG_Incoming s2Step381ExitG_checked h1 s2Step381ExitG_Outgoing
  exact h0

private theorem s2Step381ExitBank_checked : compileHmrBankResizeLog .exit s2Step381ExitGBefore ⟨s2Step381ExitFRow,s2Step381ExitGRow,s2Step381ExitFvRow,s2Step381ExitGvRow⟩ ⟨81,80,207,207⟩ [[],[],[],[]]=
    some (s2Step381ExitGvAfter,⟨s2Step381ExitFOut,s2Step381ExitGOut,s2Step381ExitFvOut,s2Step381ExitGvOut⟩,(shrinkRow 769 s2Step381ExitGExtra ++ (shrinkRow 768 s2Step381ExitFExtra ++ (growRow 770 [] ++ (growRow 771 [] ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step381ExitBank_rows]
  rfl

private theorem s2Step381Add0_apart : Disjoint s2Step381Add0Arena.live s2Step381Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step381Add0Arena (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step381Add0_card : s2Step381Add0Arena.live.card=908 := by
  decide +kernel

private theorem s2Step381Add0_borrowed : s2Step381Add0Arena.checkBorrow (hmrHybridCount s2Step381Add0Arena s2Step381Add0B.length) s2Step381Add0Work=some s2Step381Add0During := by
  have len : s2Step381Add0Work.length=hmrHybridCount s2Step381Add0Arena s2Step381Add0B.length := by
    rw [hmrHybridCount,s2Step381Add0_card]
    decide +kernel
  have nd : s2Step381Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step381Add0Arena s2Step381Add0During s2Step381Add0Work.toFinset s2Step381Add0_bounded s2Step381Add0_apart rfl

private theorem s2Step381Add0_distinct : (799::837::803::(s2Step381Add0A++s2Step381Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step381Add0_owned : (799::837::803::(s2Step381Add0A++s2Step381Add0B)).toFinset⊆s2Step381Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step381Add0Arena (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step381Add0_checked : compileHmrHybridCinLog s2Step381Add0Arena 837 799 803 s2Step381Add0A s2Step381Add0B s2Step381Add0Work=some s2Step381Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step381Add0Arena s2Step381Add0During 837 799 803 s2Step381Add0A s2Step381Add0B s2Step381Add0Work
    (by decide +kernel) (by decide +kernel) s2Step381Add0_distinct
    (fun q hq => s2Step381Add0_owned (List.mem_toFinset.mpr hq)) s2Step381Add0_borrowed

private theorem s2Step381Add1_apart : Disjoint s2Step381Add1Arena.live s2Step381Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step381Add1Arena (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step381Add1_card : s2Step381Add1Arena.live.card=908 := by
  decide +kernel

private theorem s2Step381Add1_borrowed : s2Step381Add1Arena.checkBorrow (hmrHybridCount s2Step381Add1Arena s2Step381Add1B.length) s2Step381Add1Work=some s2Step381Add1During := by
  have len : s2Step381Add1Work.length=hmrHybridCount s2Step381Add1Arena s2Step381Add1B.length := by
    rw [hmrHybridCount,s2Step381Add1_card]
    decide +kernel
  have nd : s2Step381Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step381Add1Arena s2Step381Add1During s2Step381Add1Work.toFinset s2Step381Add1_bounded s2Step381Add1_apart rfl

private theorem s2Step381Add1_distinct : (799::837::803::(s2Step381Add1A++s2Step381Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step381Add1_owned : (799::837::803::(s2Step381Add1A++s2Step381Add1B)).toFinset⊆s2Step381Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step381Add1Arena (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step381Add1_checked : compileHmrHybridCinLog s2Step381Add1Arena 837 799 803 s2Step381Add1A s2Step381Add1B s2Step381Add1Work=some s2Step381Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step381Add1Arena s2Step381Add1During 837 799 803 s2Step381Add1A s2Step381Add1B s2Step381Add1Work
    (by decide +kernel) (by decide +kernel) s2Step381Add1_distinct
    (fun q hq => s2Step381Add1_owned (List.mem_toFinset.mpr hq)) s2Step381Add1_borrowed

private theorem s2Step381F4_apart : Disjoint (s2Step381Add0A++s2Step381Add0B).toFinset (s2Step381Add1A++s2Step381Add1B).toFinset := by
  have nd : ((s2Step381Add0A++s2Step381Add0B)++(s2Step381Add1A++s2Step381Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step381F4_carry : s2Step381F4FlagArena.checkBorrow 1 [803]=some s2Step381Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step381F4FlagArena,s2Step381HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step381F4FlagArena,s2Step381HeadFvAfter,s2Step381Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step381F4_distinct : (824::837::799::803::((s2Step381Add0A++s2Step381Add1A)++(s2Step381Add0B++s2Step381Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step381F4_flag : s2Step381HeadFvAfter.checkBorrow 1 [799]=some s2Step381F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step381HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step381F4_owned : (824::837::((s2Step381Add0A++s2Step381Add1A)++(s2Step381Add0B++s2Step381Add1B))).toFinset⊆s2Step381HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step381HeadFvAfter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step381F4_checked : compileHmrHybridF4Log s2Step381HeadFvAfter 824 837 s2Step381Add0A s2Step381Add0B s2Step381Add1A s2Step381Add1B [799] [803] s2Step381Add0Work s2Step381Add1Work=some s2Step381F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step381HeadFvAfter s2Step381F4FlagArena s2Step381Add0Arena s2Step381Add0During s2Step381Add1During 824 837
    s2Step381Add0A s2Step381Add0B s2Step381Add1A s2Step381Add1B [799] [803] s2Step381Add0Work s2Step381Add1Work
    (fun q hq => s2Step381F4_owned (List.mem_toFinset.mpr hq)) s2Step381F4_flag s2Step381F4_carry
    s2Step381F4_distinct s2Step381F4_apart s2Step381Add0_checked s2Step381Add1_checked

private theorem s2Step381Front_branch : s2Step381FrontSigmaArena.checkBorrow 1 [837]=some s2Step381HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step381FrontSigmaArena,s2Step381EntryGvAfter,s2Step381EntryFBefore,arenaWires]
  · ext q
    simp only [s2Step381FrontSigmaArena,s2Step381EntryGvAfter,s2Step381EntryFBefore,s2Step381HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step381Front_entry : HmrFrontEntryValid s2Step381EntryFBefore s2Step381FrontBank 81 206 ⟨81,80,207,207⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step381FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step381EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step381EntryFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step381FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step381Front_sigma : s2Step381EntryGvAfter.checkBorrow 1 [824]=some s2Step381FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step381EntryGvAfter,s2Step381EntryFBefore,arenaWires]
  · rfl

private def s2Step381HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step381HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step381HeadFBefore : Arena := s2Step381HeadGAfter

private def s2Step381HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592],768⟩

private def s2Step381HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 81, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826, 789, 800, 842],770⟩

private def s2Step381HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80],769⟩

private def s2Step381HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 596, 595, 594, 593, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811, 796, 802, 797],771⟩

private theorem s2Step381HeadBank_incomingDistinct : ([s2Step381HeadGRow,s2Step381HeadFRow,s2Step381HeadGvRow,s2Step381HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step381HeadF_Incoming : rowsOwned s2Step381HeadFBefore [s2Step381HeadFRow,s2Step381HeadGvRow,s2Step381HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step381HeadGRow,s2Step381HeadFRow,s2Step381HeadGvRow,s2Step381HeadFvRow] 1 s2Step381HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step381HeadFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step381HeadBank_outgoingOwned : rowsOwned s2Step381HeadFvAfter [s2Step381HeadGOut,s2Step381HeadFOut,s2Step381HeadGvOut,s2Step381HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step381HeadFvAfter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step381HeadF_Outgoing : rowsOwned s2Step381HeadFvAfter [s2Step381HeadFOut,s2Step381HeadGvOut,s2Step381HeadFvOut] :=
  hmrRows_owned_drop s2Step381HeadFvAfter [s2Step381HeadGOut,s2Step381HeadFOut,s2Step381HeadGvOut,s2Step381HeadFvOut] 1 s2Step381HeadBank_outgoingOwned

private theorem s2Step381HeadF_distinct : (s2Step381HeadFRow.sign::s2Step381HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step381HeadF_owned : (s2Step381HeadFRow.sign::s2Step381HeadFRow.payload).toFinset⊆s2Step381HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step381HeadFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step381HeadF_reserved : s2Step381HeadFBefore.reserve s2Step381HeadFFresh.toFinset=some s2Step381HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step381HeadFFresh,arenaWires]
  · norm_num [s2Step381HeadFBefore,s2Step381HeadGAfter,s2Step381HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step381HeadFAfter,s2Step381HeadFBefore,s2Step381HeadGAfter,s2Step381HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step381HeadF_checked : planRowResizeLog s2Step381HeadFBefore s2Step381HeadFRow 82 s2Step381HeadFFresh=
    some (s2Step381HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 810],768⟩,growRow 768 s2Step381HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step381HeadFBefore s2Step381HeadFAfter s2Step381HeadFRow 82 s2Step381HeadFFresh
    s2Step381HeadF_distinct s2Step381HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step381HeadF_reserved
  have rowEq : WindowRow.mk (s2Step381HeadFRow.payload++s2Step381HeadFFresh) s2Step381HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 810],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step381HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step381HeadFvBefore : Arena := s2Step381HeadGvAfter

private theorem s2Step381HeadFv_Incoming : rowsOwned s2Step381HeadFvBefore [s2Step381HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step381HeadGRow,s2Step381HeadFRow,s2Step381HeadGvRow,s2Step381HeadFvRow] 3 s2Step381HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step381HeadFvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step381HeadFv_Outgoing : rowsOwned s2Step381HeadFvAfter [s2Step381HeadFvOut] :=
  hmrRows_owned_drop s2Step381HeadFvAfter [s2Step381HeadGOut,s2Step381HeadFOut,s2Step381HeadGvOut,s2Step381HeadFvOut] 3 s2Step381HeadBank_outgoingOwned

private theorem s2Step381HeadFv_distinct : (s2Step381HeadFvRow.sign::s2Step381HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step381HeadFv_owned : (s2Step381HeadFvRow.sign::s2Step381HeadFvRow.payload).toFinset⊆s2Step381HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step381HeadFvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step381HeadFv_reserved : s2Step381HeadFvBefore.reserve s2Step381HeadFvFresh.toFinset=some s2Step381HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step381HeadFvFresh,arenaWires]
  · norm_num [s2Step381HeadFvBefore,s2Step381HeadGvAfter,s2Step381HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step381HeadFvAfter,s2Step381HeadFvBefore,s2Step381HeadGvAfter,s2Step381HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step381HeadFv_checked : planRowResizeLog s2Step381HeadFvBefore s2Step381HeadFvRow 207 s2Step381HeadFvFresh=
    some (s2Step381HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 81, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826, 789, 800, 842, 785],770⟩,growRow 770 s2Step381HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step381HeadFvBefore s2Step381HeadFvAfter s2Step381HeadFvRow 207 s2Step381HeadFvFresh
    s2Step381HeadFv_distinct s2Step381HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step381HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step381HeadFvRow.payload++s2Step381HeadFvFresh) s2Step381HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 81, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826, 789, 800, 842, 785],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step381HeadG_Incoming : rowsOwned s2Step381HeadGBefore [s2Step381HeadGRow,s2Step381HeadFRow,s2Step381HeadGvRow,s2Step381HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step381HeadGRow,s2Step381HeadFRow,s2Step381HeadGvRow,s2Step381HeadFvRow] 0 s2Step381HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step381HeadGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step381HeadG_Outgoing : rowsOwned s2Step381HeadFvAfter [s2Step381HeadGOut,s2Step381HeadFOut,s2Step381HeadGvOut,s2Step381HeadFvOut] :=
  hmrRows_owned_drop s2Step381HeadFvAfter [s2Step381HeadGOut,s2Step381HeadFOut,s2Step381HeadGvOut,s2Step381HeadFvOut] 0 s2Step381HeadBank_outgoingOwned

private theorem s2Step381HeadG_distinct : (s2Step381HeadGRow.sign::s2Step381HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step381HeadG_owned : (s2Step381HeadGRow.sign::s2Step381HeadGRow.payload).toFinset⊆s2Step381HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step381HeadGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step381HeadG_reserved : s2Step381HeadGBefore.reserve s2Step381HeadGFresh.toFinset=some s2Step381HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step381HeadGFresh,arenaWires]
  · norm_num [s2Step381HeadGBefore,s2Step381HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step381HeadGAfter,s2Step381HeadGBefore,s2Step381HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step381HeadG_checked : planRowResizeLog s2Step381HeadGBefore s2Step381HeadGRow 82 s2Step381HeadGFresh=
    some (s2Step381HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 809],769⟩,growRow 769 s2Step381HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step381HeadGBefore s2Step381HeadGAfter s2Step381HeadGRow 82 s2Step381HeadGFresh
    s2Step381HeadG_distinct s2Step381HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step381HeadG_reserved
  have rowEq : WindowRow.mk (s2Step381HeadGRow.payload++s2Step381HeadGFresh) s2Step381HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 809],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step381HeadGvBefore : Arena := s2Step381HeadFAfter

private theorem s2Step381HeadGv_Incoming : rowsOwned s2Step381HeadGvBefore [s2Step381HeadGvRow,s2Step381HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step381HeadGRow,s2Step381HeadFRow,s2Step381HeadGvRow,s2Step381HeadFvRow] 2 s2Step381HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step381HeadGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step381HeadGv_Outgoing : rowsOwned s2Step381HeadFvAfter [s2Step381HeadGvOut,s2Step381HeadFvOut] :=
  hmrRows_owned_drop s2Step381HeadFvAfter [s2Step381HeadGOut,s2Step381HeadFOut,s2Step381HeadGvOut,s2Step381HeadFvOut] 2 s2Step381HeadBank_outgoingOwned

private theorem s2Step381HeadGv_distinct : (s2Step381HeadGvRow.sign::s2Step381HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step381HeadGv_owned : (s2Step381HeadGvRow.sign::s2Step381HeadGvRow.payload).toFinset⊆s2Step381HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step381HeadGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step381HeadGv_reserved : s2Step381HeadGvBefore.reserve s2Step381HeadGvFresh.toFinset=some s2Step381HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step381HeadGvFresh,arenaWires]
  · norm_num [s2Step381HeadGvBefore,s2Step381HeadFAfter,s2Step381HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step381HeadGvAfter,s2Step381HeadGvBefore,s2Step381HeadFAfter,s2Step381HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step381HeadGv_checked : planRowResizeLog s2Step381HeadGvBefore s2Step381HeadGvRow 207 s2Step381HeadGvFresh=
    some (s2Step381HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 596, 595, 594, 593, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811, 796, 802, 797, 835],771⟩,growRow 771 s2Step381HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step381HeadGvBefore s2Step381HeadGvAfter s2Step381HeadGvRow 207 s2Step381HeadGvFresh
    s2Step381HeadGv_distinct s2Step381HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step381HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step381HeadGvRow.payload++s2Step381HeadGvFresh) s2Step381HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 596, 595, 594, 593, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811, 796, 802, 797, 835],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step381HeadBank_rows : planWindowRowsLog s2Step381HeadGBefore [(s2Step381HeadGRow,82),(s2Step381HeadFRow,82),(s2Step381HeadGvRow,207),(s2Step381HeadFvRow,207)] [s2Step381HeadGFresh,s2Step381HeadFFresh,s2Step381HeadGvFresh,s2Step381HeadFvFresh]=
    some (s2Step381HeadFvAfter,[s2Step381HeadGOut,s2Step381HeadFOut,s2Step381HeadGvOut,s2Step381HeadFvOut],(growRow 769 s2Step381HeadGFresh ++ (growRow 768 s2Step381HeadFFresh ++ (growRow 771 s2Step381HeadGvFresh ++ (growRow 770 s2Step381HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step381HeadFvAfter [] []=some (s2Step381HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step381HeadFvBefore s2Step381HeadFvAfter s2Step381HeadFvAfter
    s2Step381HeadFvRow s2Step381HeadFvOut 207 s2Step381HeadFvFresh [] [] []
    (growRow 770 s2Step381HeadFvFresh) ([]) s2Step381HeadFv_Incoming s2Step381HeadFv_checked h4 s2Step381HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step381HeadGvBefore s2Step381HeadGvAfter s2Step381HeadFvAfter
    s2Step381HeadGvRow s2Step381HeadGvOut 207 s2Step381HeadGvFresh [(s2Step381HeadFvRow,207)] [s2Step381HeadFvFresh] [s2Step381HeadFvOut]
    (growRow 771 s2Step381HeadGvFresh) ((growRow 770 s2Step381HeadFvFresh ++ [])) s2Step381HeadGv_Incoming s2Step381HeadGv_checked h3 s2Step381HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step381HeadFBefore s2Step381HeadFAfter s2Step381HeadFvAfter
    s2Step381HeadFRow s2Step381HeadFOut 82 s2Step381HeadFFresh [(s2Step381HeadGvRow,207),(s2Step381HeadFvRow,207)] [s2Step381HeadGvFresh,s2Step381HeadFvFresh] [s2Step381HeadGvOut,s2Step381HeadFvOut]
    (growRow 768 s2Step381HeadFFresh) ((growRow 771 s2Step381HeadGvFresh ++ (growRow 770 s2Step381HeadFvFresh ++ []))) s2Step381HeadF_Incoming s2Step381HeadF_checked h2 s2Step381HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step381HeadGBefore s2Step381HeadGAfter s2Step381HeadFvAfter
    s2Step381HeadGRow s2Step381HeadGOut 82 s2Step381HeadGFresh [(s2Step381HeadFRow,82),(s2Step381HeadGvRow,207),(s2Step381HeadFvRow,207)] [s2Step381HeadFFresh,s2Step381HeadGvFresh,s2Step381HeadFvFresh] [s2Step381HeadFOut,s2Step381HeadGvOut,s2Step381HeadFvOut]
    (growRow 769 s2Step381HeadGFresh) ((growRow 768 s2Step381HeadFFresh ++ (growRow 771 s2Step381HeadGvFresh ++ (growRow 770 s2Step381HeadFvFresh ++ [])))) s2Step381HeadG_Incoming s2Step381HeadG_checked h1 s2Step381HeadG_Outgoing
  exact h0

private theorem s2Step381HeadBank_checked : compileHmrBankResizeLog .headroom s2Step381HeadGBefore ⟨s2Step381HeadFRow,s2Step381HeadGRow,s2Step381HeadFvRow,s2Step381HeadGvRow⟩ ⟨82,82,207,207⟩ [s2Step381HeadGFresh,s2Step381HeadFFresh,s2Step381HeadGvFresh,s2Step381HeadFvFresh]=
    some (s2Step381HeadFvAfter,⟨s2Step381HeadFOut,s2Step381HeadGOut,s2Step381HeadFvOut,s2Step381HeadGvOut⟩,(growRow 769 s2Step381HeadGFresh ++ (growRow 768 s2Step381HeadFFresh ++ (growRow 771 s2Step381HeadGvFresh ++ (growRow 770 s2Step381HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step381HeadBank_rows]
  rfl

private theorem s2Step381Front_checked : compileHmrSourceFrontLog s2Step381EntryFBefore s2Step381FrontBank 81 206 ⟨81,80,207,207⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step381FrontLog=some s2Step381FrontPlan := by
  have pairEq : s2Step381FrontPair=⟨s2Step381HeadFRow,s2Step381HeadGRow,s2Step381HeadFvRow,s2Step381HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step381FrontHead=⟨s2Step381ExitFRow,s2Step381ExitGRow,s2Step381ExitFvRow,s2Step381ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step381Add0A=s2Step381FrontHead.f.wires := by decide +kernel
  have gEq : s2Step381Add0B=s2Step381FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step381Add1A=s2Step381FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step381Add1B=s2Step381FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step381EntryFBefore s2Step381FrontBank 81 206 ⟨81,80,207,207⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step381FrontLog s2Step381FrontPlan
  · exact s2Step381Front_entry
  · exact s2Step381EntryBank_checked
  · exact s2Step381Front_sigma
  · rfl
  · exact s2Step381Front_branch
  · rfl
  · simpa only [s2Step381FrontPlan,pairEq] using s2Step381HeadBank_checked
  · simpa only [s2Step381FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step381F4_checked
  · exact s2Step381Counter_checked
  · rfl
  · simpa only [s2Step381FrontPlan,headEq] using s2Step381ExitBank_checked

private theorem s2Step381Complete_explicit_checked : compileHmrEarlyStepLog s2Step381EntryFBefore s2Step381FrontBank 81 206 ⟨81,80,207,207⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step381CompleteLog=some s2Step381CompletePlan := by
  let Q := s2Step381EarlyControlPlan
  have hq := s2Step381EarlyControl_plan_checked
  have fv1 : s2Step381CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step381CompleteOut.fv.payload[2]?.getD s2Step381CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step381CompleteOut.fv.payload[3]?.getD s2Step381CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step381CompleteOut.fv.payload[4]?.getD s2Step381CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step381EntryFBefore s2Step381EarlyControlArena s2Step381FrontBank 81 206 ⟨81,80,207,207⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step381CompleteLog s2Step381FrontPlan Q
    s2Step381Front_checked s2Step381Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step381Complete_owned s2Step381Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step381EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 824 s2Step381CompleteOut.fv.second (s2Step381CompleteOut.fv.payload[2]?.getD s2Step381CompleteOut.fv.sign) (s2Step381CompleteOut.fv.payload[3]?.getD s2Step381CompleteOut.fv.sign) (s2Step381CompleteOut.fv.payload[4]?.getD s2Step381CompleteOut.fv.sign) 837 60 s2Step381EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep381Arena : Arena := s2Step381EntryFBefore
def s2PrivateStep381Bank : WindowBank := s2Step381FrontBank
def s2PrivateStep381Spec : HmrSourceWalkStepLog := ⟨81,206,⟨81,80,207,207⟩,60,.early s2Step381CompleteLog⟩
def s2PrivateStep381Plan : HmrSourceStepPlan := .early s2Step381CompletePlan
theorem s2PrivateStep381_source : s2PrivateStep381Spec=s2ObservedLogs368[13] := rfl
theorem s2PrivateStep381_checked : compileHmrSourceStepLog s2PrivateStep381Arena s2PrivateStep381Bank
    s2PrivateStep381Spec.fgWidth s2PrivateStep381Spec.vWidth s2PrivateStep381Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]
    6 498 381 s2PrivateStep381Spec.need none s2PrivateStep381Spec.log=some s2PrivateStep381Plan := by
  change compileHmrSourceStepLog s2Step381EntryFBefore s2Step381FrontBank 81 206 ⟨81,80,207,207⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 6 498 381 60 none (.early s2Step381CompleteLog)=some (.early s2Step381CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 381<498)]
  rw [s2Step381Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
