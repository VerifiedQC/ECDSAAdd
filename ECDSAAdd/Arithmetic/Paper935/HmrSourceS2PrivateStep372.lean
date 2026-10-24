import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep370
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

private def s2Step372CompleteMoves : List (Wire × Wire) := [(825,85)]

private def s2Step372EarlyControlLog : HmrEarlyControlLog := ⟨[825, 789, 797, 800, 799],[785],[802],[827, 844, 907, 913, 914, 915],[]⟩

private def s2Step372FrontLog : HmrFrontAllocationLog := ⟨⟨[[797], [], [], []],[[799], [800], [789], [826]],[[], [], [], []]⟩,[796],[811],[785],[802],[827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[785, 802, 827, 844]⟩

private def s2Step372CompleteLog : HmrEarlyStepLog := ⟨s2Step372FrontLog,s2Step372CompleteMoves,s2Step372EarlyControlLog⟩

private def s2Step372ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596],768⟩

private def s2Step372ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826],770⟩

private def s2Step372ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84],769⟩

private def s2Step372ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819],771⟩

private def s2Step372FrontOut : WindowBank := ⟨s2Step372ExitFOut,s2Step372ExitGOut,s2Step372ExitFvOut,s2Step372ExitGvOut⟩

private def s2Step372CompleteOut : WindowBank := s2Step372FrontOut.repacked s2Step372CompleteMoves

private def s2Step372EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step372EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step372EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step372EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step372EarlyControlPositiveArena,[785],s2Step372EarlyControlEqualityArena,[802],⟨⟨796,false⟩,[⟨⟨785,false⟩,802⟩]⟩⟩

private def s2Step372EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<916)),Finset.filter_subset _ _⟩

private def s2Step372EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<916)),Finset.filter_subset _ _⟩

private def s2Step372EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step372EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<811) ∨ (812≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step372EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step372EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step372EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,825⟩,⟨⟨774,false⟩,789⟩,⟨⟨775,false⟩,797⟩,⟨⟨776,false⟩,800⟩,⟨⟨777,false⟩,799⟩]⟩

private def s2Step372EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step372EarlyControlZeroArena,s2Step372EarlyControlZeroPlan,s2Step372EarlyControlClassPlan,s2Step372EarlyControlFlagArena,s2Step372EarlyControlFittedArena,s2Step372EarlyControlHistoryArena,s2Step372EarlyControlSigmaArena,s2Step372EarlyControlOutputArena,s2Step372EarlyControlLog⟩

private def s2Step372CounterWork : List Wire := [785, 802, 827, 844]

private theorem s2Step372Counter_bounded : s2Step372CounterWork.toFinset⊆arenaWires := by norm_num [s2Step372CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step372HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step372CounterDuring : Arena := ⟨s2Step372HeadFvAfter.live∪s2Step372CounterWork.toFinset,Finset.union_subset s2Step372HeadFvAfter.bounded s2Step372Counter_bounded⟩

private def s2Step372EntryFFresh : List Wire := [797]

private def s2Step372EntryFvFresh : List Wire := []

private def s2Step372EntryGFresh : List Wire := []

private def s2Step372EntryFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<811) ∨ (812≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step372EntryGvAfter : Arena := s2Step372EntryFAfter

private def s2Step372EntryGvFresh : List Wire := []

private def s2Step372ExitFExtra : List Wire := [797, 800]

private def s2Step372ExitGExtra : List Wire := [85, 799]

private def s2Step372ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<85) ∨ (86≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step372ExitGvExtra : List Wire := [789]

private def s2Step372Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step372Add0Work : List Wire := [827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step372Add0_bounded : s2Step372Add0Work.toFinset⊆arenaWires := by
  have h : s2Step372Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step372Add0During : Arena := ⟨s2Step372Add0Arena.live∪s2Step372Add0Work.toFinset,Finset.union_subset s2Step372Add0Arena.bounded s2Step372Add0_bounded⟩

private def s2Step372Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step372Add1Work : List Wire := [827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step372Add1_bounded : s2Step372Add1Work.toFinset⊆arenaWires := by
  have h : s2Step372Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step372Add1During : Arena := ⟨s2Step372Add1Arena.live∪s2Step372Add1Work.toFinset,Finset.union_subset s2Step372Add1Arena.bounded s2Step372Add1_bounded⟩

private def s2Step372F4FlagArena : Arena := ⟨s2Step372HeadFvAfter.live∪{785},Finset.union_subset s2Step372HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step372F4Plan : HmrHybridF4Plan := ⟨s2Step372F4FlagArena,[785],s2Step372Add0Arena,[802],s2Step372Add0During,s2Step372Add0Work,s2Step372Add1During,s2Step372Add1Work⟩

private def s2Step372HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 797, 800],768⟩

private def s2Step372HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826],770⟩

private def s2Step372HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 799],769⟩

private def s2Step372HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 789],771⟩

private def s2Step372FrontHead : WindowBank := ⟨s2Step372HeadFOut,s2Step372HeadGOut,s2Step372HeadFvOut,s2Step372HeadGvOut⟩

private def s2Step372EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 797],768⟩

private def s2Step372EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783],770⟩

private def s2Step372EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85],769⟩

private def s2Step372EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819],771⟩

private def s2Step372FrontPair : WindowBank := ⟨s2Step372EntryFOut,s2Step372EntryGOut,s2Step372EntryFvOut,s2Step372EntryGvOut⟩

private def s2Step372FrontSigmaArena : Arena := ⟨s2Step372EntryGvAfter.live∪{796},Finset.union_subset s2Step372EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step372HeadFFresh : List Wire := [800]

private def s2Step372HeadFvFresh : List Wire := [826]

private def s2Step372HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step372HeadGFresh : List Wire := [799]

private def s2Step372HeadGvFresh : List Wire := [789]

private def s2Step372FrontPlan : HmrSourceFront := ⟨s2Step372EntryGvAfter,s2Step372FrontPair,(growRow 768 s2Step372EntryFFresh ++ (growRow 769 s2Step372EntryGFresh ++ (growRow 770 s2Step372EntryFvFresh ++ (growRow 771 s2Step372EntryGvFresh ++ [])))),s2Step372FrontSigmaArena,[796],s2Step372HeadGBefore,[811],
  s2Step372HeadFvAfter,s2Step372FrontHead,(growRow 769 s2Step372HeadGFresh ++ (growRow 768 s2Step372HeadFFresh ++ (growRow 771 s2Step372HeadGvFresh ++ (growRow 770 s2Step372HeadFvFresh ++ [])))),s2Step372F4Plan,s2Step372CounterDuring,s2Step372CounterWork,s2Step372ExitGvAfter,s2Step372FrontOut,(shrinkRow 769 s2Step372ExitGExtra ++ (shrinkRow 768 s2Step372ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step372ExitGvExtra ++ []))))⟩

private def s2Step372CompletePlan : HmrEarlyStepPlan := ⟨s2Step372FrontPlan,s2Step372EarlyControlArena,s2Step372EarlyControlPlan,s2Step372CompleteMoves⟩

private theorem s2Step372Complete_apart : List.Disjoint (s2Step372CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [796, 811, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] := by
  have nd : ((s2Step372CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[796, 811, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step372Complete_owned : (s2Step372CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step372EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step372EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private def s2Step372CompleteMoveArena : Arena := ⟨s2Step372ExitGvAfter.live∪{85},Finset.union_subset s2Step372ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step372Complete_repack : s2Step372ExitGvAfter.checkRepack s2Step372CompleteMoves=some s2Step372EarlyControlArena := by
  have owned : 825∈s2Step372ExitGvAfter.live := by norm_num [s2Step372ExitGvAfter,arenaWires]
  have reserve : s2Step372ExitGvAfter.reserve {85}=some s2Step372CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step372ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step372CompleteMoveArena.retireSet {825}=s2Step372EarlyControlArena := by
    unfold Arena.retireSet s2Step372EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step372CompleteMoveArena,s2Step372ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step372CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step372CompleteMoveArena.retireSet {825}).checkRepack []=some s2Step372EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step372EarlyControl_branchOwned : ([811] : List Wire).toFinset⊆s2Step372EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step372EarlyControlSigmaArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step372EarlyControl_branch : compileHmrBranchRetirement s2Step372EarlyControlSigmaArena 811=some s2Step372EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step372EarlyControl_branchOwned
  · ext q
    simp [s2Step372EarlyControlOutputArena,s2Step372EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step372EarlyControl_classEqualityBorrow : s2Step372EarlyControlPositiveArena.checkBorrow (([796, 785] : List Wire).length-1) s2Step372EarlyControlLog.classWork=some s2Step372EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step372EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step372EarlyControlPositiveArena (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step372EarlyControlEqualityArena,s2Step372EarlyControlPositiveArena,s2Step372EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step372EarlyControl_classEqualityOwned : ([796, 785] : List Wire).toFinset⊆s2Step372EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step372EarlyControlPositiveArena (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step372EarlyControl_classEquality : compileHmrEqualityLog s2Step372EarlyControlPositiveArena [796, 785] 0 s2Step372EarlyControlLog.classWork=some (s2Step372EarlyControlEqualityArena,s2Step372EarlyControlLog.classWork,s2Step372EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step372EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step372EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step372EarlyControl_classOwned : ([777, 799, 796] : List Wire).toFinset⊆s2Step372EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step372EarlyControlZeroArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step372EarlyControl_positiveBorrow : s2Step372EarlyControlZeroArena.checkBorrow (1) s2Step372EarlyControlLog.positiveWork=some s2Step372EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step372EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step372EarlyControlZeroArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step372EarlyControlPositiveArena,s2Step372EarlyControlZeroArena,s2Step372EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step372EarlyControl_class : compileHmrSourceClassLog s2Step372EarlyControlZeroArena false 777 s2Step372EarlyControlZeroPlan.top 0 796 s2Step372EarlyControlLog.positiveWork s2Step372EarlyControlLog.classWork=some s2Step372EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step372EarlyControlClassPlan s2Step372EarlyControlZeroArena false 777 s2Step372EarlyControlZeroPlan.top 0 796
  constructor
  · decide +kernel
  · exact s2Step372EarlyControl_classOwned
  · exact s2Step372EarlyControl_positiveBorrow
  · exact s2Step372EarlyControl_classEquality

private theorem s2Step372EarlyControl_entryRecordOwned : ([811, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step372EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step372EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step372EarlyControl_entrySigmaOwned : ([796, 254] : List Wire).toFinset⊆s2Step372EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step372EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step372EarlyControl_fitBorrow : s2Step372EarlyControlFlagArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step372EarlyControlLog.recordFresh=some s2Step372EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step372EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step372EarlyControlFlagArena (fun q => (0≤q ∧ q<916)) rfl
      decide +kernel
    · ext q
      simp [s2Step372EarlyControlFittedArena,s2Step372EarlyControlFlagArena,s2Step372EarlyControlLog,arenaWires]

private theorem s2Step372EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step372EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step372EarlyControlFlagArena (fun q => (0≤q ∧ q<916)) rfl
  decide +kernel

private theorem s2Step372EarlyControl_fit : compileHmrRecordGrowLog s2Step372EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step372EarlyControlLog.recordFresh=some s2Step372EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step372EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step372EarlyControl_fitBorrow

private theorem s2Step372EarlyControl_flagsBorrow : s2Step372EarlyControlEqualityArena.checkBorrow (6) s2Step372EarlyControlLog.flagWork=some s2Step372EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step372EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step372EarlyControlEqualityArena (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step372EarlyControlFlagArena,s2Step372EarlyControlEqualityArena,s2Step372EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step372EarlyControl_flagsOwned : ([802, 253, 252, 251] : List Wire).toFinset⊆s2Step372EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step372EarlyControlEqualityArena (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step372EarlyControl_flags : compileHmrFlagsLog s2Step372EarlyControlClassPlan.equalityArena s2Step372EarlyControlClassPlan.equality.top 253 252 251 s2Step372EarlyControlLog.flagWork=some s2Step372EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step372EarlyControl_flagsOwned⟩
  · exact s2Step372EarlyControl_flagsBorrow

private theorem s2Step372EarlyControl_historyBorrow : s2Step372EarlyControlArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step372EarlyControlLog.recordFresh=some s2Step372EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step372EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step372EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step372EarlyControlHistoryArena,s2Step372EarlyControlArena,s2Step372EarlyControlLog,arenaWires]

private theorem s2Step372EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step372EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step372EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step372EarlyControl_history : compileHmrRecordGrowLog s2Step372EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step372EarlyControlLog.recordFresh=some s2Step372EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step372EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step372EarlyControl_historyBorrow

private theorem s2Step372EarlyControl_sigmaOwned : ([254, 796] : List Wire).toFinset⊆s2Step372EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step372EarlyControlHistoryArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step372EarlyControl_sigmaReleaseOwned : ([796] : List Wire).toFinset⊆s2Step372EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step372EarlyControlHistoryArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step372EarlyControl_sigmaRelease : s2Step372EarlyControlHistoryArena.release {796} (fun _ => false)=some s2Step372EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step372EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step372EarlyControlSigmaArena,s2Step372EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step372EarlyControl_sigma : compileHmrSigmaDropLog s2Step372EarlyControlHistoryArena false 0 0 254 796 []=some s2Step372EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step372EarlyControl_sigmaOwned⟩
  · exact s2Step372EarlyControl_sigmaRelease

private theorem s2Step372EarlyControl_zeroBorrow : s2Step372EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step372EarlyControlLog.zeroWork=some s2Step372EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step372EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step372EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step372EarlyControlZeroArena,s2Step372EarlyControlArena,s2Step372EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step372EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step372EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step372EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step372EarlyControl_zero : compileHmrEqualityLog s2Step372EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step372EarlyControlLog.zeroWork=some (s2Step372EarlyControlZeroArena,s2Step372EarlyControlLog.zeroWork,s2Step372EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step372EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step372EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step372EarlyControl_logged : s2Step372EarlyControlPlan.Logged s2Step372EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 796 254 253 252 251 811 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step372EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step372EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step372EarlyControl_zero
  · exact s2Step372EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step372EarlyControl_flags
  · exact s2Step372EarlyControl_fit
  · exact s2Step372EarlyControl_history
  · exact s2Step372EarlyControl_sigma
  · exact s2Step372EarlyControl_branch

private theorem s2Step372EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step372EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 796 254 253 252 251 811 60 s2Step372EarlyControlLog=some s2Step372EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step372EarlyControlPlan s2Step372EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 796 254 253 252 251 811 60 s2Step372EarlyControl_logged

private def s2Step372EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<811) ∨ (812≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step372EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596],768⟩

private def s2Step372EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783],770⟩

private def s2Step372EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85],769⟩

private def s2Step372EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819],771⟩

private def s2Step372FrontBank : WindowBank := ⟨s2Step372EntryFRow,s2Step372EntryGRow,s2Step372EntryFvRow,s2Step372EntryGvRow⟩

private def s2Step372Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 797, 800, 768]

private def s2Step372Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 799, 769]

private def s2Step372Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826, 770]

private def s2Step372Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 789, 771]

private theorem s2Step372Counter_apart : Disjoint s2Step372HeadFvAfter.live s2Step372CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step372HeadFvAfter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step372Counter_borrowed : s2Step372HeadFvAfter.checkBorrow 4 s2Step372CounterWork=some s2Step372CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step372HeadFvAfter s2Step372CounterDuring s2Step372CounterWork.toFinset s2Step372Counter_bounded s2Step372Counter_apart rfl

private theorem s2Step372Counter_owned : (796::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step372HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step372HeadFvAfter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step372Counter_checked : compileHmrCounterStepLog s2Step372HeadFvAfter true 796 [772, 773, 774, 775, 776, 777] s2Step372CounterWork=some s2Step372CounterDuring := by
  have owned : ∀q∈796::[772, 773, 774, 775, 776, 777],q∈s2Step372HeadFvAfter.live := fun q hq => s2Step372Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step372Counter_borrowed

private theorem s2Step372EntryBank_incomingDistinct : ([s2Step372EntryFRow,s2Step372EntryGRow,s2Step372EntryFvRow,s2Step372EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step372EntryF_Incoming : rowsOwned s2Step372EntryFBefore [s2Step372EntryFRow,s2Step372EntryGRow,s2Step372EntryFvRow,s2Step372EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step372EntryFRow,s2Step372EntryGRow,s2Step372EntryFvRow,s2Step372EntryGvRow] 0 s2Step372EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step372EntryFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<811) ∨ (812≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step372EntryBank_outgoingOwned : rowsOwned s2Step372EntryGvAfter [s2Step372EntryFOut,s2Step372EntryGOut,s2Step372EntryFvOut,s2Step372EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step372EntryGvAfter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<811) ∨ (812≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step372EntryF_Outgoing : rowsOwned s2Step372EntryGvAfter [s2Step372EntryFOut,s2Step372EntryGOut,s2Step372EntryFvOut,s2Step372EntryGvOut] :=
  hmrRows_owned_drop s2Step372EntryGvAfter [s2Step372EntryFOut,s2Step372EntryGOut,s2Step372EntryFvOut,s2Step372EntryGvOut] 0 s2Step372EntryBank_outgoingOwned

private theorem s2Step372EntryF_distinct : (s2Step372EntryFRow.sign::s2Step372EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step372EntryF_owned : (s2Step372EntryFRow.sign::s2Step372EntryFRow.payload).toFinset⊆s2Step372EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step372EntryFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<811) ∨ (812≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step372EntryF_reserved : s2Step372EntryFBefore.reserve s2Step372EntryFFresh.toFinset=some s2Step372EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step372EntryFFresh,arenaWires]
  · norm_num [s2Step372EntryFBefore,s2Step372EntryFFresh,arenaWires]
  · ext q
    simp only [s2Step372EntryFAfter,s2Step372EntryFBefore,s2Step372EntryFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step372EntryF_checked : planRowResizeLog s2Step372EntryFBefore s2Step372EntryFRow 86 s2Step372EntryFFresh=
    some (s2Step372EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 797],768⟩,growRow 768 s2Step372EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step372EntryFBefore s2Step372EntryFAfter s2Step372EntryFRow 86 s2Step372EntryFFresh
    s2Step372EntryF_distinct s2Step372EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step372EntryF_reserved
  have rowEq : WindowRow.mk (s2Step372EntryFRow.payload++s2Step372EntryFFresh) s2Step372EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 797],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step372EntryFvAfter : Arena := s2Step372EntryFAfter

private def s2Step372EntryFvBefore : Arena := s2Step372EntryFAfter

private theorem s2Step372EntryFv_Incoming : rowsOwned s2Step372EntryFvBefore [s2Step372EntryFvRow,s2Step372EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step372EntryFRow,s2Step372EntryGRow,s2Step372EntryFvRow,s2Step372EntryGvRow] 2 s2Step372EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step372EntryFvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<811) ∨ (812≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step372EntryFv_Outgoing : rowsOwned s2Step372EntryGvAfter [s2Step372EntryFvOut,s2Step372EntryGvOut] :=
  hmrRows_owned_drop s2Step372EntryGvAfter [s2Step372EntryFOut,s2Step372EntryGOut,s2Step372EntryFvOut,s2Step372EntryGvOut] 2 s2Step372EntryBank_outgoingOwned

private theorem s2Step372EntryFv_distinct : (s2Step372EntryFvRow.sign::s2Step372EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step372EntryFv_owned : (s2Step372EntryFvRow.sign::s2Step372EntryFvRow.payload).toFinset⊆s2Step372EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step372EntryFvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<811) ∨ (812≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step372EntryFv_reserved : s2Step372EntryFvBefore.reserve s2Step372EntryFvFresh.toFinset=some s2Step372EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step372EntryFvFresh,arenaWires]
  · norm_num [s2Step372EntryFvBefore,s2Step372EntryFAfter,s2Step372EntryFvFresh,arenaWires]
  · simp only [s2Step372EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step372EntryFv_checked : planRowResizeLog s2Step372EntryFvBefore s2Step372EntryFvRow 202 s2Step372EntryFvFresh=
    some (s2Step372EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783],770⟩,growRow 770 s2Step372EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step372EntryFvBefore s2Step372EntryFvAfter s2Step372EntryFvRow 202 s2Step372EntryFvFresh
    s2Step372EntryFv_distinct s2Step372EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step372EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step372EntryFvRow.payload++s2Step372EntryFvFresh) s2Step372EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step372EntryGAfter : Arena := s2Step372EntryFAfter

private def s2Step372EntryGBefore : Arena := s2Step372EntryFAfter

private theorem s2Step372EntryG_Incoming : rowsOwned s2Step372EntryGBefore [s2Step372EntryGRow,s2Step372EntryFvRow,s2Step372EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step372EntryFRow,s2Step372EntryGRow,s2Step372EntryFvRow,s2Step372EntryGvRow] 1 s2Step372EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step372EntryGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<811) ∨ (812≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step372EntryG_Outgoing : rowsOwned s2Step372EntryGvAfter [s2Step372EntryGOut,s2Step372EntryFvOut,s2Step372EntryGvOut] :=
  hmrRows_owned_drop s2Step372EntryGvAfter [s2Step372EntryFOut,s2Step372EntryGOut,s2Step372EntryFvOut,s2Step372EntryGvOut] 1 s2Step372EntryBank_outgoingOwned

private theorem s2Step372EntryG_distinct : (s2Step372EntryGRow.sign::s2Step372EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step372EntryG_owned : (s2Step372EntryGRow.sign::s2Step372EntryGRow.payload).toFinset⊆s2Step372EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step372EntryGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<811) ∨ (812≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step372EntryG_reserved : s2Step372EntryGBefore.reserve s2Step372EntryGFresh.toFinset=some s2Step372EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step372EntryGFresh,arenaWires]
  · norm_num [s2Step372EntryGBefore,s2Step372EntryFAfter,s2Step372EntryGFresh,arenaWires]
  · simp only [s2Step372EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step372EntryG_checked : planRowResizeLog s2Step372EntryGBefore s2Step372EntryGRow 86 s2Step372EntryGFresh=
    some (s2Step372EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85],769⟩,growRow 769 s2Step372EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step372EntryGBefore s2Step372EntryGAfter s2Step372EntryGRow 86 s2Step372EntryGFresh
    s2Step372EntryG_distinct s2Step372EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step372EntryG_reserved
  have rowEq : WindowRow.mk (s2Step372EntryGRow.payload++s2Step372EntryGFresh) s2Step372EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step372EntryGvBefore : Arena := s2Step372EntryFAfter

private theorem s2Step372EntryGv_Incoming : rowsOwned s2Step372EntryGvBefore [s2Step372EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step372EntryFRow,s2Step372EntryGRow,s2Step372EntryFvRow,s2Step372EntryGvRow] 3 s2Step372EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step372EntryGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<811) ∨ (812≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step372EntryGv_Outgoing : rowsOwned s2Step372EntryGvAfter [s2Step372EntryGvOut] :=
  hmrRows_owned_drop s2Step372EntryGvAfter [s2Step372EntryFOut,s2Step372EntryGOut,s2Step372EntryFvOut,s2Step372EntryGvOut] 3 s2Step372EntryBank_outgoingOwned

private theorem s2Step372EntryGv_distinct : (s2Step372EntryGvRow.sign::s2Step372EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step372EntryGv_owned : (s2Step372EntryGvRow.sign::s2Step372EntryGvRow.payload).toFinset⊆s2Step372EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step372EntryGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<811) ∨ (812≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step372EntryGv_reserved : s2Step372EntryGvBefore.reserve s2Step372EntryGvFresh.toFinset=some s2Step372EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step372EntryGvFresh,arenaWires]
  · norm_num [s2Step372EntryGvBefore,s2Step372EntryFAfter,s2Step372EntryGvFresh,arenaWires]
  · simp only [s2Step372EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step372EntryGv_checked : planRowResizeLog s2Step372EntryGvBefore s2Step372EntryGvRow 202 s2Step372EntryGvFresh=
    some (s2Step372EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819],771⟩,growRow 771 s2Step372EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step372EntryGvBefore s2Step372EntryGvAfter s2Step372EntryGvRow 202 s2Step372EntryGvFresh
    s2Step372EntryGv_distinct s2Step372EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step372EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step372EntryGvRow.payload++s2Step372EntryGvFresh) s2Step372EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step372EntryBank_rows : planWindowRowsLog s2Step372EntryFBefore [(s2Step372EntryFRow,86),(s2Step372EntryGRow,86),(s2Step372EntryFvRow,202),(s2Step372EntryGvRow,202)] [s2Step372EntryFFresh,s2Step372EntryGFresh,s2Step372EntryFvFresh,s2Step372EntryGvFresh]=
    some (s2Step372EntryGvAfter,[s2Step372EntryFOut,s2Step372EntryGOut,s2Step372EntryFvOut,s2Step372EntryGvOut],(growRow 768 s2Step372EntryFFresh ++ (growRow 769 s2Step372EntryGFresh ++ (growRow 770 s2Step372EntryFvFresh ++ (growRow 771 s2Step372EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step372EntryGvAfter [] []=some (s2Step372EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step372EntryGvBefore s2Step372EntryGvAfter s2Step372EntryGvAfter
    s2Step372EntryGvRow s2Step372EntryGvOut 202 s2Step372EntryGvFresh [] [] []
    (growRow 771 s2Step372EntryGvFresh) ([]) s2Step372EntryGv_Incoming s2Step372EntryGv_checked h4 s2Step372EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step372EntryFvBefore s2Step372EntryFvAfter s2Step372EntryGvAfter
    s2Step372EntryFvRow s2Step372EntryFvOut 202 s2Step372EntryFvFresh [(s2Step372EntryGvRow,202)] [s2Step372EntryGvFresh] [s2Step372EntryGvOut]
    (growRow 770 s2Step372EntryFvFresh) ((growRow 771 s2Step372EntryGvFresh ++ [])) s2Step372EntryFv_Incoming s2Step372EntryFv_checked h3 s2Step372EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step372EntryGBefore s2Step372EntryGAfter s2Step372EntryGvAfter
    s2Step372EntryGRow s2Step372EntryGOut 86 s2Step372EntryGFresh [(s2Step372EntryFvRow,202),(s2Step372EntryGvRow,202)] [s2Step372EntryFvFresh,s2Step372EntryGvFresh] [s2Step372EntryFvOut,s2Step372EntryGvOut]
    (growRow 769 s2Step372EntryGFresh) ((growRow 770 s2Step372EntryFvFresh ++ (growRow 771 s2Step372EntryGvFresh ++ []))) s2Step372EntryG_Incoming s2Step372EntryG_checked h2 s2Step372EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step372EntryFBefore s2Step372EntryFAfter s2Step372EntryGvAfter
    s2Step372EntryFRow s2Step372EntryFOut 86 s2Step372EntryFFresh [(s2Step372EntryGRow,86),(s2Step372EntryFvRow,202),(s2Step372EntryGvRow,202)] [s2Step372EntryGFresh,s2Step372EntryFvFresh,s2Step372EntryGvFresh] [s2Step372EntryGOut,s2Step372EntryFvOut,s2Step372EntryGvOut]
    (growRow 768 s2Step372EntryFFresh) ((growRow 769 s2Step372EntryGFresh ++ (growRow 770 s2Step372EntryFvFresh ++ (growRow 771 s2Step372EntryGvFresh ++ [])))) s2Step372EntryF_Incoming s2Step372EntryF_checked h1 s2Step372EntryF_Outgoing
  exact h0

private theorem s2Step372EntryBank_checked : compileHmrBankResizeLog .entry s2Step372EntryFBefore ⟨s2Step372EntryFRow,s2Step372EntryGRow,s2Step372EntryFvRow,s2Step372EntryGvRow⟩ ⟨86,86,202,202⟩ [s2Step372EntryFFresh,s2Step372EntryGFresh,s2Step372EntryFvFresh,s2Step372EntryGvFresh]=
    some (s2Step372EntryGvAfter,⟨s2Step372EntryFOut,s2Step372EntryGOut,s2Step372EntryFvOut,s2Step372EntryGvOut⟩,(growRow 768 s2Step372EntryFFresh ++ (growRow 769 s2Step372EntryGFresh ++ (growRow 770 s2Step372EntryFvFresh ++ (growRow 771 s2Step372EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step372EntryBank_rows]
  rfl

private def s2Step372ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<85) ∨ (86≤q ∧ q<785) ∨ (786≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step372ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<85) ∨ (86≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step372ExitFBefore : Arena := s2Step372ExitGAfter

private def s2Step372ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 797, 800],768⟩

private def s2Step372ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826],770⟩

private def s2Step372ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 799],769⟩

private def s2Step372ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 789],771⟩

private theorem s2Step372ExitBank_incomingDistinct : ([s2Step372ExitGRow,s2Step372ExitFRow,s2Step372ExitFvRow,s2Step372ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step372ExitF_Incoming : rowsOwned s2Step372ExitFBefore [s2Step372ExitFRow,s2Step372ExitFvRow,s2Step372ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step372ExitGRow,s2Step372ExitFRow,s2Step372ExitFvRow,s2Step372ExitGvRow] 1 s2Step372ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step372ExitFBefore (fun q => (0≤q ∧ q<85) ∨ (86≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step372ExitBank_outgoingOwned : rowsOwned s2Step372ExitGvAfter [s2Step372ExitGOut,s2Step372ExitFOut,s2Step372ExitFvOut,s2Step372ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step372ExitGvAfter (fun q => (0≤q ∧ q<85) ∨ (86≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step372ExitF_Outgoing : rowsOwned s2Step372ExitGvAfter [s2Step372ExitFOut,s2Step372ExitFvOut,s2Step372ExitGvOut] :=
  hmrRows_owned_drop s2Step372ExitGvAfter [s2Step372ExitGOut,s2Step372ExitFOut,s2Step372ExitFvOut,s2Step372ExitGvOut] 1 s2Step372ExitBank_outgoingOwned

private theorem s2Step372ExitF_distinct : (s2Step372ExitFRow.sign::s2Step372ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step372ExitF_owned : (s2Step372ExitFRow.sign::s2Step372ExitFRow.payload).toFinset⊆s2Step372ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step372ExitFBefore (fun q => (0≤q ∧ q<85) ∨ (86≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step372ExitF_retired : s2Step372ExitFBefore.retireSet s2Step372ExitFExtra.toFinset=s2Step372ExitFAfter := by
  unfold Arena.retireSet s2Step372ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step372ExitFBefore,s2Step372ExitGAfter,s2Step372ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step372ExitF_checked : planRowResizeLog s2Step372ExitFBefore s2Step372ExitFRow 85 []=
    some (s2Step372ExitFAfter,s2Step372ExitFOut,shrinkRow 768 s2Step372ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step372ExitFBefore s2Step372ExitFRow 85 s2Step372ExitF_distinct s2Step372ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step372ExitFRow.payload.take 85) s2Step372ExitFRow.sign=s2Step372ExitFOut := by decide +kernel
  have hi : s2Step372ExitFRow.payload.drop 85=s2Step372ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step372ExitF_retired] at result
  exact result

private def s2Step372ExitFvAfter : Arena := s2Step372ExitFAfter

private def s2Step372ExitFvBefore : Arena := s2Step372ExitFAfter

private theorem s2Step372ExitFv_Incoming : rowsOwned s2Step372ExitFvBefore [s2Step372ExitFvRow,s2Step372ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step372ExitGRow,s2Step372ExitFRow,s2Step372ExitFvRow,s2Step372ExitGvRow] 2 s2Step372ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step372ExitFvBefore (fun q => (0≤q ∧ q<85) ∨ (86≤q ∧ q<785) ∨ (786≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step372ExitFv_Outgoing : rowsOwned s2Step372ExitGvAfter [s2Step372ExitFvOut,s2Step372ExitGvOut] :=
  hmrRows_owned_drop s2Step372ExitGvAfter [s2Step372ExitGOut,s2Step372ExitFOut,s2Step372ExitFvOut,s2Step372ExitGvOut] 2 s2Step372ExitBank_outgoingOwned

private theorem s2Step372ExitFv_distinct : (s2Step372ExitFvRow.sign::s2Step372ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step372ExitFv_owned : (s2Step372ExitFvRow.sign::s2Step372ExitFvRow.payload).toFinset⊆s2Step372ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step372ExitFvBefore (fun q => (0≤q ∧ q<85) ∨ (86≤q ∧ q<785) ∨ (786≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step372ExitFv_reserved : s2Step372ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step372ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step372ExitFv_checked : planRowResizeLog s2Step372ExitFvBefore s2Step372ExitFvRow 203 []=
    some (s2Step372ExitFvAfter,s2Step372ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step372ExitFvBefore s2Step372ExitFvAfter s2Step372ExitFvRow 203 []
    s2Step372ExitFv_distinct s2Step372ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step372ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step372ExitFvRow.payload++[]) s2Step372ExitFvRow.sign=s2Step372ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step372ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private theorem s2Step372ExitG_Incoming : rowsOwned s2Step372ExitGBefore [s2Step372ExitGRow,s2Step372ExitFRow,s2Step372ExitFvRow,s2Step372ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step372ExitGRow,s2Step372ExitFRow,s2Step372ExitFvRow,s2Step372ExitGvRow] 0 s2Step372ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step372ExitGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step372ExitG_Outgoing : rowsOwned s2Step372ExitGvAfter [s2Step372ExitGOut,s2Step372ExitFOut,s2Step372ExitFvOut,s2Step372ExitGvOut] :=
  hmrRows_owned_drop s2Step372ExitGvAfter [s2Step372ExitGOut,s2Step372ExitFOut,s2Step372ExitFvOut,s2Step372ExitGvOut] 0 s2Step372ExitBank_outgoingOwned

private theorem s2Step372ExitG_distinct : (s2Step372ExitGRow.sign::s2Step372ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step372ExitG_owned : (s2Step372ExitGRow.sign::s2Step372ExitGRow.payload).toFinset⊆s2Step372ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step372ExitGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step372ExitG_retired : s2Step372ExitGBefore.retireSet s2Step372ExitGExtra.toFinset=s2Step372ExitGAfter := by
  unfold Arena.retireSet s2Step372ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step372ExitGBefore,s2Step372ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step372ExitG_checked : planRowResizeLog s2Step372ExitGBefore s2Step372ExitGRow 85 []=
    some (s2Step372ExitGAfter,s2Step372ExitGOut,shrinkRow 769 s2Step372ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step372ExitGBefore s2Step372ExitGRow 85 s2Step372ExitG_distinct s2Step372ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step372ExitGRow.payload.take 85) s2Step372ExitGRow.sign=s2Step372ExitGOut := by decide +kernel
  have hi : s2Step372ExitGRow.payload.drop 85=s2Step372ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step372ExitG_retired] at result
  exact result

private def s2Step372ExitGvBefore : Arena := s2Step372ExitFAfter

private theorem s2Step372ExitGv_Incoming : rowsOwned s2Step372ExitGvBefore [s2Step372ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step372ExitGRow,s2Step372ExitFRow,s2Step372ExitFvRow,s2Step372ExitGvRow] 3 s2Step372ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step372ExitGvBefore (fun q => (0≤q ∧ q<85) ∨ (86≤q ∧ q<785) ∨ (786≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step372ExitGv_Outgoing : rowsOwned s2Step372ExitGvAfter [s2Step372ExitGvOut] :=
  hmrRows_owned_drop s2Step372ExitGvAfter [s2Step372ExitGOut,s2Step372ExitFOut,s2Step372ExitFvOut,s2Step372ExitGvOut] 3 s2Step372ExitBank_outgoingOwned

private theorem s2Step372ExitGv_distinct : (s2Step372ExitGvRow.sign::s2Step372ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step372ExitGv_owned : (s2Step372ExitGvRow.sign::s2Step372ExitGvRow.payload).toFinset⊆s2Step372ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step372ExitGvBefore (fun q => (0≤q ∧ q<85) ∨ (86≤q ∧ q<785) ∨ (786≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step372ExitGv_retired : s2Step372ExitGvBefore.retireSet s2Step372ExitGvExtra.toFinset=s2Step372ExitGvAfter := by
  unfold Arena.retireSet s2Step372ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step372ExitGvBefore,s2Step372ExitFAfter,s2Step372ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step372ExitGv_checked : planRowResizeLog s2Step372ExitGvBefore s2Step372ExitGvRow 202 []=
    some (s2Step372ExitGvAfter,s2Step372ExitGvOut,shrinkRow 771 s2Step372ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step372ExitGvBefore s2Step372ExitGvRow 202 s2Step372ExitGv_distinct s2Step372ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step372ExitGvRow.payload.take 202) s2Step372ExitGvRow.sign=s2Step372ExitGvOut := by decide +kernel
  have hi : s2Step372ExitGvRow.payload.drop 202=s2Step372ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step372ExitGv_retired] at result
  exact result

private theorem s2Step372ExitBank_rows : planWindowRowsLog s2Step372ExitGBefore [(s2Step372ExitGRow,85),(s2Step372ExitFRow,85),(s2Step372ExitFvRow,203),(s2Step372ExitGvRow,202)] [[],[],[],[]]=
    some (s2Step372ExitGvAfter,[s2Step372ExitGOut,s2Step372ExitFOut,s2Step372ExitFvOut,s2Step372ExitGvOut],(shrinkRow 769 s2Step372ExitGExtra ++ (shrinkRow 768 s2Step372ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step372ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step372ExitGvAfter [] []=some (s2Step372ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step372ExitGvBefore s2Step372ExitGvAfter s2Step372ExitGvAfter
    s2Step372ExitGvRow s2Step372ExitGvOut 202 [] [] [] []
    (shrinkRow 771 s2Step372ExitGvExtra) ([]) s2Step372ExitGv_Incoming s2Step372ExitGv_checked h4 s2Step372ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step372ExitFvBefore s2Step372ExitFvAfter s2Step372ExitGvAfter
    s2Step372ExitFvRow s2Step372ExitFvOut 203 [] [(s2Step372ExitGvRow,202)] [[]] [s2Step372ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step372ExitGvExtra ++ [])) s2Step372ExitFv_Incoming s2Step372ExitFv_checked h3 s2Step372ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step372ExitFBefore s2Step372ExitFAfter s2Step372ExitGvAfter
    s2Step372ExitFRow s2Step372ExitFOut 85 [] [(s2Step372ExitFvRow,203),(s2Step372ExitGvRow,202)] [[],[]] [s2Step372ExitFvOut,s2Step372ExitGvOut]
    (shrinkRow 768 s2Step372ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step372ExitGvExtra ++ []))) s2Step372ExitF_Incoming s2Step372ExitF_checked h2 s2Step372ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step372ExitGBefore s2Step372ExitGAfter s2Step372ExitGvAfter
    s2Step372ExitGRow s2Step372ExitGOut 85 [] [(s2Step372ExitFRow,85),(s2Step372ExitFvRow,203),(s2Step372ExitGvRow,202)] [[],[],[]] [s2Step372ExitFOut,s2Step372ExitFvOut,s2Step372ExitGvOut]
    (shrinkRow 769 s2Step372ExitGExtra) ((shrinkRow 768 s2Step372ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step372ExitGvExtra ++ [])))) s2Step372ExitG_Incoming s2Step372ExitG_checked h1 s2Step372ExitG_Outgoing
  exact h0

private theorem s2Step372ExitBank_checked : compileHmrBankResizeLog .exit s2Step372ExitGBefore ⟨s2Step372ExitFRow,s2Step372ExitGRow,s2Step372ExitFvRow,s2Step372ExitGvRow⟩ ⟨85,85,203,202⟩ [[],[],[],[]]=
    some (s2Step372ExitGvAfter,⟨s2Step372ExitFOut,s2Step372ExitGOut,s2Step372ExitFvOut,s2Step372ExitGvOut⟩,(shrinkRow 769 s2Step372ExitGExtra ++ (shrinkRow 768 s2Step372ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step372ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step372ExitBank_rows]
  rfl

private theorem s2Step372Add0_apart : Disjoint s2Step372Add0Arena.live s2Step372Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step372Add0Arena (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step372Add0_card : s2Step372Add0Arena.live.card=910 := by
  decide +kernel

private theorem s2Step372Add0_borrowed : s2Step372Add0Arena.checkBorrow (hmrHybridCount s2Step372Add0Arena s2Step372Add0B.length) s2Step372Add0Work=some s2Step372Add0During := by
  have len : s2Step372Add0Work.length=hmrHybridCount s2Step372Add0Arena s2Step372Add0B.length := by
    rw [hmrHybridCount,s2Step372Add0_card]
    decide +kernel
  have nd : s2Step372Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step372Add0Arena s2Step372Add0During s2Step372Add0Work.toFinset s2Step372Add0_bounded s2Step372Add0_apart rfl

private theorem s2Step372Add0_distinct : (785::811::802::(s2Step372Add0A++s2Step372Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step372Add0_owned : (785::811::802::(s2Step372Add0A++s2Step372Add0B)).toFinset⊆s2Step372Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step372Add0Arena (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step372Add0_checked : compileHmrHybridCinLog s2Step372Add0Arena 811 785 802 s2Step372Add0A s2Step372Add0B s2Step372Add0Work=some s2Step372Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step372Add0Arena s2Step372Add0During 811 785 802 s2Step372Add0A s2Step372Add0B s2Step372Add0Work
    (by decide +kernel) (by decide +kernel) s2Step372Add0_distinct
    (fun q hq => s2Step372Add0_owned (List.mem_toFinset.mpr hq)) s2Step372Add0_borrowed

private theorem s2Step372Add1_apart : Disjoint s2Step372Add1Arena.live s2Step372Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step372Add1Arena (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step372Add1_card : s2Step372Add1Arena.live.card=910 := by
  decide +kernel

private theorem s2Step372Add1_borrowed : s2Step372Add1Arena.checkBorrow (hmrHybridCount s2Step372Add1Arena s2Step372Add1B.length) s2Step372Add1Work=some s2Step372Add1During := by
  have len : s2Step372Add1Work.length=hmrHybridCount s2Step372Add1Arena s2Step372Add1B.length := by
    rw [hmrHybridCount,s2Step372Add1_card]
    decide +kernel
  have nd : s2Step372Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step372Add1Arena s2Step372Add1During s2Step372Add1Work.toFinset s2Step372Add1_bounded s2Step372Add1_apart rfl

private theorem s2Step372Add1_distinct : (785::811::802::(s2Step372Add1A++s2Step372Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step372Add1_owned : (785::811::802::(s2Step372Add1A++s2Step372Add1B)).toFinset⊆s2Step372Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step372Add1Arena (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step372Add1_checked : compileHmrHybridCinLog s2Step372Add1Arena 811 785 802 s2Step372Add1A s2Step372Add1B s2Step372Add1Work=some s2Step372Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step372Add1Arena s2Step372Add1During 811 785 802 s2Step372Add1A s2Step372Add1B s2Step372Add1Work
    (by decide +kernel) (by decide +kernel) s2Step372Add1_distinct
    (fun q hq => s2Step372Add1_owned (List.mem_toFinset.mpr hq)) s2Step372Add1_borrowed

private theorem s2Step372F4_apart : Disjoint (s2Step372Add0A++s2Step372Add0B).toFinset (s2Step372Add1A++s2Step372Add1B).toFinset := by
  have nd : ((s2Step372Add0A++s2Step372Add0B)++(s2Step372Add1A++s2Step372Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step372F4_carry : s2Step372F4FlagArena.checkBorrow 1 [802]=some s2Step372Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step372F4FlagArena,s2Step372HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step372F4FlagArena,s2Step372HeadFvAfter,s2Step372Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step372F4_distinct : (796::811::785::802::((s2Step372Add0A++s2Step372Add1A)++(s2Step372Add0B++s2Step372Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step372F4_flag : s2Step372HeadFvAfter.checkBorrow 1 [785]=some s2Step372F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step372HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step372F4_owned : (796::811::((s2Step372Add0A++s2Step372Add1A)++(s2Step372Add0B++s2Step372Add1B))).toFinset⊆s2Step372HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step372HeadFvAfter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step372F4_checked : compileHmrHybridF4Log s2Step372HeadFvAfter 796 811 s2Step372Add0A s2Step372Add0B s2Step372Add1A s2Step372Add1B [785] [802] s2Step372Add0Work s2Step372Add1Work=some s2Step372F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step372HeadFvAfter s2Step372F4FlagArena s2Step372Add0Arena s2Step372Add0During s2Step372Add1During 796 811
    s2Step372Add0A s2Step372Add0B s2Step372Add1A s2Step372Add1B [785] [802] s2Step372Add0Work s2Step372Add1Work
    (fun q hq => s2Step372F4_owned (List.mem_toFinset.mpr hq)) s2Step372F4_flag s2Step372F4_carry
    s2Step372F4_distinct s2Step372F4_apart s2Step372Add0_checked s2Step372Add1_checked

private theorem s2Step372Front_branch : s2Step372FrontSigmaArena.checkBorrow 1 [811]=some s2Step372HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step372FrontSigmaArena,s2Step372EntryGvAfter,s2Step372EntryFAfter,arenaWires]
  · ext q
    simp only [s2Step372FrontSigmaArena,s2Step372EntryGvAfter,s2Step372EntryFAfter,s2Step372HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step372Front_entry : HmrFrontEntryValid s2Step372EntryFBefore s2Step372FrontBank 86 202 ⟨85,85,203,202⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step372FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step372EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step372EntryFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<811) ∨ (812≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step372FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step372Front_sigma : s2Step372EntryGvAfter.checkBorrow 1 [796]=some s2Step372FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step372EntryGvAfter,s2Step372EntryFAfter,arenaWires]
  · rfl

private def s2Step372HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<802) ∨ (803≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step372HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step372HeadFBefore : Arena := s2Step372HeadGAfter

private def s2Step372HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 797],768⟩

private def s2Step372HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783],770⟩

private def s2Step372HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85],769⟩

private def s2Step372HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819],771⟩

private theorem s2Step372HeadBank_incomingDistinct : ([s2Step372HeadGRow,s2Step372HeadFRow,s2Step372HeadGvRow,s2Step372HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step372HeadF_Incoming : rowsOwned s2Step372HeadFBefore [s2Step372HeadFRow,s2Step372HeadGvRow,s2Step372HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step372HeadGRow,s2Step372HeadFRow,s2Step372HeadGvRow,s2Step372HeadFvRow] 1 s2Step372HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step372HeadFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step372HeadBank_outgoingOwned : rowsOwned s2Step372HeadFvAfter [s2Step372HeadGOut,s2Step372HeadFOut,s2Step372HeadGvOut,s2Step372HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step372HeadFvAfter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step372HeadF_Outgoing : rowsOwned s2Step372HeadFvAfter [s2Step372HeadFOut,s2Step372HeadGvOut,s2Step372HeadFvOut] :=
  hmrRows_owned_drop s2Step372HeadFvAfter [s2Step372HeadGOut,s2Step372HeadFOut,s2Step372HeadGvOut,s2Step372HeadFvOut] 1 s2Step372HeadBank_outgoingOwned

private theorem s2Step372HeadF_distinct : (s2Step372HeadFRow.sign::s2Step372HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step372HeadF_owned : (s2Step372HeadFRow.sign::s2Step372HeadFRow.payload).toFinset⊆s2Step372HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step372HeadFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step372HeadF_reserved : s2Step372HeadFBefore.reserve s2Step372HeadFFresh.toFinset=some s2Step372HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step372HeadFFresh,arenaWires]
  · norm_num [s2Step372HeadFBefore,s2Step372HeadGAfter,s2Step372HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step372HeadFAfter,s2Step372HeadFBefore,s2Step372HeadGAfter,s2Step372HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step372HeadF_checked : planRowResizeLog s2Step372HeadFBefore s2Step372HeadFRow 87 s2Step372HeadFFresh=
    some (s2Step372HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 797, 800],768⟩,growRow 768 s2Step372HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step372HeadFBefore s2Step372HeadFAfter s2Step372HeadFRow 87 s2Step372HeadFFresh
    s2Step372HeadF_distinct s2Step372HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step372HeadF_reserved
  have rowEq : WindowRow.mk (s2Step372HeadFRow.payload++s2Step372HeadFFresh) s2Step372HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 797, 800],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step372HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<802) ∨ (803≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step372HeadFvBefore : Arena := s2Step372HeadGvAfter

private theorem s2Step372HeadFv_Incoming : rowsOwned s2Step372HeadFvBefore [s2Step372HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step372HeadGRow,s2Step372HeadFRow,s2Step372HeadGvRow,s2Step372HeadFvRow] 3 s2Step372HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step372HeadFvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<802) ∨ (803≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step372HeadFv_Outgoing : rowsOwned s2Step372HeadFvAfter [s2Step372HeadFvOut] :=
  hmrRows_owned_drop s2Step372HeadFvAfter [s2Step372HeadGOut,s2Step372HeadFOut,s2Step372HeadGvOut,s2Step372HeadFvOut] 3 s2Step372HeadBank_outgoingOwned

private theorem s2Step372HeadFv_distinct : (s2Step372HeadFvRow.sign::s2Step372HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step372HeadFv_owned : (s2Step372HeadFvRow.sign::s2Step372HeadFvRow.payload).toFinset⊆s2Step372HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step372HeadFvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<802) ∨ (803≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step372HeadFv_reserved : s2Step372HeadFvBefore.reserve s2Step372HeadFvFresh.toFinset=some s2Step372HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step372HeadFvFresh,arenaWires]
  · norm_num [s2Step372HeadFvBefore,s2Step372HeadGvAfter,s2Step372HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step372HeadFvAfter,s2Step372HeadFvBefore,s2Step372HeadGvAfter,s2Step372HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step372HeadFv_checked : planRowResizeLog s2Step372HeadFvBefore s2Step372HeadFvRow 203 s2Step372HeadFvFresh=
    some (s2Step372HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826],770⟩,growRow 770 s2Step372HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step372HeadFvBefore s2Step372HeadFvAfter s2Step372HeadFvRow 203 s2Step372HeadFvFresh
    s2Step372HeadFv_distinct s2Step372HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step372HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step372HeadFvRow.payload++s2Step372HeadFvFresh) s2Step372HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 826],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step372HeadG_Incoming : rowsOwned s2Step372HeadGBefore [s2Step372HeadGRow,s2Step372HeadFRow,s2Step372HeadGvRow,s2Step372HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step372HeadGRow,s2Step372HeadFRow,s2Step372HeadGvRow,s2Step372HeadFvRow] 0 s2Step372HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step372HeadGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step372HeadG_Outgoing : rowsOwned s2Step372HeadFvAfter [s2Step372HeadGOut,s2Step372HeadFOut,s2Step372HeadGvOut,s2Step372HeadFvOut] :=
  hmrRows_owned_drop s2Step372HeadFvAfter [s2Step372HeadGOut,s2Step372HeadFOut,s2Step372HeadGvOut,s2Step372HeadFvOut] 0 s2Step372HeadBank_outgoingOwned

private theorem s2Step372HeadG_distinct : (s2Step372HeadGRow.sign::s2Step372HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step372HeadG_owned : (s2Step372HeadGRow.sign::s2Step372HeadGRow.payload).toFinset⊆s2Step372HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step372HeadGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step372HeadG_reserved : s2Step372HeadGBefore.reserve s2Step372HeadGFresh.toFinset=some s2Step372HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step372HeadGFresh,arenaWires]
  · norm_num [s2Step372HeadGBefore,s2Step372HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step372HeadGAfter,s2Step372HeadGBefore,s2Step372HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step372HeadG_checked : planRowResizeLog s2Step372HeadGBefore s2Step372HeadGRow 87 s2Step372HeadGFresh=
    some (s2Step372HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 799],769⟩,growRow 769 s2Step372HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step372HeadGBefore s2Step372HeadGAfter s2Step372HeadGRow 87 s2Step372HeadGFresh
    s2Step372HeadG_distinct s2Step372HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step372HeadG_reserved
  have rowEq : WindowRow.mk (s2Step372HeadGRow.payload++s2Step372HeadGFresh) s2Step372HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 799],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step372HeadGvBefore : Arena := s2Step372HeadFAfter

private theorem s2Step372HeadGv_Incoming : rowsOwned s2Step372HeadGvBefore [s2Step372HeadGvRow,s2Step372HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step372HeadGRow,s2Step372HeadFRow,s2Step372HeadGvRow,s2Step372HeadFvRow] 2 s2Step372HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step372HeadGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<802) ∨ (803≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step372HeadGv_Outgoing : rowsOwned s2Step372HeadFvAfter [s2Step372HeadGvOut,s2Step372HeadFvOut] :=
  hmrRows_owned_drop s2Step372HeadFvAfter [s2Step372HeadGOut,s2Step372HeadFOut,s2Step372HeadGvOut,s2Step372HeadFvOut] 2 s2Step372HeadBank_outgoingOwned

private theorem s2Step372HeadGv_distinct : (s2Step372HeadGvRow.sign::s2Step372HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step372HeadGv_owned : (s2Step372HeadGvRow.sign::s2Step372HeadGvRow.payload).toFinset⊆s2Step372HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step372HeadGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<802) ∨ (803≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step372HeadGv_reserved : s2Step372HeadGvBefore.reserve s2Step372HeadGvFresh.toFinset=some s2Step372HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step372HeadGvFresh,arenaWires]
  · norm_num [s2Step372HeadGvBefore,s2Step372HeadFAfter,s2Step372HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step372HeadGvAfter,s2Step372HeadGvBefore,s2Step372HeadFAfter,s2Step372HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step372HeadGv_checked : planRowResizeLog s2Step372HeadGvBefore s2Step372HeadGvRow 203 s2Step372HeadGvFresh=
    some (s2Step372HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 789],771⟩,growRow 771 s2Step372HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step372HeadGvBefore s2Step372HeadGvAfter s2Step372HeadGvRow 203 s2Step372HeadGvFresh
    s2Step372HeadGv_distinct s2Step372HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step372HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step372HeadGvRow.payload++s2Step372HeadGvFresh) s2Step372HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 789],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step372HeadBank_rows : planWindowRowsLog s2Step372HeadGBefore [(s2Step372HeadGRow,87),(s2Step372HeadFRow,87),(s2Step372HeadGvRow,203),(s2Step372HeadFvRow,203)] [s2Step372HeadGFresh,s2Step372HeadFFresh,s2Step372HeadGvFresh,s2Step372HeadFvFresh]=
    some (s2Step372HeadFvAfter,[s2Step372HeadGOut,s2Step372HeadFOut,s2Step372HeadGvOut,s2Step372HeadFvOut],(growRow 769 s2Step372HeadGFresh ++ (growRow 768 s2Step372HeadFFresh ++ (growRow 771 s2Step372HeadGvFresh ++ (growRow 770 s2Step372HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step372HeadFvAfter [] []=some (s2Step372HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step372HeadFvBefore s2Step372HeadFvAfter s2Step372HeadFvAfter
    s2Step372HeadFvRow s2Step372HeadFvOut 203 s2Step372HeadFvFresh [] [] []
    (growRow 770 s2Step372HeadFvFresh) ([]) s2Step372HeadFv_Incoming s2Step372HeadFv_checked h4 s2Step372HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step372HeadGvBefore s2Step372HeadGvAfter s2Step372HeadFvAfter
    s2Step372HeadGvRow s2Step372HeadGvOut 203 s2Step372HeadGvFresh [(s2Step372HeadFvRow,203)] [s2Step372HeadFvFresh] [s2Step372HeadFvOut]
    (growRow 771 s2Step372HeadGvFresh) ((growRow 770 s2Step372HeadFvFresh ++ [])) s2Step372HeadGv_Incoming s2Step372HeadGv_checked h3 s2Step372HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step372HeadFBefore s2Step372HeadFAfter s2Step372HeadFvAfter
    s2Step372HeadFRow s2Step372HeadFOut 87 s2Step372HeadFFresh [(s2Step372HeadGvRow,203),(s2Step372HeadFvRow,203)] [s2Step372HeadGvFresh,s2Step372HeadFvFresh] [s2Step372HeadGvOut,s2Step372HeadFvOut]
    (growRow 768 s2Step372HeadFFresh) ((growRow 771 s2Step372HeadGvFresh ++ (growRow 770 s2Step372HeadFvFresh ++ []))) s2Step372HeadF_Incoming s2Step372HeadF_checked h2 s2Step372HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step372HeadGBefore s2Step372HeadGAfter s2Step372HeadFvAfter
    s2Step372HeadGRow s2Step372HeadGOut 87 s2Step372HeadGFresh [(s2Step372HeadFRow,87),(s2Step372HeadGvRow,203),(s2Step372HeadFvRow,203)] [s2Step372HeadFFresh,s2Step372HeadGvFresh,s2Step372HeadFvFresh] [s2Step372HeadFOut,s2Step372HeadGvOut,s2Step372HeadFvOut]
    (growRow 769 s2Step372HeadGFresh) ((growRow 768 s2Step372HeadFFresh ++ (growRow 771 s2Step372HeadGvFresh ++ (growRow 770 s2Step372HeadFvFresh ++ [])))) s2Step372HeadG_Incoming s2Step372HeadG_checked h1 s2Step372HeadG_Outgoing
  exact h0

private theorem s2Step372HeadBank_checked : compileHmrBankResizeLog .headroom s2Step372HeadGBefore ⟨s2Step372HeadFRow,s2Step372HeadGRow,s2Step372HeadFvRow,s2Step372HeadGvRow⟩ ⟨87,87,203,203⟩ [s2Step372HeadGFresh,s2Step372HeadFFresh,s2Step372HeadGvFresh,s2Step372HeadFvFresh]=
    some (s2Step372HeadFvAfter,⟨s2Step372HeadFOut,s2Step372HeadGOut,s2Step372HeadFvOut,s2Step372HeadGvOut⟩,(growRow 769 s2Step372HeadGFresh ++ (growRow 768 s2Step372HeadFFresh ++ (growRow 771 s2Step372HeadGvFresh ++ (growRow 770 s2Step372HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step372HeadBank_rows]
  rfl

private theorem s2Step372Front_checked : compileHmrSourceFrontLog s2Step372EntryFBefore s2Step372FrontBank 86 202 ⟨85,85,203,202⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step372FrontLog=some s2Step372FrontPlan := by
  have pairEq : s2Step372FrontPair=⟨s2Step372HeadFRow,s2Step372HeadGRow,s2Step372HeadFvRow,s2Step372HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step372FrontHead=⟨s2Step372ExitFRow,s2Step372ExitGRow,s2Step372ExitFvRow,s2Step372ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step372Add0A=s2Step372FrontHead.f.wires := by decide +kernel
  have gEq : s2Step372Add0B=s2Step372FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step372Add1A=s2Step372FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step372Add1B=s2Step372FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step372EntryFBefore s2Step372FrontBank 86 202 ⟨85,85,203,202⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step372FrontLog s2Step372FrontPlan
  · exact s2Step372Front_entry
  · exact s2Step372EntryBank_checked
  · exact s2Step372Front_sigma
  · rfl
  · exact s2Step372Front_branch
  · rfl
  · simpa only [s2Step372FrontPlan,pairEq] using s2Step372HeadBank_checked
  · simpa only [s2Step372FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step372F4_checked
  · exact s2Step372Counter_checked
  · rfl
  · simpa only [s2Step372FrontPlan,headEq] using s2Step372ExitBank_checked

private theorem s2Step372Complete_explicit_checked : compileHmrEarlyStepLog s2Step372EntryFBefore s2Step372FrontBank 86 202 ⟨85,85,203,202⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step372CompleteLog=some s2Step372CompletePlan := by
  let Q := s2Step372EarlyControlPlan
  have hq := s2Step372EarlyControl_plan_checked
  have fv1 : s2Step372CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step372CompleteOut.fv.payload[2]?.getD s2Step372CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step372CompleteOut.fv.payload[3]?.getD s2Step372CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step372CompleteOut.fv.payload[4]?.getD s2Step372CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step372EntryFBefore s2Step372EarlyControlArena s2Step372FrontBank 86 202 ⟨85,85,203,202⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step372CompleteLog s2Step372FrontPlan Q
    s2Step372Front_checked s2Step372Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step372Complete_owned s2Step372Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step372EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 796 s2Step372CompleteOut.fv.second (s2Step372CompleteOut.fv.payload[2]?.getD s2Step372CompleteOut.fv.sign) (s2Step372CompleteOut.fv.payload[3]?.getD s2Step372CompleteOut.fv.sign) (s2Step372CompleteOut.fv.payload[4]?.getD s2Step372CompleteOut.fv.sign) 811 60 s2Step372EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep372Arena : Arena := s2Step372EntryFBefore
def s2PrivateStep372Bank : WindowBank := s2Step372FrontBank
def s2PrivateStep372Spec : HmrSourceWalkStepLog := ⟨86,202,⟨85,85,203,202⟩,60,.early s2Step372CompleteLog⟩
def s2PrivateStep372Plan : HmrSourceStepPlan := .early s2Step372CompletePlan
theorem s2PrivateStep372_source : s2PrivateStep372Spec=s2ObservedLogs368[4] := rfl
theorem s2PrivateStep372_checked : compileHmrSourceStepLog s2PrivateStep372Arena s2PrivateStep372Bank
    s2PrivateStep372Spec.fgWidth s2PrivateStep372Spec.vWidth s2PrivateStep372Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]
    6 498 372 s2PrivateStep372Spec.need none s2PrivateStep372Spec.log=some s2PrivateStep372Plan := by
  change compileHmrSourceStepLog s2Step372EntryFBefore s2Step372FrontBank 86 202 ⟨85,85,203,202⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 6 498 372 60 none (.early s2Step372CompleteLog)=some (.early s2Step372CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 372<498)]
  rw [s2Step372Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
