import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep373
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

private def s2Step375CompleteMoves : List (Wire × Wire) := [(803,596)]

private def s2Step375EarlyControlLog : HmrEarlyControlLog := ⟨[803, 785, 802, 800, 793],[825],[827],[844, 907, 913, 914, 915, 916],[]⟩

private def s2Step375FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [793], [], [796]],[[825], [800], [785], [802]],[[], [], [], []]⟩,[797],[799],[827],[844],[907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[827, 844, 907, 913]⟩

private def s2Step375CompleteLog : HmrEarlyStepLog := ⟨s2Step375FrontLog,s2Step375CompleteMoves,s2Step375EarlyControlLog⟩

private def s2Step375ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595],768⟩

private def s2Step375ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826, 789],770⟩

private def s2Step375ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83],769⟩

private def s2Step375ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811, 796],771⟩

private def s2Step375FrontOut : WindowBank := ⟨s2Step375ExitFOut,s2Step375ExitGOut,s2Step375ExitFvOut,s2Step375ExitGvOut⟩

private def s2Step375CompleteOut : WindowBank := s2Step375FrontOut.repacked s2Step375CompleteMoves

private def s2Step375EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (804≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step375EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step375EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step375EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step375EarlyControlPositiveArena,[825],s2Step375EarlyControlEqualityArena,[827],⟨⟨797,false⟩,[⟨⟨825,false⟩,827⟩]⟩⟩

private def s2Step375EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<917)),Finset.filter_subset _ _⟩

private def s2Step375EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<917)),Finset.filter_subset _ _⟩

private def s2Step375EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (804≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step375EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (804≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step375EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (804≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step375EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step375EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,803⟩,⟨⟨774,false⟩,785⟩,⟨⟨775,false⟩,802⟩,⟨⟨776,false⟩,800⟩,⟨⟨777,false⟩,793⟩]⟩

private def s2Step375EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step375EarlyControlZeroArena,s2Step375EarlyControlZeroPlan,s2Step375EarlyControlClassPlan,s2Step375EarlyControlFlagArena,s2Step375EarlyControlFittedArena,s2Step375EarlyControlHistoryArena,s2Step375EarlyControlSigmaArena,s2Step375EarlyControlOutputArena,s2Step375EarlyControlLog⟩

private def s2Step375CounterWork : List Wire := [827, 844, 907, 913]

private theorem s2Step375Counter_bounded : s2Step375CounterWork.toFinset⊆arenaWires := by norm_num [s2Step375CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step375HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step375CounterDuring : Arena := ⟨s2Step375HeadFvAfter.live∪s2Step375CounterWork.toFinset,Finset.union_subset s2Step375HeadFvAfter.bounded s2Step375Counter_bounded⟩

private def s2Step375EntryFFresh : List Wire := []

private def s2Step375EntryFvFresh : List Wire := []

private def s2Step375EntryGFresh : List Wire := [793]

private def s2Step375EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step375EntryGvFresh : List Wire := [796]

private def s2Step375ExitFExtra : List Wire := [596, 800]

private def s2Step375ExitFvExtra : List Wire := [802]

private def s2Step375ExitGExtra : List Wire := [793, 825]

private def s2Step375ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<596) ∨ (597≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step375ExitGvExtra : List Wire := [785]

private def s2Step375Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step375Add0Work : List Wire := [907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step375Add0_bounded : s2Step375Add0Work.toFinset⊆arenaWires := by
  have h : s2Step375Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step375Add0During : Arena := ⟨s2Step375Add0Arena.live∪s2Step375Add0Work.toFinset,Finset.union_subset s2Step375Add0Arena.bounded s2Step375Add0_bounded⟩

private def s2Step375Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step375Add1Work : List Wire := [907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step375Add1_bounded : s2Step375Add1Work.toFinset⊆arenaWires := by
  have h : s2Step375Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step375Add1During : Arena := ⟨s2Step375Add1Arena.live∪s2Step375Add1Work.toFinset,Finset.union_subset s2Step375Add1Arena.bounded s2Step375Add1_bounded⟩

private def s2Step375F4FlagArena : Arena := ⟨s2Step375HeadFvAfter.live∪{827},Finset.union_subset s2Step375HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step375F4Plan : HmrHybridF4Plan := ⟨s2Step375F4FlagArena,[827],s2Step375Add0Arena,[844],s2Step375Add0During,s2Step375Add0Work,s2Step375Add1During,s2Step375Add1Work⟩

private def s2Step375HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 800],768⟩

private def s2Step375HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826, 789, 802],770⟩

private def s2Step375HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 793, 825],769⟩

private def s2Step375HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811, 796, 785],771⟩

private def s2Step375FrontHead : WindowBank := ⟨s2Step375HeadFOut,s2Step375HeadGOut,s2Step375HeadFvOut,s2Step375HeadGvOut⟩

private def s2Step375EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596],768⟩

private def s2Step375EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826, 789],770⟩

private def s2Step375EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 793],769⟩

private def s2Step375EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811, 796],771⟩

private def s2Step375FrontPair : WindowBank := ⟨s2Step375EntryFOut,s2Step375EntryGOut,s2Step375EntryFvOut,s2Step375EntryGvOut⟩

private def s2Step375FrontSigmaArena : Arena := ⟨s2Step375EntryGvAfter.live∪{797},Finset.union_subset s2Step375EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step375HeadFFresh : List Wire := [800]

private def s2Step375HeadFvFresh : List Wire := [802]

private def s2Step375HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step375HeadGFresh : List Wire := [825]

private def s2Step375HeadGvFresh : List Wire := [785]

private def s2Step375FrontPlan : HmrSourceFront := ⟨s2Step375EntryGvAfter,s2Step375FrontPair,(growRow 768 s2Step375EntryFFresh ++ (growRow 769 s2Step375EntryGFresh ++ (growRow 770 s2Step375EntryFvFresh ++ (growRow 771 s2Step375EntryGvFresh ++ [])))),s2Step375FrontSigmaArena,[797],s2Step375HeadGBefore,[799],
  s2Step375HeadFvAfter,s2Step375FrontHead,(growRow 769 s2Step375HeadGFresh ++ (growRow 768 s2Step375HeadFFresh ++ (growRow 771 s2Step375HeadGvFresh ++ (growRow 770 s2Step375HeadFvFresh ++ [])))),s2Step375F4Plan,s2Step375CounterDuring,s2Step375CounterWork,s2Step375ExitGvAfter,s2Step375FrontOut,(shrinkRow 769 s2Step375ExitGExtra ++ (shrinkRow 768 s2Step375ExitFExtra ++ (shrinkRow 770 s2Step375ExitFvExtra ++ (shrinkRow 771 s2Step375ExitGvExtra ++ []))))⟩

private def s2Step375CompletePlan : HmrEarlyStepPlan := ⟨s2Step375FrontPlan,s2Step375EarlyControlArena,s2Step375EarlyControlPlan,s2Step375CompleteMoves⟩

private theorem s2Step375Complete_apart : List.Disjoint (s2Step375CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [797, 799, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] := by
  have nd : ((s2Step375CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[797, 799, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step375Complete_owned : (s2Step375CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step375EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step375EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (804≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private def s2Step375CompleteMoveArena : Arena := ⟨s2Step375ExitGvAfter.live∪{596},Finset.union_subset s2Step375ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step375Complete_repack : s2Step375ExitGvAfter.checkRepack s2Step375CompleteMoves=some s2Step375EarlyControlArena := by
  have owned : 803∈s2Step375ExitGvAfter.live := by norm_num [s2Step375ExitGvAfter,arenaWires]
  have reserve : s2Step375ExitGvAfter.reserve {596}=some s2Step375CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step375ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step375CompleteMoveArena.retireSet {803}=s2Step375EarlyControlArena := by
    unfold Arena.retireSet s2Step375EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step375CompleteMoveArena,s2Step375ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step375CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step375CompleteMoveArena.retireSet {803}).checkRepack []=some s2Step375EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step375EarlyControl_branchOwned : ([799] : List Wire).toFinset⊆s2Step375EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step375EarlyControlSigmaArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (804≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step375EarlyControl_branch : compileHmrBranchRetirement s2Step375EarlyControlSigmaArena 799=some s2Step375EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step375EarlyControl_branchOwned
  · ext q
    simp [s2Step375EarlyControlOutputArena,s2Step375EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step375EarlyControl_classEqualityBorrow : s2Step375EarlyControlPositiveArena.checkBorrow (([797, 825] : List Wire).length-1) s2Step375EarlyControlLog.classWork=some s2Step375EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step375EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step375EarlyControlPositiveArena (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step375EarlyControlEqualityArena,s2Step375EarlyControlPositiveArena,s2Step375EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step375EarlyControl_classEqualityOwned : ([797, 825] : List Wire).toFinset⊆s2Step375EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step375EarlyControlPositiveArena (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step375EarlyControl_classEquality : compileHmrEqualityLog s2Step375EarlyControlPositiveArena [797, 825] 0 s2Step375EarlyControlLog.classWork=some (s2Step375EarlyControlEqualityArena,s2Step375EarlyControlLog.classWork,s2Step375EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step375EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step375EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step375EarlyControl_classOwned : ([777, 793, 797] : List Wire).toFinset⊆s2Step375EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step375EarlyControlZeroArena (fun q => (0≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step375EarlyControl_positiveBorrow : s2Step375EarlyControlZeroArena.checkBorrow (1) s2Step375EarlyControlLog.positiveWork=some s2Step375EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step375EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step375EarlyControlZeroArena (fun q => (0≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step375EarlyControlPositiveArena,s2Step375EarlyControlZeroArena,s2Step375EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step375EarlyControl_class : compileHmrSourceClassLog s2Step375EarlyControlZeroArena false 777 s2Step375EarlyControlZeroPlan.top 0 797 s2Step375EarlyControlLog.positiveWork s2Step375EarlyControlLog.classWork=some s2Step375EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step375EarlyControlClassPlan s2Step375EarlyControlZeroArena false 777 s2Step375EarlyControlZeroPlan.top 0 797
  constructor
  · decide +kernel
  · exact s2Step375EarlyControl_classOwned
  · exact s2Step375EarlyControl_positiveBorrow
  · exact s2Step375EarlyControl_classEquality

private theorem s2Step375EarlyControl_entryRecordOwned : ([799, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step375EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step375EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (804≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step375EarlyControl_entrySigmaOwned : ([797, 254] : List Wire).toFinset⊆s2Step375EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step375EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (804≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step375EarlyControl_fitBorrow : s2Step375EarlyControlFlagArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step375EarlyControlLog.recordFresh=some s2Step375EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step375EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step375EarlyControlFlagArena (fun q => (0≤q ∧ q<917)) rfl
      decide +kernel
    · ext q
      simp [s2Step375EarlyControlFittedArena,s2Step375EarlyControlFlagArena,s2Step375EarlyControlLog,arenaWires]

private theorem s2Step375EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step375EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step375EarlyControlFlagArena (fun q => (0≤q ∧ q<917)) rfl
  decide +kernel

private theorem s2Step375EarlyControl_fit : compileHmrRecordGrowLog s2Step375EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step375EarlyControlLog.recordFresh=some s2Step375EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step375EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step375EarlyControl_fitBorrow

private theorem s2Step375EarlyControl_flagsBorrow : s2Step375EarlyControlEqualityArena.checkBorrow (6) s2Step375EarlyControlLog.flagWork=some s2Step375EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step375EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step375EarlyControlEqualityArena (fun q => (0≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step375EarlyControlFlagArena,s2Step375EarlyControlEqualityArena,s2Step375EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step375EarlyControl_flagsOwned : ([827, 253, 252, 251] : List Wire).toFinset⊆s2Step375EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step375EarlyControlEqualityArena (fun q => (0≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step375EarlyControl_flags : compileHmrFlagsLog s2Step375EarlyControlClassPlan.equalityArena s2Step375EarlyControlClassPlan.equality.top 253 252 251 s2Step375EarlyControlLog.flagWork=some s2Step375EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step375EarlyControl_flagsOwned⟩
  · exact s2Step375EarlyControl_flagsBorrow

private theorem s2Step375EarlyControl_historyBorrow : s2Step375EarlyControlArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step375EarlyControlLog.recordFresh=some s2Step375EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step375EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step375EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (804≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step375EarlyControlHistoryArena,s2Step375EarlyControlArena,s2Step375EarlyControlLog,arenaWires]

private theorem s2Step375EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step375EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step375EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (804≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step375EarlyControl_history : compileHmrRecordGrowLog s2Step375EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step375EarlyControlLog.recordFresh=some s2Step375EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step375EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step375EarlyControl_historyBorrow

private theorem s2Step375EarlyControl_sigmaOwned : ([254, 797] : List Wire).toFinset⊆s2Step375EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step375EarlyControlHistoryArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (804≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step375EarlyControl_sigmaReleaseOwned : ([797] : List Wire).toFinset⊆s2Step375EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step375EarlyControlHistoryArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (804≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step375EarlyControl_sigmaRelease : s2Step375EarlyControlHistoryArena.release {797} (fun _ => false)=some s2Step375EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step375EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step375EarlyControlSigmaArena,s2Step375EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step375EarlyControl_sigma : compileHmrSigmaDropLog s2Step375EarlyControlHistoryArena false 0 0 254 797 []=some s2Step375EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step375EarlyControl_sigmaOwned⟩
  · exact s2Step375EarlyControl_sigmaRelease

private theorem s2Step375EarlyControl_zeroBorrow : s2Step375EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step375EarlyControlLog.zeroWork=some s2Step375EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step375EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step375EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (804≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step375EarlyControlZeroArena,s2Step375EarlyControlArena,s2Step375EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step375EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step375EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step375EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (804≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step375EarlyControl_zero : compileHmrEqualityLog s2Step375EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step375EarlyControlLog.zeroWork=some (s2Step375EarlyControlZeroArena,s2Step375EarlyControlLog.zeroWork,s2Step375EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step375EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step375EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step375EarlyControl_logged : s2Step375EarlyControlPlan.Logged s2Step375EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 797 254 253 252 251 799 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step375EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step375EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step375EarlyControl_zero
  · exact s2Step375EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step375EarlyControl_flags
  · exact s2Step375EarlyControl_fit
  · exact s2Step375EarlyControl_history
  · exact s2Step375EarlyControl_sigma
  · exact s2Step375EarlyControl_branch

private theorem s2Step375EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step375EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 797 254 253 252 251 799 60 s2Step375EarlyControlLog=some s2Step375EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step375EarlyControlPlan s2Step375EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 797 254 253 252 251 799 60 s2Step375EarlyControl_logged

private def s2Step375EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<796) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step375EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596],768⟩

private def s2Step375EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826, 789],770⟩

private def s2Step375EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83],769⟩

private def s2Step375EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811],771⟩

private def s2Step375FrontBank : WindowBank := ⟨s2Step375EntryFRow,s2Step375EntryGRow,s2Step375EntryFvRow,s2Step375EntryGvRow⟩

private def s2Step375Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 800, 768]

private def s2Step375Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 793, 825, 769]

private def s2Step375Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826, 789, 802, 770]

private def s2Step375Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811, 796, 785, 771]

private theorem s2Step375Counter_apart : Disjoint s2Step375HeadFvAfter.live s2Step375CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step375HeadFvAfter (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step375Counter_borrowed : s2Step375HeadFvAfter.checkBorrow 4 s2Step375CounterWork=some s2Step375CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step375HeadFvAfter s2Step375CounterDuring s2Step375CounterWork.toFinset s2Step375Counter_bounded s2Step375Counter_apart rfl

private theorem s2Step375Counter_owned : (797::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step375HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step375HeadFvAfter (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step375Counter_checked : compileHmrCounterStepLog s2Step375HeadFvAfter true 797 [772, 773, 774, 775, 776, 777] s2Step375CounterWork=some s2Step375CounterDuring := by
  have owned : ∀q∈797::[772, 773, 774, 775, 776, 777],q∈s2Step375HeadFvAfter.live := fun q hq => s2Step375Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step375Counter_borrowed

private def s2Step375EntryFAfter : Arena := s2Step375EntryFBefore

private theorem s2Step375EntryBank_incomingDistinct : ([s2Step375EntryFRow,s2Step375EntryGRow,s2Step375EntryFvRow,s2Step375EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step375EntryF_Incoming : rowsOwned s2Step375EntryFBefore [s2Step375EntryFRow,s2Step375EntryGRow,s2Step375EntryFvRow,s2Step375EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step375EntryFRow,s2Step375EntryGRow,s2Step375EntryFvRow,s2Step375EntryGvRow] 0 s2Step375EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step375EntryFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<796) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step375EntryBank_outgoingOwned : rowsOwned s2Step375EntryGvAfter [s2Step375EntryFOut,s2Step375EntryGOut,s2Step375EntryFvOut,s2Step375EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step375EntryGvAfter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step375EntryF_Outgoing : rowsOwned s2Step375EntryGvAfter [s2Step375EntryFOut,s2Step375EntryGOut,s2Step375EntryFvOut,s2Step375EntryGvOut] :=
  hmrRows_owned_drop s2Step375EntryGvAfter [s2Step375EntryFOut,s2Step375EntryGOut,s2Step375EntryFvOut,s2Step375EntryGvOut] 0 s2Step375EntryBank_outgoingOwned

private theorem s2Step375EntryF_distinct : (s2Step375EntryFRow.sign::s2Step375EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step375EntryF_owned : (s2Step375EntryFRow.sign::s2Step375EntryFRow.payload).toFinset⊆s2Step375EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step375EntryFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<796) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step375EntryF_reserved : s2Step375EntryFBefore.reserve s2Step375EntryFFresh.toFinset=some s2Step375EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step375EntryFFresh,arenaWires]
  · norm_num [s2Step375EntryFBefore,s2Step375EntryFFresh,arenaWires]
  · simp only [s2Step375EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step375EntryF_checked : planRowResizeLog s2Step375EntryFBefore s2Step375EntryFRow 85 s2Step375EntryFFresh=
    some (s2Step375EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596],768⟩,growRow 768 s2Step375EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step375EntryFBefore s2Step375EntryFAfter s2Step375EntryFRow 85 s2Step375EntryFFresh
    s2Step375EntryF_distinct s2Step375EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step375EntryF_reserved
  have rowEq : WindowRow.mk (s2Step375EntryFRow.payload++s2Step375EntryFFresh) s2Step375EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step375EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<796) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step375EntryFvAfter : Arena := s2Step375EntryGAfter

private def s2Step375EntryFvBefore : Arena := s2Step375EntryGAfter

private theorem s2Step375EntryFv_Incoming : rowsOwned s2Step375EntryFvBefore [s2Step375EntryFvRow,s2Step375EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step375EntryFRow,s2Step375EntryGRow,s2Step375EntryFvRow,s2Step375EntryGvRow] 2 s2Step375EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step375EntryFvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<796) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step375EntryFv_Outgoing : rowsOwned s2Step375EntryGvAfter [s2Step375EntryFvOut,s2Step375EntryGvOut] :=
  hmrRows_owned_drop s2Step375EntryGvAfter [s2Step375EntryFOut,s2Step375EntryGOut,s2Step375EntryFvOut,s2Step375EntryGvOut] 2 s2Step375EntryBank_outgoingOwned

private theorem s2Step375EntryFv_distinct : (s2Step375EntryFvRow.sign::s2Step375EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step375EntryFv_owned : (s2Step375EntryFvRow.sign::s2Step375EntryFvRow.payload).toFinset⊆s2Step375EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step375EntryFvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<796) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step375EntryFv_reserved : s2Step375EntryFvBefore.reserve s2Step375EntryFvFresh.toFinset=some s2Step375EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step375EntryFvFresh,arenaWires]
  · norm_num [s2Step375EntryFvBefore,s2Step375EntryGAfter,s2Step375EntryFvFresh,arenaWires]
  · simp only [s2Step375EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step375EntryFv_checked : planRowResizeLog s2Step375EntryFvBefore s2Step375EntryFvRow 204 s2Step375EntryFvFresh=
    some (s2Step375EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826, 789],770⟩,growRow 770 s2Step375EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step375EntryFvBefore s2Step375EntryFvAfter s2Step375EntryFvRow 204 s2Step375EntryFvFresh
    s2Step375EntryFv_distinct s2Step375EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step375EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step375EntryFvRow.payload++s2Step375EntryFvFresh) s2Step375EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826, 789],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step375EntryGBefore : Arena := s2Step375EntryFBefore

private theorem s2Step375EntryG_Incoming : rowsOwned s2Step375EntryGBefore [s2Step375EntryGRow,s2Step375EntryFvRow,s2Step375EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step375EntryFRow,s2Step375EntryGRow,s2Step375EntryFvRow,s2Step375EntryGvRow] 1 s2Step375EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step375EntryGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<796) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step375EntryG_Outgoing : rowsOwned s2Step375EntryGvAfter [s2Step375EntryGOut,s2Step375EntryFvOut,s2Step375EntryGvOut] :=
  hmrRows_owned_drop s2Step375EntryGvAfter [s2Step375EntryFOut,s2Step375EntryGOut,s2Step375EntryFvOut,s2Step375EntryGvOut] 1 s2Step375EntryBank_outgoingOwned

private theorem s2Step375EntryG_distinct : (s2Step375EntryGRow.sign::s2Step375EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step375EntryG_owned : (s2Step375EntryGRow.sign::s2Step375EntryGRow.payload).toFinset⊆s2Step375EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step375EntryGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<796) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step375EntryG_reserved : s2Step375EntryGBefore.reserve s2Step375EntryGFresh.toFinset=some s2Step375EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step375EntryGFresh,arenaWires]
  · norm_num [s2Step375EntryGBefore,s2Step375EntryFBefore,s2Step375EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step375EntryGAfter,s2Step375EntryGBefore,s2Step375EntryFBefore,s2Step375EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step375EntryG_checked : planRowResizeLog s2Step375EntryGBefore s2Step375EntryGRow 85 s2Step375EntryGFresh=
    some (s2Step375EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 793],769⟩,growRow 769 s2Step375EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step375EntryGBefore s2Step375EntryGAfter s2Step375EntryGRow 85 s2Step375EntryGFresh
    s2Step375EntryG_distinct s2Step375EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step375EntryG_reserved
  have rowEq : WindowRow.mk (s2Step375EntryGRow.payload++s2Step375EntryGFresh) s2Step375EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 793],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step375EntryGvBefore : Arena := s2Step375EntryGAfter

private theorem s2Step375EntryGv_Incoming : rowsOwned s2Step375EntryGvBefore [s2Step375EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step375EntryFRow,s2Step375EntryGRow,s2Step375EntryFvRow,s2Step375EntryGvRow] 3 s2Step375EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step375EntryGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<796) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step375EntryGv_Outgoing : rowsOwned s2Step375EntryGvAfter [s2Step375EntryGvOut] :=
  hmrRows_owned_drop s2Step375EntryGvAfter [s2Step375EntryFOut,s2Step375EntryGOut,s2Step375EntryFvOut,s2Step375EntryGvOut] 3 s2Step375EntryBank_outgoingOwned

private theorem s2Step375EntryGv_distinct : (s2Step375EntryGvRow.sign::s2Step375EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step375EntryGv_owned : (s2Step375EntryGvRow.sign::s2Step375EntryGvRow.payload).toFinset⊆s2Step375EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step375EntryGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<796) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step375EntryGv_reserved : s2Step375EntryGvBefore.reserve s2Step375EntryGvFresh.toFinset=some s2Step375EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step375EntryGvFresh,arenaWires]
  · norm_num [s2Step375EntryGvBefore,s2Step375EntryGAfter,s2Step375EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step375EntryGvAfter,s2Step375EntryGvBefore,s2Step375EntryGAfter,s2Step375EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step375EntryGv_checked : planRowResizeLog s2Step375EntryGvBefore s2Step375EntryGvRow 204 s2Step375EntryGvFresh=
    some (s2Step375EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811, 796],771⟩,growRow 771 s2Step375EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step375EntryGvBefore s2Step375EntryGvAfter s2Step375EntryGvRow 204 s2Step375EntryGvFresh
    s2Step375EntryGv_distinct s2Step375EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step375EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step375EntryGvRow.payload++s2Step375EntryGvFresh) s2Step375EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811, 796],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step375EntryBank_rows : planWindowRowsLog s2Step375EntryFBefore [(s2Step375EntryFRow,85),(s2Step375EntryGRow,85),(s2Step375EntryFvRow,204),(s2Step375EntryGvRow,204)] [s2Step375EntryFFresh,s2Step375EntryGFresh,s2Step375EntryFvFresh,s2Step375EntryGvFresh]=
    some (s2Step375EntryGvAfter,[s2Step375EntryFOut,s2Step375EntryGOut,s2Step375EntryFvOut,s2Step375EntryGvOut],(growRow 768 s2Step375EntryFFresh ++ (growRow 769 s2Step375EntryGFresh ++ (growRow 770 s2Step375EntryFvFresh ++ (growRow 771 s2Step375EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step375EntryGvAfter [] []=some (s2Step375EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step375EntryGvBefore s2Step375EntryGvAfter s2Step375EntryGvAfter
    s2Step375EntryGvRow s2Step375EntryGvOut 204 s2Step375EntryGvFresh [] [] []
    (growRow 771 s2Step375EntryGvFresh) ([]) s2Step375EntryGv_Incoming s2Step375EntryGv_checked h4 s2Step375EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step375EntryFvBefore s2Step375EntryFvAfter s2Step375EntryGvAfter
    s2Step375EntryFvRow s2Step375EntryFvOut 204 s2Step375EntryFvFresh [(s2Step375EntryGvRow,204)] [s2Step375EntryGvFresh] [s2Step375EntryGvOut]
    (growRow 770 s2Step375EntryFvFresh) ((growRow 771 s2Step375EntryGvFresh ++ [])) s2Step375EntryFv_Incoming s2Step375EntryFv_checked h3 s2Step375EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step375EntryGBefore s2Step375EntryGAfter s2Step375EntryGvAfter
    s2Step375EntryGRow s2Step375EntryGOut 85 s2Step375EntryGFresh [(s2Step375EntryFvRow,204),(s2Step375EntryGvRow,204)] [s2Step375EntryFvFresh,s2Step375EntryGvFresh] [s2Step375EntryFvOut,s2Step375EntryGvOut]
    (growRow 769 s2Step375EntryGFresh) ((growRow 770 s2Step375EntryFvFresh ++ (growRow 771 s2Step375EntryGvFresh ++ []))) s2Step375EntryG_Incoming s2Step375EntryG_checked h2 s2Step375EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step375EntryFBefore s2Step375EntryFAfter s2Step375EntryGvAfter
    s2Step375EntryFRow s2Step375EntryFOut 85 s2Step375EntryFFresh [(s2Step375EntryGRow,85),(s2Step375EntryFvRow,204),(s2Step375EntryGvRow,204)] [s2Step375EntryGFresh,s2Step375EntryFvFresh,s2Step375EntryGvFresh] [s2Step375EntryGOut,s2Step375EntryFvOut,s2Step375EntryGvOut]
    (growRow 768 s2Step375EntryFFresh) ((growRow 769 s2Step375EntryGFresh ++ (growRow 770 s2Step375EntryFvFresh ++ (growRow 771 s2Step375EntryGvFresh ++ [])))) s2Step375EntryF_Incoming s2Step375EntryF_checked h1 s2Step375EntryF_Outgoing
  exact h0

private theorem s2Step375EntryBank_checked : compileHmrBankResizeLog .entry s2Step375EntryFBefore ⟨s2Step375EntryFRow,s2Step375EntryGRow,s2Step375EntryFvRow,s2Step375EntryGvRow⟩ ⟨85,85,204,204⟩ [s2Step375EntryFFresh,s2Step375EntryGFresh,s2Step375EntryFvFresh,s2Step375EntryGvFresh]=
    some (s2Step375EntryGvAfter,⟨s2Step375EntryFOut,s2Step375EntryGOut,s2Step375EntryFvOut,s2Step375EntryGvOut⟩,(growRow 768 s2Step375EntryFFresh ++ (growRow 769 s2Step375EntryGFresh ++ (growRow 770 s2Step375EntryFvFresh ++ (growRow 771 s2Step375EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step375EntryBank_rows]
  rfl

private def s2Step375ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<596) ∨ (597≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step375ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step375ExitFBefore : Arena := s2Step375ExitGAfter

private def s2Step375ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 800],768⟩

private def s2Step375ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826, 789, 802],770⟩

private def s2Step375ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 793, 825],769⟩

private def s2Step375ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811, 796, 785],771⟩

private theorem s2Step375ExitBank_incomingDistinct : ([s2Step375ExitGRow,s2Step375ExitFRow,s2Step375ExitFvRow,s2Step375ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step375ExitF_Incoming : rowsOwned s2Step375ExitFBefore [s2Step375ExitFRow,s2Step375ExitFvRow,s2Step375ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step375ExitGRow,s2Step375ExitFRow,s2Step375ExitFvRow,s2Step375ExitGvRow] 1 s2Step375ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step375ExitFBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step375ExitBank_outgoingOwned : rowsOwned s2Step375ExitGvAfter [s2Step375ExitGOut,s2Step375ExitFOut,s2Step375ExitFvOut,s2Step375ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step375ExitGvAfter (fun q => (0≤q ∧ q<596) ∨ (597≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step375ExitF_Outgoing : rowsOwned s2Step375ExitGvAfter [s2Step375ExitFOut,s2Step375ExitFvOut,s2Step375ExitGvOut] :=
  hmrRows_owned_drop s2Step375ExitGvAfter [s2Step375ExitGOut,s2Step375ExitFOut,s2Step375ExitFvOut,s2Step375ExitGvOut] 1 s2Step375ExitBank_outgoingOwned

private theorem s2Step375ExitF_distinct : (s2Step375ExitFRow.sign::s2Step375ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step375ExitF_owned : (s2Step375ExitFRow.sign::s2Step375ExitFRow.payload).toFinset⊆s2Step375ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step375ExitFBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step375ExitF_retired : s2Step375ExitFBefore.retireSet s2Step375ExitFExtra.toFinset=s2Step375ExitFAfter := by
  unfold Arena.retireSet s2Step375ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step375ExitFBefore,s2Step375ExitGAfter,s2Step375ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step375ExitF_checked : planRowResizeLog s2Step375ExitFBefore s2Step375ExitFRow 84 []=
    some (s2Step375ExitFAfter,s2Step375ExitFOut,shrinkRow 768 s2Step375ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step375ExitFBefore s2Step375ExitFRow 84 s2Step375ExitF_distinct s2Step375ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step375ExitFRow.payload.take 84) s2Step375ExitFRow.sign=s2Step375ExitFOut := by decide +kernel
  have hi : s2Step375ExitFRow.payload.drop 84=s2Step375ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step375ExitF_retired] at result
  exact result

private def s2Step375ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<596) ∨ (597≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step375ExitFvBefore : Arena := s2Step375ExitFAfter

private theorem s2Step375ExitFv_Incoming : rowsOwned s2Step375ExitFvBefore [s2Step375ExitFvRow,s2Step375ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step375ExitGRow,s2Step375ExitFRow,s2Step375ExitFvRow,s2Step375ExitGvRow] 2 s2Step375ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step375ExitFvBefore (fun q => (0≤q ∧ q<596) ∨ (597≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step375ExitFv_Outgoing : rowsOwned s2Step375ExitGvAfter [s2Step375ExitFvOut,s2Step375ExitGvOut] :=
  hmrRows_owned_drop s2Step375ExitGvAfter [s2Step375ExitGOut,s2Step375ExitFOut,s2Step375ExitFvOut,s2Step375ExitGvOut] 2 s2Step375ExitBank_outgoingOwned

private theorem s2Step375ExitFv_distinct : (s2Step375ExitFvRow.sign::s2Step375ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step375ExitFv_owned : (s2Step375ExitFvRow.sign::s2Step375ExitFvRow.payload).toFinset⊆s2Step375ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step375ExitFvBefore (fun q => (0≤q ∧ q<596) ∨ (597≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step375ExitFv_retired : s2Step375ExitFvBefore.retireSet s2Step375ExitFvExtra.toFinset=s2Step375ExitFvAfter := by
  unfold Arena.retireSet s2Step375ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step375ExitFvBefore,s2Step375ExitFAfter,s2Step375ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step375ExitFv_checked : planRowResizeLog s2Step375ExitFvBefore s2Step375ExitFvRow 204 []=
    some (s2Step375ExitFvAfter,s2Step375ExitFvOut,shrinkRow 770 s2Step375ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step375ExitFvBefore s2Step375ExitFvRow 204 s2Step375ExitFv_distinct s2Step375ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step375ExitFvRow.payload.take 204) s2Step375ExitFvRow.sign=s2Step375ExitFvOut := by decide +kernel
  have hi : s2Step375ExitFvRow.payload.drop 204=s2Step375ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step375ExitFv_retired] at result
  exact result

private def s2Step375ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private theorem s2Step375ExitG_Incoming : rowsOwned s2Step375ExitGBefore [s2Step375ExitGRow,s2Step375ExitFRow,s2Step375ExitFvRow,s2Step375ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step375ExitGRow,s2Step375ExitFRow,s2Step375ExitFvRow,s2Step375ExitGvRow] 0 s2Step375ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step375ExitGBefore (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step375ExitG_Outgoing : rowsOwned s2Step375ExitGvAfter [s2Step375ExitGOut,s2Step375ExitFOut,s2Step375ExitFvOut,s2Step375ExitGvOut] :=
  hmrRows_owned_drop s2Step375ExitGvAfter [s2Step375ExitGOut,s2Step375ExitFOut,s2Step375ExitFvOut,s2Step375ExitGvOut] 0 s2Step375ExitBank_outgoingOwned

private theorem s2Step375ExitG_distinct : (s2Step375ExitGRow.sign::s2Step375ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step375ExitG_owned : (s2Step375ExitGRow.sign::s2Step375ExitGRow.payload).toFinset⊆s2Step375ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step375ExitGBefore (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step375ExitG_retired : s2Step375ExitGBefore.retireSet s2Step375ExitGExtra.toFinset=s2Step375ExitGAfter := by
  unfold Arena.retireSet s2Step375ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step375ExitGBefore,s2Step375ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step375ExitG_checked : planRowResizeLog s2Step375ExitGBefore s2Step375ExitGRow 84 []=
    some (s2Step375ExitGAfter,s2Step375ExitGOut,shrinkRow 769 s2Step375ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step375ExitGBefore s2Step375ExitGRow 84 s2Step375ExitG_distinct s2Step375ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step375ExitGRow.payload.take 84) s2Step375ExitGRow.sign=s2Step375ExitGOut := by decide +kernel
  have hi : s2Step375ExitGRow.payload.drop 84=s2Step375ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step375ExitG_retired] at result
  exact result

private def s2Step375ExitGvBefore : Arena := s2Step375ExitFvAfter

private theorem s2Step375ExitGv_Incoming : rowsOwned s2Step375ExitGvBefore [s2Step375ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step375ExitGRow,s2Step375ExitFRow,s2Step375ExitFvRow,s2Step375ExitGvRow] 3 s2Step375ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step375ExitGvBefore (fun q => (0≤q ∧ q<596) ∨ (597≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step375ExitGv_Outgoing : rowsOwned s2Step375ExitGvAfter [s2Step375ExitGvOut] :=
  hmrRows_owned_drop s2Step375ExitGvAfter [s2Step375ExitGOut,s2Step375ExitFOut,s2Step375ExitFvOut,s2Step375ExitGvOut] 3 s2Step375ExitBank_outgoingOwned

private theorem s2Step375ExitGv_distinct : (s2Step375ExitGvRow.sign::s2Step375ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step375ExitGv_owned : (s2Step375ExitGvRow.sign::s2Step375ExitGvRow.payload).toFinset⊆s2Step375ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step375ExitGvBefore (fun q => (0≤q ∧ q<596) ∨ (597≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step375ExitGv_retired : s2Step375ExitGvBefore.retireSet s2Step375ExitGvExtra.toFinset=s2Step375ExitGvAfter := by
  unfold Arena.retireSet s2Step375ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step375ExitGvBefore,s2Step375ExitFvAfter,s2Step375ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step375ExitGv_checked : planRowResizeLog s2Step375ExitGvBefore s2Step375ExitGvRow 204 []=
    some (s2Step375ExitGvAfter,s2Step375ExitGvOut,shrinkRow 771 s2Step375ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step375ExitGvBefore s2Step375ExitGvRow 204 s2Step375ExitGv_distinct s2Step375ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step375ExitGvRow.payload.take 204) s2Step375ExitGvRow.sign=s2Step375ExitGvOut := by decide +kernel
  have hi : s2Step375ExitGvRow.payload.drop 204=s2Step375ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step375ExitGv_retired] at result
  exact result

private theorem s2Step375ExitBank_rows : planWindowRowsLog s2Step375ExitGBefore [(s2Step375ExitGRow,84),(s2Step375ExitFRow,84),(s2Step375ExitFvRow,204),(s2Step375ExitGvRow,204)] [[],[],[],[]]=
    some (s2Step375ExitGvAfter,[s2Step375ExitGOut,s2Step375ExitFOut,s2Step375ExitFvOut,s2Step375ExitGvOut],(shrinkRow 769 s2Step375ExitGExtra ++ (shrinkRow 768 s2Step375ExitFExtra ++ (shrinkRow 770 s2Step375ExitFvExtra ++ (shrinkRow 771 s2Step375ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step375ExitGvAfter [] []=some (s2Step375ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step375ExitGvBefore s2Step375ExitGvAfter s2Step375ExitGvAfter
    s2Step375ExitGvRow s2Step375ExitGvOut 204 [] [] [] []
    (shrinkRow 771 s2Step375ExitGvExtra) ([]) s2Step375ExitGv_Incoming s2Step375ExitGv_checked h4 s2Step375ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step375ExitFvBefore s2Step375ExitFvAfter s2Step375ExitGvAfter
    s2Step375ExitFvRow s2Step375ExitFvOut 204 [] [(s2Step375ExitGvRow,204)] [[]] [s2Step375ExitGvOut]
    (shrinkRow 770 s2Step375ExitFvExtra) ((shrinkRow 771 s2Step375ExitGvExtra ++ [])) s2Step375ExitFv_Incoming s2Step375ExitFv_checked h3 s2Step375ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step375ExitFBefore s2Step375ExitFAfter s2Step375ExitGvAfter
    s2Step375ExitFRow s2Step375ExitFOut 84 [] [(s2Step375ExitFvRow,204),(s2Step375ExitGvRow,204)] [[],[]] [s2Step375ExitFvOut,s2Step375ExitGvOut]
    (shrinkRow 768 s2Step375ExitFExtra) ((shrinkRow 770 s2Step375ExitFvExtra ++ (shrinkRow 771 s2Step375ExitGvExtra ++ []))) s2Step375ExitF_Incoming s2Step375ExitF_checked h2 s2Step375ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step375ExitGBefore s2Step375ExitGAfter s2Step375ExitGvAfter
    s2Step375ExitGRow s2Step375ExitGOut 84 [] [(s2Step375ExitFRow,84),(s2Step375ExitFvRow,204),(s2Step375ExitGvRow,204)] [[],[],[]] [s2Step375ExitFOut,s2Step375ExitFvOut,s2Step375ExitGvOut]
    (shrinkRow 769 s2Step375ExitGExtra) ((shrinkRow 768 s2Step375ExitFExtra ++ (shrinkRow 770 s2Step375ExitFvExtra ++ (shrinkRow 771 s2Step375ExitGvExtra ++ [])))) s2Step375ExitG_Incoming s2Step375ExitG_checked h1 s2Step375ExitG_Outgoing
  exact h0

private theorem s2Step375ExitBank_checked : compileHmrBankResizeLog .exit s2Step375ExitGBefore ⟨s2Step375ExitFRow,s2Step375ExitGRow,s2Step375ExitFvRow,s2Step375ExitGvRow⟩ ⟨84,84,204,204⟩ [[],[],[],[]]=
    some (s2Step375ExitGvAfter,⟨s2Step375ExitFOut,s2Step375ExitGOut,s2Step375ExitFvOut,s2Step375ExitGvOut⟩,(shrinkRow 769 s2Step375ExitGExtra ++ (shrinkRow 768 s2Step375ExitFExtra ++ (shrinkRow 770 s2Step375ExitFvExtra ++ (shrinkRow 771 s2Step375ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step375ExitBank_rows]
  rfl

private theorem s2Step375Add0_apart : Disjoint s2Step375Add0Arena.live s2Step375Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step375Add0Arena (fun q => (0≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step375Add0_card : s2Step375Add0Arena.live.card=912 := by
  decide +kernel

private theorem s2Step375Add0_borrowed : s2Step375Add0Arena.checkBorrow (hmrHybridCount s2Step375Add0Arena s2Step375Add0B.length) s2Step375Add0Work=some s2Step375Add0During := by
  have len : s2Step375Add0Work.length=hmrHybridCount s2Step375Add0Arena s2Step375Add0B.length := by
    rw [hmrHybridCount,s2Step375Add0_card]
    decide +kernel
  have nd : s2Step375Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step375Add0Arena s2Step375Add0During s2Step375Add0Work.toFinset s2Step375Add0_bounded s2Step375Add0_apart rfl

private theorem s2Step375Add0_distinct : (827::799::844::(s2Step375Add0A++s2Step375Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step375Add0_owned : (827::799::844::(s2Step375Add0A++s2Step375Add0B)).toFinset⊆s2Step375Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step375Add0Arena (fun q => (0≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step375Add0_checked : compileHmrHybridCinLog s2Step375Add0Arena 799 827 844 s2Step375Add0A s2Step375Add0B s2Step375Add0Work=some s2Step375Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step375Add0Arena s2Step375Add0During 799 827 844 s2Step375Add0A s2Step375Add0B s2Step375Add0Work
    (by decide +kernel) (by decide +kernel) s2Step375Add0_distinct
    (fun q hq => s2Step375Add0_owned (List.mem_toFinset.mpr hq)) s2Step375Add0_borrowed

private theorem s2Step375Add1_apart : Disjoint s2Step375Add1Arena.live s2Step375Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step375Add1Arena (fun q => (0≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step375Add1_card : s2Step375Add1Arena.live.card=912 := by
  decide +kernel

private theorem s2Step375Add1_borrowed : s2Step375Add1Arena.checkBorrow (hmrHybridCount s2Step375Add1Arena s2Step375Add1B.length) s2Step375Add1Work=some s2Step375Add1During := by
  have len : s2Step375Add1Work.length=hmrHybridCount s2Step375Add1Arena s2Step375Add1B.length := by
    rw [hmrHybridCount,s2Step375Add1_card]
    decide +kernel
  have nd : s2Step375Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step375Add1Arena s2Step375Add1During s2Step375Add1Work.toFinset s2Step375Add1_bounded s2Step375Add1_apart rfl

private theorem s2Step375Add1_distinct : (827::799::844::(s2Step375Add1A++s2Step375Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step375Add1_owned : (827::799::844::(s2Step375Add1A++s2Step375Add1B)).toFinset⊆s2Step375Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step375Add1Arena (fun q => (0≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step375Add1_checked : compileHmrHybridCinLog s2Step375Add1Arena 799 827 844 s2Step375Add1A s2Step375Add1B s2Step375Add1Work=some s2Step375Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step375Add1Arena s2Step375Add1During 799 827 844 s2Step375Add1A s2Step375Add1B s2Step375Add1Work
    (by decide +kernel) (by decide +kernel) s2Step375Add1_distinct
    (fun q hq => s2Step375Add1_owned (List.mem_toFinset.mpr hq)) s2Step375Add1_borrowed

private theorem s2Step375F4_apart : Disjoint (s2Step375Add0A++s2Step375Add0B).toFinset (s2Step375Add1A++s2Step375Add1B).toFinset := by
  have nd : ((s2Step375Add0A++s2Step375Add0B)++(s2Step375Add1A++s2Step375Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step375F4_carry : s2Step375F4FlagArena.checkBorrow 1 [844]=some s2Step375Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step375F4FlagArena,s2Step375HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step375F4FlagArena,s2Step375HeadFvAfter,s2Step375Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step375F4_distinct : (797::799::827::844::((s2Step375Add0A++s2Step375Add1A)++(s2Step375Add0B++s2Step375Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step375F4_flag : s2Step375HeadFvAfter.checkBorrow 1 [827]=some s2Step375F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step375HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step375F4_owned : (797::799::((s2Step375Add0A++s2Step375Add1A)++(s2Step375Add0B++s2Step375Add1B))).toFinset⊆s2Step375HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step375HeadFvAfter (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step375F4_checked : compileHmrHybridF4Log s2Step375HeadFvAfter 797 799 s2Step375Add0A s2Step375Add0B s2Step375Add1A s2Step375Add1B [827] [844] s2Step375Add0Work s2Step375Add1Work=some s2Step375F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step375HeadFvAfter s2Step375F4FlagArena s2Step375Add0Arena s2Step375Add0During s2Step375Add1During 797 799
    s2Step375Add0A s2Step375Add0B s2Step375Add1A s2Step375Add1B [827] [844] s2Step375Add0Work s2Step375Add1Work
    (fun q hq => s2Step375F4_owned (List.mem_toFinset.mpr hq)) s2Step375F4_flag s2Step375F4_carry
    s2Step375F4_distinct s2Step375F4_apart s2Step375Add0_checked s2Step375Add1_checked

private theorem s2Step375Front_branch : s2Step375FrontSigmaArena.checkBorrow 1 [799]=some s2Step375HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step375FrontSigmaArena,s2Step375EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step375FrontSigmaArena,s2Step375EntryGvAfter,s2Step375HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step375Front_entry : HmrFrontEntryValid s2Step375EntryFBefore s2Step375FrontBank 85 204 ⟨84,84,204,204⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step375FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step375EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step375EntryFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<796) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step375FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step375Front_sigma : s2Step375EntryGvAfter.checkBorrow 1 [797]=some s2Step375FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step375EntryGvAfter,arenaWires]
  · rfl

private def s2Step375HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step375HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step375HeadFBefore : Arena := s2Step375HeadGAfter

private def s2Step375HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596],768⟩

private def s2Step375HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826, 789],770⟩

private def s2Step375HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 793],769⟩

private def s2Step375HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811, 796],771⟩

private theorem s2Step375HeadBank_incomingDistinct : ([s2Step375HeadGRow,s2Step375HeadFRow,s2Step375HeadGvRow,s2Step375HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step375HeadF_Incoming : rowsOwned s2Step375HeadFBefore [s2Step375HeadFRow,s2Step375HeadGvRow,s2Step375HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step375HeadGRow,s2Step375HeadFRow,s2Step375HeadGvRow,s2Step375HeadFvRow] 1 s2Step375HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step375HeadFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step375HeadBank_outgoingOwned : rowsOwned s2Step375HeadFvAfter [s2Step375HeadGOut,s2Step375HeadFOut,s2Step375HeadGvOut,s2Step375HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step375HeadFvAfter (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step375HeadF_Outgoing : rowsOwned s2Step375HeadFvAfter [s2Step375HeadFOut,s2Step375HeadGvOut,s2Step375HeadFvOut] :=
  hmrRows_owned_drop s2Step375HeadFvAfter [s2Step375HeadGOut,s2Step375HeadFOut,s2Step375HeadGvOut,s2Step375HeadFvOut] 1 s2Step375HeadBank_outgoingOwned

private theorem s2Step375HeadF_distinct : (s2Step375HeadFRow.sign::s2Step375HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step375HeadF_owned : (s2Step375HeadFRow.sign::s2Step375HeadFRow.payload).toFinset⊆s2Step375HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step375HeadFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step375HeadF_reserved : s2Step375HeadFBefore.reserve s2Step375HeadFFresh.toFinset=some s2Step375HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step375HeadFFresh,arenaWires]
  · norm_num [s2Step375HeadFBefore,s2Step375HeadGAfter,s2Step375HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step375HeadFAfter,s2Step375HeadFBefore,s2Step375HeadGAfter,s2Step375HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step375HeadF_checked : planRowResizeLog s2Step375HeadFBefore s2Step375HeadFRow 86 s2Step375HeadFFresh=
    some (s2Step375HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 800],768⟩,growRow 768 s2Step375HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step375HeadFBefore s2Step375HeadFAfter s2Step375HeadFRow 86 s2Step375HeadFFresh
    s2Step375HeadF_distinct s2Step375HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step375HeadF_reserved
  have rowEq : WindowRow.mk (s2Step375HeadFRow.payload++s2Step375HeadFFresh) s2Step375HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 800],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step375HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step375HeadFvBefore : Arena := s2Step375HeadGvAfter

private theorem s2Step375HeadFv_Incoming : rowsOwned s2Step375HeadFvBefore [s2Step375HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step375HeadGRow,s2Step375HeadFRow,s2Step375HeadGvRow,s2Step375HeadFvRow] 3 s2Step375HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step375HeadFvBefore (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step375HeadFv_Outgoing : rowsOwned s2Step375HeadFvAfter [s2Step375HeadFvOut] :=
  hmrRows_owned_drop s2Step375HeadFvAfter [s2Step375HeadGOut,s2Step375HeadFOut,s2Step375HeadGvOut,s2Step375HeadFvOut] 3 s2Step375HeadBank_outgoingOwned

private theorem s2Step375HeadFv_distinct : (s2Step375HeadFvRow.sign::s2Step375HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step375HeadFv_owned : (s2Step375HeadFvRow.sign::s2Step375HeadFvRow.payload).toFinset⊆s2Step375HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step375HeadFvBefore (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step375HeadFv_reserved : s2Step375HeadFvBefore.reserve s2Step375HeadFvFresh.toFinset=some s2Step375HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step375HeadFvFresh,arenaWires]
  · norm_num [s2Step375HeadFvBefore,s2Step375HeadGvAfter,s2Step375HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step375HeadFvAfter,s2Step375HeadFvBefore,s2Step375HeadGvAfter,s2Step375HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step375HeadFv_checked : planRowResizeLog s2Step375HeadFvBefore s2Step375HeadFvRow 205 s2Step375HeadFvFresh=
    some (s2Step375HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826, 789, 802],770⟩,growRow 770 s2Step375HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step375HeadFvBefore s2Step375HeadFvAfter s2Step375HeadFvRow 205 s2Step375HeadFvFresh
    s2Step375HeadFv_distinct s2Step375HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step375HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step375HeadFvRow.payload++s2Step375HeadFvFresh) s2Step375HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826, 789, 802],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step375HeadG_Incoming : rowsOwned s2Step375HeadGBefore [s2Step375HeadGRow,s2Step375HeadFRow,s2Step375HeadGvRow,s2Step375HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step375HeadGRow,s2Step375HeadFRow,s2Step375HeadGvRow,s2Step375HeadFvRow] 0 s2Step375HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step375HeadGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step375HeadG_Outgoing : rowsOwned s2Step375HeadFvAfter [s2Step375HeadGOut,s2Step375HeadFOut,s2Step375HeadGvOut,s2Step375HeadFvOut] :=
  hmrRows_owned_drop s2Step375HeadFvAfter [s2Step375HeadGOut,s2Step375HeadFOut,s2Step375HeadGvOut,s2Step375HeadFvOut] 0 s2Step375HeadBank_outgoingOwned

private theorem s2Step375HeadG_distinct : (s2Step375HeadGRow.sign::s2Step375HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step375HeadG_owned : (s2Step375HeadGRow.sign::s2Step375HeadGRow.payload).toFinset⊆s2Step375HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step375HeadGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step375HeadG_reserved : s2Step375HeadGBefore.reserve s2Step375HeadGFresh.toFinset=some s2Step375HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step375HeadGFresh,arenaWires]
  · norm_num [s2Step375HeadGBefore,s2Step375HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step375HeadGAfter,s2Step375HeadGBefore,s2Step375HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step375HeadG_checked : planRowResizeLog s2Step375HeadGBefore s2Step375HeadGRow 86 s2Step375HeadGFresh=
    some (s2Step375HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 793, 825],769⟩,growRow 769 s2Step375HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step375HeadGBefore s2Step375HeadGAfter s2Step375HeadGRow 86 s2Step375HeadGFresh
    s2Step375HeadG_distinct s2Step375HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step375HeadG_reserved
  have rowEq : WindowRow.mk (s2Step375HeadGRow.payload++s2Step375HeadGFresh) s2Step375HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 793, 825],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step375HeadGvBefore : Arena := s2Step375HeadFAfter

private theorem s2Step375HeadGv_Incoming : rowsOwned s2Step375HeadGvBefore [s2Step375HeadGvRow,s2Step375HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step375HeadGRow,s2Step375HeadFRow,s2Step375HeadGvRow,s2Step375HeadFvRow] 2 s2Step375HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step375HeadGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step375HeadGv_Outgoing : rowsOwned s2Step375HeadFvAfter [s2Step375HeadGvOut,s2Step375HeadFvOut] :=
  hmrRows_owned_drop s2Step375HeadFvAfter [s2Step375HeadGOut,s2Step375HeadFOut,s2Step375HeadGvOut,s2Step375HeadFvOut] 2 s2Step375HeadBank_outgoingOwned

private theorem s2Step375HeadGv_distinct : (s2Step375HeadGvRow.sign::s2Step375HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step375HeadGv_owned : (s2Step375HeadGvRow.sign::s2Step375HeadGvRow.payload).toFinset⊆s2Step375HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step375HeadGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step375HeadGv_reserved : s2Step375HeadGvBefore.reserve s2Step375HeadGvFresh.toFinset=some s2Step375HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step375HeadGvFresh,arenaWires]
  · norm_num [s2Step375HeadGvBefore,s2Step375HeadFAfter,s2Step375HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step375HeadGvAfter,s2Step375HeadGvBefore,s2Step375HeadFAfter,s2Step375HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step375HeadGv_checked : planRowResizeLog s2Step375HeadGvBefore s2Step375HeadGvRow 205 s2Step375HeadGvFresh=
    some (s2Step375HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811, 796, 785],771⟩,growRow 771 s2Step375HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step375HeadGvBefore s2Step375HeadGvAfter s2Step375HeadGvRow 205 s2Step375HeadGvFresh
    s2Step375HeadGv_distinct s2Step375HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step375HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step375HeadGvRow.payload++s2Step375HeadGvFresh) s2Step375HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811, 796, 785],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step375HeadBank_rows : planWindowRowsLog s2Step375HeadGBefore [(s2Step375HeadGRow,86),(s2Step375HeadFRow,86),(s2Step375HeadGvRow,205),(s2Step375HeadFvRow,205)] [s2Step375HeadGFresh,s2Step375HeadFFresh,s2Step375HeadGvFresh,s2Step375HeadFvFresh]=
    some (s2Step375HeadFvAfter,[s2Step375HeadGOut,s2Step375HeadFOut,s2Step375HeadGvOut,s2Step375HeadFvOut],(growRow 769 s2Step375HeadGFresh ++ (growRow 768 s2Step375HeadFFresh ++ (growRow 771 s2Step375HeadGvFresh ++ (growRow 770 s2Step375HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step375HeadFvAfter [] []=some (s2Step375HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step375HeadFvBefore s2Step375HeadFvAfter s2Step375HeadFvAfter
    s2Step375HeadFvRow s2Step375HeadFvOut 205 s2Step375HeadFvFresh [] [] []
    (growRow 770 s2Step375HeadFvFresh) ([]) s2Step375HeadFv_Incoming s2Step375HeadFv_checked h4 s2Step375HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step375HeadGvBefore s2Step375HeadGvAfter s2Step375HeadFvAfter
    s2Step375HeadGvRow s2Step375HeadGvOut 205 s2Step375HeadGvFresh [(s2Step375HeadFvRow,205)] [s2Step375HeadFvFresh] [s2Step375HeadFvOut]
    (growRow 771 s2Step375HeadGvFresh) ((growRow 770 s2Step375HeadFvFresh ++ [])) s2Step375HeadGv_Incoming s2Step375HeadGv_checked h3 s2Step375HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step375HeadFBefore s2Step375HeadFAfter s2Step375HeadFvAfter
    s2Step375HeadFRow s2Step375HeadFOut 86 s2Step375HeadFFresh [(s2Step375HeadGvRow,205),(s2Step375HeadFvRow,205)] [s2Step375HeadGvFresh,s2Step375HeadFvFresh] [s2Step375HeadGvOut,s2Step375HeadFvOut]
    (growRow 768 s2Step375HeadFFresh) ((growRow 771 s2Step375HeadGvFresh ++ (growRow 770 s2Step375HeadFvFresh ++ []))) s2Step375HeadF_Incoming s2Step375HeadF_checked h2 s2Step375HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step375HeadGBefore s2Step375HeadGAfter s2Step375HeadFvAfter
    s2Step375HeadGRow s2Step375HeadGOut 86 s2Step375HeadGFresh [(s2Step375HeadFRow,86),(s2Step375HeadGvRow,205),(s2Step375HeadFvRow,205)] [s2Step375HeadFFresh,s2Step375HeadGvFresh,s2Step375HeadFvFresh] [s2Step375HeadFOut,s2Step375HeadGvOut,s2Step375HeadFvOut]
    (growRow 769 s2Step375HeadGFresh) ((growRow 768 s2Step375HeadFFresh ++ (growRow 771 s2Step375HeadGvFresh ++ (growRow 770 s2Step375HeadFvFresh ++ [])))) s2Step375HeadG_Incoming s2Step375HeadG_checked h1 s2Step375HeadG_Outgoing
  exact h0

private theorem s2Step375HeadBank_checked : compileHmrBankResizeLog .headroom s2Step375HeadGBefore ⟨s2Step375HeadFRow,s2Step375HeadGRow,s2Step375HeadFvRow,s2Step375HeadGvRow⟩ ⟨86,86,205,205⟩ [s2Step375HeadGFresh,s2Step375HeadFFresh,s2Step375HeadGvFresh,s2Step375HeadFvFresh]=
    some (s2Step375HeadFvAfter,⟨s2Step375HeadFOut,s2Step375HeadGOut,s2Step375HeadFvOut,s2Step375HeadGvOut⟩,(growRow 769 s2Step375HeadGFresh ++ (growRow 768 s2Step375HeadFFresh ++ (growRow 771 s2Step375HeadGvFresh ++ (growRow 770 s2Step375HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step375HeadBank_rows]
  rfl

private theorem s2Step375Front_checked : compileHmrSourceFrontLog s2Step375EntryFBefore s2Step375FrontBank 85 204 ⟨84,84,204,204⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step375FrontLog=some s2Step375FrontPlan := by
  have pairEq : s2Step375FrontPair=⟨s2Step375HeadFRow,s2Step375HeadGRow,s2Step375HeadFvRow,s2Step375HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step375FrontHead=⟨s2Step375ExitFRow,s2Step375ExitGRow,s2Step375ExitFvRow,s2Step375ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step375Add0A=s2Step375FrontHead.f.wires := by decide +kernel
  have gEq : s2Step375Add0B=s2Step375FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step375Add1A=s2Step375FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step375Add1B=s2Step375FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step375EntryFBefore s2Step375FrontBank 85 204 ⟨84,84,204,204⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step375FrontLog s2Step375FrontPlan
  · exact s2Step375Front_entry
  · exact s2Step375EntryBank_checked
  · exact s2Step375Front_sigma
  · rfl
  · exact s2Step375Front_branch
  · rfl
  · simpa only [s2Step375FrontPlan,pairEq] using s2Step375HeadBank_checked
  · simpa only [s2Step375FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step375F4_checked
  · exact s2Step375Counter_checked
  · rfl
  · simpa only [s2Step375FrontPlan,headEq] using s2Step375ExitBank_checked

private theorem s2Step375Complete_explicit_checked : compileHmrEarlyStepLog s2Step375EntryFBefore s2Step375FrontBank 85 204 ⟨84,84,204,204⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step375CompleteLog=some s2Step375CompletePlan := by
  let Q := s2Step375EarlyControlPlan
  have hq := s2Step375EarlyControl_plan_checked
  have fv1 : s2Step375CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step375CompleteOut.fv.payload[2]?.getD s2Step375CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step375CompleteOut.fv.payload[3]?.getD s2Step375CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step375CompleteOut.fv.payload[4]?.getD s2Step375CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step375EntryFBefore s2Step375EarlyControlArena s2Step375FrontBank 85 204 ⟨84,84,204,204⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step375CompleteLog s2Step375FrontPlan Q
    s2Step375Front_checked s2Step375Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step375Complete_owned s2Step375Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step375EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 797 s2Step375CompleteOut.fv.second (s2Step375CompleteOut.fv.payload[2]?.getD s2Step375CompleteOut.fv.sign) (s2Step375CompleteOut.fv.payload[3]?.getD s2Step375CompleteOut.fv.sign) (s2Step375CompleteOut.fv.payload[4]?.getD s2Step375CompleteOut.fv.sign) 799 60 s2Step375EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep375Arena : Arena := s2Step375EntryFBefore
def s2PrivateStep375Bank : WindowBank := s2Step375FrontBank
def s2PrivateStep375Spec : HmrSourceWalkStepLog := ⟨85,204,⟨84,84,204,204⟩,60,.early s2Step375CompleteLog⟩
def s2PrivateStep375Plan : HmrSourceStepPlan := .early s2Step375CompletePlan
theorem s2PrivateStep375_source : s2PrivateStep375Spec=s2ObservedLogs368[7] := rfl
theorem s2PrivateStep375_checked : compileHmrSourceStepLog s2PrivateStep375Arena s2PrivateStep375Bank
    s2PrivateStep375Spec.fgWidth s2PrivateStep375Spec.vWidth s2PrivateStep375Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]
    6 498 375 s2PrivateStep375Spec.need none s2PrivateStep375Spec.log=some s2PrivateStep375Plan := by
  change compileHmrSourceStepLog s2Step375EntryFBefore s2Step375FrontBank 85 204 ⟨84,84,204,204⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 6 498 375 60 none (.early s2Step375CompleteLog)=some (.early s2Step375CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 375<498)]
  rw [s2Step375Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
