import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep372
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

private def s2Step374CompleteMoves : List (Wire × Wire) := []

private def s2Step374EarlyControlLog : HmrEarlyControlLog := ⟨[797, 799, 825, 800, 785],[802],[827],[844, 907, 913, 914, 915, 916],[]⟩

private def s2Step374FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [825], [], []],[[800], [799], [797], [789]],[[], [], [], []]⟩,[796],[793],[785],[802],[827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[785, 802, 827, 844]⟩

private def s2Step374CompleteLog : HmrEarlyStepLog := ⟨s2Step374FrontLog,s2Step374CompleteMoves,s2Step374EarlyControlLog⟩

private def s2Step374ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596],768⟩

private def s2Step374ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826, 789],770⟩

private def s2Step374ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83],769⟩

private def s2Step374ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811],771⟩

private def s2Step374FrontOut : WindowBank := ⟨s2Step374ExitFOut,s2Step374ExitGOut,s2Step374ExitFvOut,s2Step374ExitGvOut⟩

private def s2Step374CompleteOut : WindowBank := s2Step374FrontOut.repacked s2Step374CompleteMoves

private def s2Step374EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step374EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step374EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step374EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step374EarlyControlPositiveArena,[802],s2Step374EarlyControlEqualityArena,[827],⟨⟨796,false⟩,[⟨⟨802,false⟩,827⟩]⟩⟩

private def s2Step374EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<917)),Finset.filter_subset _ _⟩

private def s2Step374EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<917)),Finset.filter_subset _ _⟩

private def s2Step374EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step374EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<796) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step374EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<796) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step374EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step374EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,797⟩,⟨⟨774,false⟩,799⟩,⟨⟨775,false⟩,825⟩,⟨⟨776,false⟩,800⟩,⟨⟨777,false⟩,785⟩]⟩

private def s2Step374EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step374EarlyControlZeroArena,s2Step374EarlyControlZeroPlan,s2Step374EarlyControlClassPlan,s2Step374EarlyControlFlagArena,s2Step374EarlyControlFittedArena,s2Step374EarlyControlHistoryArena,s2Step374EarlyControlSigmaArena,s2Step374EarlyControlOutputArena,s2Step374EarlyControlLog⟩

private def s2Step374CounterWork : List Wire := [785, 802, 827, 844]

private theorem s2Step374Counter_bounded : s2Step374CounterWork.toFinset⊆arenaWires := by norm_num [s2Step374CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step374HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step374CounterDuring : Arena := ⟨s2Step374HeadFvAfter.live∪s2Step374CounterWork.toFinset,Finset.union_subset s2Step374HeadFvAfter.bounded s2Step374Counter_bounded⟩

private def s2Step374EntryFFresh : List Wire := []

private def s2Step374EntryFvFresh : List Wire := []

private def s2Step374EntryGFresh : List Wire := [825]

private def s2Step374EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<793) ∨ (794≤q ∧ q<796) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step374EntryGvAfter : Arena := s2Step374EntryGAfter

private def s2Step374EntryGvFresh : List Wire := []

private def s2Step374ExitFExtra : List Wire := [799]

private def s2Step374ExitGExtra : List Wire := [825, 800]

private def s2Step374ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step374ExitGvExtra : List Wire := [797]

private def s2Step374Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step374Add0Work : List Wire := [827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step374Add0_bounded : s2Step374Add0Work.toFinset⊆arenaWires := by
  have h : s2Step374Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step374Add0During : Arena := ⟨s2Step374Add0Arena.live∪s2Step374Add0Work.toFinset,Finset.union_subset s2Step374Add0Arena.bounded s2Step374Add0_bounded⟩

private def s2Step374Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step374Add1Work : List Wire := [827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step374Add1_bounded : s2Step374Add1Work.toFinset⊆arenaWires := by
  have h : s2Step374Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step374Add1During : Arena := ⟨s2Step374Add1Arena.live∪s2Step374Add1Work.toFinset,Finset.union_subset s2Step374Add1Arena.bounded s2Step374Add1_bounded⟩

private def s2Step374F4FlagArena : Arena := ⟨s2Step374HeadFvAfter.live∪{785},Finset.union_subset s2Step374HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step374F4Plan : HmrHybridF4Plan := ⟨s2Step374F4FlagArena,[785],s2Step374Add0Arena,[802],s2Step374Add0During,s2Step374Add0Work,s2Step374Add1During,s2Step374Add1Work⟩

private def s2Step374HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 799],768⟩

private def s2Step374HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826, 789],770⟩

private def s2Step374HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 825, 800],769⟩

private def s2Step374HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811, 797],771⟩

private def s2Step374FrontHead : WindowBank := ⟨s2Step374HeadFOut,s2Step374HeadGOut,s2Step374HeadFvOut,s2Step374HeadGvOut⟩

private def s2Step374EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596],768⟩

private def s2Step374EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826],770⟩

private def s2Step374EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 825],769⟩

private def s2Step374EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811],771⟩

private def s2Step374FrontPair : WindowBank := ⟨s2Step374EntryFOut,s2Step374EntryGOut,s2Step374EntryFvOut,s2Step374EntryGvOut⟩

private def s2Step374FrontSigmaArena : Arena := ⟨s2Step374EntryGvAfter.live∪{796},Finset.union_subset s2Step374EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step374HeadFFresh : List Wire := [799]

private def s2Step374HeadFvFresh : List Wire := [789]

private def s2Step374HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step374HeadGFresh : List Wire := [800]

private def s2Step374HeadGvFresh : List Wire := [797]

private def s2Step374FrontPlan : HmrSourceFront := ⟨s2Step374EntryGvAfter,s2Step374FrontPair,(growRow 768 s2Step374EntryFFresh ++ (growRow 769 s2Step374EntryGFresh ++ (growRow 770 s2Step374EntryFvFresh ++ (growRow 771 s2Step374EntryGvFresh ++ [])))),s2Step374FrontSigmaArena,[796],s2Step374HeadGBefore,[793],
  s2Step374HeadFvAfter,s2Step374FrontHead,(growRow 769 s2Step374HeadGFresh ++ (growRow 768 s2Step374HeadFFresh ++ (growRow 771 s2Step374HeadGvFresh ++ (growRow 770 s2Step374HeadFvFresh ++ [])))),s2Step374F4Plan,s2Step374CounterDuring,s2Step374CounterWork,s2Step374ExitGvAfter,s2Step374FrontOut,(shrinkRow 769 s2Step374ExitGExtra ++ (shrinkRow 768 s2Step374ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step374ExitGvExtra ++ []))))⟩

private def s2Step374CompletePlan : HmrEarlyStepPlan := ⟨s2Step374FrontPlan,s2Step374EarlyControlArena,s2Step374EarlyControlPlan,s2Step374CompleteMoves⟩

private theorem s2Step374Complete_apart : List.Disjoint (s2Step374CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [796, 793, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] := by
  have nd : ((s2Step374CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[796, 793, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step374Complete_owned : (s2Step374CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step374EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step374EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step374Complete_repack : s2Step374ExitGvAfter.checkRepack s2Step374CompleteMoves=some s2Step374EarlyControlArena := by rfl

private theorem s2Step374EarlyControl_branchOwned : ([793] : List Wire).toFinset⊆s2Step374EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step374EarlyControlSigmaArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<796) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step374EarlyControl_branch : compileHmrBranchRetirement s2Step374EarlyControlSigmaArena 793=some s2Step374EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step374EarlyControl_branchOwned
  · ext q
    simp [s2Step374EarlyControlOutputArena,s2Step374EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step374EarlyControl_classEqualityBorrow : s2Step374EarlyControlPositiveArena.checkBorrow (([796, 802] : List Wire).length-1) s2Step374EarlyControlLog.classWork=some s2Step374EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step374EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step374EarlyControlPositiveArena (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step374EarlyControlEqualityArena,s2Step374EarlyControlPositiveArena,s2Step374EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step374EarlyControl_classEqualityOwned : ([796, 802] : List Wire).toFinset⊆s2Step374EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step374EarlyControlPositiveArena (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step374EarlyControl_classEquality : compileHmrEqualityLog s2Step374EarlyControlPositiveArena [796, 802] 0 s2Step374EarlyControlLog.classWork=some (s2Step374EarlyControlEqualityArena,s2Step374EarlyControlLog.classWork,s2Step374EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step374EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step374EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step374EarlyControl_classOwned : ([777, 785, 796] : List Wire).toFinset⊆s2Step374EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step374EarlyControlZeroArena (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step374EarlyControl_positiveBorrow : s2Step374EarlyControlZeroArena.checkBorrow (1) s2Step374EarlyControlLog.positiveWork=some s2Step374EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step374EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step374EarlyControlZeroArena (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step374EarlyControlPositiveArena,s2Step374EarlyControlZeroArena,s2Step374EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step374EarlyControl_class : compileHmrSourceClassLog s2Step374EarlyControlZeroArena false 777 s2Step374EarlyControlZeroPlan.top 0 796 s2Step374EarlyControlLog.positiveWork s2Step374EarlyControlLog.classWork=some s2Step374EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step374EarlyControlClassPlan s2Step374EarlyControlZeroArena false 777 s2Step374EarlyControlZeroPlan.top 0 796
  constructor
  · decide +kernel
  · exact s2Step374EarlyControl_classOwned
  · exact s2Step374EarlyControl_positiveBorrow
  · exact s2Step374EarlyControl_classEquality

private theorem s2Step374EarlyControl_entryRecordOwned : ([793, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step374EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step374EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step374EarlyControl_entrySigmaOwned : ([796, 254] : List Wire).toFinset⊆s2Step374EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step374EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step374EarlyControl_fitBorrow : s2Step374EarlyControlFlagArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step374EarlyControlLog.recordFresh=some s2Step374EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step374EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step374EarlyControlFlagArena (fun q => (0≤q ∧ q<917)) rfl
      decide +kernel
    · ext q
      simp [s2Step374EarlyControlFittedArena,s2Step374EarlyControlFlagArena,s2Step374EarlyControlLog,arenaWires]

private theorem s2Step374EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step374EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step374EarlyControlFlagArena (fun q => (0≤q ∧ q<917)) rfl
  decide +kernel

private theorem s2Step374EarlyControl_fit : compileHmrRecordGrowLog s2Step374EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step374EarlyControlLog.recordFresh=some s2Step374EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step374EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step374EarlyControl_fitBorrow

private theorem s2Step374EarlyControl_flagsBorrow : s2Step374EarlyControlEqualityArena.checkBorrow (6) s2Step374EarlyControlLog.flagWork=some s2Step374EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step374EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step374EarlyControlEqualityArena (fun q => (0≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step374EarlyControlFlagArena,s2Step374EarlyControlEqualityArena,s2Step374EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step374EarlyControl_flagsOwned : ([827, 253, 252, 251] : List Wire).toFinset⊆s2Step374EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step374EarlyControlEqualityArena (fun q => (0≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step374EarlyControl_flags : compileHmrFlagsLog s2Step374EarlyControlClassPlan.equalityArena s2Step374EarlyControlClassPlan.equality.top 253 252 251 s2Step374EarlyControlLog.flagWork=some s2Step374EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step374EarlyControl_flagsOwned⟩
  · exact s2Step374EarlyControl_flagsBorrow

private theorem s2Step374EarlyControl_historyBorrow : s2Step374EarlyControlArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step374EarlyControlLog.recordFresh=some s2Step374EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step374EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step374EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step374EarlyControlHistoryArena,s2Step374EarlyControlArena,s2Step374EarlyControlLog,arenaWires]

private theorem s2Step374EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step374EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step374EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step374EarlyControl_history : compileHmrRecordGrowLog s2Step374EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step374EarlyControlLog.recordFresh=some s2Step374EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step374EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step374EarlyControl_historyBorrow

private theorem s2Step374EarlyControl_sigmaOwned : ([254, 796] : List Wire).toFinset⊆s2Step374EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step374EarlyControlHistoryArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step374EarlyControl_sigmaReleaseOwned : ([796] : List Wire).toFinset⊆s2Step374EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step374EarlyControlHistoryArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step374EarlyControl_sigmaRelease : s2Step374EarlyControlHistoryArena.release {796} (fun _ => false)=some s2Step374EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step374EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step374EarlyControlSigmaArena,s2Step374EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step374EarlyControl_sigma : compileHmrSigmaDropLog s2Step374EarlyControlHistoryArena false 0 0 254 796 []=some s2Step374EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step374EarlyControl_sigmaOwned⟩
  · exact s2Step374EarlyControl_sigmaRelease

private theorem s2Step374EarlyControl_zeroBorrow : s2Step374EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step374EarlyControlLog.zeroWork=some s2Step374EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step374EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step374EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step374EarlyControlZeroArena,s2Step374EarlyControlArena,s2Step374EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step374EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step374EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step374EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step374EarlyControl_zero : compileHmrEqualityLog s2Step374EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step374EarlyControlLog.zeroWork=some (s2Step374EarlyControlZeroArena,s2Step374EarlyControlLog.zeroWork,s2Step374EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step374EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step374EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step374EarlyControl_logged : s2Step374EarlyControlPlan.Logged s2Step374EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 796 254 253 252 251 793 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step374EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step374EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step374EarlyControl_zero
  · exact s2Step374EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step374EarlyControl_flags
  · exact s2Step374EarlyControl_fit
  · exact s2Step374EarlyControl_history
  · exact s2Step374EarlyControl_sigma
  · exact s2Step374EarlyControl_branch

private theorem s2Step374EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step374EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 796 254 253 252 251 793 60 s2Step374EarlyControlLog=some s2Step374EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step374EarlyControlPlan s2Step374EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 796 254 253 252 251 793 60 s2Step374EarlyControl_logged

private def s2Step374EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<793) ∨ (794≤q ∧ q<796) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step374EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596],768⟩

private def s2Step374EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826],770⟩

private def s2Step374EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83],769⟩

private def s2Step374EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811],771⟩

private def s2Step374FrontBank : WindowBank := ⟨s2Step374EntryFRow,s2Step374EntryGRow,s2Step374EntryFvRow,s2Step374EntryGvRow⟩

private def s2Step374Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 799, 768]

private def s2Step374Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 825, 800, 769]

private def s2Step374Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826, 789, 770]

private def s2Step374Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811, 797, 771]

private theorem s2Step374Counter_apart : Disjoint s2Step374HeadFvAfter.live s2Step374CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step374HeadFvAfter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step374Counter_borrowed : s2Step374HeadFvAfter.checkBorrow 4 s2Step374CounterWork=some s2Step374CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step374HeadFvAfter s2Step374CounterDuring s2Step374CounterWork.toFinset s2Step374Counter_bounded s2Step374Counter_apart rfl

private theorem s2Step374Counter_owned : (796::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step374HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step374HeadFvAfter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step374Counter_checked : compileHmrCounterStepLog s2Step374HeadFvAfter true 796 [772, 773, 774, 775, 776, 777] s2Step374CounterWork=some s2Step374CounterDuring := by
  have owned : ∀q∈796::[772, 773, 774, 775, 776, 777],q∈s2Step374HeadFvAfter.live := fun q hq => s2Step374Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step374Counter_borrowed

private def s2Step374EntryFAfter : Arena := s2Step374EntryFBefore

private theorem s2Step374EntryBank_incomingDistinct : ([s2Step374EntryFRow,s2Step374EntryGRow,s2Step374EntryFvRow,s2Step374EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step374EntryF_Incoming : rowsOwned s2Step374EntryFBefore [s2Step374EntryFRow,s2Step374EntryGRow,s2Step374EntryFvRow,s2Step374EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step374EntryFRow,s2Step374EntryGRow,s2Step374EntryFvRow,s2Step374EntryGvRow] 0 s2Step374EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step374EntryFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<793) ∨ (794≤q ∧ q<796) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step374EntryBank_outgoingOwned : rowsOwned s2Step374EntryGvAfter [s2Step374EntryFOut,s2Step374EntryGOut,s2Step374EntryFvOut,s2Step374EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step374EntryGvAfter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<793) ∨ (794≤q ∧ q<796) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step374EntryF_Outgoing : rowsOwned s2Step374EntryGvAfter [s2Step374EntryFOut,s2Step374EntryGOut,s2Step374EntryFvOut,s2Step374EntryGvOut] :=
  hmrRows_owned_drop s2Step374EntryGvAfter [s2Step374EntryFOut,s2Step374EntryGOut,s2Step374EntryFvOut,s2Step374EntryGvOut] 0 s2Step374EntryBank_outgoingOwned

private theorem s2Step374EntryF_distinct : (s2Step374EntryFRow.sign::s2Step374EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step374EntryF_owned : (s2Step374EntryFRow.sign::s2Step374EntryFRow.payload).toFinset⊆s2Step374EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step374EntryFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<793) ∨ (794≤q ∧ q<796) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step374EntryF_reserved : s2Step374EntryFBefore.reserve s2Step374EntryFFresh.toFinset=some s2Step374EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step374EntryFFresh,arenaWires]
  · norm_num [s2Step374EntryFBefore,s2Step374EntryFFresh,arenaWires]
  · simp only [s2Step374EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step374EntryF_checked : planRowResizeLog s2Step374EntryFBefore s2Step374EntryFRow 85 s2Step374EntryFFresh=
    some (s2Step374EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596],768⟩,growRow 768 s2Step374EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step374EntryFBefore s2Step374EntryFAfter s2Step374EntryFRow 85 s2Step374EntryFFresh
    s2Step374EntryF_distinct s2Step374EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step374EntryF_reserved
  have rowEq : WindowRow.mk (s2Step374EntryFRow.payload++s2Step374EntryFFresh) s2Step374EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step374EntryFvAfter : Arena := s2Step374EntryGAfter

private def s2Step374EntryFvBefore : Arena := s2Step374EntryGAfter

private theorem s2Step374EntryFv_Incoming : rowsOwned s2Step374EntryFvBefore [s2Step374EntryFvRow,s2Step374EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step374EntryFRow,s2Step374EntryGRow,s2Step374EntryFvRow,s2Step374EntryGvRow] 2 s2Step374EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step374EntryFvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<793) ∨ (794≤q ∧ q<796) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step374EntryFv_Outgoing : rowsOwned s2Step374EntryGvAfter [s2Step374EntryFvOut,s2Step374EntryGvOut] :=
  hmrRows_owned_drop s2Step374EntryGvAfter [s2Step374EntryFOut,s2Step374EntryGOut,s2Step374EntryFvOut,s2Step374EntryGvOut] 2 s2Step374EntryBank_outgoingOwned

private theorem s2Step374EntryFv_distinct : (s2Step374EntryFvRow.sign::s2Step374EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step374EntryFv_owned : (s2Step374EntryFvRow.sign::s2Step374EntryFvRow.payload).toFinset⊆s2Step374EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step374EntryFvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<793) ∨ (794≤q ∧ q<796) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step374EntryFv_reserved : s2Step374EntryFvBefore.reserve s2Step374EntryFvFresh.toFinset=some s2Step374EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step374EntryFvFresh,arenaWires]
  · norm_num [s2Step374EntryFvBefore,s2Step374EntryGAfter,s2Step374EntryFvFresh,arenaWires]
  · simp only [s2Step374EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step374EntryFv_checked : planRowResizeLog s2Step374EntryFvBefore s2Step374EntryFvRow 203 s2Step374EntryFvFresh=
    some (s2Step374EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826],770⟩,growRow 770 s2Step374EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step374EntryFvBefore s2Step374EntryFvAfter s2Step374EntryFvRow 203 s2Step374EntryFvFresh
    s2Step374EntryFv_distinct s2Step374EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step374EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step374EntryFvRow.payload++s2Step374EntryFvFresh) s2Step374EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step374EntryGBefore : Arena := s2Step374EntryFBefore

private theorem s2Step374EntryG_Incoming : rowsOwned s2Step374EntryGBefore [s2Step374EntryGRow,s2Step374EntryFvRow,s2Step374EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step374EntryFRow,s2Step374EntryGRow,s2Step374EntryFvRow,s2Step374EntryGvRow] 1 s2Step374EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step374EntryGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<793) ∨ (794≤q ∧ q<796) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step374EntryG_Outgoing : rowsOwned s2Step374EntryGvAfter [s2Step374EntryGOut,s2Step374EntryFvOut,s2Step374EntryGvOut] :=
  hmrRows_owned_drop s2Step374EntryGvAfter [s2Step374EntryFOut,s2Step374EntryGOut,s2Step374EntryFvOut,s2Step374EntryGvOut] 1 s2Step374EntryBank_outgoingOwned

private theorem s2Step374EntryG_distinct : (s2Step374EntryGRow.sign::s2Step374EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step374EntryG_owned : (s2Step374EntryGRow.sign::s2Step374EntryGRow.payload).toFinset⊆s2Step374EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step374EntryGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<793) ∨ (794≤q ∧ q<796) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step374EntryG_reserved : s2Step374EntryGBefore.reserve s2Step374EntryGFresh.toFinset=some s2Step374EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step374EntryGFresh,arenaWires]
  · norm_num [s2Step374EntryGBefore,s2Step374EntryFBefore,s2Step374EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step374EntryGAfter,s2Step374EntryGBefore,s2Step374EntryFBefore,s2Step374EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step374EntryG_checked : planRowResizeLog s2Step374EntryGBefore s2Step374EntryGRow 85 s2Step374EntryGFresh=
    some (s2Step374EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 825],769⟩,growRow 769 s2Step374EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step374EntryGBefore s2Step374EntryGAfter s2Step374EntryGRow 85 s2Step374EntryGFresh
    s2Step374EntryG_distinct s2Step374EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step374EntryG_reserved
  have rowEq : WindowRow.mk (s2Step374EntryGRow.payload++s2Step374EntryGFresh) s2Step374EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 825],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step374EntryGvBefore : Arena := s2Step374EntryGAfter

private theorem s2Step374EntryGv_Incoming : rowsOwned s2Step374EntryGvBefore [s2Step374EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step374EntryFRow,s2Step374EntryGRow,s2Step374EntryFvRow,s2Step374EntryGvRow] 3 s2Step374EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step374EntryGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<793) ∨ (794≤q ∧ q<796) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step374EntryGv_Outgoing : rowsOwned s2Step374EntryGvAfter [s2Step374EntryGvOut] :=
  hmrRows_owned_drop s2Step374EntryGvAfter [s2Step374EntryFOut,s2Step374EntryGOut,s2Step374EntryFvOut,s2Step374EntryGvOut] 3 s2Step374EntryBank_outgoingOwned

private theorem s2Step374EntryGv_distinct : (s2Step374EntryGvRow.sign::s2Step374EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step374EntryGv_owned : (s2Step374EntryGvRow.sign::s2Step374EntryGvRow.payload).toFinset⊆s2Step374EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step374EntryGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<793) ∨ (794≤q ∧ q<796) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step374EntryGv_reserved : s2Step374EntryGvBefore.reserve s2Step374EntryGvFresh.toFinset=some s2Step374EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step374EntryGvFresh,arenaWires]
  · norm_num [s2Step374EntryGvBefore,s2Step374EntryGAfter,s2Step374EntryGvFresh,arenaWires]
  · simp only [s2Step374EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step374EntryGv_checked : planRowResizeLog s2Step374EntryGvBefore s2Step374EntryGvRow 203 s2Step374EntryGvFresh=
    some (s2Step374EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811],771⟩,growRow 771 s2Step374EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step374EntryGvBefore s2Step374EntryGvAfter s2Step374EntryGvRow 203 s2Step374EntryGvFresh
    s2Step374EntryGv_distinct s2Step374EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step374EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step374EntryGvRow.payload++s2Step374EntryGvFresh) s2Step374EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step374EntryBank_rows : planWindowRowsLog s2Step374EntryFBefore [(s2Step374EntryFRow,85),(s2Step374EntryGRow,85),(s2Step374EntryFvRow,203),(s2Step374EntryGvRow,203)] [s2Step374EntryFFresh,s2Step374EntryGFresh,s2Step374EntryFvFresh,s2Step374EntryGvFresh]=
    some (s2Step374EntryGvAfter,[s2Step374EntryFOut,s2Step374EntryGOut,s2Step374EntryFvOut,s2Step374EntryGvOut],(growRow 768 s2Step374EntryFFresh ++ (growRow 769 s2Step374EntryGFresh ++ (growRow 770 s2Step374EntryFvFresh ++ (growRow 771 s2Step374EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step374EntryGvAfter [] []=some (s2Step374EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step374EntryGvBefore s2Step374EntryGvAfter s2Step374EntryGvAfter
    s2Step374EntryGvRow s2Step374EntryGvOut 203 s2Step374EntryGvFresh [] [] []
    (growRow 771 s2Step374EntryGvFresh) ([]) s2Step374EntryGv_Incoming s2Step374EntryGv_checked h4 s2Step374EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step374EntryFvBefore s2Step374EntryFvAfter s2Step374EntryGvAfter
    s2Step374EntryFvRow s2Step374EntryFvOut 203 s2Step374EntryFvFresh [(s2Step374EntryGvRow,203)] [s2Step374EntryGvFresh] [s2Step374EntryGvOut]
    (growRow 770 s2Step374EntryFvFresh) ((growRow 771 s2Step374EntryGvFresh ++ [])) s2Step374EntryFv_Incoming s2Step374EntryFv_checked h3 s2Step374EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step374EntryGBefore s2Step374EntryGAfter s2Step374EntryGvAfter
    s2Step374EntryGRow s2Step374EntryGOut 85 s2Step374EntryGFresh [(s2Step374EntryFvRow,203),(s2Step374EntryGvRow,203)] [s2Step374EntryFvFresh,s2Step374EntryGvFresh] [s2Step374EntryFvOut,s2Step374EntryGvOut]
    (growRow 769 s2Step374EntryGFresh) ((growRow 770 s2Step374EntryFvFresh ++ (growRow 771 s2Step374EntryGvFresh ++ []))) s2Step374EntryG_Incoming s2Step374EntryG_checked h2 s2Step374EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step374EntryFBefore s2Step374EntryFAfter s2Step374EntryGvAfter
    s2Step374EntryFRow s2Step374EntryFOut 85 s2Step374EntryFFresh [(s2Step374EntryGRow,85),(s2Step374EntryFvRow,203),(s2Step374EntryGvRow,203)] [s2Step374EntryGFresh,s2Step374EntryFvFresh,s2Step374EntryGvFresh] [s2Step374EntryGOut,s2Step374EntryFvOut,s2Step374EntryGvOut]
    (growRow 768 s2Step374EntryFFresh) ((growRow 769 s2Step374EntryGFresh ++ (growRow 770 s2Step374EntryFvFresh ++ (growRow 771 s2Step374EntryGvFresh ++ [])))) s2Step374EntryF_Incoming s2Step374EntryF_checked h1 s2Step374EntryF_Outgoing
  exact h0

private theorem s2Step374EntryBank_checked : compileHmrBankResizeLog .entry s2Step374EntryFBefore ⟨s2Step374EntryFRow,s2Step374EntryGRow,s2Step374EntryFvRow,s2Step374EntryGvRow⟩ ⟨85,85,203,203⟩ [s2Step374EntryFFresh,s2Step374EntryGFresh,s2Step374EntryFvFresh,s2Step374EntryGvFresh]=
    some (s2Step374EntryGvAfter,⟨s2Step374EntryFOut,s2Step374EntryGOut,s2Step374EntryFvOut,s2Step374EntryGvOut⟩,(growRow 768 s2Step374EntryFFresh ++ (growRow 769 s2Step374EntryGFresh ++ (growRow 770 s2Step374EntryFvFresh ++ (growRow 771 s2Step374EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step374EntryBank_rows]
  rfl

private def s2Step374ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step374ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step374ExitFBefore : Arena := s2Step374ExitGAfter

private def s2Step374ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 799],768⟩

private def s2Step374ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826, 789],770⟩

private def s2Step374ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 825, 800],769⟩

private def s2Step374ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811, 797],771⟩

private theorem s2Step374ExitBank_incomingDistinct : ([s2Step374ExitGRow,s2Step374ExitFRow,s2Step374ExitFvRow,s2Step374ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step374ExitF_Incoming : rowsOwned s2Step374ExitFBefore [s2Step374ExitFRow,s2Step374ExitFvRow,s2Step374ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step374ExitGRow,s2Step374ExitFRow,s2Step374ExitFvRow,s2Step374ExitGvRow] 1 s2Step374ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step374ExitFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step374ExitBank_outgoingOwned : rowsOwned s2Step374ExitGvAfter [s2Step374ExitGOut,s2Step374ExitFOut,s2Step374ExitFvOut,s2Step374ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step374ExitGvAfter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step374ExitF_Outgoing : rowsOwned s2Step374ExitGvAfter [s2Step374ExitFOut,s2Step374ExitFvOut,s2Step374ExitGvOut] :=
  hmrRows_owned_drop s2Step374ExitGvAfter [s2Step374ExitGOut,s2Step374ExitFOut,s2Step374ExitFvOut,s2Step374ExitGvOut] 1 s2Step374ExitBank_outgoingOwned

private theorem s2Step374ExitF_distinct : (s2Step374ExitFRow.sign::s2Step374ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step374ExitF_owned : (s2Step374ExitFRow.sign::s2Step374ExitFRow.payload).toFinset⊆s2Step374ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step374ExitFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step374ExitF_retired : s2Step374ExitFBefore.retireSet s2Step374ExitFExtra.toFinset=s2Step374ExitFAfter := by
  unfold Arena.retireSet s2Step374ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step374ExitFBefore,s2Step374ExitGAfter,s2Step374ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step374ExitF_checked : planRowResizeLog s2Step374ExitFBefore s2Step374ExitFRow 85 []=
    some (s2Step374ExitFAfter,s2Step374ExitFOut,shrinkRow 768 s2Step374ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step374ExitFBefore s2Step374ExitFRow 85 s2Step374ExitF_distinct s2Step374ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step374ExitFRow.payload.take 85) s2Step374ExitFRow.sign=s2Step374ExitFOut := by decide +kernel
  have hi : s2Step374ExitFRow.payload.drop 85=s2Step374ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step374ExitF_retired] at result
  exact result

private def s2Step374ExitFvAfter : Arena := s2Step374ExitFAfter

private def s2Step374ExitFvBefore : Arena := s2Step374ExitFAfter

private theorem s2Step374ExitFv_Incoming : rowsOwned s2Step374ExitFvBefore [s2Step374ExitFvRow,s2Step374ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step374ExitGRow,s2Step374ExitFRow,s2Step374ExitFvRow,s2Step374ExitGvRow] 2 s2Step374ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step374ExitFvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step374ExitFv_Outgoing : rowsOwned s2Step374ExitGvAfter [s2Step374ExitFvOut,s2Step374ExitGvOut] :=
  hmrRows_owned_drop s2Step374ExitGvAfter [s2Step374ExitGOut,s2Step374ExitFOut,s2Step374ExitFvOut,s2Step374ExitGvOut] 2 s2Step374ExitBank_outgoingOwned

private theorem s2Step374ExitFv_distinct : (s2Step374ExitFvRow.sign::s2Step374ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step374ExitFv_owned : (s2Step374ExitFvRow.sign::s2Step374ExitFvRow.payload).toFinset⊆s2Step374ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step374ExitFvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step374ExitFv_reserved : s2Step374ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step374ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step374ExitFv_checked : planRowResizeLog s2Step374ExitFvBefore s2Step374ExitFvRow 204 []=
    some (s2Step374ExitFvAfter,s2Step374ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step374ExitFvBefore s2Step374ExitFvAfter s2Step374ExitFvRow 204 []
    s2Step374ExitFv_distinct s2Step374ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step374ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step374ExitFvRow.payload++[]) s2Step374ExitFvRow.sign=s2Step374ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step374ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private theorem s2Step374ExitG_Incoming : rowsOwned s2Step374ExitGBefore [s2Step374ExitGRow,s2Step374ExitFRow,s2Step374ExitFvRow,s2Step374ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step374ExitGRow,s2Step374ExitFRow,s2Step374ExitFvRow,s2Step374ExitGvRow] 0 s2Step374ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step374ExitGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step374ExitG_Outgoing : rowsOwned s2Step374ExitGvAfter [s2Step374ExitGOut,s2Step374ExitFOut,s2Step374ExitFvOut,s2Step374ExitGvOut] :=
  hmrRows_owned_drop s2Step374ExitGvAfter [s2Step374ExitGOut,s2Step374ExitFOut,s2Step374ExitFvOut,s2Step374ExitGvOut] 0 s2Step374ExitBank_outgoingOwned

private theorem s2Step374ExitG_distinct : (s2Step374ExitGRow.sign::s2Step374ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step374ExitG_owned : (s2Step374ExitGRow.sign::s2Step374ExitGRow.payload).toFinset⊆s2Step374ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step374ExitGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step374ExitG_retired : s2Step374ExitGBefore.retireSet s2Step374ExitGExtra.toFinset=s2Step374ExitGAfter := by
  unfold Arena.retireSet s2Step374ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step374ExitGBefore,s2Step374ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step374ExitG_checked : planRowResizeLog s2Step374ExitGBefore s2Step374ExitGRow 84 []=
    some (s2Step374ExitGAfter,s2Step374ExitGOut,shrinkRow 769 s2Step374ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step374ExitGBefore s2Step374ExitGRow 84 s2Step374ExitG_distinct s2Step374ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step374ExitGRow.payload.take 84) s2Step374ExitGRow.sign=s2Step374ExitGOut := by decide +kernel
  have hi : s2Step374ExitGRow.payload.drop 84=s2Step374ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step374ExitG_retired] at result
  exact result

private def s2Step374ExitGvBefore : Arena := s2Step374ExitFAfter

private theorem s2Step374ExitGv_Incoming : rowsOwned s2Step374ExitGvBefore [s2Step374ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step374ExitGRow,s2Step374ExitFRow,s2Step374ExitFvRow,s2Step374ExitGvRow] 3 s2Step374ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step374ExitGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step374ExitGv_Outgoing : rowsOwned s2Step374ExitGvAfter [s2Step374ExitGvOut] :=
  hmrRows_owned_drop s2Step374ExitGvAfter [s2Step374ExitGOut,s2Step374ExitFOut,s2Step374ExitFvOut,s2Step374ExitGvOut] 3 s2Step374ExitBank_outgoingOwned

private theorem s2Step374ExitGv_distinct : (s2Step374ExitGvRow.sign::s2Step374ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step374ExitGv_owned : (s2Step374ExitGvRow.sign::s2Step374ExitGvRow.payload).toFinset⊆s2Step374ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step374ExitGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step374ExitGv_retired : s2Step374ExitGvBefore.retireSet s2Step374ExitGvExtra.toFinset=s2Step374ExitGvAfter := by
  unfold Arena.retireSet s2Step374ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step374ExitGvBefore,s2Step374ExitFAfter,s2Step374ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step374ExitGv_checked : planRowResizeLog s2Step374ExitGvBefore s2Step374ExitGvRow 203 []=
    some (s2Step374ExitGvAfter,s2Step374ExitGvOut,shrinkRow 771 s2Step374ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step374ExitGvBefore s2Step374ExitGvRow 203 s2Step374ExitGv_distinct s2Step374ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step374ExitGvRow.payload.take 203) s2Step374ExitGvRow.sign=s2Step374ExitGvOut := by decide +kernel
  have hi : s2Step374ExitGvRow.payload.drop 203=s2Step374ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step374ExitGv_retired] at result
  exact result

private theorem s2Step374ExitBank_rows : planWindowRowsLog s2Step374ExitGBefore [(s2Step374ExitGRow,84),(s2Step374ExitFRow,85),(s2Step374ExitFvRow,204),(s2Step374ExitGvRow,203)] [[],[],[],[]]=
    some (s2Step374ExitGvAfter,[s2Step374ExitGOut,s2Step374ExitFOut,s2Step374ExitFvOut,s2Step374ExitGvOut],(shrinkRow 769 s2Step374ExitGExtra ++ (shrinkRow 768 s2Step374ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step374ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step374ExitGvAfter [] []=some (s2Step374ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step374ExitGvBefore s2Step374ExitGvAfter s2Step374ExitGvAfter
    s2Step374ExitGvRow s2Step374ExitGvOut 203 [] [] [] []
    (shrinkRow 771 s2Step374ExitGvExtra) ([]) s2Step374ExitGv_Incoming s2Step374ExitGv_checked h4 s2Step374ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step374ExitFvBefore s2Step374ExitFvAfter s2Step374ExitGvAfter
    s2Step374ExitFvRow s2Step374ExitFvOut 204 [] [(s2Step374ExitGvRow,203)] [[]] [s2Step374ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step374ExitGvExtra ++ [])) s2Step374ExitFv_Incoming s2Step374ExitFv_checked h3 s2Step374ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step374ExitFBefore s2Step374ExitFAfter s2Step374ExitGvAfter
    s2Step374ExitFRow s2Step374ExitFOut 85 [] [(s2Step374ExitFvRow,204),(s2Step374ExitGvRow,203)] [[],[]] [s2Step374ExitFvOut,s2Step374ExitGvOut]
    (shrinkRow 768 s2Step374ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step374ExitGvExtra ++ []))) s2Step374ExitF_Incoming s2Step374ExitF_checked h2 s2Step374ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step374ExitGBefore s2Step374ExitGAfter s2Step374ExitGvAfter
    s2Step374ExitGRow s2Step374ExitGOut 84 [] [(s2Step374ExitFRow,85),(s2Step374ExitFvRow,204),(s2Step374ExitGvRow,203)] [[],[],[]] [s2Step374ExitFOut,s2Step374ExitFvOut,s2Step374ExitGvOut]
    (shrinkRow 769 s2Step374ExitGExtra) ((shrinkRow 768 s2Step374ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step374ExitGvExtra ++ [])))) s2Step374ExitG_Incoming s2Step374ExitG_checked h1 s2Step374ExitG_Outgoing
  exact h0

private theorem s2Step374ExitBank_checked : compileHmrBankResizeLog .exit s2Step374ExitGBefore ⟨s2Step374ExitFRow,s2Step374ExitGRow,s2Step374ExitFvRow,s2Step374ExitGvRow⟩ ⟨85,84,204,203⟩ [[],[],[],[]]=
    some (s2Step374ExitGvAfter,⟨s2Step374ExitFOut,s2Step374ExitGOut,s2Step374ExitFvOut,s2Step374ExitGvOut⟩,(shrinkRow 769 s2Step374ExitGExtra ++ (shrinkRow 768 s2Step374ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step374ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step374ExitBank_rows]
  rfl

private theorem s2Step374Add0_apart : Disjoint s2Step374Add0Arena.live s2Step374Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step374Add0Arena (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step374Add0_card : s2Step374Add0Arena.live.card=910 := by
  decide +kernel

private theorem s2Step374Add0_borrowed : s2Step374Add0Arena.checkBorrow (hmrHybridCount s2Step374Add0Arena s2Step374Add0B.length) s2Step374Add0Work=some s2Step374Add0During := by
  have len : s2Step374Add0Work.length=hmrHybridCount s2Step374Add0Arena s2Step374Add0B.length := by
    rw [hmrHybridCount,s2Step374Add0_card]
    decide +kernel
  have nd : s2Step374Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step374Add0Arena s2Step374Add0During s2Step374Add0Work.toFinset s2Step374Add0_bounded s2Step374Add0_apart rfl

private theorem s2Step374Add0_distinct : (785::793::802::(s2Step374Add0A++s2Step374Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step374Add0_owned : (785::793::802::(s2Step374Add0A++s2Step374Add0B)).toFinset⊆s2Step374Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step374Add0Arena (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step374Add0_checked : compileHmrHybridCinLog s2Step374Add0Arena 793 785 802 s2Step374Add0A s2Step374Add0B s2Step374Add0Work=some s2Step374Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step374Add0Arena s2Step374Add0During 793 785 802 s2Step374Add0A s2Step374Add0B s2Step374Add0Work
    (by decide +kernel) (by decide +kernel) s2Step374Add0_distinct
    (fun q hq => s2Step374Add0_owned (List.mem_toFinset.mpr hq)) s2Step374Add0_borrowed

private theorem s2Step374Add1_apart : Disjoint s2Step374Add1Arena.live s2Step374Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step374Add1Arena (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step374Add1_card : s2Step374Add1Arena.live.card=910 := by
  decide +kernel

private theorem s2Step374Add1_borrowed : s2Step374Add1Arena.checkBorrow (hmrHybridCount s2Step374Add1Arena s2Step374Add1B.length) s2Step374Add1Work=some s2Step374Add1During := by
  have len : s2Step374Add1Work.length=hmrHybridCount s2Step374Add1Arena s2Step374Add1B.length := by
    rw [hmrHybridCount,s2Step374Add1_card]
    decide +kernel
  have nd : s2Step374Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step374Add1Arena s2Step374Add1During s2Step374Add1Work.toFinset s2Step374Add1_bounded s2Step374Add1_apart rfl

private theorem s2Step374Add1_distinct : (785::793::802::(s2Step374Add1A++s2Step374Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step374Add1_owned : (785::793::802::(s2Step374Add1A++s2Step374Add1B)).toFinset⊆s2Step374Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step374Add1Arena (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step374Add1_checked : compileHmrHybridCinLog s2Step374Add1Arena 793 785 802 s2Step374Add1A s2Step374Add1B s2Step374Add1Work=some s2Step374Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step374Add1Arena s2Step374Add1During 793 785 802 s2Step374Add1A s2Step374Add1B s2Step374Add1Work
    (by decide +kernel) (by decide +kernel) s2Step374Add1_distinct
    (fun q hq => s2Step374Add1_owned (List.mem_toFinset.mpr hq)) s2Step374Add1_borrowed

private theorem s2Step374F4_apart : Disjoint (s2Step374Add0A++s2Step374Add0B).toFinset (s2Step374Add1A++s2Step374Add1B).toFinset := by
  have nd : ((s2Step374Add0A++s2Step374Add0B)++(s2Step374Add1A++s2Step374Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step374F4_carry : s2Step374F4FlagArena.checkBorrow 1 [802]=some s2Step374Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step374F4FlagArena,s2Step374HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step374F4FlagArena,s2Step374HeadFvAfter,s2Step374Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step374F4_distinct : (796::793::785::802::((s2Step374Add0A++s2Step374Add1A)++(s2Step374Add0B++s2Step374Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step374F4_flag : s2Step374HeadFvAfter.checkBorrow 1 [785]=some s2Step374F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step374HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step374F4_owned : (796::793::((s2Step374Add0A++s2Step374Add1A)++(s2Step374Add0B++s2Step374Add1B))).toFinset⊆s2Step374HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step374HeadFvAfter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step374F4_checked : compileHmrHybridF4Log s2Step374HeadFvAfter 796 793 s2Step374Add0A s2Step374Add0B s2Step374Add1A s2Step374Add1B [785] [802] s2Step374Add0Work s2Step374Add1Work=some s2Step374F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step374HeadFvAfter s2Step374F4FlagArena s2Step374Add0Arena s2Step374Add0During s2Step374Add1During 796 793
    s2Step374Add0A s2Step374Add0B s2Step374Add1A s2Step374Add1B [785] [802] s2Step374Add0Work s2Step374Add1Work
    (fun q hq => s2Step374F4_owned (List.mem_toFinset.mpr hq)) s2Step374F4_flag s2Step374F4_carry
    s2Step374F4_distinct s2Step374F4_apart s2Step374Add0_checked s2Step374Add1_checked

private theorem s2Step374Front_branch : s2Step374FrontSigmaArena.checkBorrow 1 [793]=some s2Step374HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step374FrontSigmaArena,s2Step374EntryGvAfter,s2Step374EntryGAfter,arenaWires]
  · ext q
    simp only [s2Step374FrontSigmaArena,s2Step374EntryGvAfter,s2Step374EntryGAfter,s2Step374HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step374Front_entry : HmrFrontEntryValid s2Step374EntryFBefore s2Step374FrontBank 85 203 ⟨85,84,204,203⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step374FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step374EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step374EntryFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<793) ∨ (794≤q ∧ q<796) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step374FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step374Front_sigma : s2Step374EntryGvAfter.checkBorrow 1 [796]=some s2Step374FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step374EntryGvAfter,s2Step374EntryGAfter,arenaWires]
  · rfl

private def s2Step374HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<797) ∨ (798≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step374HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step374HeadFBefore : Arena := s2Step374HeadGAfter

private def s2Step374HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596],768⟩

private def s2Step374HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826],770⟩

private def s2Step374HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 825],769⟩

private def s2Step374HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811],771⟩

private theorem s2Step374HeadBank_incomingDistinct : ([s2Step374HeadGRow,s2Step374HeadFRow,s2Step374HeadGvRow,s2Step374HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step374HeadF_Incoming : rowsOwned s2Step374HeadFBefore [s2Step374HeadFRow,s2Step374HeadGvRow,s2Step374HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step374HeadGRow,s2Step374HeadFRow,s2Step374HeadGvRow,s2Step374HeadFvRow] 1 s2Step374HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step374HeadFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step374HeadBank_outgoingOwned : rowsOwned s2Step374HeadFvAfter [s2Step374HeadGOut,s2Step374HeadFOut,s2Step374HeadGvOut,s2Step374HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step374HeadFvAfter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step374HeadF_Outgoing : rowsOwned s2Step374HeadFvAfter [s2Step374HeadFOut,s2Step374HeadGvOut,s2Step374HeadFvOut] :=
  hmrRows_owned_drop s2Step374HeadFvAfter [s2Step374HeadGOut,s2Step374HeadFOut,s2Step374HeadGvOut,s2Step374HeadFvOut] 1 s2Step374HeadBank_outgoingOwned

private theorem s2Step374HeadF_distinct : (s2Step374HeadFRow.sign::s2Step374HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step374HeadF_owned : (s2Step374HeadFRow.sign::s2Step374HeadFRow.payload).toFinset⊆s2Step374HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step374HeadFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step374HeadF_reserved : s2Step374HeadFBefore.reserve s2Step374HeadFFresh.toFinset=some s2Step374HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step374HeadFFresh,arenaWires]
  · norm_num [s2Step374HeadFBefore,s2Step374HeadGAfter,s2Step374HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step374HeadFAfter,s2Step374HeadFBefore,s2Step374HeadGAfter,s2Step374HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step374HeadF_checked : planRowResizeLog s2Step374HeadFBefore s2Step374HeadFRow 86 s2Step374HeadFFresh=
    some (s2Step374HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 799],768⟩,growRow 768 s2Step374HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step374HeadFBefore s2Step374HeadFAfter s2Step374HeadFRow 86 s2Step374HeadFFresh
    s2Step374HeadF_distinct s2Step374HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step374HeadF_reserved
  have rowEq : WindowRow.mk (s2Step374HeadFRow.payload++s2Step374HeadFFresh) s2Step374HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 799],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step374HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step374HeadFvBefore : Arena := s2Step374HeadGvAfter

private theorem s2Step374HeadFv_Incoming : rowsOwned s2Step374HeadFvBefore [s2Step374HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step374HeadGRow,s2Step374HeadFRow,s2Step374HeadGvRow,s2Step374HeadFvRow] 3 s2Step374HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step374HeadFvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step374HeadFv_Outgoing : rowsOwned s2Step374HeadFvAfter [s2Step374HeadFvOut] :=
  hmrRows_owned_drop s2Step374HeadFvAfter [s2Step374HeadGOut,s2Step374HeadFOut,s2Step374HeadGvOut,s2Step374HeadFvOut] 3 s2Step374HeadBank_outgoingOwned

private theorem s2Step374HeadFv_distinct : (s2Step374HeadFvRow.sign::s2Step374HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step374HeadFv_owned : (s2Step374HeadFvRow.sign::s2Step374HeadFvRow.payload).toFinset⊆s2Step374HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step374HeadFvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step374HeadFv_reserved : s2Step374HeadFvBefore.reserve s2Step374HeadFvFresh.toFinset=some s2Step374HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step374HeadFvFresh,arenaWires]
  · norm_num [s2Step374HeadFvBefore,s2Step374HeadGvAfter,s2Step374HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step374HeadFvAfter,s2Step374HeadFvBefore,s2Step374HeadGvAfter,s2Step374HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step374HeadFv_checked : planRowResizeLog s2Step374HeadFvBefore s2Step374HeadFvRow 204 s2Step374HeadFvFresh=
    some (s2Step374HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826, 789],770⟩,growRow 770 s2Step374HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step374HeadFvBefore s2Step374HeadFvAfter s2Step374HeadFvRow 204 s2Step374HeadFvFresh
    s2Step374HeadFv_distinct s2Step374HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step374HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step374HeadFvRow.payload++s2Step374HeadFvFresh) s2Step374HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826, 789],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step374HeadG_Incoming : rowsOwned s2Step374HeadGBefore [s2Step374HeadGRow,s2Step374HeadFRow,s2Step374HeadGvRow,s2Step374HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step374HeadGRow,s2Step374HeadFRow,s2Step374HeadGvRow,s2Step374HeadFvRow] 0 s2Step374HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step374HeadGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step374HeadG_Outgoing : rowsOwned s2Step374HeadFvAfter [s2Step374HeadGOut,s2Step374HeadFOut,s2Step374HeadGvOut,s2Step374HeadFvOut] :=
  hmrRows_owned_drop s2Step374HeadFvAfter [s2Step374HeadGOut,s2Step374HeadFOut,s2Step374HeadGvOut,s2Step374HeadFvOut] 0 s2Step374HeadBank_outgoingOwned

private theorem s2Step374HeadG_distinct : (s2Step374HeadGRow.sign::s2Step374HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step374HeadG_owned : (s2Step374HeadGRow.sign::s2Step374HeadGRow.payload).toFinset⊆s2Step374HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step374HeadGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step374HeadG_reserved : s2Step374HeadGBefore.reserve s2Step374HeadGFresh.toFinset=some s2Step374HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step374HeadGFresh,arenaWires]
  · norm_num [s2Step374HeadGBefore,s2Step374HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step374HeadGAfter,s2Step374HeadGBefore,s2Step374HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step374HeadG_checked : planRowResizeLog s2Step374HeadGBefore s2Step374HeadGRow 86 s2Step374HeadGFresh=
    some (s2Step374HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 825, 800],769⟩,growRow 769 s2Step374HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step374HeadGBefore s2Step374HeadGAfter s2Step374HeadGRow 86 s2Step374HeadGFresh
    s2Step374HeadG_distinct s2Step374HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step374HeadG_reserved
  have rowEq : WindowRow.mk (s2Step374HeadGRow.payload++s2Step374HeadGFresh) s2Step374HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 825, 800],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step374HeadGvBefore : Arena := s2Step374HeadFAfter

private theorem s2Step374HeadGv_Incoming : rowsOwned s2Step374HeadGvBefore [s2Step374HeadGvRow,s2Step374HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step374HeadGRow,s2Step374HeadFRow,s2Step374HeadGvRow,s2Step374HeadFvRow] 2 s2Step374HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step374HeadGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<797) ∨ (798≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step374HeadGv_Outgoing : rowsOwned s2Step374HeadFvAfter [s2Step374HeadGvOut,s2Step374HeadFvOut] :=
  hmrRows_owned_drop s2Step374HeadFvAfter [s2Step374HeadGOut,s2Step374HeadFOut,s2Step374HeadGvOut,s2Step374HeadFvOut] 2 s2Step374HeadBank_outgoingOwned

private theorem s2Step374HeadGv_distinct : (s2Step374HeadGvRow.sign::s2Step374HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step374HeadGv_owned : (s2Step374HeadGvRow.sign::s2Step374HeadGvRow.payload).toFinset⊆s2Step374HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step374HeadGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<797) ∨ (798≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step374HeadGv_reserved : s2Step374HeadGvBefore.reserve s2Step374HeadGvFresh.toFinset=some s2Step374HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step374HeadGvFresh,arenaWires]
  · norm_num [s2Step374HeadGvBefore,s2Step374HeadFAfter,s2Step374HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step374HeadGvAfter,s2Step374HeadGvBefore,s2Step374HeadFAfter,s2Step374HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step374HeadGv_checked : planRowResizeLog s2Step374HeadGvBefore s2Step374HeadGvRow 204 s2Step374HeadGvFresh=
    some (s2Step374HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811, 797],771⟩,growRow 771 s2Step374HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step374HeadGvBefore s2Step374HeadGvAfter s2Step374HeadGvRow 204 s2Step374HeadGvFresh
    s2Step374HeadGv_distinct s2Step374HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step374HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step374HeadGvRow.payload++s2Step374HeadGvFresh) s2Step374HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 811, 797],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step374HeadBank_rows : planWindowRowsLog s2Step374HeadGBefore [(s2Step374HeadGRow,86),(s2Step374HeadFRow,86),(s2Step374HeadGvRow,204),(s2Step374HeadFvRow,204)] [s2Step374HeadGFresh,s2Step374HeadFFresh,s2Step374HeadGvFresh,s2Step374HeadFvFresh]=
    some (s2Step374HeadFvAfter,[s2Step374HeadGOut,s2Step374HeadFOut,s2Step374HeadGvOut,s2Step374HeadFvOut],(growRow 769 s2Step374HeadGFresh ++ (growRow 768 s2Step374HeadFFresh ++ (growRow 771 s2Step374HeadGvFresh ++ (growRow 770 s2Step374HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step374HeadFvAfter [] []=some (s2Step374HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step374HeadFvBefore s2Step374HeadFvAfter s2Step374HeadFvAfter
    s2Step374HeadFvRow s2Step374HeadFvOut 204 s2Step374HeadFvFresh [] [] []
    (growRow 770 s2Step374HeadFvFresh) ([]) s2Step374HeadFv_Incoming s2Step374HeadFv_checked h4 s2Step374HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step374HeadGvBefore s2Step374HeadGvAfter s2Step374HeadFvAfter
    s2Step374HeadGvRow s2Step374HeadGvOut 204 s2Step374HeadGvFresh [(s2Step374HeadFvRow,204)] [s2Step374HeadFvFresh] [s2Step374HeadFvOut]
    (growRow 771 s2Step374HeadGvFresh) ((growRow 770 s2Step374HeadFvFresh ++ [])) s2Step374HeadGv_Incoming s2Step374HeadGv_checked h3 s2Step374HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step374HeadFBefore s2Step374HeadFAfter s2Step374HeadFvAfter
    s2Step374HeadFRow s2Step374HeadFOut 86 s2Step374HeadFFresh [(s2Step374HeadGvRow,204),(s2Step374HeadFvRow,204)] [s2Step374HeadGvFresh,s2Step374HeadFvFresh] [s2Step374HeadGvOut,s2Step374HeadFvOut]
    (growRow 768 s2Step374HeadFFresh) ((growRow 771 s2Step374HeadGvFresh ++ (growRow 770 s2Step374HeadFvFresh ++ []))) s2Step374HeadF_Incoming s2Step374HeadF_checked h2 s2Step374HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step374HeadGBefore s2Step374HeadGAfter s2Step374HeadFvAfter
    s2Step374HeadGRow s2Step374HeadGOut 86 s2Step374HeadGFresh [(s2Step374HeadFRow,86),(s2Step374HeadGvRow,204),(s2Step374HeadFvRow,204)] [s2Step374HeadFFresh,s2Step374HeadGvFresh,s2Step374HeadFvFresh] [s2Step374HeadFOut,s2Step374HeadGvOut,s2Step374HeadFvOut]
    (growRow 769 s2Step374HeadGFresh) ((growRow 768 s2Step374HeadFFresh ++ (growRow 771 s2Step374HeadGvFresh ++ (growRow 770 s2Step374HeadFvFresh ++ [])))) s2Step374HeadG_Incoming s2Step374HeadG_checked h1 s2Step374HeadG_Outgoing
  exact h0

private theorem s2Step374HeadBank_checked : compileHmrBankResizeLog .headroom s2Step374HeadGBefore ⟨s2Step374HeadFRow,s2Step374HeadGRow,s2Step374HeadFvRow,s2Step374HeadGvRow⟩ ⟨86,86,204,204⟩ [s2Step374HeadGFresh,s2Step374HeadFFresh,s2Step374HeadGvFresh,s2Step374HeadFvFresh]=
    some (s2Step374HeadFvAfter,⟨s2Step374HeadFOut,s2Step374HeadGOut,s2Step374HeadFvOut,s2Step374HeadGvOut⟩,(growRow 769 s2Step374HeadGFresh ++ (growRow 768 s2Step374HeadFFresh ++ (growRow 771 s2Step374HeadGvFresh ++ (growRow 770 s2Step374HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step374HeadBank_rows]
  rfl

private theorem s2Step374Front_checked : compileHmrSourceFrontLog s2Step374EntryFBefore s2Step374FrontBank 85 203 ⟨85,84,204,203⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step374FrontLog=some s2Step374FrontPlan := by
  have pairEq : s2Step374FrontPair=⟨s2Step374HeadFRow,s2Step374HeadGRow,s2Step374HeadFvRow,s2Step374HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step374FrontHead=⟨s2Step374ExitFRow,s2Step374ExitGRow,s2Step374ExitFvRow,s2Step374ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step374Add0A=s2Step374FrontHead.f.wires := by decide +kernel
  have gEq : s2Step374Add0B=s2Step374FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step374Add1A=s2Step374FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step374Add1B=s2Step374FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step374EntryFBefore s2Step374FrontBank 85 203 ⟨85,84,204,203⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step374FrontLog s2Step374FrontPlan
  · exact s2Step374Front_entry
  · exact s2Step374EntryBank_checked
  · exact s2Step374Front_sigma
  · rfl
  · exact s2Step374Front_branch
  · rfl
  · simpa only [s2Step374FrontPlan,pairEq] using s2Step374HeadBank_checked
  · simpa only [s2Step374FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step374F4_checked
  · exact s2Step374Counter_checked
  · rfl
  · simpa only [s2Step374FrontPlan,headEq] using s2Step374ExitBank_checked

private theorem s2Step374Complete_explicit_checked : compileHmrEarlyStepLog s2Step374EntryFBefore s2Step374FrontBank 85 203 ⟨85,84,204,203⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step374CompleteLog=some s2Step374CompletePlan := by
  let Q := s2Step374EarlyControlPlan
  have hq := s2Step374EarlyControl_plan_checked
  have fv1 : s2Step374CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step374CompleteOut.fv.payload[2]?.getD s2Step374CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step374CompleteOut.fv.payload[3]?.getD s2Step374CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step374CompleteOut.fv.payload[4]?.getD s2Step374CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step374EntryFBefore s2Step374EarlyControlArena s2Step374FrontBank 85 203 ⟨85,84,204,203⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step374CompleteLog s2Step374FrontPlan Q
    s2Step374Front_checked s2Step374Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step374Complete_owned s2Step374Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step374EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 796 s2Step374CompleteOut.fv.second (s2Step374CompleteOut.fv.payload[2]?.getD s2Step374CompleteOut.fv.sign) (s2Step374CompleteOut.fv.payload[3]?.getD s2Step374CompleteOut.fv.sign) (s2Step374CompleteOut.fv.payload[4]?.getD s2Step374CompleteOut.fv.sign) 793 60 s2Step374EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep374Arena : Arena := s2Step374EntryFBefore
def s2PrivateStep374Bank : WindowBank := s2Step374FrontBank
def s2PrivateStep374Spec : HmrSourceWalkStepLog := ⟨85,203,⟨85,84,204,203⟩,60,.early s2Step374CompleteLog⟩
def s2PrivateStep374Plan : HmrSourceStepPlan := .early s2Step374CompletePlan
theorem s2PrivateStep374_source : s2PrivateStep374Spec=s2ObservedLogs368[6] := rfl
theorem s2PrivateStep374_checked : compileHmrSourceStepLog s2PrivateStep374Arena s2PrivateStep374Bank
    s2PrivateStep374Spec.fgWidth s2PrivateStep374Spec.vWidth s2PrivateStep374Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]
    6 498 374 s2PrivateStep374Spec.need none s2PrivateStep374Spec.log=some s2PrivateStep374Plan := by
  change compileHmrSourceStepLog s2Step374EntryFBefore s2Step374FrontBank 85 203 ⟨85,84,204,203⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 6 498 374 60 none (.early s2Step374CompleteLog)=some (.early s2Step374CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 374<498)]
  rw [s2Step374Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
