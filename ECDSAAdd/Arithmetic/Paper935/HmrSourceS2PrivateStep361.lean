import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep359
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

private def s2Step361CompleteMoves : List (Wire × Wire) := [(783,90),(847,602)]

private def s2Step361EarlyControlLog : HmrEarlyControlLog := ⟨[847, 783, 882, 785, 903],[812],[800],[789, 827, 844, 907, 913, 914],[]⟩

private def s2Step361FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [821]],[[812], [903], [882], [785]],[[], [], [], []]⟩,[796],[780],[800],[789],[827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[800, 789, 827, 844]⟩

private def s2Step361CompleteLog : HmrEarlyStepLog := ⟨s2Step361FrontLog,s2Step361CompleteMoves,s2Step361EarlyControlLog⟩

private def s2Step361ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601],768⟩

private def s2Step361ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839],770⟩

private def s2Step361ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89],769⟩

private def s2Step361ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821],771⟩

private def s2Step361FrontOut : WindowBank := ⟨s2Step361ExitFOut,s2Step361ExitGOut,s2Step361ExitFvOut,s2Step361ExitGvOut⟩

private def s2Step361CompleteOut : WindowBank := s2Step361FrontOut.repacked s2Step361CompleteMoves

private def s2Step361EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step361EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step361EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step361EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step361EarlyControlPositiveArena,[812],s2Step361EarlyControlEqualityArena,[800],⟨⟨796,false⟩,[⟨⟨812,false⟩,800⟩]⟩⟩

private def s2Step361EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<915)),Finset.filter_subset _ _⟩

private def s2Step361EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<915)),Finset.filter_subset _ _⟩

private def s2Step361EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step361EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step361EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step361EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step361EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,847⟩,⟨⟨774,false⟩,783⟩,⟨⟨775,false⟩,882⟩,⟨⟨776,false⟩,785⟩,⟨⟨777,false⟩,903⟩]⟩

private def s2Step361EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step361EarlyControlZeroArena,s2Step361EarlyControlZeroPlan,s2Step361EarlyControlClassPlan,s2Step361EarlyControlFlagArena,s2Step361EarlyControlFittedArena,s2Step361EarlyControlHistoryArena,s2Step361EarlyControlSigmaArena,s2Step361EarlyControlOutputArena,s2Step361EarlyControlLog⟩

private def s2Step361CounterWork : List Wire := [800, 789, 827, 844]

private theorem s2Step361Counter_bounded : s2Step361CounterWork.toFinset⊆arenaWires := by norm_num [s2Step361CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step361HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step361CounterDuring : Arena := ⟨s2Step361HeadFvAfter.live∪s2Step361CounterWork.toFinset,Finset.union_subset s2Step361HeadFvAfter.bounded s2Step361Counter_bounded⟩

private def s2Step361EntryFFresh : List Wire := []

private def s2Step361EntryFvFresh : List Wire := []

private def s2Step361EntryGFresh : List Wire := []

private def s2Step361EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step361EntryGvFresh : List Wire := [821]

private def s2Step361ExitFExtra : List Wire := [602, 903]

private def s2Step361ExitFvExtra : List Wire := [785]

private def s2Step361ExitGExtra : List Wire := [90, 812]

private def s2Step361ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<90) ∨ (91≤q ∧ q<602) ∨ (603≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step361ExitGvExtra : List Wire := [882]

private def s2Step361Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step361Add0Work : List Wire := [827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step361Add0_bounded : s2Step361Add0Work.toFinset⊆arenaWires := by
  have h : s2Step361Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step361Add0During : Arena := ⟨s2Step361Add0Arena.live∪s2Step361Add0Work.toFinset,Finset.union_subset s2Step361Add0Arena.bounded s2Step361Add0_bounded⟩

private def s2Step361Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step361Add1Work : List Wire := [827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step361Add1_bounded : s2Step361Add1Work.toFinset⊆arenaWires := by
  have h : s2Step361Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step361Add1During : Arena := ⟨s2Step361Add1Arena.live∪s2Step361Add1Work.toFinset,Finset.union_subset s2Step361Add1Arena.bounded s2Step361Add1_bounded⟩

private def s2Step361F4FlagArena : Arena := ⟨s2Step361HeadFvAfter.live∪{800},Finset.union_subset s2Step361HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step361F4Plan : HmrHybridF4Plan := ⟨s2Step361F4FlagArena,[800],s2Step361Add0Arena,[789],s2Step361Add0During,s2Step361Add0Work,s2Step361Add1During,s2Step361Add1Work⟩

private def s2Step361HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 903],768⟩

private def s2Step361HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 785],770⟩

private def s2Step361HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 812],769⟩

private def s2Step361HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 882],771⟩

private def s2Step361FrontHead : WindowBank := ⟨s2Step361HeadFOut,s2Step361HeadGOut,s2Step361HeadFvOut,s2Step361HeadGvOut⟩

private def s2Step361EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602],768⟩

private def s2Step361EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839],770⟩

private def s2Step361EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90],769⟩

private def s2Step361EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821],771⟩

private def s2Step361FrontPair : WindowBank := ⟨s2Step361EntryFOut,s2Step361EntryGOut,s2Step361EntryFvOut,s2Step361EntryGvOut⟩

private def s2Step361FrontSigmaArena : Arena := ⟨s2Step361EntryGvAfter.live∪{796},Finset.union_subset s2Step361EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step361HeadFFresh : List Wire := [903]

private def s2Step361HeadFvFresh : List Wire := [785]

private def s2Step361HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step361HeadGFresh : List Wire := [812]

private def s2Step361HeadGvFresh : List Wire := [882]

private def s2Step361FrontPlan : HmrSourceFront := ⟨s2Step361EntryGvAfter,s2Step361FrontPair,(growRow 768 s2Step361EntryFFresh ++ (growRow 769 s2Step361EntryGFresh ++ (growRow 770 s2Step361EntryFvFresh ++ (growRow 771 s2Step361EntryGvFresh ++ [])))),s2Step361FrontSigmaArena,[796],s2Step361HeadGBefore,[780],
  s2Step361HeadFvAfter,s2Step361FrontHead,(growRow 769 s2Step361HeadGFresh ++ (growRow 768 s2Step361HeadFFresh ++ (growRow 771 s2Step361HeadGvFresh ++ (growRow 770 s2Step361HeadFvFresh ++ [])))),s2Step361F4Plan,s2Step361CounterDuring,s2Step361CounterWork,s2Step361ExitGvAfter,s2Step361FrontOut,(shrinkRow 769 s2Step361ExitGExtra ++ (shrinkRow 768 s2Step361ExitFExtra ++ (shrinkRow 770 s2Step361ExitFvExtra ++ (shrinkRow 771 s2Step361ExitGvExtra ++ []))))⟩

private def s2Step361CompletePlan : HmrEarlyStepPlan := ⟨s2Step361FrontPlan,s2Step361EarlyControlArena,s2Step361EarlyControlPlan,s2Step361CompleteMoves⟩

private theorem s2Step361Complete_apart : List.Disjoint (s2Step361CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [796, 780, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] := by
  have nd : ((s2Step361CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[796, 780, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step361Complete_owned : (s2Step361CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step361EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step361EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private def s2Step361CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,602),(603,783),(784,785),(786,789),(790,800),(801,812),(813,827),(828,844),(845,882),(883,903),(904,907),(908,913)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s2Step361CompleteRelocationMove0Borrowed : Arena := ⟨s2Step361ExitGvAfter.live∪{90},Finset.union_subset s2Step361ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step361CompleteRelocationMove1Borrowed : Arena := ⟨s2Step361CompleteRelocationMove0After.live∪{602},Finset.union_subset s2Step361CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s2Step361CompleteRelocation_move0_owned : 783∈s2Step361ExitGvAfter.live := by norm_num [s2Step361ExitGvAfter,arenaWires]

private theorem s2Step361CompleteRelocation_move0_reserve : s2Step361ExitGvAfter.reserve {90}=some s2Step361CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step361ExitGvAfter,arenaWires]
  · rfl

private theorem s2Step361CompleteRelocation_move0_retire : s2Step361CompleteRelocationMove0Borrowed.retireSet {783}=s2Step361CompleteRelocationMove0After := by
  unfold Arena.retireSet s2Step361CompleteRelocationMove0After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step361CompleteRelocationMove0Borrowed,s2Step361ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step361CompleteRelocation_move1_owned : 847∈s2Step361CompleteRelocationMove0After.live := by norm_num [s2Step361CompleteRelocationMove0After,arenaWires]

private theorem s2Step361CompleteRelocation_move1_reserve : s2Step361CompleteRelocationMove0After.reserve {602}=some s2Step361CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step361CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s2Step361CompleteRelocation_move1_retire : s2Step361CompleteRelocationMove1Borrowed.retireSet {847}=s2Step361EarlyControlArena := by
  unfold Arena.retireSet s2Step361EarlyControlArena
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step361CompleteRelocationMove1Borrowed,s2Step361CompleteRelocationMove0After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step361CompleteRelocation_checked : s2Step361ExitGvAfter.checkRepack [(783,90),(847,602)]=some s2Step361EarlyControlArena := by
  have tail2 : s2Step361EarlyControlArena.checkRepack []=some s2Step361EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s2Step361CompleteRelocationMove0After s2Step361CompleteRelocationMove1Borrowed s2Step361EarlyControlArena s2Step361EarlyControlArena 847 602 []
    s2Step361CompleteRelocation_move1_owned s2Step361CompleteRelocation_move1_reserve s2Step361CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s2Step361ExitGvAfter s2Step361CompleteRelocationMove0Borrowed s2Step361CompleteRelocationMove0After s2Step361EarlyControlArena 783 90 [(847,602)]
    s2Step361CompleteRelocation_move0_owned s2Step361CompleteRelocation_move0_reserve s2Step361CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s2Step361Complete_repack : s2Step361ExitGvAfter.checkRepack s2Step361CompleteMoves=some s2Step361EarlyControlArena := by
  simpa only [s2Step361CompleteMoves] using s2Step361CompleteRelocation_checked

private theorem s2Step361EarlyControl_branchOwned : ([780] : List Wire).toFinset⊆s2Step361EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step361EarlyControlSigmaArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step361EarlyControl_branch : compileHmrBranchRetirement s2Step361EarlyControlSigmaArena 780=some s2Step361EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step361EarlyControl_branchOwned
  · ext q
    simp [s2Step361EarlyControlOutputArena,s2Step361EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step361EarlyControl_classEqualityBorrow : s2Step361EarlyControlPositiveArena.checkBorrow (([796, 812] : List Wire).length-1) s2Step361EarlyControlLog.classWork=some s2Step361EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step361EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step361EarlyControlPositiveArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step361EarlyControlEqualityArena,s2Step361EarlyControlPositiveArena,s2Step361EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step361EarlyControl_classEqualityOwned : ([796, 812] : List Wire).toFinset⊆s2Step361EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step361EarlyControlPositiveArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step361EarlyControl_classEquality : compileHmrEqualityLog s2Step361EarlyControlPositiveArena [796, 812] 0 s2Step361EarlyControlLog.classWork=some (s2Step361EarlyControlEqualityArena,s2Step361EarlyControlLog.classWork,s2Step361EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step361EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step361EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step361EarlyControl_classOwned : ([777, 903, 796] : List Wire).toFinset⊆s2Step361EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step361EarlyControlZeroArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step361EarlyControl_positiveBorrow : s2Step361EarlyControlZeroArena.checkBorrow (1) s2Step361EarlyControlLog.positiveWork=some s2Step361EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step361EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step361EarlyControlZeroArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step361EarlyControlPositiveArena,s2Step361EarlyControlZeroArena,s2Step361EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step361EarlyControl_class : compileHmrSourceClassLog s2Step361EarlyControlZeroArena false 777 s2Step361EarlyControlZeroPlan.top 0 796 s2Step361EarlyControlLog.positiveWork s2Step361EarlyControlLog.classWork=some s2Step361EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step361EarlyControlClassPlan s2Step361EarlyControlZeroArena false 777 s2Step361EarlyControlZeroPlan.top 0 796
  constructor
  · decide +kernel
  · exact s2Step361EarlyControl_classOwned
  · exact s2Step361EarlyControl_positiveBorrow
  · exact s2Step361EarlyControl_classEquality

private theorem s2Step361EarlyControl_entryRecordOwned : ([780, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step361EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step361EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step361EarlyControl_entrySigmaOwned : ([796, 254] : List Wire).toFinset⊆s2Step361EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step361EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step361EarlyControl_fitBorrow : s2Step361EarlyControlFlagArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step361EarlyControlLog.recordFresh=some s2Step361EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step361EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step361EarlyControlFlagArena (fun q => (0≤q ∧ q<915)) rfl
      decide +kernel
    · ext q
      simp [s2Step361EarlyControlFittedArena,s2Step361EarlyControlFlagArena,s2Step361EarlyControlLog,arenaWires]

private theorem s2Step361EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step361EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step361EarlyControlFlagArena (fun q => (0≤q ∧ q<915)) rfl
  decide +kernel

private theorem s2Step361EarlyControl_fit : compileHmrRecordGrowLog s2Step361EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step361EarlyControlLog.recordFresh=some s2Step361EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step361EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step361EarlyControl_fitBorrow

private theorem s2Step361EarlyControl_flagsBorrow : s2Step361EarlyControlEqualityArena.checkBorrow (6) s2Step361EarlyControlLog.flagWork=some s2Step361EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step361EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step361EarlyControlEqualityArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step361EarlyControlFlagArena,s2Step361EarlyControlEqualityArena,s2Step361EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step361EarlyControl_flagsOwned : ([800, 253, 252, 251] : List Wire).toFinset⊆s2Step361EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step361EarlyControlEqualityArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step361EarlyControl_flags : compileHmrFlagsLog s2Step361EarlyControlClassPlan.equalityArena s2Step361EarlyControlClassPlan.equality.top 253 252 251 s2Step361EarlyControlLog.flagWork=some s2Step361EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step361EarlyControl_flagsOwned⟩
  · exact s2Step361EarlyControl_flagsBorrow

private theorem s2Step361EarlyControl_historyBorrow : s2Step361EarlyControlArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step361EarlyControlLog.recordFresh=some s2Step361EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step361EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step361EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step361EarlyControlHistoryArena,s2Step361EarlyControlArena,s2Step361EarlyControlLog,arenaWires]

private theorem s2Step361EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step361EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step361EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step361EarlyControl_history : compileHmrRecordGrowLog s2Step361EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step361EarlyControlLog.recordFresh=some s2Step361EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step361EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step361EarlyControl_historyBorrow

private theorem s2Step361EarlyControl_sigmaOwned : ([254, 796] : List Wire).toFinset⊆s2Step361EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step361EarlyControlHistoryArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step361EarlyControl_sigmaReleaseOwned : ([796] : List Wire).toFinset⊆s2Step361EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step361EarlyControlHistoryArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step361EarlyControl_sigmaRelease : s2Step361EarlyControlHistoryArena.release {796} (fun _ => false)=some s2Step361EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step361EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step361EarlyControlSigmaArena,s2Step361EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step361EarlyControl_sigma : compileHmrSigmaDropLog s2Step361EarlyControlHistoryArena false 0 0 254 796 []=some s2Step361EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step361EarlyControl_sigmaOwned⟩
  · exact s2Step361EarlyControl_sigmaRelease

private theorem s2Step361EarlyControl_zeroBorrow : s2Step361EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step361EarlyControlLog.zeroWork=some s2Step361EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step361EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step361EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step361EarlyControlZeroArena,s2Step361EarlyControlArena,s2Step361EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step361EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step361EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step361EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step361EarlyControl_zero : compileHmrEqualityLog s2Step361EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step361EarlyControlLog.zeroWork=some (s2Step361EarlyControlZeroArena,s2Step361EarlyControlLog.zeroWork,s2Step361EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step361EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step361EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step361EarlyControl_logged : s2Step361EarlyControlPlan.Logged s2Step361EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 796 254 253 252 251 780 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step361EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step361EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step361EarlyControl_zero
  · exact s2Step361EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step361EarlyControl_flags
  · exact s2Step361EarlyControl_fit
  · exact s2Step361EarlyControl_history
  · exact s2Step361EarlyControl_sigma
  · exact s2Step361EarlyControl_branch

private theorem s2Step361EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step361EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 796 254 253 252 251 780 60 s2Step361EarlyControlLog=some s2Step361EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step361EarlyControlPlan s2Step361EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 796 254 253 252 251 780 60 s2Step361EarlyControl_logged

private def s2Step361EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step361EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602],768⟩

private def s2Step361EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839],770⟩

private def s2Step361EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90],769⟩

private def s2Step361EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790],771⟩

private def s2Step361FrontBank : WindowBank := ⟨s2Step361EntryFRow,s2Step361EntryGRow,s2Step361EntryFvRow,s2Step361EntryGvRow⟩

private def s2Step361Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 903, 768]

private def s2Step361Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 812, 769]

private def s2Step361Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 785, 770]

private def s2Step361Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 882, 771]

private theorem s2Step361Counter_apart : Disjoint s2Step361HeadFvAfter.live s2Step361CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step361HeadFvAfter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step361Counter_borrowed : s2Step361HeadFvAfter.checkBorrow 4 s2Step361CounterWork=some s2Step361CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step361HeadFvAfter s2Step361CounterDuring s2Step361CounterWork.toFinset s2Step361Counter_bounded s2Step361Counter_apart rfl

private theorem s2Step361Counter_owned : (796::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step361HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step361HeadFvAfter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step361Counter_checked : compileHmrCounterStepLog s2Step361HeadFvAfter true 796 [772, 773, 774, 775, 776, 777] s2Step361CounterWork=some s2Step361CounterDuring := by
  have owned : ∀q∈796::[772, 773, 774, 775, 776, 777],q∈s2Step361HeadFvAfter.live := fun q hq => s2Step361Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step361Counter_borrowed

private def s2Step361EntryFAfter : Arena := s2Step361EntryFBefore

private theorem s2Step361EntryBank_incomingDistinct : ([s2Step361EntryFRow,s2Step361EntryGRow,s2Step361EntryFvRow,s2Step361EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step361EntryF_Incoming : rowsOwned s2Step361EntryFBefore [s2Step361EntryFRow,s2Step361EntryGRow,s2Step361EntryFvRow,s2Step361EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step361EntryFRow,s2Step361EntryGRow,s2Step361EntryFvRow,s2Step361EntryGvRow] 0 s2Step361EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step361EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step361EntryBank_outgoingOwned : rowsOwned s2Step361EntryGvAfter [s2Step361EntryFOut,s2Step361EntryGOut,s2Step361EntryFvOut,s2Step361EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step361EntryGvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step361EntryF_Outgoing : rowsOwned s2Step361EntryGvAfter [s2Step361EntryFOut,s2Step361EntryGOut,s2Step361EntryFvOut,s2Step361EntryGvOut] :=
  hmrRows_owned_drop s2Step361EntryGvAfter [s2Step361EntryFOut,s2Step361EntryGOut,s2Step361EntryFvOut,s2Step361EntryGvOut] 0 s2Step361EntryBank_outgoingOwned

private theorem s2Step361EntryF_distinct : (s2Step361EntryFRow.sign::s2Step361EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step361EntryF_owned : (s2Step361EntryFRow.sign::s2Step361EntryFRow.payload).toFinset⊆s2Step361EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step361EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step361EntryF_reserved : s2Step361EntryFBefore.reserve s2Step361EntryFFresh.toFinset=some s2Step361EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step361EntryFFresh,arenaWires]
  · norm_num [s2Step361EntryFBefore,s2Step361EntryFFresh,arenaWires]
  · simp only [s2Step361EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step361EntryF_checked : planRowResizeLog s2Step361EntryFBefore s2Step361EntryFRow 91 s2Step361EntryFFresh=
    some (s2Step361EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602],768⟩,growRow 768 s2Step361EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step361EntryFBefore s2Step361EntryFAfter s2Step361EntryFRow 91 s2Step361EntryFFresh
    s2Step361EntryF_distinct s2Step361EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step361EntryF_reserved
  have rowEq : WindowRow.mk (s2Step361EntryFRow.payload++s2Step361EntryFFresh) s2Step361EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step361EntryFvAfter : Arena := s2Step361EntryFBefore

private def s2Step361EntryFvBefore : Arena := s2Step361EntryFBefore

private theorem s2Step361EntryFv_Incoming : rowsOwned s2Step361EntryFvBefore [s2Step361EntryFvRow,s2Step361EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step361EntryFRow,s2Step361EntryGRow,s2Step361EntryFvRow,s2Step361EntryGvRow] 2 s2Step361EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step361EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step361EntryFv_Outgoing : rowsOwned s2Step361EntryGvAfter [s2Step361EntryFvOut,s2Step361EntryGvOut] :=
  hmrRows_owned_drop s2Step361EntryGvAfter [s2Step361EntryFOut,s2Step361EntryGOut,s2Step361EntryFvOut,s2Step361EntryGvOut] 2 s2Step361EntryBank_outgoingOwned

private theorem s2Step361EntryFv_distinct : (s2Step361EntryFvRow.sign::s2Step361EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step361EntryFv_owned : (s2Step361EntryFvRow.sign::s2Step361EntryFvRow.payload).toFinset⊆s2Step361EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step361EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step361EntryFv_reserved : s2Step361EntryFvBefore.reserve s2Step361EntryFvFresh.toFinset=some s2Step361EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step361EntryFvFresh,arenaWires]
  · norm_num [s2Step361EntryFvBefore,s2Step361EntryFBefore,s2Step361EntryFvFresh,arenaWires]
  · simp only [s2Step361EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step361EntryFv_checked : planRowResizeLog s2Step361EntryFvBefore s2Step361EntryFvRow 197 s2Step361EntryFvFresh=
    some (s2Step361EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839],770⟩,growRow 770 s2Step361EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step361EntryFvBefore s2Step361EntryFvAfter s2Step361EntryFvRow 197 s2Step361EntryFvFresh
    s2Step361EntryFv_distinct s2Step361EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step361EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step361EntryFvRow.payload++s2Step361EntryFvFresh) s2Step361EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step361EntryGAfter : Arena := s2Step361EntryFBefore

private def s2Step361EntryGBefore : Arena := s2Step361EntryFBefore

private theorem s2Step361EntryG_Incoming : rowsOwned s2Step361EntryGBefore [s2Step361EntryGRow,s2Step361EntryFvRow,s2Step361EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step361EntryFRow,s2Step361EntryGRow,s2Step361EntryFvRow,s2Step361EntryGvRow] 1 s2Step361EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step361EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step361EntryG_Outgoing : rowsOwned s2Step361EntryGvAfter [s2Step361EntryGOut,s2Step361EntryFvOut,s2Step361EntryGvOut] :=
  hmrRows_owned_drop s2Step361EntryGvAfter [s2Step361EntryFOut,s2Step361EntryGOut,s2Step361EntryFvOut,s2Step361EntryGvOut] 1 s2Step361EntryBank_outgoingOwned

private theorem s2Step361EntryG_distinct : (s2Step361EntryGRow.sign::s2Step361EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step361EntryG_owned : (s2Step361EntryGRow.sign::s2Step361EntryGRow.payload).toFinset⊆s2Step361EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step361EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step361EntryG_reserved : s2Step361EntryGBefore.reserve s2Step361EntryGFresh.toFinset=some s2Step361EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step361EntryGFresh,arenaWires]
  · norm_num [s2Step361EntryGBefore,s2Step361EntryFBefore,s2Step361EntryGFresh,arenaWires]
  · simp only [s2Step361EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step361EntryG_checked : planRowResizeLog s2Step361EntryGBefore s2Step361EntryGRow 91 s2Step361EntryGFresh=
    some (s2Step361EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90],769⟩,growRow 769 s2Step361EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step361EntryGBefore s2Step361EntryGAfter s2Step361EntryGRow 91 s2Step361EntryGFresh
    s2Step361EntryG_distinct s2Step361EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step361EntryG_reserved
  have rowEq : WindowRow.mk (s2Step361EntryGRow.payload++s2Step361EntryGFresh) s2Step361EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step361EntryGvBefore : Arena := s2Step361EntryFBefore

private theorem s2Step361EntryGv_Incoming : rowsOwned s2Step361EntryGvBefore [s2Step361EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step361EntryFRow,s2Step361EntryGRow,s2Step361EntryFvRow,s2Step361EntryGvRow] 3 s2Step361EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step361EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step361EntryGv_Outgoing : rowsOwned s2Step361EntryGvAfter [s2Step361EntryGvOut] :=
  hmrRows_owned_drop s2Step361EntryGvAfter [s2Step361EntryFOut,s2Step361EntryGOut,s2Step361EntryFvOut,s2Step361EntryGvOut] 3 s2Step361EntryBank_outgoingOwned

private theorem s2Step361EntryGv_distinct : (s2Step361EntryGvRow.sign::s2Step361EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step361EntryGv_owned : (s2Step361EntryGvRow.sign::s2Step361EntryGvRow.payload).toFinset⊆s2Step361EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step361EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step361EntryGv_reserved : s2Step361EntryGvBefore.reserve s2Step361EntryGvFresh.toFinset=some s2Step361EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step361EntryGvFresh,arenaWires]
  · norm_num [s2Step361EntryGvBefore,s2Step361EntryFBefore,s2Step361EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step361EntryGvAfter,s2Step361EntryGvBefore,s2Step361EntryFBefore,s2Step361EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step361EntryGv_checked : planRowResizeLog s2Step361EntryGvBefore s2Step361EntryGvRow 197 s2Step361EntryGvFresh=
    some (s2Step361EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821],771⟩,growRow 771 s2Step361EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step361EntryGvBefore s2Step361EntryGvAfter s2Step361EntryGvRow 197 s2Step361EntryGvFresh
    s2Step361EntryGv_distinct s2Step361EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step361EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step361EntryGvRow.payload++s2Step361EntryGvFresh) s2Step361EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step361EntryBank_rows : planWindowRowsLog s2Step361EntryFBefore [(s2Step361EntryFRow,91),(s2Step361EntryGRow,91),(s2Step361EntryFvRow,197),(s2Step361EntryGvRow,197)] [s2Step361EntryFFresh,s2Step361EntryGFresh,s2Step361EntryFvFresh,s2Step361EntryGvFresh]=
    some (s2Step361EntryGvAfter,[s2Step361EntryFOut,s2Step361EntryGOut,s2Step361EntryFvOut,s2Step361EntryGvOut],(growRow 768 s2Step361EntryFFresh ++ (growRow 769 s2Step361EntryGFresh ++ (growRow 770 s2Step361EntryFvFresh ++ (growRow 771 s2Step361EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step361EntryGvAfter [] []=some (s2Step361EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step361EntryGvBefore s2Step361EntryGvAfter s2Step361EntryGvAfter
    s2Step361EntryGvRow s2Step361EntryGvOut 197 s2Step361EntryGvFresh [] [] []
    (growRow 771 s2Step361EntryGvFresh) ([]) s2Step361EntryGv_Incoming s2Step361EntryGv_checked h4 s2Step361EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step361EntryFvBefore s2Step361EntryFvAfter s2Step361EntryGvAfter
    s2Step361EntryFvRow s2Step361EntryFvOut 197 s2Step361EntryFvFresh [(s2Step361EntryGvRow,197)] [s2Step361EntryGvFresh] [s2Step361EntryGvOut]
    (growRow 770 s2Step361EntryFvFresh) ((growRow 771 s2Step361EntryGvFresh ++ [])) s2Step361EntryFv_Incoming s2Step361EntryFv_checked h3 s2Step361EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step361EntryGBefore s2Step361EntryGAfter s2Step361EntryGvAfter
    s2Step361EntryGRow s2Step361EntryGOut 91 s2Step361EntryGFresh [(s2Step361EntryFvRow,197),(s2Step361EntryGvRow,197)] [s2Step361EntryFvFresh,s2Step361EntryGvFresh] [s2Step361EntryFvOut,s2Step361EntryGvOut]
    (growRow 769 s2Step361EntryGFresh) ((growRow 770 s2Step361EntryFvFresh ++ (growRow 771 s2Step361EntryGvFresh ++ []))) s2Step361EntryG_Incoming s2Step361EntryG_checked h2 s2Step361EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step361EntryFBefore s2Step361EntryFAfter s2Step361EntryGvAfter
    s2Step361EntryFRow s2Step361EntryFOut 91 s2Step361EntryFFresh [(s2Step361EntryGRow,91),(s2Step361EntryFvRow,197),(s2Step361EntryGvRow,197)] [s2Step361EntryGFresh,s2Step361EntryFvFresh,s2Step361EntryGvFresh] [s2Step361EntryGOut,s2Step361EntryFvOut,s2Step361EntryGvOut]
    (growRow 768 s2Step361EntryFFresh) ((growRow 769 s2Step361EntryGFresh ++ (growRow 770 s2Step361EntryFvFresh ++ (growRow 771 s2Step361EntryGvFresh ++ [])))) s2Step361EntryF_Incoming s2Step361EntryF_checked h1 s2Step361EntryF_Outgoing
  exact h0

private theorem s2Step361EntryBank_checked : compileHmrBankResizeLog .entry s2Step361EntryFBefore ⟨s2Step361EntryFRow,s2Step361EntryGRow,s2Step361EntryFvRow,s2Step361EntryGvRow⟩ ⟨91,91,197,197⟩ [s2Step361EntryFFresh,s2Step361EntryGFresh,s2Step361EntryFvFresh,s2Step361EntryGvFresh]=
    some (s2Step361EntryGvAfter,⟨s2Step361EntryFOut,s2Step361EntryGOut,s2Step361EntryFvOut,s2Step361EntryGvOut⟩,(growRow 768 s2Step361EntryFFresh ++ (growRow 769 s2Step361EntryGFresh ++ (growRow 770 s2Step361EntryFvFresh ++ (growRow 771 s2Step361EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step361EntryBank_rows]
  rfl

private def s2Step361ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<90) ∨ (91≤q ∧ q<602) ∨ (603≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step361ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<90) ∨ (91≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step361ExitFBefore : Arena := s2Step361ExitGAfter

private def s2Step361ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 903],768⟩

private def s2Step361ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 785],770⟩

private def s2Step361ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 812],769⟩

private def s2Step361ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 882],771⟩

private theorem s2Step361ExitBank_incomingDistinct : ([s2Step361ExitGRow,s2Step361ExitFRow,s2Step361ExitFvRow,s2Step361ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step361ExitF_Incoming : rowsOwned s2Step361ExitFBefore [s2Step361ExitFRow,s2Step361ExitFvRow,s2Step361ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step361ExitGRow,s2Step361ExitFRow,s2Step361ExitFvRow,s2Step361ExitGvRow] 1 s2Step361ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step361ExitFBefore (fun q => (0≤q ∧ q<90) ∨ (91≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step361ExitBank_outgoingOwned : rowsOwned s2Step361ExitGvAfter [s2Step361ExitGOut,s2Step361ExitFOut,s2Step361ExitFvOut,s2Step361ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step361ExitGvAfter (fun q => (0≤q ∧ q<90) ∨ (91≤q ∧ q<602) ∨ (603≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step361ExitF_Outgoing : rowsOwned s2Step361ExitGvAfter [s2Step361ExitFOut,s2Step361ExitFvOut,s2Step361ExitGvOut] :=
  hmrRows_owned_drop s2Step361ExitGvAfter [s2Step361ExitGOut,s2Step361ExitFOut,s2Step361ExitFvOut,s2Step361ExitGvOut] 1 s2Step361ExitBank_outgoingOwned

private theorem s2Step361ExitF_distinct : (s2Step361ExitFRow.sign::s2Step361ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step361ExitF_owned : (s2Step361ExitFRow.sign::s2Step361ExitFRow.payload).toFinset⊆s2Step361ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step361ExitFBefore (fun q => (0≤q ∧ q<90) ∨ (91≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step361ExitF_retired : s2Step361ExitFBefore.retireSet s2Step361ExitFExtra.toFinset=s2Step361ExitFAfter := by
  unfold Arena.retireSet s2Step361ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step361ExitFBefore,s2Step361ExitGAfter,s2Step361ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step361ExitF_checked : planRowResizeLog s2Step361ExitFBefore s2Step361ExitFRow 90 []=
    some (s2Step361ExitFAfter,s2Step361ExitFOut,shrinkRow 768 s2Step361ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step361ExitFBefore s2Step361ExitFRow 90 s2Step361ExitF_distinct s2Step361ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step361ExitFRow.payload.take 90) s2Step361ExitFRow.sign=s2Step361ExitFOut := by decide +kernel
  have hi : s2Step361ExitFRow.payload.drop 90=s2Step361ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step361ExitF_retired] at result
  exact result

private def s2Step361ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<90) ∨ (91≤q ∧ q<602) ∨ (603≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step361ExitFvBefore : Arena := s2Step361ExitFAfter

private theorem s2Step361ExitFv_Incoming : rowsOwned s2Step361ExitFvBefore [s2Step361ExitFvRow,s2Step361ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step361ExitGRow,s2Step361ExitFRow,s2Step361ExitFvRow,s2Step361ExitGvRow] 2 s2Step361ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step361ExitFvBefore (fun q => (0≤q ∧ q<90) ∨ (91≤q ∧ q<602) ∨ (603≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step361ExitFv_Outgoing : rowsOwned s2Step361ExitGvAfter [s2Step361ExitFvOut,s2Step361ExitGvOut] :=
  hmrRows_owned_drop s2Step361ExitGvAfter [s2Step361ExitGOut,s2Step361ExitFOut,s2Step361ExitFvOut,s2Step361ExitGvOut] 2 s2Step361ExitBank_outgoingOwned

private theorem s2Step361ExitFv_distinct : (s2Step361ExitFvRow.sign::s2Step361ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step361ExitFv_owned : (s2Step361ExitFvRow.sign::s2Step361ExitFvRow.payload).toFinset⊆s2Step361ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step361ExitFvBefore (fun q => (0≤q ∧ q<90) ∨ (91≤q ∧ q<602) ∨ (603≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step361ExitFv_retired : s2Step361ExitFvBefore.retireSet s2Step361ExitFvExtra.toFinset=s2Step361ExitFvAfter := by
  unfold Arena.retireSet s2Step361ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step361ExitFvBefore,s2Step361ExitFAfter,s2Step361ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step361ExitFv_checked : planRowResizeLog s2Step361ExitFvBefore s2Step361ExitFvRow 197 []=
    some (s2Step361ExitFvAfter,s2Step361ExitFvOut,shrinkRow 770 s2Step361ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step361ExitFvBefore s2Step361ExitFvRow 197 s2Step361ExitFv_distinct s2Step361ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step361ExitFvRow.payload.take 197) s2Step361ExitFvRow.sign=s2Step361ExitFvOut := by decide +kernel
  have hi : s2Step361ExitFvRow.payload.drop 197=s2Step361ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step361ExitFv_retired] at result
  exact result

private def s2Step361ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private theorem s2Step361ExitG_Incoming : rowsOwned s2Step361ExitGBefore [s2Step361ExitGRow,s2Step361ExitFRow,s2Step361ExitFvRow,s2Step361ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step361ExitGRow,s2Step361ExitFRow,s2Step361ExitFvRow,s2Step361ExitGvRow] 0 s2Step361ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step361ExitGBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step361ExitG_Outgoing : rowsOwned s2Step361ExitGvAfter [s2Step361ExitGOut,s2Step361ExitFOut,s2Step361ExitFvOut,s2Step361ExitGvOut] :=
  hmrRows_owned_drop s2Step361ExitGvAfter [s2Step361ExitGOut,s2Step361ExitFOut,s2Step361ExitFvOut,s2Step361ExitGvOut] 0 s2Step361ExitBank_outgoingOwned

private theorem s2Step361ExitG_distinct : (s2Step361ExitGRow.sign::s2Step361ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step361ExitG_owned : (s2Step361ExitGRow.sign::s2Step361ExitGRow.payload).toFinset⊆s2Step361ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step361ExitGBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step361ExitG_retired : s2Step361ExitGBefore.retireSet s2Step361ExitGExtra.toFinset=s2Step361ExitGAfter := by
  unfold Arena.retireSet s2Step361ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step361ExitGBefore,s2Step361ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step361ExitG_checked : planRowResizeLog s2Step361ExitGBefore s2Step361ExitGRow 90 []=
    some (s2Step361ExitGAfter,s2Step361ExitGOut,shrinkRow 769 s2Step361ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step361ExitGBefore s2Step361ExitGRow 90 s2Step361ExitG_distinct s2Step361ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step361ExitGRow.payload.take 90) s2Step361ExitGRow.sign=s2Step361ExitGOut := by decide +kernel
  have hi : s2Step361ExitGRow.payload.drop 90=s2Step361ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step361ExitG_retired] at result
  exact result

private def s2Step361ExitGvBefore : Arena := s2Step361ExitFvAfter

private theorem s2Step361ExitGv_Incoming : rowsOwned s2Step361ExitGvBefore [s2Step361ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step361ExitGRow,s2Step361ExitFRow,s2Step361ExitFvRow,s2Step361ExitGvRow] 3 s2Step361ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step361ExitGvBefore (fun q => (0≤q ∧ q<90) ∨ (91≤q ∧ q<602) ∨ (603≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step361ExitGv_Outgoing : rowsOwned s2Step361ExitGvAfter [s2Step361ExitGvOut] :=
  hmrRows_owned_drop s2Step361ExitGvAfter [s2Step361ExitGOut,s2Step361ExitFOut,s2Step361ExitFvOut,s2Step361ExitGvOut] 3 s2Step361ExitBank_outgoingOwned

private theorem s2Step361ExitGv_distinct : (s2Step361ExitGvRow.sign::s2Step361ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step361ExitGv_owned : (s2Step361ExitGvRow.sign::s2Step361ExitGvRow.payload).toFinset⊆s2Step361ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step361ExitGvBefore (fun q => (0≤q ∧ q<90) ∨ (91≤q ∧ q<602) ∨ (603≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step361ExitGv_retired : s2Step361ExitGvBefore.retireSet s2Step361ExitGvExtra.toFinset=s2Step361ExitGvAfter := by
  unfold Arena.retireSet s2Step361ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step361ExitGvBefore,s2Step361ExitFvAfter,s2Step361ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step361ExitGv_checked : planRowResizeLog s2Step361ExitGvBefore s2Step361ExitGvRow 197 []=
    some (s2Step361ExitGvAfter,s2Step361ExitGvOut,shrinkRow 771 s2Step361ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step361ExitGvBefore s2Step361ExitGvRow 197 s2Step361ExitGv_distinct s2Step361ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step361ExitGvRow.payload.take 197) s2Step361ExitGvRow.sign=s2Step361ExitGvOut := by decide +kernel
  have hi : s2Step361ExitGvRow.payload.drop 197=s2Step361ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step361ExitGv_retired] at result
  exact result

private theorem s2Step361ExitBank_rows : planWindowRowsLog s2Step361ExitGBefore [(s2Step361ExitGRow,90),(s2Step361ExitFRow,90),(s2Step361ExitFvRow,197),(s2Step361ExitGvRow,197)] [[],[],[],[]]=
    some (s2Step361ExitGvAfter,[s2Step361ExitGOut,s2Step361ExitFOut,s2Step361ExitFvOut,s2Step361ExitGvOut],(shrinkRow 769 s2Step361ExitGExtra ++ (shrinkRow 768 s2Step361ExitFExtra ++ (shrinkRow 770 s2Step361ExitFvExtra ++ (shrinkRow 771 s2Step361ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step361ExitGvAfter [] []=some (s2Step361ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step361ExitGvBefore s2Step361ExitGvAfter s2Step361ExitGvAfter
    s2Step361ExitGvRow s2Step361ExitGvOut 197 [] [] [] []
    (shrinkRow 771 s2Step361ExitGvExtra) ([]) s2Step361ExitGv_Incoming s2Step361ExitGv_checked h4 s2Step361ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step361ExitFvBefore s2Step361ExitFvAfter s2Step361ExitGvAfter
    s2Step361ExitFvRow s2Step361ExitFvOut 197 [] [(s2Step361ExitGvRow,197)] [[]] [s2Step361ExitGvOut]
    (shrinkRow 770 s2Step361ExitFvExtra) ((shrinkRow 771 s2Step361ExitGvExtra ++ [])) s2Step361ExitFv_Incoming s2Step361ExitFv_checked h3 s2Step361ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step361ExitFBefore s2Step361ExitFAfter s2Step361ExitGvAfter
    s2Step361ExitFRow s2Step361ExitFOut 90 [] [(s2Step361ExitFvRow,197),(s2Step361ExitGvRow,197)] [[],[]] [s2Step361ExitFvOut,s2Step361ExitGvOut]
    (shrinkRow 768 s2Step361ExitFExtra) ((shrinkRow 770 s2Step361ExitFvExtra ++ (shrinkRow 771 s2Step361ExitGvExtra ++ []))) s2Step361ExitF_Incoming s2Step361ExitF_checked h2 s2Step361ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step361ExitGBefore s2Step361ExitGAfter s2Step361ExitGvAfter
    s2Step361ExitGRow s2Step361ExitGOut 90 [] [(s2Step361ExitFRow,90),(s2Step361ExitFvRow,197),(s2Step361ExitGvRow,197)] [[],[],[]] [s2Step361ExitFOut,s2Step361ExitFvOut,s2Step361ExitGvOut]
    (shrinkRow 769 s2Step361ExitGExtra) ((shrinkRow 768 s2Step361ExitFExtra ++ (shrinkRow 770 s2Step361ExitFvExtra ++ (shrinkRow 771 s2Step361ExitGvExtra ++ [])))) s2Step361ExitG_Incoming s2Step361ExitG_checked h1 s2Step361ExitG_Outgoing
  exact h0

private theorem s2Step361ExitBank_checked : compileHmrBankResizeLog .exit s2Step361ExitGBefore ⟨s2Step361ExitFRow,s2Step361ExitGRow,s2Step361ExitFvRow,s2Step361ExitGvRow⟩ ⟨90,90,197,197⟩ [[],[],[],[]]=
    some (s2Step361ExitGvAfter,⟨s2Step361ExitFOut,s2Step361ExitGOut,s2Step361ExitFvOut,s2Step361ExitGvOut⟩,(shrinkRow 769 s2Step361ExitGExtra ++ (shrinkRow 768 s2Step361ExitFExtra ++ (shrinkRow 770 s2Step361ExitFvExtra ++ (shrinkRow 771 s2Step361ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step361ExitBank_rows]
  rfl

private theorem s2Step361Add0_apart : Disjoint s2Step361Add0Arena.live s2Step361Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step361Add0Arena (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step361Add0_card : s2Step361Add0Arena.live.card=910 := by
  decide +kernel

private theorem s2Step361Add0_borrowed : s2Step361Add0Arena.checkBorrow (hmrHybridCount s2Step361Add0Arena s2Step361Add0B.length) s2Step361Add0Work=some s2Step361Add0During := by
  have len : s2Step361Add0Work.length=hmrHybridCount s2Step361Add0Arena s2Step361Add0B.length := by
    rw [hmrHybridCount,s2Step361Add0_card]
    decide +kernel
  have nd : s2Step361Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step361Add0Arena s2Step361Add0During s2Step361Add0Work.toFinset s2Step361Add0_bounded s2Step361Add0_apart rfl

private theorem s2Step361Add0_distinct : (800::780::789::(s2Step361Add0A++s2Step361Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step361Add0_owned : (800::780::789::(s2Step361Add0A++s2Step361Add0B)).toFinset⊆s2Step361Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step361Add0Arena (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step361Add0_checked : compileHmrHybridCinLog s2Step361Add0Arena 780 800 789 s2Step361Add0A s2Step361Add0B s2Step361Add0Work=some s2Step361Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step361Add0Arena s2Step361Add0During 780 800 789 s2Step361Add0A s2Step361Add0B s2Step361Add0Work
    (by decide +kernel) (by decide +kernel) s2Step361Add0_distinct
    (fun q hq => s2Step361Add0_owned (List.mem_toFinset.mpr hq)) s2Step361Add0_borrowed

private theorem s2Step361Add1_apart : Disjoint s2Step361Add1Arena.live s2Step361Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step361Add1Arena (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step361Add1_card : s2Step361Add1Arena.live.card=910 := by
  decide +kernel

private theorem s2Step361Add1_borrowed : s2Step361Add1Arena.checkBorrow (hmrHybridCount s2Step361Add1Arena s2Step361Add1B.length) s2Step361Add1Work=some s2Step361Add1During := by
  have len : s2Step361Add1Work.length=hmrHybridCount s2Step361Add1Arena s2Step361Add1B.length := by
    rw [hmrHybridCount,s2Step361Add1_card]
    decide +kernel
  have nd : s2Step361Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step361Add1Arena s2Step361Add1During s2Step361Add1Work.toFinset s2Step361Add1_bounded s2Step361Add1_apart rfl

private theorem s2Step361Add1_distinct : (800::780::789::(s2Step361Add1A++s2Step361Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step361Add1_owned : (800::780::789::(s2Step361Add1A++s2Step361Add1B)).toFinset⊆s2Step361Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step361Add1Arena (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step361Add1_checked : compileHmrHybridCinLog s2Step361Add1Arena 780 800 789 s2Step361Add1A s2Step361Add1B s2Step361Add1Work=some s2Step361Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step361Add1Arena s2Step361Add1During 780 800 789 s2Step361Add1A s2Step361Add1B s2Step361Add1Work
    (by decide +kernel) (by decide +kernel) s2Step361Add1_distinct
    (fun q hq => s2Step361Add1_owned (List.mem_toFinset.mpr hq)) s2Step361Add1_borrowed

private theorem s2Step361F4_apart : Disjoint (s2Step361Add0A++s2Step361Add0B).toFinset (s2Step361Add1A++s2Step361Add1B).toFinset := by
  have nd : ((s2Step361Add0A++s2Step361Add0B)++(s2Step361Add1A++s2Step361Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step361F4_carry : s2Step361F4FlagArena.checkBorrow 1 [789]=some s2Step361Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step361F4FlagArena,s2Step361HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step361F4FlagArena,s2Step361HeadFvAfter,s2Step361Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step361F4_distinct : (796::780::800::789::((s2Step361Add0A++s2Step361Add1A)++(s2Step361Add0B++s2Step361Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step361F4_flag : s2Step361HeadFvAfter.checkBorrow 1 [800]=some s2Step361F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step361HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step361F4_owned : (796::780::((s2Step361Add0A++s2Step361Add1A)++(s2Step361Add0B++s2Step361Add1B))).toFinset⊆s2Step361HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step361HeadFvAfter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step361F4_checked : compileHmrHybridF4Log s2Step361HeadFvAfter 796 780 s2Step361Add0A s2Step361Add0B s2Step361Add1A s2Step361Add1B [800] [789] s2Step361Add0Work s2Step361Add1Work=some s2Step361F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step361HeadFvAfter s2Step361F4FlagArena s2Step361Add0Arena s2Step361Add0During s2Step361Add1During 796 780
    s2Step361Add0A s2Step361Add0B s2Step361Add1A s2Step361Add1B [800] [789] s2Step361Add0Work s2Step361Add1Work
    (fun q hq => s2Step361F4_owned (List.mem_toFinset.mpr hq)) s2Step361F4_flag s2Step361F4_carry
    s2Step361F4_distinct s2Step361F4_apart s2Step361Add0_checked s2Step361Add1_checked

private theorem s2Step361Front_branch : s2Step361FrontSigmaArena.checkBorrow 1 [780]=some s2Step361HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step361FrontSigmaArena,s2Step361EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step361FrontSigmaArena,s2Step361EntryGvAfter,s2Step361HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step361Front_entry : HmrFrontEntryValid s2Step361EntryFBefore s2Step361FrontBank 91 197 ⟨90,90,197,197⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step361FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step361EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step361EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step361FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step361Front_sigma : s2Step361EntryGvAfter.checkBorrow 1 [796]=some s2Step361FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step361EntryGvAfter,arenaWires]
  · rfl

private def s2Step361HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<882) ∨ (883≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step361HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step361HeadFBefore : Arena := s2Step361HeadGAfter

private def s2Step361HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602],768⟩

private def s2Step361HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839],770⟩

private def s2Step361HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90],769⟩

private def s2Step361HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821],771⟩

private theorem s2Step361HeadBank_incomingDistinct : ([s2Step361HeadGRow,s2Step361HeadFRow,s2Step361HeadGvRow,s2Step361HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step361HeadF_Incoming : rowsOwned s2Step361HeadFBefore [s2Step361HeadFRow,s2Step361HeadGvRow,s2Step361HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step361HeadGRow,s2Step361HeadFRow,s2Step361HeadGvRow,s2Step361HeadFvRow] 1 s2Step361HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step361HeadFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step361HeadBank_outgoingOwned : rowsOwned s2Step361HeadFvAfter [s2Step361HeadGOut,s2Step361HeadFOut,s2Step361HeadGvOut,s2Step361HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step361HeadFvAfter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step361HeadF_Outgoing : rowsOwned s2Step361HeadFvAfter [s2Step361HeadFOut,s2Step361HeadGvOut,s2Step361HeadFvOut] :=
  hmrRows_owned_drop s2Step361HeadFvAfter [s2Step361HeadGOut,s2Step361HeadFOut,s2Step361HeadGvOut,s2Step361HeadFvOut] 1 s2Step361HeadBank_outgoingOwned

private theorem s2Step361HeadF_distinct : (s2Step361HeadFRow.sign::s2Step361HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step361HeadF_owned : (s2Step361HeadFRow.sign::s2Step361HeadFRow.payload).toFinset⊆s2Step361HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step361HeadFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step361HeadF_reserved : s2Step361HeadFBefore.reserve s2Step361HeadFFresh.toFinset=some s2Step361HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step361HeadFFresh,arenaWires]
  · norm_num [s2Step361HeadFBefore,s2Step361HeadGAfter,s2Step361HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step361HeadFAfter,s2Step361HeadFBefore,s2Step361HeadGAfter,s2Step361HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step361HeadF_checked : planRowResizeLog s2Step361HeadFBefore s2Step361HeadFRow 92 s2Step361HeadFFresh=
    some (s2Step361HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 903],768⟩,growRow 768 s2Step361HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step361HeadFBefore s2Step361HeadFAfter s2Step361HeadFRow 92 s2Step361HeadFFresh
    s2Step361HeadF_distinct s2Step361HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step361HeadF_reserved
  have rowEq : WindowRow.mk (s2Step361HeadFRow.payload++s2Step361HeadFFresh) s2Step361HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 903],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step361HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step361HeadFvBefore : Arena := s2Step361HeadGvAfter

private theorem s2Step361HeadFv_Incoming : rowsOwned s2Step361HeadFvBefore [s2Step361HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step361HeadGRow,s2Step361HeadFRow,s2Step361HeadGvRow,s2Step361HeadFvRow] 3 s2Step361HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step361HeadFvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step361HeadFv_Outgoing : rowsOwned s2Step361HeadFvAfter [s2Step361HeadFvOut] :=
  hmrRows_owned_drop s2Step361HeadFvAfter [s2Step361HeadGOut,s2Step361HeadFOut,s2Step361HeadGvOut,s2Step361HeadFvOut] 3 s2Step361HeadBank_outgoingOwned

private theorem s2Step361HeadFv_distinct : (s2Step361HeadFvRow.sign::s2Step361HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step361HeadFv_owned : (s2Step361HeadFvRow.sign::s2Step361HeadFvRow.payload).toFinset⊆s2Step361HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step361HeadFvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step361HeadFv_reserved : s2Step361HeadFvBefore.reserve s2Step361HeadFvFresh.toFinset=some s2Step361HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step361HeadFvFresh,arenaWires]
  · norm_num [s2Step361HeadFvBefore,s2Step361HeadGvAfter,s2Step361HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step361HeadFvAfter,s2Step361HeadFvBefore,s2Step361HeadGvAfter,s2Step361HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step361HeadFv_checked : planRowResizeLog s2Step361HeadFvBefore s2Step361HeadFvRow 198 s2Step361HeadFvFresh=
    some (s2Step361HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 785],770⟩,growRow 770 s2Step361HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step361HeadFvBefore s2Step361HeadFvAfter s2Step361HeadFvRow 198 s2Step361HeadFvFresh
    s2Step361HeadFv_distinct s2Step361HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step361HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step361HeadFvRow.payload++s2Step361HeadFvFresh) s2Step361HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 785],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step361HeadG_Incoming : rowsOwned s2Step361HeadGBefore [s2Step361HeadGRow,s2Step361HeadFRow,s2Step361HeadGvRow,s2Step361HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step361HeadGRow,s2Step361HeadFRow,s2Step361HeadGvRow,s2Step361HeadFvRow] 0 s2Step361HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step361HeadGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step361HeadG_Outgoing : rowsOwned s2Step361HeadFvAfter [s2Step361HeadGOut,s2Step361HeadFOut,s2Step361HeadGvOut,s2Step361HeadFvOut] :=
  hmrRows_owned_drop s2Step361HeadFvAfter [s2Step361HeadGOut,s2Step361HeadFOut,s2Step361HeadGvOut,s2Step361HeadFvOut] 0 s2Step361HeadBank_outgoingOwned

private theorem s2Step361HeadG_distinct : (s2Step361HeadGRow.sign::s2Step361HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step361HeadG_owned : (s2Step361HeadGRow.sign::s2Step361HeadGRow.payload).toFinset⊆s2Step361HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step361HeadGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step361HeadG_reserved : s2Step361HeadGBefore.reserve s2Step361HeadGFresh.toFinset=some s2Step361HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step361HeadGFresh,arenaWires]
  · norm_num [s2Step361HeadGBefore,s2Step361HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step361HeadGAfter,s2Step361HeadGBefore,s2Step361HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step361HeadG_checked : planRowResizeLog s2Step361HeadGBefore s2Step361HeadGRow 92 s2Step361HeadGFresh=
    some (s2Step361HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 812],769⟩,growRow 769 s2Step361HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step361HeadGBefore s2Step361HeadGAfter s2Step361HeadGRow 92 s2Step361HeadGFresh
    s2Step361HeadG_distinct s2Step361HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step361HeadG_reserved
  have rowEq : WindowRow.mk (s2Step361HeadGRow.payload++s2Step361HeadGFresh) s2Step361HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 812],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step361HeadGvBefore : Arena := s2Step361HeadFAfter

private theorem s2Step361HeadGv_Incoming : rowsOwned s2Step361HeadGvBefore [s2Step361HeadGvRow,s2Step361HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step361HeadGRow,s2Step361HeadFRow,s2Step361HeadGvRow,s2Step361HeadFvRow] 2 s2Step361HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step361HeadGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<882) ∨ (883≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step361HeadGv_Outgoing : rowsOwned s2Step361HeadFvAfter [s2Step361HeadGvOut,s2Step361HeadFvOut] :=
  hmrRows_owned_drop s2Step361HeadFvAfter [s2Step361HeadGOut,s2Step361HeadFOut,s2Step361HeadGvOut,s2Step361HeadFvOut] 2 s2Step361HeadBank_outgoingOwned

private theorem s2Step361HeadGv_distinct : (s2Step361HeadGvRow.sign::s2Step361HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step361HeadGv_owned : (s2Step361HeadGvRow.sign::s2Step361HeadGvRow.payload).toFinset⊆s2Step361HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step361HeadGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<882) ∨ (883≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step361HeadGv_reserved : s2Step361HeadGvBefore.reserve s2Step361HeadGvFresh.toFinset=some s2Step361HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step361HeadGvFresh,arenaWires]
  · norm_num [s2Step361HeadGvBefore,s2Step361HeadFAfter,s2Step361HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step361HeadGvAfter,s2Step361HeadGvBefore,s2Step361HeadFAfter,s2Step361HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step361HeadGv_checked : planRowResizeLog s2Step361HeadGvBefore s2Step361HeadGvRow 198 s2Step361HeadGvFresh=
    some (s2Step361HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 882],771⟩,growRow 771 s2Step361HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step361HeadGvBefore s2Step361HeadGvAfter s2Step361HeadGvRow 198 s2Step361HeadGvFresh
    s2Step361HeadGv_distinct s2Step361HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step361HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step361HeadGvRow.payload++s2Step361HeadGvFresh) s2Step361HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 882],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step361HeadBank_rows : planWindowRowsLog s2Step361HeadGBefore [(s2Step361HeadGRow,92),(s2Step361HeadFRow,92),(s2Step361HeadGvRow,198),(s2Step361HeadFvRow,198)] [s2Step361HeadGFresh,s2Step361HeadFFresh,s2Step361HeadGvFresh,s2Step361HeadFvFresh]=
    some (s2Step361HeadFvAfter,[s2Step361HeadGOut,s2Step361HeadFOut,s2Step361HeadGvOut,s2Step361HeadFvOut],(growRow 769 s2Step361HeadGFresh ++ (growRow 768 s2Step361HeadFFresh ++ (growRow 771 s2Step361HeadGvFresh ++ (growRow 770 s2Step361HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step361HeadFvAfter [] []=some (s2Step361HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step361HeadFvBefore s2Step361HeadFvAfter s2Step361HeadFvAfter
    s2Step361HeadFvRow s2Step361HeadFvOut 198 s2Step361HeadFvFresh [] [] []
    (growRow 770 s2Step361HeadFvFresh) ([]) s2Step361HeadFv_Incoming s2Step361HeadFv_checked h4 s2Step361HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step361HeadGvBefore s2Step361HeadGvAfter s2Step361HeadFvAfter
    s2Step361HeadGvRow s2Step361HeadGvOut 198 s2Step361HeadGvFresh [(s2Step361HeadFvRow,198)] [s2Step361HeadFvFresh] [s2Step361HeadFvOut]
    (growRow 771 s2Step361HeadGvFresh) ((growRow 770 s2Step361HeadFvFresh ++ [])) s2Step361HeadGv_Incoming s2Step361HeadGv_checked h3 s2Step361HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step361HeadFBefore s2Step361HeadFAfter s2Step361HeadFvAfter
    s2Step361HeadFRow s2Step361HeadFOut 92 s2Step361HeadFFresh [(s2Step361HeadGvRow,198),(s2Step361HeadFvRow,198)] [s2Step361HeadGvFresh,s2Step361HeadFvFresh] [s2Step361HeadGvOut,s2Step361HeadFvOut]
    (growRow 768 s2Step361HeadFFresh) ((growRow 771 s2Step361HeadGvFresh ++ (growRow 770 s2Step361HeadFvFresh ++ []))) s2Step361HeadF_Incoming s2Step361HeadF_checked h2 s2Step361HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step361HeadGBefore s2Step361HeadGAfter s2Step361HeadFvAfter
    s2Step361HeadGRow s2Step361HeadGOut 92 s2Step361HeadGFresh [(s2Step361HeadFRow,92),(s2Step361HeadGvRow,198),(s2Step361HeadFvRow,198)] [s2Step361HeadFFresh,s2Step361HeadGvFresh,s2Step361HeadFvFresh] [s2Step361HeadFOut,s2Step361HeadGvOut,s2Step361HeadFvOut]
    (growRow 769 s2Step361HeadGFresh) ((growRow 768 s2Step361HeadFFresh ++ (growRow 771 s2Step361HeadGvFresh ++ (growRow 770 s2Step361HeadFvFresh ++ [])))) s2Step361HeadG_Incoming s2Step361HeadG_checked h1 s2Step361HeadG_Outgoing
  exact h0

private theorem s2Step361HeadBank_checked : compileHmrBankResizeLog .headroom s2Step361HeadGBefore ⟨s2Step361HeadFRow,s2Step361HeadGRow,s2Step361HeadFvRow,s2Step361HeadGvRow⟩ ⟨92,92,198,198⟩ [s2Step361HeadGFresh,s2Step361HeadFFresh,s2Step361HeadGvFresh,s2Step361HeadFvFresh]=
    some (s2Step361HeadFvAfter,⟨s2Step361HeadFOut,s2Step361HeadGOut,s2Step361HeadFvOut,s2Step361HeadGvOut⟩,(growRow 769 s2Step361HeadGFresh ++ (growRow 768 s2Step361HeadFFresh ++ (growRow 771 s2Step361HeadGvFresh ++ (growRow 770 s2Step361HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step361HeadBank_rows]
  rfl

private theorem s2Step361Front_checked : compileHmrSourceFrontLog s2Step361EntryFBefore s2Step361FrontBank 91 197 ⟨90,90,197,197⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step361FrontLog=some s2Step361FrontPlan := by
  have pairEq : s2Step361FrontPair=⟨s2Step361HeadFRow,s2Step361HeadGRow,s2Step361HeadFvRow,s2Step361HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step361FrontHead=⟨s2Step361ExitFRow,s2Step361ExitGRow,s2Step361ExitFvRow,s2Step361ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step361Add0A=s2Step361FrontHead.f.wires := by decide +kernel
  have gEq : s2Step361Add0B=s2Step361FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step361Add1A=s2Step361FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step361Add1B=s2Step361FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step361EntryFBefore s2Step361FrontBank 91 197 ⟨90,90,197,197⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step361FrontLog s2Step361FrontPlan
  · exact s2Step361Front_entry
  · exact s2Step361EntryBank_checked
  · exact s2Step361Front_sigma
  · rfl
  · exact s2Step361Front_branch
  · rfl
  · simpa only [s2Step361FrontPlan,pairEq] using s2Step361HeadBank_checked
  · simpa only [s2Step361FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step361F4_checked
  · exact s2Step361Counter_checked
  · rfl
  · simpa only [s2Step361FrontPlan,headEq] using s2Step361ExitBank_checked

private theorem s2Step361Complete_explicit_checked : compileHmrEarlyStepLog s2Step361EntryFBefore s2Step361FrontBank 91 197 ⟨90,90,197,197⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step361CompleteLog=some s2Step361CompletePlan := by
  let Q := s2Step361EarlyControlPlan
  have hq := s2Step361EarlyControl_plan_checked
  have fv1 : s2Step361CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step361CompleteOut.fv.payload[2]?.getD s2Step361CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step361CompleteOut.fv.payload[3]?.getD s2Step361CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step361CompleteOut.fv.payload[4]?.getD s2Step361CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step361EntryFBefore s2Step361EarlyControlArena s2Step361FrontBank 91 197 ⟨90,90,197,197⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step361CompleteLog s2Step361FrontPlan Q
    s2Step361Front_checked s2Step361Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step361Complete_owned s2Step361Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step361EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 796 s2Step361CompleteOut.fv.second (s2Step361CompleteOut.fv.payload[2]?.getD s2Step361CompleteOut.fv.sign) (s2Step361CompleteOut.fv.payload[3]?.getD s2Step361CompleteOut.fv.sign) (s2Step361CompleteOut.fv.payload[4]?.getD s2Step361CompleteOut.fv.sign) 780 60 s2Step361EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep361Arena : Arena := s2Step361EntryFBefore
def s2PrivateStep361Bank : WindowBank := s2Step361FrontBank
def s2PrivateStep361Spec : HmrSourceWalkStepLog := ⟨91,197,⟨90,90,197,197⟩,60,.early s2Step361CompleteLog⟩
def s2PrivateStep361Plan : HmrSourceStepPlan := .early s2Step361CompletePlan
theorem s2PrivateStep361_source : s2PrivateStep361Spec=s2ObservedLogs352[9] := rfl
theorem s2PrivateStep361_checked : compileHmrSourceStepLog s2PrivateStep361Arena s2PrivateStep361Bank
    s2PrivateStep361Spec.fgWidth s2PrivateStep361Spec.vWidth s2PrivateStep361Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]
    6 498 361 s2PrivateStep361Spec.need none s2PrivateStep361Spec.log=some s2PrivateStep361Plan := by
  change compileHmrSourceStepLog s2Step361EntryFBefore s2Step361FrontBank 91 197 ⟨90,90,197,197⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 6 498 361 60 none (.early s2Step361CompleteLog)=some (.early s2Step361CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 361<498)]
  rw [s2Step361Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
