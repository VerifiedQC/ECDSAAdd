import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep378
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

private def s2Step380CompleteMoves : List (Wire × Wire) := [(809,593)]

private def s2Step380EarlyControlLog : HmrEarlyControlLog := ⟨[809, 810, 835, 785, 799],[803],[793],[825, 827, 844, 907, 913, 914],[]⟩

private def s2Step380FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [799], [], [797]],[[803], [785], [810], [835]],[[], [], [], []]⟩,[837],[824],[793],[825],[827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[793, 825, 827, 844]⟩

private def s2Step380CompleteLog : HmrEarlyStepLog := ⟨s2Step380FrontLog,s2Step380CompleteMoves,s2Step380EarlyControlLog⟩

private def s2Step380ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592],768⟩

private def s2Step380ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 81, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826, 789, 800, 842],770⟩

private def s2Step380ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80],769⟩

private def s2Step380ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 596, 595, 594, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811, 796, 802, 797],771⟩

private def s2Step380FrontOut : WindowBank := ⟨s2Step380ExitFOut,s2Step380ExitGOut,s2Step380ExitFvOut,s2Step380ExitGvOut⟩

private def s2Step380CompleteOut : WindowBank := s2Step380FrontOut.repacked s2Step380CompleteMoves

private def s2Step380EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step380EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step380EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step380EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step380EarlyControlPositiveArena,[803],s2Step380EarlyControlEqualityArena,[793],⟨⟨837,false⟩,[⟨⟨803,false⟩,793⟩]⟩⟩

private def s2Step380EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<915)),Finset.filter_subset _ _⟩

private def s2Step380EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<915)),Finset.filter_subset _ _⟩

private def s2Step380EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step380EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step380EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step380EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step380EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,809⟩,⟨⟨774,false⟩,810⟩,⟨⟨775,false⟩,835⟩,⟨⟨776,false⟩,785⟩,⟨⟨777,false⟩,799⟩]⟩

private def s2Step380EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step380EarlyControlZeroArena,s2Step380EarlyControlZeroPlan,s2Step380EarlyControlClassPlan,s2Step380EarlyControlFlagArena,s2Step380EarlyControlFittedArena,s2Step380EarlyControlHistoryArena,s2Step380EarlyControlSigmaArena,s2Step380EarlyControlOutputArena,s2Step380EarlyControlLog⟩

private def s2Step380CounterWork : List Wire := [793, 825, 827, 844]

private theorem s2Step380Counter_bounded : s2Step380CounterWork.toFinset⊆arenaWires := by norm_num [s2Step380CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step380HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step380CounterDuring : Arena := ⟨s2Step380HeadFvAfter.live∪s2Step380CounterWork.toFinset,Finset.union_subset s2Step380HeadFvAfter.bounded s2Step380Counter_bounded⟩

private def s2Step380EntryFFresh : List Wire := []

private def s2Step380EntryFvFresh : List Wire := []

private def s2Step380EntryGFresh : List Wire := [799]

private def s2Step380EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step380EntryGvFresh : List Wire := [797]

private def s2Step380ExitFExtra : List Wire := [593, 785]

private def s2Step380ExitFvExtra : List Wire := [835]

private def s2Step380ExitGExtra : List Wire := [799, 803]

private def s2Step380ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<593) ∨ (594≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step380ExitGvExtra : List Wire := [810]

private def s2Step380Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step380Add0Work : List Wire := [827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step380Add0_bounded : s2Step380Add0Work.toFinset⊆arenaWires := by
  have h : s2Step380Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step380Add0During : Arena := ⟨s2Step380Add0Arena.live∪s2Step380Add0Work.toFinset,Finset.union_subset s2Step380Add0Arena.bounded s2Step380Add0_bounded⟩

private def s2Step380Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step380Add1Work : List Wire := [827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step380Add1_bounded : s2Step380Add1Work.toFinset⊆arenaWires := by
  have h : s2Step380Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step380Add1During : Arena := ⟨s2Step380Add1Arena.live∪s2Step380Add1Work.toFinset,Finset.union_subset s2Step380Add1Arena.bounded s2Step380Add1_bounded⟩

private def s2Step380F4FlagArena : Arena := ⟨s2Step380HeadFvAfter.live∪{793},Finset.union_subset s2Step380HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step380F4Plan : HmrHybridF4Plan := ⟨s2Step380F4FlagArena,[793],s2Step380Add0Arena,[825],s2Step380Add0During,s2Step380Add0Work,s2Step380Add1During,s2Step380Add1Work⟩

private def s2Step380HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 785],768⟩

private def s2Step380HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 81, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826, 789, 800, 842, 835],770⟩

private def s2Step380HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 799, 803],769⟩

private def s2Step380HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 596, 595, 594, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811, 796, 802, 797, 810],771⟩

private def s2Step380FrontHead : WindowBank := ⟨s2Step380HeadFOut,s2Step380HeadGOut,s2Step380HeadFvOut,s2Step380HeadGvOut⟩

private def s2Step380EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593],768⟩

private def s2Step380EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 81, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826, 789, 800, 842],770⟩

private def s2Step380EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 799],769⟩

private def s2Step380EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 596, 595, 594, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811, 796, 802, 797],771⟩

private def s2Step380FrontPair : WindowBank := ⟨s2Step380EntryFOut,s2Step380EntryGOut,s2Step380EntryFvOut,s2Step380EntryGvOut⟩

private def s2Step380FrontSigmaArena : Arena := ⟨s2Step380EntryGvAfter.live∪{837},Finset.union_subset s2Step380EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step380HeadFFresh : List Wire := [785]

private def s2Step380HeadFvFresh : List Wire := [835]

private def s2Step380HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step380HeadGFresh : List Wire := [803]

private def s2Step380HeadGvFresh : List Wire := [810]

private def s2Step380FrontPlan : HmrSourceFront := ⟨s2Step380EntryGvAfter,s2Step380FrontPair,(growRow 768 s2Step380EntryFFresh ++ (growRow 769 s2Step380EntryGFresh ++ (growRow 770 s2Step380EntryFvFresh ++ (growRow 771 s2Step380EntryGvFresh ++ [])))),s2Step380FrontSigmaArena,[837],s2Step380HeadGBefore,[824],
  s2Step380HeadFvAfter,s2Step380FrontHead,(growRow 769 s2Step380HeadGFresh ++ (growRow 768 s2Step380HeadFFresh ++ (growRow 771 s2Step380HeadGvFresh ++ (growRow 770 s2Step380HeadFvFresh ++ [])))),s2Step380F4Plan,s2Step380CounterDuring,s2Step380CounterWork,s2Step380ExitGvAfter,s2Step380FrontOut,(shrinkRow 769 s2Step380ExitGExtra ++ (shrinkRow 768 s2Step380ExitFExtra ++ (shrinkRow 770 s2Step380ExitFvExtra ++ (shrinkRow 771 s2Step380ExitGvExtra ++ []))))⟩

private def s2Step380CompletePlan : HmrEarlyStepPlan := ⟨s2Step380FrontPlan,s2Step380EarlyControlArena,s2Step380EarlyControlPlan,s2Step380CompleteMoves⟩

private theorem s2Step380Complete_apart : List.Disjoint (s2Step380CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [837, 824, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] := by
  have nd : ((s2Step380CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[837, 824, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step380Complete_owned : (s2Step380CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step380EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step380EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private def s2Step380CompleteMoveArena : Arena := ⟨s2Step380ExitGvAfter.live∪{593},Finset.union_subset s2Step380ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step380Complete_repack : s2Step380ExitGvAfter.checkRepack s2Step380CompleteMoves=some s2Step380EarlyControlArena := by
  have owned : 809∈s2Step380ExitGvAfter.live := by norm_num [s2Step380ExitGvAfter,arenaWires]
  have reserve : s2Step380ExitGvAfter.reserve {593}=some s2Step380CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step380ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step380CompleteMoveArena.retireSet {809}=s2Step380EarlyControlArena := by
    unfold Arena.retireSet s2Step380EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step380CompleteMoveArena,s2Step380ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step380CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step380CompleteMoveArena.retireSet {809}).checkRepack []=some s2Step380EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step380EarlyControl_branchOwned : ([824] : List Wire).toFinset⊆s2Step380EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step380EarlyControlSigmaArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step380EarlyControl_branch : compileHmrBranchRetirement s2Step380EarlyControlSigmaArena 824=some s2Step380EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step380EarlyControl_branchOwned
  · ext q
    simp [s2Step380EarlyControlOutputArena,s2Step380EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step380EarlyControl_classEqualityBorrow : s2Step380EarlyControlPositiveArena.checkBorrow (([837, 803] : List Wire).length-1) s2Step380EarlyControlLog.classWork=some s2Step380EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step380EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step380EarlyControlPositiveArena (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step380EarlyControlEqualityArena,s2Step380EarlyControlPositiveArena,s2Step380EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step380EarlyControl_classEqualityOwned : ([837, 803] : List Wire).toFinset⊆s2Step380EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step380EarlyControlPositiveArena (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step380EarlyControl_classEquality : compileHmrEqualityLog s2Step380EarlyControlPositiveArena [837, 803] 0 s2Step380EarlyControlLog.classWork=some (s2Step380EarlyControlEqualityArena,s2Step380EarlyControlLog.classWork,s2Step380EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step380EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step380EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step380EarlyControl_classOwned : ([777, 799, 837] : List Wire).toFinset⊆s2Step380EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step380EarlyControlZeroArena (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step380EarlyControl_positiveBorrow : s2Step380EarlyControlZeroArena.checkBorrow (1) s2Step380EarlyControlLog.positiveWork=some s2Step380EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step380EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step380EarlyControlZeroArena (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step380EarlyControlPositiveArena,s2Step380EarlyControlZeroArena,s2Step380EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step380EarlyControl_class : compileHmrSourceClassLog s2Step380EarlyControlZeroArena false 777 s2Step380EarlyControlZeroPlan.top 0 837 s2Step380EarlyControlLog.positiveWork s2Step380EarlyControlLog.classWork=some s2Step380EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step380EarlyControlClassPlan s2Step380EarlyControlZeroArena false 777 s2Step380EarlyControlZeroPlan.top 0 837
  constructor
  · decide +kernel
  · exact s2Step380EarlyControl_classOwned
  · exact s2Step380EarlyControl_positiveBorrow
  · exact s2Step380EarlyControl_classEquality

private theorem s2Step380EarlyControl_entryRecordOwned : ([824, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step380EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step380EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step380EarlyControl_entrySigmaOwned : ([837, 254] : List Wire).toFinset⊆s2Step380EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step380EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step380EarlyControl_fitBorrow : s2Step380EarlyControlFlagArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step380EarlyControlLog.recordFresh=some s2Step380EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step380EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step380EarlyControlFlagArena (fun q => (0≤q ∧ q<915)) rfl
      decide +kernel
    · ext q
      simp [s2Step380EarlyControlFittedArena,s2Step380EarlyControlFlagArena,s2Step380EarlyControlLog,arenaWires]

private theorem s2Step380EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step380EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step380EarlyControlFlagArena (fun q => (0≤q ∧ q<915)) rfl
  decide +kernel

private theorem s2Step380EarlyControl_fit : compileHmrRecordGrowLog s2Step380EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step380EarlyControlLog.recordFresh=some s2Step380EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step380EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step380EarlyControl_fitBorrow

private theorem s2Step380EarlyControl_flagsBorrow : s2Step380EarlyControlEqualityArena.checkBorrow (6) s2Step380EarlyControlLog.flagWork=some s2Step380EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step380EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step380EarlyControlEqualityArena (fun q => (0≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step380EarlyControlFlagArena,s2Step380EarlyControlEqualityArena,s2Step380EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step380EarlyControl_flagsOwned : ([793, 253, 252, 251] : List Wire).toFinset⊆s2Step380EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step380EarlyControlEqualityArena (fun q => (0≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step380EarlyControl_flags : compileHmrFlagsLog s2Step380EarlyControlClassPlan.equalityArena s2Step380EarlyControlClassPlan.equality.top 253 252 251 s2Step380EarlyControlLog.flagWork=some s2Step380EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step380EarlyControl_flagsOwned⟩
  · exact s2Step380EarlyControl_flagsBorrow

private theorem s2Step380EarlyControl_historyBorrow : s2Step380EarlyControlArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step380EarlyControlLog.recordFresh=some s2Step380EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step380EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step380EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step380EarlyControlHistoryArena,s2Step380EarlyControlArena,s2Step380EarlyControlLog,arenaWires]

private theorem s2Step380EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step380EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step380EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step380EarlyControl_history : compileHmrRecordGrowLog s2Step380EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step380EarlyControlLog.recordFresh=some s2Step380EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step380EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step380EarlyControl_historyBorrow

private theorem s2Step380EarlyControl_sigmaOwned : ([254, 837] : List Wire).toFinset⊆s2Step380EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step380EarlyControlHistoryArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step380EarlyControl_sigmaReleaseOwned : ([837] : List Wire).toFinset⊆s2Step380EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step380EarlyControlHistoryArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step380EarlyControl_sigmaRelease : s2Step380EarlyControlHistoryArena.release {837} (fun _ => false)=some s2Step380EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step380EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step380EarlyControlSigmaArena,s2Step380EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step380EarlyControl_sigma : compileHmrSigmaDropLog s2Step380EarlyControlHistoryArena false 0 0 254 837 []=some s2Step380EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step380EarlyControl_sigmaOwned⟩
  · exact s2Step380EarlyControl_sigmaRelease

private theorem s2Step380EarlyControl_zeroBorrow : s2Step380EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step380EarlyControlLog.zeroWork=some s2Step380EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step380EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step380EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step380EarlyControlZeroArena,s2Step380EarlyControlArena,s2Step380EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step380EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step380EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step380EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step380EarlyControl_zero : compileHmrEqualityLog s2Step380EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step380EarlyControlLog.zeroWork=some (s2Step380EarlyControlZeroArena,s2Step380EarlyControlLog.zeroWork,s2Step380EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step380EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step380EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step380EarlyControl_logged : s2Step380EarlyControlPlan.Logged s2Step380EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 837 254 253 252 251 824 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step380EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step380EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step380EarlyControl_zero
  · exact s2Step380EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step380EarlyControl_flags
  · exact s2Step380EarlyControl_fit
  · exact s2Step380EarlyControl_history
  · exact s2Step380EarlyControl_sigma
  · exact s2Step380EarlyControl_branch

private theorem s2Step380EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step380EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 837 254 253 252 251 824 60 s2Step380EarlyControlLog=some s2Step380EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step380EarlyControlPlan s2Step380EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 837 254 253 252 251 824 60 s2Step380EarlyControl_logged

private def s2Step380EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step380EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593],768⟩

private def s2Step380EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 81, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826, 789, 800, 842],770⟩

private def s2Step380EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80],769⟩

private def s2Step380EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 596, 595, 594, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811, 796, 802],771⟩

private def s2Step380FrontBank : WindowBank := ⟨s2Step380EntryFRow,s2Step380EntryGRow,s2Step380EntryFvRow,s2Step380EntryGvRow⟩

private def s2Step380Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 785, 768]

private def s2Step380Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 799, 803, 769]

private def s2Step380Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 81, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826, 789, 800, 842, 835, 770]

private def s2Step380Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 596, 595, 594, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811, 796, 802, 797, 810, 771]

private theorem s2Step380Counter_apart : Disjoint s2Step380HeadFvAfter.live s2Step380CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step380HeadFvAfter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step380Counter_borrowed : s2Step380HeadFvAfter.checkBorrow 4 s2Step380CounterWork=some s2Step380CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step380HeadFvAfter s2Step380CounterDuring s2Step380CounterWork.toFinset s2Step380Counter_bounded s2Step380Counter_apart rfl

private theorem s2Step380Counter_owned : (837::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step380HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step380HeadFvAfter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step380Counter_checked : compileHmrCounterStepLog s2Step380HeadFvAfter true 837 [772, 773, 774, 775, 776, 777] s2Step380CounterWork=some s2Step380CounterDuring := by
  have owned : ∀q∈837::[772, 773, 774, 775, 776, 777],q∈s2Step380HeadFvAfter.live := fun q hq => s2Step380Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step380Counter_borrowed

private def s2Step380EntryFAfter : Arena := s2Step380EntryFBefore

private theorem s2Step380EntryBank_incomingDistinct : ([s2Step380EntryFRow,s2Step380EntryGRow,s2Step380EntryFvRow,s2Step380EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step380EntryF_Incoming : rowsOwned s2Step380EntryFBefore [s2Step380EntryFRow,s2Step380EntryGRow,s2Step380EntryFvRow,s2Step380EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step380EntryFRow,s2Step380EntryGRow,s2Step380EntryFvRow,s2Step380EntryGvRow] 0 s2Step380EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step380EntryFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step380EntryBank_outgoingOwned : rowsOwned s2Step380EntryGvAfter [s2Step380EntryFOut,s2Step380EntryGOut,s2Step380EntryFvOut,s2Step380EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step380EntryGvAfter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step380EntryF_Outgoing : rowsOwned s2Step380EntryGvAfter [s2Step380EntryFOut,s2Step380EntryGOut,s2Step380EntryFvOut,s2Step380EntryGvOut] :=
  hmrRows_owned_drop s2Step380EntryGvAfter [s2Step380EntryFOut,s2Step380EntryGOut,s2Step380EntryFvOut,s2Step380EntryGvOut] 0 s2Step380EntryBank_outgoingOwned

private theorem s2Step380EntryF_distinct : (s2Step380EntryFRow.sign::s2Step380EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step380EntryF_owned : (s2Step380EntryFRow.sign::s2Step380EntryFRow.payload).toFinset⊆s2Step380EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step380EntryFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step380EntryF_reserved : s2Step380EntryFBefore.reserve s2Step380EntryFFresh.toFinset=some s2Step380EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step380EntryFFresh,arenaWires]
  · norm_num [s2Step380EntryFBefore,s2Step380EntryFFresh,arenaWires]
  · simp only [s2Step380EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step380EntryF_checked : planRowResizeLog s2Step380EntryFBefore s2Step380EntryFRow 82 s2Step380EntryFFresh=
    some (s2Step380EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593],768⟩,growRow 768 s2Step380EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step380EntryFBefore s2Step380EntryFAfter s2Step380EntryFRow 82 s2Step380EntryFFresh
    s2Step380EntryF_distinct s2Step380EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step380EntryF_reserved
  have rowEq : WindowRow.mk (s2Step380EntryFRow.payload++s2Step380EntryFFresh) s2Step380EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step380EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step380EntryFvAfter : Arena := s2Step380EntryGAfter

private def s2Step380EntryFvBefore : Arena := s2Step380EntryGAfter

private theorem s2Step380EntryFv_Incoming : rowsOwned s2Step380EntryFvBefore [s2Step380EntryFvRow,s2Step380EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step380EntryFRow,s2Step380EntryGRow,s2Step380EntryFvRow,s2Step380EntryGvRow] 2 s2Step380EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step380EntryFvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step380EntryFv_Outgoing : rowsOwned s2Step380EntryGvAfter [s2Step380EntryFvOut,s2Step380EntryGvOut] :=
  hmrRows_owned_drop s2Step380EntryGvAfter [s2Step380EntryFOut,s2Step380EntryGOut,s2Step380EntryFvOut,s2Step380EntryGvOut] 2 s2Step380EntryBank_outgoingOwned

private theorem s2Step380EntryFv_distinct : (s2Step380EntryFvRow.sign::s2Step380EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step380EntryFv_owned : (s2Step380EntryFvRow.sign::s2Step380EntryFvRow.payload).toFinset⊆s2Step380EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step380EntryFvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step380EntryFv_reserved : s2Step380EntryFvBefore.reserve s2Step380EntryFvFresh.toFinset=some s2Step380EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step380EntryFvFresh,arenaWires]
  · norm_num [s2Step380EntryFvBefore,s2Step380EntryGAfter,s2Step380EntryFvFresh,arenaWires]
  · simp only [s2Step380EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step380EntryFv_checked : planRowResizeLog s2Step380EntryFvBefore s2Step380EntryFvRow 206 s2Step380EntryFvFresh=
    some (s2Step380EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 81, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826, 789, 800, 842],770⟩,growRow 770 s2Step380EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step380EntryFvBefore s2Step380EntryFvAfter s2Step380EntryFvRow 206 s2Step380EntryFvFresh
    s2Step380EntryFv_distinct s2Step380EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step380EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step380EntryFvRow.payload++s2Step380EntryFvFresh) s2Step380EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 81, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826, 789, 800, 842],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step380EntryGBefore : Arena := s2Step380EntryFBefore

private theorem s2Step380EntryG_Incoming : rowsOwned s2Step380EntryGBefore [s2Step380EntryGRow,s2Step380EntryFvRow,s2Step380EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step380EntryFRow,s2Step380EntryGRow,s2Step380EntryFvRow,s2Step380EntryGvRow] 1 s2Step380EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step380EntryGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step380EntryG_Outgoing : rowsOwned s2Step380EntryGvAfter [s2Step380EntryGOut,s2Step380EntryFvOut,s2Step380EntryGvOut] :=
  hmrRows_owned_drop s2Step380EntryGvAfter [s2Step380EntryFOut,s2Step380EntryGOut,s2Step380EntryFvOut,s2Step380EntryGvOut] 1 s2Step380EntryBank_outgoingOwned

private theorem s2Step380EntryG_distinct : (s2Step380EntryGRow.sign::s2Step380EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step380EntryG_owned : (s2Step380EntryGRow.sign::s2Step380EntryGRow.payload).toFinset⊆s2Step380EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step380EntryGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step380EntryG_reserved : s2Step380EntryGBefore.reserve s2Step380EntryGFresh.toFinset=some s2Step380EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step380EntryGFresh,arenaWires]
  · norm_num [s2Step380EntryGBefore,s2Step380EntryFBefore,s2Step380EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step380EntryGAfter,s2Step380EntryGBefore,s2Step380EntryFBefore,s2Step380EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step380EntryG_checked : planRowResizeLog s2Step380EntryGBefore s2Step380EntryGRow 82 s2Step380EntryGFresh=
    some (s2Step380EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 799],769⟩,growRow 769 s2Step380EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step380EntryGBefore s2Step380EntryGAfter s2Step380EntryGRow 82 s2Step380EntryGFresh
    s2Step380EntryG_distinct s2Step380EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step380EntryG_reserved
  have rowEq : WindowRow.mk (s2Step380EntryGRow.payload++s2Step380EntryGFresh) s2Step380EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 799],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step380EntryGvBefore : Arena := s2Step380EntryGAfter

private theorem s2Step380EntryGv_Incoming : rowsOwned s2Step380EntryGvBefore [s2Step380EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step380EntryFRow,s2Step380EntryGRow,s2Step380EntryFvRow,s2Step380EntryGvRow] 3 s2Step380EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step380EntryGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step380EntryGv_Outgoing : rowsOwned s2Step380EntryGvAfter [s2Step380EntryGvOut] :=
  hmrRows_owned_drop s2Step380EntryGvAfter [s2Step380EntryFOut,s2Step380EntryGOut,s2Step380EntryFvOut,s2Step380EntryGvOut] 3 s2Step380EntryBank_outgoingOwned

private theorem s2Step380EntryGv_distinct : (s2Step380EntryGvRow.sign::s2Step380EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step380EntryGv_owned : (s2Step380EntryGvRow.sign::s2Step380EntryGvRow.payload).toFinset⊆s2Step380EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step380EntryGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step380EntryGv_reserved : s2Step380EntryGvBefore.reserve s2Step380EntryGvFresh.toFinset=some s2Step380EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step380EntryGvFresh,arenaWires]
  · norm_num [s2Step380EntryGvBefore,s2Step380EntryGAfter,s2Step380EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step380EntryGvAfter,s2Step380EntryGvBefore,s2Step380EntryGAfter,s2Step380EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step380EntryGv_checked : planRowResizeLog s2Step380EntryGvBefore s2Step380EntryGvRow 206 s2Step380EntryGvFresh=
    some (s2Step380EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 596, 595, 594, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811, 796, 802, 797],771⟩,growRow 771 s2Step380EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step380EntryGvBefore s2Step380EntryGvAfter s2Step380EntryGvRow 206 s2Step380EntryGvFresh
    s2Step380EntryGv_distinct s2Step380EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step380EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step380EntryGvRow.payload++s2Step380EntryGvFresh) s2Step380EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 596, 595, 594, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811, 796, 802, 797],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step380EntryBank_rows : planWindowRowsLog s2Step380EntryFBefore [(s2Step380EntryFRow,82),(s2Step380EntryGRow,82),(s2Step380EntryFvRow,206),(s2Step380EntryGvRow,206)] [s2Step380EntryFFresh,s2Step380EntryGFresh,s2Step380EntryFvFresh,s2Step380EntryGvFresh]=
    some (s2Step380EntryGvAfter,[s2Step380EntryFOut,s2Step380EntryGOut,s2Step380EntryFvOut,s2Step380EntryGvOut],(growRow 768 s2Step380EntryFFresh ++ (growRow 769 s2Step380EntryGFresh ++ (growRow 770 s2Step380EntryFvFresh ++ (growRow 771 s2Step380EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step380EntryGvAfter [] []=some (s2Step380EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step380EntryGvBefore s2Step380EntryGvAfter s2Step380EntryGvAfter
    s2Step380EntryGvRow s2Step380EntryGvOut 206 s2Step380EntryGvFresh [] [] []
    (growRow 771 s2Step380EntryGvFresh) ([]) s2Step380EntryGv_Incoming s2Step380EntryGv_checked h4 s2Step380EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step380EntryFvBefore s2Step380EntryFvAfter s2Step380EntryGvAfter
    s2Step380EntryFvRow s2Step380EntryFvOut 206 s2Step380EntryFvFresh [(s2Step380EntryGvRow,206)] [s2Step380EntryGvFresh] [s2Step380EntryGvOut]
    (growRow 770 s2Step380EntryFvFresh) ((growRow 771 s2Step380EntryGvFresh ++ [])) s2Step380EntryFv_Incoming s2Step380EntryFv_checked h3 s2Step380EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step380EntryGBefore s2Step380EntryGAfter s2Step380EntryGvAfter
    s2Step380EntryGRow s2Step380EntryGOut 82 s2Step380EntryGFresh [(s2Step380EntryFvRow,206),(s2Step380EntryGvRow,206)] [s2Step380EntryFvFresh,s2Step380EntryGvFresh] [s2Step380EntryFvOut,s2Step380EntryGvOut]
    (growRow 769 s2Step380EntryGFresh) ((growRow 770 s2Step380EntryFvFresh ++ (growRow 771 s2Step380EntryGvFresh ++ []))) s2Step380EntryG_Incoming s2Step380EntryG_checked h2 s2Step380EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step380EntryFBefore s2Step380EntryFAfter s2Step380EntryGvAfter
    s2Step380EntryFRow s2Step380EntryFOut 82 s2Step380EntryFFresh [(s2Step380EntryGRow,82),(s2Step380EntryFvRow,206),(s2Step380EntryGvRow,206)] [s2Step380EntryGFresh,s2Step380EntryFvFresh,s2Step380EntryGvFresh] [s2Step380EntryGOut,s2Step380EntryFvOut,s2Step380EntryGvOut]
    (growRow 768 s2Step380EntryFFresh) ((growRow 769 s2Step380EntryGFresh ++ (growRow 770 s2Step380EntryFvFresh ++ (growRow 771 s2Step380EntryGvFresh ++ [])))) s2Step380EntryF_Incoming s2Step380EntryF_checked h1 s2Step380EntryF_Outgoing
  exact h0

private theorem s2Step380EntryBank_checked : compileHmrBankResizeLog .entry s2Step380EntryFBefore ⟨s2Step380EntryFRow,s2Step380EntryGRow,s2Step380EntryFvRow,s2Step380EntryGvRow⟩ ⟨82,82,206,206⟩ [s2Step380EntryFFresh,s2Step380EntryGFresh,s2Step380EntryFvFresh,s2Step380EntryGvFresh]=
    some (s2Step380EntryGvAfter,⟨s2Step380EntryFOut,s2Step380EntryGOut,s2Step380EntryFvOut,s2Step380EntryGvOut⟩,(growRow 768 s2Step380EntryFFresh ++ (growRow 769 s2Step380EntryGFresh ++ (growRow 770 s2Step380EntryFvFresh ++ (growRow 771 s2Step380EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step380EntryBank_rows]
  rfl

private def s2Step380ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<593) ∨ (594≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step380ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step380ExitFBefore : Arena := s2Step380ExitGAfter

private def s2Step380ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 785],768⟩

private def s2Step380ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 81, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826, 789, 800, 842, 835],770⟩

private def s2Step380ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 799, 803],769⟩

private def s2Step380ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 596, 595, 594, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811, 796, 802, 797, 810],771⟩

private theorem s2Step380ExitBank_incomingDistinct : ([s2Step380ExitGRow,s2Step380ExitFRow,s2Step380ExitFvRow,s2Step380ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step380ExitF_Incoming : rowsOwned s2Step380ExitFBefore [s2Step380ExitFRow,s2Step380ExitFvRow,s2Step380ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step380ExitGRow,s2Step380ExitFRow,s2Step380ExitFvRow,s2Step380ExitGvRow] 1 s2Step380ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step380ExitFBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step380ExitBank_outgoingOwned : rowsOwned s2Step380ExitGvAfter [s2Step380ExitGOut,s2Step380ExitFOut,s2Step380ExitFvOut,s2Step380ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step380ExitGvAfter (fun q => (0≤q ∧ q<593) ∨ (594≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step380ExitF_Outgoing : rowsOwned s2Step380ExitGvAfter [s2Step380ExitFOut,s2Step380ExitFvOut,s2Step380ExitGvOut] :=
  hmrRows_owned_drop s2Step380ExitGvAfter [s2Step380ExitGOut,s2Step380ExitFOut,s2Step380ExitFvOut,s2Step380ExitGvOut] 1 s2Step380ExitBank_outgoingOwned

private theorem s2Step380ExitF_distinct : (s2Step380ExitFRow.sign::s2Step380ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step380ExitF_owned : (s2Step380ExitFRow.sign::s2Step380ExitFRow.payload).toFinset⊆s2Step380ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step380ExitFBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step380ExitF_retired : s2Step380ExitFBefore.retireSet s2Step380ExitFExtra.toFinset=s2Step380ExitFAfter := by
  unfold Arena.retireSet s2Step380ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step380ExitFBefore,s2Step380ExitGAfter,s2Step380ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step380ExitF_checked : planRowResizeLog s2Step380ExitFBefore s2Step380ExitFRow 81 []=
    some (s2Step380ExitFAfter,s2Step380ExitFOut,shrinkRow 768 s2Step380ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step380ExitFBefore s2Step380ExitFRow 81 s2Step380ExitF_distinct s2Step380ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step380ExitFRow.payload.take 81) s2Step380ExitFRow.sign=s2Step380ExitFOut := by decide +kernel
  have hi : s2Step380ExitFRow.payload.drop 81=s2Step380ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step380ExitF_retired] at result
  exact result

private def s2Step380ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<593) ∨ (594≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step380ExitFvBefore : Arena := s2Step380ExitFAfter

private theorem s2Step380ExitFv_Incoming : rowsOwned s2Step380ExitFvBefore [s2Step380ExitFvRow,s2Step380ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step380ExitGRow,s2Step380ExitFRow,s2Step380ExitFvRow,s2Step380ExitGvRow] 2 s2Step380ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step380ExitFvBefore (fun q => (0≤q ∧ q<593) ∨ (594≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step380ExitFv_Outgoing : rowsOwned s2Step380ExitGvAfter [s2Step380ExitFvOut,s2Step380ExitGvOut] :=
  hmrRows_owned_drop s2Step380ExitGvAfter [s2Step380ExitGOut,s2Step380ExitFOut,s2Step380ExitFvOut,s2Step380ExitGvOut] 2 s2Step380ExitBank_outgoingOwned

private theorem s2Step380ExitFv_distinct : (s2Step380ExitFvRow.sign::s2Step380ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step380ExitFv_owned : (s2Step380ExitFvRow.sign::s2Step380ExitFvRow.payload).toFinset⊆s2Step380ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step380ExitFvBefore (fun q => (0≤q ∧ q<593) ∨ (594≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step380ExitFv_retired : s2Step380ExitFvBefore.retireSet s2Step380ExitFvExtra.toFinset=s2Step380ExitFvAfter := by
  unfold Arena.retireSet s2Step380ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step380ExitFvBefore,s2Step380ExitFAfter,s2Step380ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step380ExitFv_checked : planRowResizeLog s2Step380ExitFvBefore s2Step380ExitFvRow 206 []=
    some (s2Step380ExitFvAfter,s2Step380ExitFvOut,shrinkRow 770 s2Step380ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step380ExitFvBefore s2Step380ExitFvRow 206 s2Step380ExitFv_distinct s2Step380ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step380ExitFvRow.payload.take 206) s2Step380ExitFvRow.sign=s2Step380ExitFvOut := by decide +kernel
  have hi : s2Step380ExitFvRow.payload.drop 206=s2Step380ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step380ExitFv_retired] at result
  exact result

private def s2Step380ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private theorem s2Step380ExitG_Incoming : rowsOwned s2Step380ExitGBefore [s2Step380ExitGRow,s2Step380ExitFRow,s2Step380ExitFvRow,s2Step380ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step380ExitGRow,s2Step380ExitFRow,s2Step380ExitFvRow,s2Step380ExitGvRow] 0 s2Step380ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step380ExitGBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step380ExitG_Outgoing : rowsOwned s2Step380ExitGvAfter [s2Step380ExitGOut,s2Step380ExitFOut,s2Step380ExitFvOut,s2Step380ExitGvOut] :=
  hmrRows_owned_drop s2Step380ExitGvAfter [s2Step380ExitGOut,s2Step380ExitFOut,s2Step380ExitFvOut,s2Step380ExitGvOut] 0 s2Step380ExitBank_outgoingOwned

private theorem s2Step380ExitG_distinct : (s2Step380ExitGRow.sign::s2Step380ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step380ExitG_owned : (s2Step380ExitGRow.sign::s2Step380ExitGRow.payload).toFinset⊆s2Step380ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step380ExitGBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step380ExitG_retired : s2Step380ExitGBefore.retireSet s2Step380ExitGExtra.toFinset=s2Step380ExitGAfter := by
  unfold Arena.retireSet s2Step380ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step380ExitGBefore,s2Step380ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step380ExitG_checked : planRowResizeLog s2Step380ExitGBefore s2Step380ExitGRow 81 []=
    some (s2Step380ExitGAfter,s2Step380ExitGOut,shrinkRow 769 s2Step380ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step380ExitGBefore s2Step380ExitGRow 81 s2Step380ExitG_distinct s2Step380ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step380ExitGRow.payload.take 81) s2Step380ExitGRow.sign=s2Step380ExitGOut := by decide +kernel
  have hi : s2Step380ExitGRow.payload.drop 81=s2Step380ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step380ExitG_retired] at result
  exact result

private def s2Step380ExitGvBefore : Arena := s2Step380ExitFvAfter

private theorem s2Step380ExitGv_Incoming : rowsOwned s2Step380ExitGvBefore [s2Step380ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step380ExitGRow,s2Step380ExitFRow,s2Step380ExitFvRow,s2Step380ExitGvRow] 3 s2Step380ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step380ExitGvBefore (fun q => (0≤q ∧ q<593) ∨ (594≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step380ExitGv_Outgoing : rowsOwned s2Step380ExitGvAfter [s2Step380ExitGvOut] :=
  hmrRows_owned_drop s2Step380ExitGvAfter [s2Step380ExitGOut,s2Step380ExitFOut,s2Step380ExitFvOut,s2Step380ExitGvOut] 3 s2Step380ExitBank_outgoingOwned

private theorem s2Step380ExitGv_distinct : (s2Step380ExitGvRow.sign::s2Step380ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step380ExitGv_owned : (s2Step380ExitGvRow.sign::s2Step380ExitGvRow.payload).toFinset⊆s2Step380ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step380ExitGvBefore (fun q => (0≤q ∧ q<593) ∨ (594≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step380ExitGv_retired : s2Step380ExitGvBefore.retireSet s2Step380ExitGvExtra.toFinset=s2Step380ExitGvAfter := by
  unfold Arena.retireSet s2Step380ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step380ExitGvBefore,s2Step380ExitFvAfter,s2Step380ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step380ExitGv_checked : planRowResizeLog s2Step380ExitGvBefore s2Step380ExitGvRow 206 []=
    some (s2Step380ExitGvAfter,s2Step380ExitGvOut,shrinkRow 771 s2Step380ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step380ExitGvBefore s2Step380ExitGvRow 206 s2Step380ExitGv_distinct s2Step380ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step380ExitGvRow.payload.take 206) s2Step380ExitGvRow.sign=s2Step380ExitGvOut := by decide +kernel
  have hi : s2Step380ExitGvRow.payload.drop 206=s2Step380ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step380ExitGv_retired] at result
  exact result

private theorem s2Step380ExitBank_rows : planWindowRowsLog s2Step380ExitGBefore [(s2Step380ExitGRow,81),(s2Step380ExitFRow,81),(s2Step380ExitFvRow,206),(s2Step380ExitGvRow,206)] [[],[],[],[]]=
    some (s2Step380ExitGvAfter,[s2Step380ExitGOut,s2Step380ExitFOut,s2Step380ExitFvOut,s2Step380ExitGvOut],(shrinkRow 769 s2Step380ExitGExtra ++ (shrinkRow 768 s2Step380ExitFExtra ++ (shrinkRow 770 s2Step380ExitFvExtra ++ (shrinkRow 771 s2Step380ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step380ExitGvAfter [] []=some (s2Step380ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step380ExitGvBefore s2Step380ExitGvAfter s2Step380ExitGvAfter
    s2Step380ExitGvRow s2Step380ExitGvOut 206 [] [] [] []
    (shrinkRow 771 s2Step380ExitGvExtra) ([]) s2Step380ExitGv_Incoming s2Step380ExitGv_checked h4 s2Step380ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step380ExitFvBefore s2Step380ExitFvAfter s2Step380ExitGvAfter
    s2Step380ExitFvRow s2Step380ExitFvOut 206 [] [(s2Step380ExitGvRow,206)] [[]] [s2Step380ExitGvOut]
    (shrinkRow 770 s2Step380ExitFvExtra) ((shrinkRow 771 s2Step380ExitGvExtra ++ [])) s2Step380ExitFv_Incoming s2Step380ExitFv_checked h3 s2Step380ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step380ExitFBefore s2Step380ExitFAfter s2Step380ExitGvAfter
    s2Step380ExitFRow s2Step380ExitFOut 81 [] [(s2Step380ExitFvRow,206),(s2Step380ExitGvRow,206)] [[],[]] [s2Step380ExitFvOut,s2Step380ExitGvOut]
    (shrinkRow 768 s2Step380ExitFExtra) ((shrinkRow 770 s2Step380ExitFvExtra ++ (shrinkRow 771 s2Step380ExitGvExtra ++ []))) s2Step380ExitF_Incoming s2Step380ExitF_checked h2 s2Step380ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step380ExitGBefore s2Step380ExitGAfter s2Step380ExitGvAfter
    s2Step380ExitGRow s2Step380ExitGOut 81 [] [(s2Step380ExitFRow,81),(s2Step380ExitFvRow,206),(s2Step380ExitGvRow,206)] [[],[],[]] [s2Step380ExitFOut,s2Step380ExitFvOut,s2Step380ExitGvOut]
    (shrinkRow 769 s2Step380ExitGExtra) ((shrinkRow 768 s2Step380ExitFExtra ++ (shrinkRow 770 s2Step380ExitFvExtra ++ (shrinkRow 771 s2Step380ExitGvExtra ++ [])))) s2Step380ExitG_Incoming s2Step380ExitG_checked h1 s2Step380ExitG_Outgoing
  exact h0

private theorem s2Step380ExitBank_checked : compileHmrBankResizeLog .exit s2Step380ExitGBefore ⟨s2Step380ExitFRow,s2Step380ExitGRow,s2Step380ExitFvRow,s2Step380ExitGvRow⟩ ⟨81,81,206,206⟩ [[],[],[],[]]=
    some (s2Step380ExitGvAfter,⟨s2Step380ExitFOut,s2Step380ExitGOut,s2Step380ExitFvOut,s2Step380ExitGvOut⟩,(shrinkRow 769 s2Step380ExitGExtra ++ (shrinkRow 768 s2Step380ExitFExtra ++ (shrinkRow 770 s2Step380ExitFvExtra ++ (shrinkRow 771 s2Step380ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step380ExitBank_rows]
  rfl

private theorem s2Step380Add0_apart : Disjoint s2Step380Add0Arena.live s2Step380Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step380Add0Arena (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step380Add0_card : s2Step380Add0Arena.live.card=910 := by
  decide +kernel

private theorem s2Step380Add0_borrowed : s2Step380Add0Arena.checkBorrow (hmrHybridCount s2Step380Add0Arena s2Step380Add0B.length) s2Step380Add0Work=some s2Step380Add0During := by
  have len : s2Step380Add0Work.length=hmrHybridCount s2Step380Add0Arena s2Step380Add0B.length := by
    rw [hmrHybridCount,s2Step380Add0_card]
    decide +kernel
  have nd : s2Step380Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step380Add0Arena s2Step380Add0During s2Step380Add0Work.toFinset s2Step380Add0_bounded s2Step380Add0_apart rfl

private theorem s2Step380Add0_distinct : (793::824::825::(s2Step380Add0A++s2Step380Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step380Add0_owned : (793::824::825::(s2Step380Add0A++s2Step380Add0B)).toFinset⊆s2Step380Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step380Add0Arena (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step380Add0_checked : compileHmrHybridCinLog s2Step380Add0Arena 824 793 825 s2Step380Add0A s2Step380Add0B s2Step380Add0Work=some s2Step380Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step380Add0Arena s2Step380Add0During 824 793 825 s2Step380Add0A s2Step380Add0B s2Step380Add0Work
    (by decide +kernel) (by decide +kernel) s2Step380Add0_distinct
    (fun q hq => s2Step380Add0_owned (List.mem_toFinset.mpr hq)) s2Step380Add0_borrowed

private theorem s2Step380Add1_apart : Disjoint s2Step380Add1Arena.live s2Step380Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step380Add1Arena (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step380Add1_card : s2Step380Add1Arena.live.card=910 := by
  decide +kernel

private theorem s2Step380Add1_borrowed : s2Step380Add1Arena.checkBorrow (hmrHybridCount s2Step380Add1Arena s2Step380Add1B.length) s2Step380Add1Work=some s2Step380Add1During := by
  have len : s2Step380Add1Work.length=hmrHybridCount s2Step380Add1Arena s2Step380Add1B.length := by
    rw [hmrHybridCount,s2Step380Add1_card]
    decide +kernel
  have nd : s2Step380Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step380Add1Arena s2Step380Add1During s2Step380Add1Work.toFinset s2Step380Add1_bounded s2Step380Add1_apart rfl

private theorem s2Step380Add1_distinct : (793::824::825::(s2Step380Add1A++s2Step380Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step380Add1_owned : (793::824::825::(s2Step380Add1A++s2Step380Add1B)).toFinset⊆s2Step380Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step380Add1Arena (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step380Add1_checked : compileHmrHybridCinLog s2Step380Add1Arena 824 793 825 s2Step380Add1A s2Step380Add1B s2Step380Add1Work=some s2Step380Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step380Add1Arena s2Step380Add1During 824 793 825 s2Step380Add1A s2Step380Add1B s2Step380Add1Work
    (by decide +kernel) (by decide +kernel) s2Step380Add1_distinct
    (fun q hq => s2Step380Add1_owned (List.mem_toFinset.mpr hq)) s2Step380Add1_borrowed

private theorem s2Step380F4_apart : Disjoint (s2Step380Add0A++s2Step380Add0B).toFinset (s2Step380Add1A++s2Step380Add1B).toFinset := by
  have nd : ((s2Step380Add0A++s2Step380Add0B)++(s2Step380Add1A++s2Step380Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step380F4_carry : s2Step380F4FlagArena.checkBorrow 1 [825]=some s2Step380Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step380F4FlagArena,s2Step380HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step380F4FlagArena,s2Step380HeadFvAfter,s2Step380Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step380F4_distinct : (837::824::793::825::((s2Step380Add0A++s2Step380Add1A)++(s2Step380Add0B++s2Step380Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step380F4_flag : s2Step380HeadFvAfter.checkBorrow 1 [793]=some s2Step380F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step380HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step380F4_owned : (837::824::((s2Step380Add0A++s2Step380Add1A)++(s2Step380Add0B++s2Step380Add1B))).toFinset⊆s2Step380HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step380HeadFvAfter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step380F4_checked : compileHmrHybridF4Log s2Step380HeadFvAfter 837 824 s2Step380Add0A s2Step380Add0B s2Step380Add1A s2Step380Add1B [793] [825] s2Step380Add0Work s2Step380Add1Work=some s2Step380F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step380HeadFvAfter s2Step380F4FlagArena s2Step380Add0Arena s2Step380Add0During s2Step380Add1During 837 824
    s2Step380Add0A s2Step380Add0B s2Step380Add1A s2Step380Add1B [793] [825] s2Step380Add0Work s2Step380Add1Work
    (fun q hq => s2Step380F4_owned (List.mem_toFinset.mpr hq)) s2Step380F4_flag s2Step380F4_carry
    s2Step380F4_distinct s2Step380F4_apart s2Step380Add0_checked s2Step380Add1_checked

private theorem s2Step380Front_branch : s2Step380FrontSigmaArena.checkBorrow 1 [824]=some s2Step380HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step380FrontSigmaArena,s2Step380EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step380FrontSigmaArena,s2Step380EntryGvAfter,s2Step380HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step380Front_entry : HmrFrontEntryValid s2Step380EntryFBefore s2Step380FrontBank 82 206 ⟨81,81,206,206⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step380FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step380EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step380EntryFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step380FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step380Front_sigma : s2Step380EntryGvAfter.checkBorrow 1 [837]=some s2Step380FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step380EntryGvAfter,arenaWires]
  · rfl

private def s2Step380HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<810) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step380HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<810) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step380HeadFBefore : Arena := s2Step380HeadGAfter

private def s2Step380HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593],768⟩

private def s2Step380HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 81, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826, 789, 800, 842],770⟩

private def s2Step380HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 799],769⟩

private def s2Step380HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 596, 595, 594, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811, 796, 802, 797],771⟩

private theorem s2Step380HeadBank_incomingDistinct : ([s2Step380HeadGRow,s2Step380HeadFRow,s2Step380HeadGvRow,s2Step380HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step380HeadF_Incoming : rowsOwned s2Step380HeadFBefore [s2Step380HeadFRow,s2Step380HeadGvRow,s2Step380HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step380HeadGRow,s2Step380HeadFRow,s2Step380HeadGvRow,s2Step380HeadFvRow] 1 s2Step380HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step380HeadFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<810) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step380HeadBank_outgoingOwned : rowsOwned s2Step380HeadFvAfter [s2Step380HeadGOut,s2Step380HeadFOut,s2Step380HeadGvOut,s2Step380HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step380HeadFvAfter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step380HeadF_Outgoing : rowsOwned s2Step380HeadFvAfter [s2Step380HeadFOut,s2Step380HeadGvOut,s2Step380HeadFvOut] :=
  hmrRows_owned_drop s2Step380HeadFvAfter [s2Step380HeadGOut,s2Step380HeadFOut,s2Step380HeadGvOut,s2Step380HeadFvOut] 1 s2Step380HeadBank_outgoingOwned

private theorem s2Step380HeadF_distinct : (s2Step380HeadFRow.sign::s2Step380HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step380HeadF_owned : (s2Step380HeadFRow.sign::s2Step380HeadFRow.payload).toFinset⊆s2Step380HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step380HeadFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<810) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step380HeadF_reserved : s2Step380HeadFBefore.reserve s2Step380HeadFFresh.toFinset=some s2Step380HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step380HeadFFresh,arenaWires]
  · norm_num [s2Step380HeadFBefore,s2Step380HeadGAfter,s2Step380HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step380HeadFAfter,s2Step380HeadFBefore,s2Step380HeadGAfter,s2Step380HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step380HeadF_checked : planRowResizeLog s2Step380HeadFBefore s2Step380HeadFRow 83 s2Step380HeadFFresh=
    some (s2Step380HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 785],768⟩,growRow 768 s2Step380HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step380HeadFBefore s2Step380HeadFAfter s2Step380HeadFRow 83 s2Step380HeadFFresh
    s2Step380HeadF_distinct s2Step380HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step380HeadF_reserved
  have rowEq : WindowRow.mk (s2Step380HeadFRow.payload++s2Step380HeadFFresh) s2Step380HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 785],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step380HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step380HeadFvBefore : Arena := s2Step380HeadGvAfter

private theorem s2Step380HeadFv_Incoming : rowsOwned s2Step380HeadFvBefore [s2Step380HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step380HeadGRow,s2Step380HeadFRow,s2Step380HeadGvRow,s2Step380HeadFvRow] 3 s2Step380HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step380HeadFvBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step380HeadFv_Outgoing : rowsOwned s2Step380HeadFvAfter [s2Step380HeadFvOut] :=
  hmrRows_owned_drop s2Step380HeadFvAfter [s2Step380HeadGOut,s2Step380HeadFOut,s2Step380HeadGvOut,s2Step380HeadFvOut] 3 s2Step380HeadBank_outgoingOwned

private theorem s2Step380HeadFv_distinct : (s2Step380HeadFvRow.sign::s2Step380HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step380HeadFv_owned : (s2Step380HeadFvRow.sign::s2Step380HeadFvRow.payload).toFinset⊆s2Step380HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step380HeadFvBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step380HeadFv_reserved : s2Step380HeadFvBefore.reserve s2Step380HeadFvFresh.toFinset=some s2Step380HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step380HeadFvFresh,arenaWires]
  · norm_num [s2Step380HeadFvBefore,s2Step380HeadGvAfter,s2Step380HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step380HeadFvAfter,s2Step380HeadFvBefore,s2Step380HeadGvAfter,s2Step380HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step380HeadFv_checked : planRowResizeLog s2Step380HeadFvBefore s2Step380HeadFvRow 207 s2Step380HeadFvFresh=
    some (s2Step380HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 81, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826, 789, 800, 842, 835],770⟩,growRow 770 s2Step380HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step380HeadFvBefore s2Step380HeadFvAfter s2Step380HeadFvRow 207 s2Step380HeadFvFresh
    s2Step380HeadFv_distinct s2Step380HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step380HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step380HeadFvRow.payload++s2Step380HeadFvFresh) s2Step380HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 81, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826, 789, 800, 842, 835],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step380HeadG_Incoming : rowsOwned s2Step380HeadGBefore [s2Step380HeadGRow,s2Step380HeadFRow,s2Step380HeadGvRow,s2Step380HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step380HeadGRow,s2Step380HeadFRow,s2Step380HeadGvRow,s2Step380HeadFvRow] 0 s2Step380HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step380HeadGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step380HeadG_Outgoing : rowsOwned s2Step380HeadFvAfter [s2Step380HeadGOut,s2Step380HeadFOut,s2Step380HeadGvOut,s2Step380HeadFvOut] :=
  hmrRows_owned_drop s2Step380HeadFvAfter [s2Step380HeadGOut,s2Step380HeadFOut,s2Step380HeadGvOut,s2Step380HeadFvOut] 0 s2Step380HeadBank_outgoingOwned

private theorem s2Step380HeadG_distinct : (s2Step380HeadGRow.sign::s2Step380HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step380HeadG_owned : (s2Step380HeadGRow.sign::s2Step380HeadGRow.payload).toFinset⊆s2Step380HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step380HeadGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step380HeadG_reserved : s2Step380HeadGBefore.reserve s2Step380HeadGFresh.toFinset=some s2Step380HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step380HeadGFresh,arenaWires]
  · norm_num [s2Step380HeadGBefore,s2Step380HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step380HeadGAfter,s2Step380HeadGBefore,s2Step380HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step380HeadG_checked : planRowResizeLog s2Step380HeadGBefore s2Step380HeadGRow 83 s2Step380HeadGFresh=
    some (s2Step380HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 799, 803],769⟩,growRow 769 s2Step380HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step380HeadGBefore s2Step380HeadGAfter s2Step380HeadGRow 83 s2Step380HeadGFresh
    s2Step380HeadG_distinct s2Step380HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step380HeadG_reserved
  have rowEq : WindowRow.mk (s2Step380HeadGRow.payload++s2Step380HeadGFresh) s2Step380HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 799, 803],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step380HeadGvBefore : Arena := s2Step380HeadFAfter

private theorem s2Step380HeadGv_Incoming : rowsOwned s2Step380HeadGvBefore [s2Step380HeadGvRow,s2Step380HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step380HeadGRow,s2Step380HeadFRow,s2Step380HeadGvRow,s2Step380HeadFvRow] 2 s2Step380HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step380HeadGvBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<810) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step380HeadGv_Outgoing : rowsOwned s2Step380HeadFvAfter [s2Step380HeadGvOut,s2Step380HeadFvOut] :=
  hmrRows_owned_drop s2Step380HeadFvAfter [s2Step380HeadGOut,s2Step380HeadFOut,s2Step380HeadGvOut,s2Step380HeadFvOut] 2 s2Step380HeadBank_outgoingOwned

private theorem s2Step380HeadGv_distinct : (s2Step380HeadGvRow.sign::s2Step380HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step380HeadGv_owned : (s2Step380HeadGvRow.sign::s2Step380HeadGvRow.payload).toFinset⊆s2Step380HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step380HeadGvBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<810) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step380HeadGv_reserved : s2Step380HeadGvBefore.reserve s2Step380HeadGvFresh.toFinset=some s2Step380HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step380HeadGvFresh,arenaWires]
  · norm_num [s2Step380HeadGvBefore,s2Step380HeadFAfter,s2Step380HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step380HeadGvAfter,s2Step380HeadGvBefore,s2Step380HeadFAfter,s2Step380HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step380HeadGv_checked : planRowResizeLog s2Step380HeadGvBefore s2Step380HeadGvRow 207 s2Step380HeadGvFresh=
    some (s2Step380HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 596, 595, 594, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811, 796, 802, 797, 810],771⟩,growRow 771 s2Step380HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step380HeadGvBefore s2Step380HeadGvAfter s2Step380HeadGvRow 207 s2Step380HeadGvFresh
    s2Step380HeadGv_distinct s2Step380HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step380HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step380HeadGvRow.payload++s2Step380HeadGvFresh) s2Step380HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 596, 595, 594, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811, 796, 802, 797, 810],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step380HeadBank_rows : planWindowRowsLog s2Step380HeadGBefore [(s2Step380HeadGRow,83),(s2Step380HeadFRow,83),(s2Step380HeadGvRow,207),(s2Step380HeadFvRow,207)] [s2Step380HeadGFresh,s2Step380HeadFFresh,s2Step380HeadGvFresh,s2Step380HeadFvFresh]=
    some (s2Step380HeadFvAfter,[s2Step380HeadGOut,s2Step380HeadFOut,s2Step380HeadGvOut,s2Step380HeadFvOut],(growRow 769 s2Step380HeadGFresh ++ (growRow 768 s2Step380HeadFFresh ++ (growRow 771 s2Step380HeadGvFresh ++ (growRow 770 s2Step380HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step380HeadFvAfter [] []=some (s2Step380HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step380HeadFvBefore s2Step380HeadFvAfter s2Step380HeadFvAfter
    s2Step380HeadFvRow s2Step380HeadFvOut 207 s2Step380HeadFvFresh [] [] []
    (growRow 770 s2Step380HeadFvFresh) ([]) s2Step380HeadFv_Incoming s2Step380HeadFv_checked h4 s2Step380HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step380HeadGvBefore s2Step380HeadGvAfter s2Step380HeadFvAfter
    s2Step380HeadGvRow s2Step380HeadGvOut 207 s2Step380HeadGvFresh [(s2Step380HeadFvRow,207)] [s2Step380HeadFvFresh] [s2Step380HeadFvOut]
    (growRow 771 s2Step380HeadGvFresh) ((growRow 770 s2Step380HeadFvFresh ++ [])) s2Step380HeadGv_Incoming s2Step380HeadGv_checked h3 s2Step380HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step380HeadFBefore s2Step380HeadFAfter s2Step380HeadFvAfter
    s2Step380HeadFRow s2Step380HeadFOut 83 s2Step380HeadFFresh [(s2Step380HeadGvRow,207),(s2Step380HeadFvRow,207)] [s2Step380HeadGvFresh,s2Step380HeadFvFresh] [s2Step380HeadGvOut,s2Step380HeadFvOut]
    (growRow 768 s2Step380HeadFFresh) ((growRow 771 s2Step380HeadGvFresh ++ (growRow 770 s2Step380HeadFvFresh ++ []))) s2Step380HeadF_Incoming s2Step380HeadF_checked h2 s2Step380HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step380HeadGBefore s2Step380HeadGAfter s2Step380HeadFvAfter
    s2Step380HeadGRow s2Step380HeadGOut 83 s2Step380HeadGFresh [(s2Step380HeadFRow,83),(s2Step380HeadGvRow,207),(s2Step380HeadFvRow,207)] [s2Step380HeadFFresh,s2Step380HeadGvFresh,s2Step380HeadFvFresh] [s2Step380HeadFOut,s2Step380HeadGvOut,s2Step380HeadFvOut]
    (growRow 769 s2Step380HeadGFresh) ((growRow 768 s2Step380HeadFFresh ++ (growRow 771 s2Step380HeadGvFresh ++ (growRow 770 s2Step380HeadFvFresh ++ [])))) s2Step380HeadG_Incoming s2Step380HeadG_checked h1 s2Step380HeadG_Outgoing
  exact h0

private theorem s2Step380HeadBank_checked : compileHmrBankResizeLog .headroom s2Step380HeadGBefore ⟨s2Step380HeadFRow,s2Step380HeadGRow,s2Step380HeadFvRow,s2Step380HeadGvRow⟩ ⟨83,83,207,207⟩ [s2Step380HeadGFresh,s2Step380HeadFFresh,s2Step380HeadGvFresh,s2Step380HeadFvFresh]=
    some (s2Step380HeadFvAfter,⟨s2Step380HeadFOut,s2Step380HeadGOut,s2Step380HeadFvOut,s2Step380HeadGvOut⟩,(growRow 769 s2Step380HeadGFresh ++ (growRow 768 s2Step380HeadFFresh ++ (growRow 771 s2Step380HeadGvFresh ++ (growRow 770 s2Step380HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step380HeadBank_rows]
  rfl

private theorem s2Step380Front_checked : compileHmrSourceFrontLog s2Step380EntryFBefore s2Step380FrontBank 82 206 ⟨81,81,206,206⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step380FrontLog=some s2Step380FrontPlan := by
  have pairEq : s2Step380FrontPair=⟨s2Step380HeadFRow,s2Step380HeadGRow,s2Step380HeadFvRow,s2Step380HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step380FrontHead=⟨s2Step380ExitFRow,s2Step380ExitGRow,s2Step380ExitFvRow,s2Step380ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step380Add0A=s2Step380FrontHead.f.wires := by decide +kernel
  have gEq : s2Step380Add0B=s2Step380FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step380Add1A=s2Step380FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step380Add1B=s2Step380FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step380EntryFBefore s2Step380FrontBank 82 206 ⟨81,81,206,206⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step380FrontLog s2Step380FrontPlan
  · exact s2Step380Front_entry
  · exact s2Step380EntryBank_checked
  · exact s2Step380Front_sigma
  · rfl
  · exact s2Step380Front_branch
  · rfl
  · simpa only [s2Step380FrontPlan,pairEq] using s2Step380HeadBank_checked
  · simpa only [s2Step380FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step380F4_checked
  · exact s2Step380Counter_checked
  · rfl
  · simpa only [s2Step380FrontPlan,headEq] using s2Step380ExitBank_checked

private theorem s2Step380Complete_explicit_checked : compileHmrEarlyStepLog s2Step380EntryFBefore s2Step380FrontBank 82 206 ⟨81,81,206,206⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step380CompleteLog=some s2Step380CompletePlan := by
  let Q := s2Step380EarlyControlPlan
  have hq := s2Step380EarlyControl_plan_checked
  have fv1 : s2Step380CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step380CompleteOut.fv.payload[2]?.getD s2Step380CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step380CompleteOut.fv.payload[3]?.getD s2Step380CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step380CompleteOut.fv.payload[4]?.getD s2Step380CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step380EntryFBefore s2Step380EarlyControlArena s2Step380FrontBank 82 206 ⟨81,81,206,206⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step380CompleteLog s2Step380FrontPlan Q
    s2Step380Front_checked s2Step380Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step380Complete_owned s2Step380Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step380EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 837 s2Step380CompleteOut.fv.second (s2Step380CompleteOut.fv.payload[2]?.getD s2Step380CompleteOut.fv.sign) (s2Step380CompleteOut.fv.payload[3]?.getD s2Step380CompleteOut.fv.sign) (s2Step380CompleteOut.fv.payload[4]?.getD s2Step380CompleteOut.fv.sign) 824 60 s2Step380EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep380Arena : Arena := s2Step380EntryFBefore
def s2PrivateStep380Bank : WindowBank := s2Step380FrontBank
def s2PrivateStep380Spec : HmrSourceWalkStepLog := ⟨82,206,⟨81,81,206,206⟩,60,.early s2Step380CompleteLog⟩
def s2PrivateStep380Plan : HmrSourceStepPlan := .early s2Step380CompletePlan
theorem s2PrivateStep380_source : s2PrivateStep380Spec=s2ObservedLogs368[12] := rfl
theorem s2PrivateStep380_checked : compileHmrSourceStepLog s2PrivateStep380Arena s2PrivateStep380Bank
    s2PrivateStep380Spec.fgWidth s2PrivateStep380Spec.vWidth s2PrivateStep380Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]
    6 498 380 s2PrivateStep380Spec.need none s2PrivateStep380Spec.log=some s2PrivateStep380Plan := by
  change compileHmrSourceStepLog s2Step380EntryFBefore s2Step380FrontBank 82 206 ⟨81,81,206,206⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 6 498 380 60 none (.early s2Step380CompleteLog)=some (.early s2Step380CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 380<498)]
  rw [s2Step380Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
