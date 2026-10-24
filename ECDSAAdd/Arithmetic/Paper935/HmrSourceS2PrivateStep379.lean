import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep377
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

private def s2Step379CompleteMoves : List (Wire × Wire) := [(837,81)]

private def s2Step379EarlyControlLog : HmrEarlyControlLog := ⟨[837, 824, 803, 785, 810],[835],[793],[825, 827, 844, 907, 913, 914],[]⟩

private def s2Step379FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[785], [803], [824], [842]],[[], [], [], []]⟩,[797],[799],[810],[835],[793, 825, 827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[793, 825, 827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[810, 835, 793, 825]⟩

private def s2Step379CompleteLog : HmrEarlyStepLog := ⟨s2Step379FrontLog,s2Step379CompleteMoves,s2Step379EarlyControlLog⟩

private def s2Step379ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593],768⟩

private def s2Step379ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826, 789, 800, 842],770⟩

private def s2Step379ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80],769⟩

private def s2Step379ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 596, 595, 594, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811, 796, 802],771⟩

private def s2Step379FrontOut : WindowBank := ⟨s2Step379ExitFOut,s2Step379ExitGOut,s2Step379ExitFvOut,s2Step379ExitGvOut⟩

private def s2Step379CompleteOut : WindowBank := s2Step379FrontOut.repacked s2Step379CompleteMoves

private def s2Step379EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step379EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step379EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step379EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step379EarlyControlPositiveArena,[835],s2Step379EarlyControlEqualityArena,[793],⟨⟨797,false⟩,[⟨⟨835,false⟩,793⟩]⟩⟩

private def s2Step379EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<915)),Finset.filter_subset _ _⟩

private def s2Step379EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<915)),Finset.filter_subset _ _⟩

private def s2Step379EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step379EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step379EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step379EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step379EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,837⟩,⟨⟨774,false⟩,824⟩,⟨⟨775,false⟩,803⟩,⟨⟨776,false⟩,785⟩,⟨⟨777,false⟩,810⟩]⟩

private def s2Step379EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step379EarlyControlZeroArena,s2Step379EarlyControlZeroPlan,s2Step379EarlyControlClassPlan,s2Step379EarlyControlFlagArena,s2Step379EarlyControlFittedArena,s2Step379EarlyControlHistoryArena,s2Step379EarlyControlSigmaArena,s2Step379EarlyControlOutputArena,s2Step379EarlyControlLog⟩

private def s2Step379CounterWork : List Wire := [810, 835, 793, 825]

private theorem s2Step379Counter_bounded : s2Step379CounterWork.toFinset⊆arenaWires := by norm_num [s2Step379CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step379HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<810) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step379CounterDuring : Arena := ⟨s2Step379HeadFvAfter.live∪s2Step379CounterWork.toFinset,Finset.union_subset s2Step379HeadFvAfter.bounded s2Step379Counter_bounded⟩

private def s2Step379EntryFFresh : List Wire := []

private def s2Step379EntryFvFresh : List Wire := []

private def s2Step379EntryGFresh : List Wire := []

private def s2Step379EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step379EntryGvAfter : Arena := s2Step379EntryFBefore

private def s2Step379EntryGvFresh : List Wire := []

private def s2Step379ExitFExtra : List Wire := [803]

private def s2Step379ExitGExtra : List Wire := [81, 785]

private def s2Step379ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<81) ∨ (82≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step379ExitGvExtra : List Wire := [824]

private def s2Step379Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step379Add0Work : List Wire := [793, 825, 827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step379Add0_bounded : s2Step379Add0Work.toFinset⊆arenaWires := by
  have h : s2Step379Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step379Add0During : Arena := ⟨s2Step379Add0Arena.live∪s2Step379Add0Work.toFinset,Finset.union_subset s2Step379Add0Arena.bounded s2Step379Add0_bounded⟩

private def s2Step379Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step379Add1Work : List Wire := [793, 825, 827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step379Add1_bounded : s2Step379Add1Work.toFinset⊆arenaWires := by
  have h : s2Step379Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step379Add1During : Arena := ⟨s2Step379Add1Arena.live∪s2Step379Add1Work.toFinset,Finset.union_subset s2Step379Add1Arena.bounded s2Step379Add1_bounded⟩

private def s2Step379F4FlagArena : Arena := ⟨s2Step379HeadFvAfter.live∪{810},Finset.union_subset s2Step379HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step379F4Plan : HmrHybridF4Plan := ⟨s2Step379F4FlagArena,[810],s2Step379Add0Arena,[835],s2Step379Add0During,s2Step379Add0Work,s2Step379Add1During,s2Step379Add1Work⟩

private def s2Step379HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 803],768⟩

private def s2Step379HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826, 789, 800, 842],770⟩

private def s2Step379HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 785],769⟩

private def s2Step379HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 596, 595, 594, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811, 796, 802, 824],771⟩

private def s2Step379FrontHead : WindowBank := ⟨s2Step379HeadFOut,s2Step379HeadGOut,s2Step379HeadFvOut,s2Step379HeadGvOut⟩

private def s2Step379EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593],768⟩

private def s2Step379EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826, 789, 800],770⟩

private def s2Step379EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81],769⟩

private def s2Step379EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 596, 595, 594, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811, 796, 802],771⟩

private def s2Step379FrontPair : WindowBank := ⟨s2Step379EntryFOut,s2Step379EntryGOut,s2Step379EntryFvOut,s2Step379EntryGvOut⟩

private def s2Step379FrontSigmaArena : Arena := ⟨s2Step379EntryGvAfter.live∪{797},Finset.union_subset s2Step379EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step379HeadFFresh : List Wire := [803]

private def s2Step379HeadFvFresh : List Wire := [842]

private def s2Step379HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step379HeadGFresh : List Wire := [785]

private def s2Step379HeadGvFresh : List Wire := [824]

private def s2Step379FrontPlan : HmrSourceFront := ⟨s2Step379EntryGvAfter,s2Step379FrontPair,(growRow 768 s2Step379EntryFFresh ++ (growRow 769 s2Step379EntryGFresh ++ (growRow 770 s2Step379EntryFvFresh ++ (growRow 771 s2Step379EntryGvFresh ++ [])))),s2Step379FrontSigmaArena,[797],s2Step379HeadGBefore,[799],
  s2Step379HeadFvAfter,s2Step379FrontHead,(growRow 769 s2Step379HeadGFresh ++ (growRow 768 s2Step379HeadFFresh ++ (growRow 771 s2Step379HeadGvFresh ++ (growRow 770 s2Step379HeadFvFresh ++ [])))),s2Step379F4Plan,s2Step379CounterDuring,s2Step379CounterWork,s2Step379ExitGvAfter,s2Step379FrontOut,(shrinkRow 769 s2Step379ExitGExtra ++ (shrinkRow 768 s2Step379ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step379ExitGvExtra ++ []))))⟩

private def s2Step379CompletePlan : HmrEarlyStepPlan := ⟨s2Step379FrontPlan,s2Step379EarlyControlArena,s2Step379EarlyControlPlan,s2Step379CompleteMoves⟩

private theorem s2Step379Complete_apart : List.Disjoint (s2Step379CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [797, 799, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] := by
  have nd : ((s2Step379CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[797, 799, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step379Complete_owned : (s2Step379CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step379EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step379EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private def s2Step379CompleteMoveArena : Arena := ⟨s2Step379ExitGvAfter.live∪{81},Finset.union_subset s2Step379ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step379Complete_repack : s2Step379ExitGvAfter.checkRepack s2Step379CompleteMoves=some s2Step379EarlyControlArena := by
  have owned : 837∈s2Step379ExitGvAfter.live := by norm_num [s2Step379ExitGvAfter,arenaWires]
  have reserve : s2Step379ExitGvAfter.reserve {81}=some s2Step379CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step379ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step379CompleteMoveArena.retireSet {837}=s2Step379EarlyControlArena := by
    unfold Arena.retireSet s2Step379EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step379CompleteMoveArena,s2Step379ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step379CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step379CompleteMoveArena.retireSet {837}).checkRepack []=some s2Step379EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step379EarlyControl_branchOwned : ([799] : List Wire).toFinset⊆s2Step379EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step379EarlyControlSigmaArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step379EarlyControl_branch : compileHmrBranchRetirement s2Step379EarlyControlSigmaArena 799=some s2Step379EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step379EarlyControl_branchOwned
  · ext q
    simp [s2Step379EarlyControlOutputArena,s2Step379EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step379EarlyControl_classEqualityBorrow : s2Step379EarlyControlPositiveArena.checkBorrow (([797, 835] : List Wire).length-1) s2Step379EarlyControlLog.classWork=some s2Step379EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step379EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step379EarlyControlPositiveArena (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step379EarlyControlEqualityArena,s2Step379EarlyControlPositiveArena,s2Step379EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step379EarlyControl_classEqualityOwned : ([797, 835] : List Wire).toFinset⊆s2Step379EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step379EarlyControlPositiveArena (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step379EarlyControl_classEquality : compileHmrEqualityLog s2Step379EarlyControlPositiveArena [797, 835] 0 s2Step379EarlyControlLog.classWork=some (s2Step379EarlyControlEqualityArena,s2Step379EarlyControlLog.classWork,s2Step379EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step379EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step379EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step379EarlyControl_classOwned : ([777, 810, 797] : List Wire).toFinset⊆s2Step379EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step379EarlyControlZeroArena (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step379EarlyControl_positiveBorrow : s2Step379EarlyControlZeroArena.checkBorrow (1) s2Step379EarlyControlLog.positiveWork=some s2Step379EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step379EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step379EarlyControlZeroArena (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step379EarlyControlPositiveArena,s2Step379EarlyControlZeroArena,s2Step379EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step379EarlyControl_class : compileHmrSourceClassLog s2Step379EarlyControlZeroArena false 777 s2Step379EarlyControlZeroPlan.top 0 797 s2Step379EarlyControlLog.positiveWork s2Step379EarlyControlLog.classWork=some s2Step379EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step379EarlyControlClassPlan s2Step379EarlyControlZeroArena false 777 s2Step379EarlyControlZeroPlan.top 0 797
  constructor
  · decide +kernel
  · exact s2Step379EarlyControl_classOwned
  · exact s2Step379EarlyControl_positiveBorrow
  · exact s2Step379EarlyControl_classEquality

private theorem s2Step379EarlyControl_entryRecordOwned : ([799, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step379EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step379EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step379EarlyControl_entrySigmaOwned : ([797, 254] : List Wire).toFinset⊆s2Step379EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step379EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step379EarlyControl_fitBorrow : s2Step379EarlyControlFlagArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step379EarlyControlLog.recordFresh=some s2Step379EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step379EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step379EarlyControlFlagArena (fun q => (0≤q ∧ q<915)) rfl
      decide +kernel
    · ext q
      simp [s2Step379EarlyControlFittedArena,s2Step379EarlyControlFlagArena,s2Step379EarlyControlLog,arenaWires]

private theorem s2Step379EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step379EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step379EarlyControlFlagArena (fun q => (0≤q ∧ q<915)) rfl
  decide +kernel

private theorem s2Step379EarlyControl_fit : compileHmrRecordGrowLog s2Step379EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step379EarlyControlLog.recordFresh=some s2Step379EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step379EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step379EarlyControl_fitBorrow

private theorem s2Step379EarlyControl_flagsBorrow : s2Step379EarlyControlEqualityArena.checkBorrow (6) s2Step379EarlyControlLog.flagWork=some s2Step379EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step379EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step379EarlyControlEqualityArena (fun q => (0≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step379EarlyControlFlagArena,s2Step379EarlyControlEqualityArena,s2Step379EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step379EarlyControl_flagsOwned : ([793, 253, 252, 251] : List Wire).toFinset⊆s2Step379EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step379EarlyControlEqualityArena (fun q => (0≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step379EarlyControl_flags : compileHmrFlagsLog s2Step379EarlyControlClassPlan.equalityArena s2Step379EarlyControlClassPlan.equality.top 253 252 251 s2Step379EarlyControlLog.flagWork=some s2Step379EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step379EarlyControl_flagsOwned⟩
  · exact s2Step379EarlyControl_flagsBorrow

private theorem s2Step379EarlyControl_historyBorrow : s2Step379EarlyControlArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step379EarlyControlLog.recordFresh=some s2Step379EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step379EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step379EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step379EarlyControlHistoryArena,s2Step379EarlyControlArena,s2Step379EarlyControlLog,arenaWires]

private theorem s2Step379EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step379EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step379EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step379EarlyControl_history : compileHmrRecordGrowLog s2Step379EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step379EarlyControlLog.recordFresh=some s2Step379EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step379EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step379EarlyControl_historyBorrow

private theorem s2Step379EarlyControl_sigmaOwned : ([254, 797] : List Wire).toFinset⊆s2Step379EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step379EarlyControlHistoryArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step379EarlyControl_sigmaReleaseOwned : ([797] : List Wire).toFinset⊆s2Step379EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step379EarlyControlHistoryArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step379EarlyControl_sigmaRelease : s2Step379EarlyControlHistoryArena.release {797} (fun _ => false)=some s2Step379EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step379EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step379EarlyControlSigmaArena,s2Step379EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step379EarlyControl_sigma : compileHmrSigmaDropLog s2Step379EarlyControlHistoryArena false 0 0 254 797 []=some s2Step379EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step379EarlyControl_sigmaOwned⟩
  · exact s2Step379EarlyControl_sigmaRelease

private theorem s2Step379EarlyControl_zeroBorrow : s2Step379EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step379EarlyControlLog.zeroWork=some s2Step379EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step379EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step379EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step379EarlyControlZeroArena,s2Step379EarlyControlArena,s2Step379EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step379EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step379EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step379EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step379EarlyControl_zero : compileHmrEqualityLog s2Step379EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step379EarlyControlLog.zeroWork=some (s2Step379EarlyControlZeroArena,s2Step379EarlyControlLog.zeroWork,s2Step379EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step379EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step379EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step379EarlyControl_logged : s2Step379EarlyControlPlan.Logged s2Step379EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 797 254 253 252 251 799 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step379EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step379EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step379EarlyControl_zero
  · exact s2Step379EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step379EarlyControl_flags
  · exact s2Step379EarlyControl_fit
  · exact s2Step379EarlyControl_history
  · exact s2Step379EarlyControl_sigma
  · exact s2Step379EarlyControl_branch

private theorem s2Step379EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step379EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 797 254 253 252 251 799 60 s2Step379EarlyControlLog=some s2Step379EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step379EarlyControlPlan s2Step379EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 797 254 253 252 251 799 60 s2Step379EarlyControl_logged

private def s2Step379EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593],768⟩

private def s2Step379EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826, 789, 800],770⟩

private def s2Step379EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81],769⟩

private def s2Step379EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 596, 595, 594, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811, 796, 802],771⟩

private def s2Step379FrontBank : WindowBank := ⟨s2Step379EntryFRow,s2Step379EntryGRow,s2Step379EntryFvRow,s2Step379EntryGvRow⟩

private def s2Step379Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 803, 768]

private def s2Step379Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 785, 769]

private def s2Step379Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826, 789, 800, 842, 770]

private def s2Step379Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 596, 595, 594, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811, 796, 802, 824, 771]

private theorem s2Step379Counter_apart : Disjoint s2Step379HeadFvAfter.live s2Step379CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step379HeadFvAfter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<810) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step379Counter_borrowed : s2Step379HeadFvAfter.checkBorrow 4 s2Step379CounterWork=some s2Step379CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step379HeadFvAfter s2Step379CounterDuring s2Step379CounterWork.toFinset s2Step379Counter_bounded s2Step379Counter_apart rfl

private theorem s2Step379Counter_owned : (797::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step379HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step379HeadFvAfter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<810) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step379Counter_checked : compileHmrCounterStepLog s2Step379HeadFvAfter true 797 [772, 773, 774, 775, 776, 777] s2Step379CounterWork=some s2Step379CounterDuring := by
  have owned : ∀q∈797::[772, 773, 774, 775, 776, 777],q∈s2Step379HeadFvAfter.live := fun q hq => s2Step379Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step379Counter_borrowed

private def s2Step379EntryFAfter : Arena := s2Step379EntryFBefore

private theorem s2Step379EntryBank_incomingDistinct : ([s2Step379EntryFRow,s2Step379EntryGRow,s2Step379EntryFvRow,s2Step379EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step379EntryF_Incoming : rowsOwned s2Step379EntryFBefore [s2Step379EntryFRow,s2Step379EntryGRow,s2Step379EntryFvRow,s2Step379EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step379EntryFRow,s2Step379EntryGRow,s2Step379EntryFvRow,s2Step379EntryGvRow] 0 s2Step379EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step379EntryFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step379EntryBank_outgoingOwned : rowsOwned s2Step379EntryGvAfter [s2Step379EntryFOut,s2Step379EntryGOut,s2Step379EntryFvOut,s2Step379EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step379EntryGvAfter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step379EntryF_Outgoing : rowsOwned s2Step379EntryGvAfter [s2Step379EntryFOut,s2Step379EntryGOut,s2Step379EntryFvOut,s2Step379EntryGvOut] :=
  hmrRows_owned_drop s2Step379EntryGvAfter [s2Step379EntryFOut,s2Step379EntryGOut,s2Step379EntryFvOut,s2Step379EntryGvOut] 0 s2Step379EntryBank_outgoingOwned

private theorem s2Step379EntryF_distinct : (s2Step379EntryFRow.sign::s2Step379EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step379EntryF_owned : (s2Step379EntryFRow.sign::s2Step379EntryFRow.payload).toFinset⊆s2Step379EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step379EntryFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step379EntryF_reserved : s2Step379EntryFBefore.reserve s2Step379EntryFFresh.toFinset=some s2Step379EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step379EntryFFresh,arenaWires]
  · norm_num [s2Step379EntryFBefore,s2Step379EntryFFresh,arenaWires]
  · simp only [s2Step379EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step379EntryF_checked : planRowResizeLog s2Step379EntryFBefore s2Step379EntryFRow 82 s2Step379EntryFFresh=
    some (s2Step379EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593],768⟩,growRow 768 s2Step379EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step379EntryFBefore s2Step379EntryFAfter s2Step379EntryFRow 82 s2Step379EntryFFresh
    s2Step379EntryF_distinct s2Step379EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step379EntryF_reserved
  have rowEq : WindowRow.mk (s2Step379EntryFRow.payload++s2Step379EntryFFresh) s2Step379EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step379EntryFvAfter : Arena := s2Step379EntryFBefore

private def s2Step379EntryFvBefore : Arena := s2Step379EntryFBefore

private theorem s2Step379EntryFv_Incoming : rowsOwned s2Step379EntryFvBefore [s2Step379EntryFvRow,s2Step379EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step379EntryFRow,s2Step379EntryGRow,s2Step379EntryFvRow,s2Step379EntryGvRow] 2 s2Step379EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step379EntryFvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step379EntryFv_Outgoing : rowsOwned s2Step379EntryGvAfter [s2Step379EntryFvOut,s2Step379EntryGvOut] :=
  hmrRows_owned_drop s2Step379EntryGvAfter [s2Step379EntryFOut,s2Step379EntryGOut,s2Step379EntryFvOut,s2Step379EntryGvOut] 2 s2Step379EntryBank_outgoingOwned

private theorem s2Step379EntryFv_distinct : (s2Step379EntryFvRow.sign::s2Step379EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step379EntryFv_owned : (s2Step379EntryFvRow.sign::s2Step379EntryFvRow.payload).toFinset⊆s2Step379EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step379EntryFvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step379EntryFv_reserved : s2Step379EntryFvBefore.reserve s2Step379EntryFvFresh.toFinset=some s2Step379EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step379EntryFvFresh,arenaWires]
  · norm_num [s2Step379EntryFvBefore,s2Step379EntryFBefore,s2Step379EntryFvFresh,arenaWires]
  · simp only [s2Step379EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step379EntryFv_checked : planRowResizeLog s2Step379EntryFvBefore s2Step379EntryFvRow 205 s2Step379EntryFvFresh=
    some (s2Step379EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826, 789, 800],770⟩,growRow 770 s2Step379EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step379EntryFvBefore s2Step379EntryFvAfter s2Step379EntryFvRow 205 s2Step379EntryFvFresh
    s2Step379EntryFv_distinct s2Step379EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step379EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step379EntryFvRow.payload++s2Step379EntryFvFresh) s2Step379EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826, 789, 800],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step379EntryGAfter : Arena := s2Step379EntryFBefore

private def s2Step379EntryGBefore : Arena := s2Step379EntryFBefore

private theorem s2Step379EntryG_Incoming : rowsOwned s2Step379EntryGBefore [s2Step379EntryGRow,s2Step379EntryFvRow,s2Step379EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step379EntryFRow,s2Step379EntryGRow,s2Step379EntryFvRow,s2Step379EntryGvRow] 1 s2Step379EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step379EntryGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step379EntryG_Outgoing : rowsOwned s2Step379EntryGvAfter [s2Step379EntryGOut,s2Step379EntryFvOut,s2Step379EntryGvOut] :=
  hmrRows_owned_drop s2Step379EntryGvAfter [s2Step379EntryFOut,s2Step379EntryGOut,s2Step379EntryFvOut,s2Step379EntryGvOut] 1 s2Step379EntryBank_outgoingOwned

private theorem s2Step379EntryG_distinct : (s2Step379EntryGRow.sign::s2Step379EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step379EntryG_owned : (s2Step379EntryGRow.sign::s2Step379EntryGRow.payload).toFinset⊆s2Step379EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step379EntryGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step379EntryG_reserved : s2Step379EntryGBefore.reserve s2Step379EntryGFresh.toFinset=some s2Step379EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step379EntryGFresh,arenaWires]
  · norm_num [s2Step379EntryGBefore,s2Step379EntryFBefore,s2Step379EntryGFresh,arenaWires]
  · simp only [s2Step379EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step379EntryG_checked : planRowResizeLog s2Step379EntryGBefore s2Step379EntryGRow 82 s2Step379EntryGFresh=
    some (s2Step379EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81],769⟩,growRow 769 s2Step379EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step379EntryGBefore s2Step379EntryGAfter s2Step379EntryGRow 82 s2Step379EntryGFresh
    s2Step379EntryG_distinct s2Step379EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step379EntryG_reserved
  have rowEq : WindowRow.mk (s2Step379EntryGRow.payload++s2Step379EntryGFresh) s2Step379EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step379EntryGvBefore : Arena := s2Step379EntryFBefore

private theorem s2Step379EntryGv_Incoming : rowsOwned s2Step379EntryGvBefore [s2Step379EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step379EntryFRow,s2Step379EntryGRow,s2Step379EntryFvRow,s2Step379EntryGvRow] 3 s2Step379EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step379EntryGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step379EntryGv_Outgoing : rowsOwned s2Step379EntryGvAfter [s2Step379EntryGvOut] :=
  hmrRows_owned_drop s2Step379EntryGvAfter [s2Step379EntryFOut,s2Step379EntryGOut,s2Step379EntryFvOut,s2Step379EntryGvOut] 3 s2Step379EntryBank_outgoingOwned

private theorem s2Step379EntryGv_distinct : (s2Step379EntryGvRow.sign::s2Step379EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step379EntryGv_owned : (s2Step379EntryGvRow.sign::s2Step379EntryGvRow.payload).toFinset⊆s2Step379EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step379EntryGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step379EntryGv_reserved : s2Step379EntryGvBefore.reserve s2Step379EntryGvFresh.toFinset=some s2Step379EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step379EntryGvFresh,arenaWires]
  · norm_num [s2Step379EntryGvBefore,s2Step379EntryFBefore,s2Step379EntryGvFresh,arenaWires]
  · simp only [s2Step379EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step379EntryGv_checked : planRowResizeLog s2Step379EntryGvBefore s2Step379EntryGvRow 205 s2Step379EntryGvFresh=
    some (s2Step379EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 596, 595, 594, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811, 796, 802],771⟩,growRow 771 s2Step379EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step379EntryGvBefore s2Step379EntryGvAfter s2Step379EntryGvRow 205 s2Step379EntryGvFresh
    s2Step379EntryGv_distinct s2Step379EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step379EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step379EntryGvRow.payload++s2Step379EntryGvFresh) s2Step379EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 596, 595, 594, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811, 796, 802],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step379EntryBank_rows : planWindowRowsLog s2Step379EntryFBefore [(s2Step379EntryFRow,82),(s2Step379EntryGRow,82),(s2Step379EntryFvRow,205),(s2Step379EntryGvRow,205)] [s2Step379EntryFFresh,s2Step379EntryGFresh,s2Step379EntryFvFresh,s2Step379EntryGvFresh]=
    some (s2Step379EntryGvAfter,[s2Step379EntryFOut,s2Step379EntryGOut,s2Step379EntryFvOut,s2Step379EntryGvOut],(growRow 768 s2Step379EntryFFresh ++ (growRow 769 s2Step379EntryGFresh ++ (growRow 770 s2Step379EntryFvFresh ++ (growRow 771 s2Step379EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step379EntryGvAfter [] []=some (s2Step379EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step379EntryGvBefore s2Step379EntryGvAfter s2Step379EntryGvAfter
    s2Step379EntryGvRow s2Step379EntryGvOut 205 s2Step379EntryGvFresh [] [] []
    (growRow 771 s2Step379EntryGvFresh) ([]) s2Step379EntryGv_Incoming s2Step379EntryGv_checked h4 s2Step379EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step379EntryFvBefore s2Step379EntryFvAfter s2Step379EntryGvAfter
    s2Step379EntryFvRow s2Step379EntryFvOut 205 s2Step379EntryFvFresh [(s2Step379EntryGvRow,205)] [s2Step379EntryGvFresh] [s2Step379EntryGvOut]
    (growRow 770 s2Step379EntryFvFresh) ((growRow 771 s2Step379EntryGvFresh ++ [])) s2Step379EntryFv_Incoming s2Step379EntryFv_checked h3 s2Step379EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step379EntryGBefore s2Step379EntryGAfter s2Step379EntryGvAfter
    s2Step379EntryGRow s2Step379EntryGOut 82 s2Step379EntryGFresh [(s2Step379EntryFvRow,205),(s2Step379EntryGvRow,205)] [s2Step379EntryFvFresh,s2Step379EntryGvFresh] [s2Step379EntryFvOut,s2Step379EntryGvOut]
    (growRow 769 s2Step379EntryGFresh) ((growRow 770 s2Step379EntryFvFresh ++ (growRow 771 s2Step379EntryGvFresh ++ []))) s2Step379EntryG_Incoming s2Step379EntryG_checked h2 s2Step379EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step379EntryFBefore s2Step379EntryFAfter s2Step379EntryGvAfter
    s2Step379EntryFRow s2Step379EntryFOut 82 s2Step379EntryFFresh [(s2Step379EntryGRow,82),(s2Step379EntryFvRow,205),(s2Step379EntryGvRow,205)] [s2Step379EntryGFresh,s2Step379EntryFvFresh,s2Step379EntryGvFresh] [s2Step379EntryGOut,s2Step379EntryFvOut,s2Step379EntryGvOut]
    (growRow 768 s2Step379EntryFFresh) ((growRow 769 s2Step379EntryGFresh ++ (growRow 770 s2Step379EntryFvFresh ++ (growRow 771 s2Step379EntryGvFresh ++ [])))) s2Step379EntryF_Incoming s2Step379EntryF_checked h1 s2Step379EntryF_Outgoing
  exact h0

private theorem s2Step379EntryBank_checked : compileHmrBankResizeLog .entry s2Step379EntryFBefore ⟨s2Step379EntryFRow,s2Step379EntryGRow,s2Step379EntryFvRow,s2Step379EntryGvRow⟩ ⟨82,82,205,205⟩ [s2Step379EntryFFresh,s2Step379EntryGFresh,s2Step379EntryFvFresh,s2Step379EntryGvFresh]=
    some (s2Step379EntryGvAfter,⟨s2Step379EntryFOut,s2Step379EntryGOut,s2Step379EntryFvOut,s2Step379EntryGvOut⟩,(growRow 768 s2Step379EntryFFresh ++ (growRow 769 s2Step379EntryGFresh ++ (growRow 770 s2Step379EntryFvFresh ++ (growRow 771 s2Step379EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step379EntryBank_rows]
  rfl

private def s2Step379ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<81) ∨ (82≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step379ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<81) ∨ (82≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<810) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step379ExitFBefore : Arena := s2Step379ExitGAfter

private def s2Step379ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 803],768⟩

private def s2Step379ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826, 789, 800, 842],770⟩

private def s2Step379ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 785],769⟩

private def s2Step379ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 596, 595, 594, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811, 796, 802, 824],771⟩

private theorem s2Step379ExitBank_incomingDistinct : ([s2Step379ExitGRow,s2Step379ExitFRow,s2Step379ExitFvRow,s2Step379ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step379ExitF_Incoming : rowsOwned s2Step379ExitFBefore [s2Step379ExitFRow,s2Step379ExitFvRow,s2Step379ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step379ExitGRow,s2Step379ExitFRow,s2Step379ExitFvRow,s2Step379ExitGvRow] 1 s2Step379ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step379ExitFBefore (fun q => (0≤q ∧ q<81) ∨ (82≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<810) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step379ExitBank_outgoingOwned : rowsOwned s2Step379ExitGvAfter [s2Step379ExitGOut,s2Step379ExitFOut,s2Step379ExitFvOut,s2Step379ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step379ExitGvAfter (fun q => (0≤q ∧ q<81) ∨ (82≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step379ExitF_Outgoing : rowsOwned s2Step379ExitGvAfter [s2Step379ExitFOut,s2Step379ExitFvOut,s2Step379ExitGvOut] :=
  hmrRows_owned_drop s2Step379ExitGvAfter [s2Step379ExitGOut,s2Step379ExitFOut,s2Step379ExitFvOut,s2Step379ExitGvOut] 1 s2Step379ExitBank_outgoingOwned

private theorem s2Step379ExitF_distinct : (s2Step379ExitFRow.sign::s2Step379ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step379ExitF_owned : (s2Step379ExitFRow.sign::s2Step379ExitFRow.payload).toFinset⊆s2Step379ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step379ExitFBefore (fun q => (0≤q ∧ q<81) ∨ (82≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<810) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step379ExitF_retired : s2Step379ExitFBefore.retireSet s2Step379ExitFExtra.toFinset=s2Step379ExitFAfter := by
  unfold Arena.retireSet s2Step379ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step379ExitFBefore,s2Step379ExitGAfter,s2Step379ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step379ExitF_checked : planRowResizeLog s2Step379ExitFBefore s2Step379ExitFRow 82 []=
    some (s2Step379ExitFAfter,s2Step379ExitFOut,shrinkRow 768 s2Step379ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step379ExitFBefore s2Step379ExitFRow 82 s2Step379ExitF_distinct s2Step379ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step379ExitFRow.payload.take 82) s2Step379ExitFRow.sign=s2Step379ExitFOut := by decide +kernel
  have hi : s2Step379ExitFRow.payload.drop 82=s2Step379ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step379ExitF_retired] at result
  exact result

private def s2Step379ExitFvAfter : Arena := s2Step379ExitFAfter

private def s2Step379ExitFvBefore : Arena := s2Step379ExitFAfter

private theorem s2Step379ExitFv_Incoming : rowsOwned s2Step379ExitFvBefore [s2Step379ExitFvRow,s2Step379ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step379ExitGRow,s2Step379ExitFRow,s2Step379ExitFvRow,s2Step379ExitGvRow] 2 s2Step379ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step379ExitFvBefore (fun q => (0≤q ∧ q<81) ∨ (82≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step379ExitFv_Outgoing : rowsOwned s2Step379ExitGvAfter [s2Step379ExitFvOut,s2Step379ExitGvOut] :=
  hmrRows_owned_drop s2Step379ExitGvAfter [s2Step379ExitGOut,s2Step379ExitFOut,s2Step379ExitFvOut,s2Step379ExitGvOut] 2 s2Step379ExitBank_outgoingOwned

private theorem s2Step379ExitFv_distinct : (s2Step379ExitFvRow.sign::s2Step379ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step379ExitFv_owned : (s2Step379ExitFvRow.sign::s2Step379ExitFvRow.payload).toFinset⊆s2Step379ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step379ExitFvBefore (fun q => (0≤q ∧ q<81) ∨ (82≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step379ExitFv_reserved : s2Step379ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step379ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step379ExitFv_checked : planRowResizeLog s2Step379ExitFvBefore s2Step379ExitFvRow 206 []=
    some (s2Step379ExitFvAfter,s2Step379ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step379ExitFvBefore s2Step379ExitFvAfter s2Step379ExitFvRow 206 []
    s2Step379ExitFv_distinct s2Step379ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step379ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step379ExitFvRow.payload++[]) s2Step379ExitFvRow.sign=s2Step379ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step379ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<810) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private theorem s2Step379ExitG_Incoming : rowsOwned s2Step379ExitGBefore [s2Step379ExitGRow,s2Step379ExitFRow,s2Step379ExitFvRow,s2Step379ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step379ExitGRow,s2Step379ExitFRow,s2Step379ExitFvRow,s2Step379ExitGvRow] 0 s2Step379ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step379ExitGBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<810) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step379ExitG_Outgoing : rowsOwned s2Step379ExitGvAfter [s2Step379ExitGOut,s2Step379ExitFOut,s2Step379ExitFvOut,s2Step379ExitGvOut] :=
  hmrRows_owned_drop s2Step379ExitGvAfter [s2Step379ExitGOut,s2Step379ExitFOut,s2Step379ExitFvOut,s2Step379ExitGvOut] 0 s2Step379ExitBank_outgoingOwned

private theorem s2Step379ExitG_distinct : (s2Step379ExitGRow.sign::s2Step379ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step379ExitG_owned : (s2Step379ExitGRow.sign::s2Step379ExitGRow.payload).toFinset⊆s2Step379ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step379ExitGBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<810) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step379ExitG_retired : s2Step379ExitGBefore.retireSet s2Step379ExitGExtra.toFinset=s2Step379ExitGAfter := by
  unfold Arena.retireSet s2Step379ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step379ExitGBefore,s2Step379ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step379ExitG_checked : planRowResizeLog s2Step379ExitGBefore s2Step379ExitGRow 81 []=
    some (s2Step379ExitGAfter,s2Step379ExitGOut,shrinkRow 769 s2Step379ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step379ExitGBefore s2Step379ExitGRow 81 s2Step379ExitG_distinct s2Step379ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step379ExitGRow.payload.take 81) s2Step379ExitGRow.sign=s2Step379ExitGOut := by decide +kernel
  have hi : s2Step379ExitGRow.payload.drop 81=s2Step379ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step379ExitG_retired] at result
  exact result

private def s2Step379ExitGvBefore : Arena := s2Step379ExitFAfter

private theorem s2Step379ExitGv_Incoming : rowsOwned s2Step379ExitGvBefore [s2Step379ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step379ExitGRow,s2Step379ExitFRow,s2Step379ExitFvRow,s2Step379ExitGvRow] 3 s2Step379ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step379ExitGvBefore (fun q => (0≤q ∧ q<81) ∨ (82≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step379ExitGv_Outgoing : rowsOwned s2Step379ExitGvAfter [s2Step379ExitGvOut] :=
  hmrRows_owned_drop s2Step379ExitGvAfter [s2Step379ExitGOut,s2Step379ExitFOut,s2Step379ExitFvOut,s2Step379ExitGvOut] 3 s2Step379ExitBank_outgoingOwned

private theorem s2Step379ExitGv_distinct : (s2Step379ExitGvRow.sign::s2Step379ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step379ExitGv_owned : (s2Step379ExitGvRow.sign::s2Step379ExitGvRow.payload).toFinset⊆s2Step379ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step379ExitGvBefore (fun q => (0≤q ∧ q<81) ∨ (82≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step379ExitGv_retired : s2Step379ExitGvBefore.retireSet s2Step379ExitGvExtra.toFinset=s2Step379ExitGvAfter := by
  unfold Arena.retireSet s2Step379ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step379ExitGvBefore,s2Step379ExitFAfter,s2Step379ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step379ExitGv_checked : planRowResizeLog s2Step379ExitGvBefore s2Step379ExitGvRow 205 []=
    some (s2Step379ExitGvAfter,s2Step379ExitGvOut,shrinkRow 771 s2Step379ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step379ExitGvBefore s2Step379ExitGvRow 205 s2Step379ExitGv_distinct s2Step379ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step379ExitGvRow.payload.take 205) s2Step379ExitGvRow.sign=s2Step379ExitGvOut := by decide +kernel
  have hi : s2Step379ExitGvRow.payload.drop 205=s2Step379ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step379ExitGv_retired] at result
  exact result

private theorem s2Step379ExitBank_rows : planWindowRowsLog s2Step379ExitGBefore [(s2Step379ExitGRow,81),(s2Step379ExitFRow,82),(s2Step379ExitFvRow,206),(s2Step379ExitGvRow,205)] [[],[],[],[]]=
    some (s2Step379ExitGvAfter,[s2Step379ExitGOut,s2Step379ExitFOut,s2Step379ExitFvOut,s2Step379ExitGvOut],(shrinkRow 769 s2Step379ExitGExtra ++ (shrinkRow 768 s2Step379ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step379ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step379ExitGvAfter [] []=some (s2Step379ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step379ExitGvBefore s2Step379ExitGvAfter s2Step379ExitGvAfter
    s2Step379ExitGvRow s2Step379ExitGvOut 205 [] [] [] []
    (shrinkRow 771 s2Step379ExitGvExtra) ([]) s2Step379ExitGv_Incoming s2Step379ExitGv_checked h4 s2Step379ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step379ExitFvBefore s2Step379ExitFvAfter s2Step379ExitGvAfter
    s2Step379ExitFvRow s2Step379ExitFvOut 206 [] [(s2Step379ExitGvRow,205)] [[]] [s2Step379ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step379ExitGvExtra ++ [])) s2Step379ExitFv_Incoming s2Step379ExitFv_checked h3 s2Step379ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step379ExitFBefore s2Step379ExitFAfter s2Step379ExitGvAfter
    s2Step379ExitFRow s2Step379ExitFOut 82 [] [(s2Step379ExitFvRow,206),(s2Step379ExitGvRow,205)] [[],[]] [s2Step379ExitFvOut,s2Step379ExitGvOut]
    (shrinkRow 768 s2Step379ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step379ExitGvExtra ++ []))) s2Step379ExitF_Incoming s2Step379ExitF_checked h2 s2Step379ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step379ExitGBefore s2Step379ExitGAfter s2Step379ExitGvAfter
    s2Step379ExitGRow s2Step379ExitGOut 81 [] [(s2Step379ExitFRow,82),(s2Step379ExitFvRow,206),(s2Step379ExitGvRow,205)] [[],[],[]] [s2Step379ExitFOut,s2Step379ExitFvOut,s2Step379ExitGvOut]
    (shrinkRow 769 s2Step379ExitGExtra) ((shrinkRow 768 s2Step379ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step379ExitGvExtra ++ [])))) s2Step379ExitG_Incoming s2Step379ExitG_checked h1 s2Step379ExitG_Outgoing
  exact h0

private theorem s2Step379ExitBank_checked : compileHmrBankResizeLog .exit s2Step379ExitGBefore ⟨s2Step379ExitFRow,s2Step379ExitGRow,s2Step379ExitFvRow,s2Step379ExitGvRow⟩ ⟨82,81,206,205⟩ [[],[],[],[]]=
    some (s2Step379ExitGvAfter,⟨s2Step379ExitFOut,s2Step379ExitGOut,s2Step379ExitFvOut,s2Step379ExitGvOut⟩,(shrinkRow 769 s2Step379ExitGExtra ++ (shrinkRow 768 s2Step379ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step379ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step379ExitBank_rows]
  rfl

private theorem s2Step379Add0_apart : Disjoint s2Step379Add0Arena.live s2Step379Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step379Add0Arena (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step379Add0_card : s2Step379Add0Arena.live.card=908 := by
  decide +kernel

private theorem s2Step379Add0_borrowed : s2Step379Add0Arena.checkBorrow (hmrHybridCount s2Step379Add0Arena s2Step379Add0B.length) s2Step379Add0Work=some s2Step379Add0During := by
  have len : s2Step379Add0Work.length=hmrHybridCount s2Step379Add0Arena s2Step379Add0B.length := by
    rw [hmrHybridCount,s2Step379Add0_card]
    decide +kernel
  have nd : s2Step379Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step379Add0Arena s2Step379Add0During s2Step379Add0Work.toFinset s2Step379Add0_bounded s2Step379Add0_apart rfl

private theorem s2Step379Add0_distinct : (810::799::835::(s2Step379Add0A++s2Step379Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step379Add0_owned : (810::799::835::(s2Step379Add0A++s2Step379Add0B)).toFinset⊆s2Step379Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step379Add0Arena (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step379Add0_checked : compileHmrHybridCinLog s2Step379Add0Arena 799 810 835 s2Step379Add0A s2Step379Add0B s2Step379Add0Work=some s2Step379Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step379Add0Arena s2Step379Add0During 799 810 835 s2Step379Add0A s2Step379Add0B s2Step379Add0Work
    (by decide +kernel) (by decide +kernel) s2Step379Add0_distinct
    (fun q hq => s2Step379Add0_owned (List.mem_toFinset.mpr hq)) s2Step379Add0_borrowed

private theorem s2Step379Add1_apart : Disjoint s2Step379Add1Arena.live s2Step379Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step379Add1Arena (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step379Add1_card : s2Step379Add1Arena.live.card=908 := by
  decide +kernel

private theorem s2Step379Add1_borrowed : s2Step379Add1Arena.checkBorrow (hmrHybridCount s2Step379Add1Arena s2Step379Add1B.length) s2Step379Add1Work=some s2Step379Add1During := by
  have len : s2Step379Add1Work.length=hmrHybridCount s2Step379Add1Arena s2Step379Add1B.length := by
    rw [hmrHybridCount,s2Step379Add1_card]
    decide +kernel
  have nd : s2Step379Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step379Add1Arena s2Step379Add1During s2Step379Add1Work.toFinset s2Step379Add1_bounded s2Step379Add1_apart rfl

private theorem s2Step379Add1_distinct : (810::799::835::(s2Step379Add1A++s2Step379Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step379Add1_owned : (810::799::835::(s2Step379Add1A++s2Step379Add1B)).toFinset⊆s2Step379Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step379Add1Arena (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step379Add1_checked : compileHmrHybridCinLog s2Step379Add1Arena 799 810 835 s2Step379Add1A s2Step379Add1B s2Step379Add1Work=some s2Step379Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step379Add1Arena s2Step379Add1During 799 810 835 s2Step379Add1A s2Step379Add1B s2Step379Add1Work
    (by decide +kernel) (by decide +kernel) s2Step379Add1_distinct
    (fun q hq => s2Step379Add1_owned (List.mem_toFinset.mpr hq)) s2Step379Add1_borrowed

private theorem s2Step379F4_apart : Disjoint (s2Step379Add0A++s2Step379Add0B).toFinset (s2Step379Add1A++s2Step379Add1B).toFinset := by
  have nd : ((s2Step379Add0A++s2Step379Add0B)++(s2Step379Add1A++s2Step379Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step379F4_carry : s2Step379F4FlagArena.checkBorrow 1 [835]=some s2Step379Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step379F4FlagArena,s2Step379HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step379F4FlagArena,s2Step379HeadFvAfter,s2Step379Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step379F4_distinct : (797::799::810::835::((s2Step379Add0A++s2Step379Add1A)++(s2Step379Add0B++s2Step379Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step379F4_flag : s2Step379HeadFvAfter.checkBorrow 1 [810]=some s2Step379F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step379HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step379F4_owned : (797::799::((s2Step379Add0A++s2Step379Add1A)++(s2Step379Add0B++s2Step379Add1B))).toFinset⊆s2Step379HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step379HeadFvAfter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<810) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step379F4_checked : compileHmrHybridF4Log s2Step379HeadFvAfter 797 799 s2Step379Add0A s2Step379Add0B s2Step379Add1A s2Step379Add1B [810] [835] s2Step379Add0Work s2Step379Add1Work=some s2Step379F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step379HeadFvAfter s2Step379F4FlagArena s2Step379Add0Arena s2Step379Add0During s2Step379Add1During 797 799
    s2Step379Add0A s2Step379Add0B s2Step379Add1A s2Step379Add1B [810] [835] s2Step379Add0Work s2Step379Add1Work
    (fun q hq => s2Step379F4_owned (List.mem_toFinset.mpr hq)) s2Step379F4_flag s2Step379F4_carry
    s2Step379F4_distinct s2Step379F4_apart s2Step379Add0_checked s2Step379Add1_checked

private theorem s2Step379Front_branch : s2Step379FrontSigmaArena.checkBorrow 1 [799]=some s2Step379HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step379FrontSigmaArena,s2Step379EntryGvAfter,s2Step379EntryFBefore,arenaWires]
  · ext q
    simp only [s2Step379FrontSigmaArena,s2Step379EntryGvAfter,s2Step379EntryFBefore,s2Step379HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step379Front_entry : HmrFrontEntryValid s2Step379EntryFBefore s2Step379FrontBank 82 205 ⟨82,81,206,205⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step379FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step379EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step379EntryFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step379FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step379Front_sigma : s2Step379EntryGvAfter.checkBorrow 1 [797]=some s2Step379FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step379EntryGvAfter,s2Step379EntryFBefore,arenaWires]
  · rfl

private def s2Step379HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step379HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step379HeadFBefore : Arena := s2Step379HeadGAfter

private def s2Step379HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593],768⟩

private def s2Step379HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826, 789, 800],770⟩

private def s2Step379HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81],769⟩

private def s2Step379HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 596, 595, 594, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811, 796, 802],771⟩

private theorem s2Step379HeadBank_incomingDistinct : ([s2Step379HeadGRow,s2Step379HeadFRow,s2Step379HeadGvRow,s2Step379HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step379HeadF_Incoming : rowsOwned s2Step379HeadFBefore [s2Step379HeadFRow,s2Step379HeadGvRow,s2Step379HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step379HeadGRow,s2Step379HeadFRow,s2Step379HeadGvRow,s2Step379HeadFvRow] 1 s2Step379HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step379HeadFBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step379HeadBank_outgoingOwned : rowsOwned s2Step379HeadFvAfter [s2Step379HeadGOut,s2Step379HeadFOut,s2Step379HeadGvOut,s2Step379HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step379HeadFvAfter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<810) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step379HeadF_Outgoing : rowsOwned s2Step379HeadFvAfter [s2Step379HeadFOut,s2Step379HeadGvOut,s2Step379HeadFvOut] :=
  hmrRows_owned_drop s2Step379HeadFvAfter [s2Step379HeadGOut,s2Step379HeadFOut,s2Step379HeadGvOut,s2Step379HeadFvOut] 1 s2Step379HeadBank_outgoingOwned

private theorem s2Step379HeadF_distinct : (s2Step379HeadFRow.sign::s2Step379HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step379HeadF_owned : (s2Step379HeadFRow.sign::s2Step379HeadFRow.payload).toFinset⊆s2Step379HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step379HeadFBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step379HeadF_reserved : s2Step379HeadFBefore.reserve s2Step379HeadFFresh.toFinset=some s2Step379HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step379HeadFFresh,arenaWires]
  · norm_num [s2Step379HeadFBefore,s2Step379HeadGAfter,s2Step379HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step379HeadFAfter,s2Step379HeadFBefore,s2Step379HeadGAfter,s2Step379HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step379HeadF_checked : planRowResizeLog s2Step379HeadFBefore s2Step379HeadFRow 83 s2Step379HeadFFresh=
    some (s2Step379HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 803],768⟩,growRow 768 s2Step379HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step379HeadFBefore s2Step379HeadFAfter s2Step379HeadFRow 83 s2Step379HeadFFresh
    s2Step379HeadF_distinct s2Step379HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step379HeadF_reserved
  have rowEq : WindowRow.mk (s2Step379HeadFRow.payload++s2Step379HeadFFresh) s2Step379HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 803],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step379HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<810) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step379HeadFvBefore : Arena := s2Step379HeadGvAfter

private theorem s2Step379HeadFv_Incoming : rowsOwned s2Step379HeadFvBefore [s2Step379HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step379HeadGRow,s2Step379HeadFRow,s2Step379HeadGvRow,s2Step379HeadFvRow] 3 s2Step379HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step379HeadFvBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<810) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step379HeadFv_Outgoing : rowsOwned s2Step379HeadFvAfter [s2Step379HeadFvOut] :=
  hmrRows_owned_drop s2Step379HeadFvAfter [s2Step379HeadGOut,s2Step379HeadFOut,s2Step379HeadGvOut,s2Step379HeadFvOut] 3 s2Step379HeadBank_outgoingOwned

private theorem s2Step379HeadFv_distinct : (s2Step379HeadFvRow.sign::s2Step379HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step379HeadFv_owned : (s2Step379HeadFvRow.sign::s2Step379HeadFvRow.payload).toFinset⊆s2Step379HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step379HeadFvBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<810) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step379HeadFv_reserved : s2Step379HeadFvBefore.reserve s2Step379HeadFvFresh.toFinset=some s2Step379HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step379HeadFvFresh,arenaWires]
  · norm_num [s2Step379HeadFvBefore,s2Step379HeadGvAfter,s2Step379HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step379HeadFvAfter,s2Step379HeadFvBefore,s2Step379HeadGvAfter,s2Step379HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step379HeadFv_checked : planRowResizeLog s2Step379HeadFvBefore s2Step379HeadFvRow 206 s2Step379HeadFvFresh=
    some (s2Step379HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826, 789, 800, 842],770⟩,growRow 770 s2Step379HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step379HeadFvBefore s2Step379HeadFvAfter s2Step379HeadFvRow 206 s2Step379HeadFvFresh
    s2Step379HeadFv_distinct s2Step379HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step379HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step379HeadFvRow.payload++s2Step379HeadFvFresh) s2Step379HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826, 789, 800, 842],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step379HeadG_Incoming : rowsOwned s2Step379HeadGBefore [s2Step379HeadGRow,s2Step379HeadFRow,s2Step379HeadGvRow,s2Step379HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step379HeadGRow,s2Step379HeadFRow,s2Step379HeadGvRow,s2Step379HeadFvRow] 0 s2Step379HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step379HeadGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step379HeadG_Outgoing : rowsOwned s2Step379HeadFvAfter [s2Step379HeadGOut,s2Step379HeadFOut,s2Step379HeadGvOut,s2Step379HeadFvOut] :=
  hmrRows_owned_drop s2Step379HeadFvAfter [s2Step379HeadGOut,s2Step379HeadFOut,s2Step379HeadGvOut,s2Step379HeadFvOut] 0 s2Step379HeadBank_outgoingOwned

private theorem s2Step379HeadG_distinct : (s2Step379HeadGRow.sign::s2Step379HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step379HeadG_owned : (s2Step379HeadGRow.sign::s2Step379HeadGRow.payload).toFinset⊆s2Step379HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step379HeadGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step379HeadG_reserved : s2Step379HeadGBefore.reserve s2Step379HeadGFresh.toFinset=some s2Step379HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step379HeadGFresh,arenaWires]
  · norm_num [s2Step379HeadGBefore,s2Step379HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step379HeadGAfter,s2Step379HeadGBefore,s2Step379HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step379HeadG_checked : planRowResizeLog s2Step379HeadGBefore s2Step379HeadGRow 83 s2Step379HeadGFresh=
    some (s2Step379HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 785],769⟩,growRow 769 s2Step379HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step379HeadGBefore s2Step379HeadGAfter s2Step379HeadGRow 83 s2Step379HeadGFresh
    s2Step379HeadG_distinct s2Step379HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step379HeadG_reserved
  have rowEq : WindowRow.mk (s2Step379HeadGRow.payload++s2Step379HeadGFresh) s2Step379HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 785],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step379HeadGvBefore : Arena := s2Step379HeadFAfter

private theorem s2Step379HeadGv_Incoming : rowsOwned s2Step379HeadGvBefore [s2Step379HeadGvRow,s2Step379HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step379HeadGRow,s2Step379HeadFRow,s2Step379HeadGvRow,s2Step379HeadFvRow] 2 s2Step379HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step379HeadGvBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step379HeadGv_Outgoing : rowsOwned s2Step379HeadFvAfter [s2Step379HeadGvOut,s2Step379HeadFvOut] :=
  hmrRows_owned_drop s2Step379HeadFvAfter [s2Step379HeadGOut,s2Step379HeadFOut,s2Step379HeadGvOut,s2Step379HeadFvOut] 2 s2Step379HeadBank_outgoingOwned

private theorem s2Step379HeadGv_distinct : (s2Step379HeadGvRow.sign::s2Step379HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step379HeadGv_owned : (s2Step379HeadGvRow.sign::s2Step379HeadGvRow.payload).toFinset⊆s2Step379HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step379HeadGvBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step379HeadGv_reserved : s2Step379HeadGvBefore.reserve s2Step379HeadGvFresh.toFinset=some s2Step379HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step379HeadGvFresh,arenaWires]
  · norm_num [s2Step379HeadGvBefore,s2Step379HeadFAfter,s2Step379HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step379HeadGvAfter,s2Step379HeadGvBefore,s2Step379HeadFAfter,s2Step379HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step379HeadGv_checked : planRowResizeLog s2Step379HeadGvBefore s2Step379HeadGvRow 206 s2Step379HeadGvFresh=
    some (s2Step379HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 596, 595, 594, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811, 796, 802, 824],771⟩,growRow 771 s2Step379HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step379HeadGvBefore s2Step379HeadGvAfter s2Step379HeadGvRow 206 s2Step379HeadGvFresh
    s2Step379HeadGv_distinct s2Step379HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step379HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step379HeadGvRow.payload++s2Step379HeadGvFresh) s2Step379HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 596, 595, 594, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811, 796, 802, 824],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step379HeadBank_rows : planWindowRowsLog s2Step379HeadGBefore [(s2Step379HeadGRow,83),(s2Step379HeadFRow,83),(s2Step379HeadGvRow,206),(s2Step379HeadFvRow,206)] [s2Step379HeadGFresh,s2Step379HeadFFresh,s2Step379HeadGvFresh,s2Step379HeadFvFresh]=
    some (s2Step379HeadFvAfter,[s2Step379HeadGOut,s2Step379HeadFOut,s2Step379HeadGvOut,s2Step379HeadFvOut],(growRow 769 s2Step379HeadGFresh ++ (growRow 768 s2Step379HeadFFresh ++ (growRow 771 s2Step379HeadGvFresh ++ (growRow 770 s2Step379HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step379HeadFvAfter [] []=some (s2Step379HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step379HeadFvBefore s2Step379HeadFvAfter s2Step379HeadFvAfter
    s2Step379HeadFvRow s2Step379HeadFvOut 206 s2Step379HeadFvFresh [] [] []
    (growRow 770 s2Step379HeadFvFresh) ([]) s2Step379HeadFv_Incoming s2Step379HeadFv_checked h4 s2Step379HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step379HeadGvBefore s2Step379HeadGvAfter s2Step379HeadFvAfter
    s2Step379HeadGvRow s2Step379HeadGvOut 206 s2Step379HeadGvFresh [(s2Step379HeadFvRow,206)] [s2Step379HeadFvFresh] [s2Step379HeadFvOut]
    (growRow 771 s2Step379HeadGvFresh) ((growRow 770 s2Step379HeadFvFresh ++ [])) s2Step379HeadGv_Incoming s2Step379HeadGv_checked h3 s2Step379HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step379HeadFBefore s2Step379HeadFAfter s2Step379HeadFvAfter
    s2Step379HeadFRow s2Step379HeadFOut 83 s2Step379HeadFFresh [(s2Step379HeadGvRow,206),(s2Step379HeadFvRow,206)] [s2Step379HeadGvFresh,s2Step379HeadFvFresh] [s2Step379HeadGvOut,s2Step379HeadFvOut]
    (growRow 768 s2Step379HeadFFresh) ((growRow 771 s2Step379HeadGvFresh ++ (growRow 770 s2Step379HeadFvFresh ++ []))) s2Step379HeadF_Incoming s2Step379HeadF_checked h2 s2Step379HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step379HeadGBefore s2Step379HeadGAfter s2Step379HeadFvAfter
    s2Step379HeadGRow s2Step379HeadGOut 83 s2Step379HeadGFresh [(s2Step379HeadFRow,83),(s2Step379HeadGvRow,206),(s2Step379HeadFvRow,206)] [s2Step379HeadFFresh,s2Step379HeadGvFresh,s2Step379HeadFvFresh] [s2Step379HeadFOut,s2Step379HeadGvOut,s2Step379HeadFvOut]
    (growRow 769 s2Step379HeadGFresh) ((growRow 768 s2Step379HeadFFresh ++ (growRow 771 s2Step379HeadGvFresh ++ (growRow 770 s2Step379HeadFvFresh ++ [])))) s2Step379HeadG_Incoming s2Step379HeadG_checked h1 s2Step379HeadG_Outgoing
  exact h0

private theorem s2Step379HeadBank_checked : compileHmrBankResizeLog .headroom s2Step379HeadGBefore ⟨s2Step379HeadFRow,s2Step379HeadGRow,s2Step379HeadFvRow,s2Step379HeadGvRow⟩ ⟨83,83,206,206⟩ [s2Step379HeadGFresh,s2Step379HeadFFresh,s2Step379HeadGvFresh,s2Step379HeadFvFresh]=
    some (s2Step379HeadFvAfter,⟨s2Step379HeadFOut,s2Step379HeadGOut,s2Step379HeadFvOut,s2Step379HeadGvOut⟩,(growRow 769 s2Step379HeadGFresh ++ (growRow 768 s2Step379HeadFFresh ++ (growRow 771 s2Step379HeadGvFresh ++ (growRow 770 s2Step379HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step379HeadBank_rows]
  rfl

private theorem s2Step379Front_checked : compileHmrSourceFrontLog s2Step379EntryFBefore s2Step379FrontBank 82 205 ⟨82,81,206,205⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step379FrontLog=some s2Step379FrontPlan := by
  have pairEq : s2Step379FrontPair=⟨s2Step379HeadFRow,s2Step379HeadGRow,s2Step379HeadFvRow,s2Step379HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step379FrontHead=⟨s2Step379ExitFRow,s2Step379ExitGRow,s2Step379ExitFvRow,s2Step379ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step379Add0A=s2Step379FrontHead.f.wires := by decide +kernel
  have gEq : s2Step379Add0B=s2Step379FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step379Add1A=s2Step379FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step379Add1B=s2Step379FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step379EntryFBefore s2Step379FrontBank 82 205 ⟨82,81,206,205⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step379FrontLog s2Step379FrontPlan
  · exact s2Step379Front_entry
  · exact s2Step379EntryBank_checked
  · exact s2Step379Front_sigma
  · rfl
  · exact s2Step379Front_branch
  · rfl
  · simpa only [s2Step379FrontPlan,pairEq] using s2Step379HeadBank_checked
  · simpa only [s2Step379FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step379F4_checked
  · exact s2Step379Counter_checked
  · rfl
  · simpa only [s2Step379FrontPlan,headEq] using s2Step379ExitBank_checked

private theorem s2Step379Complete_explicit_checked : compileHmrEarlyStepLog s2Step379EntryFBefore s2Step379FrontBank 82 205 ⟨82,81,206,205⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step379CompleteLog=some s2Step379CompletePlan := by
  let Q := s2Step379EarlyControlPlan
  have hq := s2Step379EarlyControl_plan_checked
  have fv1 : s2Step379CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step379CompleteOut.fv.payload[2]?.getD s2Step379CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step379CompleteOut.fv.payload[3]?.getD s2Step379CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step379CompleteOut.fv.payload[4]?.getD s2Step379CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step379EntryFBefore s2Step379EarlyControlArena s2Step379FrontBank 82 205 ⟨82,81,206,205⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step379CompleteLog s2Step379FrontPlan Q
    s2Step379Front_checked s2Step379Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step379Complete_owned s2Step379Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step379EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 797 s2Step379CompleteOut.fv.second (s2Step379CompleteOut.fv.payload[2]?.getD s2Step379CompleteOut.fv.sign) (s2Step379CompleteOut.fv.payload[3]?.getD s2Step379CompleteOut.fv.sign) (s2Step379CompleteOut.fv.payload[4]?.getD s2Step379CompleteOut.fv.sign) 799 60 s2Step379EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep379Arena : Arena := s2Step379EntryFBefore
def s2PrivateStep379Bank : WindowBank := s2Step379FrontBank
def s2PrivateStep379Spec : HmrSourceWalkStepLog := ⟨82,205,⟨82,81,206,205⟩,60,.early s2Step379CompleteLog⟩
def s2PrivateStep379Plan : HmrSourceStepPlan := .early s2Step379CompletePlan
theorem s2PrivateStep379_source : s2PrivateStep379Spec=s2ObservedLogs368[11] := rfl
theorem s2PrivateStep379_checked : compileHmrSourceStepLog s2PrivateStep379Arena s2PrivateStep379Bank
    s2PrivateStep379Spec.fgWidth s2PrivateStep379Spec.vWidth s2PrivateStep379Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]
    6 498 379 s2PrivateStep379Spec.need none s2PrivateStep379Spec.log=some s2PrivateStep379Plan := by
  change compileHmrSourceStepLog s2Step379EntryFBefore s2Step379FrontBank 82 205 ⟨82,81,206,205⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 6 498 379 60 none (.early s2Step379CompleteLog)=some (.early s2Step379CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 379<498)]
  rw [s2Step379Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
