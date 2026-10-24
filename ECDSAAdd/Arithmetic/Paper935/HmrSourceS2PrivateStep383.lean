import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep381
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

private def s2Step383CompleteMoves : List (Wire × Wire) := [(840,591)]

private def s2Step383EarlyControlLog : HmrEarlyControlLog := ⟨[840, 837, 810, 809, 799],[793],[825],[827, 844, 907, 913, 914, 915],[]⟩

private def s2Step383FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [846]],[[799], [809], [837], [810]],[[], [], [], []]⟩,[824],[792],[793],[825],[827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[793, 825, 827, 844]⟩

private def s2Step383CompleteLog : HmrEarlyStepLog := ⟨s2Step383FrontLog,s2Step383CompleteMoves,s2Step383EarlyControlLog⟩

private def s2Step383ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590],768⟩

private def s2Step383ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 81, 80, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826, 789, 800, 842, 785, 803],770⟩

private def s2Step383ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79],769⟩

private def s2Step383ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 596, 595, 594, 593, 592, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811, 796, 802, 797, 835, 846],771⟩

private def s2Step383FrontOut : WindowBank := ⟨s2Step383ExitFOut,s2Step383ExitGOut,s2Step383ExitFvOut,s2Step383ExitGvOut⟩

private def s2Step383CompleteOut : WindowBank := s2Step383FrontOut.repacked s2Step383CompleteMoves

private def s2Step383EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<809) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step383EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step383EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step383EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step383EarlyControlPositiveArena,[793],s2Step383EarlyControlEqualityArena,[825],⟨⟨824,false⟩,[⟨⟨793,false⟩,825⟩]⟩⟩

private def s2Step383EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<916)),Finset.filter_subset _ _⟩

private def s2Step383EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<916)),Finset.filter_subset _ _⟩

private def s2Step383EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<809) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step383EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<809) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step383EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<809) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step383EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step383EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,840⟩,⟨⟨774,false⟩,837⟩,⟨⟨775,false⟩,810⟩,⟨⟨776,false⟩,809⟩,⟨⟨777,false⟩,799⟩]⟩

private def s2Step383EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step383EarlyControlZeroArena,s2Step383EarlyControlZeroPlan,s2Step383EarlyControlClassPlan,s2Step383EarlyControlFlagArena,s2Step383EarlyControlFittedArena,s2Step383EarlyControlHistoryArena,s2Step383EarlyControlSigmaArena,s2Step383EarlyControlOutputArena,s2Step383EarlyControlLog⟩

private def s2Step383CounterWork : List Wire := [793, 825, 827, 844]

private theorem s2Step383Counter_bounded : s2Step383CounterWork.toFinset⊆arenaWires := by norm_num [s2Step383CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step383HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step383CounterDuring : Arena := ⟨s2Step383HeadFvAfter.live∪s2Step383CounterWork.toFinset,Finset.union_subset s2Step383HeadFvAfter.bounded s2Step383Counter_bounded⟩

private def s2Step383EntryFFresh : List Wire := []

private def s2Step383EntryFvFresh : List Wire := []

private def s2Step383EntryGFresh : List Wire := []

private def s2Step383EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<809) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step383EntryGvFresh : List Wire := [846]

private def s2Step383ExitFExtra : List Wire := [591, 809]

private def s2Step383ExitFvExtra : List Wire := [810]

private def s2Step383ExitGExtra : List Wire := [799]

private def s2Step383ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<591) ∨ (592≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<809) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step383ExitGvExtra : List Wire := [837]

private def s2Step383Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step383Add0Work : List Wire := [827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step383Add0_bounded : s2Step383Add0Work.toFinset⊆arenaWires := by
  have h : s2Step383Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step383Add0During : Arena := ⟨s2Step383Add0Arena.live∪s2Step383Add0Work.toFinset,Finset.union_subset s2Step383Add0Arena.bounded s2Step383Add0_bounded⟩

private def s2Step383Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step383Add1Work : List Wire := [827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step383Add1_bounded : s2Step383Add1Work.toFinset⊆arenaWires := by
  have h : s2Step383Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step383Add1During : Arena := ⟨s2Step383Add1Arena.live∪s2Step383Add1Work.toFinset,Finset.union_subset s2Step383Add1Arena.bounded s2Step383Add1_bounded⟩

private def s2Step383F4FlagArena : Arena := ⟨s2Step383HeadFvAfter.live∪{793},Finset.union_subset s2Step383HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step383F4Plan : HmrHybridF4Plan := ⟨s2Step383F4FlagArena,[793],s2Step383Add0Arena,[825],s2Step383Add0During,s2Step383Add0Work,s2Step383Add1During,s2Step383Add1Work⟩

private def s2Step383HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 809],768⟩

private def s2Step383HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 81, 80, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826, 789, 800, 842, 785, 803, 810],770⟩

private def s2Step383HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 799],769⟩

private def s2Step383HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 596, 595, 594, 593, 592, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811, 796, 802, 797, 835, 846, 837],771⟩

private def s2Step383FrontHead : WindowBank := ⟨s2Step383HeadFOut,s2Step383HeadGOut,s2Step383HeadFvOut,s2Step383HeadGvOut⟩

private def s2Step383EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591],768⟩

private def s2Step383EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 81, 80, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826, 789, 800, 842, 785, 803],770⟩

private def s2Step383EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79],769⟩

private def s2Step383EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 596, 595, 594, 593, 592, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811, 796, 802, 797, 835, 846],771⟩

private def s2Step383FrontPair : WindowBank := ⟨s2Step383EntryFOut,s2Step383EntryGOut,s2Step383EntryFvOut,s2Step383EntryGvOut⟩

private def s2Step383FrontSigmaArena : Arena := ⟨s2Step383EntryGvAfter.live∪{824},Finset.union_subset s2Step383EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step383HeadFFresh : List Wire := [809]

private def s2Step383HeadFvFresh : List Wire := [810]

private def s2Step383HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<809) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step383HeadGFresh : List Wire := [799]

private def s2Step383HeadGvFresh : List Wire := [837]

private def s2Step383FrontPlan : HmrSourceFront := ⟨s2Step383EntryGvAfter,s2Step383FrontPair,(growRow 768 s2Step383EntryFFresh ++ (growRow 769 s2Step383EntryGFresh ++ (growRow 770 s2Step383EntryFvFresh ++ (growRow 771 s2Step383EntryGvFresh ++ [])))),s2Step383FrontSigmaArena,[824],s2Step383HeadGBefore,[792],
  s2Step383HeadFvAfter,s2Step383FrontHead,(growRow 769 s2Step383HeadGFresh ++ (growRow 768 s2Step383HeadFFresh ++ (growRow 771 s2Step383HeadGvFresh ++ (growRow 770 s2Step383HeadFvFresh ++ [])))),s2Step383F4Plan,s2Step383CounterDuring,s2Step383CounterWork,s2Step383ExitGvAfter,s2Step383FrontOut,(shrinkRow 769 s2Step383ExitGExtra ++ (shrinkRow 768 s2Step383ExitFExtra ++ (shrinkRow 770 s2Step383ExitFvExtra ++ (shrinkRow 771 s2Step383ExitGvExtra ++ []))))⟩

private def s2Step383CompletePlan : HmrEarlyStepPlan := ⟨s2Step383FrontPlan,s2Step383EarlyControlArena,s2Step383EarlyControlPlan,s2Step383CompleteMoves⟩

private theorem s2Step383Complete_apart : List.Disjoint (s2Step383CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [824, 792, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] := by
  have nd : ((s2Step383CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[824, 792, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step383Complete_owned : (s2Step383CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step383EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step383EarlyControlArena (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<809) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private def s2Step383CompleteMoveArena : Arena := ⟨s2Step383ExitGvAfter.live∪{591},Finset.union_subset s2Step383ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step383Complete_repack : s2Step383ExitGvAfter.checkRepack s2Step383CompleteMoves=some s2Step383EarlyControlArena := by
  have owned : 840∈s2Step383ExitGvAfter.live := by norm_num [s2Step383ExitGvAfter,arenaWires]
  have reserve : s2Step383ExitGvAfter.reserve {591}=some s2Step383CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step383ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step383CompleteMoveArena.retireSet {840}=s2Step383EarlyControlArena := by
    unfold Arena.retireSet s2Step383EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step383CompleteMoveArena,s2Step383ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step383CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step383CompleteMoveArena.retireSet {840}).checkRepack []=some s2Step383EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step383EarlyControl_branchOwned : ([792] : List Wire).toFinset⊆s2Step383EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step383EarlyControlSigmaArena (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<809) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step383EarlyControl_branch : compileHmrBranchRetirement s2Step383EarlyControlSigmaArena 792=some s2Step383EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step383EarlyControl_branchOwned
  · ext q
    simp [s2Step383EarlyControlOutputArena,s2Step383EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step383EarlyControl_classEqualityBorrow : s2Step383EarlyControlPositiveArena.checkBorrow (([824, 793] : List Wire).length-1) s2Step383EarlyControlLog.classWork=some s2Step383EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step383EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step383EarlyControlPositiveArena (fun q => (0≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step383EarlyControlEqualityArena,s2Step383EarlyControlPositiveArena,s2Step383EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step383EarlyControl_classEqualityOwned : ([824, 793] : List Wire).toFinset⊆s2Step383EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step383EarlyControlPositiveArena (fun q => (0≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step383EarlyControl_classEquality : compileHmrEqualityLog s2Step383EarlyControlPositiveArena [824, 793] 0 s2Step383EarlyControlLog.classWork=some (s2Step383EarlyControlEqualityArena,s2Step383EarlyControlLog.classWork,s2Step383EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step383EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step383EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step383EarlyControl_classOwned : ([777, 799, 824] : List Wire).toFinset⊆s2Step383EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step383EarlyControlZeroArena (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step383EarlyControl_positiveBorrow : s2Step383EarlyControlZeroArena.checkBorrow (1) s2Step383EarlyControlLog.positiveWork=some s2Step383EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step383EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step383EarlyControlZeroArena (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step383EarlyControlPositiveArena,s2Step383EarlyControlZeroArena,s2Step383EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step383EarlyControl_class : compileHmrSourceClassLog s2Step383EarlyControlZeroArena false 777 s2Step383EarlyControlZeroPlan.top 0 824 s2Step383EarlyControlLog.positiveWork s2Step383EarlyControlLog.classWork=some s2Step383EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step383EarlyControlClassPlan s2Step383EarlyControlZeroArena false 777 s2Step383EarlyControlZeroPlan.top 0 824
  constructor
  · decide +kernel
  · exact s2Step383EarlyControl_classOwned
  · exact s2Step383EarlyControl_positiveBorrow
  · exact s2Step383EarlyControl_classEquality

private theorem s2Step383EarlyControl_entryRecordOwned : ([792, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step383EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step383EarlyControlArena (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<809) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step383EarlyControl_entrySigmaOwned : ([824, 254] : List Wire).toFinset⊆s2Step383EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step383EarlyControlArena (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<809) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step383EarlyControl_fitBorrow : s2Step383EarlyControlFlagArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step383EarlyControlLog.recordFresh=some s2Step383EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step383EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step383EarlyControlFlagArena (fun q => (0≤q ∧ q<916)) rfl
      decide +kernel
    · ext q
      simp [s2Step383EarlyControlFittedArena,s2Step383EarlyControlFlagArena,s2Step383EarlyControlLog,arenaWires]

private theorem s2Step383EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step383EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step383EarlyControlFlagArena (fun q => (0≤q ∧ q<916)) rfl
  decide +kernel

private theorem s2Step383EarlyControl_fit : compileHmrRecordGrowLog s2Step383EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step383EarlyControlLog.recordFresh=some s2Step383EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step383EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step383EarlyControl_fitBorrow

private theorem s2Step383EarlyControl_flagsBorrow : s2Step383EarlyControlEqualityArena.checkBorrow (6) s2Step383EarlyControlLog.flagWork=some s2Step383EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step383EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step383EarlyControlEqualityArena (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step383EarlyControlFlagArena,s2Step383EarlyControlEqualityArena,s2Step383EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step383EarlyControl_flagsOwned : ([825, 253, 252, 251] : List Wire).toFinset⊆s2Step383EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step383EarlyControlEqualityArena (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step383EarlyControl_flags : compileHmrFlagsLog s2Step383EarlyControlClassPlan.equalityArena s2Step383EarlyControlClassPlan.equality.top 253 252 251 s2Step383EarlyControlLog.flagWork=some s2Step383EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step383EarlyControl_flagsOwned⟩
  · exact s2Step383EarlyControl_flagsBorrow

private theorem s2Step383EarlyControl_historyBorrow : s2Step383EarlyControlArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step383EarlyControlLog.recordFresh=some s2Step383EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step383EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step383EarlyControlArena (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<809) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step383EarlyControlHistoryArena,s2Step383EarlyControlArena,s2Step383EarlyControlLog,arenaWires]

private theorem s2Step383EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step383EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step383EarlyControlArena (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<809) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step383EarlyControl_history : compileHmrRecordGrowLog s2Step383EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step383EarlyControlLog.recordFresh=some s2Step383EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step383EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step383EarlyControl_historyBorrow

private theorem s2Step383EarlyControl_sigmaOwned : ([254, 824] : List Wire).toFinset⊆s2Step383EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step383EarlyControlHistoryArena (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<809) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step383EarlyControl_sigmaReleaseOwned : ([824] : List Wire).toFinset⊆s2Step383EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step383EarlyControlHistoryArena (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<809) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step383EarlyControl_sigmaRelease : s2Step383EarlyControlHistoryArena.release {824} (fun _ => false)=some s2Step383EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step383EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step383EarlyControlSigmaArena,s2Step383EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step383EarlyControl_sigma : compileHmrSigmaDropLog s2Step383EarlyControlHistoryArena false 0 0 254 824 []=some s2Step383EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step383EarlyControl_sigmaOwned⟩
  · exact s2Step383EarlyControl_sigmaRelease

private theorem s2Step383EarlyControl_zeroBorrow : s2Step383EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step383EarlyControlLog.zeroWork=some s2Step383EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step383EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step383EarlyControlArena (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<809) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step383EarlyControlZeroArena,s2Step383EarlyControlArena,s2Step383EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step383EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step383EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step383EarlyControlArena (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<809) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step383EarlyControl_zero : compileHmrEqualityLog s2Step383EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step383EarlyControlLog.zeroWork=some (s2Step383EarlyControlZeroArena,s2Step383EarlyControlLog.zeroWork,s2Step383EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step383EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step383EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step383EarlyControl_logged : s2Step383EarlyControlPlan.Logged s2Step383EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 824 254 253 252 251 792 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step383EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step383EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step383EarlyControl_zero
  · exact s2Step383EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step383EarlyControl_flags
  · exact s2Step383EarlyControl_fit
  · exact s2Step383EarlyControl_history
  · exact s2Step383EarlyControl_sigma
  · exact s2Step383EarlyControl_branch

private theorem s2Step383EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step383EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 824 254 253 252 251 792 60 s2Step383EarlyControlLog=some s2Step383EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step383EarlyControlPlan s2Step383EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 824 254 253 252 251 792 60 s2Step383EarlyControl_logged

private def s2Step383EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<809) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (847≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step383EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591],768⟩

private def s2Step383EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 81, 80, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826, 789, 800, 842, 785, 803],770⟩

private def s2Step383EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79],769⟩

private def s2Step383EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 596, 595, 594, 593, 592, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811, 796, 802, 797, 835],771⟩

private def s2Step383FrontBank : WindowBank := ⟨s2Step383EntryFRow,s2Step383EntryGRow,s2Step383EntryFvRow,s2Step383EntryGvRow⟩

private def s2Step383Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 809, 768]

private def s2Step383Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 799, 769]

private def s2Step383Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 81, 80, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826, 789, 800, 842, 785, 803, 810, 770]

private def s2Step383Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 596, 595, 594, 593, 592, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811, 796, 802, 797, 835, 846, 837, 771]

private theorem s2Step383Counter_apart : Disjoint s2Step383HeadFvAfter.live s2Step383CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step383HeadFvAfter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step383Counter_borrowed : s2Step383HeadFvAfter.checkBorrow 4 s2Step383CounterWork=some s2Step383CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step383HeadFvAfter s2Step383CounterDuring s2Step383CounterWork.toFinset s2Step383Counter_bounded s2Step383Counter_apart rfl

private theorem s2Step383Counter_owned : (824::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step383HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step383HeadFvAfter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step383Counter_checked : compileHmrCounterStepLog s2Step383HeadFvAfter true 824 [772, 773, 774, 775, 776, 777] s2Step383CounterWork=some s2Step383CounterDuring := by
  have owned : ∀q∈824::[772, 773, 774, 775, 776, 777],q∈s2Step383HeadFvAfter.live := fun q hq => s2Step383Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step383Counter_borrowed

private def s2Step383EntryFAfter : Arena := s2Step383EntryFBefore

private theorem s2Step383EntryBank_incomingDistinct : ([s2Step383EntryFRow,s2Step383EntryGRow,s2Step383EntryFvRow,s2Step383EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step383EntryF_Incoming : rowsOwned s2Step383EntryFBefore [s2Step383EntryFRow,s2Step383EntryGRow,s2Step383EntryFvRow,s2Step383EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step383EntryFRow,s2Step383EntryGRow,s2Step383EntryFvRow,s2Step383EntryGvRow] 0 s2Step383EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step383EntryFBefore (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<809) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (847≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step383EntryBank_outgoingOwned : rowsOwned s2Step383EntryGvAfter [s2Step383EntryFOut,s2Step383EntryGOut,s2Step383EntryFvOut,s2Step383EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step383EntryGvAfter (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<809) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step383EntryF_Outgoing : rowsOwned s2Step383EntryGvAfter [s2Step383EntryFOut,s2Step383EntryGOut,s2Step383EntryFvOut,s2Step383EntryGvOut] :=
  hmrRows_owned_drop s2Step383EntryGvAfter [s2Step383EntryFOut,s2Step383EntryGOut,s2Step383EntryFvOut,s2Step383EntryGvOut] 0 s2Step383EntryBank_outgoingOwned

private theorem s2Step383EntryF_distinct : (s2Step383EntryFRow.sign::s2Step383EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step383EntryF_owned : (s2Step383EntryFRow.sign::s2Step383EntryFRow.payload).toFinset⊆s2Step383EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step383EntryFBefore (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<809) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (847≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step383EntryF_reserved : s2Step383EntryFBefore.reserve s2Step383EntryFFresh.toFinset=some s2Step383EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step383EntryFFresh,arenaWires]
  · norm_num [s2Step383EntryFBefore,s2Step383EntryFFresh,arenaWires]
  · simp only [s2Step383EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step383EntryF_checked : planRowResizeLog s2Step383EntryFBefore s2Step383EntryFRow 80 s2Step383EntryFFresh=
    some (s2Step383EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591],768⟩,growRow 768 s2Step383EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step383EntryFBefore s2Step383EntryFAfter s2Step383EntryFRow 80 s2Step383EntryFFresh
    s2Step383EntryF_distinct s2Step383EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step383EntryF_reserved
  have rowEq : WindowRow.mk (s2Step383EntryFRow.payload++s2Step383EntryFFresh) s2Step383EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step383EntryFvAfter : Arena := s2Step383EntryFBefore

private def s2Step383EntryFvBefore : Arena := s2Step383EntryFBefore

private theorem s2Step383EntryFv_Incoming : rowsOwned s2Step383EntryFvBefore [s2Step383EntryFvRow,s2Step383EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step383EntryFRow,s2Step383EntryGRow,s2Step383EntryFvRow,s2Step383EntryGvRow] 2 s2Step383EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step383EntryFvBefore (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<809) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (847≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step383EntryFv_Outgoing : rowsOwned s2Step383EntryGvAfter [s2Step383EntryFvOut,s2Step383EntryGvOut] :=
  hmrRows_owned_drop s2Step383EntryGvAfter [s2Step383EntryFOut,s2Step383EntryGOut,s2Step383EntryFvOut,s2Step383EntryGvOut] 2 s2Step383EntryBank_outgoingOwned

private theorem s2Step383EntryFv_distinct : (s2Step383EntryFvRow.sign::s2Step383EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step383EntryFv_owned : (s2Step383EntryFvRow.sign::s2Step383EntryFvRow.payload).toFinset⊆s2Step383EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step383EntryFvBefore (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<809) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (847≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step383EntryFv_reserved : s2Step383EntryFvBefore.reserve s2Step383EntryFvFresh.toFinset=some s2Step383EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step383EntryFvFresh,arenaWires]
  · norm_num [s2Step383EntryFvBefore,s2Step383EntryFBefore,s2Step383EntryFvFresh,arenaWires]
  · simp only [s2Step383EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step383EntryFv_checked : planRowResizeLog s2Step383EntryFvBefore s2Step383EntryFvRow 208 s2Step383EntryFvFresh=
    some (s2Step383EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 81, 80, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826, 789, 800, 842, 785, 803],770⟩,growRow 770 s2Step383EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step383EntryFvBefore s2Step383EntryFvAfter s2Step383EntryFvRow 208 s2Step383EntryFvFresh
    s2Step383EntryFv_distinct s2Step383EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step383EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step383EntryFvRow.payload++s2Step383EntryFvFresh) s2Step383EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 81, 80, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826, 789, 800, 842, 785, 803],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step383EntryGAfter : Arena := s2Step383EntryFBefore

private def s2Step383EntryGBefore : Arena := s2Step383EntryFBefore

private theorem s2Step383EntryG_Incoming : rowsOwned s2Step383EntryGBefore [s2Step383EntryGRow,s2Step383EntryFvRow,s2Step383EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step383EntryFRow,s2Step383EntryGRow,s2Step383EntryFvRow,s2Step383EntryGvRow] 1 s2Step383EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step383EntryGBefore (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<809) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (847≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step383EntryG_Outgoing : rowsOwned s2Step383EntryGvAfter [s2Step383EntryGOut,s2Step383EntryFvOut,s2Step383EntryGvOut] :=
  hmrRows_owned_drop s2Step383EntryGvAfter [s2Step383EntryFOut,s2Step383EntryGOut,s2Step383EntryFvOut,s2Step383EntryGvOut] 1 s2Step383EntryBank_outgoingOwned

private theorem s2Step383EntryG_distinct : (s2Step383EntryGRow.sign::s2Step383EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step383EntryG_owned : (s2Step383EntryGRow.sign::s2Step383EntryGRow.payload).toFinset⊆s2Step383EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step383EntryGBefore (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<809) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (847≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step383EntryG_reserved : s2Step383EntryGBefore.reserve s2Step383EntryGFresh.toFinset=some s2Step383EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step383EntryGFresh,arenaWires]
  · norm_num [s2Step383EntryGBefore,s2Step383EntryFBefore,s2Step383EntryGFresh,arenaWires]
  · simp only [s2Step383EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step383EntryG_checked : planRowResizeLog s2Step383EntryGBefore s2Step383EntryGRow 80 s2Step383EntryGFresh=
    some (s2Step383EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79],769⟩,growRow 769 s2Step383EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step383EntryGBefore s2Step383EntryGAfter s2Step383EntryGRow 80 s2Step383EntryGFresh
    s2Step383EntryG_distinct s2Step383EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step383EntryG_reserved
  have rowEq : WindowRow.mk (s2Step383EntryGRow.payload++s2Step383EntryGFresh) s2Step383EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step383EntryGvBefore : Arena := s2Step383EntryFBefore

private theorem s2Step383EntryGv_Incoming : rowsOwned s2Step383EntryGvBefore [s2Step383EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step383EntryFRow,s2Step383EntryGRow,s2Step383EntryFvRow,s2Step383EntryGvRow] 3 s2Step383EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step383EntryGvBefore (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<809) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (847≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step383EntryGv_Outgoing : rowsOwned s2Step383EntryGvAfter [s2Step383EntryGvOut] :=
  hmrRows_owned_drop s2Step383EntryGvAfter [s2Step383EntryFOut,s2Step383EntryGOut,s2Step383EntryFvOut,s2Step383EntryGvOut] 3 s2Step383EntryBank_outgoingOwned

private theorem s2Step383EntryGv_distinct : (s2Step383EntryGvRow.sign::s2Step383EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step383EntryGv_owned : (s2Step383EntryGvRow.sign::s2Step383EntryGvRow.payload).toFinset⊆s2Step383EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step383EntryGvBefore (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<809) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (847≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step383EntryGv_reserved : s2Step383EntryGvBefore.reserve s2Step383EntryGvFresh.toFinset=some s2Step383EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step383EntryGvFresh,arenaWires]
  · norm_num [s2Step383EntryGvBefore,s2Step383EntryFBefore,s2Step383EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step383EntryGvAfter,s2Step383EntryGvBefore,s2Step383EntryFBefore,s2Step383EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step383EntryGv_checked : planRowResizeLog s2Step383EntryGvBefore s2Step383EntryGvRow 208 s2Step383EntryGvFresh=
    some (s2Step383EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 596, 595, 594, 593, 592, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811, 796, 802, 797, 835, 846],771⟩,growRow 771 s2Step383EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step383EntryGvBefore s2Step383EntryGvAfter s2Step383EntryGvRow 208 s2Step383EntryGvFresh
    s2Step383EntryGv_distinct s2Step383EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step383EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step383EntryGvRow.payload++s2Step383EntryGvFresh) s2Step383EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 596, 595, 594, 593, 592, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811, 796, 802, 797, 835, 846],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step383EntryBank_rows : planWindowRowsLog s2Step383EntryFBefore [(s2Step383EntryFRow,80),(s2Step383EntryGRow,80),(s2Step383EntryFvRow,208),(s2Step383EntryGvRow,208)] [s2Step383EntryFFresh,s2Step383EntryGFresh,s2Step383EntryFvFresh,s2Step383EntryGvFresh]=
    some (s2Step383EntryGvAfter,[s2Step383EntryFOut,s2Step383EntryGOut,s2Step383EntryFvOut,s2Step383EntryGvOut],(growRow 768 s2Step383EntryFFresh ++ (growRow 769 s2Step383EntryGFresh ++ (growRow 770 s2Step383EntryFvFresh ++ (growRow 771 s2Step383EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step383EntryGvAfter [] []=some (s2Step383EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step383EntryGvBefore s2Step383EntryGvAfter s2Step383EntryGvAfter
    s2Step383EntryGvRow s2Step383EntryGvOut 208 s2Step383EntryGvFresh [] [] []
    (growRow 771 s2Step383EntryGvFresh) ([]) s2Step383EntryGv_Incoming s2Step383EntryGv_checked h4 s2Step383EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step383EntryFvBefore s2Step383EntryFvAfter s2Step383EntryGvAfter
    s2Step383EntryFvRow s2Step383EntryFvOut 208 s2Step383EntryFvFresh [(s2Step383EntryGvRow,208)] [s2Step383EntryGvFresh] [s2Step383EntryGvOut]
    (growRow 770 s2Step383EntryFvFresh) ((growRow 771 s2Step383EntryGvFresh ++ [])) s2Step383EntryFv_Incoming s2Step383EntryFv_checked h3 s2Step383EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step383EntryGBefore s2Step383EntryGAfter s2Step383EntryGvAfter
    s2Step383EntryGRow s2Step383EntryGOut 80 s2Step383EntryGFresh [(s2Step383EntryFvRow,208),(s2Step383EntryGvRow,208)] [s2Step383EntryFvFresh,s2Step383EntryGvFresh] [s2Step383EntryFvOut,s2Step383EntryGvOut]
    (growRow 769 s2Step383EntryGFresh) ((growRow 770 s2Step383EntryFvFresh ++ (growRow 771 s2Step383EntryGvFresh ++ []))) s2Step383EntryG_Incoming s2Step383EntryG_checked h2 s2Step383EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step383EntryFBefore s2Step383EntryFAfter s2Step383EntryGvAfter
    s2Step383EntryFRow s2Step383EntryFOut 80 s2Step383EntryFFresh [(s2Step383EntryGRow,80),(s2Step383EntryFvRow,208),(s2Step383EntryGvRow,208)] [s2Step383EntryGFresh,s2Step383EntryFvFresh,s2Step383EntryGvFresh] [s2Step383EntryGOut,s2Step383EntryFvOut,s2Step383EntryGvOut]
    (growRow 768 s2Step383EntryFFresh) ((growRow 769 s2Step383EntryGFresh ++ (growRow 770 s2Step383EntryFvFresh ++ (growRow 771 s2Step383EntryGvFresh ++ [])))) s2Step383EntryF_Incoming s2Step383EntryF_checked h1 s2Step383EntryF_Outgoing
  exact h0

private theorem s2Step383EntryBank_checked : compileHmrBankResizeLog .entry s2Step383EntryFBefore ⟨s2Step383EntryFRow,s2Step383EntryGRow,s2Step383EntryFvRow,s2Step383EntryGvRow⟩ ⟨80,80,208,208⟩ [s2Step383EntryFFresh,s2Step383EntryGFresh,s2Step383EntryFvFresh,s2Step383EntryGvFresh]=
    some (s2Step383EntryGvAfter,⟨s2Step383EntryFOut,s2Step383EntryGOut,s2Step383EntryFvOut,s2Step383EntryGvOut⟩,(growRow 768 s2Step383EntryFFresh ++ (growRow 769 s2Step383EntryGFresh ++ (growRow 770 s2Step383EntryFvFresh ++ (growRow 771 s2Step383EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step383EntryBank_rows]
  rfl

private def s2Step383ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<591) ∨ (592≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<809) ∨ (810≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step383ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step383ExitFBefore : Arena := s2Step383ExitGAfter

private def s2Step383ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 809],768⟩

private def s2Step383ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 81, 80, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826, 789, 800, 842, 785, 803, 810],770⟩

private def s2Step383ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 799],769⟩

private def s2Step383ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 596, 595, 594, 593, 592, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811, 796, 802, 797, 835, 846, 837],771⟩

private theorem s2Step383ExitBank_incomingDistinct : ([s2Step383ExitGRow,s2Step383ExitFRow,s2Step383ExitFvRow,s2Step383ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step383ExitF_Incoming : rowsOwned s2Step383ExitFBefore [s2Step383ExitFRow,s2Step383ExitFvRow,s2Step383ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step383ExitGRow,s2Step383ExitFRow,s2Step383ExitFvRow,s2Step383ExitGvRow] 1 s2Step383ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step383ExitFBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step383ExitBank_outgoingOwned : rowsOwned s2Step383ExitGvAfter [s2Step383ExitGOut,s2Step383ExitFOut,s2Step383ExitFvOut,s2Step383ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step383ExitGvAfter (fun q => (0≤q ∧ q<591) ∨ (592≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<809) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step383ExitF_Outgoing : rowsOwned s2Step383ExitGvAfter [s2Step383ExitFOut,s2Step383ExitFvOut,s2Step383ExitGvOut] :=
  hmrRows_owned_drop s2Step383ExitGvAfter [s2Step383ExitGOut,s2Step383ExitFOut,s2Step383ExitFvOut,s2Step383ExitGvOut] 1 s2Step383ExitBank_outgoingOwned

private theorem s2Step383ExitF_distinct : (s2Step383ExitFRow.sign::s2Step383ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step383ExitF_owned : (s2Step383ExitFRow.sign::s2Step383ExitFRow.payload).toFinset⊆s2Step383ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step383ExitFBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step383ExitF_retired : s2Step383ExitFBefore.retireSet s2Step383ExitFExtra.toFinset=s2Step383ExitFAfter := by
  unfold Arena.retireSet s2Step383ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step383ExitFBefore,s2Step383ExitGAfter,s2Step383ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step383ExitF_checked : planRowResizeLog s2Step383ExitFBefore s2Step383ExitFRow 79 []=
    some (s2Step383ExitFAfter,s2Step383ExitFOut,shrinkRow 768 s2Step383ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step383ExitFBefore s2Step383ExitFRow 79 s2Step383ExitF_distinct s2Step383ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step383ExitFRow.payload.take 79) s2Step383ExitFRow.sign=s2Step383ExitFOut := by decide +kernel
  have hi : s2Step383ExitFRow.payload.drop 79=s2Step383ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step383ExitF_retired] at result
  exact result

private def s2Step383ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<591) ∨ (592≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<809) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step383ExitFvBefore : Arena := s2Step383ExitFAfter

private theorem s2Step383ExitFv_Incoming : rowsOwned s2Step383ExitFvBefore [s2Step383ExitFvRow,s2Step383ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step383ExitGRow,s2Step383ExitFRow,s2Step383ExitFvRow,s2Step383ExitGvRow] 2 s2Step383ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step383ExitFvBefore (fun q => (0≤q ∧ q<591) ∨ (592≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<809) ∨ (810≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step383ExitFv_Outgoing : rowsOwned s2Step383ExitGvAfter [s2Step383ExitFvOut,s2Step383ExitGvOut] :=
  hmrRows_owned_drop s2Step383ExitGvAfter [s2Step383ExitGOut,s2Step383ExitFOut,s2Step383ExitFvOut,s2Step383ExitGvOut] 2 s2Step383ExitBank_outgoingOwned

private theorem s2Step383ExitFv_distinct : (s2Step383ExitFvRow.sign::s2Step383ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step383ExitFv_owned : (s2Step383ExitFvRow.sign::s2Step383ExitFvRow.payload).toFinset⊆s2Step383ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step383ExitFvBefore (fun q => (0≤q ∧ q<591) ∨ (592≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<809) ∨ (810≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step383ExitFv_retired : s2Step383ExitFvBefore.retireSet s2Step383ExitFvExtra.toFinset=s2Step383ExitFvAfter := by
  unfold Arena.retireSet s2Step383ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step383ExitFvBefore,s2Step383ExitFAfter,s2Step383ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step383ExitFv_checked : planRowResizeLog s2Step383ExitFvBefore s2Step383ExitFvRow 208 []=
    some (s2Step383ExitFvAfter,s2Step383ExitFvOut,shrinkRow 770 s2Step383ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step383ExitFvBefore s2Step383ExitFvRow 208 s2Step383ExitFv_distinct s2Step383ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step383ExitFvRow.payload.take 208) s2Step383ExitFvRow.sign=s2Step383ExitFvOut := by decide +kernel
  have hi : s2Step383ExitFvRow.payload.drop 208=s2Step383ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step383ExitFv_retired] at result
  exact result

private def s2Step383ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private theorem s2Step383ExitG_Incoming : rowsOwned s2Step383ExitGBefore [s2Step383ExitGRow,s2Step383ExitFRow,s2Step383ExitFvRow,s2Step383ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step383ExitGRow,s2Step383ExitFRow,s2Step383ExitFvRow,s2Step383ExitGvRow] 0 s2Step383ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step383ExitGBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step383ExitG_Outgoing : rowsOwned s2Step383ExitGvAfter [s2Step383ExitGOut,s2Step383ExitFOut,s2Step383ExitFvOut,s2Step383ExitGvOut] :=
  hmrRows_owned_drop s2Step383ExitGvAfter [s2Step383ExitGOut,s2Step383ExitFOut,s2Step383ExitFvOut,s2Step383ExitGvOut] 0 s2Step383ExitBank_outgoingOwned

private theorem s2Step383ExitG_distinct : (s2Step383ExitGRow.sign::s2Step383ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step383ExitG_owned : (s2Step383ExitGRow.sign::s2Step383ExitGRow.payload).toFinset⊆s2Step383ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step383ExitGBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step383ExitG_retired : s2Step383ExitGBefore.retireSet s2Step383ExitGExtra.toFinset=s2Step383ExitGAfter := by
  unfold Arena.retireSet s2Step383ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step383ExitGBefore,s2Step383ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step383ExitG_checked : planRowResizeLog s2Step383ExitGBefore s2Step383ExitGRow 80 []=
    some (s2Step383ExitGAfter,s2Step383ExitGOut,shrinkRow 769 s2Step383ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step383ExitGBefore s2Step383ExitGRow 80 s2Step383ExitG_distinct s2Step383ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step383ExitGRow.payload.take 80) s2Step383ExitGRow.sign=s2Step383ExitGOut := by decide +kernel
  have hi : s2Step383ExitGRow.payload.drop 80=s2Step383ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step383ExitG_retired] at result
  exact result

private def s2Step383ExitGvBefore : Arena := s2Step383ExitFvAfter

private theorem s2Step383ExitGv_Incoming : rowsOwned s2Step383ExitGvBefore [s2Step383ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step383ExitGRow,s2Step383ExitFRow,s2Step383ExitFvRow,s2Step383ExitGvRow] 3 s2Step383ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step383ExitGvBefore (fun q => (0≤q ∧ q<591) ∨ (592≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<809) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step383ExitGv_Outgoing : rowsOwned s2Step383ExitGvAfter [s2Step383ExitGvOut] :=
  hmrRows_owned_drop s2Step383ExitGvAfter [s2Step383ExitGOut,s2Step383ExitFOut,s2Step383ExitFvOut,s2Step383ExitGvOut] 3 s2Step383ExitBank_outgoingOwned

private theorem s2Step383ExitGv_distinct : (s2Step383ExitGvRow.sign::s2Step383ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step383ExitGv_owned : (s2Step383ExitGvRow.sign::s2Step383ExitGvRow.payload).toFinset⊆s2Step383ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step383ExitGvBefore (fun q => (0≤q ∧ q<591) ∨ (592≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<809) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step383ExitGv_retired : s2Step383ExitGvBefore.retireSet s2Step383ExitGvExtra.toFinset=s2Step383ExitGvAfter := by
  unfold Arena.retireSet s2Step383ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step383ExitGvBefore,s2Step383ExitFvAfter,s2Step383ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step383ExitGv_checked : planRowResizeLog s2Step383ExitGvBefore s2Step383ExitGvRow 208 []=
    some (s2Step383ExitGvAfter,s2Step383ExitGvOut,shrinkRow 771 s2Step383ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step383ExitGvBefore s2Step383ExitGvRow 208 s2Step383ExitGv_distinct s2Step383ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step383ExitGvRow.payload.take 208) s2Step383ExitGvRow.sign=s2Step383ExitGvOut := by decide +kernel
  have hi : s2Step383ExitGvRow.payload.drop 208=s2Step383ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step383ExitGv_retired] at result
  exact result

private theorem s2Step383ExitBank_rows : planWindowRowsLog s2Step383ExitGBefore [(s2Step383ExitGRow,80),(s2Step383ExitFRow,79),(s2Step383ExitFvRow,208),(s2Step383ExitGvRow,208)] [[],[],[],[]]=
    some (s2Step383ExitGvAfter,[s2Step383ExitGOut,s2Step383ExitFOut,s2Step383ExitFvOut,s2Step383ExitGvOut],(shrinkRow 769 s2Step383ExitGExtra ++ (shrinkRow 768 s2Step383ExitFExtra ++ (shrinkRow 770 s2Step383ExitFvExtra ++ (shrinkRow 771 s2Step383ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step383ExitGvAfter [] []=some (s2Step383ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step383ExitGvBefore s2Step383ExitGvAfter s2Step383ExitGvAfter
    s2Step383ExitGvRow s2Step383ExitGvOut 208 [] [] [] []
    (shrinkRow 771 s2Step383ExitGvExtra) ([]) s2Step383ExitGv_Incoming s2Step383ExitGv_checked h4 s2Step383ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step383ExitFvBefore s2Step383ExitFvAfter s2Step383ExitGvAfter
    s2Step383ExitFvRow s2Step383ExitFvOut 208 [] [(s2Step383ExitGvRow,208)] [[]] [s2Step383ExitGvOut]
    (shrinkRow 770 s2Step383ExitFvExtra) ((shrinkRow 771 s2Step383ExitGvExtra ++ [])) s2Step383ExitFv_Incoming s2Step383ExitFv_checked h3 s2Step383ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step383ExitFBefore s2Step383ExitFAfter s2Step383ExitGvAfter
    s2Step383ExitFRow s2Step383ExitFOut 79 [] [(s2Step383ExitFvRow,208),(s2Step383ExitGvRow,208)] [[],[]] [s2Step383ExitFvOut,s2Step383ExitGvOut]
    (shrinkRow 768 s2Step383ExitFExtra) ((shrinkRow 770 s2Step383ExitFvExtra ++ (shrinkRow 771 s2Step383ExitGvExtra ++ []))) s2Step383ExitF_Incoming s2Step383ExitF_checked h2 s2Step383ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step383ExitGBefore s2Step383ExitGAfter s2Step383ExitGvAfter
    s2Step383ExitGRow s2Step383ExitGOut 80 [] [(s2Step383ExitFRow,79),(s2Step383ExitFvRow,208),(s2Step383ExitGvRow,208)] [[],[],[]] [s2Step383ExitFOut,s2Step383ExitFvOut,s2Step383ExitGvOut]
    (shrinkRow 769 s2Step383ExitGExtra) ((shrinkRow 768 s2Step383ExitFExtra ++ (shrinkRow 770 s2Step383ExitFvExtra ++ (shrinkRow 771 s2Step383ExitGvExtra ++ [])))) s2Step383ExitG_Incoming s2Step383ExitG_checked h1 s2Step383ExitG_Outgoing
  exact h0

private theorem s2Step383ExitBank_checked : compileHmrBankResizeLog .exit s2Step383ExitGBefore ⟨s2Step383ExitFRow,s2Step383ExitGRow,s2Step383ExitFvRow,s2Step383ExitGvRow⟩ ⟨79,80,208,208⟩ [[],[],[],[]]=
    some (s2Step383ExitGvAfter,⟨s2Step383ExitFOut,s2Step383ExitGOut,s2Step383ExitFvOut,s2Step383ExitGvOut⟩,(shrinkRow 769 s2Step383ExitGExtra ++ (shrinkRow 768 s2Step383ExitFExtra ++ (shrinkRow 770 s2Step383ExitFvExtra ++ (shrinkRow 771 s2Step383ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step383ExitBank_rows]
  rfl

private theorem s2Step383Add0_apart : Disjoint s2Step383Add0Arena.live s2Step383Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step383Add0Arena (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step383Add0_card : s2Step383Add0Arena.live.card=910 := by
  decide +kernel

private theorem s2Step383Add0_borrowed : s2Step383Add0Arena.checkBorrow (hmrHybridCount s2Step383Add0Arena s2Step383Add0B.length) s2Step383Add0Work=some s2Step383Add0During := by
  have len : s2Step383Add0Work.length=hmrHybridCount s2Step383Add0Arena s2Step383Add0B.length := by
    rw [hmrHybridCount,s2Step383Add0_card]
    decide +kernel
  have nd : s2Step383Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step383Add0Arena s2Step383Add0During s2Step383Add0Work.toFinset s2Step383Add0_bounded s2Step383Add0_apart rfl

private theorem s2Step383Add0_distinct : (793::792::825::(s2Step383Add0A++s2Step383Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step383Add0_owned : (793::792::825::(s2Step383Add0A++s2Step383Add0B)).toFinset⊆s2Step383Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step383Add0Arena (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step383Add0_checked : compileHmrHybridCinLog s2Step383Add0Arena 792 793 825 s2Step383Add0A s2Step383Add0B s2Step383Add0Work=some s2Step383Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step383Add0Arena s2Step383Add0During 792 793 825 s2Step383Add0A s2Step383Add0B s2Step383Add0Work
    (by decide +kernel) (by decide +kernel) s2Step383Add0_distinct
    (fun q hq => s2Step383Add0_owned (List.mem_toFinset.mpr hq)) s2Step383Add0_borrowed

private theorem s2Step383Add1_apart : Disjoint s2Step383Add1Arena.live s2Step383Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step383Add1Arena (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step383Add1_card : s2Step383Add1Arena.live.card=910 := by
  decide +kernel

private theorem s2Step383Add1_borrowed : s2Step383Add1Arena.checkBorrow (hmrHybridCount s2Step383Add1Arena s2Step383Add1B.length) s2Step383Add1Work=some s2Step383Add1During := by
  have len : s2Step383Add1Work.length=hmrHybridCount s2Step383Add1Arena s2Step383Add1B.length := by
    rw [hmrHybridCount,s2Step383Add1_card]
    decide +kernel
  have nd : s2Step383Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step383Add1Arena s2Step383Add1During s2Step383Add1Work.toFinset s2Step383Add1_bounded s2Step383Add1_apart rfl

private theorem s2Step383Add1_distinct : (793::792::825::(s2Step383Add1A++s2Step383Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step383Add1_owned : (793::792::825::(s2Step383Add1A++s2Step383Add1B)).toFinset⊆s2Step383Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step383Add1Arena (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step383Add1_checked : compileHmrHybridCinLog s2Step383Add1Arena 792 793 825 s2Step383Add1A s2Step383Add1B s2Step383Add1Work=some s2Step383Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step383Add1Arena s2Step383Add1During 792 793 825 s2Step383Add1A s2Step383Add1B s2Step383Add1Work
    (by decide +kernel) (by decide +kernel) s2Step383Add1_distinct
    (fun q hq => s2Step383Add1_owned (List.mem_toFinset.mpr hq)) s2Step383Add1_borrowed

private theorem s2Step383F4_apart : Disjoint (s2Step383Add0A++s2Step383Add0B).toFinset (s2Step383Add1A++s2Step383Add1B).toFinset := by
  have nd : ((s2Step383Add0A++s2Step383Add0B)++(s2Step383Add1A++s2Step383Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step383F4_carry : s2Step383F4FlagArena.checkBorrow 1 [825]=some s2Step383Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step383F4FlagArena,s2Step383HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step383F4FlagArena,s2Step383HeadFvAfter,s2Step383Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step383F4_distinct : (824::792::793::825::((s2Step383Add0A++s2Step383Add1A)++(s2Step383Add0B++s2Step383Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step383F4_flag : s2Step383HeadFvAfter.checkBorrow 1 [793]=some s2Step383F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step383HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step383F4_owned : (824::792::((s2Step383Add0A++s2Step383Add1A)++(s2Step383Add0B++s2Step383Add1B))).toFinset⊆s2Step383HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step383HeadFvAfter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step383F4_checked : compileHmrHybridF4Log s2Step383HeadFvAfter 824 792 s2Step383Add0A s2Step383Add0B s2Step383Add1A s2Step383Add1B [793] [825] s2Step383Add0Work s2Step383Add1Work=some s2Step383F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step383HeadFvAfter s2Step383F4FlagArena s2Step383Add0Arena s2Step383Add0During s2Step383Add1During 824 792
    s2Step383Add0A s2Step383Add0B s2Step383Add1A s2Step383Add1B [793] [825] s2Step383Add0Work s2Step383Add1Work
    (fun q hq => s2Step383F4_owned (List.mem_toFinset.mpr hq)) s2Step383F4_flag s2Step383F4_carry
    s2Step383F4_distinct s2Step383F4_apart s2Step383Add0_checked s2Step383Add1_checked

private theorem s2Step383Front_branch : s2Step383FrontSigmaArena.checkBorrow 1 [792]=some s2Step383HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step383FrontSigmaArena,s2Step383EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step383FrontSigmaArena,s2Step383EntryGvAfter,s2Step383HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step383Front_entry : HmrFrontEntryValid s2Step383EntryFBefore s2Step383FrontBank 80 208 ⟨79,80,208,208⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step383FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step383EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step383EntryFBefore (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<809) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (847≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step383FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step383Front_sigma : s2Step383EntryGvAfter.checkBorrow 1 [824]=some s2Step383FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step383EntryGvAfter,arenaWires]
  · rfl

private def s2Step383HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<810) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step383HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<809) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step383HeadFBefore : Arena := s2Step383HeadGAfter

private def s2Step383HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591],768⟩

private def s2Step383HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 81, 80, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826, 789, 800, 842, 785, 803],770⟩

private def s2Step383HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79],769⟩

private def s2Step383HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 596, 595, 594, 593, 592, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811, 796, 802, 797, 835, 846],771⟩

private theorem s2Step383HeadBank_incomingDistinct : ([s2Step383HeadGRow,s2Step383HeadFRow,s2Step383HeadGvRow,s2Step383HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step383HeadF_Incoming : rowsOwned s2Step383HeadFBefore [s2Step383HeadFRow,s2Step383HeadGvRow,s2Step383HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step383HeadGRow,s2Step383HeadFRow,s2Step383HeadGvRow,s2Step383HeadFvRow] 1 s2Step383HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step383HeadFBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<809) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step383HeadBank_outgoingOwned : rowsOwned s2Step383HeadFvAfter [s2Step383HeadGOut,s2Step383HeadFOut,s2Step383HeadGvOut,s2Step383HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step383HeadFvAfter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step383HeadF_Outgoing : rowsOwned s2Step383HeadFvAfter [s2Step383HeadFOut,s2Step383HeadGvOut,s2Step383HeadFvOut] :=
  hmrRows_owned_drop s2Step383HeadFvAfter [s2Step383HeadGOut,s2Step383HeadFOut,s2Step383HeadGvOut,s2Step383HeadFvOut] 1 s2Step383HeadBank_outgoingOwned

private theorem s2Step383HeadF_distinct : (s2Step383HeadFRow.sign::s2Step383HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step383HeadF_owned : (s2Step383HeadFRow.sign::s2Step383HeadFRow.payload).toFinset⊆s2Step383HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step383HeadFBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<809) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step383HeadF_reserved : s2Step383HeadFBefore.reserve s2Step383HeadFFresh.toFinset=some s2Step383HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step383HeadFFresh,arenaWires]
  · norm_num [s2Step383HeadFBefore,s2Step383HeadGAfter,s2Step383HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step383HeadFAfter,s2Step383HeadFBefore,s2Step383HeadGAfter,s2Step383HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step383HeadF_checked : planRowResizeLog s2Step383HeadFBefore s2Step383HeadFRow 81 s2Step383HeadFFresh=
    some (s2Step383HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 809],768⟩,growRow 768 s2Step383HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step383HeadFBefore s2Step383HeadFAfter s2Step383HeadFRow 81 s2Step383HeadFFresh
    s2Step383HeadF_distinct s2Step383HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step383HeadF_reserved
  have rowEq : WindowRow.mk (s2Step383HeadFRow.payload++s2Step383HeadFFresh) s2Step383HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 809],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step383HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<810) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step383HeadFvBefore : Arena := s2Step383HeadGvAfter

private theorem s2Step383HeadFv_Incoming : rowsOwned s2Step383HeadFvBefore [s2Step383HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step383HeadGRow,s2Step383HeadFRow,s2Step383HeadGvRow,s2Step383HeadFvRow] 3 s2Step383HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step383HeadFvBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<810) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step383HeadFv_Outgoing : rowsOwned s2Step383HeadFvAfter [s2Step383HeadFvOut] :=
  hmrRows_owned_drop s2Step383HeadFvAfter [s2Step383HeadGOut,s2Step383HeadFOut,s2Step383HeadGvOut,s2Step383HeadFvOut] 3 s2Step383HeadBank_outgoingOwned

private theorem s2Step383HeadFv_distinct : (s2Step383HeadFvRow.sign::s2Step383HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step383HeadFv_owned : (s2Step383HeadFvRow.sign::s2Step383HeadFvRow.payload).toFinset⊆s2Step383HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step383HeadFvBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<810) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step383HeadFv_reserved : s2Step383HeadFvBefore.reserve s2Step383HeadFvFresh.toFinset=some s2Step383HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step383HeadFvFresh,arenaWires]
  · norm_num [s2Step383HeadFvBefore,s2Step383HeadGvAfter,s2Step383HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step383HeadFvAfter,s2Step383HeadFvBefore,s2Step383HeadGvAfter,s2Step383HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step383HeadFv_checked : planRowResizeLog s2Step383HeadFvBefore s2Step383HeadFvRow 209 s2Step383HeadFvFresh=
    some (s2Step383HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 81, 80, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826, 789, 800, 842, 785, 803, 810],770⟩,growRow 770 s2Step383HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step383HeadFvBefore s2Step383HeadFvAfter s2Step383HeadFvRow 209 s2Step383HeadFvFresh
    s2Step383HeadFv_distinct s2Step383HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step383HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step383HeadFvRow.payload++s2Step383HeadFvFresh) s2Step383HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 81, 80, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826, 789, 800, 842, 785, 803, 810],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step383HeadG_Incoming : rowsOwned s2Step383HeadGBefore [s2Step383HeadGRow,s2Step383HeadFRow,s2Step383HeadGvRow,s2Step383HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step383HeadGRow,s2Step383HeadFRow,s2Step383HeadGvRow,s2Step383HeadFvRow] 0 s2Step383HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step383HeadGBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<809) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step383HeadG_Outgoing : rowsOwned s2Step383HeadFvAfter [s2Step383HeadGOut,s2Step383HeadFOut,s2Step383HeadGvOut,s2Step383HeadFvOut] :=
  hmrRows_owned_drop s2Step383HeadFvAfter [s2Step383HeadGOut,s2Step383HeadFOut,s2Step383HeadGvOut,s2Step383HeadFvOut] 0 s2Step383HeadBank_outgoingOwned

private theorem s2Step383HeadG_distinct : (s2Step383HeadGRow.sign::s2Step383HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step383HeadG_owned : (s2Step383HeadGRow.sign::s2Step383HeadGRow.payload).toFinset⊆s2Step383HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step383HeadGBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<809) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step383HeadG_reserved : s2Step383HeadGBefore.reserve s2Step383HeadGFresh.toFinset=some s2Step383HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step383HeadGFresh,arenaWires]
  · norm_num [s2Step383HeadGBefore,s2Step383HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step383HeadGAfter,s2Step383HeadGBefore,s2Step383HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step383HeadG_checked : planRowResizeLog s2Step383HeadGBefore s2Step383HeadGRow 81 s2Step383HeadGFresh=
    some (s2Step383HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 799],769⟩,growRow 769 s2Step383HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step383HeadGBefore s2Step383HeadGAfter s2Step383HeadGRow 81 s2Step383HeadGFresh
    s2Step383HeadG_distinct s2Step383HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step383HeadG_reserved
  have rowEq : WindowRow.mk (s2Step383HeadGRow.payload++s2Step383HeadGFresh) s2Step383HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 799],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step383HeadGvBefore : Arena := s2Step383HeadFAfter

private theorem s2Step383HeadGv_Incoming : rowsOwned s2Step383HeadGvBefore [s2Step383HeadGvRow,s2Step383HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step383HeadGRow,s2Step383HeadFRow,s2Step383HeadGvRow,s2Step383HeadFvRow] 2 s2Step383HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step383HeadGvBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<810) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step383HeadGv_Outgoing : rowsOwned s2Step383HeadFvAfter [s2Step383HeadGvOut,s2Step383HeadFvOut] :=
  hmrRows_owned_drop s2Step383HeadFvAfter [s2Step383HeadGOut,s2Step383HeadFOut,s2Step383HeadGvOut,s2Step383HeadFvOut] 2 s2Step383HeadBank_outgoingOwned

private theorem s2Step383HeadGv_distinct : (s2Step383HeadGvRow.sign::s2Step383HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step383HeadGv_owned : (s2Step383HeadGvRow.sign::s2Step383HeadGvRow.payload).toFinset⊆s2Step383HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step383HeadGvBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<810) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step383HeadGv_reserved : s2Step383HeadGvBefore.reserve s2Step383HeadGvFresh.toFinset=some s2Step383HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step383HeadGvFresh,arenaWires]
  · norm_num [s2Step383HeadGvBefore,s2Step383HeadFAfter,s2Step383HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step383HeadGvAfter,s2Step383HeadGvBefore,s2Step383HeadFAfter,s2Step383HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step383HeadGv_checked : planRowResizeLog s2Step383HeadGvBefore s2Step383HeadGvRow 209 s2Step383HeadGvFresh=
    some (s2Step383HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 596, 595, 594, 593, 592, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811, 796, 802, 797, 835, 846, 837],771⟩,growRow 771 s2Step383HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step383HeadGvBefore s2Step383HeadGvAfter s2Step383HeadGvRow 209 s2Step383HeadGvFresh
    s2Step383HeadGv_distinct s2Step383HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step383HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step383HeadGvRow.payload++s2Step383HeadGvFresh) s2Step383HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 596, 595, 594, 593, 592, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811, 796, 802, 797, 835, 846, 837],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step383HeadBank_rows : planWindowRowsLog s2Step383HeadGBefore [(s2Step383HeadGRow,81),(s2Step383HeadFRow,81),(s2Step383HeadGvRow,209),(s2Step383HeadFvRow,209)] [s2Step383HeadGFresh,s2Step383HeadFFresh,s2Step383HeadGvFresh,s2Step383HeadFvFresh]=
    some (s2Step383HeadFvAfter,[s2Step383HeadGOut,s2Step383HeadFOut,s2Step383HeadGvOut,s2Step383HeadFvOut],(growRow 769 s2Step383HeadGFresh ++ (growRow 768 s2Step383HeadFFresh ++ (growRow 771 s2Step383HeadGvFresh ++ (growRow 770 s2Step383HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step383HeadFvAfter [] []=some (s2Step383HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step383HeadFvBefore s2Step383HeadFvAfter s2Step383HeadFvAfter
    s2Step383HeadFvRow s2Step383HeadFvOut 209 s2Step383HeadFvFresh [] [] []
    (growRow 770 s2Step383HeadFvFresh) ([]) s2Step383HeadFv_Incoming s2Step383HeadFv_checked h4 s2Step383HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step383HeadGvBefore s2Step383HeadGvAfter s2Step383HeadFvAfter
    s2Step383HeadGvRow s2Step383HeadGvOut 209 s2Step383HeadGvFresh [(s2Step383HeadFvRow,209)] [s2Step383HeadFvFresh] [s2Step383HeadFvOut]
    (growRow 771 s2Step383HeadGvFresh) ((growRow 770 s2Step383HeadFvFresh ++ [])) s2Step383HeadGv_Incoming s2Step383HeadGv_checked h3 s2Step383HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step383HeadFBefore s2Step383HeadFAfter s2Step383HeadFvAfter
    s2Step383HeadFRow s2Step383HeadFOut 81 s2Step383HeadFFresh [(s2Step383HeadGvRow,209),(s2Step383HeadFvRow,209)] [s2Step383HeadGvFresh,s2Step383HeadFvFresh] [s2Step383HeadGvOut,s2Step383HeadFvOut]
    (growRow 768 s2Step383HeadFFresh) ((growRow 771 s2Step383HeadGvFresh ++ (growRow 770 s2Step383HeadFvFresh ++ []))) s2Step383HeadF_Incoming s2Step383HeadF_checked h2 s2Step383HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step383HeadGBefore s2Step383HeadGAfter s2Step383HeadFvAfter
    s2Step383HeadGRow s2Step383HeadGOut 81 s2Step383HeadGFresh [(s2Step383HeadFRow,81),(s2Step383HeadGvRow,209),(s2Step383HeadFvRow,209)] [s2Step383HeadFFresh,s2Step383HeadGvFresh,s2Step383HeadFvFresh] [s2Step383HeadFOut,s2Step383HeadGvOut,s2Step383HeadFvOut]
    (growRow 769 s2Step383HeadGFresh) ((growRow 768 s2Step383HeadFFresh ++ (growRow 771 s2Step383HeadGvFresh ++ (growRow 770 s2Step383HeadFvFresh ++ [])))) s2Step383HeadG_Incoming s2Step383HeadG_checked h1 s2Step383HeadG_Outgoing
  exact h0

private theorem s2Step383HeadBank_checked : compileHmrBankResizeLog .headroom s2Step383HeadGBefore ⟨s2Step383HeadFRow,s2Step383HeadGRow,s2Step383HeadFvRow,s2Step383HeadGvRow⟩ ⟨81,81,209,209⟩ [s2Step383HeadGFresh,s2Step383HeadFFresh,s2Step383HeadGvFresh,s2Step383HeadFvFresh]=
    some (s2Step383HeadFvAfter,⟨s2Step383HeadFOut,s2Step383HeadGOut,s2Step383HeadFvOut,s2Step383HeadGvOut⟩,(growRow 769 s2Step383HeadGFresh ++ (growRow 768 s2Step383HeadFFresh ++ (growRow 771 s2Step383HeadGvFresh ++ (growRow 770 s2Step383HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step383HeadBank_rows]
  rfl

private theorem s2Step383Front_checked : compileHmrSourceFrontLog s2Step383EntryFBefore s2Step383FrontBank 80 208 ⟨79,80,208,208⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step383FrontLog=some s2Step383FrontPlan := by
  have pairEq : s2Step383FrontPair=⟨s2Step383HeadFRow,s2Step383HeadGRow,s2Step383HeadFvRow,s2Step383HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step383FrontHead=⟨s2Step383ExitFRow,s2Step383ExitGRow,s2Step383ExitFvRow,s2Step383ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step383Add0A=s2Step383FrontHead.f.wires := by decide +kernel
  have gEq : s2Step383Add0B=s2Step383FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step383Add1A=s2Step383FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step383Add1B=s2Step383FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step383EntryFBefore s2Step383FrontBank 80 208 ⟨79,80,208,208⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step383FrontLog s2Step383FrontPlan
  · exact s2Step383Front_entry
  · exact s2Step383EntryBank_checked
  · exact s2Step383Front_sigma
  · rfl
  · exact s2Step383Front_branch
  · rfl
  · simpa only [s2Step383FrontPlan,pairEq] using s2Step383HeadBank_checked
  · simpa only [s2Step383FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step383F4_checked
  · exact s2Step383Counter_checked
  · rfl
  · simpa only [s2Step383FrontPlan,headEq] using s2Step383ExitBank_checked

private theorem s2Step383Complete_explicit_checked : compileHmrEarlyStepLog s2Step383EntryFBefore s2Step383FrontBank 80 208 ⟨79,80,208,208⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step383CompleteLog=some s2Step383CompletePlan := by
  let Q := s2Step383EarlyControlPlan
  have hq := s2Step383EarlyControl_plan_checked
  have fv1 : s2Step383CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step383CompleteOut.fv.payload[2]?.getD s2Step383CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step383CompleteOut.fv.payload[3]?.getD s2Step383CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step383CompleteOut.fv.payload[4]?.getD s2Step383CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step383EntryFBefore s2Step383EarlyControlArena s2Step383FrontBank 80 208 ⟨79,80,208,208⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step383CompleteLog s2Step383FrontPlan Q
    s2Step383Front_checked s2Step383Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step383Complete_owned s2Step383Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step383EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 824 s2Step383CompleteOut.fv.second (s2Step383CompleteOut.fv.payload[2]?.getD s2Step383CompleteOut.fv.sign) (s2Step383CompleteOut.fv.payload[3]?.getD s2Step383CompleteOut.fv.sign) (s2Step383CompleteOut.fv.payload[4]?.getD s2Step383CompleteOut.fv.sign) 792 60 s2Step383EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep383Arena : Arena := s2Step383EntryFBefore
def s2PrivateStep383Bank : WindowBank := s2Step383FrontBank
def s2PrivateStep383Spec : HmrSourceWalkStepLog := ⟨80,208,⟨79,80,208,208⟩,60,.early s2Step383CompleteLog⟩
def s2PrivateStep383Plan : HmrSourceStepPlan := .early s2Step383CompletePlan
theorem s2PrivateStep383_source : s2PrivateStep383Spec=s2ObservedLogs368[15] := rfl
theorem s2PrivateStep383_checked : compileHmrSourceStepLog s2PrivateStep383Arena s2PrivateStep383Bank
    s2PrivateStep383Spec.fgWidth s2PrivateStep383Spec.vWidth s2PrivateStep383Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]
    6 498 383 s2PrivateStep383Spec.need none s2PrivateStep383Spec.log=some s2PrivateStep383Plan := by
  change compileHmrSourceStepLog s2Step383EntryFBefore s2Step383FrontBank 80 208 ⟨79,80,208,208⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 6 498 383 60 none (.early s2Step383CompleteLog)=some (.early s2Step383CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 383<498)]
  rw [s2Step383Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
