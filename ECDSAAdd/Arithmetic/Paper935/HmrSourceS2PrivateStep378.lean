import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep376
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

private def s2Step378CompleteMoves : List (Wire × Wire) := []

private def s2Step378EarlyControlLog : HmrEarlyControlLog := ⟨[785, 803, 824, 842, 810],[835],[793],[825, 827, 844, 907, 913, 914],[]⟩

private def s2Step378FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[842], [824], [785], [803]],[[], [], [], []]⟩,[799],[797],[810],[835],[793, 825, 827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[793, 825, 827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[810, 835, 793, 825]⟩

private def s2Step378CompleteLog : HmrEarlyStepLog := ⟨s2Step378FrontLog,s2Step378CompleteMoves,s2Step378EarlyControlLog⟩

private def s2Step378ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593],768⟩

private def s2Step378ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826, 789, 800],770⟩

private def s2Step378ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81],769⟩

private def s2Step378ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 596, 595, 594, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811, 796, 802],771⟩

private def s2Step378FrontOut : WindowBank := ⟨s2Step378ExitFOut,s2Step378ExitGOut,s2Step378ExitFvOut,s2Step378ExitGvOut⟩

private def s2Step378CompleteOut : WindowBank := s2Step378FrontOut.repacked s2Step378CompleteMoves

private def s2Step378EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step378EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step378EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step378EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step378EarlyControlPositiveArena,[835],s2Step378EarlyControlEqualityArena,[793],⟨⟨799,false⟩,[⟨⟨835,false⟩,793⟩]⟩⟩

private def s2Step378EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<915)),Finset.filter_subset _ _⟩

private def s2Step378EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<915)),Finset.filter_subset _ _⟩

private def s2Step378EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step378EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step378EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step378EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step378EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,785⟩,⟨⟨774,false⟩,803⟩,⟨⟨775,false⟩,824⟩,⟨⟨776,false⟩,842⟩,⟨⟨777,false⟩,810⟩]⟩

private def s2Step378EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step378EarlyControlZeroArena,s2Step378EarlyControlZeroPlan,s2Step378EarlyControlClassPlan,s2Step378EarlyControlFlagArena,s2Step378EarlyControlFittedArena,s2Step378EarlyControlHistoryArena,s2Step378EarlyControlSigmaArena,s2Step378EarlyControlOutputArena,s2Step378EarlyControlLog⟩

private def s2Step378CounterWork : List Wire := [810, 835, 793, 825]

private theorem s2Step378Counter_bounded : s2Step378CounterWork.toFinset⊆arenaWires := by norm_num [s2Step378CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step378HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<810) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step378CounterDuring : Arena := ⟨s2Step378HeadFvAfter.live∪s2Step378CounterWork.toFinset,Finset.union_subset s2Step378HeadFvAfter.bounded s2Step378Counter_bounded⟩

private def s2Step378EntryFFresh : List Wire := []

private def s2Step378EntryFvFresh : List Wire := []

private def s2Step378EntryGFresh : List Wire := []

private def s2Step378EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step378EntryGvAfter : Arena := s2Step378EntryFBefore

private def s2Step378EntryGvFresh : List Wire := []

private def s2Step378ExitFExtra : List Wire := [824]

private def s2Step378ExitFvExtra : List Wire := [803]

private def s2Step378ExitGExtra : List Wire := [842]

private def s2Step378ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step378ExitGvExtra : List Wire := [785]

private def s2Step378Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step378Add0Work : List Wire := [793, 825, 827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step378Add0_bounded : s2Step378Add0Work.toFinset⊆arenaWires := by
  have h : s2Step378Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step378Add0During : Arena := ⟨s2Step378Add0Arena.live∪s2Step378Add0Work.toFinset,Finset.union_subset s2Step378Add0Arena.bounded s2Step378Add0_bounded⟩

private def s2Step378Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step378Add1Work : List Wire := [793, 825, 827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step378Add1_bounded : s2Step378Add1Work.toFinset⊆arenaWires := by
  have h : s2Step378Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step378Add1During : Arena := ⟨s2Step378Add1Arena.live∪s2Step378Add1Work.toFinset,Finset.union_subset s2Step378Add1Arena.bounded s2Step378Add1_bounded⟩

private def s2Step378F4FlagArena : Arena := ⟨s2Step378HeadFvAfter.live∪{810},Finset.union_subset s2Step378HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step378F4Plan : HmrHybridF4Plan := ⟨s2Step378F4FlagArena,[810],s2Step378Add0Arena,[835],s2Step378Add0During,s2Step378Add0Work,s2Step378Add1During,s2Step378Add1Work⟩

private def s2Step378HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 824],768⟩

private def s2Step378HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826, 789, 800, 803],770⟩

private def s2Step378HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 842],769⟩

private def s2Step378HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 596, 595, 594, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811, 796, 802, 785],771⟩

private def s2Step378FrontHead : WindowBank := ⟨s2Step378HeadFOut,s2Step378HeadGOut,s2Step378HeadFvOut,s2Step378HeadGvOut⟩

private def s2Step378EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593],768⟩

private def s2Step378EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826, 789, 800],770⟩

private def s2Step378EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81],769⟩

private def s2Step378EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 596, 595, 594, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811, 796, 802],771⟩

private def s2Step378FrontPair : WindowBank := ⟨s2Step378EntryFOut,s2Step378EntryGOut,s2Step378EntryFvOut,s2Step378EntryGvOut⟩

private def s2Step378FrontSigmaArena : Arena := ⟨s2Step378EntryGvAfter.live∪{799},Finset.union_subset s2Step378EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step378HeadFFresh : List Wire := [824]

private def s2Step378HeadFvFresh : List Wire := [803]

private def s2Step378HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step378HeadGFresh : List Wire := [842]

private def s2Step378HeadGvFresh : List Wire := [785]

private def s2Step378FrontPlan : HmrSourceFront := ⟨s2Step378EntryGvAfter,s2Step378FrontPair,(growRow 768 s2Step378EntryFFresh ++ (growRow 769 s2Step378EntryGFresh ++ (growRow 770 s2Step378EntryFvFresh ++ (growRow 771 s2Step378EntryGvFresh ++ [])))),s2Step378FrontSigmaArena,[799],s2Step378HeadGBefore,[797],
  s2Step378HeadFvAfter,s2Step378FrontHead,(growRow 769 s2Step378HeadGFresh ++ (growRow 768 s2Step378HeadFFresh ++ (growRow 771 s2Step378HeadGvFresh ++ (growRow 770 s2Step378HeadFvFresh ++ [])))),s2Step378F4Plan,s2Step378CounterDuring,s2Step378CounterWork,s2Step378ExitGvAfter,s2Step378FrontOut,(shrinkRow 769 s2Step378ExitGExtra ++ (shrinkRow 768 s2Step378ExitFExtra ++ (shrinkRow 770 s2Step378ExitFvExtra ++ (shrinkRow 771 s2Step378ExitGvExtra ++ []))))⟩

private def s2Step378CompletePlan : HmrEarlyStepPlan := ⟨s2Step378FrontPlan,s2Step378EarlyControlArena,s2Step378EarlyControlPlan,s2Step378CompleteMoves⟩

private theorem s2Step378Complete_apart : List.Disjoint (s2Step378CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [799, 797, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] := by
  have nd : ((s2Step378CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[799, 797, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step378Complete_owned : (s2Step378CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step378EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step378EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step378Complete_repack : s2Step378ExitGvAfter.checkRepack s2Step378CompleteMoves=some s2Step378EarlyControlArena := by rfl

private theorem s2Step378EarlyControl_branchOwned : ([797] : List Wire).toFinset⊆s2Step378EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step378EarlyControlSigmaArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step378EarlyControl_branch : compileHmrBranchRetirement s2Step378EarlyControlSigmaArena 797=some s2Step378EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step378EarlyControl_branchOwned
  · ext q
    simp [s2Step378EarlyControlOutputArena,s2Step378EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step378EarlyControl_classEqualityBorrow : s2Step378EarlyControlPositiveArena.checkBorrow (([799, 835] : List Wire).length-1) s2Step378EarlyControlLog.classWork=some s2Step378EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step378EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step378EarlyControlPositiveArena (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step378EarlyControlEqualityArena,s2Step378EarlyControlPositiveArena,s2Step378EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step378EarlyControl_classEqualityOwned : ([799, 835] : List Wire).toFinset⊆s2Step378EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step378EarlyControlPositiveArena (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step378EarlyControl_classEquality : compileHmrEqualityLog s2Step378EarlyControlPositiveArena [799, 835] 0 s2Step378EarlyControlLog.classWork=some (s2Step378EarlyControlEqualityArena,s2Step378EarlyControlLog.classWork,s2Step378EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step378EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step378EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step378EarlyControl_classOwned : ([777, 810, 799] : List Wire).toFinset⊆s2Step378EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step378EarlyControlZeroArena (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step378EarlyControl_positiveBorrow : s2Step378EarlyControlZeroArena.checkBorrow (1) s2Step378EarlyControlLog.positiveWork=some s2Step378EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step378EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step378EarlyControlZeroArena (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step378EarlyControlPositiveArena,s2Step378EarlyControlZeroArena,s2Step378EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step378EarlyControl_class : compileHmrSourceClassLog s2Step378EarlyControlZeroArena false 777 s2Step378EarlyControlZeroPlan.top 0 799 s2Step378EarlyControlLog.positiveWork s2Step378EarlyControlLog.classWork=some s2Step378EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step378EarlyControlClassPlan s2Step378EarlyControlZeroArena false 777 s2Step378EarlyControlZeroPlan.top 0 799
  constructor
  · decide +kernel
  · exact s2Step378EarlyControl_classOwned
  · exact s2Step378EarlyControl_positiveBorrow
  · exact s2Step378EarlyControl_classEquality

private theorem s2Step378EarlyControl_entryRecordOwned : ([797, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step378EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step378EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step378EarlyControl_entrySigmaOwned : ([799, 254] : List Wire).toFinset⊆s2Step378EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step378EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step378EarlyControl_fitBorrow : s2Step378EarlyControlFlagArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step378EarlyControlLog.recordFresh=some s2Step378EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step378EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step378EarlyControlFlagArena (fun q => (0≤q ∧ q<915)) rfl
      decide +kernel
    · ext q
      simp [s2Step378EarlyControlFittedArena,s2Step378EarlyControlFlagArena,s2Step378EarlyControlLog,arenaWires]

private theorem s2Step378EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step378EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step378EarlyControlFlagArena (fun q => (0≤q ∧ q<915)) rfl
  decide +kernel

private theorem s2Step378EarlyControl_fit : compileHmrRecordGrowLog s2Step378EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step378EarlyControlLog.recordFresh=some s2Step378EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step378EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step378EarlyControl_fitBorrow

private theorem s2Step378EarlyControl_flagsBorrow : s2Step378EarlyControlEqualityArena.checkBorrow (6) s2Step378EarlyControlLog.flagWork=some s2Step378EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step378EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step378EarlyControlEqualityArena (fun q => (0≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step378EarlyControlFlagArena,s2Step378EarlyControlEqualityArena,s2Step378EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step378EarlyControl_flagsOwned : ([793, 253, 252, 251] : List Wire).toFinset⊆s2Step378EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step378EarlyControlEqualityArena (fun q => (0≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step378EarlyControl_flags : compileHmrFlagsLog s2Step378EarlyControlClassPlan.equalityArena s2Step378EarlyControlClassPlan.equality.top 253 252 251 s2Step378EarlyControlLog.flagWork=some s2Step378EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step378EarlyControl_flagsOwned⟩
  · exact s2Step378EarlyControl_flagsBorrow

private theorem s2Step378EarlyControl_historyBorrow : s2Step378EarlyControlArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step378EarlyControlLog.recordFresh=some s2Step378EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step378EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step378EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step378EarlyControlHistoryArena,s2Step378EarlyControlArena,s2Step378EarlyControlLog,arenaWires]

private theorem s2Step378EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step378EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step378EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step378EarlyControl_history : compileHmrRecordGrowLog s2Step378EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step378EarlyControlLog.recordFresh=some s2Step378EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step378EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step378EarlyControl_historyBorrow

private theorem s2Step378EarlyControl_sigmaOwned : ([254, 799] : List Wire).toFinset⊆s2Step378EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step378EarlyControlHistoryArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step378EarlyControl_sigmaReleaseOwned : ([799] : List Wire).toFinset⊆s2Step378EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step378EarlyControlHistoryArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step378EarlyControl_sigmaRelease : s2Step378EarlyControlHistoryArena.release {799} (fun _ => false)=some s2Step378EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step378EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step378EarlyControlSigmaArena,s2Step378EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step378EarlyControl_sigma : compileHmrSigmaDropLog s2Step378EarlyControlHistoryArena false 0 0 254 799 []=some s2Step378EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step378EarlyControl_sigmaOwned⟩
  · exact s2Step378EarlyControl_sigmaRelease

private theorem s2Step378EarlyControl_zeroBorrow : s2Step378EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step378EarlyControlLog.zeroWork=some s2Step378EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step378EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step378EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step378EarlyControlZeroArena,s2Step378EarlyControlArena,s2Step378EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step378EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step378EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step378EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step378EarlyControl_zero : compileHmrEqualityLog s2Step378EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step378EarlyControlLog.zeroWork=some (s2Step378EarlyControlZeroArena,s2Step378EarlyControlLog.zeroWork,s2Step378EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step378EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step378EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step378EarlyControl_logged : s2Step378EarlyControlPlan.Logged s2Step378EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 799 254 253 252 251 797 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step378EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step378EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step378EarlyControl_zero
  · exact s2Step378EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step378EarlyControl_flags
  · exact s2Step378EarlyControl_fit
  · exact s2Step378EarlyControl_history
  · exact s2Step378EarlyControl_sigma
  · exact s2Step378EarlyControl_branch

private theorem s2Step378EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step378EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 799 254 253 252 251 797 60 s2Step378EarlyControlLog=some s2Step378EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step378EarlyControlPlan s2Step378EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 799 254 253 252 251 797 60 s2Step378EarlyControl_logged

private def s2Step378EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593],768⟩

private def s2Step378EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826, 789, 800],770⟩

private def s2Step378EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81],769⟩

private def s2Step378EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 596, 595, 594, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811, 796, 802],771⟩

private def s2Step378FrontBank : WindowBank := ⟨s2Step378EntryFRow,s2Step378EntryGRow,s2Step378EntryFvRow,s2Step378EntryGvRow⟩

private def s2Step378Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 824, 768]

private def s2Step378Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 842, 769]

private def s2Step378Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826, 789, 800, 803, 770]

private def s2Step378Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 596, 595, 594, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811, 796, 802, 785, 771]

private theorem s2Step378Counter_apart : Disjoint s2Step378HeadFvAfter.live s2Step378CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step378HeadFvAfter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<810) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step378Counter_borrowed : s2Step378HeadFvAfter.checkBorrow 4 s2Step378CounterWork=some s2Step378CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step378HeadFvAfter s2Step378CounterDuring s2Step378CounterWork.toFinset s2Step378Counter_bounded s2Step378Counter_apart rfl

private theorem s2Step378Counter_owned : (799::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step378HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step378HeadFvAfter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<810) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step378Counter_checked : compileHmrCounterStepLog s2Step378HeadFvAfter true 799 [772, 773, 774, 775, 776, 777] s2Step378CounterWork=some s2Step378CounterDuring := by
  have owned : ∀q∈799::[772, 773, 774, 775, 776, 777],q∈s2Step378HeadFvAfter.live := fun q hq => s2Step378Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step378Counter_borrowed

private def s2Step378EntryFAfter : Arena := s2Step378EntryFBefore

private theorem s2Step378EntryBank_incomingDistinct : ([s2Step378EntryFRow,s2Step378EntryGRow,s2Step378EntryFvRow,s2Step378EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step378EntryF_Incoming : rowsOwned s2Step378EntryFBefore [s2Step378EntryFRow,s2Step378EntryGRow,s2Step378EntryFvRow,s2Step378EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step378EntryFRow,s2Step378EntryGRow,s2Step378EntryFvRow,s2Step378EntryGvRow] 0 s2Step378EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step378EntryFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step378EntryBank_outgoingOwned : rowsOwned s2Step378EntryGvAfter [s2Step378EntryFOut,s2Step378EntryGOut,s2Step378EntryFvOut,s2Step378EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step378EntryGvAfter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step378EntryF_Outgoing : rowsOwned s2Step378EntryGvAfter [s2Step378EntryFOut,s2Step378EntryGOut,s2Step378EntryFvOut,s2Step378EntryGvOut] :=
  hmrRows_owned_drop s2Step378EntryGvAfter [s2Step378EntryFOut,s2Step378EntryGOut,s2Step378EntryFvOut,s2Step378EntryGvOut] 0 s2Step378EntryBank_outgoingOwned

private theorem s2Step378EntryF_distinct : (s2Step378EntryFRow.sign::s2Step378EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step378EntryF_owned : (s2Step378EntryFRow.sign::s2Step378EntryFRow.payload).toFinset⊆s2Step378EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step378EntryFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step378EntryF_reserved : s2Step378EntryFBefore.reserve s2Step378EntryFFresh.toFinset=some s2Step378EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step378EntryFFresh,arenaWires]
  · norm_num [s2Step378EntryFBefore,s2Step378EntryFFresh,arenaWires]
  · simp only [s2Step378EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step378EntryF_checked : planRowResizeLog s2Step378EntryFBefore s2Step378EntryFRow 82 s2Step378EntryFFresh=
    some (s2Step378EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593],768⟩,growRow 768 s2Step378EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step378EntryFBefore s2Step378EntryFAfter s2Step378EntryFRow 82 s2Step378EntryFFresh
    s2Step378EntryF_distinct s2Step378EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step378EntryF_reserved
  have rowEq : WindowRow.mk (s2Step378EntryFRow.payload++s2Step378EntryFFresh) s2Step378EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step378EntryFvAfter : Arena := s2Step378EntryFBefore

private def s2Step378EntryFvBefore : Arena := s2Step378EntryFBefore

private theorem s2Step378EntryFv_Incoming : rowsOwned s2Step378EntryFvBefore [s2Step378EntryFvRow,s2Step378EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step378EntryFRow,s2Step378EntryGRow,s2Step378EntryFvRow,s2Step378EntryGvRow] 2 s2Step378EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step378EntryFvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step378EntryFv_Outgoing : rowsOwned s2Step378EntryGvAfter [s2Step378EntryFvOut,s2Step378EntryGvOut] :=
  hmrRows_owned_drop s2Step378EntryGvAfter [s2Step378EntryFOut,s2Step378EntryGOut,s2Step378EntryFvOut,s2Step378EntryGvOut] 2 s2Step378EntryBank_outgoingOwned

private theorem s2Step378EntryFv_distinct : (s2Step378EntryFvRow.sign::s2Step378EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step378EntryFv_owned : (s2Step378EntryFvRow.sign::s2Step378EntryFvRow.payload).toFinset⊆s2Step378EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step378EntryFvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step378EntryFv_reserved : s2Step378EntryFvBefore.reserve s2Step378EntryFvFresh.toFinset=some s2Step378EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step378EntryFvFresh,arenaWires]
  · norm_num [s2Step378EntryFvBefore,s2Step378EntryFBefore,s2Step378EntryFvFresh,arenaWires]
  · simp only [s2Step378EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step378EntryFv_checked : planRowResizeLog s2Step378EntryFvBefore s2Step378EntryFvRow 205 s2Step378EntryFvFresh=
    some (s2Step378EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826, 789, 800],770⟩,growRow 770 s2Step378EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step378EntryFvBefore s2Step378EntryFvAfter s2Step378EntryFvRow 205 s2Step378EntryFvFresh
    s2Step378EntryFv_distinct s2Step378EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step378EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step378EntryFvRow.payload++s2Step378EntryFvFresh) s2Step378EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826, 789, 800],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step378EntryGAfter : Arena := s2Step378EntryFBefore

private def s2Step378EntryGBefore : Arena := s2Step378EntryFBefore

private theorem s2Step378EntryG_Incoming : rowsOwned s2Step378EntryGBefore [s2Step378EntryGRow,s2Step378EntryFvRow,s2Step378EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step378EntryFRow,s2Step378EntryGRow,s2Step378EntryFvRow,s2Step378EntryGvRow] 1 s2Step378EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step378EntryGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step378EntryG_Outgoing : rowsOwned s2Step378EntryGvAfter [s2Step378EntryGOut,s2Step378EntryFvOut,s2Step378EntryGvOut] :=
  hmrRows_owned_drop s2Step378EntryGvAfter [s2Step378EntryFOut,s2Step378EntryGOut,s2Step378EntryFvOut,s2Step378EntryGvOut] 1 s2Step378EntryBank_outgoingOwned

private theorem s2Step378EntryG_distinct : (s2Step378EntryGRow.sign::s2Step378EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step378EntryG_owned : (s2Step378EntryGRow.sign::s2Step378EntryGRow.payload).toFinset⊆s2Step378EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step378EntryGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step378EntryG_reserved : s2Step378EntryGBefore.reserve s2Step378EntryGFresh.toFinset=some s2Step378EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step378EntryGFresh,arenaWires]
  · norm_num [s2Step378EntryGBefore,s2Step378EntryFBefore,s2Step378EntryGFresh,arenaWires]
  · simp only [s2Step378EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step378EntryG_checked : planRowResizeLog s2Step378EntryGBefore s2Step378EntryGRow 82 s2Step378EntryGFresh=
    some (s2Step378EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81],769⟩,growRow 769 s2Step378EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step378EntryGBefore s2Step378EntryGAfter s2Step378EntryGRow 82 s2Step378EntryGFresh
    s2Step378EntryG_distinct s2Step378EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step378EntryG_reserved
  have rowEq : WindowRow.mk (s2Step378EntryGRow.payload++s2Step378EntryGFresh) s2Step378EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step378EntryGvBefore : Arena := s2Step378EntryFBefore

private theorem s2Step378EntryGv_Incoming : rowsOwned s2Step378EntryGvBefore [s2Step378EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step378EntryFRow,s2Step378EntryGRow,s2Step378EntryFvRow,s2Step378EntryGvRow] 3 s2Step378EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step378EntryGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step378EntryGv_Outgoing : rowsOwned s2Step378EntryGvAfter [s2Step378EntryGvOut] :=
  hmrRows_owned_drop s2Step378EntryGvAfter [s2Step378EntryFOut,s2Step378EntryGOut,s2Step378EntryFvOut,s2Step378EntryGvOut] 3 s2Step378EntryBank_outgoingOwned

private theorem s2Step378EntryGv_distinct : (s2Step378EntryGvRow.sign::s2Step378EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step378EntryGv_owned : (s2Step378EntryGvRow.sign::s2Step378EntryGvRow.payload).toFinset⊆s2Step378EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step378EntryGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step378EntryGv_reserved : s2Step378EntryGvBefore.reserve s2Step378EntryGvFresh.toFinset=some s2Step378EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step378EntryGvFresh,arenaWires]
  · norm_num [s2Step378EntryGvBefore,s2Step378EntryFBefore,s2Step378EntryGvFresh,arenaWires]
  · simp only [s2Step378EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step378EntryGv_checked : planRowResizeLog s2Step378EntryGvBefore s2Step378EntryGvRow 205 s2Step378EntryGvFresh=
    some (s2Step378EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 596, 595, 594, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811, 796, 802],771⟩,growRow 771 s2Step378EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step378EntryGvBefore s2Step378EntryGvAfter s2Step378EntryGvRow 205 s2Step378EntryGvFresh
    s2Step378EntryGv_distinct s2Step378EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step378EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step378EntryGvRow.payload++s2Step378EntryGvFresh) s2Step378EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 596, 595, 594, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811, 796, 802],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step378EntryBank_rows : planWindowRowsLog s2Step378EntryFBefore [(s2Step378EntryFRow,82),(s2Step378EntryGRow,82),(s2Step378EntryFvRow,205),(s2Step378EntryGvRow,205)] [s2Step378EntryFFresh,s2Step378EntryGFresh,s2Step378EntryFvFresh,s2Step378EntryGvFresh]=
    some (s2Step378EntryGvAfter,[s2Step378EntryFOut,s2Step378EntryGOut,s2Step378EntryFvOut,s2Step378EntryGvOut],(growRow 768 s2Step378EntryFFresh ++ (growRow 769 s2Step378EntryGFresh ++ (growRow 770 s2Step378EntryFvFresh ++ (growRow 771 s2Step378EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step378EntryGvAfter [] []=some (s2Step378EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step378EntryGvBefore s2Step378EntryGvAfter s2Step378EntryGvAfter
    s2Step378EntryGvRow s2Step378EntryGvOut 205 s2Step378EntryGvFresh [] [] []
    (growRow 771 s2Step378EntryGvFresh) ([]) s2Step378EntryGv_Incoming s2Step378EntryGv_checked h4 s2Step378EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step378EntryFvBefore s2Step378EntryFvAfter s2Step378EntryGvAfter
    s2Step378EntryFvRow s2Step378EntryFvOut 205 s2Step378EntryFvFresh [(s2Step378EntryGvRow,205)] [s2Step378EntryGvFresh] [s2Step378EntryGvOut]
    (growRow 770 s2Step378EntryFvFresh) ((growRow 771 s2Step378EntryGvFresh ++ [])) s2Step378EntryFv_Incoming s2Step378EntryFv_checked h3 s2Step378EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step378EntryGBefore s2Step378EntryGAfter s2Step378EntryGvAfter
    s2Step378EntryGRow s2Step378EntryGOut 82 s2Step378EntryGFresh [(s2Step378EntryFvRow,205),(s2Step378EntryGvRow,205)] [s2Step378EntryFvFresh,s2Step378EntryGvFresh] [s2Step378EntryFvOut,s2Step378EntryGvOut]
    (growRow 769 s2Step378EntryGFresh) ((growRow 770 s2Step378EntryFvFresh ++ (growRow 771 s2Step378EntryGvFresh ++ []))) s2Step378EntryG_Incoming s2Step378EntryG_checked h2 s2Step378EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step378EntryFBefore s2Step378EntryFAfter s2Step378EntryGvAfter
    s2Step378EntryFRow s2Step378EntryFOut 82 s2Step378EntryFFresh [(s2Step378EntryGRow,82),(s2Step378EntryFvRow,205),(s2Step378EntryGvRow,205)] [s2Step378EntryGFresh,s2Step378EntryFvFresh,s2Step378EntryGvFresh] [s2Step378EntryGOut,s2Step378EntryFvOut,s2Step378EntryGvOut]
    (growRow 768 s2Step378EntryFFresh) ((growRow 769 s2Step378EntryGFresh ++ (growRow 770 s2Step378EntryFvFresh ++ (growRow 771 s2Step378EntryGvFresh ++ [])))) s2Step378EntryF_Incoming s2Step378EntryF_checked h1 s2Step378EntryF_Outgoing
  exact h0

private theorem s2Step378EntryBank_checked : compileHmrBankResizeLog .entry s2Step378EntryFBefore ⟨s2Step378EntryFRow,s2Step378EntryGRow,s2Step378EntryFvRow,s2Step378EntryGvRow⟩ ⟨82,82,205,205⟩ [s2Step378EntryFFresh,s2Step378EntryGFresh,s2Step378EntryFvFresh,s2Step378EntryGvFresh]=
    some (s2Step378EntryGvAfter,⟨s2Step378EntryFOut,s2Step378EntryGOut,s2Step378EntryFvOut,s2Step378EntryGvOut⟩,(growRow 768 s2Step378EntryFFresh ++ (growRow 769 s2Step378EntryGFresh ++ (growRow 770 s2Step378EntryFvFresh ++ (growRow 771 s2Step378EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step378EntryBank_rows]
  rfl

private def s2Step378ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step378ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<810) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step378ExitFBefore : Arena := s2Step378ExitGAfter

private def s2Step378ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 824],768⟩

private def s2Step378ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826, 789, 800, 803],770⟩

private def s2Step378ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 842],769⟩

private def s2Step378ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 596, 595, 594, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811, 796, 802, 785],771⟩

private theorem s2Step378ExitBank_incomingDistinct : ([s2Step378ExitGRow,s2Step378ExitFRow,s2Step378ExitFvRow,s2Step378ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step378ExitF_Incoming : rowsOwned s2Step378ExitFBefore [s2Step378ExitFRow,s2Step378ExitFvRow,s2Step378ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step378ExitGRow,s2Step378ExitFRow,s2Step378ExitFvRow,s2Step378ExitGvRow] 1 s2Step378ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step378ExitFBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<810) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step378ExitBank_outgoingOwned : rowsOwned s2Step378ExitGvAfter [s2Step378ExitGOut,s2Step378ExitFOut,s2Step378ExitFvOut,s2Step378ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step378ExitGvAfter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step378ExitF_Outgoing : rowsOwned s2Step378ExitGvAfter [s2Step378ExitFOut,s2Step378ExitFvOut,s2Step378ExitGvOut] :=
  hmrRows_owned_drop s2Step378ExitGvAfter [s2Step378ExitGOut,s2Step378ExitFOut,s2Step378ExitFvOut,s2Step378ExitGvOut] 1 s2Step378ExitBank_outgoingOwned

private theorem s2Step378ExitF_distinct : (s2Step378ExitFRow.sign::s2Step378ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step378ExitF_owned : (s2Step378ExitFRow.sign::s2Step378ExitFRow.payload).toFinset⊆s2Step378ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step378ExitFBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<810) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step378ExitF_retired : s2Step378ExitFBefore.retireSet s2Step378ExitFExtra.toFinset=s2Step378ExitFAfter := by
  unfold Arena.retireSet s2Step378ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step378ExitFBefore,s2Step378ExitGAfter,s2Step378ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step378ExitF_checked : planRowResizeLog s2Step378ExitFBefore s2Step378ExitFRow 82 []=
    some (s2Step378ExitFAfter,s2Step378ExitFOut,shrinkRow 768 s2Step378ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step378ExitFBefore s2Step378ExitFRow 82 s2Step378ExitF_distinct s2Step378ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step378ExitFRow.payload.take 82) s2Step378ExitFRow.sign=s2Step378ExitFOut := by decide +kernel
  have hi : s2Step378ExitFRow.payload.drop 82=s2Step378ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step378ExitF_retired] at result
  exact result

private def s2Step378ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step378ExitFvBefore : Arena := s2Step378ExitFAfter

private theorem s2Step378ExitFv_Incoming : rowsOwned s2Step378ExitFvBefore [s2Step378ExitFvRow,s2Step378ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step378ExitGRow,s2Step378ExitFRow,s2Step378ExitFvRow,s2Step378ExitGvRow] 2 s2Step378ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step378ExitFvBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step378ExitFv_Outgoing : rowsOwned s2Step378ExitGvAfter [s2Step378ExitFvOut,s2Step378ExitGvOut] :=
  hmrRows_owned_drop s2Step378ExitGvAfter [s2Step378ExitGOut,s2Step378ExitFOut,s2Step378ExitFvOut,s2Step378ExitGvOut] 2 s2Step378ExitBank_outgoingOwned

private theorem s2Step378ExitFv_distinct : (s2Step378ExitFvRow.sign::s2Step378ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step378ExitFv_owned : (s2Step378ExitFvRow.sign::s2Step378ExitFvRow.payload).toFinset⊆s2Step378ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step378ExitFvBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step378ExitFv_retired : s2Step378ExitFvBefore.retireSet s2Step378ExitFvExtra.toFinset=s2Step378ExitFvAfter := by
  unfold Arena.retireSet s2Step378ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step378ExitFvBefore,s2Step378ExitFAfter,s2Step378ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step378ExitFv_checked : planRowResizeLog s2Step378ExitFvBefore s2Step378ExitFvRow 205 []=
    some (s2Step378ExitFvAfter,s2Step378ExitFvOut,shrinkRow 770 s2Step378ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step378ExitFvBefore s2Step378ExitFvRow 205 s2Step378ExitFv_distinct s2Step378ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step378ExitFvRow.payload.take 205) s2Step378ExitFvRow.sign=s2Step378ExitFvOut := by decide +kernel
  have hi : s2Step378ExitFvRow.payload.drop 205=s2Step378ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step378ExitFv_retired] at result
  exact result

private def s2Step378ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<810) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private theorem s2Step378ExitG_Incoming : rowsOwned s2Step378ExitGBefore [s2Step378ExitGRow,s2Step378ExitFRow,s2Step378ExitFvRow,s2Step378ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step378ExitGRow,s2Step378ExitFRow,s2Step378ExitFvRow,s2Step378ExitGvRow] 0 s2Step378ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step378ExitGBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<810) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step378ExitG_Outgoing : rowsOwned s2Step378ExitGvAfter [s2Step378ExitGOut,s2Step378ExitFOut,s2Step378ExitFvOut,s2Step378ExitGvOut] :=
  hmrRows_owned_drop s2Step378ExitGvAfter [s2Step378ExitGOut,s2Step378ExitFOut,s2Step378ExitFvOut,s2Step378ExitGvOut] 0 s2Step378ExitBank_outgoingOwned

private theorem s2Step378ExitG_distinct : (s2Step378ExitGRow.sign::s2Step378ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step378ExitG_owned : (s2Step378ExitGRow.sign::s2Step378ExitGRow.payload).toFinset⊆s2Step378ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step378ExitGBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<810) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step378ExitG_retired : s2Step378ExitGBefore.retireSet s2Step378ExitGExtra.toFinset=s2Step378ExitGAfter := by
  unfold Arena.retireSet s2Step378ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step378ExitGBefore,s2Step378ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step378ExitG_checked : planRowResizeLog s2Step378ExitGBefore s2Step378ExitGRow 82 []=
    some (s2Step378ExitGAfter,s2Step378ExitGOut,shrinkRow 769 s2Step378ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step378ExitGBefore s2Step378ExitGRow 82 s2Step378ExitG_distinct s2Step378ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step378ExitGRow.payload.take 82) s2Step378ExitGRow.sign=s2Step378ExitGOut := by decide +kernel
  have hi : s2Step378ExitGRow.payload.drop 82=s2Step378ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step378ExitG_retired] at result
  exact result

private def s2Step378ExitGvBefore : Arena := s2Step378ExitFvAfter

private theorem s2Step378ExitGv_Incoming : rowsOwned s2Step378ExitGvBefore [s2Step378ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step378ExitGRow,s2Step378ExitFRow,s2Step378ExitFvRow,s2Step378ExitGvRow] 3 s2Step378ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step378ExitGvBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step378ExitGv_Outgoing : rowsOwned s2Step378ExitGvAfter [s2Step378ExitGvOut] :=
  hmrRows_owned_drop s2Step378ExitGvAfter [s2Step378ExitGOut,s2Step378ExitFOut,s2Step378ExitFvOut,s2Step378ExitGvOut] 3 s2Step378ExitBank_outgoingOwned

private theorem s2Step378ExitGv_distinct : (s2Step378ExitGvRow.sign::s2Step378ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step378ExitGv_owned : (s2Step378ExitGvRow.sign::s2Step378ExitGvRow.payload).toFinset⊆s2Step378ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step378ExitGvBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step378ExitGv_retired : s2Step378ExitGvBefore.retireSet s2Step378ExitGvExtra.toFinset=s2Step378ExitGvAfter := by
  unfold Arena.retireSet s2Step378ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step378ExitGvBefore,s2Step378ExitFvAfter,s2Step378ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step378ExitGv_checked : planRowResizeLog s2Step378ExitGvBefore s2Step378ExitGvRow 205 []=
    some (s2Step378ExitGvAfter,s2Step378ExitGvOut,shrinkRow 771 s2Step378ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step378ExitGvBefore s2Step378ExitGvRow 205 s2Step378ExitGv_distinct s2Step378ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step378ExitGvRow.payload.take 205) s2Step378ExitGvRow.sign=s2Step378ExitGvOut := by decide +kernel
  have hi : s2Step378ExitGvRow.payload.drop 205=s2Step378ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step378ExitGv_retired] at result
  exact result

private theorem s2Step378ExitBank_rows : planWindowRowsLog s2Step378ExitGBefore [(s2Step378ExitGRow,82),(s2Step378ExitFRow,82),(s2Step378ExitFvRow,205),(s2Step378ExitGvRow,205)] [[],[],[],[]]=
    some (s2Step378ExitGvAfter,[s2Step378ExitGOut,s2Step378ExitFOut,s2Step378ExitFvOut,s2Step378ExitGvOut],(shrinkRow 769 s2Step378ExitGExtra ++ (shrinkRow 768 s2Step378ExitFExtra ++ (shrinkRow 770 s2Step378ExitFvExtra ++ (shrinkRow 771 s2Step378ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step378ExitGvAfter [] []=some (s2Step378ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step378ExitGvBefore s2Step378ExitGvAfter s2Step378ExitGvAfter
    s2Step378ExitGvRow s2Step378ExitGvOut 205 [] [] [] []
    (shrinkRow 771 s2Step378ExitGvExtra) ([]) s2Step378ExitGv_Incoming s2Step378ExitGv_checked h4 s2Step378ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step378ExitFvBefore s2Step378ExitFvAfter s2Step378ExitGvAfter
    s2Step378ExitFvRow s2Step378ExitFvOut 205 [] [(s2Step378ExitGvRow,205)] [[]] [s2Step378ExitGvOut]
    (shrinkRow 770 s2Step378ExitFvExtra) ((shrinkRow 771 s2Step378ExitGvExtra ++ [])) s2Step378ExitFv_Incoming s2Step378ExitFv_checked h3 s2Step378ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step378ExitFBefore s2Step378ExitFAfter s2Step378ExitGvAfter
    s2Step378ExitFRow s2Step378ExitFOut 82 [] [(s2Step378ExitFvRow,205),(s2Step378ExitGvRow,205)] [[],[]] [s2Step378ExitFvOut,s2Step378ExitGvOut]
    (shrinkRow 768 s2Step378ExitFExtra) ((shrinkRow 770 s2Step378ExitFvExtra ++ (shrinkRow 771 s2Step378ExitGvExtra ++ []))) s2Step378ExitF_Incoming s2Step378ExitF_checked h2 s2Step378ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step378ExitGBefore s2Step378ExitGAfter s2Step378ExitGvAfter
    s2Step378ExitGRow s2Step378ExitGOut 82 [] [(s2Step378ExitFRow,82),(s2Step378ExitFvRow,205),(s2Step378ExitGvRow,205)] [[],[],[]] [s2Step378ExitFOut,s2Step378ExitFvOut,s2Step378ExitGvOut]
    (shrinkRow 769 s2Step378ExitGExtra) ((shrinkRow 768 s2Step378ExitFExtra ++ (shrinkRow 770 s2Step378ExitFvExtra ++ (shrinkRow 771 s2Step378ExitGvExtra ++ [])))) s2Step378ExitG_Incoming s2Step378ExitG_checked h1 s2Step378ExitG_Outgoing
  exact h0

private theorem s2Step378ExitBank_checked : compileHmrBankResizeLog .exit s2Step378ExitGBefore ⟨s2Step378ExitFRow,s2Step378ExitGRow,s2Step378ExitFvRow,s2Step378ExitGvRow⟩ ⟨82,82,205,205⟩ [[],[],[],[]]=
    some (s2Step378ExitGvAfter,⟨s2Step378ExitFOut,s2Step378ExitGOut,s2Step378ExitFvOut,s2Step378ExitGvOut⟩,(shrinkRow 769 s2Step378ExitGExtra ++ (shrinkRow 768 s2Step378ExitFExtra ++ (shrinkRow 770 s2Step378ExitFvExtra ++ (shrinkRow 771 s2Step378ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step378ExitBank_rows]
  rfl

private theorem s2Step378Add0_apart : Disjoint s2Step378Add0Arena.live s2Step378Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step378Add0Arena (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step378Add0_card : s2Step378Add0Arena.live.card=908 := by
  decide +kernel

private theorem s2Step378Add0_borrowed : s2Step378Add0Arena.checkBorrow (hmrHybridCount s2Step378Add0Arena s2Step378Add0B.length) s2Step378Add0Work=some s2Step378Add0During := by
  have len : s2Step378Add0Work.length=hmrHybridCount s2Step378Add0Arena s2Step378Add0B.length := by
    rw [hmrHybridCount,s2Step378Add0_card]
    decide +kernel
  have nd : s2Step378Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step378Add0Arena s2Step378Add0During s2Step378Add0Work.toFinset s2Step378Add0_bounded s2Step378Add0_apart rfl

private theorem s2Step378Add0_distinct : (810::797::835::(s2Step378Add0A++s2Step378Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step378Add0_owned : (810::797::835::(s2Step378Add0A++s2Step378Add0B)).toFinset⊆s2Step378Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step378Add0Arena (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step378Add0_checked : compileHmrHybridCinLog s2Step378Add0Arena 797 810 835 s2Step378Add0A s2Step378Add0B s2Step378Add0Work=some s2Step378Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step378Add0Arena s2Step378Add0During 797 810 835 s2Step378Add0A s2Step378Add0B s2Step378Add0Work
    (by decide +kernel) (by decide +kernel) s2Step378Add0_distinct
    (fun q hq => s2Step378Add0_owned (List.mem_toFinset.mpr hq)) s2Step378Add0_borrowed

private theorem s2Step378Add1_apart : Disjoint s2Step378Add1Arena.live s2Step378Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step378Add1Arena (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step378Add1_card : s2Step378Add1Arena.live.card=908 := by
  decide +kernel

private theorem s2Step378Add1_borrowed : s2Step378Add1Arena.checkBorrow (hmrHybridCount s2Step378Add1Arena s2Step378Add1B.length) s2Step378Add1Work=some s2Step378Add1During := by
  have len : s2Step378Add1Work.length=hmrHybridCount s2Step378Add1Arena s2Step378Add1B.length := by
    rw [hmrHybridCount,s2Step378Add1_card]
    decide +kernel
  have nd : s2Step378Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step378Add1Arena s2Step378Add1During s2Step378Add1Work.toFinset s2Step378Add1_bounded s2Step378Add1_apart rfl

private theorem s2Step378Add1_distinct : (810::797::835::(s2Step378Add1A++s2Step378Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step378Add1_owned : (810::797::835::(s2Step378Add1A++s2Step378Add1B)).toFinset⊆s2Step378Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step378Add1Arena (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step378Add1_checked : compileHmrHybridCinLog s2Step378Add1Arena 797 810 835 s2Step378Add1A s2Step378Add1B s2Step378Add1Work=some s2Step378Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step378Add1Arena s2Step378Add1During 797 810 835 s2Step378Add1A s2Step378Add1B s2Step378Add1Work
    (by decide +kernel) (by decide +kernel) s2Step378Add1_distinct
    (fun q hq => s2Step378Add1_owned (List.mem_toFinset.mpr hq)) s2Step378Add1_borrowed

private theorem s2Step378F4_apart : Disjoint (s2Step378Add0A++s2Step378Add0B).toFinset (s2Step378Add1A++s2Step378Add1B).toFinset := by
  have nd : ((s2Step378Add0A++s2Step378Add0B)++(s2Step378Add1A++s2Step378Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step378F4_carry : s2Step378F4FlagArena.checkBorrow 1 [835]=some s2Step378Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step378F4FlagArena,s2Step378HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step378F4FlagArena,s2Step378HeadFvAfter,s2Step378Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step378F4_distinct : (799::797::810::835::((s2Step378Add0A++s2Step378Add1A)++(s2Step378Add0B++s2Step378Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step378F4_flag : s2Step378HeadFvAfter.checkBorrow 1 [810]=some s2Step378F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step378HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step378F4_owned : (799::797::((s2Step378Add0A++s2Step378Add1A)++(s2Step378Add0B++s2Step378Add1B))).toFinset⊆s2Step378HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step378HeadFvAfter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<810) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step378F4_checked : compileHmrHybridF4Log s2Step378HeadFvAfter 799 797 s2Step378Add0A s2Step378Add0B s2Step378Add1A s2Step378Add1B [810] [835] s2Step378Add0Work s2Step378Add1Work=some s2Step378F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step378HeadFvAfter s2Step378F4FlagArena s2Step378Add0Arena s2Step378Add0During s2Step378Add1During 799 797
    s2Step378Add0A s2Step378Add0B s2Step378Add1A s2Step378Add1B [810] [835] s2Step378Add0Work s2Step378Add1Work
    (fun q hq => s2Step378F4_owned (List.mem_toFinset.mpr hq)) s2Step378F4_flag s2Step378F4_carry
    s2Step378F4_distinct s2Step378F4_apart s2Step378Add0_checked s2Step378Add1_checked

private theorem s2Step378Front_branch : s2Step378FrontSigmaArena.checkBorrow 1 [797]=some s2Step378HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step378FrontSigmaArena,s2Step378EntryGvAfter,s2Step378EntryFBefore,arenaWires]
  · ext q
    simp only [s2Step378FrontSigmaArena,s2Step378EntryGvAfter,s2Step378EntryFBefore,s2Step378HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step378Front_entry : HmrFrontEntryValid s2Step378EntryFBefore s2Step378FrontBank 82 205 ⟨82,82,205,205⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step378FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step378EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step378EntryFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step378FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step378Front_sigma : s2Step378EntryGvAfter.checkBorrow 1 [799]=some s2Step378FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step378EntryGvAfter,s2Step378EntryFBefore,arenaWires]
  · rfl

private def s2Step378HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step378HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step378HeadFBefore : Arena := s2Step378HeadGAfter

private def s2Step378HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593],768⟩

private def s2Step378HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826, 789, 800],770⟩

private def s2Step378HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81],769⟩

private def s2Step378HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 596, 595, 594, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811, 796, 802],771⟩

private theorem s2Step378HeadBank_incomingDistinct : ([s2Step378HeadGRow,s2Step378HeadFRow,s2Step378HeadGvRow,s2Step378HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step378HeadF_Incoming : rowsOwned s2Step378HeadFBefore [s2Step378HeadFRow,s2Step378HeadGvRow,s2Step378HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step378HeadGRow,s2Step378HeadFRow,s2Step378HeadGvRow,s2Step378HeadFvRow] 1 s2Step378HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step378HeadFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step378HeadBank_outgoingOwned : rowsOwned s2Step378HeadFvAfter [s2Step378HeadGOut,s2Step378HeadFOut,s2Step378HeadGvOut,s2Step378HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step378HeadFvAfter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<810) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step378HeadF_Outgoing : rowsOwned s2Step378HeadFvAfter [s2Step378HeadFOut,s2Step378HeadGvOut,s2Step378HeadFvOut] :=
  hmrRows_owned_drop s2Step378HeadFvAfter [s2Step378HeadGOut,s2Step378HeadFOut,s2Step378HeadGvOut,s2Step378HeadFvOut] 1 s2Step378HeadBank_outgoingOwned

private theorem s2Step378HeadF_distinct : (s2Step378HeadFRow.sign::s2Step378HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step378HeadF_owned : (s2Step378HeadFRow.sign::s2Step378HeadFRow.payload).toFinset⊆s2Step378HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step378HeadFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step378HeadF_reserved : s2Step378HeadFBefore.reserve s2Step378HeadFFresh.toFinset=some s2Step378HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step378HeadFFresh,arenaWires]
  · norm_num [s2Step378HeadFBefore,s2Step378HeadGAfter,s2Step378HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step378HeadFAfter,s2Step378HeadFBefore,s2Step378HeadGAfter,s2Step378HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step378HeadF_checked : planRowResizeLog s2Step378HeadFBefore s2Step378HeadFRow 83 s2Step378HeadFFresh=
    some (s2Step378HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 824],768⟩,growRow 768 s2Step378HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step378HeadFBefore s2Step378HeadFAfter s2Step378HeadFRow 83 s2Step378HeadFFresh
    s2Step378HeadF_distinct s2Step378HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step378HeadF_reserved
  have rowEq : WindowRow.mk (s2Step378HeadFRow.payload++s2Step378HeadFFresh) s2Step378HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 824],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step378HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step378HeadFvBefore : Arena := s2Step378HeadGvAfter

private theorem s2Step378HeadFv_Incoming : rowsOwned s2Step378HeadFvBefore [s2Step378HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step378HeadGRow,s2Step378HeadFRow,s2Step378HeadGvRow,s2Step378HeadFvRow] 3 s2Step378HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step378HeadFvBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step378HeadFv_Outgoing : rowsOwned s2Step378HeadFvAfter [s2Step378HeadFvOut] :=
  hmrRows_owned_drop s2Step378HeadFvAfter [s2Step378HeadGOut,s2Step378HeadFOut,s2Step378HeadGvOut,s2Step378HeadFvOut] 3 s2Step378HeadBank_outgoingOwned

private theorem s2Step378HeadFv_distinct : (s2Step378HeadFvRow.sign::s2Step378HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step378HeadFv_owned : (s2Step378HeadFvRow.sign::s2Step378HeadFvRow.payload).toFinset⊆s2Step378HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step378HeadFvBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step378HeadFv_reserved : s2Step378HeadFvBefore.reserve s2Step378HeadFvFresh.toFinset=some s2Step378HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step378HeadFvFresh,arenaWires]
  · norm_num [s2Step378HeadFvBefore,s2Step378HeadGvAfter,s2Step378HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step378HeadFvAfter,s2Step378HeadFvBefore,s2Step378HeadGvAfter,s2Step378HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step378HeadFv_checked : planRowResizeLog s2Step378HeadFvBefore s2Step378HeadFvRow 206 s2Step378HeadFvFresh=
    some (s2Step378HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826, 789, 800, 803],770⟩,growRow 770 s2Step378HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step378HeadFvBefore s2Step378HeadFvAfter s2Step378HeadFvRow 206 s2Step378HeadFvFresh
    s2Step378HeadFv_distinct s2Step378HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step378HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step378HeadFvRow.payload++s2Step378HeadFvFresh) s2Step378HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826, 789, 800, 803],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step378HeadG_Incoming : rowsOwned s2Step378HeadGBefore [s2Step378HeadGRow,s2Step378HeadFRow,s2Step378HeadGvRow,s2Step378HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step378HeadGRow,s2Step378HeadFRow,s2Step378HeadGvRow,s2Step378HeadFvRow] 0 s2Step378HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step378HeadGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step378HeadG_Outgoing : rowsOwned s2Step378HeadFvAfter [s2Step378HeadGOut,s2Step378HeadFOut,s2Step378HeadGvOut,s2Step378HeadFvOut] :=
  hmrRows_owned_drop s2Step378HeadFvAfter [s2Step378HeadGOut,s2Step378HeadFOut,s2Step378HeadGvOut,s2Step378HeadFvOut] 0 s2Step378HeadBank_outgoingOwned

private theorem s2Step378HeadG_distinct : (s2Step378HeadGRow.sign::s2Step378HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step378HeadG_owned : (s2Step378HeadGRow.sign::s2Step378HeadGRow.payload).toFinset⊆s2Step378HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step378HeadGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step378HeadG_reserved : s2Step378HeadGBefore.reserve s2Step378HeadGFresh.toFinset=some s2Step378HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step378HeadGFresh,arenaWires]
  · norm_num [s2Step378HeadGBefore,s2Step378HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step378HeadGAfter,s2Step378HeadGBefore,s2Step378HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step378HeadG_checked : planRowResizeLog s2Step378HeadGBefore s2Step378HeadGRow 83 s2Step378HeadGFresh=
    some (s2Step378HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 842],769⟩,growRow 769 s2Step378HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step378HeadGBefore s2Step378HeadGAfter s2Step378HeadGRow 83 s2Step378HeadGFresh
    s2Step378HeadG_distinct s2Step378HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step378HeadG_reserved
  have rowEq : WindowRow.mk (s2Step378HeadGRow.payload++s2Step378HeadGFresh) s2Step378HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 842],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step378HeadGvBefore : Arena := s2Step378HeadFAfter

private theorem s2Step378HeadGv_Incoming : rowsOwned s2Step378HeadGvBefore [s2Step378HeadGvRow,s2Step378HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step378HeadGRow,s2Step378HeadFRow,s2Step378HeadGvRow,s2Step378HeadFvRow] 2 s2Step378HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step378HeadGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step378HeadGv_Outgoing : rowsOwned s2Step378HeadFvAfter [s2Step378HeadGvOut,s2Step378HeadFvOut] :=
  hmrRows_owned_drop s2Step378HeadFvAfter [s2Step378HeadGOut,s2Step378HeadFOut,s2Step378HeadGvOut,s2Step378HeadFvOut] 2 s2Step378HeadBank_outgoingOwned

private theorem s2Step378HeadGv_distinct : (s2Step378HeadGvRow.sign::s2Step378HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step378HeadGv_owned : (s2Step378HeadGvRow.sign::s2Step378HeadGvRow.payload).toFinset⊆s2Step378HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step378HeadGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step378HeadGv_reserved : s2Step378HeadGvBefore.reserve s2Step378HeadGvFresh.toFinset=some s2Step378HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step378HeadGvFresh,arenaWires]
  · norm_num [s2Step378HeadGvBefore,s2Step378HeadFAfter,s2Step378HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step378HeadGvAfter,s2Step378HeadGvBefore,s2Step378HeadFAfter,s2Step378HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step378HeadGv_checked : planRowResizeLog s2Step378HeadGvBefore s2Step378HeadGvRow 206 s2Step378HeadGvFresh=
    some (s2Step378HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 596, 595, 594, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811, 796, 802, 785],771⟩,growRow 771 s2Step378HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step378HeadGvBefore s2Step378HeadGvAfter s2Step378HeadGvRow 206 s2Step378HeadGvFresh
    s2Step378HeadGv_distinct s2Step378HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step378HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step378HeadGvRow.payload++s2Step378HeadGvFresh) s2Step378HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 596, 595, 594, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811, 796, 802, 785],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step378HeadBank_rows : planWindowRowsLog s2Step378HeadGBefore [(s2Step378HeadGRow,83),(s2Step378HeadFRow,83),(s2Step378HeadGvRow,206),(s2Step378HeadFvRow,206)] [s2Step378HeadGFresh,s2Step378HeadFFresh,s2Step378HeadGvFresh,s2Step378HeadFvFresh]=
    some (s2Step378HeadFvAfter,[s2Step378HeadGOut,s2Step378HeadFOut,s2Step378HeadGvOut,s2Step378HeadFvOut],(growRow 769 s2Step378HeadGFresh ++ (growRow 768 s2Step378HeadFFresh ++ (growRow 771 s2Step378HeadGvFresh ++ (growRow 770 s2Step378HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step378HeadFvAfter [] []=some (s2Step378HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step378HeadFvBefore s2Step378HeadFvAfter s2Step378HeadFvAfter
    s2Step378HeadFvRow s2Step378HeadFvOut 206 s2Step378HeadFvFresh [] [] []
    (growRow 770 s2Step378HeadFvFresh) ([]) s2Step378HeadFv_Incoming s2Step378HeadFv_checked h4 s2Step378HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step378HeadGvBefore s2Step378HeadGvAfter s2Step378HeadFvAfter
    s2Step378HeadGvRow s2Step378HeadGvOut 206 s2Step378HeadGvFresh [(s2Step378HeadFvRow,206)] [s2Step378HeadFvFresh] [s2Step378HeadFvOut]
    (growRow 771 s2Step378HeadGvFresh) ((growRow 770 s2Step378HeadFvFresh ++ [])) s2Step378HeadGv_Incoming s2Step378HeadGv_checked h3 s2Step378HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step378HeadFBefore s2Step378HeadFAfter s2Step378HeadFvAfter
    s2Step378HeadFRow s2Step378HeadFOut 83 s2Step378HeadFFresh [(s2Step378HeadGvRow,206),(s2Step378HeadFvRow,206)] [s2Step378HeadGvFresh,s2Step378HeadFvFresh] [s2Step378HeadGvOut,s2Step378HeadFvOut]
    (growRow 768 s2Step378HeadFFresh) ((growRow 771 s2Step378HeadGvFresh ++ (growRow 770 s2Step378HeadFvFresh ++ []))) s2Step378HeadF_Incoming s2Step378HeadF_checked h2 s2Step378HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step378HeadGBefore s2Step378HeadGAfter s2Step378HeadFvAfter
    s2Step378HeadGRow s2Step378HeadGOut 83 s2Step378HeadGFresh [(s2Step378HeadFRow,83),(s2Step378HeadGvRow,206),(s2Step378HeadFvRow,206)] [s2Step378HeadFFresh,s2Step378HeadGvFresh,s2Step378HeadFvFresh] [s2Step378HeadFOut,s2Step378HeadGvOut,s2Step378HeadFvOut]
    (growRow 769 s2Step378HeadGFresh) ((growRow 768 s2Step378HeadFFresh ++ (growRow 771 s2Step378HeadGvFresh ++ (growRow 770 s2Step378HeadFvFresh ++ [])))) s2Step378HeadG_Incoming s2Step378HeadG_checked h1 s2Step378HeadG_Outgoing
  exact h0

private theorem s2Step378HeadBank_checked : compileHmrBankResizeLog .headroom s2Step378HeadGBefore ⟨s2Step378HeadFRow,s2Step378HeadGRow,s2Step378HeadFvRow,s2Step378HeadGvRow⟩ ⟨83,83,206,206⟩ [s2Step378HeadGFresh,s2Step378HeadFFresh,s2Step378HeadGvFresh,s2Step378HeadFvFresh]=
    some (s2Step378HeadFvAfter,⟨s2Step378HeadFOut,s2Step378HeadGOut,s2Step378HeadFvOut,s2Step378HeadGvOut⟩,(growRow 769 s2Step378HeadGFresh ++ (growRow 768 s2Step378HeadFFresh ++ (growRow 771 s2Step378HeadGvFresh ++ (growRow 770 s2Step378HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step378HeadBank_rows]
  rfl

private theorem s2Step378Front_checked : compileHmrSourceFrontLog s2Step378EntryFBefore s2Step378FrontBank 82 205 ⟨82,82,205,205⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step378FrontLog=some s2Step378FrontPlan := by
  have pairEq : s2Step378FrontPair=⟨s2Step378HeadFRow,s2Step378HeadGRow,s2Step378HeadFvRow,s2Step378HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step378FrontHead=⟨s2Step378ExitFRow,s2Step378ExitGRow,s2Step378ExitFvRow,s2Step378ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step378Add0A=s2Step378FrontHead.f.wires := by decide +kernel
  have gEq : s2Step378Add0B=s2Step378FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step378Add1A=s2Step378FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step378Add1B=s2Step378FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step378EntryFBefore s2Step378FrontBank 82 205 ⟨82,82,205,205⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step378FrontLog s2Step378FrontPlan
  · exact s2Step378Front_entry
  · exact s2Step378EntryBank_checked
  · exact s2Step378Front_sigma
  · rfl
  · exact s2Step378Front_branch
  · rfl
  · simpa only [s2Step378FrontPlan,pairEq] using s2Step378HeadBank_checked
  · simpa only [s2Step378FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step378F4_checked
  · exact s2Step378Counter_checked
  · rfl
  · simpa only [s2Step378FrontPlan,headEq] using s2Step378ExitBank_checked

private theorem s2Step378Complete_explicit_checked : compileHmrEarlyStepLog s2Step378EntryFBefore s2Step378FrontBank 82 205 ⟨82,82,205,205⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step378CompleteLog=some s2Step378CompletePlan := by
  let Q := s2Step378EarlyControlPlan
  have hq := s2Step378EarlyControl_plan_checked
  have fv1 : s2Step378CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step378CompleteOut.fv.payload[2]?.getD s2Step378CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step378CompleteOut.fv.payload[3]?.getD s2Step378CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step378CompleteOut.fv.payload[4]?.getD s2Step378CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step378EntryFBefore s2Step378EarlyControlArena s2Step378FrontBank 82 205 ⟨82,82,205,205⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step378CompleteLog s2Step378FrontPlan Q
    s2Step378Front_checked s2Step378Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step378Complete_owned s2Step378Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step378EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 799 s2Step378CompleteOut.fv.second (s2Step378CompleteOut.fv.payload[2]?.getD s2Step378CompleteOut.fv.sign) (s2Step378CompleteOut.fv.payload[3]?.getD s2Step378CompleteOut.fv.sign) (s2Step378CompleteOut.fv.payload[4]?.getD s2Step378CompleteOut.fv.sign) 797 60 s2Step378EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep378Arena : Arena := s2Step378EntryFBefore
def s2PrivateStep378Bank : WindowBank := s2Step378FrontBank
def s2PrivateStep378Spec : HmrSourceWalkStepLog := ⟨82,205,⟨82,82,205,205⟩,60,.early s2Step378CompleteLog⟩
def s2PrivateStep378Plan : HmrSourceStepPlan := .early s2Step378CompletePlan
theorem s2PrivateStep378_source : s2PrivateStep378Spec=s2ObservedLogs368[10] := rfl
theorem s2PrivateStep378_checked : compileHmrSourceStepLog s2PrivateStep378Arena s2PrivateStep378Bank
    s2PrivateStep378Spec.fgWidth s2PrivateStep378Spec.vWidth s2PrivateStep378Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]
    6 498 378 s2PrivateStep378Spec.need none s2PrivateStep378Spec.log=some s2PrivateStep378Plan := by
  change compileHmrSourceStepLog s2Step378EntryFBefore s2Step378FrontBank 82 205 ⟨82,82,205,205⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 6 498 378 60 none (.early s2Step378CompleteLog)=some (.early s2Step378CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 378<498)]
  rw [s2Step378Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
