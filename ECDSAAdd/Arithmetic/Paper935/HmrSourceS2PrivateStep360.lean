import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep358
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

private def s2Step360CompleteMoves : List (Wire × Wire) := [(780,603)]

private def s2Step360EarlyControlLog : HmrEarlyControlLog := ⟨[780, 812, 903, 882, 785],[800],[789],[827, 844, 907, 913, 914, 915],[]⟩

private def s2Step360FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [882], [], []],[[785], [903], [812], [839]],[[], [], [], []]⟩,[796],[821],[800],[789],[827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[800, 789, 827, 844]⟩

private def s2Step360CompleteLog : HmrEarlyStepLog := ⟨s2Step360FrontLog,s2Step360CompleteMoves,s2Step360EarlyControlLog⟩

private def s2Step360ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602],768⟩

private def s2Step360ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839],770⟩

private def s2Step360ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90],769⟩

private def s2Step360ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790],771⟩

private def s2Step360FrontOut : WindowBank := ⟨s2Step360ExitFOut,s2Step360ExitGOut,s2Step360ExitFvOut,s2Step360ExitGvOut⟩

private def s2Step360CompleteOut : WindowBank := s2Step360FrontOut.repacked s2Step360CompleteMoves

private def s2Step360EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step360EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step360EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step360EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step360EarlyControlPositiveArena,[800],s2Step360EarlyControlEqualityArena,[789],⟨⟨796,false⟩,[⟨⟨800,false⟩,789⟩]⟩⟩

private def s2Step360EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<916)),Finset.filter_subset _ _⟩

private def s2Step360EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<916)),Finset.filter_subset _ _⟩

private def s2Step360EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step360EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step360EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step360EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step360EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,780⟩,⟨⟨774,false⟩,812⟩,⟨⟨775,false⟩,903⟩,⟨⟨776,false⟩,882⟩,⟨⟨777,false⟩,785⟩]⟩

private def s2Step360EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step360EarlyControlZeroArena,s2Step360EarlyControlZeroPlan,s2Step360EarlyControlClassPlan,s2Step360EarlyControlFlagArena,s2Step360EarlyControlFittedArena,s2Step360EarlyControlHistoryArena,s2Step360EarlyControlSigmaArena,s2Step360EarlyControlOutputArena,s2Step360EarlyControlLog⟩

private def s2Step360CounterWork : List Wire := [800, 789, 827, 844]

private theorem s2Step360Counter_bounded : s2Step360CounterWork.toFinset⊆arenaWires := by norm_num [s2Step360CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step360HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step360CounterDuring : Arena := ⟨s2Step360HeadFvAfter.live∪s2Step360CounterWork.toFinset,Finset.union_subset s2Step360HeadFvAfter.bounded s2Step360Counter_bounded⟩

private def s2Step360EntryFFresh : List Wire := []

private def s2Step360EntryFvFresh : List Wire := []

private def s2Step360EntryGFresh : List Wire := [882]

private def s2Step360EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step360EntryGvAfter : Arena := s2Step360EntryGAfter

private def s2Step360EntryGvFresh : List Wire := []

private def s2Step360ExitFExtra : List Wire := [603, 903]

private def s2Step360ExitGExtra : List Wire := [882, 785]

private def s2Step360ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<603) ∨ (604≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step360ExitGvExtra : List Wire := [812]

private def s2Step360Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step360Add0Work : List Wire := [827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step360Add0_bounded : s2Step360Add0Work.toFinset⊆arenaWires := by
  have h : s2Step360Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step360Add0During : Arena := ⟨s2Step360Add0Arena.live∪s2Step360Add0Work.toFinset,Finset.union_subset s2Step360Add0Arena.bounded s2Step360Add0_bounded⟩

private def s2Step360Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step360Add1Work : List Wire := [827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step360Add1_bounded : s2Step360Add1Work.toFinset⊆arenaWires := by
  have h : s2Step360Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step360Add1During : Arena := ⟨s2Step360Add1Arena.live∪s2Step360Add1Work.toFinset,Finset.union_subset s2Step360Add1Arena.bounded s2Step360Add1_bounded⟩

private def s2Step360F4FlagArena : Arena := ⟨s2Step360HeadFvAfter.live∪{800},Finset.union_subset s2Step360HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step360F4Plan : HmrHybridF4Plan := ⟨s2Step360F4FlagArena,[800],s2Step360Add0Arena,[789],s2Step360Add0During,s2Step360Add0Work,s2Step360Add1During,s2Step360Add1Work⟩

private def s2Step360HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 903],768⟩

private def s2Step360HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839],770⟩

private def s2Step360HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 882, 785],769⟩

private def s2Step360HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 812],771⟩

private def s2Step360FrontHead : WindowBank := ⟨s2Step360HeadFOut,s2Step360HeadGOut,s2Step360HeadFvOut,s2Step360HeadGvOut⟩

private def s2Step360EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603],768⟩

private def s2Step360EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832],770⟩

private def s2Step360EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 882],769⟩

private def s2Step360EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790],771⟩

private def s2Step360FrontPair : WindowBank := ⟨s2Step360EntryFOut,s2Step360EntryGOut,s2Step360EntryFvOut,s2Step360EntryGvOut⟩

private def s2Step360FrontSigmaArena : Arena := ⟨s2Step360EntryGvAfter.live∪{796},Finset.union_subset s2Step360EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step360HeadFFresh : List Wire := [903]

private def s2Step360HeadFvFresh : List Wire := [839]

private def s2Step360HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step360HeadGFresh : List Wire := [785]

private def s2Step360HeadGvFresh : List Wire := [812]

private def s2Step360FrontPlan : HmrSourceFront := ⟨s2Step360EntryGvAfter,s2Step360FrontPair,(growRow 768 s2Step360EntryFFresh ++ (growRow 769 s2Step360EntryGFresh ++ (growRow 770 s2Step360EntryFvFresh ++ (growRow 771 s2Step360EntryGvFresh ++ [])))),s2Step360FrontSigmaArena,[796],s2Step360HeadGBefore,[821],
  s2Step360HeadFvAfter,s2Step360FrontHead,(growRow 769 s2Step360HeadGFresh ++ (growRow 768 s2Step360HeadFFresh ++ (growRow 771 s2Step360HeadGvFresh ++ (growRow 770 s2Step360HeadFvFresh ++ [])))),s2Step360F4Plan,s2Step360CounterDuring,s2Step360CounterWork,s2Step360ExitGvAfter,s2Step360FrontOut,(shrinkRow 769 s2Step360ExitGExtra ++ (shrinkRow 768 s2Step360ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step360ExitGvExtra ++ []))))⟩

private def s2Step360CompletePlan : HmrEarlyStepPlan := ⟨s2Step360FrontPlan,s2Step360EarlyControlArena,s2Step360EarlyControlPlan,s2Step360CompleteMoves⟩

private theorem s2Step360Complete_apart : List.Disjoint (s2Step360CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [796, 821, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] := by
  have nd : ((s2Step360CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[796, 821, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step360Complete_owned : (s2Step360CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step360EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step360EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private def s2Step360CompleteMoveArena : Arena := ⟨s2Step360ExitGvAfter.live∪{603},Finset.union_subset s2Step360ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step360Complete_repack : s2Step360ExitGvAfter.checkRepack s2Step360CompleteMoves=some s2Step360EarlyControlArena := by
  have owned : 780∈s2Step360ExitGvAfter.live := by norm_num [s2Step360ExitGvAfter,arenaWires]
  have reserve : s2Step360ExitGvAfter.reserve {603}=some s2Step360CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step360ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step360CompleteMoveArena.retireSet {780}=s2Step360EarlyControlArena := by
    unfold Arena.retireSet s2Step360EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step360CompleteMoveArena,s2Step360ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step360CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step360CompleteMoveArena.retireSet {780}).checkRepack []=some s2Step360EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step360EarlyControl_branchOwned : ([821] : List Wire).toFinset⊆s2Step360EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step360EarlyControlSigmaArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step360EarlyControl_branch : compileHmrBranchRetirement s2Step360EarlyControlSigmaArena 821=some s2Step360EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step360EarlyControl_branchOwned
  · ext q
    simp [s2Step360EarlyControlOutputArena,s2Step360EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step360EarlyControl_classEqualityBorrow : s2Step360EarlyControlPositiveArena.checkBorrow (([796, 800] : List Wire).length-1) s2Step360EarlyControlLog.classWork=some s2Step360EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step360EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step360EarlyControlPositiveArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step360EarlyControlEqualityArena,s2Step360EarlyControlPositiveArena,s2Step360EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step360EarlyControl_classEqualityOwned : ([796, 800] : List Wire).toFinset⊆s2Step360EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step360EarlyControlPositiveArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step360EarlyControl_classEquality : compileHmrEqualityLog s2Step360EarlyControlPositiveArena [796, 800] 0 s2Step360EarlyControlLog.classWork=some (s2Step360EarlyControlEqualityArena,s2Step360EarlyControlLog.classWork,s2Step360EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step360EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step360EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step360EarlyControl_classOwned : ([777, 785, 796] : List Wire).toFinset⊆s2Step360EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step360EarlyControlZeroArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step360EarlyControl_positiveBorrow : s2Step360EarlyControlZeroArena.checkBorrow (1) s2Step360EarlyControlLog.positiveWork=some s2Step360EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step360EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step360EarlyControlZeroArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step360EarlyControlPositiveArena,s2Step360EarlyControlZeroArena,s2Step360EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step360EarlyControl_class : compileHmrSourceClassLog s2Step360EarlyControlZeroArena false 777 s2Step360EarlyControlZeroPlan.top 0 796 s2Step360EarlyControlLog.positiveWork s2Step360EarlyControlLog.classWork=some s2Step360EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step360EarlyControlClassPlan s2Step360EarlyControlZeroArena false 777 s2Step360EarlyControlZeroPlan.top 0 796
  constructor
  · decide +kernel
  · exact s2Step360EarlyControl_classOwned
  · exact s2Step360EarlyControl_positiveBorrow
  · exact s2Step360EarlyControl_classEquality

private theorem s2Step360EarlyControl_entryRecordOwned : ([821, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step360EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step360EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step360EarlyControl_entrySigmaOwned : ([796, 254] : List Wire).toFinset⊆s2Step360EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step360EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step360EarlyControl_fitBorrow : s2Step360EarlyControlFlagArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step360EarlyControlLog.recordFresh=some s2Step360EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step360EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step360EarlyControlFlagArena (fun q => (0≤q ∧ q<916)) rfl
      decide +kernel
    · ext q
      simp [s2Step360EarlyControlFittedArena,s2Step360EarlyControlFlagArena,s2Step360EarlyControlLog,arenaWires]

private theorem s2Step360EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step360EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step360EarlyControlFlagArena (fun q => (0≤q ∧ q<916)) rfl
  decide +kernel

private theorem s2Step360EarlyControl_fit : compileHmrRecordGrowLog s2Step360EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step360EarlyControlLog.recordFresh=some s2Step360EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step360EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step360EarlyControl_fitBorrow

private theorem s2Step360EarlyControl_flagsBorrow : s2Step360EarlyControlEqualityArena.checkBorrow (6) s2Step360EarlyControlLog.flagWork=some s2Step360EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step360EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step360EarlyControlEqualityArena (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step360EarlyControlFlagArena,s2Step360EarlyControlEqualityArena,s2Step360EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step360EarlyControl_flagsOwned : ([789, 253, 252, 251] : List Wire).toFinset⊆s2Step360EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step360EarlyControlEqualityArena (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step360EarlyControl_flags : compileHmrFlagsLog s2Step360EarlyControlClassPlan.equalityArena s2Step360EarlyControlClassPlan.equality.top 253 252 251 s2Step360EarlyControlLog.flagWork=some s2Step360EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step360EarlyControl_flagsOwned⟩
  · exact s2Step360EarlyControl_flagsBorrow

private theorem s2Step360EarlyControl_historyBorrow : s2Step360EarlyControlArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step360EarlyControlLog.recordFresh=some s2Step360EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step360EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step360EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step360EarlyControlHistoryArena,s2Step360EarlyControlArena,s2Step360EarlyControlLog,arenaWires]

private theorem s2Step360EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step360EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step360EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step360EarlyControl_history : compileHmrRecordGrowLog s2Step360EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step360EarlyControlLog.recordFresh=some s2Step360EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step360EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step360EarlyControl_historyBorrow

private theorem s2Step360EarlyControl_sigmaOwned : ([254, 796] : List Wire).toFinset⊆s2Step360EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step360EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step360EarlyControl_sigmaReleaseOwned : ([796] : List Wire).toFinset⊆s2Step360EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step360EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step360EarlyControl_sigmaRelease : s2Step360EarlyControlHistoryArena.release {796} (fun _ => false)=some s2Step360EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step360EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step360EarlyControlSigmaArena,s2Step360EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step360EarlyControl_sigma : compileHmrSigmaDropLog s2Step360EarlyControlHistoryArena false 0 0 254 796 []=some s2Step360EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step360EarlyControl_sigmaOwned⟩
  · exact s2Step360EarlyControl_sigmaRelease

private theorem s2Step360EarlyControl_zeroBorrow : s2Step360EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step360EarlyControlLog.zeroWork=some s2Step360EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step360EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step360EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step360EarlyControlZeroArena,s2Step360EarlyControlArena,s2Step360EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step360EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step360EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step360EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step360EarlyControl_zero : compileHmrEqualityLog s2Step360EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step360EarlyControlLog.zeroWork=some (s2Step360EarlyControlZeroArena,s2Step360EarlyControlLog.zeroWork,s2Step360EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step360EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step360EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step360EarlyControl_logged : s2Step360EarlyControlPlan.Logged s2Step360EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 796 254 253 252 251 821 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step360EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step360EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step360EarlyControl_zero
  · exact s2Step360EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step360EarlyControl_flags
  · exact s2Step360EarlyControl_fit
  · exact s2Step360EarlyControl_history
  · exact s2Step360EarlyControl_sigma
  · exact s2Step360EarlyControl_branch

private theorem s2Step360EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step360EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 796 254 253 252 251 821 60 s2Step360EarlyControlLog=some s2Step360EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step360EarlyControlPlan s2Step360EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 796 254 253 252 251 821 60 s2Step360EarlyControl_logged

private def s2Step360EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step360EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603],768⟩

private def s2Step360EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832],770⟩

private def s2Step360EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90],769⟩

private def s2Step360EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790],771⟩

private def s2Step360FrontBank : WindowBank := ⟨s2Step360EntryFRow,s2Step360EntryGRow,s2Step360EntryFvRow,s2Step360EntryGvRow⟩

private def s2Step360Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 903, 768]

private def s2Step360Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 882, 785, 769]

private def s2Step360Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 770]

private def s2Step360Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 812, 771]

private theorem s2Step360Counter_apart : Disjoint s2Step360HeadFvAfter.live s2Step360CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step360HeadFvAfter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step360Counter_borrowed : s2Step360HeadFvAfter.checkBorrow 4 s2Step360CounterWork=some s2Step360CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step360HeadFvAfter s2Step360CounterDuring s2Step360CounterWork.toFinset s2Step360Counter_bounded s2Step360Counter_apart rfl

private theorem s2Step360Counter_owned : (796::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step360HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step360HeadFvAfter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step360Counter_checked : compileHmrCounterStepLog s2Step360HeadFvAfter true 796 [772, 773, 774, 775, 776, 777] s2Step360CounterWork=some s2Step360CounterDuring := by
  have owned : ∀q∈796::[772, 773, 774, 775, 776, 777],q∈s2Step360HeadFvAfter.live := fun q hq => s2Step360Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step360Counter_borrowed

private def s2Step360EntryFAfter : Arena := s2Step360EntryFBefore

private theorem s2Step360EntryBank_incomingDistinct : ([s2Step360EntryFRow,s2Step360EntryGRow,s2Step360EntryFvRow,s2Step360EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step360EntryF_Incoming : rowsOwned s2Step360EntryFBefore [s2Step360EntryFRow,s2Step360EntryGRow,s2Step360EntryFvRow,s2Step360EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step360EntryFRow,s2Step360EntryGRow,s2Step360EntryFvRow,s2Step360EntryGvRow] 0 s2Step360EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step360EntryFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step360EntryBank_outgoingOwned : rowsOwned s2Step360EntryGvAfter [s2Step360EntryFOut,s2Step360EntryGOut,s2Step360EntryFvOut,s2Step360EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step360EntryGvAfter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step360EntryF_Outgoing : rowsOwned s2Step360EntryGvAfter [s2Step360EntryFOut,s2Step360EntryGOut,s2Step360EntryFvOut,s2Step360EntryGvOut] :=
  hmrRows_owned_drop s2Step360EntryGvAfter [s2Step360EntryFOut,s2Step360EntryGOut,s2Step360EntryFvOut,s2Step360EntryGvOut] 0 s2Step360EntryBank_outgoingOwned

private theorem s2Step360EntryF_distinct : (s2Step360EntryFRow.sign::s2Step360EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step360EntryF_owned : (s2Step360EntryFRow.sign::s2Step360EntryFRow.payload).toFinset⊆s2Step360EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step360EntryFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step360EntryF_reserved : s2Step360EntryFBefore.reserve s2Step360EntryFFresh.toFinset=some s2Step360EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step360EntryFFresh,arenaWires]
  · norm_num [s2Step360EntryFBefore,s2Step360EntryFFresh,arenaWires]
  · simp only [s2Step360EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step360EntryF_checked : planRowResizeLog s2Step360EntryFBefore s2Step360EntryFRow 92 s2Step360EntryFFresh=
    some (s2Step360EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603],768⟩,growRow 768 s2Step360EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step360EntryFBefore s2Step360EntryFAfter s2Step360EntryFRow 92 s2Step360EntryFFresh
    s2Step360EntryF_distinct s2Step360EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step360EntryF_reserved
  have rowEq : WindowRow.mk (s2Step360EntryFRow.payload++s2Step360EntryFFresh) s2Step360EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step360EntryFvAfter : Arena := s2Step360EntryGAfter

private def s2Step360EntryFvBefore : Arena := s2Step360EntryGAfter

private theorem s2Step360EntryFv_Incoming : rowsOwned s2Step360EntryFvBefore [s2Step360EntryFvRow,s2Step360EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step360EntryFRow,s2Step360EntryGRow,s2Step360EntryFvRow,s2Step360EntryGvRow] 2 s2Step360EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step360EntryFvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step360EntryFv_Outgoing : rowsOwned s2Step360EntryGvAfter [s2Step360EntryFvOut,s2Step360EntryGvOut] :=
  hmrRows_owned_drop s2Step360EntryGvAfter [s2Step360EntryFOut,s2Step360EntryGOut,s2Step360EntryFvOut,s2Step360EntryGvOut] 2 s2Step360EntryBank_outgoingOwned

private theorem s2Step360EntryFv_distinct : (s2Step360EntryFvRow.sign::s2Step360EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step360EntryFv_owned : (s2Step360EntryFvRow.sign::s2Step360EntryFvRow.payload).toFinset⊆s2Step360EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step360EntryFvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step360EntryFv_reserved : s2Step360EntryFvBefore.reserve s2Step360EntryFvFresh.toFinset=some s2Step360EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step360EntryFvFresh,arenaWires]
  · norm_num [s2Step360EntryFvBefore,s2Step360EntryGAfter,s2Step360EntryFvFresh,arenaWires]
  · simp only [s2Step360EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step360EntryFv_checked : planRowResizeLog s2Step360EntryFvBefore s2Step360EntryFvRow 196 s2Step360EntryFvFresh=
    some (s2Step360EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832],770⟩,growRow 770 s2Step360EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step360EntryFvBefore s2Step360EntryFvAfter s2Step360EntryFvRow 196 s2Step360EntryFvFresh
    s2Step360EntryFv_distinct s2Step360EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step360EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step360EntryFvRow.payload++s2Step360EntryFvFresh) s2Step360EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step360EntryGBefore : Arena := s2Step360EntryFBefore

private theorem s2Step360EntryG_Incoming : rowsOwned s2Step360EntryGBefore [s2Step360EntryGRow,s2Step360EntryFvRow,s2Step360EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step360EntryFRow,s2Step360EntryGRow,s2Step360EntryFvRow,s2Step360EntryGvRow] 1 s2Step360EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step360EntryGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step360EntryG_Outgoing : rowsOwned s2Step360EntryGvAfter [s2Step360EntryGOut,s2Step360EntryFvOut,s2Step360EntryGvOut] :=
  hmrRows_owned_drop s2Step360EntryGvAfter [s2Step360EntryFOut,s2Step360EntryGOut,s2Step360EntryFvOut,s2Step360EntryGvOut] 1 s2Step360EntryBank_outgoingOwned

private theorem s2Step360EntryG_distinct : (s2Step360EntryGRow.sign::s2Step360EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step360EntryG_owned : (s2Step360EntryGRow.sign::s2Step360EntryGRow.payload).toFinset⊆s2Step360EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step360EntryGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step360EntryG_reserved : s2Step360EntryGBefore.reserve s2Step360EntryGFresh.toFinset=some s2Step360EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step360EntryGFresh,arenaWires]
  · norm_num [s2Step360EntryGBefore,s2Step360EntryFBefore,s2Step360EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step360EntryGAfter,s2Step360EntryGBefore,s2Step360EntryFBefore,s2Step360EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step360EntryG_checked : planRowResizeLog s2Step360EntryGBefore s2Step360EntryGRow 92 s2Step360EntryGFresh=
    some (s2Step360EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 882],769⟩,growRow 769 s2Step360EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step360EntryGBefore s2Step360EntryGAfter s2Step360EntryGRow 92 s2Step360EntryGFresh
    s2Step360EntryG_distinct s2Step360EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step360EntryG_reserved
  have rowEq : WindowRow.mk (s2Step360EntryGRow.payload++s2Step360EntryGFresh) s2Step360EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 882],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step360EntryGvBefore : Arena := s2Step360EntryGAfter

private theorem s2Step360EntryGv_Incoming : rowsOwned s2Step360EntryGvBefore [s2Step360EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step360EntryFRow,s2Step360EntryGRow,s2Step360EntryFvRow,s2Step360EntryGvRow] 3 s2Step360EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step360EntryGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step360EntryGv_Outgoing : rowsOwned s2Step360EntryGvAfter [s2Step360EntryGvOut] :=
  hmrRows_owned_drop s2Step360EntryGvAfter [s2Step360EntryFOut,s2Step360EntryGOut,s2Step360EntryFvOut,s2Step360EntryGvOut] 3 s2Step360EntryBank_outgoingOwned

private theorem s2Step360EntryGv_distinct : (s2Step360EntryGvRow.sign::s2Step360EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step360EntryGv_owned : (s2Step360EntryGvRow.sign::s2Step360EntryGvRow.payload).toFinset⊆s2Step360EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step360EntryGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step360EntryGv_reserved : s2Step360EntryGvBefore.reserve s2Step360EntryGvFresh.toFinset=some s2Step360EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step360EntryGvFresh,arenaWires]
  · norm_num [s2Step360EntryGvBefore,s2Step360EntryGAfter,s2Step360EntryGvFresh,arenaWires]
  · simp only [s2Step360EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step360EntryGv_checked : planRowResizeLog s2Step360EntryGvBefore s2Step360EntryGvRow 196 s2Step360EntryGvFresh=
    some (s2Step360EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790],771⟩,growRow 771 s2Step360EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step360EntryGvBefore s2Step360EntryGvAfter s2Step360EntryGvRow 196 s2Step360EntryGvFresh
    s2Step360EntryGv_distinct s2Step360EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step360EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step360EntryGvRow.payload++s2Step360EntryGvFresh) s2Step360EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step360EntryBank_rows : planWindowRowsLog s2Step360EntryFBefore [(s2Step360EntryFRow,92),(s2Step360EntryGRow,92),(s2Step360EntryFvRow,196),(s2Step360EntryGvRow,196)] [s2Step360EntryFFresh,s2Step360EntryGFresh,s2Step360EntryFvFresh,s2Step360EntryGvFresh]=
    some (s2Step360EntryGvAfter,[s2Step360EntryFOut,s2Step360EntryGOut,s2Step360EntryFvOut,s2Step360EntryGvOut],(growRow 768 s2Step360EntryFFresh ++ (growRow 769 s2Step360EntryGFresh ++ (growRow 770 s2Step360EntryFvFresh ++ (growRow 771 s2Step360EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step360EntryGvAfter [] []=some (s2Step360EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step360EntryGvBefore s2Step360EntryGvAfter s2Step360EntryGvAfter
    s2Step360EntryGvRow s2Step360EntryGvOut 196 s2Step360EntryGvFresh [] [] []
    (growRow 771 s2Step360EntryGvFresh) ([]) s2Step360EntryGv_Incoming s2Step360EntryGv_checked h4 s2Step360EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step360EntryFvBefore s2Step360EntryFvAfter s2Step360EntryGvAfter
    s2Step360EntryFvRow s2Step360EntryFvOut 196 s2Step360EntryFvFresh [(s2Step360EntryGvRow,196)] [s2Step360EntryGvFresh] [s2Step360EntryGvOut]
    (growRow 770 s2Step360EntryFvFresh) ((growRow 771 s2Step360EntryGvFresh ++ [])) s2Step360EntryFv_Incoming s2Step360EntryFv_checked h3 s2Step360EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step360EntryGBefore s2Step360EntryGAfter s2Step360EntryGvAfter
    s2Step360EntryGRow s2Step360EntryGOut 92 s2Step360EntryGFresh [(s2Step360EntryFvRow,196),(s2Step360EntryGvRow,196)] [s2Step360EntryFvFresh,s2Step360EntryGvFresh] [s2Step360EntryFvOut,s2Step360EntryGvOut]
    (growRow 769 s2Step360EntryGFresh) ((growRow 770 s2Step360EntryFvFresh ++ (growRow 771 s2Step360EntryGvFresh ++ []))) s2Step360EntryG_Incoming s2Step360EntryG_checked h2 s2Step360EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step360EntryFBefore s2Step360EntryFAfter s2Step360EntryGvAfter
    s2Step360EntryFRow s2Step360EntryFOut 92 s2Step360EntryFFresh [(s2Step360EntryGRow,92),(s2Step360EntryFvRow,196),(s2Step360EntryGvRow,196)] [s2Step360EntryGFresh,s2Step360EntryFvFresh,s2Step360EntryGvFresh] [s2Step360EntryGOut,s2Step360EntryFvOut,s2Step360EntryGvOut]
    (growRow 768 s2Step360EntryFFresh) ((growRow 769 s2Step360EntryGFresh ++ (growRow 770 s2Step360EntryFvFresh ++ (growRow 771 s2Step360EntryGvFresh ++ [])))) s2Step360EntryF_Incoming s2Step360EntryF_checked h1 s2Step360EntryF_Outgoing
  exact h0

private theorem s2Step360EntryBank_checked : compileHmrBankResizeLog .entry s2Step360EntryFBefore ⟨s2Step360EntryFRow,s2Step360EntryGRow,s2Step360EntryFvRow,s2Step360EntryGvRow⟩ ⟨92,92,196,196⟩ [s2Step360EntryFFresh,s2Step360EntryGFresh,s2Step360EntryFvFresh,s2Step360EntryGvFresh]=
    some (s2Step360EntryGvAfter,⟨s2Step360EntryFOut,s2Step360EntryGOut,s2Step360EntryFvOut,s2Step360EntryGvOut⟩,(growRow 768 s2Step360EntryFFresh ++ (growRow 769 s2Step360EntryGFresh ++ (growRow 770 s2Step360EntryFvFresh ++ (growRow 771 s2Step360EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step360EntryBank_rows]
  rfl

private def s2Step360ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<603) ∨ (604≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step360ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<882) ∨ (883≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step360ExitFBefore : Arena := s2Step360ExitGAfter

private def s2Step360ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 903],768⟩

private def s2Step360ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839],770⟩

private def s2Step360ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 882, 785],769⟩

private def s2Step360ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 812],771⟩

private theorem s2Step360ExitBank_incomingDistinct : ([s2Step360ExitGRow,s2Step360ExitFRow,s2Step360ExitFvRow,s2Step360ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step360ExitF_Incoming : rowsOwned s2Step360ExitFBefore [s2Step360ExitFRow,s2Step360ExitFvRow,s2Step360ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step360ExitGRow,s2Step360ExitFRow,s2Step360ExitFvRow,s2Step360ExitGvRow] 1 s2Step360ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step360ExitFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<882) ∨ (883≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step360ExitBank_outgoingOwned : rowsOwned s2Step360ExitGvAfter [s2Step360ExitGOut,s2Step360ExitFOut,s2Step360ExitFvOut,s2Step360ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step360ExitGvAfter (fun q => (0≤q ∧ q<603) ∨ (604≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step360ExitF_Outgoing : rowsOwned s2Step360ExitGvAfter [s2Step360ExitFOut,s2Step360ExitFvOut,s2Step360ExitGvOut] :=
  hmrRows_owned_drop s2Step360ExitGvAfter [s2Step360ExitGOut,s2Step360ExitFOut,s2Step360ExitFvOut,s2Step360ExitGvOut] 1 s2Step360ExitBank_outgoingOwned

private theorem s2Step360ExitF_distinct : (s2Step360ExitFRow.sign::s2Step360ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step360ExitF_owned : (s2Step360ExitFRow.sign::s2Step360ExitFRow.payload).toFinset⊆s2Step360ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step360ExitFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<882) ∨ (883≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step360ExitF_retired : s2Step360ExitFBefore.retireSet s2Step360ExitFExtra.toFinset=s2Step360ExitFAfter := by
  unfold Arena.retireSet s2Step360ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step360ExitFBefore,s2Step360ExitGAfter,s2Step360ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step360ExitF_checked : planRowResizeLog s2Step360ExitFBefore s2Step360ExitFRow 91 []=
    some (s2Step360ExitFAfter,s2Step360ExitFOut,shrinkRow 768 s2Step360ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step360ExitFBefore s2Step360ExitFRow 91 s2Step360ExitF_distinct s2Step360ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step360ExitFRow.payload.take 91) s2Step360ExitFRow.sign=s2Step360ExitFOut := by decide +kernel
  have hi : s2Step360ExitFRow.payload.drop 91=s2Step360ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step360ExitF_retired] at result
  exact result

private def s2Step360ExitFvAfter : Arena := s2Step360ExitFAfter

private def s2Step360ExitFvBefore : Arena := s2Step360ExitFAfter

private theorem s2Step360ExitFv_Incoming : rowsOwned s2Step360ExitFvBefore [s2Step360ExitFvRow,s2Step360ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step360ExitGRow,s2Step360ExitFRow,s2Step360ExitFvRow,s2Step360ExitGvRow] 2 s2Step360ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step360ExitFvBefore (fun q => (0≤q ∧ q<603) ∨ (604≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step360ExitFv_Outgoing : rowsOwned s2Step360ExitGvAfter [s2Step360ExitFvOut,s2Step360ExitGvOut] :=
  hmrRows_owned_drop s2Step360ExitGvAfter [s2Step360ExitGOut,s2Step360ExitFOut,s2Step360ExitFvOut,s2Step360ExitGvOut] 2 s2Step360ExitBank_outgoingOwned

private theorem s2Step360ExitFv_distinct : (s2Step360ExitFvRow.sign::s2Step360ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step360ExitFv_owned : (s2Step360ExitFvRow.sign::s2Step360ExitFvRow.payload).toFinset⊆s2Step360ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step360ExitFvBefore (fun q => (0≤q ∧ q<603) ∨ (604≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step360ExitFv_reserved : s2Step360ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step360ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step360ExitFv_checked : planRowResizeLog s2Step360ExitFvBefore s2Step360ExitFvRow 197 []=
    some (s2Step360ExitFvAfter,s2Step360ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step360ExitFvBefore s2Step360ExitFvAfter s2Step360ExitFvRow 197 []
    s2Step360ExitFv_distinct s2Step360ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step360ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step360ExitFvRow.payload++[]) s2Step360ExitFvRow.sign=s2Step360ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step360ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private theorem s2Step360ExitG_Incoming : rowsOwned s2Step360ExitGBefore [s2Step360ExitGRow,s2Step360ExitFRow,s2Step360ExitFvRow,s2Step360ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step360ExitGRow,s2Step360ExitFRow,s2Step360ExitFvRow,s2Step360ExitGvRow] 0 s2Step360ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step360ExitGBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step360ExitG_Outgoing : rowsOwned s2Step360ExitGvAfter [s2Step360ExitGOut,s2Step360ExitFOut,s2Step360ExitFvOut,s2Step360ExitGvOut] :=
  hmrRows_owned_drop s2Step360ExitGvAfter [s2Step360ExitGOut,s2Step360ExitFOut,s2Step360ExitFvOut,s2Step360ExitGvOut] 0 s2Step360ExitBank_outgoingOwned

private theorem s2Step360ExitG_distinct : (s2Step360ExitGRow.sign::s2Step360ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step360ExitG_owned : (s2Step360ExitGRow.sign::s2Step360ExitGRow.payload).toFinset⊆s2Step360ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step360ExitGBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step360ExitG_retired : s2Step360ExitGBefore.retireSet s2Step360ExitGExtra.toFinset=s2Step360ExitGAfter := by
  unfold Arena.retireSet s2Step360ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step360ExitGBefore,s2Step360ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step360ExitG_checked : planRowResizeLog s2Step360ExitGBefore s2Step360ExitGRow 91 []=
    some (s2Step360ExitGAfter,s2Step360ExitGOut,shrinkRow 769 s2Step360ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step360ExitGBefore s2Step360ExitGRow 91 s2Step360ExitG_distinct s2Step360ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step360ExitGRow.payload.take 91) s2Step360ExitGRow.sign=s2Step360ExitGOut := by decide +kernel
  have hi : s2Step360ExitGRow.payload.drop 91=s2Step360ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step360ExitG_retired] at result
  exact result

private def s2Step360ExitGvBefore : Arena := s2Step360ExitFAfter

private theorem s2Step360ExitGv_Incoming : rowsOwned s2Step360ExitGvBefore [s2Step360ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step360ExitGRow,s2Step360ExitFRow,s2Step360ExitFvRow,s2Step360ExitGvRow] 3 s2Step360ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step360ExitGvBefore (fun q => (0≤q ∧ q<603) ∨ (604≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step360ExitGv_Outgoing : rowsOwned s2Step360ExitGvAfter [s2Step360ExitGvOut] :=
  hmrRows_owned_drop s2Step360ExitGvAfter [s2Step360ExitGOut,s2Step360ExitFOut,s2Step360ExitFvOut,s2Step360ExitGvOut] 3 s2Step360ExitBank_outgoingOwned

private theorem s2Step360ExitGv_distinct : (s2Step360ExitGvRow.sign::s2Step360ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step360ExitGv_owned : (s2Step360ExitGvRow.sign::s2Step360ExitGvRow.payload).toFinset⊆s2Step360ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step360ExitGvBefore (fun q => (0≤q ∧ q<603) ∨ (604≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step360ExitGv_retired : s2Step360ExitGvBefore.retireSet s2Step360ExitGvExtra.toFinset=s2Step360ExitGvAfter := by
  unfold Arena.retireSet s2Step360ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step360ExitGvBefore,s2Step360ExitFAfter,s2Step360ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step360ExitGv_checked : planRowResizeLog s2Step360ExitGvBefore s2Step360ExitGvRow 196 []=
    some (s2Step360ExitGvAfter,s2Step360ExitGvOut,shrinkRow 771 s2Step360ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step360ExitGvBefore s2Step360ExitGvRow 196 s2Step360ExitGv_distinct s2Step360ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step360ExitGvRow.payload.take 196) s2Step360ExitGvRow.sign=s2Step360ExitGvOut := by decide +kernel
  have hi : s2Step360ExitGvRow.payload.drop 196=s2Step360ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step360ExitGv_retired] at result
  exact result

private theorem s2Step360ExitBank_rows : planWindowRowsLog s2Step360ExitGBefore [(s2Step360ExitGRow,91),(s2Step360ExitFRow,91),(s2Step360ExitFvRow,197),(s2Step360ExitGvRow,196)] [[],[],[],[]]=
    some (s2Step360ExitGvAfter,[s2Step360ExitGOut,s2Step360ExitFOut,s2Step360ExitFvOut,s2Step360ExitGvOut],(shrinkRow 769 s2Step360ExitGExtra ++ (shrinkRow 768 s2Step360ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step360ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step360ExitGvAfter [] []=some (s2Step360ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step360ExitGvBefore s2Step360ExitGvAfter s2Step360ExitGvAfter
    s2Step360ExitGvRow s2Step360ExitGvOut 196 [] [] [] []
    (shrinkRow 771 s2Step360ExitGvExtra) ([]) s2Step360ExitGv_Incoming s2Step360ExitGv_checked h4 s2Step360ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step360ExitFvBefore s2Step360ExitFvAfter s2Step360ExitGvAfter
    s2Step360ExitFvRow s2Step360ExitFvOut 197 [] [(s2Step360ExitGvRow,196)] [[]] [s2Step360ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step360ExitGvExtra ++ [])) s2Step360ExitFv_Incoming s2Step360ExitFv_checked h3 s2Step360ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step360ExitFBefore s2Step360ExitFAfter s2Step360ExitGvAfter
    s2Step360ExitFRow s2Step360ExitFOut 91 [] [(s2Step360ExitFvRow,197),(s2Step360ExitGvRow,196)] [[],[]] [s2Step360ExitFvOut,s2Step360ExitGvOut]
    (shrinkRow 768 s2Step360ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step360ExitGvExtra ++ []))) s2Step360ExitF_Incoming s2Step360ExitF_checked h2 s2Step360ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step360ExitGBefore s2Step360ExitGAfter s2Step360ExitGvAfter
    s2Step360ExitGRow s2Step360ExitGOut 91 [] [(s2Step360ExitFRow,91),(s2Step360ExitFvRow,197),(s2Step360ExitGvRow,196)] [[],[],[]] [s2Step360ExitFOut,s2Step360ExitFvOut,s2Step360ExitGvOut]
    (shrinkRow 769 s2Step360ExitGExtra) ((shrinkRow 768 s2Step360ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step360ExitGvExtra ++ [])))) s2Step360ExitG_Incoming s2Step360ExitG_checked h1 s2Step360ExitG_Outgoing
  exact h0

private theorem s2Step360ExitBank_checked : compileHmrBankResizeLog .exit s2Step360ExitGBefore ⟨s2Step360ExitFRow,s2Step360ExitGRow,s2Step360ExitFvRow,s2Step360ExitGvRow⟩ ⟨91,91,197,196⟩ [[],[],[],[]]=
    some (s2Step360ExitGvAfter,⟨s2Step360ExitFOut,s2Step360ExitGOut,s2Step360ExitFvOut,s2Step360ExitGvOut⟩,(shrinkRow 769 s2Step360ExitGExtra ++ (shrinkRow 768 s2Step360ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step360ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step360ExitBank_rows]
  rfl

private theorem s2Step360Add0_apart : Disjoint s2Step360Add0Arena.live s2Step360Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step360Add0Arena (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step360Add0_card : s2Step360Add0Arena.live.card=910 := by
  decide +kernel

private theorem s2Step360Add0_borrowed : s2Step360Add0Arena.checkBorrow (hmrHybridCount s2Step360Add0Arena s2Step360Add0B.length) s2Step360Add0Work=some s2Step360Add0During := by
  have len : s2Step360Add0Work.length=hmrHybridCount s2Step360Add0Arena s2Step360Add0B.length := by
    rw [hmrHybridCount,s2Step360Add0_card]
    decide +kernel
  have nd : s2Step360Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step360Add0Arena s2Step360Add0During s2Step360Add0Work.toFinset s2Step360Add0_bounded s2Step360Add0_apart rfl

private theorem s2Step360Add0_distinct : (800::821::789::(s2Step360Add0A++s2Step360Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step360Add0_owned : (800::821::789::(s2Step360Add0A++s2Step360Add0B)).toFinset⊆s2Step360Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step360Add0Arena (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step360Add0_checked : compileHmrHybridCinLog s2Step360Add0Arena 821 800 789 s2Step360Add0A s2Step360Add0B s2Step360Add0Work=some s2Step360Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step360Add0Arena s2Step360Add0During 821 800 789 s2Step360Add0A s2Step360Add0B s2Step360Add0Work
    (by decide +kernel) (by decide +kernel) s2Step360Add0_distinct
    (fun q hq => s2Step360Add0_owned (List.mem_toFinset.mpr hq)) s2Step360Add0_borrowed

private theorem s2Step360Add1_apart : Disjoint s2Step360Add1Arena.live s2Step360Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step360Add1Arena (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step360Add1_card : s2Step360Add1Arena.live.card=910 := by
  decide +kernel

private theorem s2Step360Add1_borrowed : s2Step360Add1Arena.checkBorrow (hmrHybridCount s2Step360Add1Arena s2Step360Add1B.length) s2Step360Add1Work=some s2Step360Add1During := by
  have len : s2Step360Add1Work.length=hmrHybridCount s2Step360Add1Arena s2Step360Add1B.length := by
    rw [hmrHybridCount,s2Step360Add1_card]
    decide +kernel
  have nd : s2Step360Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step360Add1Arena s2Step360Add1During s2Step360Add1Work.toFinset s2Step360Add1_bounded s2Step360Add1_apart rfl

private theorem s2Step360Add1_distinct : (800::821::789::(s2Step360Add1A++s2Step360Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step360Add1_owned : (800::821::789::(s2Step360Add1A++s2Step360Add1B)).toFinset⊆s2Step360Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step360Add1Arena (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step360Add1_checked : compileHmrHybridCinLog s2Step360Add1Arena 821 800 789 s2Step360Add1A s2Step360Add1B s2Step360Add1Work=some s2Step360Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step360Add1Arena s2Step360Add1During 821 800 789 s2Step360Add1A s2Step360Add1B s2Step360Add1Work
    (by decide +kernel) (by decide +kernel) s2Step360Add1_distinct
    (fun q hq => s2Step360Add1_owned (List.mem_toFinset.mpr hq)) s2Step360Add1_borrowed

private theorem s2Step360F4_apart : Disjoint (s2Step360Add0A++s2Step360Add0B).toFinset (s2Step360Add1A++s2Step360Add1B).toFinset := by
  have nd : ((s2Step360Add0A++s2Step360Add0B)++(s2Step360Add1A++s2Step360Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step360F4_carry : s2Step360F4FlagArena.checkBorrow 1 [789]=some s2Step360Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step360F4FlagArena,s2Step360HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step360F4FlagArena,s2Step360HeadFvAfter,s2Step360Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step360F4_distinct : (796::821::800::789::((s2Step360Add0A++s2Step360Add1A)++(s2Step360Add0B++s2Step360Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step360F4_flag : s2Step360HeadFvAfter.checkBorrow 1 [800]=some s2Step360F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step360HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step360F4_owned : (796::821::((s2Step360Add0A++s2Step360Add1A)++(s2Step360Add0B++s2Step360Add1B))).toFinset⊆s2Step360HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step360HeadFvAfter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step360F4_checked : compileHmrHybridF4Log s2Step360HeadFvAfter 796 821 s2Step360Add0A s2Step360Add0B s2Step360Add1A s2Step360Add1B [800] [789] s2Step360Add0Work s2Step360Add1Work=some s2Step360F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step360HeadFvAfter s2Step360F4FlagArena s2Step360Add0Arena s2Step360Add0During s2Step360Add1During 796 821
    s2Step360Add0A s2Step360Add0B s2Step360Add1A s2Step360Add1B [800] [789] s2Step360Add0Work s2Step360Add1Work
    (fun q hq => s2Step360F4_owned (List.mem_toFinset.mpr hq)) s2Step360F4_flag s2Step360F4_carry
    s2Step360F4_distinct s2Step360F4_apart s2Step360Add0_checked s2Step360Add1_checked

private theorem s2Step360Front_branch : s2Step360FrontSigmaArena.checkBorrow 1 [821]=some s2Step360HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step360FrontSigmaArena,s2Step360EntryGvAfter,s2Step360EntryGAfter,arenaWires]
  · ext q
    simp only [s2Step360FrontSigmaArena,s2Step360EntryGvAfter,s2Step360EntryGAfter,s2Step360HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step360Front_entry : HmrFrontEntryValid s2Step360EntryFBefore s2Step360FrontBank 92 196 ⟨91,91,197,196⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step360FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step360EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step360EntryFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step360FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step360Front_sigma : s2Step360EntryGvAfter.checkBorrow 1 [796]=some s2Step360FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step360EntryGvAfter,s2Step360EntryGAfter,arenaWires]
  · rfl

private def s2Step360HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step360HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step360HeadFBefore : Arena := s2Step360HeadGAfter

private def s2Step360HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603],768⟩

private def s2Step360HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832],770⟩

private def s2Step360HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 882],769⟩

private def s2Step360HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790],771⟩

private theorem s2Step360HeadBank_incomingDistinct : ([s2Step360HeadGRow,s2Step360HeadFRow,s2Step360HeadGvRow,s2Step360HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step360HeadF_Incoming : rowsOwned s2Step360HeadFBefore [s2Step360HeadFRow,s2Step360HeadGvRow,s2Step360HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step360HeadGRow,s2Step360HeadFRow,s2Step360HeadGvRow,s2Step360HeadFvRow] 1 s2Step360HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step360HeadFBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step360HeadBank_outgoingOwned : rowsOwned s2Step360HeadFvAfter [s2Step360HeadGOut,s2Step360HeadFOut,s2Step360HeadGvOut,s2Step360HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step360HeadFvAfter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step360HeadF_Outgoing : rowsOwned s2Step360HeadFvAfter [s2Step360HeadFOut,s2Step360HeadGvOut,s2Step360HeadFvOut] :=
  hmrRows_owned_drop s2Step360HeadFvAfter [s2Step360HeadGOut,s2Step360HeadFOut,s2Step360HeadGvOut,s2Step360HeadFvOut] 1 s2Step360HeadBank_outgoingOwned

private theorem s2Step360HeadF_distinct : (s2Step360HeadFRow.sign::s2Step360HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step360HeadF_owned : (s2Step360HeadFRow.sign::s2Step360HeadFRow.payload).toFinset⊆s2Step360HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step360HeadFBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step360HeadF_reserved : s2Step360HeadFBefore.reserve s2Step360HeadFFresh.toFinset=some s2Step360HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step360HeadFFresh,arenaWires]
  · norm_num [s2Step360HeadFBefore,s2Step360HeadGAfter,s2Step360HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step360HeadFAfter,s2Step360HeadFBefore,s2Step360HeadGAfter,s2Step360HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step360HeadF_checked : planRowResizeLog s2Step360HeadFBefore s2Step360HeadFRow 93 s2Step360HeadFFresh=
    some (s2Step360HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 903],768⟩,growRow 768 s2Step360HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step360HeadFBefore s2Step360HeadFAfter s2Step360HeadFRow 93 s2Step360HeadFFresh
    s2Step360HeadF_distinct s2Step360HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step360HeadF_reserved
  have rowEq : WindowRow.mk (s2Step360HeadFRow.payload++s2Step360HeadFFresh) s2Step360HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 903],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step360HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step360HeadFvBefore : Arena := s2Step360HeadGvAfter

private theorem s2Step360HeadFv_Incoming : rowsOwned s2Step360HeadFvBefore [s2Step360HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step360HeadGRow,s2Step360HeadFRow,s2Step360HeadGvRow,s2Step360HeadFvRow] 3 s2Step360HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step360HeadFvBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step360HeadFv_Outgoing : rowsOwned s2Step360HeadFvAfter [s2Step360HeadFvOut] :=
  hmrRows_owned_drop s2Step360HeadFvAfter [s2Step360HeadGOut,s2Step360HeadFOut,s2Step360HeadGvOut,s2Step360HeadFvOut] 3 s2Step360HeadBank_outgoingOwned

private theorem s2Step360HeadFv_distinct : (s2Step360HeadFvRow.sign::s2Step360HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step360HeadFv_owned : (s2Step360HeadFvRow.sign::s2Step360HeadFvRow.payload).toFinset⊆s2Step360HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step360HeadFvBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step360HeadFv_reserved : s2Step360HeadFvBefore.reserve s2Step360HeadFvFresh.toFinset=some s2Step360HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step360HeadFvFresh,arenaWires]
  · norm_num [s2Step360HeadFvBefore,s2Step360HeadGvAfter,s2Step360HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step360HeadFvAfter,s2Step360HeadFvBefore,s2Step360HeadGvAfter,s2Step360HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step360HeadFv_checked : planRowResizeLog s2Step360HeadFvBefore s2Step360HeadFvRow 197 s2Step360HeadFvFresh=
    some (s2Step360HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839],770⟩,growRow 770 s2Step360HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step360HeadFvBefore s2Step360HeadFvAfter s2Step360HeadFvRow 197 s2Step360HeadFvFresh
    s2Step360HeadFv_distinct s2Step360HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step360HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step360HeadFvRow.payload++s2Step360HeadFvFresh) s2Step360HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step360HeadG_Incoming : rowsOwned s2Step360HeadGBefore [s2Step360HeadGRow,s2Step360HeadFRow,s2Step360HeadGvRow,s2Step360HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step360HeadGRow,s2Step360HeadFRow,s2Step360HeadGvRow,s2Step360HeadFvRow] 0 s2Step360HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step360HeadGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step360HeadG_Outgoing : rowsOwned s2Step360HeadFvAfter [s2Step360HeadGOut,s2Step360HeadFOut,s2Step360HeadGvOut,s2Step360HeadFvOut] :=
  hmrRows_owned_drop s2Step360HeadFvAfter [s2Step360HeadGOut,s2Step360HeadFOut,s2Step360HeadGvOut,s2Step360HeadFvOut] 0 s2Step360HeadBank_outgoingOwned

private theorem s2Step360HeadG_distinct : (s2Step360HeadGRow.sign::s2Step360HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step360HeadG_owned : (s2Step360HeadGRow.sign::s2Step360HeadGRow.payload).toFinset⊆s2Step360HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step360HeadGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step360HeadG_reserved : s2Step360HeadGBefore.reserve s2Step360HeadGFresh.toFinset=some s2Step360HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step360HeadGFresh,arenaWires]
  · norm_num [s2Step360HeadGBefore,s2Step360HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step360HeadGAfter,s2Step360HeadGBefore,s2Step360HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step360HeadG_checked : planRowResizeLog s2Step360HeadGBefore s2Step360HeadGRow 93 s2Step360HeadGFresh=
    some (s2Step360HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 882, 785],769⟩,growRow 769 s2Step360HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step360HeadGBefore s2Step360HeadGAfter s2Step360HeadGRow 93 s2Step360HeadGFresh
    s2Step360HeadG_distinct s2Step360HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step360HeadG_reserved
  have rowEq : WindowRow.mk (s2Step360HeadGRow.payload++s2Step360HeadGFresh) s2Step360HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 882, 785],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step360HeadGvBefore : Arena := s2Step360HeadFAfter

private theorem s2Step360HeadGv_Incoming : rowsOwned s2Step360HeadGvBefore [s2Step360HeadGvRow,s2Step360HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step360HeadGRow,s2Step360HeadFRow,s2Step360HeadGvRow,s2Step360HeadFvRow] 2 s2Step360HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step360HeadGvBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step360HeadGv_Outgoing : rowsOwned s2Step360HeadFvAfter [s2Step360HeadGvOut,s2Step360HeadFvOut] :=
  hmrRows_owned_drop s2Step360HeadFvAfter [s2Step360HeadGOut,s2Step360HeadFOut,s2Step360HeadGvOut,s2Step360HeadFvOut] 2 s2Step360HeadBank_outgoingOwned

private theorem s2Step360HeadGv_distinct : (s2Step360HeadGvRow.sign::s2Step360HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step360HeadGv_owned : (s2Step360HeadGvRow.sign::s2Step360HeadGvRow.payload).toFinset⊆s2Step360HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step360HeadGvBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step360HeadGv_reserved : s2Step360HeadGvBefore.reserve s2Step360HeadGvFresh.toFinset=some s2Step360HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step360HeadGvFresh,arenaWires]
  · norm_num [s2Step360HeadGvBefore,s2Step360HeadFAfter,s2Step360HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step360HeadGvAfter,s2Step360HeadGvBefore,s2Step360HeadFAfter,s2Step360HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step360HeadGv_checked : planRowResizeLog s2Step360HeadGvBefore s2Step360HeadGvRow 197 s2Step360HeadGvFresh=
    some (s2Step360HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 812],771⟩,growRow 771 s2Step360HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step360HeadGvBefore s2Step360HeadGvAfter s2Step360HeadGvRow 197 s2Step360HeadGvFresh
    s2Step360HeadGv_distinct s2Step360HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step360HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step360HeadGvRow.payload++s2Step360HeadGvFresh) s2Step360HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 812],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step360HeadBank_rows : planWindowRowsLog s2Step360HeadGBefore [(s2Step360HeadGRow,93),(s2Step360HeadFRow,93),(s2Step360HeadGvRow,197),(s2Step360HeadFvRow,197)] [s2Step360HeadGFresh,s2Step360HeadFFresh,s2Step360HeadGvFresh,s2Step360HeadFvFresh]=
    some (s2Step360HeadFvAfter,[s2Step360HeadGOut,s2Step360HeadFOut,s2Step360HeadGvOut,s2Step360HeadFvOut],(growRow 769 s2Step360HeadGFresh ++ (growRow 768 s2Step360HeadFFresh ++ (growRow 771 s2Step360HeadGvFresh ++ (growRow 770 s2Step360HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step360HeadFvAfter [] []=some (s2Step360HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step360HeadFvBefore s2Step360HeadFvAfter s2Step360HeadFvAfter
    s2Step360HeadFvRow s2Step360HeadFvOut 197 s2Step360HeadFvFresh [] [] []
    (growRow 770 s2Step360HeadFvFresh) ([]) s2Step360HeadFv_Incoming s2Step360HeadFv_checked h4 s2Step360HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step360HeadGvBefore s2Step360HeadGvAfter s2Step360HeadFvAfter
    s2Step360HeadGvRow s2Step360HeadGvOut 197 s2Step360HeadGvFresh [(s2Step360HeadFvRow,197)] [s2Step360HeadFvFresh] [s2Step360HeadFvOut]
    (growRow 771 s2Step360HeadGvFresh) ((growRow 770 s2Step360HeadFvFresh ++ [])) s2Step360HeadGv_Incoming s2Step360HeadGv_checked h3 s2Step360HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step360HeadFBefore s2Step360HeadFAfter s2Step360HeadFvAfter
    s2Step360HeadFRow s2Step360HeadFOut 93 s2Step360HeadFFresh [(s2Step360HeadGvRow,197),(s2Step360HeadFvRow,197)] [s2Step360HeadGvFresh,s2Step360HeadFvFresh] [s2Step360HeadGvOut,s2Step360HeadFvOut]
    (growRow 768 s2Step360HeadFFresh) ((growRow 771 s2Step360HeadGvFresh ++ (growRow 770 s2Step360HeadFvFresh ++ []))) s2Step360HeadF_Incoming s2Step360HeadF_checked h2 s2Step360HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step360HeadGBefore s2Step360HeadGAfter s2Step360HeadFvAfter
    s2Step360HeadGRow s2Step360HeadGOut 93 s2Step360HeadGFresh [(s2Step360HeadFRow,93),(s2Step360HeadGvRow,197),(s2Step360HeadFvRow,197)] [s2Step360HeadFFresh,s2Step360HeadGvFresh,s2Step360HeadFvFresh] [s2Step360HeadFOut,s2Step360HeadGvOut,s2Step360HeadFvOut]
    (growRow 769 s2Step360HeadGFresh) ((growRow 768 s2Step360HeadFFresh ++ (growRow 771 s2Step360HeadGvFresh ++ (growRow 770 s2Step360HeadFvFresh ++ [])))) s2Step360HeadG_Incoming s2Step360HeadG_checked h1 s2Step360HeadG_Outgoing
  exact h0

private theorem s2Step360HeadBank_checked : compileHmrBankResizeLog .headroom s2Step360HeadGBefore ⟨s2Step360HeadFRow,s2Step360HeadGRow,s2Step360HeadFvRow,s2Step360HeadGvRow⟩ ⟨93,93,197,197⟩ [s2Step360HeadGFresh,s2Step360HeadFFresh,s2Step360HeadGvFresh,s2Step360HeadFvFresh]=
    some (s2Step360HeadFvAfter,⟨s2Step360HeadFOut,s2Step360HeadGOut,s2Step360HeadFvOut,s2Step360HeadGvOut⟩,(growRow 769 s2Step360HeadGFresh ++ (growRow 768 s2Step360HeadFFresh ++ (growRow 771 s2Step360HeadGvFresh ++ (growRow 770 s2Step360HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step360HeadBank_rows]
  rfl

private theorem s2Step360Front_checked : compileHmrSourceFrontLog s2Step360EntryFBefore s2Step360FrontBank 92 196 ⟨91,91,197,196⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step360FrontLog=some s2Step360FrontPlan := by
  have pairEq : s2Step360FrontPair=⟨s2Step360HeadFRow,s2Step360HeadGRow,s2Step360HeadFvRow,s2Step360HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step360FrontHead=⟨s2Step360ExitFRow,s2Step360ExitGRow,s2Step360ExitFvRow,s2Step360ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step360Add0A=s2Step360FrontHead.f.wires := by decide +kernel
  have gEq : s2Step360Add0B=s2Step360FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step360Add1A=s2Step360FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step360Add1B=s2Step360FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step360EntryFBefore s2Step360FrontBank 92 196 ⟨91,91,197,196⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step360FrontLog s2Step360FrontPlan
  · exact s2Step360Front_entry
  · exact s2Step360EntryBank_checked
  · exact s2Step360Front_sigma
  · rfl
  · exact s2Step360Front_branch
  · rfl
  · simpa only [s2Step360FrontPlan,pairEq] using s2Step360HeadBank_checked
  · simpa only [s2Step360FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step360F4_checked
  · exact s2Step360Counter_checked
  · rfl
  · simpa only [s2Step360FrontPlan,headEq] using s2Step360ExitBank_checked

private theorem s2Step360Complete_explicit_checked : compileHmrEarlyStepLog s2Step360EntryFBefore s2Step360FrontBank 92 196 ⟨91,91,197,196⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step360CompleteLog=some s2Step360CompletePlan := by
  let Q := s2Step360EarlyControlPlan
  have hq := s2Step360EarlyControl_plan_checked
  have fv1 : s2Step360CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step360CompleteOut.fv.payload[2]?.getD s2Step360CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step360CompleteOut.fv.payload[3]?.getD s2Step360CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step360CompleteOut.fv.payload[4]?.getD s2Step360CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step360EntryFBefore s2Step360EarlyControlArena s2Step360FrontBank 92 196 ⟨91,91,197,196⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step360CompleteLog s2Step360FrontPlan Q
    s2Step360Front_checked s2Step360Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step360Complete_owned s2Step360Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step360EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 796 s2Step360CompleteOut.fv.second (s2Step360CompleteOut.fv.payload[2]?.getD s2Step360CompleteOut.fv.sign) (s2Step360CompleteOut.fv.payload[3]?.getD s2Step360CompleteOut.fv.sign) (s2Step360CompleteOut.fv.payload[4]?.getD s2Step360CompleteOut.fv.sign) 821 60 s2Step360EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep360Arena : Arena := s2Step360EntryFBefore
def s2PrivateStep360Bank : WindowBank := s2Step360FrontBank
def s2PrivateStep360Spec : HmrSourceWalkStepLog := ⟨92,196,⟨91,91,197,196⟩,60,.early s2Step360CompleteLog⟩
def s2PrivateStep360Plan : HmrSourceStepPlan := .early s2Step360CompletePlan
theorem s2PrivateStep360_source : s2PrivateStep360Spec=s2ObservedLogs352[8] := rfl
theorem s2PrivateStep360_checked : compileHmrSourceStepLog s2PrivateStep360Arena s2PrivateStep360Bank
    s2PrivateStep360Spec.fgWidth s2PrivateStep360Spec.vWidth s2PrivateStep360Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]
    6 498 360 s2PrivateStep360Spec.need none s2PrivateStep360Spec.log=some s2PrivateStep360Plan := by
  change compileHmrSourceStepLog s2Step360EntryFBefore s2Step360FrontBank 92 196 ⟨91,91,197,196⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 6 498 360 60 none (.early s2Step360CompleteLog)=some (.early s2Step360CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 360<498)]
  rw [s2Step360Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
