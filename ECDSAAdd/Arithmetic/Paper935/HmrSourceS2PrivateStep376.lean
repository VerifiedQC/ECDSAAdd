import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep374
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

private def s2Step376CompleteMoves : List (Wire × Wire) := [(810,83),(835,595)]

private def s2Step376EarlyControlLog : HmrEarlyControlLog := ⟨[835, 810, 785, 803, 793],[825],[827],[844, 907, 913, 914, 915, 916],[]⟩

private def s2Step376FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[803], [785], [802], [800]],[[], [], [], []]⟩,[799],[797],[793],[825],[827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[793, 825, 827, 844]⟩

private def s2Step376CompleteLog : HmrEarlyStepLog := ⟨s2Step376FrontLog,s2Step376CompleteMoves,s2Step376EarlyControlLog⟩

private def s2Step376ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594],768⟩

private def s2Step376ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826, 789, 800],770⟩

private def s2Step376ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82],769⟩

private def s2Step376ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 596, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811, 796, 802],771⟩

private def s2Step376FrontOut : WindowBank := ⟨s2Step376ExitFOut,s2Step376ExitGOut,s2Step376ExitFvOut,s2Step376ExitGvOut⟩

private def s2Step376CompleteOut : WindowBank := s2Step376FrontOut.repacked s2Step376CompleteMoves

private def s2Step376EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step376EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step376EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step376EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step376EarlyControlPositiveArena,[825],s2Step376EarlyControlEqualityArena,[827],⟨⟨799,false⟩,[⟨⟨825,false⟩,827⟩]⟩⟩

private def s2Step376EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<917)),Finset.filter_subset _ _⟩

private def s2Step376EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<917)),Finset.filter_subset _ _⟩

private def s2Step376EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step376EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step376EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step376EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step376EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,835⟩,⟨⟨774,false⟩,810⟩,⟨⟨775,false⟩,785⟩,⟨⟨776,false⟩,803⟩,⟨⟨777,false⟩,793⟩]⟩

private def s2Step376EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step376EarlyControlZeroArena,s2Step376EarlyControlZeroPlan,s2Step376EarlyControlClassPlan,s2Step376EarlyControlFlagArena,s2Step376EarlyControlFittedArena,s2Step376EarlyControlHistoryArena,s2Step376EarlyControlSigmaArena,s2Step376EarlyControlOutputArena,s2Step376EarlyControlLog⟩

private def s2Step376CounterWork : List Wire := [793, 825, 827, 844]

private theorem s2Step376Counter_bounded : s2Step376CounterWork.toFinset⊆arenaWires := by norm_num [s2Step376CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step376HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step376CounterDuring : Arena := ⟨s2Step376HeadFvAfter.live∪s2Step376CounterWork.toFinset,Finset.union_subset s2Step376HeadFvAfter.bounded s2Step376Counter_bounded⟩

private def s2Step376EntryFFresh : List Wire := []

private def s2Step376EntryFvFresh : List Wire := []

private def s2Step376EntryGFresh : List Wire := []

private def s2Step376EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (804≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step376EntryGvAfter : Arena := s2Step376EntryFBefore

private def s2Step376EntryGvFresh : List Wire := []

private def s2Step376ExitFExtra : List Wire := [595, 785]

private def s2Step376ExitGExtra : List Wire := [83, 803]

private def s2Step376ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<83) ∨ (84≤q ∧ q<595) ∨ (596≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step376ExitGvAfter : Arena := s2Step376ExitFAfter

private def s2Step376Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step376Add0Work : List Wire := [827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step376Add0_bounded : s2Step376Add0Work.toFinset⊆arenaWires := by
  have h : s2Step376Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step376Add0During : Arena := ⟨s2Step376Add0Arena.live∪s2Step376Add0Work.toFinset,Finset.union_subset s2Step376Add0Arena.bounded s2Step376Add0_bounded⟩

private def s2Step376Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step376Add1Work : List Wire := [827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step376Add1_bounded : s2Step376Add1Work.toFinset⊆arenaWires := by
  have h : s2Step376Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step376Add1During : Arena := ⟨s2Step376Add1Arena.live∪s2Step376Add1Work.toFinset,Finset.union_subset s2Step376Add1Arena.bounded s2Step376Add1_bounded⟩

private def s2Step376F4FlagArena : Arena := ⟨s2Step376HeadFvAfter.live∪{793},Finset.union_subset s2Step376HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step376F4Plan : HmrHybridF4Plan := ⟨s2Step376F4FlagArena,[793],s2Step376Add0Arena,[825],s2Step376Add0During,s2Step376Add0Work,s2Step376Add1During,s2Step376Add1Work⟩

private def s2Step376HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 785],768⟩

private def s2Step376HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826, 789, 800],770⟩

private def s2Step376HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 803],769⟩

private def s2Step376HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 596, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811, 796, 802],771⟩

private def s2Step376FrontHead : WindowBank := ⟨s2Step376HeadFOut,s2Step376HeadGOut,s2Step376HeadFvOut,s2Step376HeadGvOut⟩

private def s2Step376EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595],768⟩

private def s2Step376EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826, 789],770⟩

private def s2Step376EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83],769⟩

private def s2Step376EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 596, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811, 796],771⟩

private def s2Step376FrontPair : WindowBank := ⟨s2Step376EntryFOut,s2Step376EntryGOut,s2Step376EntryFvOut,s2Step376EntryGvOut⟩

private def s2Step376FrontSigmaArena : Arena := ⟨s2Step376EntryGvAfter.live∪{799},Finset.union_subset s2Step376EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step376HeadFFresh : List Wire := [785]

private def s2Step376HeadFvFresh : List Wire := [800]

private def s2Step376HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (804≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step376HeadGFresh : List Wire := [803]

private def s2Step376HeadGvFresh : List Wire := [802]

private def s2Step376FrontPlan : HmrSourceFront := ⟨s2Step376EntryGvAfter,s2Step376FrontPair,(growRow 768 s2Step376EntryFFresh ++ (growRow 769 s2Step376EntryGFresh ++ (growRow 770 s2Step376EntryFvFresh ++ (growRow 771 s2Step376EntryGvFresh ++ [])))),s2Step376FrontSigmaArena,[799],s2Step376HeadGBefore,[797],
  s2Step376HeadFvAfter,s2Step376FrontHead,(growRow 769 s2Step376HeadGFresh ++ (growRow 768 s2Step376HeadFFresh ++ (growRow 771 s2Step376HeadGvFresh ++ (growRow 770 s2Step376HeadFvFresh ++ [])))),s2Step376F4Plan,s2Step376CounterDuring,s2Step376CounterWork,s2Step376ExitGvAfter,s2Step376FrontOut,(shrinkRow 769 s2Step376ExitGExtra ++ (shrinkRow 768 s2Step376ExitFExtra ++ (growRow 770 [] ++ (growRow 771 [] ++ []))))⟩

private def s2Step376CompletePlan : HmrEarlyStepPlan := ⟨s2Step376FrontPlan,s2Step376EarlyControlArena,s2Step376EarlyControlPlan,s2Step376CompleteMoves⟩

private theorem s2Step376Complete_apart : List.Disjoint (s2Step376CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [799, 797, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] := by
  have nd : ((s2Step376CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[799, 797, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step376Complete_owned : (s2Step376CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step376EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step376EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private def s2Step376CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,595),(596,785),(786,793),(794,803),(804,810),(811,825),(826,827),(828,844),(845,907),(908,913)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s2Step376CompleteRelocationMove0Borrowed : Arena := ⟨s2Step376ExitGvAfter.live∪{83},Finset.union_subset s2Step376ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step376CompleteRelocationMove1Borrowed : Arena := ⟨s2Step376CompleteRelocationMove0After.live∪{595},Finset.union_subset s2Step376CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s2Step376CompleteRelocation_move0_owned : 810∈s2Step376ExitGvAfter.live := by norm_num [s2Step376ExitGvAfter,s2Step376ExitFAfter,arenaWires]

private theorem s2Step376CompleteRelocation_move0_reserve : s2Step376ExitGvAfter.reserve {83}=some s2Step376CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step376ExitGvAfter,s2Step376ExitFAfter,arenaWires]
  · rfl

private theorem s2Step376CompleteRelocation_move0_retire : s2Step376CompleteRelocationMove0Borrowed.retireSet {810}=s2Step376CompleteRelocationMove0After := by
  unfold Arena.retireSet s2Step376CompleteRelocationMove0After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step376CompleteRelocationMove0Borrowed,s2Step376ExitGvAfter,s2Step376ExitFAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step376CompleteRelocation_move1_owned : 835∈s2Step376CompleteRelocationMove0After.live := by norm_num [s2Step376CompleteRelocationMove0After,arenaWires]

private theorem s2Step376CompleteRelocation_move1_reserve : s2Step376CompleteRelocationMove0After.reserve {595}=some s2Step376CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step376CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s2Step376CompleteRelocation_move1_retire : s2Step376CompleteRelocationMove1Borrowed.retireSet {835}=s2Step376EarlyControlArena := by
  unfold Arena.retireSet s2Step376EarlyControlArena
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step376CompleteRelocationMove1Borrowed,s2Step376CompleteRelocationMove0After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step376CompleteRelocation_checked : s2Step376ExitGvAfter.checkRepack [(810,83),(835,595)]=some s2Step376EarlyControlArena := by
  have tail2 : s2Step376EarlyControlArena.checkRepack []=some s2Step376EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s2Step376CompleteRelocationMove0After s2Step376CompleteRelocationMove1Borrowed s2Step376EarlyControlArena s2Step376EarlyControlArena 835 595 []
    s2Step376CompleteRelocation_move1_owned s2Step376CompleteRelocation_move1_reserve s2Step376CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s2Step376ExitGvAfter s2Step376CompleteRelocationMove0Borrowed s2Step376CompleteRelocationMove0After s2Step376EarlyControlArena 810 83 [(835,595)]
    s2Step376CompleteRelocation_move0_owned s2Step376CompleteRelocation_move0_reserve s2Step376CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s2Step376Complete_repack : s2Step376ExitGvAfter.checkRepack s2Step376CompleteMoves=some s2Step376EarlyControlArena := by
  simpa only [s2Step376CompleteMoves] using s2Step376CompleteRelocation_checked

private theorem s2Step376EarlyControl_branchOwned : ([797] : List Wire).toFinset⊆s2Step376EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step376EarlyControlSigmaArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step376EarlyControl_branch : compileHmrBranchRetirement s2Step376EarlyControlSigmaArena 797=some s2Step376EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step376EarlyControl_branchOwned
  · ext q
    simp [s2Step376EarlyControlOutputArena,s2Step376EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step376EarlyControl_classEqualityBorrow : s2Step376EarlyControlPositiveArena.checkBorrow (([799, 825] : List Wire).length-1) s2Step376EarlyControlLog.classWork=some s2Step376EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step376EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step376EarlyControlPositiveArena (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step376EarlyControlEqualityArena,s2Step376EarlyControlPositiveArena,s2Step376EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step376EarlyControl_classEqualityOwned : ([799, 825] : List Wire).toFinset⊆s2Step376EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step376EarlyControlPositiveArena (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step376EarlyControl_classEquality : compileHmrEqualityLog s2Step376EarlyControlPositiveArena [799, 825] 0 s2Step376EarlyControlLog.classWork=some (s2Step376EarlyControlEqualityArena,s2Step376EarlyControlLog.classWork,s2Step376EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step376EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step376EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step376EarlyControl_classOwned : ([777, 793, 799] : List Wire).toFinset⊆s2Step376EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step376EarlyControlZeroArena (fun q => (0≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step376EarlyControl_positiveBorrow : s2Step376EarlyControlZeroArena.checkBorrow (1) s2Step376EarlyControlLog.positiveWork=some s2Step376EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step376EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step376EarlyControlZeroArena (fun q => (0≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step376EarlyControlPositiveArena,s2Step376EarlyControlZeroArena,s2Step376EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step376EarlyControl_class : compileHmrSourceClassLog s2Step376EarlyControlZeroArena false 777 s2Step376EarlyControlZeroPlan.top 0 799 s2Step376EarlyControlLog.positiveWork s2Step376EarlyControlLog.classWork=some s2Step376EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step376EarlyControlClassPlan s2Step376EarlyControlZeroArena false 777 s2Step376EarlyControlZeroPlan.top 0 799
  constructor
  · decide +kernel
  · exact s2Step376EarlyControl_classOwned
  · exact s2Step376EarlyControl_positiveBorrow
  · exact s2Step376EarlyControl_classEquality

private theorem s2Step376EarlyControl_entryRecordOwned : ([797, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step376EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step376EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step376EarlyControl_entrySigmaOwned : ([799, 254] : List Wire).toFinset⊆s2Step376EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step376EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step376EarlyControl_fitBorrow : s2Step376EarlyControlFlagArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step376EarlyControlLog.recordFresh=some s2Step376EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step376EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step376EarlyControlFlagArena (fun q => (0≤q ∧ q<917)) rfl
      decide +kernel
    · ext q
      simp [s2Step376EarlyControlFittedArena,s2Step376EarlyControlFlagArena,s2Step376EarlyControlLog,arenaWires]

private theorem s2Step376EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step376EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step376EarlyControlFlagArena (fun q => (0≤q ∧ q<917)) rfl
  decide +kernel

private theorem s2Step376EarlyControl_fit : compileHmrRecordGrowLog s2Step376EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step376EarlyControlLog.recordFresh=some s2Step376EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step376EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step376EarlyControl_fitBorrow

private theorem s2Step376EarlyControl_flagsBorrow : s2Step376EarlyControlEqualityArena.checkBorrow (6) s2Step376EarlyControlLog.flagWork=some s2Step376EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step376EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step376EarlyControlEqualityArena (fun q => (0≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step376EarlyControlFlagArena,s2Step376EarlyControlEqualityArena,s2Step376EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step376EarlyControl_flagsOwned : ([827, 253, 252, 251] : List Wire).toFinset⊆s2Step376EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step376EarlyControlEqualityArena (fun q => (0≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step376EarlyControl_flags : compileHmrFlagsLog s2Step376EarlyControlClassPlan.equalityArena s2Step376EarlyControlClassPlan.equality.top 253 252 251 s2Step376EarlyControlLog.flagWork=some s2Step376EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step376EarlyControl_flagsOwned⟩
  · exact s2Step376EarlyControl_flagsBorrow

private theorem s2Step376EarlyControl_historyBorrow : s2Step376EarlyControlArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step376EarlyControlLog.recordFresh=some s2Step376EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step376EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step376EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step376EarlyControlHistoryArena,s2Step376EarlyControlArena,s2Step376EarlyControlLog,arenaWires]

private theorem s2Step376EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step376EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step376EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step376EarlyControl_history : compileHmrRecordGrowLog s2Step376EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step376EarlyControlLog.recordFresh=some s2Step376EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step376EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step376EarlyControl_historyBorrow

private theorem s2Step376EarlyControl_sigmaOwned : ([254, 799] : List Wire).toFinset⊆s2Step376EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step376EarlyControlHistoryArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step376EarlyControl_sigmaReleaseOwned : ([799] : List Wire).toFinset⊆s2Step376EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step376EarlyControlHistoryArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step376EarlyControl_sigmaRelease : s2Step376EarlyControlHistoryArena.release {799} (fun _ => false)=some s2Step376EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step376EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step376EarlyControlSigmaArena,s2Step376EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step376EarlyControl_sigma : compileHmrSigmaDropLog s2Step376EarlyControlHistoryArena false 0 0 254 799 []=some s2Step376EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step376EarlyControl_sigmaOwned⟩
  · exact s2Step376EarlyControl_sigmaRelease

private theorem s2Step376EarlyControl_zeroBorrow : s2Step376EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step376EarlyControlLog.zeroWork=some s2Step376EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step376EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step376EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step376EarlyControlZeroArena,s2Step376EarlyControlArena,s2Step376EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step376EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step376EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step376EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step376EarlyControl_zero : compileHmrEqualityLog s2Step376EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step376EarlyControlLog.zeroWork=some (s2Step376EarlyControlZeroArena,s2Step376EarlyControlLog.zeroWork,s2Step376EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step376EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step376EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step376EarlyControl_logged : s2Step376EarlyControlPlan.Logged s2Step376EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 799 254 253 252 251 797 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step376EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step376EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step376EarlyControl_zero
  · exact s2Step376EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step376EarlyControl_flags
  · exact s2Step376EarlyControl_fit
  · exact s2Step376EarlyControl_history
  · exact s2Step376EarlyControl_sigma
  · exact s2Step376EarlyControl_branch

private theorem s2Step376EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step376EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 799 254 253 252 251 797 60 s2Step376EarlyControlLog=some s2Step376EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step376EarlyControlPlan s2Step376EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 799 254 253 252 251 797 60 s2Step376EarlyControl_logged

private def s2Step376EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595],768⟩

private def s2Step376EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826, 789],770⟩

private def s2Step376EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83],769⟩

private def s2Step376EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 596, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811, 796],771⟩

private def s2Step376FrontBank : WindowBank := ⟨s2Step376EntryFRow,s2Step376EntryGRow,s2Step376EntryFvRow,s2Step376EntryGvRow⟩

private def s2Step376Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 785, 768]

private def s2Step376Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 803, 769]

private def s2Step376Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826, 789, 800, 770]

private def s2Step376Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 596, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811, 796, 802, 771]

private theorem s2Step376Counter_apart : Disjoint s2Step376HeadFvAfter.live s2Step376CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step376HeadFvAfter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step376Counter_borrowed : s2Step376HeadFvAfter.checkBorrow 4 s2Step376CounterWork=some s2Step376CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step376HeadFvAfter s2Step376CounterDuring s2Step376CounterWork.toFinset s2Step376Counter_bounded s2Step376Counter_apart rfl

private theorem s2Step376Counter_owned : (799::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step376HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step376HeadFvAfter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step376Counter_checked : compileHmrCounterStepLog s2Step376HeadFvAfter true 799 [772, 773, 774, 775, 776, 777] s2Step376CounterWork=some s2Step376CounterDuring := by
  have owned : ∀q∈799::[772, 773, 774, 775, 776, 777],q∈s2Step376HeadFvAfter.live := fun q hq => s2Step376Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step376Counter_borrowed

private def s2Step376EntryFAfter : Arena := s2Step376EntryFBefore

private theorem s2Step376EntryBank_incomingDistinct : ([s2Step376EntryFRow,s2Step376EntryGRow,s2Step376EntryFvRow,s2Step376EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step376EntryF_Incoming : rowsOwned s2Step376EntryFBefore [s2Step376EntryFRow,s2Step376EntryGRow,s2Step376EntryFvRow,s2Step376EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step376EntryFRow,s2Step376EntryGRow,s2Step376EntryFvRow,s2Step376EntryGvRow] 0 s2Step376EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step376EntryFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (804≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step376EntryBank_outgoingOwned : rowsOwned s2Step376EntryGvAfter [s2Step376EntryFOut,s2Step376EntryGOut,s2Step376EntryFvOut,s2Step376EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step376EntryGvAfter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (804≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step376EntryF_Outgoing : rowsOwned s2Step376EntryGvAfter [s2Step376EntryFOut,s2Step376EntryGOut,s2Step376EntryFvOut,s2Step376EntryGvOut] :=
  hmrRows_owned_drop s2Step376EntryGvAfter [s2Step376EntryFOut,s2Step376EntryGOut,s2Step376EntryFvOut,s2Step376EntryGvOut] 0 s2Step376EntryBank_outgoingOwned

private theorem s2Step376EntryF_distinct : (s2Step376EntryFRow.sign::s2Step376EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step376EntryF_owned : (s2Step376EntryFRow.sign::s2Step376EntryFRow.payload).toFinset⊆s2Step376EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step376EntryFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (804≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step376EntryF_reserved : s2Step376EntryFBefore.reserve s2Step376EntryFFresh.toFinset=some s2Step376EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step376EntryFFresh,arenaWires]
  · norm_num [s2Step376EntryFBefore,s2Step376EntryFFresh,arenaWires]
  · simp only [s2Step376EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step376EntryF_checked : planRowResizeLog s2Step376EntryFBefore s2Step376EntryFRow 84 s2Step376EntryFFresh=
    some (s2Step376EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595],768⟩,growRow 768 s2Step376EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step376EntryFBefore s2Step376EntryFAfter s2Step376EntryFRow 84 s2Step376EntryFFresh
    s2Step376EntryF_distinct s2Step376EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step376EntryF_reserved
  have rowEq : WindowRow.mk (s2Step376EntryFRow.payload++s2Step376EntryFFresh) s2Step376EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step376EntryFvAfter : Arena := s2Step376EntryFBefore

private def s2Step376EntryFvBefore : Arena := s2Step376EntryFBefore

private theorem s2Step376EntryFv_Incoming : rowsOwned s2Step376EntryFvBefore [s2Step376EntryFvRow,s2Step376EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step376EntryFRow,s2Step376EntryGRow,s2Step376EntryFvRow,s2Step376EntryGvRow] 2 s2Step376EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step376EntryFvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (804≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step376EntryFv_Outgoing : rowsOwned s2Step376EntryGvAfter [s2Step376EntryFvOut,s2Step376EntryGvOut] :=
  hmrRows_owned_drop s2Step376EntryGvAfter [s2Step376EntryFOut,s2Step376EntryGOut,s2Step376EntryFvOut,s2Step376EntryGvOut] 2 s2Step376EntryBank_outgoingOwned

private theorem s2Step376EntryFv_distinct : (s2Step376EntryFvRow.sign::s2Step376EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step376EntryFv_owned : (s2Step376EntryFvRow.sign::s2Step376EntryFvRow.payload).toFinset⊆s2Step376EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step376EntryFvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (804≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step376EntryFv_reserved : s2Step376EntryFvBefore.reserve s2Step376EntryFvFresh.toFinset=some s2Step376EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step376EntryFvFresh,arenaWires]
  · norm_num [s2Step376EntryFvBefore,s2Step376EntryFBefore,s2Step376EntryFvFresh,arenaWires]
  · simp only [s2Step376EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step376EntryFv_checked : planRowResizeLog s2Step376EntryFvBefore s2Step376EntryFvRow 204 s2Step376EntryFvFresh=
    some (s2Step376EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826, 789],770⟩,growRow 770 s2Step376EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step376EntryFvBefore s2Step376EntryFvAfter s2Step376EntryFvRow 204 s2Step376EntryFvFresh
    s2Step376EntryFv_distinct s2Step376EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step376EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step376EntryFvRow.payload++s2Step376EntryFvFresh) s2Step376EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826, 789],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step376EntryGAfter : Arena := s2Step376EntryFBefore

private def s2Step376EntryGBefore : Arena := s2Step376EntryFBefore

private theorem s2Step376EntryG_Incoming : rowsOwned s2Step376EntryGBefore [s2Step376EntryGRow,s2Step376EntryFvRow,s2Step376EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step376EntryFRow,s2Step376EntryGRow,s2Step376EntryFvRow,s2Step376EntryGvRow] 1 s2Step376EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step376EntryGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (804≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step376EntryG_Outgoing : rowsOwned s2Step376EntryGvAfter [s2Step376EntryGOut,s2Step376EntryFvOut,s2Step376EntryGvOut] :=
  hmrRows_owned_drop s2Step376EntryGvAfter [s2Step376EntryFOut,s2Step376EntryGOut,s2Step376EntryFvOut,s2Step376EntryGvOut] 1 s2Step376EntryBank_outgoingOwned

private theorem s2Step376EntryG_distinct : (s2Step376EntryGRow.sign::s2Step376EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step376EntryG_owned : (s2Step376EntryGRow.sign::s2Step376EntryGRow.payload).toFinset⊆s2Step376EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step376EntryGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (804≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step376EntryG_reserved : s2Step376EntryGBefore.reserve s2Step376EntryGFresh.toFinset=some s2Step376EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step376EntryGFresh,arenaWires]
  · norm_num [s2Step376EntryGBefore,s2Step376EntryFBefore,s2Step376EntryGFresh,arenaWires]
  · simp only [s2Step376EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step376EntryG_checked : planRowResizeLog s2Step376EntryGBefore s2Step376EntryGRow 84 s2Step376EntryGFresh=
    some (s2Step376EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83],769⟩,growRow 769 s2Step376EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step376EntryGBefore s2Step376EntryGAfter s2Step376EntryGRow 84 s2Step376EntryGFresh
    s2Step376EntryG_distinct s2Step376EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step376EntryG_reserved
  have rowEq : WindowRow.mk (s2Step376EntryGRow.payload++s2Step376EntryGFresh) s2Step376EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step376EntryGvBefore : Arena := s2Step376EntryFBefore

private theorem s2Step376EntryGv_Incoming : rowsOwned s2Step376EntryGvBefore [s2Step376EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step376EntryFRow,s2Step376EntryGRow,s2Step376EntryFvRow,s2Step376EntryGvRow] 3 s2Step376EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step376EntryGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (804≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step376EntryGv_Outgoing : rowsOwned s2Step376EntryGvAfter [s2Step376EntryGvOut] :=
  hmrRows_owned_drop s2Step376EntryGvAfter [s2Step376EntryFOut,s2Step376EntryGOut,s2Step376EntryFvOut,s2Step376EntryGvOut] 3 s2Step376EntryBank_outgoingOwned

private theorem s2Step376EntryGv_distinct : (s2Step376EntryGvRow.sign::s2Step376EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step376EntryGv_owned : (s2Step376EntryGvRow.sign::s2Step376EntryGvRow.payload).toFinset⊆s2Step376EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step376EntryGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (804≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step376EntryGv_reserved : s2Step376EntryGvBefore.reserve s2Step376EntryGvFresh.toFinset=some s2Step376EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step376EntryGvFresh,arenaWires]
  · norm_num [s2Step376EntryGvBefore,s2Step376EntryFBefore,s2Step376EntryGvFresh,arenaWires]
  · simp only [s2Step376EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step376EntryGv_checked : planRowResizeLog s2Step376EntryGvBefore s2Step376EntryGvRow 204 s2Step376EntryGvFresh=
    some (s2Step376EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 596, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811, 796],771⟩,growRow 771 s2Step376EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step376EntryGvBefore s2Step376EntryGvAfter s2Step376EntryGvRow 204 s2Step376EntryGvFresh
    s2Step376EntryGv_distinct s2Step376EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step376EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step376EntryGvRow.payload++s2Step376EntryGvFresh) s2Step376EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 596, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811, 796],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step376EntryBank_rows : planWindowRowsLog s2Step376EntryFBefore [(s2Step376EntryFRow,84),(s2Step376EntryGRow,84),(s2Step376EntryFvRow,204),(s2Step376EntryGvRow,204)] [s2Step376EntryFFresh,s2Step376EntryGFresh,s2Step376EntryFvFresh,s2Step376EntryGvFresh]=
    some (s2Step376EntryGvAfter,[s2Step376EntryFOut,s2Step376EntryGOut,s2Step376EntryFvOut,s2Step376EntryGvOut],(growRow 768 s2Step376EntryFFresh ++ (growRow 769 s2Step376EntryGFresh ++ (growRow 770 s2Step376EntryFvFresh ++ (growRow 771 s2Step376EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step376EntryGvAfter [] []=some (s2Step376EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step376EntryGvBefore s2Step376EntryGvAfter s2Step376EntryGvAfter
    s2Step376EntryGvRow s2Step376EntryGvOut 204 s2Step376EntryGvFresh [] [] []
    (growRow 771 s2Step376EntryGvFresh) ([]) s2Step376EntryGv_Incoming s2Step376EntryGv_checked h4 s2Step376EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step376EntryFvBefore s2Step376EntryFvAfter s2Step376EntryGvAfter
    s2Step376EntryFvRow s2Step376EntryFvOut 204 s2Step376EntryFvFresh [(s2Step376EntryGvRow,204)] [s2Step376EntryGvFresh] [s2Step376EntryGvOut]
    (growRow 770 s2Step376EntryFvFresh) ((growRow 771 s2Step376EntryGvFresh ++ [])) s2Step376EntryFv_Incoming s2Step376EntryFv_checked h3 s2Step376EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step376EntryGBefore s2Step376EntryGAfter s2Step376EntryGvAfter
    s2Step376EntryGRow s2Step376EntryGOut 84 s2Step376EntryGFresh [(s2Step376EntryFvRow,204),(s2Step376EntryGvRow,204)] [s2Step376EntryFvFresh,s2Step376EntryGvFresh] [s2Step376EntryFvOut,s2Step376EntryGvOut]
    (growRow 769 s2Step376EntryGFresh) ((growRow 770 s2Step376EntryFvFresh ++ (growRow 771 s2Step376EntryGvFresh ++ []))) s2Step376EntryG_Incoming s2Step376EntryG_checked h2 s2Step376EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step376EntryFBefore s2Step376EntryFAfter s2Step376EntryGvAfter
    s2Step376EntryFRow s2Step376EntryFOut 84 s2Step376EntryFFresh [(s2Step376EntryGRow,84),(s2Step376EntryFvRow,204),(s2Step376EntryGvRow,204)] [s2Step376EntryGFresh,s2Step376EntryFvFresh,s2Step376EntryGvFresh] [s2Step376EntryGOut,s2Step376EntryFvOut,s2Step376EntryGvOut]
    (growRow 768 s2Step376EntryFFresh) ((growRow 769 s2Step376EntryGFresh ++ (growRow 770 s2Step376EntryFvFresh ++ (growRow 771 s2Step376EntryGvFresh ++ [])))) s2Step376EntryF_Incoming s2Step376EntryF_checked h1 s2Step376EntryF_Outgoing
  exact h0

private theorem s2Step376EntryBank_checked : compileHmrBankResizeLog .entry s2Step376EntryFBefore ⟨s2Step376EntryFRow,s2Step376EntryGRow,s2Step376EntryFvRow,s2Step376EntryGvRow⟩ ⟨84,84,204,204⟩ [s2Step376EntryFFresh,s2Step376EntryGFresh,s2Step376EntryFvFresh,s2Step376EntryGvFresh]=
    some (s2Step376EntryGvAfter,⟨s2Step376EntryFOut,s2Step376EntryGOut,s2Step376EntryFvOut,s2Step376EntryGvOut⟩,(growRow 768 s2Step376EntryFFresh ++ (growRow 769 s2Step376EntryGFresh ++ (growRow 770 s2Step376EntryFvFresh ++ (growRow 771 s2Step376EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step376EntryBank_rows]
  rfl

private def s2Step376ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<83) ∨ (84≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step376ExitFBefore : Arena := s2Step376ExitGAfter

private def s2Step376ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 785],768⟩

private def s2Step376ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826, 789, 800],770⟩

private def s2Step376ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 803],769⟩

private def s2Step376ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 596, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811, 796, 802],771⟩

private theorem s2Step376ExitBank_incomingDistinct : ([s2Step376ExitGRow,s2Step376ExitFRow,s2Step376ExitFvRow,s2Step376ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step376ExitF_Incoming : rowsOwned s2Step376ExitFBefore [s2Step376ExitFRow,s2Step376ExitFvRow,s2Step376ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step376ExitGRow,s2Step376ExitFRow,s2Step376ExitFvRow,s2Step376ExitGvRow] 1 s2Step376ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step376ExitFBefore (fun q => (0≤q ∧ q<83) ∨ (84≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step376ExitBank_outgoingOwned : rowsOwned s2Step376ExitGvAfter [s2Step376ExitGOut,s2Step376ExitFOut,s2Step376ExitFvOut,s2Step376ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step376ExitGvAfter (fun q => (0≤q ∧ q<83) ∨ (84≤q ∧ q<595) ∨ (596≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step376ExitF_Outgoing : rowsOwned s2Step376ExitGvAfter [s2Step376ExitFOut,s2Step376ExitFvOut,s2Step376ExitGvOut] :=
  hmrRows_owned_drop s2Step376ExitGvAfter [s2Step376ExitGOut,s2Step376ExitFOut,s2Step376ExitFvOut,s2Step376ExitGvOut] 1 s2Step376ExitBank_outgoingOwned

private theorem s2Step376ExitF_distinct : (s2Step376ExitFRow.sign::s2Step376ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step376ExitF_owned : (s2Step376ExitFRow.sign::s2Step376ExitFRow.payload).toFinset⊆s2Step376ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step376ExitFBefore (fun q => (0≤q ∧ q<83) ∨ (84≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step376ExitF_retired : s2Step376ExitFBefore.retireSet s2Step376ExitFExtra.toFinset=s2Step376ExitFAfter := by
  unfold Arena.retireSet s2Step376ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step376ExitFBefore,s2Step376ExitGAfter,s2Step376ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step376ExitF_checked : planRowResizeLog s2Step376ExitFBefore s2Step376ExitFRow 83 []=
    some (s2Step376ExitFAfter,s2Step376ExitFOut,shrinkRow 768 s2Step376ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step376ExitFBefore s2Step376ExitFRow 83 s2Step376ExitF_distinct s2Step376ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step376ExitFRow.payload.take 83) s2Step376ExitFRow.sign=s2Step376ExitFOut := by decide +kernel
  have hi : s2Step376ExitFRow.payload.drop 83=s2Step376ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step376ExitF_retired] at result
  exact result

private def s2Step376ExitFvAfter : Arena := s2Step376ExitFAfter

private def s2Step376ExitFvBefore : Arena := s2Step376ExitFAfter

private theorem s2Step376ExitFv_Incoming : rowsOwned s2Step376ExitFvBefore [s2Step376ExitFvRow,s2Step376ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step376ExitGRow,s2Step376ExitFRow,s2Step376ExitFvRow,s2Step376ExitGvRow] 2 s2Step376ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step376ExitFvBefore (fun q => (0≤q ∧ q<83) ∨ (84≤q ∧ q<595) ∨ (596≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step376ExitFv_Outgoing : rowsOwned s2Step376ExitGvAfter [s2Step376ExitFvOut,s2Step376ExitGvOut] :=
  hmrRows_owned_drop s2Step376ExitGvAfter [s2Step376ExitGOut,s2Step376ExitFOut,s2Step376ExitFvOut,s2Step376ExitGvOut] 2 s2Step376ExitBank_outgoingOwned

private theorem s2Step376ExitFv_distinct : (s2Step376ExitFvRow.sign::s2Step376ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step376ExitFv_owned : (s2Step376ExitFvRow.sign::s2Step376ExitFvRow.payload).toFinset⊆s2Step376ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step376ExitFvBefore (fun q => (0≤q ∧ q<83) ∨ (84≤q ∧ q<595) ∨ (596≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step376ExitFv_reserved : s2Step376ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step376ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step376ExitFv_checked : planRowResizeLog s2Step376ExitFvBefore s2Step376ExitFvRow 205 []=
    some (s2Step376ExitFvAfter,s2Step376ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step376ExitFvBefore s2Step376ExitFvAfter s2Step376ExitFvRow 205 []
    s2Step376ExitFv_distinct s2Step376ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step376ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step376ExitFvRow.payload++[]) s2Step376ExitFvRow.sign=s2Step376ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step376ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private theorem s2Step376ExitG_Incoming : rowsOwned s2Step376ExitGBefore [s2Step376ExitGRow,s2Step376ExitFRow,s2Step376ExitFvRow,s2Step376ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step376ExitGRow,s2Step376ExitFRow,s2Step376ExitFvRow,s2Step376ExitGvRow] 0 s2Step376ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step376ExitGBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step376ExitG_Outgoing : rowsOwned s2Step376ExitGvAfter [s2Step376ExitGOut,s2Step376ExitFOut,s2Step376ExitFvOut,s2Step376ExitGvOut] :=
  hmrRows_owned_drop s2Step376ExitGvAfter [s2Step376ExitGOut,s2Step376ExitFOut,s2Step376ExitFvOut,s2Step376ExitGvOut] 0 s2Step376ExitBank_outgoingOwned

private theorem s2Step376ExitG_distinct : (s2Step376ExitGRow.sign::s2Step376ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step376ExitG_owned : (s2Step376ExitGRow.sign::s2Step376ExitGRow.payload).toFinset⊆s2Step376ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step376ExitGBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step376ExitG_retired : s2Step376ExitGBefore.retireSet s2Step376ExitGExtra.toFinset=s2Step376ExitGAfter := by
  unfold Arena.retireSet s2Step376ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step376ExitGBefore,s2Step376ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step376ExitG_checked : planRowResizeLog s2Step376ExitGBefore s2Step376ExitGRow 83 []=
    some (s2Step376ExitGAfter,s2Step376ExitGOut,shrinkRow 769 s2Step376ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step376ExitGBefore s2Step376ExitGRow 83 s2Step376ExitG_distinct s2Step376ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step376ExitGRow.payload.take 83) s2Step376ExitGRow.sign=s2Step376ExitGOut := by decide +kernel
  have hi : s2Step376ExitGRow.payload.drop 83=s2Step376ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step376ExitG_retired] at result
  exact result

private def s2Step376ExitGvBefore : Arena := s2Step376ExitFAfter

private theorem s2Step376ExitGv_Incoming : rowsOwned s2Step376ExitGvBefore [s2Step376ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step376ExitGRow,s2Step376ExitFRow,s2Step376ExitFvRow,s2Step376ExitGvRow] 3 s2Step376ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step376ExitGvBefore (fun q => (0≤q ∧ q<83) ∨ (84≤q ∧ q<595) ∨ (596≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step376ExitGv_Outgoing : rowsOwned s2Step376ExitGvAfter [s2Step376ExitGvOut] :=
  hmrRows_owned_drop s2Step376ExitGvAfter [s2Step376ExitGOut,s2Step376ExitFOut,s2Step376ExitFvOut,s2Step376ExitGvOut] 3 s2Step376ExitBank_outgoingOwned

private theorem s2Step376ExitGv_distinct : (s2Step376ExitGvRow.sign::s2Step376ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step376ExitGv_owned : (s2Step376ExitGvRow.sign::s2Step376ExitGvRow.payload).toFinset⊆s2Step376ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step376ExitGvBefore (fun q => (0≤q ∧ q<83) ∨ (84≤q ∧ q<595) ∨ (596≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step376ExitGv_reserved : s2Step376ExitGvBefore.reserve (∅ : Finset Wire)=some s2Step376ExitGvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step376ExitGv_checked : planRowResizeLog s2Step376ExitGvBefore s2Step376ExitGvRow 205 []=
    some (s2Step376ExitGvAfter,s2Step376ExitGvOut,growRow 771 []) := by
  have result := planRowResizeLog_of_growth s2Step376ExitGvBefore s2Step376ExitGvAfter s2Step376ExitGvRow 205 []
    s2Step376ExitGv_distinct s2Step376ExitGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step376ExitGv_reserved
  have rowEq : WindowRow.mk (s2Step376ExitGvRow.payload++[]) s2Step376ExitGvRow.sign=s2Step376ExitGvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step376ExitBank_rows : planWindowRowsLog s2Step376ExitGBefore [(s2Step376ExitGRow,83),(s2Step376ExitFRow,83),(s2Step376ExitFvRow,205),(s2Step376ExitGvRow,205)] [[],[],[],[]]=
    some (s2Step376ExitGvAfter,[s2Step376ExitGOut,s2Step376ExitFOut,s2Step376ExitFvOut,s2Step376ExitGvOut],(shrinkRow 769 s2Step376ExitGExtra ++ (shrinkRow 768 s2Step376ExitFExtra ++ (growRow 770 [] ++ (growRow 771 [] ++ []))))) := by
  have h4 : planWindowRowsLog s2Step376ExitGvAfter [] []=some (s2Step376ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step376ExitGvBefore s2Step376ExitGvAfter s2Step376ExitGvAfter
    s2Step376ExitGvRow s2Step376ExitGvOut 205 [] [] [] []
    (growRow 771 []) ([]) s2Step376ExitGv_Incoming s2Step376ExitGv_checked h4 s2Step376ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step376ExitFvBefore s2Step376ExitFvAfter s2Step376ExitGvAfter
    s2Step376ExitFvRow s2Step376ExitFvOut 205 [] [(s2Step376ExitGvRow,205)] [[]] [s2Step376ExitGvOut]
    (growRow 770 []) ((growRow 771 [] ++ [])) s2Step376ExitFv_Incoming s2Step376ExitFv_checked h3 s2Step376ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step376ExitFBefore s2Step376ExitFAfter s2Step376ExitGvAfter
    s2Step376ExitFRow s2Step376ExitFOut 83 [] [(s2Step376ExitFvRow,205),(s2Step376ExitGvRow,205)] [[],[]] [s2Step376ExitFvOut,s2Step376ExitGvOut]
    (shrinkRow 768 s2Step376ExitFExtra) ((growRow 770 [] ++ (growRow 771 [] ++ []))) s2Step376ExitF_Incoming s2Step376ExitF_checked h2 s2Step376ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step376ExitGBefore s2Step376ExitGAfter s2Step376ExitGvAfter
    s2Step376ExitGRow s2Step376ExitGOut 83 [] [(s2Step376ExitFRow,83),(s2Step376ExitFvRow,205),(s2Step376ExitGvRow,205)] [[],[],[]] [s2Step376ExitFOut,s2Step376ExitFvOut,s2Step376ExitGvOut]
    (shrinkRow 769 s2Step376ExitGExtra) ((shrinkRow 768 s2Step376ExitFExtra ++ (growRow 770 [] ++ (growRow 771 [] ++ [])))) s2Step376ExitG_Incoming s2Step376ExitG_checked h1 s2Step376ExitG_Outgoing
  exact h0

private theorem s2Step376ExitBank_checked : compileHmrBankResizeLog .exit s2Step376ExitGBefore ⟨s2Step376ExitFRow,s2Step376ExitGRow,s2Step376ExitFvRow,s2Step376ExitGvRow⟩ ⟨83,83,205,205⟩ [[],[],[],[]]=
    some (s2Step376ExitGvAfter,⟨s2Step376ExitFOut,s2Step376ExitGOut,s2Step376ExitFvOut,s2Step376ExitGvOut⟩,(shrinkRow 769 s2Step376ExitGExtra ++ (shrinkRow 768 s2Step376ExitFExtra ++ (growRow 770 [] ++ (growRow 771 [] ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step376ExitBank_rows]
  rfl

private theorem s2Step376Add0_apart : Disjoint s2Step376Add0Arena.live s2Step376Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step376Add0Arena (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step376Add0_card : s2Step376Add0Arena.live.card=910 := by
  decide +kernel

private theorem s2Step376Add0_borrowed : s2Step376Add0Arena.checkBorrow (hmrHybridCount s2Step376Add0Arena s2Step376Add0B.length) s2Step376Add0Work=some s2Step376Add0During := by
  have len : s2Step376Add0Work.length=hmrHybridCount s2Step376Add0Arena s2Step376Add0B.length := by
    rw [hmrHybridCount,s2Step376Add0_card]
    decide +kernel
  have nd : s2Step376Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step376Add0Arena s2Step376Add0During s2Step376Add0Work.toFinset s2Step376Add0_bounded s2Step376Add0_apart rfl

private theorem s2Step376Add0_distinct : (793::797::825::(s2Step376Add0A++s2Step376Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step376Add0_owned : (793::797::825::(s2Step376Add0A++s2Step376Add0B)).toFinset⊆s2Step376Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step376Add0Arena (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step376Add0_checked : compileHmrHybridCinLog s2Step376Add0Arena 797 793 825 s2Step376Add0A s2Step376Add0B s2Step376Add0Work=some s2Step376Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step376Add0Arena s2Step376Add0During 797 793 825 s2Step376Add0A s2Step376Add0B s2Step376Add0Work
    (by decide +kernel) (by decide +kernel) s2Step376Add0_distinct
    (fun q hq => s2Step376Add0_owned (List.mem_toFinset.mpr hq)) s2Step376Add0_borrowed

private theorem s2Step376Add1_apart : Disjoint s2Step376Add1Arena.live s2Step376Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step376Add1Arena (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step376Add1_card : s2Step376Add1Arena.live.card=910 := by
  decide +kernel

private theorem s2Step376Add1_borrowed : s2Step376Add1Arena.checkBorrow (hmrHybridCount s2Step376Add1Arena s2Step376Add1B.length) s2Step376Add1Work=some s2Step376Add1During := by
  have len : s2Step376Add1Work.length=hmrHybridCount s2Step376Add1Arena s2Step376Add1B.length := by
    rw [hmrHybridCount,s2Step376Add1_card]
    decide +kernel
  have nd : s2Step376Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step376Add1Arena s2Step376Add1During s2Step376Add1Work.toFinset s2Step376Add1_bounded s2Step376Add1_apart rfl

private theorem s2Step376Add1_distinct : (793::797::825::(s2Step376Add1A++s2Step376Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step376Add1_owned : (793::797::825::(s2Step376Add1A++s2Step376Add1B)).toFinset⊆s2Step376Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step376Add1Arena (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step376Add1_checked : compileHmrHybridCinLog s2Step376Add1Arena 797 793 825 s2Step376Add1A s2Step376Add1B s2Step376Add1Work=some s2Step376Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step376Add1Arena s2Step376Add1During 797 793 825 s2Step376Add1A s2Step376Add1B s2Step376Add1Work
    (by decide +kernel) (by decide +kernel) s2Step376Add1_distinct
    (fun q hq => s2Step376Add1_owned (List.mem_toFinset.mpr hq)) s2Step376Add1_borrowed

private theorem s2Step376F4_apart : Disjoint (s2Step376Add0A++s2Step376Add0B).toFinset (s2Step376Add1A++s2Step376Add1B).toFinset := by
  have nd : ((s2Step376Add0A++s2Step376Add0B)++(s2Step376Add1A++s2Step376Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step376F4_carry : s2Step376F4FlagArena.checkBorrow 1 [825]=some s2Step376Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step376F4FlagArena,s2Step376HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step376F4FlagArena,s2Step376HeadFvAfter,s2Step376Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step376F4_distinct : (799::797::793::825::((s2Step376Add0A++s2Step376Add1A)++(s2Step376Add0B++s2Step376Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step376F4_flag : s2Step376HeadFvAfter.checkBorrow 1 [793]=some s2Step376F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step376HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step376F4_owned : (799::797::((s2Step376Add0A++s2Step376Add1A)++(s2Step376Add0B++s2Step376Add1B))).toFinset⊆s2Step376HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step376HeadFvAfter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step376F4_checked : compileHmrHybridF4Log s2Step376HeadFvAfter 799 797 s2Step376Add0A s2Step376Add0B s2Step376Add1A s2Step376Add1B [793] [825] s2Step376Add0Work s2Step376Add1Work=some s2Step376F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step376HeadFvAfter s2Step376F4FlagArena s2Step376Add0Arena s2Step376Add0During s2Step376Add1During 799 797
    s2Step376Add0A s2Step376Add0B s2Step376Add1A s2Step376Add1B [793] [825] s2Step376Add0Work s2Step376Add1Work
    (fun q hq => s2Step376F4_owned (List.mem_toFinset.mpr hq)) s2Step376F4_flag s2Step376F4_carry
    s2Step376F4_distinct s2Step376F4_apart s2Step376Add0_checked s2Step376Add1_checked

private theorem s2Step376Front_branch : s2Step376FrontSigmaArena.checkBorrow 1 [797]=some s2Step376HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step376FrontSigmaArena,s2Step376EntryGvAfter,s2Step376EntryFBefore,arenaWires]
  · ext q
    simp only [s2Step376FrontSigmaArena,s2Step376EntryGvAfter,s2Step376EntryFBefore,s2Step376HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step376Front_entry : HmrFrontEntryValid s2Step376EntryFBefore s2Step376FrontBank 84 204 ⟨83,83,205,205⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step376FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step376EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step376EntryFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (804≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step376FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step376Front_sigma : s2Step376EntryGvAfter.checkBorrow 1 [799]=some s2Step376FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step376EntryGvAfter,s2Step376EntryFBefore,arenaWires]
  · rfl

private def s2Step376HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step376HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step376HeadFBefore : Arena := s2Step376HeadGAfter

private def s2Step376HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595],768⟩

private def s2Step376HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826, 789],770⟩

private def s2Step376HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83],769⟩

private def s2Step376HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 596, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811, 796],771⟩

private theorem s2Step376HeadBank_incomingDistinct : ([s2Step376HeadGRow,s2Step376HeadFRow,s2Step376HeadGvRow,s2Step376HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step376HeadF_Incoming : rowsOwned s2Step376HeadFBefore [s2Step376HeadFRow,s2Step376HeadGvRow,s2Step376HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step376HeadGRow,s2Step376HeadFRow,s2Step376HeadGvRow,s2Step376HeadFvRow] 1 s2Step376HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step376HeadFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step376HeadBank_outgoingOwned : rowsOwned s2Step376HeadFvAfter [s2Step376HeadGOut,s2Step376HeadFOut,s2Step376HeadGvOut,s2Step376HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step376HeadFvAfter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step376HeadF_Outgoing : rowsOwned s2Step376HeadFvAfter [s2Step376HeadFOut,s2Step376HeadGvOut,s2Step376HeadFvOut] :=
  hmrRows_owned_drop s2Step376HeadFvAfter [s2Step376HeadGOut,s2Step376HeadFOut,s2Step376HeadGvOut,s2Step376HeadFvOut] 1 s2Step376HeadBank_outgoingOwned

private theorem s2Step376HeadF_distinct : (s2Step376HeadFRow.sign::s2Step376HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step376HeadF_owned : (s2Step376HeadFRow.sign::s2Step376HeadFRow.payload).toFinset⊆s2Step376HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step376HeadFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step376HeadF_reserved : s2Step376HeadFBefore.reserve s2Step376HeadFFresh.toFinset=some s2Step376HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step376HeadFFresh,arenaWires]
  · norm_num [s2Step376HeadFBefore,s2Step376HeadGAfter,s2Step376HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step376HeadFAfter,s2Step376HeadFBefore,s2Step376HeadGAfter,s2Step376HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step376HeadF_checked : planRowResizeLog s2Step376HeadFBefore s2Step376HeadFRow 85 s2Step376HeadFFresh=
    some (s2Step376HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 785],768⟩,growRow 768 s2Step376HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step376HeadFBefore s2Step376HeadFAfter s2Step376HeadFRow 85 s2Step376HeadFFresh
    s2Step376HeadF_distinct s2Step376HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step376HeadF_reserved
  have rowEq : WindowRow.mk (s2Step376HeadFRow.payload++s2Step376HeadFFresh) s2Step376HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 785],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step376HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step376HeadFvBefore : Arena := s2Step376HeadGvAfter

private theorem s2Step376HeadFv_Incoming : rowsOwned s2Step376HeadFvBefore [s2Step376HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step376HeadGRow,s2Step376HeadFRow,s2Step376HeadGvRow,s2Step376HeadFvRow] 3 s2Step376HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step376HeadFvBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step376HeadFv_Outgoing : rowsOwned s2Step376HeadFvAfter [s2Step376HeadFvOut] :=
  hmrRows_owned_drop s2Step376HeadFvAfter [s2Step376HeadGOut,s2Step376HeadFOut,s2Step376HeadGvOut,s2Step376HeadFvOut] 3 s2Step376HeadBank_outgoingOwned

private theorem s2Step376HeadFv_distinct : (s2Step376HeadFvRow.sign::s2Step376HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step376HeadFv_owned : (s2Step376HeadFvRow.sign::s2Step376HeadFvRow.payload).toFinset⊆s2Step376HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step376HeadFvBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step376HeadFv_reserved : s2Step376HeadFvBefore.reserve s2Step376HeadFvFresh.toFinset=some s2Step376HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step376HeadFvFresh,arenaWires]
  · norm_num [s2Step376HeadFvBefore,s2Step376HeadGvAfter,s2Step376HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step376HeadFvAfter,s2Step376HeadFvBefore,s2Step376HeadGvAfter,s2Step376HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step376HeadFv_checked : planRowResizeLog s2Step376HeadFvBefore s2Step376HeadFvRow 205 s2Step376HeadFvFresh=
    some (s2Step376HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826, 789, 800],770⟩,growRow 770 s2Step376HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step376HeadFvBefore s2Step376HeadFvAfter s2Step376HeadFvRow 205 s2Step376HeadFvFresh
    s2Step376HeadFv_distinct s2Step376HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step376HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step376HeadFvRow.payload++s2Step376HeadFvFresh) s2Step376HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826, 789, 800],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step376HeadG_Incoming : rowsOwned s2Step376HeadGBefore [s2Step376HeadGRow,s2Step376HeadFRow,s2Step376HeadGvRow,s2Step376HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step376HeadGRow,s2Step376HeadFRow,s2Step376HeadGvRow,s2Step376HeadFvRow] 0 s2Step376HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step376HeadGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (804≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step376HeadG_Outgoing : rowsOwned s2Step376HeadFvAfter [s2Step376HeadGOut,s2Step376HeadFOut,s2Step376HeadGvOut,s2Step376HeadFvOut] :=
  hmrRows_owned_drop s2Step376HeadFvAfter [s2Step376HeadGOut,s2Step376HeadFOut,s2Step376HeadGvOut,s2Step376HeadFvOut] 0 s2Step376HeadBank_outgoingOwned

private theorem s2Step376HeadG_distinct : (s2Step376HeadGRow.sign::s2Step376HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step376HeadG_owned : (s2Step376HeadGRow.sign::s2Step376HeadGRow.payload).toFinset⊆s2Step376HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step376HeadGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (804≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step376HeadG_reserved : s2Step376HeadGBefore.reserve s2Step376HeadGFresh.toFinset=some s2Step376HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step376HeadGFresh,arenaWires]
  · norm_num [s2Step376HeadGBefore,s2Step376HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step376HeadGAfter,s2Step376HeadGBefore,s2Step376HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step376HeadG_checked : planRowResizeLog s2Step376HeadGBefore s2Step376HeadGRow 85 s2Step376HeadGFresh=
    some (s2Step376HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 803],769⟩,growRow 769 s2Step376HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step376HeadGBefore s2Step376HeadGAfter s2Step376HeadGRow 85 s2Step376HeadGFresh
    s2Step376HeadG_distinct s2Step376HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step376HeadG_reserved
  have rowEq : WindowRow.mk (s2Step376HeadGRow.payload++s2Step376HeadGFresh) s2Step376HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 803],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step376HeadGvBefore : Arena := s2Step376HeadFAfter

private theorem s2Step376HeadGv_Incoming : rowsOwned s2Step376HeadGvBefore [s2Step376HeadGvRow,s2Step376HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step376HeadGRow,s2Step376HeadFRow,s2Step376HeadGvRow,s2Step376HeadFvRow] 2 s2Step376HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step376HeadGvBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step376HeadGv_Outgoing : rowsOwned s2Step376HeadFvAfter [s2Step376HeadGvOut,s2Step376HeadFvOut] :=
  hmrRows_owned_drop s2Step376HeadFvAfter [s2Step376HeadGOut,s2Step376HeadFOut,s2Step376HeadGvOut,s2Step376HeadFvOut] 2 s2Step376HeadBank_outgoingOwned

private theorem s2Step376HeadGv_distinct : (s2Step376HeadGvRow.sign::s2Step376HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step376HeadGv_owned : (s2Step376HeadGvRow.sign::s2Step376HeadGvRow.payload).toFinset⊆s2Step376HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step376HeadGvBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step376HeadGv_reserved : s2Step376HeadGvBefore.reserve s2Step376HeadGvFresh.toFinset=some s2Step376HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step376HeadGvFresh,arenaWires]
  · norm_num [s2Step376HeadGvBefore,s2Step376HeadFAfter,s2Step376HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step376HeadGvAfter,s2Step376HeadGvBefore,s2Step376HeadFAfter,s2Step376HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step376HeadGv_checked : planRowResizeLog s2Step376HeadGvBefore s2Step376HeadGvRow 205 s2Step376HeadGvFresh=
    some (s2Step376HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 596, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811, 796, 802],771⟩,growRow 771 s2Step376HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step376HeadGvBefore s2Step376HeadGvAfter s2Step376HeadGvRow 205 s2Step376HeadGvFresh
    s2Step376HeadGv_distinct s2Step376HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step376HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step376HeadGvRow.payload++s2Step376HeadGvFresh) s2Step376HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 596, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811, 796, 802],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step376HeadBank_rows : planWindowRowsLog s2Step376HeadGBefore [(s2Step376HeadGRow,85),(s2Step376HeadFRow,85),(s2Step376HeadGvRow,205),(s2Step376HeadFvRow,205)] [s2Step376HeadGFresh,s2Step376HeadFFresh,s2Step376HeadGvFresh,s2Step376HeadFvFresh]=
    some (s2Step376HeadFvAfter,[s2Step376HeadGOut,s2Step376HeadFOut,s2Step376HeadGvOut,s2Step376HeadFvOut],(growRow 769 s2Step376HeadGFresh ++ (growRow 768 s2Step376HeadFFresh ++ (growRow 771 s2Step376HeadGvFresh ++ (growRow 770 s2Step376HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step376HeadFvAfter [] []=some (s2Step376HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step376HeadFvBefore s2Step376HeadFvAfter s2Step376HeadFvAfter
    s2Step376HeadFvRow s2Step376HeadFvOut 205 s2Step376HeadFvFresh [] [] []
    (growRow 770 s2Step376HeadFvFresh) ([]) s2Step376HeadFv_Incoming s2Step376HeadFv_checked h4 s2Step376HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step376HeadGvBefore s2Step376HeadGvAfter s2Step376HeadFvAfter
    s2Step376HeadGvRow s2Step376HeadGvOut 205 s2Step376HeadGvFresh [(s2Step376HeadFvRow,205)] [s2Step376HeadFvFresh] [s2Step376HeadFvOut]
    (growRow 771 s2Step376HeadGvFresh) ((growRow 770 s2Step376HeadFvFresh ++ [])) s2Step376HeadGv_Incoming s2Step376HeadGv_checked h3 s2Step376HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step376HeadFBefore s2Step376HeadFAfter s2Step376HeadFvAfter
    s2Step376HeadFRow s2Step376HeadFOut 85 s2Step376HeadFFresh [(s2Step376HeadGvRow,205),(s2Step376HeadFvRow,205)] [s2Step376HeadGvFresh,s2Step376HeadFvFresh] [s2Step376HeadGvOut,s2Step376HeadFvOut]
    (growRow 768 s2Step376HeadFFresh) ((growRow 771 s2Step376HeadGvFresh ++ (growRow 770 s2Step376HeadFvFresh ++ []))) s2Step376HeadF_Incoming s2Step376HeadF_checked h2 s2Step376HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step376HeadGBefore s2Step376HeadGAfter s2Step376HeadFvAfter
    s2Step376HeadGRow s2Step376HeadGOut 85 s2Step376HeadGFresh [(s2Step376HeadFRow,85),(s2Step376HeadGvRow,205),(s2Step376HeadFvRow,205)] [s2Step376HeadFFresh,s2Step376HeadGvFresh,s2Step376HeadFvFresh] [s2Step376HeadFOut,s2Step376HeadGvOut,s2Step376HeadFvOut]
    (growRow 769 s2Step376HeadGFresh) ((growRow 768 s2Step376HeadFFresh ++ (growRow 771 s2Step376HeadGvFresh ++ (growRow 770 s2Step376HeadFvFresh ++ [])))) s2Step376HeadG_Incoming s2Step376HeadG_checked h1 s2Step376HeadG_Outgoing
  exact h0

private theorem s2Step376HeadBank_checked : compileHmrBankResizeLog .headroom s2Step376HeadGBefore ⟨s2Step376HeadFRow,s2Step376HeadGRow,s2Step376HeadFvRow,s2Step376HeadGvRow⟩ ⟨85,85,205,205⟩ [s2Step376HeadGFresh,s2Step376HeadFFresh,s2Step376HeadGvFresh,s2Step376HeadFvFresh]=
    some (s2Step376HeadFvAfter,⟨s2Step376HeadFOut,s2Step376HeadGOut,s2Step376HeadFvOut,s2Step376HeadGvOut⟩,(growRow 769 s2Step376HeadGFresh ++ (growRow 768 s2Step376HeadFFresh ++ (growRow 771 s2Step376HeadGvFresh ++ (growRow 770 s2Step376HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step376HeadBank_rows]
  rfl

private theorem s2Step376Front_checked : compileHmrSourceFrontLog s2Step376EntryFBefore s2Step376FrontBank 84 204 ⟨83,83,205,205⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step376FrontLog=some s2Step376FrontPlan := by
  have pairEq : s2Step376FrontPair=⟨s2Step376HeadFRow,s2Step376HeadGRow,s2Step376HeadFvRow,s2Step376HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step376FrontHead=⟨s2Step376ExitFRow,s2Step376ExitGRow,s2Step376ExitFvRow,s2Step376ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step376Add0A=s2Step376FrontHead.f.wires := by decide +kernel
  have gEq : s2Step376Add0B=s2Step376FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step376Add1A=s2Step376FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step376Add1B=s2Step376FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step376EntryFBefore s2Step376FrontBank 84 204 ⟨83,83,205,205⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step376FrontLog s2Step376FrontPlan
  · exact s2Step376Front_entry
  · exact s2Step376EntryBank_checked
  · exact s2Step376Front_sigma
  · rfl
  · exact s2Step376Front_branch
  · rfl
  · simpa only [s2Step376FrontPlan,pairEq] using s2Step376HeadBank_checked
  · simpa only [s2Step376FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step376F4_checked
  · exact s2Step376Counter_checked
  · rfl
  · simpa only [s2Step376FrontPlan,headEq] using s2Step376ExitBank_checked

private theorem s2Step376Complete_explicit_checked : compileHmrEarlyStepLog s2Step376EntryFBefore s2Step376FrontBank 84 204 ⟨83,83,205,205⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step376CompleteLog=some s2Step376CompletePlan := by
  let Q := s2Step376EarlyControlPlan
  have hq := s2Step376EarlyControl_plan_checked
  have fv1 : s2Step376CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step376CompleteOut.fv.payload[2]?.getD s2Step376CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step376CompleteOut.fv.payload[3]?.getD s2Step376CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step376CompleteOut.fv.payload[4]?.getD s2Step376CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step376EntryFBefore s2Step376EarlyControlArena s2Step376FrontBank 84 204 ⟨83,83,205,205⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step376CompleteLog s2Step376FrontPlan Q
    s2Step376Front_checked s2Step376Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step376Complete_owned s2Step376Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step376EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 799 s2Step376CompleteOut.fv.second (s2Step376CompleteOut.fv.payload[2]?.getD s2Step376CompleteOut.fv.sign) (s2Step376CompleteOut.fv.payload[3]?.getD s2Step376CompleteOut.fv.sign) (s2Step376CompleteOut.fv.payload[4]?.getD s2Step376CompleteOut.fv.sign) 797 60 s2Step376EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep376Arena : Arena := s2Step376EntryFBefore
def s2PrivateStep376Bank : WindowBank := s2Step376FrontBank
def s2PrivateStep376Spec : HmrSourceWalkStepLog := ⟨84,204,⟨83,83,205,205⟩,60,.early s2Step376CompleteLog⟩
def s2PrivateStep376Plan : HmrSourceStepPlan := .early s2Step376CompletePlan
theorem s2PrivateStep376_source : s2PrivateStep376Spec=s2ObservedLogs368[8] := rfl
theorem s2PrivateStep376_checked : compileHmrSourceStepLog s2PrivateStep376Arena s2PrivateStep376Bank
    s2PrivateStep376Spec.fgWidth s2PrivateStep376Spec.vWidth s2PrivateStep376Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]
    6 498 376 s2PrivateStep376Spec.need none s2PrivateStep376Spec.log=some s2PrivateStep376Plan := by
  change compileHmrSourceStepLog s2Step376EntryFBefore s2Step376FrontBank 84 204 ⟨83,83,205,205⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 6 498 376 60 none (.early s2Step376CompleteLog)=some (.early s2Step376CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 376<498)]
  rw [s2Step376Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
