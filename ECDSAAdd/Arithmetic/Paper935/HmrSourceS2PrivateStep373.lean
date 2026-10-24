import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep371
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

private def s2Step373CompleteMoves : List (Wire × Wire) := [(793,84)]

private def s2Step373EarlyControlLog : HmrEarlyControlLog := ⟨[793, 800, 799, 797, 789],[785],[802],[827, 844, 907, 913, 914, 915],[]⟩

private def s2Step373FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [811]],[[789], [797], [800], [799]],[[], [], [], []]⟩,[796],[825],[785],[802],[827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[785, 802, 827, 844]⟩

private def s2Step373CompleteLog : HmrEarlyStepLog := ⟨s2Step373FrontLog,s2Step373CompleteMoves,s2Step373EarlyControlLog⟩

private def s2Step373ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596],768⟩

private def s2Step373ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826],770⟩

private def s2Step373ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83],769⟩

private def s2Step373ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811],771⟩

private def s2Step373FrontOut : WindowBank := ⟨s2Step373ExitFOut,s2Step373ExitGOut,s2Step373ExitFvOut,s2Step373ExitGvOut⟩

private def s2Step373CompleteOut : WindowBank := s2Step373FrontOut.repacked s2Step373CompleteMoves

private def s2Step373EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step373EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step373EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step373EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step373EarlyControlPositiveArena,[785],s2Step373EarlyControlEqualityArena,[802],⟨⟨796,false⟩,[⟨⟨785,false⟩,802⟩]⟩⟩

private def s2Step373EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<916)),Finset.filter_subset _ _⟩

private def s2Step373EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<916)),Finset.filter_subset _ _⟩

private def s2Step373EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step373EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<793) ∨ (794≤q ∧ q<796) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step373EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<793) ∨ (794≤q ∧ q<796) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step373EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step373EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,793⟩,⟨⟨774,false⟩,800⟩,⟨⟨775,false⟩,799⟩,⟨⟨776,false⟩,797⟩,⟨⟨777,false⟩,789⟩]⟩

private def s2Step373EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step373EarlyControlZeroArena,s2Step373EarlyControlZeroPlan,s2Step373EarlyControlClassPlan,s2Step373EarlyControlFlagArena,s2Step373EarlyControlFittedArena,s2Step373EarlyControlHistoryArena,s2Step373EarlyControlSigmaArena,s2Step373EarlyControlOutputArena,s2Step373EarlyControlLog⟩

private def s2Step373CounterWork : List Wire := [785, 802, 827, 844]

private theorem s2Step373Counter_bounded : s2Step373CounterWork.toFinset⊆arenaWires := by norm_num [s2Step373CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step373HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step373CounterDuring : Arena := ⟨s2Step373HeadFvAfter.live∪s2Step373CounterWork.toFinset,Finset.union_subset s2Step373HeadFvAfter.bounded s2Step373Counter_bounded⟩

private def s2Step373EntryFFresh : List Wire := []

private def s2Step373EntryFvFresh : List Wire := []

private def s2Step373EntryGFresh : List Wire := []

private def s2Step373EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step373EntryGvFresh : List Wire := [811]

private def s2Step373ExitFExtra : List Wire := [797]

private def s2Step373ExitFvExtra : List Wire := [799]

private def s2Step373ExitGExtra : List Wire := [84, 789]

private def s2Step373ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<84) ∨ (85≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step373ExitGvExtra : List Wire := [800]

private def s2Step373Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step373Add0Work : List Wire := [827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step373Add0_bounded : s2Step373Add0Work.toFinset⊆arenaWires := by
  have h : s2Step373Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step373Add0During : Arena := ⟨s2Step373Add0Arena.live∪s2Step373Add0Work.toFinset,Finset.union_subset s2Step373Add0Arena.bounded s2Step373Add0_bounded⟩

private def s2Step373Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step373Add1Work : List Wire := [827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step373Add1_bounded : s2Step373Add1Work.toFinset⊆arenaWires := by
  have h : s2Step373Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step373Add1During : Arena := ⟨s2Step373Add1Arena.live∪s2Step373Add1Work.toFinset,Finset.union_subset s2Step373Add1Arena.bounded s2Step373Add1_bounded⟩

private def s2Step373F4FlagArena : Arena := ⟨s2Step373HeadFvAfter.live∪{785},Finset.union_subset s2Step373HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step373F4Plan : HmrHybridF4Plan := ⟨s2Step373F4FlagArena,[785],s2Step373Add0Arena,[802],s2Step373Add0During,s2Step373Add0Work,s2Step373Add1During,s2Step373Add1Work⟩

private def s2Step373HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 797],768⟩

private def s2Step373HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826, 799],770⟩

private def s2Step373HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 789],769⟩

private def s2Step373HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811, 800],771⟩

private def s2Step373FrontHead : WindowBank := ⟨s2Step373HeadFOut,s2Step373HeadGOut,s2Step373HeadFvOut,s2Step373HeadGvOut⟩

private def s2Step373EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596],768⟩

private def s2Step373EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826],770⟩

private def s2Step373EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84],769⟩

private def s2Step373EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811],771⟩

private def s2Step373FrontPair : WindowBank := ⟨s2Step373EntryFOut,s2Step373EntryGOut,s2Step373EntryFvOut,s2Step373EntryGvOut⟩

private def s2Step373FrontSigmaArena : Arena := ⟨s2Step373EntryGvAfter.live∪{796},Finset.union_subset s2Step373EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step373HeadFFresh : List Wire := [797]

private def s2Step373HeadFvFresh : List Wire := [799]

private def s2Step373HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step373HeadGFresh : List Wire := [789]

private def s2Step373HeadGvFresh : List Wire := [800]

private def s2Step373FrontPlan : HmrSourceFront := ⟨s2Step373EntryGvAfter,s2Step373FrontPair,(growRow 768 s2Step373EntryFFresh ++ (growRow 769 s2Step373EntryGFresh ++ (growRow 770 s2Step373EntryFvFresh ++ (growRow 771 s2Step373EntryGvFresh ++ [])))),s2Step373FrontSigmaArena,[796],s2Step373HeadGBefore,[825],
  s2Step373HeadFvAfter,s2Step373FrontHead,(growRow 769 s2Step373HeadGFresh ++ (growRow 768 s2Step373HeadFFresh ++ (growRow 771 s2Step373HeadGvFresh ++ (growRow 770 s2Step373HeadFvFresh ++ [])))),s2Step373F4Plan,s2Step373CounterDuring,s2Step373CounterWork,s2Step373ExitGvAfter,s2Step373FrontOut,(shrinkRow 769 s2Step373ExitGExtra ++ (shrinkRow 768 s2Step373ExitFExtra ++ (shrinkRow 770 s2Step373ExitFvExtra ++ (shrinkRow 771 s2Step373ExitGvExtra ++ []))))⟩

private def s2Step373CompletePlan : HmrEarlyStepPlan := ⟨s2Step373FrontPlan,s2Step373EarlyControlArena,s2Step373EarlyControlPlan,s2Step373CompleteMoves⟩

private theorem s2Step373Complete_apart : List.Disjoint (s2Step373CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [796, 825, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] := by
  have nd : ((s2Step373CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[796, 825, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step373Complete_owned : (s2Step373CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step373EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step373EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private def s2Step373CompleteMoveArena : Arena := ⟨s2Step373ExitGvAfter.live∪{84},Finset.union_subset s2Step373ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step373Complete_repack : s2Step373ExitGvAfter.checkRepack s2Step373CompleteMoves=some s2Step373EarlyControlArena := by
  have owned : 793∈s2Step373ExitGvAfter.live := by norm_num [s2Step373ExitGvAfter,arenaWires]
  have reserve : s2Step373ExitGvAfter.reserve {84}=some s2Step373CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step373ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step373CompleteMoveArena.retireSet {793}=s2Step373EarlyControlArena := by
    unfold Arena.retireSet s2Step373EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step373CompleteMoveArena,s2Step373ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step373CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step373CompleteMoveArena.retireSet {793}).checkRepack []=some s2Step373EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step373EarlyControl_branchOwned : ([825] : List Wire).toFinset⊆s2Step373EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step373EarlyControlSigmaArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<793) ∨ (794≤q ∧ q<796) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step373EarlyControl_branch : compileHmrBranchRetirement s2Step373EarlyControlSigmaArena 825=some s2Step373EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step373EarlyControl_branchOwned
  · ext q
    simp [s2Step373EarlyControlOutputArena,s2Step373EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step373EarlyControl_classEqualityBorrow : s2Step373EarlyControlPositiveArena.checkBorrow (([796, 785] : List Wire).length-1) s2Step373EarlyControlLog.classWork=some s2Step373EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step373EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step373EarlyControlPositiveArena (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step373EarlyControlEqualityArena,s2Step373EarlyControlPositiveArena,s2Step373EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step373EarlyControl_classEqualityOwned : ([796, 785] : List Wire).toFinset⊆s2Step373EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step373EarlyControlPositiveArena (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step373EarlyControl_classEquality : compileHmrEqualityLog s2Step373EarlyControlPositiveArena [796, 785] 0 s2Step373EarlyControlLog.classWork=some (s2Step373EarlyControlEqualityArena,s2Step373EarlyControlLog.classWork,s2Step373EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step373EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step373EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step373EarlyControl_classOwned : ([777, 789, 796] : List Wire).toFinset⊆s2Step373EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step373EarlyControlZeroArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step373EarlyControl_positiveBorrow : s2Step373EarlyControlZeroArena.checkBorrow (1) s2Step373EarlyControlLog.positiveWork=some s2Step373EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step373EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step373EarlyControlZeroArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step373EarlyControlPositiveArena,s2Step373EarlyControlZeroArena,s2Step373EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step373EarlyControl_class : compileHmrSourceClassLog s2Step373EarlyControlZeroArena false 777 s2Step373EarlyControlZeroPlan.top 0 796 s2Step373EarlyControlLog.positiveWork s2Step373EarlyControlLog.classWork=some s2Step373EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step373EarlyControlClassPlan s2Step373EarlyControlZeroArena false 777 s2Step373EarlyControlZeroPlan.top 0 796
  constructor
  · decide +kernel
  · exact s2Step373EarlyControl_classOwned
  · exact s2Step373EarlyControl_positiveBorrow
  · exact s2Step373EarlyControl_classEquality

private theorem s2Step373EarlyControl_entryRecordOwned : ([825, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step373EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step373EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step373EarlyControl_entrySigmaOwned : ([796, 254] : List Wire).toFinset⊆s2Step373EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step373EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step373EarlyControl_fitBorrow : s2Step373EarlyControlFlagArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step373EarlyControlLog.recordFresh=some s2Step373EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step373EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step373EarlyControlFlagArena (fun q => (0≤q ∧ q<916)) rfl
      decide +kernel
    · ext q
      simp [s2Step373EarlyControlFittedArena,s2Step373EarlyControlFlagArena,s2Step373EarlyControlLog,arenaWires]

private theorem s2Step373EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step373EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step373EarlyControlFlagArena (fun q => (0≤q ∧ q<916)) rfl
  decide +kernel

private theorem s2Step373EarlyControl_fit : compileHmrRecordGrowLog s2Step373EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step373EarlyControlLog.recordFresh=some s2Step373EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step373EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step373EarlyControl_fitBorrow

private theorem s2Step373EarlyControl_flagsBorrow : s2Step373EarlyControlEqualityArena.checkBorrow (6) s2Step373EarlyControlLog.flagWork=some s2Step373EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step373EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step373EarlyControlEqualityArena (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step373EarlyControlFlagArena,s2Step373EarlyControlEqualityArena,s2Step373EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step373EarlyControl_flagsOwned : ([802, 253, 252, 251] : List Wire).toFinset⊆s2Step373EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step373EarlyControlEqualityArena (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step373EarlyControl_flags : compileHmrFlagsLog s2Step373EarlyControlClassPlan.equalityArena s2Step373EarlyControlClassPlan.equality.top 253 252 251 s2Step373EarlyControlLog.flagWork=some s2Step373EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step373EarlyControl_flagsOwned⟩
  · exact s2Step373EarlyControl_flagsBorrow

private theorem s2Step373EarlyControl_historyBorrow : s2Step373EarlyControlArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step373EarlyControlLog.recordFresh=some s2Step373EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step373EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step373EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step373EarlyControlHistoryArena,s2Step373EarlyControlArena,s2Step373EarlyControlLog,arenaWires]

private theorem s2Step373EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step373EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step373EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step373EarlyControl_history : compileHmrRecordGrowLog s2Step373EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step373EarlyControlLog.recordFresh=some s2Step373EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step373EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step373EarlyControl_historyBorrow

private theorem s2Step373EarlyControl_sigmaOwned : ([254, 796] : List Wire).toFinset⊆s2Step373EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step373EarlyControlHistoryArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step373EarlyControl_sigmaReleaseOwned : ([796] : List Wire).toFinset⊆s2Step373EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step373EarlyControlHistoryArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step373EarlyControl_sigmaRelease : s2Step373EarlyControlHistoryArena.release {796} (fun _ => false)=some s2Step373EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step373EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step373EarlyControlSigmaArena,s2Step373EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step373EarlyControl_sigma : compileHmrSigmaDropLog s2Step373EarlyControlHistoryArena false 0 0 254 796 []=some s2Step373EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step373EarlyControl_sigmaOwned⟩
  · exact s2Step373EarlyControl_sigmaRelease

private theorem s2Step373EarlyControl_zeroBorrow : s2Step373EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step373EarlyControlLog.zeroWork=some s2Step373EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step373EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step373EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step373EarlyControlZeroArena,s2Step373EarlyControlArena,s2Step373EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step373EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step373EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step373EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step373EarlyControl_zero : compileHmrEqualityLog s2Step373EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step373EarlyControlLog.zeroWork=some (s2Step373EarlyControlZeroArena,s2Step373EarlyControlLog.zeroWork,s2Step373EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step373EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step373EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step373EarlyControl_logged : s2Step373EarlyControlPlan.Logged s2Step373EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 796 254 253 252 251 825 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step373EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step373EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step373EarlyControl_zero
  · exact s2Step373EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step373EarlyControl_flags
  · exact s2Step373EarlyControl_fit
  · exact s2Step373EarlyControl_history
  · exact s2Step373EarlyControl_sigma
  · exact s2Step373EarlyControl_branch

private theorem s2Step373EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step373EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 796 254 253 252 251 825 60 s2Step373EarlyControlLog=some s2Step373EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step373EarlyControlPlan s2Step373EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 796 254 253 252 251 825 60 s2Step373EarlyControl_logged

private def s2Step373EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<811) ∨ (812≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step373EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596],768⟩

private def s2Step373EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826],770⟩

private def s2Step373EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84],769⟩

private def s2Step373EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819],771⟩

private def s2Step373FrontBank : WindowBank := ⟨s2Step373EntryFRow,s2Step373EntryGRow,s2Step373EntryFvRow,s2Step373EntryGvRow⟩

private def s2Step373Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 797, 768]

private def s2Step373Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 789, 769]

private def s2Step373Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826, 799, 770]

private def s2Step373Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811, 800, 771]

private theorem s2Step373Counter_apart : Disjoint s2Step373HeadFvAfter.live s2Step373CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step373HeadFvAfter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step373Counter_borrowed : s2Step373HeadFvAfter.checkBorrow 4 s2Step373CounterWork=some s2Step373CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step373HeadFvAfter s2Step373CounterDuring s2Step373CounterWork.toFinset s2Step373Counter_bounded s2Step373Counter_apart rfl

private theorem s2Step373Counter_owned : (796::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step373HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step373HeadFvAfter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step373Counter_checked : compileHmrCounterStepLog s2Step373HeadFvAfter true 796 [772, 773, 774, 775, 776, 777] s2Step373CounterWork=some s2Step373CounterDuring := by
  have owned : ∀q∈796::[772, 773, 774, 775, 776, 777],q∈s2Step373HeadFvAfter.live := fun q hq => s2Step373Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step373Counter_borrowed

private def s2Step373EntryFAfter : Arena := s2Step373EntryFBefore

private theorem s2Step373EntryBank_incomingDistinct : ([s2Step373EntryFRow,s2Step373EntryGRow,s2Step373EntryFvRow,s2Step373EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step373EntryF_Incoming : rowsOwned s2Step373EntryFBefore [s2Step373EntryFRow,s2Step373EntryGRow,s2Step373EntryFvRow,s2Step373EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step373EntryFRow,s2Step373EntryGRow,s2Step373EntryFvRow,s2Step373EntryGvRow] 0 s2Step373EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step373EntryFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<811) ∨ (812≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step373EntryBank_outgoingOwned : rowsOwned s2Step373EntryGvAfter [s2Step373EntryFOut,s2Step373EntryGOut,s2Step373EntryFvOut,s2Step373EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step373EntryGvAfter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step373EntryF_Outgoing : rowsOwned s2Step373EntryGvAfter [s2Step373EntryFOut,s2Step373EntryGOut,s2Step373EntryFvOut,s2Step373EntryGvOut] :=
  hmrRows_owned_drop s2Step373EntryGvAfter [s2Step373EntryFOut,s2Step373EntryGOut,s2Step373EntryFvOut,s2Step373EntryGvOut] 0 s2Step373EntryBank_outgoingOwned

private theorem s2Step373EntryF_distinct : (s2Step373EntryFRow.sign::s2Step373EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step373EntryF_owned : (s2Step373EntryFRow.sign::s2Step373EntryFRow.payload).toFinset⊆s2Step373EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step373EntryFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<811) ∨ (812≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step373EntryF_reserved : s2Step373EntryFBefore.reserve s2Step373EntryFFresh.toFinset=some s2Step373EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step373EntryFFresh,arenaWires]
  · norm_num [s2Step373EntryFBefore,s2Step373EntryFFresh,arenaWires]
  · simp only [s2Step373EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step373EntryF_checked : planRowResizeLog s2Step373EntryFBefore s2Step373EntryFRow 85 s2Step373EntryFFresh=
    some (s2Step373EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596],768⟩,growRow 768 s2Step373EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step373EntryFBefore s2Step373EntryFAfter s2Step373EntryFRow 85 s2Step373EntryFFresh
    s2Step373EntryF_distinct s2Step373EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step373EntryF_reserved
  have rowEq : WindowRow.mk (s2Step373EntryFRow.payload++s2Step373EntryFFresh) s2Step373EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step373EntryFvAfter : Arena := s2Step373EntryFBefore

private def s2Step373EntryFvBefore : Arena := s2Step373EntryFBefore

private theorem s2Step373EntryFv_Incoming : rowsOwned s2Step373EntryFvBefore [s2Step373EntryFvRow,s2Step373EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step373EntryFRow,s2Step373EntryGRow,s2Step373EntryFvRow,s2Step373EntryGvRow] 2 s2Step373EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step373EntryFvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<811) ∨ (812≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step373EntryFv_Outgoing : rowsOwned s2Step373EntryGvAfter [s2Step373EntryFvOut,s2Step373EntryGvOut] :=
  hmrRows_owned_drop s2Step373EntryGvAfter [s2Step373EntryFOut,s2Step373EntryGOut,s2Step373EntryFvOut,s2Step373EntryGvOut] 2 s2Step373EntryBank_outgoingOwned

private theorem s2Step373EntryFv_distinct : (s2Step373EntryFvRow.sign::s2Step373EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step373EntryFv_owned : (s2Step373EntryFvRow.sign::s2Step373EntryFvRow.payload).toFinset⊆s2Step373EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step373EntryFvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<811) ∨ (812≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step373EntryFv_reserved : s2Step373EntryFvBefore.reserve s2Step373EntryFvFresh.toFinset=some s2Step373EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step373EntryFvFresh,arenaWires]
  · norm_num [s2Step373EntryFvBefore,s2Step373EntryFBefore,s2Step373EntryFvFresh,arenaWires]
  · simp only [s2Step373EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step373EntryFv_checked : planRowResizeLog s2Step373EntryFvBefore s2Step373EntryFvRow 203 s2Step373EntryFvFresh=
    some (s2Step373EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826],770⟩,growRow 770 s2Step373EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step373EntryFvBefore s2Step373EntryFvAfter s2Step373EntryFvRow 203 s2Step373EntryFvFresh
    s2Step373EntryFv_distinct s2Step373EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step373EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step373EntryFvRow.payload++s2Step373EntryFvFresh) s2Step373EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step373EntryGAfter : Arena := s2Step373EntryFBefore

private def s2Step373EntryGBefore : Arena := s2Step373EntryFBefore

private theorem s2Step373EntryG_Incoming : rowsOwned s2Step373EntryGBefore [s2Step373EntryGRow,s2Step373EntryFvRow,s2Step373EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step373EntryFRow,s2Step373EntryGRow,s2Step373EntryFvRow,s2Step373EntryGvRow] 1 s2Step373EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step373EntryGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<811) ∨ (812≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step373EntryG_Outgoing : rowsOwned s2Step373EntryGvAfter [s2Step373EntryGOut,s2Step373EntryFvOut,s2Step373EntryGvOut] :=
  hmrRows_owned_drop s2Step373EntryGvAfter [s2Step373EntryFOut,s2Step373EntryGOut,s2Step373EntryFvOut,s2Step373EntryGvOut] 1 s2Step373EntryBank_outgoingOwned

private theorem s2Step373EntryG_distinct : (s2Step373EntryGRow.sign::s2Step373EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step373EntryG_owned : (s2Step373EntryGRow.sign::s2Step373EntryGRow.payload).toFinset⊆s2Step373EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step373EntryGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<811) ∨ (812≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step373EntryG_reserved : s2Step373EntryGBefore.reserve s2Step373EntryGFresh.toFinset=some s2Step373EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step373EntryGFresh,arenaWires]
  · norm_num [s2Step373EntryGBefore,s2Step373EntryFBefore,s2Step373EntryGFresh,arenaWires]
  · simp only [s2Step373EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step373EntryG_checked : planRowResizeLog s2Step373EntryGBefore s2Step373EntryGRow 85 s2Step373EntryGFresh=
    some (s2Step373EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84],769⟩,growRow 769 s2Step373EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step373EntryGBefore s2Step373EntryGAfter s2Step373EntryGRow 85 s2Step373EntryGFresh
    s2Step373EntryG_distinct s2Step373EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step373EntryG_reserved
  have rowEq : WindowRow.mk (s2Step373EntryGRow.payload++s2Step373EntryGFresh) s2Step373EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step373EntryGvBefore : Arena := s2Step373EntryFBefore

private theorem s2Step373EntryGv_Incoming : rowsOwned s2Step373EntryGvBefore [s2Step373EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step373EntryFRow,s2Step373EntryGRow,s2Step373EntryFvRow,s2Step373EntryGvRow] 3 s2Step373EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step373EntryGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<811) ∨ (812≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step373EntryGv_Outgoing : rowsOwned s2Step373EntryGvAfter [s2Step373EntryGvOut] :=
  hmrRows_owned_drop s2Step373EntryGvAfter [s2Step373EntryFOut,s2Step373EntryGOut,s2Step373EntryFvOut,s2Step373EntryGvOut] 3 s2Step373EntryBank_outgoingOwned

private theorem s2Step373EntryGv_distinct : (s2Step373EntryGvRow.sign::s2Step373EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step373EntryGv_owned : (s2Step373EntryGvRow.sign::s2Step373EntryGvRow.payload).toFinset⊆s2Step373EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step373EntryGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<811) ∨ (812≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step373EntryGv_reserved : s2Step373EntryGvBefore.reserve s2Step373EntryGvFresh.toFinset=some s2Step373EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step373EntryGvFresh,arenaWires]
  · norm_num [s2Step373EntryGvBefore,s2Step373EntryFBefore,s2Step373EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step373EntryGvAfter,s2Step373EntryGvBefore,s2Step373EntryFBefore,s2Step373EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step373EntryGv_checked : planRowResizeLog s2Step373EntryGvBefore s2Step373EntryGvRow 203 s2Step373EntryGvFresh=
    some (s2Step373EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811],771⟩,growRow 771 s2Step373EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step373EntryGvBefore s2Step373EntryGvAfter s2Step373EntryGvRow 203 s2Step373EntryGvFresh
    s2Step373EntryGv_distinct s2Step373EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step373EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step373EntryGvRow.payload++s2Step373EntryGvFresh) s2Step373EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step373EntryBank_rows : planWindowRowsLog s2Step373EntryFBefore [(s2Step373EntryFRow,85),(s2Step373EntryGRow,85),(s2Step373EntryFvRow,203),(s2Step373EntryGvRow,203)] [s2Step373EntryFFresh,s2Step373EntryGFresh,s2Step373EntryFvFresh,s2Step373EntryGvFresh]=
    some (s2Step373EntryGvAfter,[s2Step373EntryFOut,s2Step373EntryGOut,s2Step373EntryFvOut,s2Step373EntryGvOut],(growRow 768 s2Step373EntryFFresh ++ (growRow 769 s2Step373EntryGFresh ++ (growRow 770 s2Step373EntryFvFresh ++ (growRow 771 s2Step373EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step373EntryGvAfter [] []=some (s2Step373EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step373EntryGvBefore s2Step373EntryGvAfter s2Step373EntryGvAfter
    s2Step373EntryGvRow s2Step373EntryGvOut 203 s2Step373EntryGvFresh [] [] []
    (growRow 771 s2Step373EntryGvFresh) ([]) s2Step373EntryGv_Incoming s2Step373EntryGv_checked h4 s2Step373EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step373EntryFvBefore s2Step373EntryFvAfter s2Step373EntryGvAfter
    s2Step373EntryFvRow s2Step373EntryFvOut 203 s2Step373EntryFvFresh [(s2Step373EntryGvRow,203)] [s2Step373EntryGvFresh] [s2Step373EntryGvOut]
    (growRow 770 s2Step373EntryFvFresh) ((growRow 771 s2Step373EntryGvFresh ++ [])) s2Step373EntryFv_Incoming s2Step373EntryFv_checked h3 s2Step373EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step373EntryGBefore s2Step373EntryGAfter s2Step373EntryGvAfter
    s2Step373EntryGRow s2Step373EntryGOut 85 s2Step373EntryGFresh [(s2Step373EntryFvRow,203),(s2Step373EntryGvRow,203)] [s2Step373EntryFvFresh,s2Step373EntryGvFresh] [s2Step373EntryFvOut,s2Step373EntryGvOut]
    (growRow 769 s2Step373EntryGFresh) ((growRow 770 s2Step373EntryFvFresh ++ (growRow 771 s2Step373EntryGvFresh ++ []))) s2Step373EntryG_Incoming s2Step373EntryG_checked h2 s2Step373EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step373EntryFBefore s2Step373EntryFAfter s2Step373EntryGvAfter
    s2Step373EntryFRow s2Step373EntryFOut 85 s2Step373EntryFFresh [(s2Step373EntryGRow,85),(s2Step373EntryFvRow,203),(s2Step373EntryGvRow,203)] [s2Step373EntryGFresh,s2Step373EntryFvFresh,s2Step373EntryGvFresh] [s2Step373EntryGOut,s2Step373EntryFvOut,s2Step373EntryGvOut]
    (growRow 768 s2Step373EntryFFresh) ((growRow 769 s2Step373EntryGFresh ++ (growRow 770 s2Step373EntryFvFresh ++ (growRow 771 s2Step373EntryGvFresh ++ [])))) s2Step373EntryF_Incoming s2Step373EntryF_checked h1 s2Step373EntryF_Outgoing
  exact h0

private theorem s2Step373EntryBank_checked : compileHmrBankResizeLog .entry s2Step373EntryFBefore ⟨s2Step373EntryFRow,s2Step373EntryGRow,s2Step373EntryFvRow,s2Step373EntryGvRow⟩ ⟨85,85,203,203⟩ [s2Step373EntryFFresh,s2Step373EntryGFresh,s2Step373EntryFvFresh,s2Step373EntryGvFresh]=
    some (s2Step373EntryGvAfter,⟨s2Step373EntryFOut,s2Step373EntryGOut,s2Step373EntryFvOut,s2Step373EntryGvOut⟩,(growRow 768 s2Step373EntryFFresh ++ (growRow 769 s2Step373EntryGFresh ++ (growRow 770 s2Step373EntryFvFresh ++ (growRow 771 s2Step373EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step373EntryBank_rows]
  rfl

private def s2Step373ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<84) ∨ (85≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<797) ∨ (798≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step373ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<84) ∨ (85≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step373ExitFBefore : Arena := s2Step373ExitGAfter

private def s2Step373ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 797],768⟩

private def s2Step373ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826, 799],770⟩

private def s2Step373ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 789],769⟩

private def s2Step373ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811, 800],771⟩

private theorem s2Step373ExitBank_incomingDistinct : ([s2Step373ExitGRow,s2Step373ExitFRow,s2Step373ExitFvRow,s2Step373ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step373ExitF_Incoming : rowsOwned s2Step373ExitFBefore [s2Step373ExitFRow,s2Step373ExitFvRow,s2Step373ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step373ExitGRow,s2Step373ExitFRow,s2Step373ExitFvRow,s2Step373ExitGvRow] 1 s2Step373ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step373ExitFBefore (fun q => (0≤q ∧ q<84) ∨ (85≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step373ExitBank_outgoingOwned : rowsOwned s2Step373ExitGvAfter [s2Step373ExitGOut,s2Step373ExitFOut,s2Step373ExitFvOut,s2Step373ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step373ExitGvAfter (fun q => (0≤q ∧ q<84) ∨ (85≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step373ExitF_Outgoing : rowsOwned s2Step373ExitGvAfter [s2Step373ExitFOut,s2Step373ExitFvOut,s2Step373ExitGvOut] :=
  hmrRows_owned_drop s2Step373ExitGvAfter [s2Step373ExitGOut,s2Step373ExitFOut,s2Step373ExitFvOut,s2Step373ExitGvOut] 1 s2Step373ExitBank_outgoingOwned

private theorem s2Step373ExitF_distinct : (s2Step373ExitFRow.sign::s2Step373ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step373ExitF_owned : (s2Step373ExitFRow.sign::s2Step373ExitFRow.payload).toFinset⊆s2Step373ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step373ExitFBefore (fun q => (0≤q ∧ q<84) ∨ (85≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step373ExitF_retired : s2Step373ExitFBefore.retireSet s2Step373ExitFExtra.toFinset=s2Step373ExitFAfter := by
  unfold Arena.retireSet s2Step373ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step373ExitFBefore,s2Step373ExitGAfter,s2Step373ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step373ExitF_checked : planRowResizeLog s2Step373ExitFBefore s2Step373ExitFRow 85 []=
    some (s2Step373ExitFAfter,s2Step373ExitFOut,shrinkRow 768 s2Step373ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step373ExitFBefore s2Step373ExitFRow 85 s2Step373ExitF_distinct s2Step373ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step373ExitFRow.payload.take 85) s2Step373ExitFRow.sign=s2Step373ExitFOut := by decide +kernel
  have hi : s2Step373ExitFRow.payload.drop 85=s2Step373ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step373ExitF_retired] at result
  exact result

private def s2Step373ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<84) ∨ (85≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step373ExitFvBefore : Arena := s2Step373ExitFAfter

private theorem s2Step373ExitFv_Incoming : rowsOwned s2Step373ExitFvBefore [s2Step373ExitFvRow,s2Step373ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step373ExitGRow,s2Step373ExitFRow,s2Step373ExitFvRow,s2Step373ExitGvRow] 2 s2Step373ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step373ExitFvBefore (fun q => (0≤q ∧ q<84) ∨ (85≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<797) ∨ (798≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step373ExitFv_Outgoing : rowsOwned s2Step373ExitGvAfter [s2Step373ExitFvOut,s2Step373ExitGvOut] :=
  hmrRows_owned_drop s2Step373ExitGvAfter [s2Step373ExitGOut,s2Step373ExitFOut,s2Step373ExitFvOut,s2Step373ExitGvOut] 2 s2Step373ExitBank_outgoingOwned

private theorem s2Step373ExitFv_distinct : (s2Step373ExitFvRow.sign::s2Step373ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step373ExitFv_owned : (s2Step373ExitFvRow.sign::s2Step373ExitFvRow.payload).toFinset⊆s2Step373ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step373ExitFvBefore (fun q => (0≤q ∧ q<84) ∨ (85≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<797) ∨ (798≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step373ExitFv_retired : s2Step373ExitFvBefore.retireSet s2Step373ExitFvExtra.toFinset=s2Step373ExitFvAfter := by
  unfold Arena.retireSet s2Step373ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step373ExitFvBefore,s2Step373ExitFAfter,s2Step373ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step373ExitFv_checked : planRowResizeLog s2Step373ExitFvBefore s2Step373ExitFvRow 203 []=
    some (s2Step373ExitFvAfter,s2Step373ExitFvOut,shrinkRow 770 s2Step373ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step373ExitFvBefore s2Step373ExitFvRow 203 s2Step373ExitFv_distinct s2Step373ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step373ExitFvRow.payload.take 203) s2Step373ExitFvRow.sign=s2Step373ExitFvOut := by decide +kernel
  have hi : s2Step373ExitFvRow.payload.drop 203=s2Step373ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step373ExitFv_retired] at result
  exact result

private def s2Step373ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private theorem s2Step373ExitG_Incoming : rowsOwned s2Step373ExitGBefore [s2Step373ExitGRow,s2Step373ExitFRow,s2Step373ExitFvRow,s2Step373ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step373ExitGRow,s2Step373ExitFRow,s2Step373ExitFvRow,s2Step373ExitGvRow] 0 s2Step373ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step373ExitGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step373ExitG_Outgoing : rowsOwned s2Step373ExitGvAfter [s2Step373ExitGOut,s2Step373ExitFOut,s2Step373ExitFvOut,s2Step373ExitGvOut] :=
  hmrRows_owned_drop s2Step373ExitGvAfter [s2Step373ExitGOut,s2Step373ExitFOut,s2Step373ExitFvOut,s2Step373ExitGvOut] 0 s2Step373ExitBank_outgoingOwned

private theorem s2Step373ExitG_distinct : (s2Step373ExitGRow.sign::s2Step373ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step373ExitG_owned : (s2Step373ExitGRow.sign::s2Step373ExitGRow.payload).toFinset⊆s2Step373ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step373ExitGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step373ExitG_retired : s2Step373ExitGBefore.retireSet s2Step373ExitGExtra.toFinset=s2Step373ExitGAfter := by
  unfold Arena.retireSet s2Step373ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step373ExitGBefore,s2Step373ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step373ExitG_checked : planRowResizeLog s2Step373ExitGBefore s2Step373ExitGRow 84 []=
    some (s2Step373ExitGAfter,s2Step373ExitGOut,shrinkRow 769 s2Step373ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step373ExitGBefore s2Step373ExitGRow 84 s2Step373ExitG_distinct s2Step373ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step373ExitGRow.payload.take 84) s2Step373ExitGRow.sign=s2Step373ExitGOut := by decide +kernel
  have hi : s2Step373ExitGRow.payload.drop 84=s2Step373ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step373ExitG_retired] at result
  exact result

private def s2Step373ExitGvBefore : Arena := s2Step373ExitFvAfter

private theorem s2Step373ExitGv_Incoming : rowsOwned s2Step373ExitGvBefore [s2Step373ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step373ExitGRow,s2Step373ExitFRow,s2Step373ExitFvRow,s2Step373ExitGvRow] 3 s2Step373ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step373ExitGvBefore (fun q => (0≤q ∧ q<84) ∨ (85≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step373ExitGv_Outgoing : rowsOwned s2Step373ExitGvAfter [s2Step373ExitGvOut] :=
  hmrRows_owned_drop s2Step373ExitGvAfter [s2Step373ExitGOut,s2Step373ExitFOut,s2Step373ExitFvOut,s2Step373ExitGvOut] 3 s2Step373ExitBank_outgoingOwned

private theorem s2Step373ExitGv_distinct : (s2Step373ExitGvRow.sign::s2Step373ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step373ExitGv_owned : (s2Step373ExitGvRow.sign::s2Step373ExitGvRow.payload).toFinset⊆s2Step373ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step373ExitGvBefore (fun q => (0≤q ∧ q<84) ∨ (85≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step373ExitGv_retired : s2Step373ExitGvBefore.retireSet s2Step373ExitGvExtra.toFinset=s2Step373ExitGvAfter := by
  unfold Arena.retireSet s2Step373ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step373ExitGvBefore,s2Step373ExitFvAfter,s2Step373ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step373ExitGv_checked : planRowResizeLog s2Step373ExitGvBefore s2Step373ExitGvRow 203 []=
    some (s2Step373ExitGvAfter,s2Step373ExitGvOut,shrinkRow 771 s2Step373ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step373ExitGvBefore s2Step373ExitGvRow 203 s2Step373ExitGv_distinct s2Step373ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step373ExitGvRow.payload.take 203) s2Step373ExitGvRow.sign=s2Step373ExitGvOut := by decide +kernel
  have hi : s2Step373ExitGvRow.payload.drop 203=s2Step373ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step373ExitGv_retired] at result
  exact result

private theorem s2Step373ExitBank_rows : planWindowRowsLog s2Step373ExitGBefore [(s2Step373ExitGRow,84),(s2Step373ExitFRow,85),(s2Step373ExitFvRow,203),(s2Step373ExitGvRow,203)] [[],[],[],[]]=
    some (s2Step373ExitGvAfter,[s2Step373ExitGOut,s2Step373ExitFOut,s2Step373ExitFvOut,s2Step373ExitGvOut],(shrinkRow 769 s2Step373ExitGExtra ++ (shrinkRow 768 s2Step373ExitFExtra ++ (shrinkRow 770 s2Step373ExitFvExtra ++ (shrinkRow 771 s2Step373ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step373ExitGvAfter [] []=some (s2Step373ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step373ExitGvBefore s2Step373ExitGvAfter s2Step373ExitGvAfter
    s2Step373ExitGvRow s2Step373ExitGvOut 203 [] [] [] []
    (shrinkRow 771 s2Step373ExitGvExtra) ([]) s2Step373ExitGv_Incoming s2Step373ExitGv_checked h4 s2Step373ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step373ExitFvBefore s2Step373ExitFvAfter s2Step373ExitGvAfter
    s2Step373ExitFvRow s2Step373ExitFvOut 203 [] [(s2Step373ExitGvRow,203)] [[]] [s2Step373ExitGvOut]
    (shrinkRow 770 s2Step373ExitFvExtra) ((shrinkRow 771 s2Step373ExitGvExtra ++ [])) s2Step373ExitFv_Incoming s2Step373ExitFv_checked h3 s2Step373ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step373ExitFBefore s2Step373ExitFAfter s2Step373ExitGvAfter
    s2Step373ExitFRow s2Step373ExitFOut 85 [] [(s2Step373ExitFvRow,203),(s2Step373ExitGvRow,203)] [[],[]] [s2Step373ExitFvOut,s2Step373ExitGvOut]
    (shrinkRow 768 s2Step373ExitFExtra) ((shrinkRow 770 s2Step373ExitFvExtra ++ (shrinkRow 771 s2Step373ExitGvExtra ++ []))) s2Step373ExitF_Incoming s2Step373ExitF_checked h2 s2Step373ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step373ExitGBefore s2Step373ExitGAfter s2Step373ExitGvAfter
    s2Step373ExitGRow s2Step373ExitGOut 84 [] [(s2Step373ExitFRow,85),(s2Step373ExitFvRow,203),(s2Step373ExitGvRow,203)] [[],[],[]] [s2Step373ExitFOut,s2Step373ExitFvOut,s2Step373ExitGvOut]
    (shrinkRow 769 s2Step373ExitGExtra) ((shrinkRow 768 s2Step373ExitFExtra ++ (shrinkRow 770 s2Step373ExitFvExtra ++ (shrinkRow 771 s2Step373ExitGvExtra ++ [])))) s2Step373ExitG_Incoming s2Step373ExitG_checked h1 s2Step373ExitG_Outgoing
  exact h0

private theorem s2Step373ExitBank_checked : compileHmrBankResizeLog .exit s2Step373ExitGBefore ⟨s2Step373ExitFRow,s2Step373ExitGRow,s2Step373ExitFvRow,s2Step373ExitGvRow⟩ ⟨85,84,203,203⟩ [[],[],[],[]]=
    some (s2Step373ExitGvAfter,⟨s2Step373ExitFOut,s2Step373ExitGOut,s2Step373ExitFvOut,s2Step373ExitGvOut⟩,(shrinkRow 769 s2Step373ExitGExtra ++ (shrinkRow 768 s2Step373ExitFExtra ++ (shrinkRow 770 s2Step373ExitFvExtra ++ (shrinkRow 771 s2Step373ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step373ExitBank_rows]
  rfl

private theorem s2Step373Add0_apart : Disjoint s2Step373Add0Arena.live s2Step373Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step373Add0Arena (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step373Add0_card : s2Step373Add0Arena.live.card=910 := by
  decide +kernel

private theorem s2Step373Add0_borrowed : s2Step373Add0Arena.checkBorrow (hmrHybridCount s2Step373Add0Arena s2Step373Add0B.length) s2Step373Add0Work=some s2Step373Add0During := by
  have len : s2Step373Add0Work.length=hmrHybridCount s2Step373Add0Arena s2Step373Add0B.length := by
    rw [hmrHybridCount,s2Step373Add0_card]
    decide +kernel
  have nd : s2Step373Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step373Add0Arena s2Step373Add0During s2Step373Add0Work.toFinset s2Step373Add0_bounded s2Step373Add0_apart rfl

private theorem s2Step373Add0_distinct : (785::825::802::(s2Step373Add0A++s2Step373Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step373Add0_owned : (785::825::802::(s2Step373Add0A++s2Step373Add0B)).toFinset⊆s2Step373Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step373Add0Arena (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step373Add0_checked : compileHmrHybridCinLog s2Step373Add0Arena 825 785 802 s2Step373Add0A s2Step373Add0B s2Step373Add0Work=some s2Step373Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step373Add0Arena s2Step373Add0During 825 785 802 s2Step373Add0A s2Step373Add0B s2Step373Add0Work
    (by decide +kernel) (by decide +kernel) s2Step373Add0_distinct
    (fun q hq => s2Step373Add0_owned (List.mem_toFinset.mpr hq)) s2Step373Add0_borrowed

private theorem s2Step373Add1_apart : Disjoint s2Step373Add1Arena.live s2Step373Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step373Add1Arena (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step373Add1_card : s2Step373Add1Arena.live.card=910 := by
  decide +kernel

private theorem s2Step373Add1_borrowed : s2Step373Add1Arena.checkBorrow (hmrHybridCount s2Step373Add1Arena s2Step373Add1B.length) s2Step373Add1Work=some s2Step373Add1During := by
  have len : s2Step373Add1Work.length=hmrHybridCount s2Step373Add1Arena s2Step373Add1B.length := by
    rw [hmrHybridCount,s2Step373Add1_card]
    decide +kernel
  have nd : s2Step373Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step373Add1Arena s2Step373Add1During s2Step373Add1Work.toFinset s2Step373Add1_bounded s2Step373Add1_apart rfl

private theorem s2Step373Add1_distinct : (785::825::802::(s2Step373Add1A++s2Step373Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step373Add1_owned : (785::825::802::(s2Step373Add1A++s2Step373Add1B)).toFinset⊆s2Step373Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step373Add1Arena (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step373Add1_checked : compileHmrHybridCinLog s2Step373Add1Arena 825 785 802 s2Step373Add1A s2Step373Add1B s2Step373Add1Work=some s2Step373Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step373Add1Arena s2Step373Add1During 825 785 802 s2Step373Add1A s2Step373Add1B s2Step373Add1Work
    (by decide +kernel) (by decide +kernel) s2Step373Add1_distinct
    (fun q hq => s2Step373Add1_owned (List.mem_toFinset.mpr hq)) s2Step373Add1_borrowed

private theorem s2Step373F4_apart : Disjoint (s2Step373Add0A++s2Step373Add0B).toFinset (s2Step373Add1A++s2Step373Add1B).toFinset := by
  have nd : ((s2Step373Add0A++s2Step373Add0B)++(s2Step373Add1A++s2Step373Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step373F4_carry : s2Step373F4FlagArena.checkBorrow 1 [802]=some s2Step373Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step373F4FlagArena,s2Step373HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step373F4FlagArena,s2Step373HeadFvAfter,s2Step373Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step373F4_distinct : (796::825::785::802::((s2Step373Add0A++s2Step373Add1A)++(s2Step373Add0B++s2Step373Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step373F4_flag : s2Step373HeadFvAfter.checkBorrow 1 [785]=some s2Step373F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step373HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step373F4_owned : (796::825::((s2Step373Add0A++s2Step373Add1A)++(s2Step373Add0B++s2Step373Add1B))).toFinset⊆s2Step373HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step373HeadFvAfter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step373F4_checked : compileHmrHybridF4Log s2Step373HeadFvAfter 796 825 s2Step373Add0A s2Step373Add0B s2Step373Add1A s2Step373Add1B [785] [802] s2Step373Add0Work s2Step373Add1Work=some s2Step373F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step373HeadFvAfter s2Step373F4FlagArena s2Step373Add0Arena s2Step373Add0During s2Step373Add1During 796 825
    s2Step373Add0A s2Step373Add0B s2Step373Add1A s2Step373Add1B [785] [802] s2Step373Add0Work s2Step373Add1Work
    (fun q hq => s2Step373F4_owned (List.mem_toFinset.mpr hq)) s2Step373F4_flag s2Step373F4_carry
    s2Step373F4_distinct s2Step373F4_apart s2Step373Add0_checked s2Step373Add1_checked

private theorem s2Step373Front_branch : s2Step373FrontSigmaArena.checkBorrow 1 [825]=some s2Step373HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step373FrontSigmaArena,s2Step373EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step373FrontSigmaArena,s2Step373EntryGvAfter,s2Step373HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step373Front_entry : HmrFrontEntryValid s2Step373EntryFBefore s2Step373FrontBank 85 203 ⟨85,84,203,203⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step373FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step373EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step373EntryFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<811) ∨ (812≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step373FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step373Front_sigma : s2Step373EntryGvAfter.checkBorrow 1 [796]=some s2Step373FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step373EntryGvAfter,arenaWires]
  · rfl

private def s2Step373HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step373HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step373HeadFBefore : Arena := s2Step373HeadGAfter

private def s2Step373HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596],768⟩

private def s2Step373HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826],770⟩

private def s2Step373HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84],769⟩

private def s2Step373HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811],771⟩

private theorem s2Step373HeadBank_incomingDistinct : ([s2Step373HeadGRow,s2Step373HeadFRow,s2Step373HeadGvRow,s2Step373HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step373HeadF_Incoming : rowsOwned s2Step373HeadFBefore [s2Step373HeadFRow,s2Step373HeadGvRow,s2Step373HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step373HeadGRow,s2Step373HeadFRow,s2Step373HeadGvRow,s2Step373HeadFvRow] 1 s2Step373HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step373HeadFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step373HeadBank_outgoingOwned : rowsOwned s2Step373HeadFvAfter [s2Step373HeadGOut,s2Step373HeadFOut,s2Step373HeadGvOut,s2Step373HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step373HeadFvAfter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step373HeadF_Outgoing : rowsOwned s2Step373HeadFvAfter [s2Step373HeadFOut,s2Step373HeadGvOut,s2Step373HeadFvOut] :=
  hmrRows_owned_drop s2Step373HeadFvAfter [s2Step373HeadGOut,s2Step373HeadFOut,s2Step373HeadGvOut,s2Step373HeadFvOut] 1 s2Step373HeadBank_outgoingOwned

private theorem s2Step373HeadF_distinct : (s2Step373HeadFRow.sign::s2Step373HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step373HeadF_owned : (s2Step373HeadFRow.sign::s2Step373HeadFRow.payload).toFinset⊆s2Step373HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step373HeadFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step373HeadF_reserved : s2Step373HeadFBefore.reserve s2Step373HeadFFresh.toFinset=some s2Step373HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step373HeadFFresh,arenaWires]
  · norm_num [s2Step373HeadFBefore,s2Step373HeadGAfter,s2Step373HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step373HeadFAfter,s2Step373HeadFBefore,s2Step373HeadGAfter,s2Step373HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step373HeadF_checked : planRowResizeLog s2Step373HeadFBefore s2Step373HeadFRow 86 s2Step373HeadFFresh=
    some (s2Step373HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 797],768⟩,growRow 768 s2Step373HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step373HeadFBefore s2Step373HeadFAfter s2Step373HeadFRow 86 s2Step373HeadFFresh
    s2Step373HeadF_distinct s2Step373HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step373HeadF_reserved
  have rowEq : WindowRow.mk (s2Step373HeadFRow.payload++s2Step373HeadFFresh) s2Step373HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 797],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step373HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step373HeadFvBefore : Arena := s2Step373HeadGvAfter

private theorem s2Step373HeadFv_Incoming : rowsOwned s2Step373HeadFvBefore [s2Step373HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step373HeadGRow,s2Step373HeadFRow,s2Step373HeadGvRow,s2Step373HeadFvRow] 3 s2Step373HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step373HeadFvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step373HeadFv_Outgoing : rowsOwned s2Step373HeadFvAfter [s2Step373HeadFvOut] :=
  hmrRows_owned_drop s2Step373HeadFvAfter [s2Step373HeadGOut,s2Step373HeadFOut,s2Step373HeadGvOut,s2Step373HeadFvOut] 3 s2Step373HeadBank_outgoingOwned

private theorem s2Step373HeadFv_distinct : (s2Step373HeadFvRow.sign::s2Step373HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step373HeadFv_owned : (s2Step373HeadFvRow.sign::s2Step373HeadFvRow.payload).toFinset⊆s2Step373HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step373HeadFvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step373HeadFv_reserved : s2Step373HeadFvBefore.reserve s2Step373HeadFvFresh.toFinset=some s2Step373HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step373HeadFvFresh,arenaWires]
  · norm_num [s2Step373HeadFvBefore,s2Step373HeadGvAfter,s2Step373HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step373HeadFvAfter,s2Step373HeadFvBefore,s2Step373HeadGvAfter,s2Step373HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step373HeadFv_checked : planRowResizeLog s2Step373HeadFvBefore s2Step373HeadFvRow 204 s2Step373HeadFvFresh=
    some (s2Step373HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826, 799],770⟩,growRow 770 s2Step373HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step373HeadFvBefore s2Step373HeadFvAfter s2Step373HeadFvRow 204 s2Step373HeadFvFresh
    s2Step373HeadFv_distinct s2Step373HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step373HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step373HeadFvRow.payload++s2Step373HeadFvFresh) s2Step373HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826, 799],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step373HeadG_Incoming : rowsOwned s2Step373HeadGBefore [s2Step373HeadGRow,s2Step373HeadFRow,s2Step373HeadGvRow,s2Step373HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step373HeadGRow,s2Step373HeadFRow,s2Step373HeadGvRow,s2Step373HeadFvRow] 0 s2Step373HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step373HeadGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step373HeadG_Outgoing : rowsOwned s2Step373HeadFvAfter [s2Step373HeadGOut,s2Step373HeadFOut,s2Step373HeadGvOut,s2Step373HeadFvOut] :=
  hmrRows_owned_drop s2Step373HeadFvAfter [s2Step373HeadGOut,s2Step373HeadFOut,s2Step373HeadGvOut,s2Step373HeadFvOut] 0 s2Step373HeadBank_outgoingOwned

private theorem s2Step373HeadG_distinct : (s2Step373HeadGRow.sign::s2Step373HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step373HeadG_owned : (s2Step373HeadGRow.sign::s2Step373HeadGRow.payload).toFinset⊆s2Step373HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step373HeadGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step373HeadG_reserved : s2Step373HeadGBefore.reserve s2Step373HeadGFresh.toFinset=some s2Step373HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step373HeadGFresh,arenaWires]
  · norm_num [s2Step373HeadGBefore,s2Step373HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step373HeadGAfter,s2Step373HeadGBefore,s2Step373HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step373HeadG_checked : planRowResizeLog s2Step373HeadGBefore s2Step373HeadGRow 86 s2Step373HeadGFresh=
    some (s2Step373HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 789],769⟩,growRow 769 s2Step373HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step373HeadGBefore s2Step373HeadGAfter s2Step373HeadGRow 86 s2Step373HeadGFresh
    s2Step373HeadG_distinct s2Step373HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step373HeadG_reserved
  have rowEq : WindowRow.mk (s2Step373HeadGRow.payload++s2Step373HeadGFresh) s2Step373HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 789],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step373HeadGvBefore : Arena := s2Step373HeadFAfter

private theorem s2Step373HeadGv_Incoming : rowsOwned s2Step373HeadGvBefore [s2Step373HeadGvRow,s2Step373HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step373HeadGRow,s2Step373HeadFRow,s2Step373HeadGvRow,s2Step373HeadFvRow] 2 s2Step373HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step373HeadGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step373HeadGv_Outgoing : rowsOwned s2Step373HeadFvAfter [s2Step373HeadGvOut,s2Step373HeadFvOut] :=
  hmrRows_owned_drop s2Step373HeadFvAfter [s2Step373HeadGOut,s2Step373HeadFOut,s2Step373HeadGvOut,s2Step373HeadFvOut] 2 s2Step373HeadBank_outgoingOwned

private theorem s2Step373HeadGv_distinct : (s2Step373HeadGvRow.sign::s2Step373HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step373HeadGv_owned : (s2Step373HeadGvRow.sign::s2Step373HeadGvRow.payload).toFinset⊆s2Step373HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step373HeadGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step373HeadGv_reserved : s2Step373HeadGvBefore.reserve s2Step373HeadGvFresh.toFinset=some s2Step373HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step373HeadGvFresh,arenaWires]
  · norm_num [s2Step373HeadGvBefore,s2Step373HeadFAfter,s2Step373HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step373HeadGvAfter,s2Step373HeadGvBefore,s2Step373HeadFAfter,s2Step373HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step373HeadGv_checked : planRowResizeLog s2Step373HeadGvBefore s2Step373HeadGvRow 204 s2Step373HeadGvFresh=
    some (s2Step373HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811, 800],771⟩,growRow 771 s2Step373HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step373HeadGvBefore s2Step373HeadGvAfter s2Step373HeadGvRow 204 s2Step373HeadGvFresh
    s2Step373HeadGv_distinct s2Step373HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step373HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step373HeadGvRow.payload++s2Step373HeadGvFresh) s2Step373HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811, 800],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step373HeadBank_rows : planWindowRowsLog s2Step373HeadGBefore [(s2Step373HeadGRow,86),(s2Step373HeadFRow,86),(s2Step373HeadGvRow,204),(s2Step373HeadFvRow,204)] [s2Step373HeadGFresh,s2Step373HeadFFresh,s2Step373HeadGvFresh,s2Step373HeadFvFresh]=
    some (s2Step373HeadFvAfter,[s2Step373HeadGOut,s2Step373HeadFOut,s2Step373HeadGvOut,s2Step373HeadFvOut],(growRow 769 s2Step373HeadGFresh ++ (growRow 768 s2Step373HeadFFresh ++ (growRow 771 s2Step373HeadGvFresh ++ (growRow 770 s2Step373HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step373HeadFvAfter [] []=some (s2Step373HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step373HeadFvBefore s2Step373HeadFvAfter s2Step373HeadFvAfter
    s2Step373HeadFvRow s2Step373HeadFvOut 204 s2Step373HeadFvFresh [] [] []
    (growRow 770 s2Step373HeadFvFresh) ([]) s2Step373HeadFv_Incoming s2Step373HeadFv_checked h4 s2Step373HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step373HeadGvBefore s2Step373HeadGvAfter s2Step373HeadFvAfter
    s2Step373HeadGvRow s2Step373HeadGvOut 204 s2Step373HeadGvFresh [(s2Step373HeadFvRow,204)] [s2Step373HeadFvFresh] [s2Step373HeadFvOut]
    (growRow 771 s2Step373HeadGvFresh) ((growRow 770 s2Step373HeadFvFresh ++ [])) s2Step373HeadGv_Incoming s2Step373HeadGv_checked h3 s2Step373HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step373HeadFBefore s2Step373HeadFAfter s2Step373HeadFvAfter
    s2Step373HeadFRow s2Step373HeadFOut 86 s2Step373HeadFFresh [(s2Step373HeadGvRow,204),(s2Step373HeadFvRow,204)] [s2Step373HeadGvFresh,s2Step373HeadFvFresh] [s2Step373HeadGvOut,s2Step373HeadFvOut]
    (growRow 768 s2Step373HeadFFresh) ((growRow 771 s2Step373HeadGvFresh ++ (growRow 770 s2Step373HeadFvFresh ++ []))) s2Step373HeadF_Incoming s2Step373HeadF_checked h2 s2Step373HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step373HeadGBefore s2Step373HeadGAfter s2Step373HeadFvAfter
    s2Step373HeadGRow s2Step373HeadGOut 86 s2Step373HeadGFresh [(s2Step373HeadFRow,86),(s2Step373HeadGvRow,204),(s2Step373HeadFvRow,204)] [s2Step373HeadFFresh,s2Step373HeadGvFresh,s2Step373HeadFvFresh] [s2Step373HeadFOut,s2Step373HeadGvOut,s2Step373HeadFvOut]
    (growRow 769 s2Step373HeadGFresh) ((growRow 768 s2Step373HeadFFresh ++ (growRow 771 s2Step373HeadGvFresh ++ (growRow 770 s2Step373HeadFvFresh ++ [])))) s2Step373HeadG_Incoming s2Step373HeadG_checked h1 s2Step373HeadG_Outgoing
  exact h0

private theorem s2Step373HeadBank_checked : compileHmrBankResizeLog .headroom s2Step373HeadGBefore ⟨s2Step373HeadFRow,s2Step373HeadGRow,s2Step373HeadFvRow,s2Step373HeadGvRow⟩ ⟨86,86,204,204⟩ [s2Step373HeadGFresh,s2Step373HeadFFresh,s2Step373HeadGvFresh,s2Step373HeadFvFresh]=
    some (s2Step373HeadFvAfter,⟨s2Step373HeadFOut,s2Step373HeadGOut,s2Step373HeadFvOut,s2Step373HeadGvOut⟩,(growRow 769 s2Step373HeadGFresh ++ (growRow 768 s2Step373HeadFFresh ++ (growRow 771 s2Step373HeadGvFresh ++ (growRow 770 s2Step373HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step373HeadBank_rows]
  rfl

private theorem s2Step373Front_checked : compileHmrSourceFrontLog s2Step373EntryFBefore s2Step373FrontBank 85 203 ⟨85,84,203,203⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step373FrontLog=some s2Step373FrontPlan := by
  have pairEq : s2Step373FrontPair=⟨s2Step373HeadFRow,s2Step373HeadGRow,s2Step373HeadFvRow,s2Step373HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step373FrontHead=⟨s2Step373ExitFRow,s2Step373ExitGRow,s2Step373ExitFvRow,s2Step373ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step373Add0A=s2Step373FrontHead.f.wires := by decide +kernel
  have gEq : s2Step373Add0B=s2Step373FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step373Add1A=s2Step373FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step373Add1B=s2Step373FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step373EntryFBefore s2Step373FrontBank 85 203 ⟨85,84,203,203⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step373FrontLog s2Step373FrontPlan
  · exact s2Step373Front_entry
  · exact s2Step373EntryBank_checked
  · exact s2Step373Front_sigma
  · rfl
  · exact s2Step373Front_branch
  · rfl
  · simpa only [s2Step373FrontPlan,pairEq] using s2Step373HeadBank_checked
  · simpa only [s2Step373FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step373F4_checked
  · exact s2Step373Counter_checked
  · rfl
  · simpa only [s2Step373FrontPlan,headEq] using s2Step373ExitBank_checked

private theorem s2Step373Complete_explicit_checked : compileHmrEarlyStepLog s2Step373EntryFBefore s2Step373FrontBank 85 203 ⟨85,84,203,203⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step373CompleteLog=some s2Step373CompletePlan := by
  let Q := s2Step373EarlyControlPlan
  have hq := s2Step373EarlyControl_plan_checked
  have fv1 : s2Step373CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step373CompleteOut.fv.payload[2]?.getD s2Step373CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step373CompleteOut.fv.payload[3]?.getD s2Step373CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step373CompleteOut.fv.payload[4]?.getD s2Step373CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step373EntryFBefore s2Step373EarlyControlArena s2Step373FrontBank 85 203 ⟨85,84,203,203⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step373CompleteLog s2Step373FrontPlan Q
    s2Step373Front_checked s2Step373Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step373Complete_owned s2Step373Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step373EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 796 s2Step373CompleteOut.fv.second (s2Step373CompleteOut.fv.payload[2]?.getD s2Step373CompleteOut.fv.sign) (s2Step373CompleteOut.fv.payload[3]?.getD s2Step373CompleteOut.fv.sign) (s2Step373CompleteOut.fv.payload[4]?.getD s2Step373CompleteOut.fv.sign) 825 60 s2Step373EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep373Arena : Arena := s2Step373EntryFBefore
def s2PrivateStep373Bank : WindowBank := s2Step373FrontBank
def s2PrivateStep373Spec : HmrSourceWalkStepLog := ⟨85,203,⟨85,84,203,203⟩,60,.early s2Step373CompleteLog⟩
def s2PrivateStep373Plan : HmrSourceStepPlan := .early s2Step373CompletePlan
theorem s2PrivateStep373_source : s2PrivateStep373Spec=s2ObservedLogs368[5] := rfl
theorem s2PrivateStep373_checked : compileHmrSourceStepLog s2PrivateStep373Arena s2PrivateStep373Bank
    s2PrivateStep373Spec.fgWidth s2PrivateStep373Spec.vWidth s2PrivateStep373Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]
    6 498 373 s2PrivateStep373Spec.need none s2PrivateStep373Spec.log=some s2PrivateStep373Plan := by
  change compileHmrSourceStepLog s2Step373EntryFBefore s2Step373FrontBank 85 203 ⟨85,84,203,203⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 6 498 373 60 none (.early s2Step373CompleteLog)=some (.early s2Step373CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 373<498)]
  rw [s2Step373Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
