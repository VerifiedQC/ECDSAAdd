import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep368
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

private def s2Step370CompleteMoves : List (Wire × Wire) := []

private def s2Step370EarlyControlLog : HmrEarlyControlLog := ⟨[796, 797, 802, 826, 800],[789],[827],[844, 907, 913, 914, 915, 916],[]⟩

private def s2Step370FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [802], [], [805]],[[826], [797], [796], [783]],[[], [], [], []]⟩,[819],[785],[800],[789],[827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[800, 789, 827, 844]⟩

private def s2Step370CompleteLog : HmrEarlyStepLog := ⟨s2Step370FrontLog,s2Step370CompleteMoves,s2Step370EarlyControlLog⟩

private def s2Step370ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598],768⟩

private def s2Step370ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783],770⟩

private def s2Step370ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85],769⟩

private def s2Step370ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805],771⟩

private def s2Step370FrontOut : WindowBank := ⟨s2Step370ExitFOut,s2Step370ExitGOut,s2Step370ExitFvOut,s2Step370ExitGvOut⟩

private def s2Step370CompleteOut : WindowBank := s2Step370FrontOut.repacked s2Step370CompleteMoves

private def s2Step370EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step370EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step370EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step370EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step370EarlyControlPositiveArena,[789],s2Step370EarlyControlEqualityArena,[827],⟨⟨819,false⟩,[⟨⟨789,false⟩,827⟩]⟩⟩

private def s2Step370EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<917)),Finset.filter_subset _ _⟩

private def s2Step370EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<917)),Finset.filter_subset _ _⟩

private def s2Step370EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step370EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step370EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step370EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step370EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,796⟩,⟨⟨774,false⟩,797⟩,⟨⟨775,false⟩,802⟩,⟨⟨776,false⟩,826⟩,⟨⟨777,false⟩,800⟩]⟩

private def s2Step370EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step370EarlyControlZeroArena,s2Step370EarlyControlZeroPlan,s2Step370EarlyControlClassPlan,s2Step370EarlyControlFlagArena,s2Step370EarlyControlFittedArena,s2Step370EarlyControlHistoryArena,s2Step370EarlyControlSigmaArena,s2Step370EarlyControlOutputArena,s2Step370EarlyControlLog⟩

private def s2Step370CounterWork : List Wire := [800, 789, 827, 844]

private theorem s2Step370Counter_bounded : s2Step370CounterWork.toFinset⊆arenaWires := by norm_num [s2Step370CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step370HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step370CounterDuring : Arena := ⟨s2Step370HeadFvAfter.live∪s2Step370CounterWork.toFinset,Finset.union_subset s2Step370HeadFvAfter.bounded s2Step370Counter_bounded⟩

private def s2Step370EntryFFresh : List Wire := []

private def s2Step370EntryFvFresh : List Wire := []

private def s2Step370EntryGFresh : List Wire := [802]

private def s2Step370EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step370EntryGvFresh : List Wire := [805]

private def s2Step370ExitFExtra : List Wire := [797]

private def s2Step370ExitGExtra : List Wire := [802, 826]

private def s2Step370ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step370ExitGvExtra : List Wire := [796]

private def s2Step370Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step370Add0Work : List Wire := [827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step370Add0_bounded : s2Step370Add0Work.toFinset⊆arenaWires := by
  have h : s2Step370Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step370Add0During : Arena := ⟨s2Step370Add0Arena.live∪s2Step370Add0Work.toFinset,Finset.union_subset s2Step370Add0Arena.bounded s2Step370Add0_bounded⟩

private def s2Step370Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step370Add1Work : List Wire := [827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step370Add1_bounded : s2Step370Add1Work.toFinset⊆arenaWires := by
  have h : s2Step370Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step370Add1During : Arena := ⟨s2Step370Add1Arena.live∪s2Step370Add1Work.toFinset,Finset.union_subset s2Step370Add1Arena.bounded s2Step370Add1_bounded⟩

private def s2Step370F4FlagArena : Arena := ⟨s2Step370HeadFvAfter.live∪{800},Finset.union_subset s2Step370HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step370F4Plan : HmrHybridF4Plan := ⟨s2Step370F4FlagArena,[800],s2Step370Add0Arena,[789],s2Step370Add0During,s2Step370Add0Work,s2Step370Add1During,s2Step370Add1Work⟩

private def s2Step370HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 797],768⟩

private def s2Step370HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783],770⟩

private def s2Step370HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 802, 826],769⟩

private def s2Step370HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 796],771⟩

private def s2Step370FrontHead : WindowBank := ⟨s2Step370HeadFOut,s2Step370HeadGOut,s2Step370HeadFvOut,s2Step370HeadGvOut⟩

private def s2Step370EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598],768⟩

private def s2Step370EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831],770⟩

private def s2Step370EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 802],769⟩

private def s2Step370EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805],771⟩

private def s2Step370FrontPair : WindowBank := ⟨s2Step370EntryFOut,s2Step370EntryGOut,s2Step370EntryFvOut,s2Step370EntryGvOut⟩

private def s2Step370FrontSigmaArena : Arena := ⟨s2Step370EntryGvAfter.live∪{819},Finset.union_subset s2Step370EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step370HeadFFresh : List Wire := [797]

private def s2Step370HeadFvFresh : List Wire := [783]

private def s2Step370HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step370HeadGFresh : List Wire := [826]

private def s2Step370HeadGvFresh : List Wire := [796]

private def s2Step370FrontPlan : HmrSourceFront := ⟨s2Step370EntryGvAfter,s2Step370FrontPair,(growRow 768 s2Step370EntryFFresh ++ (growRow 769 s2Step370EntryGFresh ++ (growRow 770 s2Step370EntryFvFresh ++ (growRow 771 s2Step370EntryGvFresh ++ [])))),s2Step370FrontSigmaArena,[819],s2Step370HeadGBefore,[785],
  s2Step370HeadFvAfter,s2Step370FrontHead,(growRow 769 s2Step370HeadGFresh ++ (growRow 768 s2Step370HeadFFresh ++ (growRow 771 s2Step370HeadGvFresh ++ (growRow 770 s2Step370HeadFvFresh ++ [])))),s2Step370F4Plan,s2Step370CounterDuring,s2Step370CounterWork,s2Step370ExitGvAfter,s2Step370FrontOut,(shrinkRow 769 s2Step370ExitGExtra ++ (shrinkRow 768 s2Step370ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step370ExitGvExtra ++ []))))⟩

private def s2Step370CompletePlan : HmrEarlyStepPlan := ⟨s2Step370FrontPlan,s2Step370EarlyControlArena,s2Step370EarlyControlPlan,s2Step370CompleteMoves⟩

private theorem s2Step370Complete_apart : List.Disjoint (s2Step370CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [819, 785, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] := by
  have nd : ((s2Step370CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[819, 785, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step370Complete_owned : (s2Step370CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step370EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step370EarlyControlArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step370Complete_repack : s2Step370ExitGvAfter.checkRepack s2Step370CompleteMoves=some s2Step370EarlyControlArena := by rfl

private theorem s2Step370EarlyControl_branchOwned : ([785] : List Wire).toFinset⊆s2Step370EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step370EarlyControlSigmaArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step370EarlyControl_branch : compileHmrBranchRetirement s2Step370EarlyControlSigmaArena 785=some s2Step370EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step370EarlyControl_branchOwned
  · ext q
    simp [s2Step370EarlyControlOutputArena,s2Step370EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step370EarlyControl_classEqualityBorrow : s2Step370EarlyControlPositiveArena.checkBorrow (([819, 789] : List Wire).length-1) s2Step370EarlyControlLog.classWork=some s2Step370EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step370EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step370EarlyControlPositiveArena (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step370EarlyControlEqualityArena,s2Step370EarlyControlPositiveArena,s2Step370EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step370EarlyControl_classEqualityOwned : ([819, 789] : List Wire).toFinset⊆s2Step370EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step370EarlyControlPositiveArena (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step370EarlyControl_classEquality : compileHmrEqualityLog s2Step370EarlyControlPositiveArena [819, 789] 0 s2Step370EarlyControlLog.classWork=some (s2Step370EarlyControlEqualityArena,s2Step370EarlyControlLog.classWork,s2Step370EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step370EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step370EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step370EarlyControl_classOwned : ([777, 800, 819] : List Wire).toFinset⊆s2Step370EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step370EarlyControlZeroArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step370EarlyControl_positiveBorrow : s2Step370EarlyControlZeroArena.checkBorrow (1) s2Step370EarlyControlLog.positiveWork=some s2Step370EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step370EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step370EarlyControlZeroArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step370EarlyControlPositiveArena,s2Step370EarlyControlZeroArena,s2Step370EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step370EarlyControl_class : compileHmrSourceClassLog s2Step370EarlyControlZeroArena false 777 s2Step370EarlyControlZeroPlan.top 0 819 s2Step370EarlyControlLog.positiveWork s2Step370EarlyControlLog.classWork=some s2Step370EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step370EarlyControlClassPlan s2Step370EarlyControlZeroArena false 777 s2Step370EarlyControlZeroPlan.top 0 819
  constructor
  · decide +kernel
  · exact s2Step370EarlyControl_classOwned
  · exact s2Step370EarlyControl_positiveBorrow
  · exact s2Step370EarlyControl_classEquality

private theorem s2Step370EarlyControl_entryRecordOwned : ([785, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step370EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step370EarlyControlArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step370EarlyControl_entrySigmaOwned : ([819, 254] : List Wire).toFinset⊆s2Step370EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step370EarlyControlArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step370EarlyControl_fitBorrow : s2Step370EarlyControlFlagArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step370EarlyControlLog.recordFresh=some s2Step370EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step370EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step370EarlyControlFlagArena (fun q => (0≤q ∧ q<917)) rfl
      decide +kernel
    · ext q
      simp [s2Step370EarlyControlFittedArena,s2Step370EarlyControlFlagArena,s2Step370EarlyControlLog,arenaWires]

private theorem s2Step370EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step370EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step370EarlyControlFlagArena (fun q => (0≤q ∧ q<917)) rfl
  decide +kernel

private theorem s2Step370EarlyControl_fit : compileHmrRecordGrowLog s2Step370EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step370EarlyControlLog.recordFresh=some s2Step370EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step370EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step370EarlyControl_fitBorrow

private theorem s2Step370EarlyControl_flagsBorrow : s2Step370EarlyControlEqualityArena.checkBorrow (6) s2Step370EarlyControlLog.flagWork=some s2Step370EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step370EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step370EarlyControlEqualityArena (fun q => (0≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step370EarlyControlFlagArena,s2Step370EarlyControlEqualityArena,s2Step370EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step370EarlyControl_flagsOwned : ([827, 253, 252, 251] : List Wire).toFinset⊆s2Step370EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step370EarlyControlEqualityArena (fun q => (0≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step370EarlyControl_flags : compileHmrFlagsLog s2Step370EarlyControlClassPlan.equalityArena s2Step370EarlyControlClassPlan.equality.top 253 252 251 s2Step370EarlyControlLog.flagWork=some s2Step370EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step370EarlyControl_flagsOwned⟩
  · exact s2Step370EarlyControl_flagsBorrow

private theorem s2Step370EarlyControl_historyBorrow : s2Step370EarlyControlArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step370EarlyControlLog.recordFresh=some s2Step370EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step370EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step370EarlyControlArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step370EarlyControlHistoryArena,s2Step370EarlyControlArena,s2Step370EarlyControlLog,arenaWires]

private theorem s2Step370EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step370EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step370EarlyControlArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step370EarlyControl_history : compileHmrRecordGrowLog s2Step370EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step370EarlyControlLog.recordFresh=some s2Step370EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step370EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step370EarlyControl_historyBorrow

private theorem s2Step370EarlyControl_sigmaOwned : ([254, 819] : List Wire).toFinset⊆s2Step370EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step370EarlyControlHistoryArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step370EarlyControl_sigmaReleaseOwned : ([819] : List Wire).toFinset⊆s2Step370EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step370EarlyControlHistoryArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step370EarlyControl_sigmaRelease : s2Step370EarlyControlHistoryArena.release {819} (fun _ => false)=some s2Step370EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step370EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step370EarlyControlSigmaArena,s2Step370EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step370EarlyControl_sigma : compileHmrSigmaDropLog s2Step370EarlyControlHistoryArena false 0 0 254 819 []=some s2Step370EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step370EarlyControl_sigmaOwned⟩
  · exact s2Step370EarlyControl_sigmaRelease

private theorem s2Step370EarlyControl_zeroBorrow : s2Step370EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step370EarlyControlLog.zeroWork=some s2Step370EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step370EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step370EarlyControlArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step370EarlyControlZeroArena,s2Step370EarlyControlArena,s2Step370EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step370EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step370EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step370EarlyControlArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step370EarlyControl_zero : compileHmrEqualityLog s2Step370EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step370EarlyControlLog.zeroWork=some (s2Step370EarlyControlZeroArena,s2Step370EarlyControlLog.zeroWork,s2Step370EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step370EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step370EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step370EarlyControl_logged : s2Step370EarlyControlPlan.Logged s2Step370EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 819 254 253 252 251 785 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step370EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step370EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step370EarlyControl_zero
  · exact s2Step370EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step370EarlyControl_flags
  · exact s2Step370EarlyControl_fit
  · exact s2Step370EarlyControl_history
  · exact s2Step370EarlyControl_sigma
  · exact s2Step370EarlyControl_branch

private theorem s2Step370EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step370EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 819 254 253 252 251 785 60 s2Step370EarlyControlLog=some s2Step370EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step370EarlyControlPlan s2Step370EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 819 254 253 252 251 785 60 s2Step370EarlyControl_logged

private def s2Step370EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step370EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598],768⟩

private def s2Step370EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831],770⟩

private def s2Step370EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85],769⟩

private def s2Step370EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903],771⟩

private def s2Step370FrontBank : WindowBank := ⟨s2Step370EntryFRow,s2Step370EntryGRow,s2Step370EntryFvRow,s2Step370EntryGvRow⟩

private def s2Step370Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 797, 768]

private def s2Step370Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 802, 826, 769]

private def s2Step370Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 770]

private def s2Step370Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 796, 771]

private theorem s2Step370Counter_apart : Disjoint s2Step370HeadFvAfter.live s2Step370CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step370HeadFvAfter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step370Counter_borrowed : s2Step370HeadFvAfter.checkBorrow 4 s2Step370CounterWork=some s2Step370CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step370HeadFvAfter s2Step370CounterDuring s2Step370CounterWork.toFinset s2Step370Counter_bounded s2Step370Counter_apart rfl

private theorem s2Step370Counter_owned : (819::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step370HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step370HeadFvAfter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step370Counter_checked : compileHmrCounterStepLog s2Step370HeadFvAfter true 819 [772, 773, 774, 775, 776, 777] s2Step370CounterWork=some s2Step370CounterDuring := by
  have owned : ∀q∈819::[772, 773, 774, 775, 776, 777],q∈s2Step370HeadFvAfter.live := fun q hq => s2Step370Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step370Counter_borrowed

private def s2Step370EntryFAfter : Arena := s2Step370EntryFBefore

private theorem s2Step370EntryBank_incomingDistinct : ([s2Step370EntryFRow,s2Step370EntryGRow,s2Step370EntryFvRow,s2Step370EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step370EntryF_Incoming : rowsOwned s2Step370EntryFBefore [s2Step370EntryFRow,s2Step370EntryGRow,s2Step370EntryFvRow,s2Step370EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step370EntryFRow,s2Step370EntryGRow,s2Step370EntryFvRow,s2Step370EntryGvRow] 0 s2Step370EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step370EntryFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step370EntryBank_outgoingOwned : rowsOwned s2Step370EntryGvAfter [s2Step370EntryFOut,s2Step370EntryGOut,s2Step370EntryFvOut,s2Step370EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step370EntryGvAfter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step370EntryF_Outgoing : rowsOwned s2Step370EntryGvAfter [s2Step370EntryFOut,s2Step370EntryGOut,s2Step370EntryFvOut,s2Step370EntryGvOut] :=
  hmrRows_owned_drop s2Step370EntryGvAfter [s2Step370EntryFOut,s2Step370EntryGOut,s2Step370EntryFvOut,s2Step370EntryGvOut] 0 s2Step370EntryBank_outgoingOwned

private theorem s2Step370EntryF_distinct : (s2Step370EntryFRow.sign::s2Step370EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step370EntryF_owned : (s2Step370EntryFRow.sign::s2Step370EntryFRow.payload).toFinset⊆s2Step370EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step370EntryFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step370EntryF_reserved : s2Step370EntryFBefore.reserve s2Step370EntryFFresh.toFinset=some s2Step370EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step370EntryFFresh,arenaWires]
  · norm_num [s2Step370EntryFBefore,s2Step370EntryFFresh,arenaWires]
  · simp only [s2Step370EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step370EntryF_checked : planRowResizeLog s2Step370EntryFBefore s2Step370EntryFRow 87 s2Step370EntryFFresh=
    some (s2Step370EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598],768⟩,growRow 768 s2Step370EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step370EntryFBefore s2Step370EntryFAfter s2Step370EntryFRow 87 s2Step370EntryFFresh
    s2Step370EntryF_distinct s2Step370EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step370EntryF_reserved
  have rowEq : WindowRow.mk (s2Step370EntryFRow.payload++s2Step370EntryFFresh) s2Step370EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step370EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step370EntryFvAfter : Arena := s2Step370EntryGAfter

private def s2Step370EntryFvBefore : Arena := s2Step370EntryGAfter

private theorem s2Step370EntryFv_Incoming : rowsOwned s2Step370EntryFvBefore [s2Step370EntryFvRow,s2Step370EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step370EntryFRow,s2Step370EntryGRow,s2Step370EntryFvRow,s2Step370EntryGvRow] 2 s2Step370EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step370EntryFvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step370EntryFv_Outgoing : rowsOwned s2Step370EntryGvAfter [s2Step370EntryFvOut,s2Step370EntryGvOut] :=
  hmrRows_owned_drop s2Step370EntryGvAfter [s2Step370EntryFOut,s2Step370EntryGOut,s2Step370EntryFvOut,s2Step370EntryGvOut] 2 s2Step370EntryBank_outgoingOwned

private theorem s2Step370EntryFv_distinct : (s2Step370EntryFvRow.sign::s2Step370EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step370EntryFv_owned : (s2Step370EntryFvRow.sign::s2Step370EntryFvRow.payload).toFinset⊆s2Step370EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step370EntryFvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step370EntryFv_reserved : s2Step370EntryFvBefore.reserve s2Step370EntryFvFresh.toFinset=some s2Step370EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step370EntryFvFresh,arenaWires]
  · norm_num [s2Step370EntryFvBefore,s2Step370EntryGAfter,s2Step370EntryFvFresh,arenaWires]
  · simp only [s2Step370EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step370EntryFv_checked : planRowResizeLog s2Step370EntryFvBefore s2Step370EntryFvRow 201 s2Step370EntryFvFresh=
    some (s2Step370EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831],770⟩,growRow 770 s2Step370EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step370EntryFvBefore s2Step370EntryFvAfter s2Step370EntryFvRow 201 s2Step370EntryFvFresh
    s2Step370EntryFv_distinct s2Step370EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step370EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step370EntryFvRow.payload++s2Step370EntryFvFresh) s2Step370EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step370EntryGBefore : Arena := s2Step370EntryFBefore

private theorem s2Step370EntryG_Incoming : rowsOwned s2Step370EntryGBefore [s2Step370EntryGRow,s2Step370EntryFvRow,s2Step370EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step370EntryFRow,s2Step370EntryGRow,s2Step370EntryFvRow,s2Step370EntryGvRow] 1 s2Step370EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step370EntryGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step370EntryG_Outgoing : rowsOwned s2Step370EntryGvAfter [s2Step370EntryGOut,s2Step370EntryFvOut,s2Step370EntryGvOut] :=
  hmrRows_owned_drop s2Step370EntryGvAfter [s2Step370EntryFOut,s2Step370EntryGOut,s2Step370EntryFvOut,s2Step370EntryGvOut] 1 s2Step370EntryBank_outgoingOwned

private theorem s2Step370EntryG_distinct : (s2Step370EntryGRow.sign::s2Step370EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step370EntryG_owned : (s2Step370EntryGRow.sign::s2Step370EntryGRow.payload).toFinset⊆s2Step370EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step370EntryGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step370EntryG_reserved : s2Step370EntryGBefore.reserve s2Step370EntryGFresh.toFinset=some s2Step370EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step370EntryGFresh,arenaWires]
  · norm_num [s2Step370EntryGBefore,s2Step370EntryFBefore,s2Step370EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step370EntryGAfter,s2Step370EntryGBefore,s2Step370EntryFBefore,s2Step370EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step370EntryG_checked : planRowResizeLog s2Step370EntryGBefore s2Step370EntryGRow 87 s2Step370EntryGFresh=
    some (s2Step370EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 802],769⟩,growRow 769 s2Step370EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step370EntryGBefore s2Step370EntryGAfter s2Step370EntryGRow 87 s2Step370EntryGFresh
    s2Step370EntryG_distinct s2Step370EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step370EntryG_reserved
  have rowEq : WindowRow.mk (s2Step370EntryGRow.payload++s2Step370EntryGFresh) s2Step370EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 802],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step370EntryGvBefore : Arena := s2Step370EntryGAfter

private theorem s2Step370EntryGv_Incoming : rowsOwned s2Step370EntryGvBefore [s2Step370EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step370EntryFRow,s2Step370EntryGRow,s2Step370EntryFvRow,s2Step370EntryGvRow] 3 s2Step370EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step370EntryGvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step370EntryGv_Outgoing : rowsOwned s2Step370EntryGvAfter [s2Step370EntryGvOut] :=
  hmrRows_owned_drop s2Step370EntryGvAfter [s2Step370EntryFOut,s2Step370EntryGOut,s2Step370EntryFvOut,s2Step370EntryGvOut] 3 s2Step370EntryBank_outgoingOwned

private theorem s2Step370EntryGv_distinct : (s2Step370EntryGvRow.sign::s2Step370EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step370EntryGv_owned : (s2Step370EntryGvRow.sign::s2Step370EntryGvRow.payload).toFinset⊆s2Step370EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step370EntryGvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step370EntryGv_reserved : s2Step370EntryGvBefore.reserve s2Step370EntryGvFresh.toFinset=some s2Step370EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step370EntryGvFresh,arenaWires]
  · norm_num [s2Step370EntryGvBefore,s2Step370EntryGAfter,s2Step370EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step370EntryGvAfter,s2Step370EntryGvBefore,s2Step370EntryGAfter,s2Step370EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step370EntryGv_checked : planRowResizeLog s2Step370EntryGvBefore s2Step370EntryGvRow 201 s2Step370EntryGvFresh=
    some (s2Step370EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805],771⟩,growRow 771 s2Step370EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step370EntryGvBefore s2Step370EntryGvAfter s2Step370EntryGvRow 201 s2Step370EntryGvFresh
    s2Step370EntryGv_distinct s2Step370EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step370EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step370EntryGvRow.payload++s2Step370EntryGvFresh) s2Step370EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step370EntryBank_rows : planWindowRowsLog s2Step370EntryFBefore [(s2Step370EntryFRow,87),(s2Step370EntryGRow,87),(s2Step370EntryFvRow,201),(s2Step370EntryGvRow,201)] [s2Step370EntryFFresh,s2Step370EntryGFresh,s2Step370EntryFvFresh,s2Step370EntryGvFresh]=
    some (s2Step370EntryGvAfter,[s2Step370EntryFOut,s2Step370EntryGOut,s2Step370EntryFvOut,s2Step370EntryGvOut],(growRow 768 s2Step370EntryFFresh ++ (growRow 769 s2Step370EntryGFresh ++ (growRow 770 s2Step370EntryFvFresh ++ (growRow 771 s2Step370EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step370EntryGvAfter [] []=some (s2Step370EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step370EntryGvBefore s2Step370EntryGvAfter s2Step370EntryGvAfter
    s2Step370EntryGvRow s2Step370EntryGvOut 201 s2Step370EntryGvFresh [] [] []
    (growRow 771 s2Step370EntryGvFresh) ([]) s2Step370EntryGv_Incoming s2Step370EntryGv_checked h4 s2Step370EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step370EntryFvBefore s2Step370EntryFvAfter s2Step370EntryGvAfter
    s2Step370EntryFvRow s2Step370EntryFvOut 201 s2Step370EntryFvFresh [(s2Step370EntryGvRow,201)] [s2Step370EntryGvFresh] [s2Step370EntryGvOut]
    (growRow 770 s2Step370EntryFvFresh) ((growRow 771 s2Step370EntryGvFresh ++ [])) s2Step370EntryFv_Incoming s2Step370EntryFv_checked h3 s2Step370EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step370EntryGBefore s2Step370EntryGAfter s2Step370EntryGvAfter
    s2Step370EntryGRow s2Step370EntryGOut 87 s2Step370EntryGFresh [(s2Step370EntryFvRow,201),(s2Step370EntryGvRow,201)] [s2Step370EntryFvFresh,s2Step370EntryGvFresh] [s2Step370EntryFvOut,s2Step370EntryGvOut]
    (growRow 769 s2Step370EntryGFresh) ((growRow 770 s2Step370EntryFvFresh ++ (growRow 771 s2Step370EntryGvFresh ++ []))) s2Step370EntryG_Incoming s2Step370EntryG_checked h2 s2Step370EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step370EntryFBefore s2Step370EntryFAfter s2Step370EntryGvAfter
    s2Step370EntryFRow s2Step370EntryFOut 87 s2Step370EntryFFresh [(s2Step370EntryGRow,87),(s2Step370EntryFvRow,201),(s2Step370EntryGvRow,201)] [s2Step370EntryGFresh,s2Step370EntryFvFresh,s2Step370EntryGvFresh] [s2Step370EntryGOut,s2Step370EntryFvOut,s2Step370EntryGvOut]
    (growRow 768 s2Step370EntryFFresh) ((growRow 769 s2Step370EntryGFresh ++ (growRow 770 s2Step370EntryFvFresh ++ (growRow 771 s2Step370EntryGvFresh ++ [])))) s2Step370EntryF_Incoming s2Step370EntryF_checked h1 s2Step370EntryF_Outgoing
  exact h0

private theorem s2Step370EntryBank_checked : compileHmrBankResizeLog .entry s2Step370EntryFBefore ⟨s2Step370EntryFRow,s2Step370EntryGRow,s2Step370EntryFvRow,s2Step370EntryGvRow⟩ ⟨87,87,201,201⟩ [s2Step370EntryFFresh,s2Step370EntryGFresh,s2Step370EntryFvFresh,s2Step370EntryGvFresh]=
    some (s2Step370EntryGvAfter,⟨s2Step370EntryFOut,s2Step370EntryGOut,s2Step370EntryFvOut,s2Step370EntryGvOut⟩,(growRow 768 s2Step370EntryFFresh ++ (growRow 769 s2Step370EntryGFresh ++ (growRow 770 s2Step370EntryFvFresh ++ (growRow 771 s2Step370EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step370EntryBank_rows]
  rfl

private def s2Step370ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step370ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step370ExitFBefore : Arena := s2Step370ExitGAfter

private def s2Step370ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 797],768⟩

private def s2Step370ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783],770⟩

private def s2Step370ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 802, 826],769⟩

private def s2Step370ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 796],771⟩

private theorem s2Step370ExitBank_incomingDistinct : ([s2Step370ExitGRow,s2Step370ExitFRow,s2Step370ExitFvRow,s2Step370ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step370ExitF_Incoming : rowsOwned s2Step370ExitFBefore [s2Step370ExitFRow,s2Step370ExitFvRow,s2Step370ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step370ExitGRow,s2Step370ExitFRow,s2Step370ExitFvRow,s2Step370ExitGvRow] 1 s2Step370ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step370ExitFBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step370ExitBank_outgoingOwned : rowsOwned s2Step370ExitGvAfter [s2Step370ExitGOut,s2Step370ExitFOut,s2Step370ExitFvOut,s2Step370ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step370ExitGvAfter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step370ExitF_Outgoing : rowsOwned s2Step370ExitGvAfter [s2Step370ExitFOut,s2Step370ExitFvOut,s2Step370ExitGvOut] :=
  hmrRows_owned_drop s2Step370ExitGvAfter [s2Step370ExitGOut,s2Step370ExitFOut,s2Step370ExitFvOut,s2Step370ExitGvOut] 1 s2Step370ExitBank_outgoingOwned

private theorem s2Step370ExitF_distinct : (s2Step370ExitFRow.sign::s2Step370ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step370ExitF_owned : (s2Step370ExitFRow.sign::s2Step370ExitFRow.payload).toFinset⊆s2Step370ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step370ExitFBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step370ExitF_retired : s2Step370ExitFBefore.retireSet s2Step370ExitFExtra.toFinset=s2Step370ExitFAfter := by
  unfold Arena.retireSet s2Step370ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step370ExitFBefore,s2Step370ExitGAfter,s2Step370ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step370ExitF_checked : planRowResizeLog s2Step370ExitFBefore s2Step370ExitFRow 87 []=
    some (s2Step370ExitFAfter,s2Step370ExitFOut,shrinkRow 768 s2Step370ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step370ExitFBefore s2Step370ExitFRow 87 s2Step370ExitF_distinct s2Step370ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step370ExitFRow.payload.take 87) s2Step370ExitFRow.sign=s2Step370ExitFOut := by decide +kernel
  have hi : s2Step370ExitFRow.payload.drop 87=s2Step370ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step370ExitF_retired] at result
  exact result

private def s2Step370ExitFvAfter : Arena := s2Step370ExitFAfter

private def s2Step370ExitFvBefore : Arena := s2Step370ExitFAfter

private theorem s2Step370ExitFv_Incoming : rowsOwned s2Step370ExitFvBefore [s2Step370ExitFvRow,s2Step370ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step370ExitGRow,s2Step370ExitFRow,s2Step370ExitFvRow,s2Step370ExitGvRow] 2 s2Step370ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step370ExitFvBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step370ExitFv_Outgoing : rowsOwned s2Step370ExitGvAfter [s2Step370ExitFvOut,s2Step370ExitGvOut] :=
  hmrRows_owned_drop s2Step370ExitGvAfter [s2Step370ExitGOut,s2Step370ExitFOut,s2Step370ExitFvOut,s2Step370ExitGvOut] 2 s2Step370ExitBank_outgoingOwned

private theorem s2Step370ExitFv_distinct : (s2Step370ExitFvRow.sign::s2Step370ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step370ExitFv_owned : (s2Step370ExitFvRow.sign::s2Step370ExitFvRow.payload).toFinset⊆s2Step370ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step370ExitFvBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step370ExitFv_reserved : s2Step370ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step370ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step370ExitFv_checked : planRowResizeLog s2Step370ExitFvBefore s2Step370ExitFvRow 202 []=
    some (s2Step370ExitFvAfter,s2Step370ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step370ExitFvBefore s2Step370ExitFvAfter s2Step370ExitFvRow 202 []
    s2Step370ExitFv_distinct s2Step370ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step370ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step370ExitFvRow.payload++[]) s2Step370ExitFvRow.sign=s2Step370ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step370ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private theorem s2Step370ExitG_Incoming : rowsOwned s2Step370ExitGBefore [s2Step370ExitGRow,s2Step370ExitFRow,s2Step370ExitFvRow,s2Step370ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step370ExitGRow,s2Step370ExitFRow,s2Step370ExitFvRow,s2Step370ExitGvRow] 0 s2Step370ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step370ExitGBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step370ExitG_Outgoing : rowsOwned s2Step370ExitGvAfter [s2Step370ExitGOut,s2Step370ExitFOut,s2Step370ExitFvOut,s2Step370ExitGvOut] :=
  hmrRows_owned_drop s2Step370ExitGvAfter [s2Step370ExitGOut,s2Step370ExitFOut,s2Step370ExitFvOut,s2Step370ExitGvOut] 0 s2Step370ExitBank_outgoingOwned

private theorem s2Step370ExitG_distinct : (s2Step370ExitGRow.sign::s2Step370ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step370ExitG_owned : (s2Step370ExitGRow.sign::s2Step370ExitGRow.payload).toFinset⊆s2Step370ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step370ExitGBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step370ExitG_retired : s2Step370ExitGBefore.retireSet s2Step370ExitGExtra.toFinset=s2Step370ExitGAfter := by
  unfold Arena.retireSet s2Step370ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step370ExitGBefore,s2Step370ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step370ExitG_checked : planRowResizeLog s2Step370ExitGBefore s2Step370ExitGRow 86 []=
    some (s2Step370ExitGAfter,s2Step370ExitGOut,shrinkRow 769 s2Step370ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step370ExitGBefore s2Step370ExitGRow 86 s2Step370ExitG_distinct s2Step370ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step370ExitGRow.payload.take 86) s2Step370ExitGRow.sign=s2Step370ExitGOut := by decide +kernel
  have hi : s2Step370ExitGRow.payload.drop 86=s2Step370ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step370ExitG_retired] at result
  exact result

private def s2Step370ExitGvBefore : Arena := s2Step370ExitFAfter

private theorem s2Step370ExitGv_Incoming : rowsOwned s2Step370ExitGvBefore [s2Step370ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step370ExitGRow,s2Step370ExitFRow,s2Step370ExitFvRow,s2Step370ExitGvRow] 3 s2Step370ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step370ExitGvBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step370ExitGv_Outgoing : rowsOwned s2Step370ExitGvAfter [s2Step370ExitGvOut] :=
  hmrRows_owned_drop s2Step370ExitGvAfter [s2Step370ExitGOut,s2Step370ExitFOut,s2Step370ExitFvOut,s2Step370ExitGvOut] 3 s2Step370ExitBank_outgoingOwned

private theorem s2Step370ExitGv_distinct : (s2Step370ExitGvRow.sign::s2Step370ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step370ExitGv_owned : (s2Step370ExitGvRow.sign::s2Step370ExitGvRow.payload).toFinset⊆s2Step370ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step370ExitGvBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step370ExitGv_retired : s2Step370ExitGvBefore.retireSet s2Step370ExitGvExtra.toFinset=s2Step370ExitGvAfter := by
  unfold Arena.retireSet s2Step370ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step370ExitGvBefore,s2Step370ExitFAfter,s2Step370ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step370ExitGv_checked : planRowResizeLog s2Step370ExitGvBefore s2Step370ExitGvRow 201 []=
    some (s2Step370ExitGvAfter,s2Step370ExitGvOut,shrinkRow 771 s2Step370ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step370ExitGvBefore s2Step370ExitGvRow 201 s2Step370ExitGv_distinct s2Step370ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step370ExitGvRow.payload.take 201) s2Step370ExitGvRow.sign=s2Step370ExitGvOut := by decide +kernel
  have hi : s2Step370ExitGvRow.payload.drop 201=s2Step370ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step370ExitGv_retired] at result
  exact result

private theorem s2Step370ExitBank_rows : planWindowRowsLog s2Step370ExitGBefore [(s2Step370ExitGRow,86),(s2Step370ExitFRow,87),(s2Step370ExitFvRow,202),(s2Step370ExitGvRow,201)] [[],[],[],[]]=
    some (s2Step370ExitGvAfter,[s2Step370ExitGOut,s2Step370ExitFOut,s2Step370ExitFvOut,s2Step370ExitGvOut],(shrinkRow 769 s2Step370ExitGExtra ++ (shrinkRow 768 s2Step370ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step370ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step370ExitGvAfter [] []=some (s2Step370ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step370ExitGvBefore s2Step370ExitGvAfter s2Step370ExitGvAfter
    s2Step370ExitGvRow s2Step370ExitGvOut 201 [] [] [] []
    (shrinkRow 771 s2Step370ExitGvExtra) ([]) s2Step370ExitGv_Incoming s2Step370ExitGv_checked h4 s2Step370ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step370ExitFvBefore s2Step370ExitFvAfter s2Step370ExitGvAfter
    s2Step370ExitFvRow s2Step370ExitFvOut 202 [] [(s2Step370ExitGvRow,201)] [[]] [s2Step370ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step370ExitGvExtra ++ [])) s2Step370ExitFv_Incoming s2Step370ExitFv_checked h3 s2Step370ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step370ExitFBefore s2Step370ExitFAfter s2Step370ExitGvAfter
    s2Step370ExitFRow s2Step370ExitFOut 87 [] [(s2Step370ExitFvRow,202),(s2Step370ExitGvRow,201)] [[],[]] [s2Step370ExitFvOut,s2Step370ExitGvOut]
    (shrinkRow 768 s2Step370ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step370ExitGvExtra ++ []))) s2Step370ExitF_Incoming s2Step370ExitF_checked h2 s2Step370ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step370ExitGBefore s2Step370ExitGAfter s2Step370ExitGvAfter
    s2Step370ExitGRow s2Step370ExitGOut 86 [] [(s2Step370ExitFRow,87),(s2Step370ExitFvRow,202),(s2Step370ExitGvRow,201)] [[],[],[]] [s2Step370ExitFOut,s2Step370ExitFvOut,s2Step370ExitGvOut]
    (shrinkRow 769 s2Step370ExitGExtra) ((shrinkRow 768 s2Step370ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step370ExitGvExtra ++ [])))) s2Step370ExitG_Incoming s2Step370ExitG_checked h1 s2Step370ExitG_Outgoing
  exact h0

private theorem s2Step370ExitBank_checked : compileHmrBankResizeLog .exit s2Step370ExitGBefore ⟨s2Step370ExitFRow,s2Step370ExitGRow,s2Step370ExitFvRow,s2Step370ExitGvRow⟩ ⟨87,86,202,201⟩ [[],[],[],[]]=
    some (s2Step370ExitGvAfter,⟨s2Step370ExitFOut,s2Step370ExitGOut,s2Step370ExitFvOut,s2Step370ExitGvOut⟩,(shrinkRow 769 s2Step370ExitGExtra ++ (shrinkRow 768 s2Step370ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step370ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step370ExitBank_rows]
  rfl

private theorem s2Step370Add0_apart : Disjoint s2Step370Add0Arena.live s2Step370Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step370Add0Arena (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step370Add0_card : s2Step370Add0Arena.live.card=910 := by
  decide +kernel

private theorem s2Step370Add0_borrowed : s2Step370Add0Arena.checkBorrow (hmrHybridCount s2Step370Add0Arena s2Step370Add0B.length) s2Step370Add0Work=some s2Step370Add0During := by
  have len : s2Step370Add0Work.length=hmrHybridCount s2Step370Add0Arena s2Step370Add0B.length := by
    rw [hmrHybridCount,s2Step370Add0_card]
    decide +kernel
  have nd : s2Step370Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step370Add0Arena s2Step370Add0During s2Step370Add0Work.toFinset s2Step370Add0_bounded s2Step370Add0_apart rfl

private theorem s2Step370Add0_distinct : (800::785::789::(s2Step370Add0A++s2Step370Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step370Add0_owned : (800::785::789::(s2Step370Add0A++s2Step370Add0B)).toFinset⊆s2Step370Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step370Add0Arena (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step370Add0_checked : compileHmrHybridCinLog s2Step370Add0Arena 785 800 789 s2Step370Add0A s2Step370Add0B s2Step370Add0Work=some s2Step370Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step370Add0Arena s2Step370Add0During 785 800 789 s2Step370Add0A s2Step370Add0B s2Step370Add0Work
    (by decide +kernel) (by decide +kernel) s2Step370Add0_distinct
    (fun q hq => s2Step370Add0_owned (List.mem_toFinset.mpr hq)) s2Step370Add0_borrowed

private theorem s2Step370Add1_apart : Disjoint s2Step370Add1Arena.live s2Step370Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step370Add1Arena (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step370Add1_card : s2Step370Add1Arena.live.card=910 := by
  decide +kernel

private theorem s2Step370Add1_borrowed : s2Step370Add1Arena.checkBorrow (hmrHybridCount s2Step370Add1Arena s2Step370Add1B.length) s2Step370Add1Work=some s2Step370Add1During := by
  have len : s2Step370Add1Work.length=hmrHybridCount s2Step370Add1Arena s2Step370Add1B.length := by
    rw [hmrHybridCount,s2Step370Add1_card]
    decide +kernel
  have nd : s2Step370Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step370Add1Arena s2Step370Add1During s2Step370Add1Work.toFinset s2Step370Add1_bounded s2Step370Add1_apart rfl

private theorem s2Step370Add1_distinct : (800::785::789::(s2Step370Add1A++s2Step370Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step370Add1_owned : (800::785::789::(s2Step370Add1A++s2Step370Add1B)).toFinset⊆s2Step370Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step370Add1Arena (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step370Add1_checked : compileHmrHybridCinLog s2Step370Add1Arena 785 800 789 s2Step370Add1A s2Step370Add1B s2Step370Add1Work=some s2Step370Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step370Add1Arena s2Step370Add1During 785 800 789 s2Step370Add1A s2Step370Add1B s2Step370Add1Work
    (by decide +kernel) (by decide +kernel) s2Step370Add1_distinct
    (fun q hq => s2Step370Add1_owned (List.mem_toFinset.mpr hq)) s2Step370Add1_borrowed

private theorem s2Step370F4_apart : Disjoint (s2Step370Add0A++s2Step370Add0B).toFinset (s2Step370Add1A++s2Step370Add1B).toFinset := by
  have nd : ((s2Step370Add0A++s2Step370Add0B)++(s2Step370Add1A++s2Step370Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step370F4_carry : s2Step370F4FlagArena.checkBorrow 1 [789]=some s2Step370Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step370F4FlagArena,s2Step370HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step370F4FlagArena,s2Step370HeadFvAfter,s2Step370Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step370F4_distinct : (819::785::800::789::((s2Step370Add0A++s2Step370Add1A)++(s2Step370Add0B++s2Step370Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step370F4_flag : s2Step370HeadFvAfter.checkBorrow 1 [800]=some s2Step370F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step370HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step370F4_owned : (819::785::((s2Step370Add0A++s2Step370Add1A)++(s2Step370Add0B++s2Step370Add1B))).toFinset⊆s2Step370HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step370HeadFvAfter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step370F4_checked : compileHmrHybridF4Log s2Step370HeadFvAfter 819 785 s2Step370Add0A s2Step370Add0B s2Step370Add1A s2Step370Add1B [800] [789] s2Step370Add0Work s2Step370Add1Work=some s2Step370F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step370HeadFvAfter s2Step370F4FlagArena s2Step370Add0Arena s2Step370Add0During s2Step370Add1During 819 785
    s2Step370Add0A s2Step370Add0B s2Step370Add1A s2Step370Add1B [800] [789] s2Step370Add0Work s2Step370Add1Work
    (fun q hq => s2Step370F4_owned (List.mem_toFinset.mpr hq)) s2Step370F4_flag s2Step370F4_carry
    s2Step370F4_distinct s2Step370F4_apart s2Step370Add0_checked s2Step370Add1_checked

private theorem s2Step370Front_branch : s2Step370FrontSigmaArena.checkBorrow 1 [785]=some s2Step370HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step370FrontSigmaArena,s2Step370EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step370FrontSigmaArena,s2Step370EntryGvAfter,s2Step370HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step370Front_entry : HmrFrontEntryValid s2Step370EntryFBefore s2Step370FrontBank 87 201 ⟨87,86,202,201⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step370FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step370EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step370EntryFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step370FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step370Front_sigma : s2Step370EntryGvAfter.checkBorrow 1 [819]=some s2Step370FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step370EntryGvAfter,arenaWires]
  · rfl

private def s2Step370HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step370HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step370HeadFBefore : Arena := s2Step370HeadGAfter

private def s2Step370HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598],768⟩

private def s2Step370HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831],770⟩

private def s2Step370HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 802],769⟩

private def s2Step370HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805],771⟩

private theorem s2Step370HeadBank_incomingDistinct : ([s2Step370HeadGRow,s2Step370HeadFRow,s2Step370HeadGvRow,s2Step370HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step370HeadF_Incoming : rowsOwned s2Step370HeadFBefore [s2Step370HeadFRow,s2Step370HeadGvRow,s2Step370HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step370HeadGRow,s2Step370HeadFRow,s2Step370HeadGvRow,s2Step370HeadFvRow] 1 s2Step370HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step370HeadFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step370HeadBank_outgoingOwned : rowsOwned s2Step370HeadFvAfter [s2Step370HeadGOut,s2Step370HeadFOut,s2Step370HeadGvOut,s2Step370HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step370HeadFvAfter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step370HeadF_Outgoing : rowsOwned s2Step370HeadFvAfter [s2Step370HeadFOut,s2Step370HeadGvOut,s2Step370HeadFvOut] :=
  hmrRows_owned_drop s2Step370HeadFvAfter [s2Step370HeadGOut,s2Step370HeadFOut,s2Step370HeadGvOut,s2Step370HeadFvOut] 1 s2Step370HeadBank_outgoingOwned

private theorem s2Step370HeadF_distinct : (s2Step370HeadFRow.sign::s2Step370HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step370HeadF_owned : (s2Step370HeadFRow.sign::s2Step370HeadFRow.payload).toFinset⊆s2Step370HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step370HeadFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step370HeadF_reserved : s2Step370HeadFBefore.reserve s2Step370HeadFFresh.toFinset=some s2Step370HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step370HeadFFresh,arenaWires]
  · norm_num [s2Step370HeadFBefore,s2Step370HeadGAfter,s2Step370HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step370HeadFAfter,s2Step370HeadFBefore,s2Step370HeadGAfter,s2Step370HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step370HeadF_checked : planRowResizeLog s2Step370HeadFBefore s2Step370HeadFRow 88 s2Step370HeadFFresh=
    some (s2Step370HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 797],768⟩,growRow 768 s2Step370HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step370HeadFBefore s2Step370HeadFAfter s2Step370HeadFRow 88 s2Step370HeadFFresh
    s2Step370HeadF_distinct s2Step370HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step370HeadF_reserved
  have rowEq : WindowRow.mk (s2Step370HeadFRow.payload++s2Step370HeadFFresh) s2Step370HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 797],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step370HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step370HeadFvBefore : Arena := s2Step370HeadGvAfter

private theorem s2Step370HeadFv_Incoming : rowsOwned s2Step370HeadFvBefore [s2Step370HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step370HeadGRow,s2Step370HeadFRow,s2Step370HeadGvRow,s2Step370HeadFvRow] 3 s2Step370HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step370HeadFvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step370HeadFv_Outgoing : rowsOwned s2Step370HeadFvAfter [s2Step370HeadFvOut] :=
  hmrRows_owned_drop s2Step370HeadFvAfter [s2Step370HeadGOut,s2Step370HeadFOut,s2Step370HeadGvOut,s2Step370HeadFvOut] 3 s2Step370HeadBank_outgoingOwned

private theorem s2Step370HeadFv_distinct : (s2Step370HeadFvRow.sign::s2Step370HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step370HeadFv_owned : (s2Step370HeadFvRow.sign::s2Step370HeadFvRow.payload).toFinset⊆s2Step370HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step370HeadFvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step370HeadFv_reserved : s2Step370HeadFvBefore.reserve s2Step370HeadFvFresh.toFinset=some s2Step370HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step370HeadFvFresh,arenaWires]
  · norm_num [s2Step370HeadFvBefore,s2Step370HeadGvAfter,s2Step370HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step370HeadFvAfter,s2Step370HeadFvBefore,s2Step370HeadGvAfter,s2Step370HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step370HeadFv_checked : planRowResizeLog s2Step370HeadFvBefore s2Step370HeadFvRow 202 s2Step370HeadFvFresh=
    some (s2Step370HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783],770⟩,growRow 770 s2Step370HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step370HeadFvBefore s2Step370HeadFvAfter s2Step370HeadFvRow 202 s2Step370HeadFvFresh
    s2Step370HeadFv_distinct s2Step370HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step370HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step370HeadFvRow.payload++s2Step370HeadFvFresh) s2Step370HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step370HeadG_Incoming : rowsOwned s2Step370HeadGBefore [s2Step370HeadGRow,s2Step370HeadFRow,s2Step370HeadGvRow,s2Step370HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step370HeadGRow,s2Step370HeadFRow,s2Step370HeadGvRow,s2Step370HeadFvRow] 0 s2Step370HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step370HeadGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step370HeadG_Outgoing : rowsOwned s2Step370HeadFvAfter [s2Step370HeadGOut,s2Step370HeadFOut,s2Step370HeadGvOut,s2Step370HeadFvOut] :=
  hmrRows_owned_drop s2Step370HeadFvAfter [s2Step370HeadGOut,s2Step370HeadFOut,s2Step370HeadGvOut,s2Step370HeadFvOut] 0 s2Step370HeadBank_outgoingOwned

private theorem s2Step370HeadG_distinct : (s2Step370HeadGRow.sign::s2Step370HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step370HeadG_owned : (s2Step370HeadGRow.sign::s2Step370HeadGRow.payload).toFinset⊆s2Step370HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step370HeadGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step370HeadG_reserved : s2Step370HeadGBefore.reserve s2Step370HeadGFresh.toFinset=some s2Step370HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step370HeadGFresh,arenaWires]
  · norm_num [s2Step370HeadGBefore,s2Step370HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step370HeadGAfter,s2Step370HeadGBefore,s2Step370HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step370HeadG_checked : planRowResizeLog s2Step370HeadGBefore s2Step370HeadGRow 88 s2Step370HeadGFresh=
    some (s2Step370HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 802, 826],769⟩,growRow 769 s2Step370HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step370HeadGBefore s2Step370HeadGAfter s2Step370HeadGRow 88 s2Step370HeadGFresh
    s2Step370HeadG_distinct s2Step370HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step370HeadG_reserved
  have rowEq : WindowRow.mk (s2Step370HeadGRow.payload++s2Step370HeadGFresh) s2Step370HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 802, 826],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step370HeadGvBefore : Arena := s2Step370HeadFAfter

private theorem s2Step370HeadGv_Incoming : rowsOwned s2Step370HeadGvBefore [s2Step370HeadGvRow,s2Step370HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step370HeadGRow,s2Step370HeadFRow,s2Step370HeadGvRow,s2Step370HeadFvRow] 2 s2Step370HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step370HeadGvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step370HeadGv_Outgoing : rowsOwned s2Step370HeadFvAfter [s2Step370HeadGvOut,s2Step370HeadFvOut] :=
  hmrRows_owned_drop s2Step370HeadFvAfter [s2Step370HeadGOut,s2Step370HeadFOut,s2Step370HeadGvOut,s2Step370HeadFvOut] 2 s2Step370HeadBank_outgoingOwned

private theorem s2Step370HeadGv_distinct : (s2Step370HeadGvRow.sign::s2Step370HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step370HeadGv_owned : (s2Step370HeadGvRow.sign::s2Step370HeadGvRow.payload).toFinset⊆s2Step370HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step370HeadGvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step370HeadGv_reserved : s2Step370HeadGvBefore.reserve s2Step370HeadGvFresh.toFinset=some s2Step370HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step370HeadGvFresh,arenaWires]
  · norm_num [s2Step370HeadGvBefore,s2Step370HeadFAfter,s2Step370HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step370HeadGvAfter,s2Step370HeadGvBefore,s2Step370HeadFAfter,s2Step370HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step370HeadGv_checked : planRowResizeLog s2Step370HeadGvBefore s2Step370HeadGvRow 202 s2Step370HeadGvFresh=
    some (s2Step370HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 796],771⟩,growRow 771 s2Step370HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step370HeadGvBefore s2Step370HeadGvAfter s2Step370HeadGvRow 202 s2Step370HeadGvFresh
    s2Step370HeadGv_distinct s2Step370HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step370HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step370HeadGvRow.payload++s2Step370HeadGvFresh) s2Step370HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 796],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step370HeadBank_rows : planWindowRowsLog s2Step370HeadGBefore [(s2Step370HeadGRow,88),(s2Step370HeadFRow,88),(s2Step370HeadGvRow,202),(s2Step370HeadFvRow,202)] [s2Step370HeadGFresh,s2Step370HeadFFresh,s2Step370HeadGvFresh,s2Step370HeadFvFresh]=
    some (s2Step370HeadFvAfter,[s2Step370HeadGOut,s2Step370HeadFOut,s2Step370HeadGvOut,s2Step370HeadFvOut],(growRow 769 s2Step370HeadGFresh ++ (growRow 768 s2Step370HeadFFresh ++ (growRow 771 s2Step370HeadGvFresh ++ (growRow 770 s2Step370HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step370HeadFvAfter [] []=some (s2Step370HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step370HeadFvBefore s2Step370HeadFvAfter s2Step370HeadFvAfter
    s2Step370HeadFvRow s2Step370HeadFvOut 202 s2Step370HeadFvFresh [] [] []
    (growRow 770 s2Step370HeadFvFresh) ([]) s2Step370HeadFv_Incoming s2Step370HeadFv_checked h4 s2Step370HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step370HeadGvBefore s2Step370HeadGvAfter s2Step370HeadFvAfter
    s2Step370HeadGvRow s2Step370HeadGvOut 202 s2Step370HeadGvFresh [(s2Step370HeadFvRow,202)] [s2Step370HeadFvFresh] [s2Step370HeadFvOut]
    (growRow 771 s2Step370HeadGvFresh) ((growRow 770 s2Step370HeadFvFresh ++ [])) s2Step370HeadGv_Incoming s2Step370HeadGv_checked h3 s2Step370HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step370HeadFBefore s2Step370HeadFAfter s2Step370HeadFvAfter
    s2Step370HeadFRow s2Step370HeadFOut 88 s2Step370HeadFFresh [(s2Step370HeadGvRow,202),(s2Step370HeadFvRow,202)] [s2Step370HeadGvFresh,s2Step370HeadFvFresh] [s2Step370HeadGvOut,s2Step370HeadFvOut]
    (growRow 768 s2Step370HeadFFresh) ((growRow 771 s2Step370HeadGvFresh ++ (growRow 770 s2Step370HeadFvFresh ++ []))) s2Step370HeadF_Incoming s2Step370HeadF_checked h2 s2Step370HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step370HeadGBefore s2Step370HeadGAfter s2Step370HeadFvAfter
    s2Step370HeadGRow s2Step370HeadGOut 88 s2Step370HeadGFresh [(s2Step370HeadFRow,88),(s2Step370HeadGvRow,202),(s2Step370HeadFvRow,202)] [s2Step370HeadFFresh,s2Step370HeadGvFresh,s2Step370HeadFvFresh] [s2Step370HeadFOut,s2Step370HeadGvOut,s2Step370HeadFvOut]
    (growRow 769 s2Step370HeadGFresh) ((growRow 768 s2Step370HeadFFresh ++ (growRow 771 s2Step370HeadGvFresh ++ (growRow 770 s2Step370HeadFvFresh ++ [])))) s2Step370HeadG_Incoming s2Step370HeadG_checked h1 s2Step370HeadG_Outgoing
  exact h0

private theorem s2Step370HeadBank_checked : compileHmrBankResizeLog .headroom s2Step370HeadGBefore ⟨s2Step370HeadFRow,s2Step370HeadGRow,s2Step370HeadFvRow,s2Step370HeadGvRow⟩ ⟨88,88,202,202⟩ [s2Step370HeadGFresh,s2Step370HeadFFresh,s2Step370HeadGvFresh,s2Step370HeadFvFresh]=
    some (s2Step370HeadFvAfter,⟨s2Step370HeadFOut,s2Step370HeadGOut,s2Step370HeadFvOut,s2Step370HeadGvOut⟩,(growRow 769 s2Step370HeadGFresh ++ (growRow 768 s2Step370HeadFFresh ++ (growRow 771 s2Step370HeadGvFresh ++ (growRow 770 s2Step370HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step370HeadBank_rows]
  rfl

private theorem s2Step370Front_checked : compileHmrSourceFrontLog s2Step370EntryFBefore s2Step370FrontBank 87 201 ⟨87,86,202,201⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step370FrontLog=some s2Step370FrontPlan := by
  have pairEq : s2Step370FrontPair=⟨s2Step370HeadFRow,s2Step370HeadGRow,s2Step370HeadFvRow,s2Step370HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step370FrontHead=⟨s2Step370ExitFRow,s2Step370ExitGRow,s2Step370ExitFvRow,s2Step370ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step370Add0A=s2Step370FrontHead.f.wires := by decide +kernel
  have gEq : s2Step370Add0B=s2Step370FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step370Add1A=s2Step370FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step370Add1B=s2Step370FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step370EntryFBefore s2Step370FrontBank 87 201 ⟨87,86,202,201⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step370FrontLog s2Step370FrontPlan
  · exact s2Step370Front_entry
  · exact s2Step370EntryBank_checked
  · exact s2Step370Front_sigma
  · rfl
  · exact s2Step370Front_branch
  · rfl
  · simpa only [s2Step370FrontPlan,pairEq] using s2Step370HeadBank_checked
  · simpa only [s2Step370FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step370F4_checked
  · exact s2Step370Counter_checked
  · rfl
  · simpa only [s2Step370FrontPlan,headEq] using s2Step370ExitBank_checked

private theorem s2Step370Complete_explicit_checked : compileHmrEarlyStepLog s2Step370EntryFBefore s2Step370FrontBank 87 201 ⟨87,86,202,201⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step370CompleteLog=some s2Step370CompletePlan := by
  let Q := s2Step370EarlyControlPlan
  have hq := s2Step370EarlyControl_plan_checked
  have fv1 : s2Step370CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step370CompleteOut.fv.payload[2]?.getD s2Step370CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step370CompleteOut.fv.payload[3]?.getD s2Step370CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step370CompleteOut.fv.payload[4]?.getD s2Step370CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step370EntryFBefore s2Step370EarlyControlArena s2Step370FrontBank 87 201 ⟨87,86,202,201⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step370CompleteLog s2Step370FrontPlan Q
    s2Step370Front_checked s2Step370Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step370Complete_owned s2Step370Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step370EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 819 s2Step370CompleteOut.fv.second (s2Step370CompleteOut.fv.payload[2]?.getD s2Step370CompleteOut.fv.sign) (s2Step370CompleteOut.fv.payload[3]?.getD s2Step370CompleteOut.fv.sign) (s2Step370CompleteOut.fv.payload[4]?.getD s2Step370CompleteOut.fv.sign) 785 60 s2Step370EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep370Arena : Arena := s2Step370EntryFBefore
def s2PrivateStep370Bank : WindowBank := s2Step370FrontBank
def s2PrivateStep370Spec : HmrSourceWalkStepLog := ⟨87,201,⟨87,86,202,201⟩,60,.early s2Step370CompleteLog⟩
def s2PrivateStep370Plan : HmrSourceStepPlan := .early s2Step370CompletePlan
theorem s2PrivateStep370_source : s2PrivateStep370Spec=s2ObservedLogs368[2] := rfl
theorem s2PrivateStep370_checked : compileHmrSourceStepLog s2PrivateStep370Arena s2PrivateStep370Bank
    s2PrivateStep370Spec.fgWidth s2PrivateStep370Spec.vWidth s2PrivateStep370Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]
    6 498 370 s2PrivateStep370Spec.need none s2PrivateStep370Spec.log=some s2PrivateStep370Plan := by
  change compileHmrSourceStepLog s2Step370EntryFBefore s2Step370FrontBank 87 201 ⟨87,86,202,201⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 6 498 370 60 none (.early s2Step370CompleteLog)=some (.early s2Step370CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 370<498)]
  rw [s2Step370Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
