import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep346
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

private def s2Step348CompleteMoves : List (Wire × Wire) := [(781,97)]

private def s2Step348EarlyControlLog : HmrEarlyControlLog := ⟨[781, 788, 839, 894, 903],[800],[789],[827, 844, 907, 913, 914, 915],[]⟩

private def s2Step348FrontLog : HmrFrontAllocationLog := ⟨⟨[[839], [], [], []],[[903], [894], [788], [845]],[[], [], [], []]⟩,[801],[891],[800],[789],[827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[800, 789, 827, 844]⟩

private def s2Step348CompleteLog : HmrEarlyStepLog := ⟨s2Step348FrontLog,s2Step348CompleteMoves,s2Step348EarlyControlLog⟩

private def s2Step348ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608],768⟩

private def s2Step348ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845],770⟩

private def s2Step348ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96],769⟩

private def s2Step348ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901],771⟩

private def s2Step348FrontOut : WindowBank := ⟨s2Step348ExitFOut,s2Step348ExitGOut,s2Step348ExitFvOut,s2Step348ExitGvOut⟩

private def s2Step348CompleteOut : WindowBank := s2Step348FrontOut.repacked s2Step348CompleteMoves

private def s2Step348EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step348EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step348EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step348EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step348EarlyControlPositiveArena,[800],s2Step348EarlyControlEqualityArena,[789],⟨⟨801,false⟩,[⟨⟨800,false⟩,789⟩]⟩⟩

private def s2Step348EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<916)),Finset.filter_subset _ _⟩

private def s2Step348EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<916)),Finset.filter_subset _ _⟩

private def s2Step348EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step348EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (802≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step348EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (802≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step348EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step348EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,781⟩,⟨⟨774,false⟩,788⟩,⟨⟨775,false⟩,839⟩,⟨⟨776,false⟩,894⟩,⟨⟨777,false⟩,903⟩]⟩

private def s2Step348EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step348EarlyControlZeroArena,s2Step348EarlyControlZeroPlan,s2Step348EarlyControlClassPlan,s2Step348EarlyControlFlagArena,s2Step348EarlyControlFittedArena,s2Step348EarlyControlHistoryArena,s2Step348EarlyControlSigmaArena,s2Step348EarlyControlOutputArena,s2Step348EarlyControlLog⟩

private def s2Step348CounterWork : List Wire := [800, 789, 827, 844]

private theorem s2Step348Counter_bounded : s2Step348CounterWork.toFinset⊆arenaWires := by norm_num [s2Step348CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step348HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step348CounterDuring : Arena := ⟨s2Step348HeadFvAfter.live∪s2Step348CounterWork.toFinset,Finset.union_subset s2Step348HeadFvAfter.bounded s2Step348Counter_bounded⟩

private def s2Step348EntryFFresh : List Wire := [839]

private def s2Step348EntryFvFresh : List Wire := []

private def s2Step348EntryGFresh : List Wire := []

private def s2Step348EntryFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (802≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step348EntryGvAfter : Arena := s2Step348EntryFAfter

private def s2Step348EntryGvFresh : List Wire := []

private def s2Step348ExitFExtra : List Wire := [839, 894]

private def s2Step348ExitGExtra : List Wire := [97, 903]

private def s2Step348ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<97) ∨ (98≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step348ExitGvExtra : List Wire := [788]

private def s2Step348Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step348Add0Work : List Wire := [827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step348Add0_bounded : s2Step348Add0Work.toFinset⊆arenaWires := by
  have h : s2Step348Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step348Add0During : Arena := ⟨s2Step348Add0Arena.live∪s2Step348Add0Work.toFinset,Finset.union_subset s2Step348Add0Arena.bounded s2Step348Add0_bounded⟩

private def s2Step348Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step348Add1Work : List Wire := [827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step348Add1_bounded : s2Step348Add1Work.toFinset⊆arenaWires := by
  have h : s2Step348Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step348Add1During : Arena := ⟨s2Step348Add1Arena.live∪s2Step348Add1Work.toFinset,Finset.union_subset s2Step348Add1Arena.bounded s2Step348Add1_bounded⟩

private def s2Step348F4FlagArena : Arena := ⟨s2Step348HeadFvAfter.live∪{800},Finset.union_subset s2Step348HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step348F4Plan : HmrHybridF4Plan := ⟨s2Step348F4FlagArena,[800],s2Step348Add0Arena,[789],s2Step348Add0During,s2Step348Add0Work,s2Step348Add1During,s2Step348Add1Work⟩

private def s2Step348HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 839, 894],768⟩

private def s2Step348HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845],770⟩

private def s2Step348HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 903],769⟩

private def s2Step348HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 788],771⟩

private def s2Step348FrontHead : WindowBank := ⟨s2Step348HeadFOut,s2Step348HeadGOut,s2Step348HeadFvOut,s2Step348HeadGvOut⟩

private def s2Step348EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 839],768⟩

private def s2Step348EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804],770⟩

private def s2Step348EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97],769⟩

private def s2Step348EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901],771⟩

private def s2Step348FrontPair : WindowBank := ⟨s2Step348EntryFOut,s2Step348EntryGOut,s2Step348EntryFvOut,s2Step348EntryGvOut⟩

private def s2Step348FrontSigmaArena : Arena := ⟨s2Step348EntryGvAfter.live∪{801},Finset.union_subset s2Step348EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step348HeadFFresh : List Wire := [894]

private def s2Step348HeadFvFresh : List Wire := [845]

private def s2Step348HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (846≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step348HeadGFresh : List Wire := [903]

private def s2Step348HeadGvFresh : List Wire := [788]

private def s2Step348FrontPlan : HmrSourceFront := ⟨s2Step348EntryGvAfter,s2Step348FrontPair,(growRow 768 s2Step348EntryFFresh ++ (growRow 769 s2Step348EntryGFresh ++ (growRow 770 s2Step348EntryFvFresh ++ (growRow 771 s2Step348EntryGvFresh ++ [])))),s2Step348FrontSigmaArena,[801],s2Step348HeadGBefore,[891],
  s2Step348HeadFvAfter,s2Step348FrontHead,(growRow 769 s2Step348HeadGFresh ++ (growRow 768 s2Step348HeadFFresh ++ (growRow 771 s2Step348HeadGvFresh ++ (growRow 770 s2Step348HeadFvFresh ++ [])))),s2Step348F4Plan,s2Step348CounterDuring,s2Step348CounterWork,s2Step348ExitGvAfter,s2Step348FrontOut,(shrinkRow 769 s2Step348ExitGExtra ++ (shrinkRow 768 s2Step348ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step348ExitGvExtra ++ []))))⟩

private def s2Step348CompletePlan : HmrEarlyStepPlan := ⟨s2Step348FrontPlan,s2Step348EarlyControlArena,s2Step348EarlyControlPlan,s2Step348CompleteMoves⟩

private theorem s2Step348Complete_apart : List.Disjoint (s2Step348CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [801, 891, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] := by
  have nd : ((s2Step348CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[801, 891, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step348Complete_owned : (s2Step348CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step348EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step348EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private def s2Step348CompleteMoveArena : Arena := ⟨s2Step348ExitGvAfter.live∪{97},Finset.union_subset s2Step348ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step348Complete_repack : s2Step348ExitGvAfter.checkRepack s2Step348CompleteMoves=some s2Step348EarlyControlArena := by
  have owned : 781∈s2Step348ExitGvAfter.live := by norm_num [s2Step348ExitGvAfter,arenaWires]
  have reserve : s2Step348ExitGvAfter.reserve {97}=some s2Step348CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step348ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step348CompleteMoveArena.retireSet {781}=s2Step348EarlyControlArena := by
    unfold Arena.retireSet s2Step348EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step348CompleteMoveArena,s2Step348ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step348CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step348CompleteMoveArena.retireSet {781}).checkRepack []=some s2Step348EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step348EarlyControl_branchOwned : ([891] : List Wire).toFinset⊆s2Step348EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step348EarlyControlSigmaArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (802≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step348EarlyControl_branch : compileHmrBranchRetirement s2Step348EarlyControlSigmaArena 891=some s2Step348EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step348EarlyControl_branchOwned
  · ext q
    simp [s2Step348EarlyControlOutputArena,s2Step348EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step348EarlyControl_classEqualityBorrow : s2Step348EarlyControlPositiveArena.checkBorrow (([801, 800] : List Wire).length-1) s2Step348EarlyControlLog.classWork=some s2Step348EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step348EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step348EarlyControlPositiveArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step348EarlyControlEqualityArena,s2Step348EarlyControlPositiveArena,s2Step348EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step348EarlyControl_classEqualityOwned : ([801, 800] : List Wire).toFinset⊆s2Step348EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step348EarlyControlPositiveArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step348EarlyControl_classEquality : compileHmrEqualityLog s2Step348EarlyControlPositiveArena [801, 800] 0 s2Step348EarlyControlLog.classWork=some (s2Step348EarlyControlEqualityArena,s2Step348EarlyControlLog.classWork,s2Step348EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step348EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step348EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step348EarlyControl_classOwned : ([777, 903, 801] : List Wire).toFinset⊆s2Step348EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step348EarlyControlZeroArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step348EarlyControl_positiveBorrow : s2Step348EarlyControlZeroArena.checkBorrow (1) s2Step348EarlyControlLog.positiveWork=some s2Step348EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step348EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step348EarlyControlZeroArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step348EarlyControlPositiveArena,s2Step348EarlyControlZeroArena,s2Step348EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step348EarlyControl_class : compileHmrSourceClassLog s2Step348EarlyControlZeroArena false 777 s2Step348EarlyControlZeroPlan.top 0 801 s2Step348EarlyControlLog.positiveWork s2Step348EarlyControlLog.classWork=some s2Step348EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step348EarlyControlClassPlan s2Step348EarlyControlZeroArena false 777 s2Step348EarlyControlZeroPlan.top 0 801
  constructor
  · decide +kernel
  · exact s2Step348EarlyControl_classOwned
  · exact s2Step348EarlyControl_positiveBorrow
  · exact s2Step348EarlyControl_classEquality

private theorem s2Step348EarlyControl_entryRecordOwned : ([891, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step348EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step348EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step348EarlyControl_entrySigmaOwned : ([801, 254] : List Wire).toFinset⊆s2Step348EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step348EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step348EarlyControl_fitBorrow : s2Step348EarlyControlFlagArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step348EarlyControlLog.recordFresh=some s2Step348EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step348EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step348EarlyControlFlagArena (fun q => (0≤q ∧ q<916)) rfl
      decide +kernel
    · ext q
      simp [s2Step348EarlyControlFittedArena,s2Step348EarlyControlFlagArena,s2Step348EarlyControlLog,arenaWires]

private theorem s2Step348EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step348EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step348EarlyControlFlagArena (fun q => (0≤q ∧ q<916)) rfl
  decide +kernel

private theorem s2Step348EarlyControl_fit : compileHmrRecordGrowLog s2Step348EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step348EarlyControlLog.recordFresh=some s2Step348EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step348EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step348EarlyControl_fitBorrow

private theorem s2Step348EarlyControl_flagsBorrow : s2Step348EarlyControlEqualityArena.checkBorrow (6) s2Step348EarlyControlLog.flagWork=some s2Step348EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step348EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step348EarlyControlEqualityArena (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step348EarlyControlFlagArena,s2Step348EarlyControlEqualityArena,s2Step348EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step348EarlyControl_flagsOwned : ([789, 253, 252, 251] : List Wire).toFinset⊆s2Step348EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step348EarlyControlEqualityArena (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step348EarlyControl_flags : compileHmrFlagsLog s2Step348EarlyControlClassPlan.equalityArena s2Step348EarlyControlClassPlan.equality.top 253 252 251 s2Step348EarlyControlLog.flagWork=some s2Step348EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step348EarlyControl_flagsOwned⟩
  · exact s2Step348EarlyControl_flagsBorrow

private theorem s2Step348EarlyControl_historyBorrow : s2Step348EarlyControlArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step348EarlyControlLog.recordFresh=some s2Step348EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step348EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step348EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step348EarlyControlHistoryArena,s2Step348EarlyControlArena,s2Step348EarlyControlLog,arenaWires]

private theorem s2Step348EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step348EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step348EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step348EarlyControl_history : compileHmrRecordGrowLog s2Step348EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step348EarlyControlLog.recordFresh=some s2Step348EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step348EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step348EarlyControl_historyBorrow

private theorem s2Step348EarlyControl_sigmaOwned : ([254, 801] : List Wire).toFinset⊆s2Step348EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step348EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step348EarlyControl_sigmaReleaseOwned : ([801] : List Wire).toFinset⊆s2Step348EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step348EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step348EarlyControl_sigmaRelease : s2Step348EarlyControlHistoryArena.release {801} (fun _ => false)=some s2Step348EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step348EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step348EarlyControlSigmaArena,s2Step348EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step348EarlyControl_sigma : compileHmrSigmaDropLog s2Step348EarlyControlHistoryArena false 0 0 254 801 []=some s2Step348EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step348EarlyControl_sigmaOwned⟩
  · exact s2Step348EarlyControl_sigmaRelease

private theorem s2Step348EarlyControl_zeroBorrow : s2Step348EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step348EarlyControlLog.zeroWork=some s2Step348EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step348EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step348EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step348EarlyControlZeroArena,s2Step348EarlyControlArena,s2Step348EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step348EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step348EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step348EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step348EarlyControl_zero : compileHmrEqualityLog s2Step348EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step348EarlyControlLog.zeroWork=some (s2Step348EarlyControlZeroArena,s2Step348EarlyControlLog.zeroWork,s2Step348EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step348EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step348EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step348EarlyControl_logged : s2Step348EarlyControlPlan.Logged s2Step348EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 801 254 253 252 251 891 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step348EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step348EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step348EarlyControl_zero
  · exact s2Step348EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step348EarlyControl_flags
  · exact s2Step348EarlyControl_fit
  · exact s2Step348EarlyControl_history
  · exact s2Step348EarlyControl_sigma
  · exact s2Step348EarlyControl_branch

private theorem s2Step348EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step348EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 801 254 253 252 251 891 60 s2Step348EarlyControlLog=some s2Step348EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step348EarlyControlPlan s2Step348EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 801 254 253 252 251 891 60 s2Step348EarlyControl_logged

private def s2Step348EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (802≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step348EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608],768⟩

private def s2Step348EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804],770⟩

private def s2Step348EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97],769⟩

private def s2Step348EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901],771⟩

private def s2Step348FrontBank : WindowBank := ⟨s2Step348EntryFRow,s2Step348EntryGRow,s2Step348EntryFvRow,s2Step348EntryGvRow⟩

private def s2Step348Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 839, 894, 768]

private def s2Step348Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 903, 769]

private def s2Step348Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 770]

private def s2Step348Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 788, 771]

private theorem s2Step348Counter_apart : Disjoint s2Step348HeadFvAfter.live s2Step348CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step348HeadFvAfter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step348Counter_borrowed : s2Step348HeadFvAfter.checkBorrow 4 s2Step348CounterWork=some s2Step348CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step348HeadFvAfter s2Step348CounterDuring s2Step348CounterWork.toFinset s2Step348Counter_bounded s2Step348Counter_apart rfl

private theorem s2Step348Counter_owned : (801::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step348HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step348HeadFvAfter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step348Counter_checked : compileHmrCounterStepLog s2Step348HeadFvAfter true 801 [772, 773, 774, 775, 776, 777] s2Step348CounterWork=some s2Step348CounterDuring := by
  have owned : ∀q∈801::[772, 773, 774, 775, 776, 777],q∈s2Step348HeadFvAfter.live := fun q hq => s2Step348Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step348Counter_borrowed

private theorem s2Step348EntryBank_incomingDistinct : ([s2Step348EntryFRow,s2Step348EntryGRow,s2Step348EntryFvRow,s2Step348EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step348EntryF_Incoming : rowsOwned s2Step348EntryFBefore [s2Step348EntryFRow,s2Step348EntryGRow,s2Step348EntryFvRow,s2Step348EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step348EntryFRow,s2Step348EntryGRow,s2Step348EntryFvRow,s2Step348EntryGvRow] 0 s2Step348EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step348EntryFBefore (fun q => (0≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (802≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step348EntryBank_outgoingOwned : rowsOwned s2Step348EntryGvAfter [s2Step348EntryFOut,s2Step348EntryGOut,s2Step348EntryFvOut,s2Step348EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step348EntryGvAfter (fun q => (0≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (802≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step348EntryF_Outgoing : rowsOwned s2Step348EntryGvAfter [s2Step348EntryFOut,s2Step348EntryGOut,s2Step348EntryFvOut,s2Step348EntryGvOut] :=
  hmrRows_owned_drop s2Step348EntryGvAfter [s2Step348EntryFOut,s2Step348EntryGOut,s2Step348EntryFvOut,s2Step348EntryGvOut] 0 s2Step348EntryBank_outgoingOwned

private theorem s2Step348EntryF_distinct : (s2Step348EntryFRow.sign::s2Step348EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step348EntryF_owned : (s2Step348EntryFRow.sign::s2Step348EntryFRow.payload).toFinset⊆s2Step348EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step348EntryFBefore (fun q => (0≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (802≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step348EntryF_reserved : s2Step348EntryFBefore.reserve s2Step348EntryFFresh.toFinset=some s2Step348EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step348EntryFFresh,arenaWires]
  · norm_num [s2Step348EntryFBefore,s2Step348EntryFFresh,arenaWires]
  · ext q
    simp only [s2Step348EntryFAfter,s2Step348EntryFBefore,s2Step348EntryFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step348EntryF_checked : planRowResizeLog s2Step348EntryFBefore s2Step348EntryFRow 98 s2Step348EntryFFresh=
    some (s2Step348EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 839],768⟩,growRow 768 s2Step348EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step348EntryFBefore s2Step348EntryFAfter s2Step348EntryFRow 98 s2Step348EntryFFresh
    s2Step348EntryF_distinct s2Step348EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step348EntryF_reserved
  have rowEq : WindowRow.mk (s2Step348EntryFRow.payload++s2Step348EntryFFresh) s2Step348EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 839],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step348EntryFvAfter : Arena := s2Step348EntryFAfter

private def s2Step348EntryFvBefore : Arena := s2Step348EntryFAfter

private theorem s2Step348EntryFv_Incoming : rowsOwned s2Step348EntryFvBefore [s2Step348EntryFvRow,s2Step348EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step348EntryFRow,s2Step348EntryGRow,s2Step348EntryFvRow,s2Step348EntryGvRow] 2 s2Step348EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step348EntryFvBefore (fun q => (0≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (802≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step348EntryFv_Outgoing : rowsOwned s2Step348EntryGvAfter [s2Step348EntryFvOut,s2Step348EntryGvOut] :=
  hmrRows_owned_drop s2Step348EntryGvAfter [s2Step348EntryFOut,s2Step348EntryGOut,s2Step348EntryFvOut,s2Step348EntryGvOut] 2 s2Step348EntryBank_outgoingOwned

private theorem s2Step348EntryFv_distinct : (s2Step348EntryFvRow.sign::s2Step348EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step348EntryFv_owned : (s2Step348EntryFvRow.sign::s2Step348EntryFvRow.payload).toFinset⊆s2Step348EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step348EntryFvBefore (fun q => (0≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (802≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step348EntryFv_reserved : s2Step348EntryFvBefore.reserve s2Step348EntryFvFresh.toFinset=some s2Step348EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step348EntryFvFresh,arenaWires]
  · norm_num [s2Step348EntryFvBefore,s2Step348EntryFAfter,s2Step348EntryFvFresh,arenaWires]
  · simp only [s2Step348EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step348EntryFv_checked : planRowResizeLog s2Step348EntryFvBefore s2Step348EntryFvRow 190 s2Step348EntryFvFresh=
    some (s2Step348EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804],770⟩,growRow 770 s2Step348EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step348EntryFvBefore s2Step348EntryFvAfter s2Step348EntryFvRow 190 s2Step348EntryFvFresh
    s2Step348EntryFv_distinct s2Step348EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step348EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step348EntryFvRow.payload++s2Step348EntryFvFresh) s2Step348EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step348EntryGAfter : Arena := s2Step348EntryFAfter

private def s2Step348EntryGBefore : Arena := s2Step348EntryFAfter

private theorem s2Step348EntryG_Incoming : rowsOwned s2Step348EntryGBefore [s2Step348EntryGRow,s2Step348EntryFvRow,s2Step348EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step348EntryFRow,s2Step348EntryGRow,s2Step348EntryFvRow,s2Step348EntryGvRow] 1 s2Step348EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step348EntryGBefore (fun q => (0≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (802≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step348EntryG_Outgoing : rowsOwned s2Step348EntryGvAfter [s2Step348EntryGOut,s2Step348EntryFvOut,s2Step348EntryGvOut] :=
  hmrRows_owned_drop s2Step348EntryGvAfter [s2Step348EntryFOut,s2Step348EntryGOut,s2Step348EntryFvOut,s2Step348EntryGvOut] 1 s2Step348EntryBank_outgoingOwned

private theorem s2Step348EntryG_distinct : (s2Step348EntryGRow.sign::s2Step348EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step348EntryG_owned : (s2Step348EntryGRow.sign::s2Step348EntryGRow.payload).toFinset⊆s2Step348EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step348EntryGBefore (fun q => (0≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (802≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step348EntryG_reserved : s2Step348EntryGBefore.reserve s2Step348EntryGFresh.toFinset=some s2Step348EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step348EntryGFresh,arenaWires]
  · norm_num [s2Step348EntryGBefore,s2Step348EntryFAfter,s2Step348EntryGFresh,arenaWires]
  · simp only [s2Step348EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step348EntryG_checked : planRowResizeLog s2Step348EntryGBefore s2Step348EntryGRow 98 s2Step348EntryGFresh=
    some (s2Step348EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97],769⟩,growRow 769 s2Step348EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step348EntryGBefore s2Step348EntryGAfter s2Step348EntryGRow 98 s2Step348EntryGFresh
    s2Step348EntryG_distinct s2Step348EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step348EntryG_reserved
  have rowEq : WindowRow.mk (s2Step348EntryGRow.payload++s2Step348EntryGFresh) s2Step348EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step348EntryGvBefore : Arena := s2Step348EntryFAfter

private theorem s2Step348EntryGv_Incoming : rowsOwned s2Step348EntryGvBefore [s2Step348EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step348EntryFRow,s2Step348EntryGRow,s2Step348EntryFvRow,s2Step348EntryGvRow] 3 s2Step348EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step348EntryGvBefore (fun q => (0≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (802≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step348EntryGv_Outgoing : rowsOwned s2Step348EntryGvAfter [s2Step348EntryGvOut] :=
  hmrRows_owned_drop s2Step348EntryGvAfter [s2Step348EntryFOut,s2Step348EntryGOut,s2Step348EntryFvOut,s2Step348EntryGvOut] 3 s2Step348EntryBank_outgoingOwned

private theorem s2Step348EntryGv_distinct : (s2Step348EntryGvRow.sign::s2Step348EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step348EntryGv_owned : (s2Step348EntryGvRow.sign::s2Step348EntryGvRow.payload).toFinset⊆s2Step348EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step348EntryGvBefore (fun q => (0≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (802≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step348EntryGv_reserved : s2Step348EntryGvBefore.reserve s2Step348EntryGvFresh.toFinset=some s2Step348EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step348EntryGvFresh,arenaWires]
  · norm_num [s2Step348EntryGvBefore,s2Step348EntryFAfter,s2Step348EntryGvFresh,arenaWires]
  · simp only [s2Step348EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step348EntryGv_checked : planRowResizeLog s2Step348EntryGvBefore s2Step348EntryGvRow 190 s2Step348EntryGvFresh=
    some (s2Step348EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901],771⟩,growRow 771 s2Step348EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step348EntryGvBefore s2Step348EntryGvAfter s2Step348EntryGvRow 190 s2Step348EntryGvFresh
    s2Step348EntryGv_distinct s2Step348EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step348EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step348EntryGvRow.payload++s2Step348EntryGvFresh) s2Step348EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step348EntryBank_rows : planWindowRowsLog s2Step348EntryFBefore [(s2Step348EntryFRow,98),(s2Step348EntryGRow,98),(s2Step348EntryFvRow,190),(s2Step348EntryGvRow,190)] [s2Step348EntryFFresh,s2Step348EntryGFresh,s2Step348EntryFvFresh,s2Step348EntryGvFresh]=
    some (s2Step348EntryGvAfter,[s2Step348EntryFOut,s2Step348EntryGOut,s2Step348EntryFvOut,s2Step348EntryGvOut],(growRow 768 s2Step348EntryFFresh ++ (growRow 769 s2Step348EntryGFresh ++ (growRow 770 s2Step348EntryFvFresh ++ (growRow 771 s2Step348EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step348EntryGvAfter [] []=some (s2Step348EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step348EntryGvBefore s2Step348EntryGvAfter s2Step348EntryGvAfter
    s2Step348EntryGvRow s2Step348EntryGvOut 190 s2Step348EntryGvFresh [] [] []
    (growRow 771 s2Step348EntryGvFresh) ([]) s2Step348EntryGv_Incoming s2Step348EntryGv_checked h4 s2Step348EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step348EntryFvBefore s2Step348EntryFvAfter s2Step348EntryGvAfter
    s2Step348EntryFvRow s2Step348EntryFvOut 190 s2Step348EntryFvFresh [(s2Step348EntryGvRow,190)] [s2Step348EntryGvFresh] [s2Step348EntryGvOut]
    (growRow 770 s2Step348EntryFvFresh) ((growRow 771 s2Step348EntryGvFresh ++ [])) s2Step348EntryFv_Incoming s2Step348EntryFv_checked h3 s2Step348EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step348EntryGBefore s2Step348EntryGAfter s2Step348EntryGvAfter
    s2Step348EntryGRow s2Step348EntryGOut 98 s2Step348EntryGFresh [(s2Step348EntryFvRow,190),(s2Step348EntryGvRow,190)] [s2Step348EntryFvFresh,s2Step348EntryGvFresh] [s2Step348EntryFvOut,s2Step348EntryGvOut]
    (growRow 769 s2Step348EntryGFresh) ((growRow 770 s2Step348EntryFvFresh ++ (growRow 771 s2Step348EntryGvFresh ++ []))) s2Step348EntryG_Incoming s2Step348EntryG_checked h2 s2Step348EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step348EntryFBefore s2Step348EntryFAfter s2Step348EntryGvAfter
    s2Step348EntryFRow s2Step348EntryFOut 98 s2Step348EntryFFresh [(s2Step348EntryGRow,98),(s2Step348EntryFvRow,190),(s2Step348EntryGvRow,190)] [s2Step348EntryGFresh,s2Step348EntryFvFresh,s2Step348EntryGvFresh] [s2Step348EntryGOut,s2Step348EntryFvOut,s2Step348EntryGvOut]
    (growRow 768 s2Step348EntryFFresh) ((growRow 769 s2Step348EntryGFresh ++ (growRow 770 s2Step348EntryFvFresh ++ (growRow 771 s2Step348EntryGvFresh ++ [])))) s2Step348EntryF_Incoming s2Step348EntryF_checked h1 s2Step348EntryF_Outgoing
  exact h0

private theorem s2Step348EntryBank_checked : compileHmrBankResizeLog .entry s2Step348EntryFBefore ⟨s2Step348EntryFRow,s2Step348EntryGRow,s2Step348EntryFvRow,s2Step348EntryGvRow⟩ ⟨98,98,190,190⟩ [s2Step348EntryFFresh,s2Step348EntryGFresh,s2Step348EntryFvFresh,s2Step348EntryGvFresh]=
    some (s2Step348EntryGvAfter,⟨s2Step348EntryFOut,s2Step348EntryGOut,s2Step348EntryFvOut,s2Step348EntryGvOut⟩,(growRow 768 s2Step348EntryFFresh ++ (growRow 769 s2Step348EntryGFresh ++ (growRow 770 s2Step348EntryFvFresh ++ (growRow 771 s2Step348EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step348EntryBank_rows]
  rfl

private def s2Step348ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<97) ∨ (98≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step348ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<97) ∨ (98≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step348ExitFBefore : Arena := s2Step348ExitGAfter

private def s2Step348ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 839, 894],768⟩

private def s2Step348ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845],770⟩

private def s2Step348ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 903],769⟩

private def s2Step348ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 788],771⟩

private theorem s2Step348ExitBank_incomingDistinct : ([s2Step348ExitGRow,s2Step348ExitFRow,s2Step348ExitFvRow,s2Step348ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step348ExitF_Incoming : rowsOwned s2Step348ExitFBefore [s2Step348ExitFRow,s2Step348ExitFvRow,s2Step348ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step348ExitGRow,s2Step348ExitFRow,s2Step348ExitFvRow,s2Step348ExitGvRow] 1 s2Step348ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step348ExitFBefore (fun q => (0≤q ∧ q<97) ∨ (98≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step348ExitBank_outgoingOwned : rowsOwned s2Step348ExitGvAfter [s2Step348ExitGOut,s2Step348ExitFOut,s2Step348ExitFvOut,s2Step348ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step348ExitGvAfter (fun q => (0≤q ∧ q<97) ∨ (98≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step348ExitF_Outgoing : rowsOwned s2Step348ExitGvAfter [s2Step348ExitFOut,s2Step348ExitFvOut,s2Step348ExitGvOut] :=
  hmrRows_owned_drop s2Step348ExitGvAfter [s2Step348ExitGOut,s2Step348ExitFOut,s2Step348ExitFvOut,s2Step348ExitGvOut] 1 s2Step348ExitBank_outgoingOwned

private theorem s2Step348ExitF_distinct : (s2Step348ExitFRow.sign::s2Step348ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step348ExitF_owned : (s2Step348ExitFRow.sign::s2Step348ExitFRow.payload).toFinset⊆s2Step348ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step348ExitFBefore (fun q => (0≤q ∧ q<97) ∨ (98≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step348ExitF_retired : s2Step348ExitFBefore.retireSet s2Step348ExitFExtra.toFinset=s2Step348ExitFAfter := by
  unfold Arena.retireSet s2Step348ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step348ExitFBefore,s2Step348ExitGAfter,s2Step348ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step348ExitF_checked : planRowResizeLog s2Step348ExitFBefore s2Step348ExitFRow 97 []=
    some (s2Step348ExitFAfter,s2Step348ExitFOut,shrinkRow 768 s2Step348ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step348ExitFBefore s2Step348ExitFRow 97 s2Step348ExitF_distinct s2Step348ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step348ExitFRow.payload.take 97) s2Step348ExitFRow.sign=s2Step348ExitFOut := by decide +kernel
  have hi : s2Step348ExitFRow.payload.drop 97=s2Step348ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step348ExitF_retired] at result
  exact result

private def s2Step348ExitFvAfter : Arena := s2Step348ExitFAfter

private def s2Step348ExitFvBefore : Arena := s2Step348ExitFAfter

private theorem s2Step348ExitFv_Incoming : rowsOwned s2Step348ExitFvBefore [s2Step348ExitFvRow,s2Step348ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step348ExitGRow,s2Step348ExitFRow,s2Step348ExitFvRow,s2Step348ExitGvRow] 2 s2Step348ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step348ExitFvBefore (fun q => (0≤q ∧ q<97) ∨ (98≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step348ExitFv_Outgoing : rowsOwned s2Step348ExitGvAfter [s2Step348ExitFvOut,s2Step348ExitGvOut] :=
  hmrRows_owned_drop s2Step348ExitGvAfter [s2Step348ExitGOut,s2Step348ExitFOut,s2Step348ExitFvOut,s2Step348ExitGvOut] 2 s2Step348ExitBank_outgoingOwned

private theorem s2Step348ExitFv_distinct : (s2Step348ExitFvRow.sign::s2Step348ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step348ExitFv_owned : (s2Step348ExitFvRow.sign::s2Step348ExitFvRow.payload).toFinset⊆s2Step348ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step348ExitFvBefore (fun q => (0≤q ∧ q<97) ∨ (98≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step348ExitFv_reserved : s2Step348ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step348ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step348ExitFv_checked : planRowResizeLog s2Step348ExitFvBefore s2Step348ExitFvRow 191 []=
    some (s2Step348ExitFvAfter,s2Step348ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step348ExitFvBefore s2Step348ExitFvAfter s2Step348ExitFvRow 191 []
    s2Step348ExitFv_distinct s2Step348ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step348ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step348ExitFvRow.payload++[]) s2Step348ExitFvRow.sign=s2Step348ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step348ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private theorem s2Step348ExitG_Incoming : rowsOwned s2Step348ExitGBefore [s2Step348ExitGRow,s2Step348ExitFRow,s2Step348ExitFvRow,s2Step348ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step348ExitGRow,s2Step348ExitFRow,s2Step348ExitFvRow,s2Step348ExitGvRow] 0 s2Step348ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step348ExitGBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step348ExitG_Outgoing : rowsOwned s2Step348ExitGvAfter [s2Step348ExitGOut,s2Step348ExitFOut,s2Step348ExitFvOut,s2Step348ExitGvOut] :=
  hmrRows_owned_drop s2Step348ExitGvAfter [s2Step348ExitGOut,s2Step348ExitFOut,s2Step348ExitFvOut,s2Step348ExitGvOut] 0 s2Step348ExitBank_outgoingOwned

private theorem s2Step348ExitG_distinct : (s2Step348ExitGRow.sign::s2Step348ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step348ExitG_owned : (s2Step348ExitGRow.sign::s2Step348ExitGRow.payload).toFinset⊆s2Step348ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step348ExitGBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step348ExitG_retired : s2Step348ExitGBefore.retireSet s2Step348ExitGExtra.toFinset=s2Step348ExitGAfter := by
  unfold Arena.retireSet s2Step348ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step348ExitGBefore,s2Step348ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step348ExitG_checked : planRowResizeLog s2Step348ExitGBefore s2Step348ExitGRow 97 []=
    some (s2Step348ExitGAfter,s2Step348ExitGOut,shrinkRow 769 s2Step348ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step348ExitGBefore s2Step348ExitGRow 97 s2Step348ExitG_distinct s2Step348ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step348ExitGRow.payload.take 97) s2Step348ExitGRow.sign=s2Step348ExitGOut := by decide +kernel
  have hi : s2Step348ExitGRow.payload.drop 97=s2Step348ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step348ExitG_retired] at result
  exact result

private def s2Step348ExitGvBefore : Arena := s2Step348ExitFAfter

private theorem s2Step348ExitGv_Incoming : rowsOwned s2Step348ExitGvBefore [s2Step348ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step348ExitGRow,s2Step348ExitFRow,s2Step348ExitFvRow,s2Step348ExitGvRow] 3 s2Step348ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step348ExitGvBefore (fun q => (0≤q ∧ q<97) ∨ (98≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step348ExitGv_Outgoing : rowsOwned s2Step348ExitGvAfter [s2Step348ExitGvOut] :=
  hmrRows_owned_drop s2Step348ExitGvAfter [s2Step348ExitGOut,s2Step348ExitFOut,s2Step348ExitFvOut,s2Step348ExitGvOut] 3 s2Step348ExitBank_outgoingOwned

private theorem s2Step348ExitGv_distinct : (s2Step348ExitGvRow.sign::s2Step348ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step348ExitGv_owned : (s2Step348ExitGvRow.sign::s2Step348ExitGvRow.payload).toFinset⊆s2Step348ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step348ExitGvBefore (fun q => (0≤q ∧ q<97) ∨ (98≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step348ExitGv_retired : s2Step348ExitGvBefore.retireSet s2Step348ExitGvExtra.toFinset=s2Step348ExitGvAfter := by
  unfold Arena.retireSet s2Step348ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step348ExitGvBefore,s2Step348ExitFAfter,s2Step348ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step348ExitGv_checked : planRowResizeLog s2Step348ExitGvBefore s2Step348ExitGvRow 190 []=
    some (s2Step348ExitGvAfter,s2Step348ExitGvOut,shrinkRow 771 s2Step348ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step348ExitGvBefore s2Step348ExitGvRow 190 s2Step348ExitGv_distinct s2Step348ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step348ExitGvRow.payload.take 190) s2Step348ExitGvRow.sign=s2Step348ExitGvOut := by decide +kernel
  have hi : s2Step348ExitGvRow.payload.drop 190=s2Step348ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step348ExitGv_retired] at result
  exact result

private theorem s2Step348ExitBank_rows : planWindowRowsLog s2Step348ExitGBefore [(s2Step348ExitGRow,97),(s2Step348ExitFRow,97),(s2Step348ExitFvRow,191),(s2Step348ExitGvRow,190)] [[],[],[],[]]=
    some (s2Step348ExitGvAfter,[s2Step348ExitGOut,s2Step348ExitFOut,s2Step348ExitFvOut,s2Step348ExitGvOut],(shrinkRow 769 s2Step348ExitGExtra ++ (shrinkRow 768 s2Step348ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step348ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step348ExitGvAfter [] []=some (s2Step348ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step348ExitGvBefore s2Step348ExitGvAfter s2Step348ExitGvAfter
    s2Step348ExitGvRow s2Step348ExitGvOut 190 [] [] [] []
    (shrinkRow 771 s2Step348ExitGvExtra) ([]) s2Step348ExitGv_Incoming s2Step348ExitGv_checked h4 s2Step348ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step348ExitFvBefore s2Step348ExitFvAfter s2Step348ExitGvAfter
    s2Step348ExitFvRow s2Step348ExitFvOut 191 [] [(s2Step348ExitGvRow,190)] [[]] [s2Step348ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step348ExitGvExtra ++ [])) s2Step348ExitFv_Incoming s2Step348ExitFv_checked h3 s2Step348ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step348ExitFBefore s2Step348ExitFAfter s2Step348ExitGvAfter
    s2Step348ExitFRow s2Step348ExitFOut 97 [] [(s2Step348ExitFvRow,191),(s2Step348ExitGvRow,190)] [[],[]] [s2Step348ExitFvOut,s2Step348ExitGvOut]
    (shrinkRow 768 s2Step348ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step348ExitGvExtra ++ []))) s2Step348ExitF_Incoming s2Step348ExitF_checked h2 s2Step348ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step348ExitGBefore s2Step348ExitGAfter s2Step348ExitGvAfter
    s2Step348ExitGRow s2Step348ExitGOut 97 [] [(s2Step348ExitFRow,97),(s2Step348ExitFvRow,191),(s2Step348ExitGvRow,190)] [[],[],[]] [s2Step348ExitFOut,s2Step348ExitFvOut,s2Step348ExitGvOut]
    (shrinkRow 769 s2Step348ExitGExtra) ((shrinkRow 768 s2Step348ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step348ExitGvExtra ++ [])))) s2Step348ExitG_Incoming s2Step348ExitG_checked h1 s2Step348ExitG_Outgoing
  exact h0

private theorem s2Step348ExitBank_checked : compileHmrBankResizeLog .exit s2Step348ExitGBefore ⟨s2Step348ExitFRow,s2Step348ExitGRow,s2Step348ExitFvRow,s2Step348ExitGvRow⟩ ⟨97,97,191,190⟩ [[],[],[],[]]=
    some (s2Step348ExitGvAfter,⟨s2Step348ExitFOut,s2Step348ExitGOut,s2Step348ExitFvOut,s2Step348ExitGvOut⟩,(shrinkRow 769 s2Step348ExitGExtra ++ (shrinkRow 768 s2Step348ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step348ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step348ExitBank_rows]
  rfl

private theorem s2Step348Add0_apart : Disjoint s2Step348Add0Arena.live s2Step348Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step348Add0Arena (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step348Add0_card : s2Step348Add0Arena.live.card=910 := by
  decide +kernel

private theorem s2Step348Add0_borrowed : s2Step348Add0Arena.checkBorrow (hmrHybridCount s2Step348Add0Arena s2Step348Add0B.length) s2Step348Add0Work=some s2Step348Add0During := by
  have len : s2Step348Add0Work.length=hmrHybridCount s2Step348Add0Arena s2Step348Add0B.length := by
    rw [hmrHybridCount,s2Step348Add0_card]
    decide +kernel
  have nd : s2Step348Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step348Add0Arena s2Step348Add0During s2Step348Add0Work.toFinset s2Step348Add0_bounded s2Step348Add0_apart rfl

private theorem s2Step348Add0_distinct : (800::891::789::(s2Step348Add0A++s2Step348Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step348Add0_owned : (800::891::789::(s2Step348Add0A++s2Step348Add0B)).toFinset⊆s2Step348Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step348Add0Arena (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step348Add0_checked : compileHmrHybridCinLog s2Step348Add0Arena 891 800 789 s2Step348Add0A s2Step348Add0B s2Step348Add0Work=some s2Step348Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step348Add0Arena s2Step348Add0During 891 800 789 s2Step348Add0A s2Step348Add0B s2Step348Add0Work
    (by decide +kernel) (by decide +kernel) s2Step348Add0_distinct
    (fun q hq => s2Step348Add0_owned (List.mem_toFinset.mpr hq)) s2Step348Add0_borrowed

private theorem s2Step348Add1_apart : Disjoint s2Step348Add1Arena.live s2Step348Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step348Add1Arena (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step348Add1_card : s2Step348Add1Arena.live.card=910 := by
  decide +kernel

private theorem s2Step348Add1_borrowed : s2Step348Add1Arena.checkBorrow (hmrHybridCount s2Step348Add1Arena s2Step348Add1B.length) s2Step348Add1Work=some s2Step348Add1During := by
  have len : s2Step348Add1Work.length=hmrHybridCount s2Step348Add1Arena s2Step348Add1B.length := by
    rw [hmrHybridCount,s2Step348Add1_card]
    decide +kernel
  have nd : s2Step348Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step348Add1Arena s2Step348Add1During s2Step348Add1Work.toFinset s2Step348Add1_bounded s2Step348Add1_apart rfl

private theorem s2Step348Add1_distinct : (800::891::789::(s2Step348Add1A++s2Step348Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step348Add1_owned : (800::891::789::(s2Step348Add1A++s2Step348Add1B)).toFinset⊆s2Step348Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step348Add1Arena (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step348Add1_checked : compileHmrHybridCinLog s2Step348Add1Arena 891 800 789 s2Step348Add1A s2Step348Add1B s2Step348Add1Work=some s2Step348Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step348Add1Arena s2Step348Add1During 891 800 789 s2Step348Add1A s2Step348Add1B s2Step348Add1Work
    (by decide +kernel) (by decide +kernel) s2Step348Add1_distinct
    (fun q hq => s2Step348Add1_owned (List.mem_toFinset.mpr hq)) s2Step348Add1_borrowed

private theorem s2Step348F4_apart : Disjoint (s2Step348Add0A++s2Step348Add0B).toFinset (s2Step348Add1A++s2Step348Add1B).toFinset := by
  have nd : ((s2Step348Add0A++s2Step348Add0B)++(s2Step348Add1A++s2Step348Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step348F4_carry : s2Step348F4FlagArena.checkBorrow 1 [789]=some s2Step348Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step348F4FlagArena,s2Step348HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step348F4FlagArena,s2Step348HeadFvAfter,s2Step348Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step348F4_distinct : (801::891::800::789::((s2Step348Add0A++s2Step348Add1A)++(s2Step348Add0B++s2Step348Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step348F4_flag : s2Step348HeadFvAfter.checkBorrow 1 [800]=some s2Step348F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step348HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step348F4_owned : (801::891::((s2Step348Add0A++s2Step348Add1A)++(s2Step348Add0B++s2Step348Add1B))).toFinset⊆s2Step348HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step348HeadFvAfter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step348F4_checked : compileHmrHybridF4Log s2Step348HeadFvAfter 801 891 s2Step348Add0A s2Step348Add0B s2Step348Add1A s2Step348Add1B [800] [789] s2Step348Add0Work s2Step348Add1Work=some s2Step348F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step348HeadFvAfter s2Step348F4FlagArena s2Step348Add0Arena s2Step348Add0During s2Step348Add1During 801 891
    s2Step348Add0A s2Step348Add0B s2Step348Add1A s2Step348Add1B [800] [789] s2Step348Add0Work s2Step348Add1Work
    (fun q hq => s2Step348F4_owned (List.mem_toFinset.mpr hq)) s2Step348F4_flag s2Step348F4_carry
    s2Step348F4_distinct s2Step348F4_apart s2Step348Add0_checked s2Step348Add1_checked

private theorem s2Step348Front_branch : s2Step348FrontSigmaArena.checkBorrow 1 [891]=some s2Step348HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step348FrontSigmaArena,s2Step348EntryGvAfter,s2Step348EntryFAfter,arenaWires]
  · ext q
    simp only [s2Step348FrontSigmaArena,s2Step348EntryGvAfter,s2Step348EntryFAfter,s2Step348HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step348Front_entry : HmrFrontEntryValid s2Step348EntryFBefore s2Step348FrontBank 98 190 ⟨97,97,191,190⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step348FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step348EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step348EntryFBefore (fun q => (0≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (802≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step348FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step348Front_sigma : s2Step348EntryGvAfter.checkBorrow 1 [801]=some s2Step348FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step348EntryGvAfter,s2Step348EntryFAfter,arenaWires]
  · rfl

private def s2Step348HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (846≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step348HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (846≤q ∧ q<894) ∨ (895≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step348HeadFBefore : Arena := s2Step348HeadGAfter

private def s2Step348HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 839],768⟩

private def s2Step348HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804],770⟩

private def s2Step348HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97],769⟩

private def s2Step348HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901],771⟩

private theorem s2Step348HeadBank_incomingDistinct : ([s2Step348HeadGRow,s2Step348HeadFRow,s2Step348HeadGvRow,s2Step348HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step348HeadF_Incoming : rowsOwned s2Step348HeadFBefore [s2Step348HeadFRow,s2Step348HeadGvRow,s2Step348HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step348HeadGRow,s2Step348HeadFRow,s2Step348HeadGvRow,s2Step348HeadFvRow] 1 s2Step348HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step348HeadFBefore (fun q => (0≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (846≤q ∧ q<894) ∨ (895≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step348HeadBank_outgoingOwned : rowsOwned s2Step348HeadFvAfter [s2Step348HeadGOut,s2Step348HeadFOut,s2Step348HeadGvOut,s2Step348HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step348HeadFvAfter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step348HeadF_Outgoing : rowsOwned s2Step348HeadFvAfter [s2Step348HeadFOut,s2Step348HeadGvOut,s2Step348HeadFvOut] :=
  hmrRows_owned_drop s2Step348HeadFvAfter [s2Step348HeadGOut,s2Step348HeadFOut,s2Step348HeadGvOut,s2Step348HeadFvOut] 1 s2Step348HeadBank_outgoingOwned

private theorem s2Step348HeadF_distinct : (s2Step348HeadFRow.sign::s2Step348HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step348HeadF_owned : (s2Step348HeadFRow.sign::s2Step348HeadFRow.payload).toFinset⊆s2Step348HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step348HeadFBefore (fun q => (0≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (846≤q ∧ q<894) ∨ (895≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step348HeadF_reserved : s2Step348HeadFBefore.reserve s2Step348HeadFFresh.toFinset=some s2Step348HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step348HeadFFresh,arenaWires]
  · norm_num [s2Step348HeadFBefore,s2Step348HeadGAfter,s2Step348HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step348HeadFAfter,s2Step348HeadFBefore,s2Step348HeadGAfter,s2Step348HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step348HeadF_checked : planRowResizeLog s2Step348HeadFBefore s2Step348HeadFRow 99 s2Step348HeadFFresh=
    some (s2Step348HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 839, 894],768⟩,growRow 768 s2Step348HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step348HeadFBefore s2Step348HeadFAfter s2Step348HeadFRow 99 s2Step348HeadFFresh
    s2Step348HeadF_distinct s2Step348HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step348HeadF_reserved
  have rowEq : WindowRow.mk (s2Step348HeadFRow.payload++s2Step348HeadFFresh) s2Step348HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 839, 894],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step348HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (846≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step348HeadFvBefore : Arena := s2Step348HeadGvAfter

private theorem s2Step348HeadFv_Incoming : rowsOwned s2Step348HeadFvBefore [s2Step348HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step348HeadGRow,s2Step348HeadFRow,s2Step348HeadGvRow,s2Step348HeadFvRow] 3 s2Step348HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step348HeadFvBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (846≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step348HeadFv_Outgoing : rowsOwned s2Step348HeadFvAfter [s2Step348HeadFvOut] :=
  hmrRows_owned_drop s2Step348HeadFvAfter [s2Step348HeadGOut,s2Step348HeadFOut,s2Step348HeadGvOut,s2Step348HeadFvOut] 3 s2Step348HeadBank_outgoingOwned

private theorem s2Step348HeadFv_distinct : (s2Step348HeadFvRow.sign::s2Step348HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step348HeadFv_owned : (s2Step348HeadFvRow.sign::s2Step348HeadFvRow.payload).toFinset⊆s2Step348HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step348HeadFvBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (846≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step348HeadFv_reserved : s2Step348HeadFvBefore.reserve s2Step348HeadFvFresh.toFinset=some s2Step348HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step348HeadFvFresh,arenaWires]
  · norm_num [s2Step348HeadFvBefore,s2Step348HeadGvAfter,s2Step348HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step348HeadFvAfter,s2Step348HeadFvBefore,s2Step348HeadGvAfter,s2Step348HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step348HeadFv_checked : planRowResizeLog s2Step348HeadFvBefore s2Step348HeadFvRow 191 s2Step348HeadFvFresh=
    some (s2Step348HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845],770⟩,growRow 770 s2Step348HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step348HeadFvBefore s2Step348HeadFvAfter s2Step348HeadFvRow 191 s2Step348HeadFvFresh
    s2Step348HeadFv_distinct s2Step348HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step348HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step348HeadFvRow.payload++s2Step348HeadFvFresh) s2Step348HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step348HeadG_Incoming : rowsOwned s2Step348HeadGBefore [s2Step348HeadGRow,s2Step348HeadFRow,s2Step348HeadGvRow,s2Step348HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step348HeadGRow,s2Step348HeadFRow,s2Step348HeadGvRow,s2Step348HeadFvRow] 0 s2Step348HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step348HeadGBefore (fun q => (0≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (846≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step348HeadG_Outgoing : rowsOwned s2Step348HeadFvAfter [s2Step348HeadGOut,s2Step348HeadFOut,s2Step348HeadGvOut,s2Step348HeadFvOut] :=
  hmrRows_owned_drop s2Step348HeadFvAfter [s2Step348HeadGOut,s2Step348HeadFOut,s2Step348HeadGvOut,s2Step348HeadFvOut] 0 s2Step348HeadBank_outgoingOwned

private theorem s2Step348HeadG_distinct : (s2Step348HeadGRow.sign::s2Step348HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step348HeadG_owned : (s2Step348HeadGRow.sign::s2Step348HeadGRow.payload).toFinset⊆s2Step348HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step348HeadGBefore (fun q => (0≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (846≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step348HeadG_reserved : s2Step348HeadGBefore.reserve s2Step348HeadGFresh.toFinset=some s2Step348HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step348HeadGFresh,arenaWires]
  · norm_num [s2Step348HeadGBefore,s2Step348HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step348HeadGAfter,s2Step348HeadGBefore,s2Step348HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step348HeadG_checked : planRowResizeLog s2Step348HeadGBefore s2Step348HeadGRow 99 s2Step348HeadGFresh=
    some (s2Step348HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 903],769⟩,growRow 769 s2Step348HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step348HeadGBefore s2Step348HeadGAfter s2Step348HeadGRow 99 s2Step348HeadGFresh
    s2Step348HeadG_distinct s2Step348HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step348HeadG_reserved
  have rowEq : WindowRow.mk (s2Step348HeadGRow.payload++s2Step348HeadGFresh) s2Step348HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 903],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step348HeadGvBefore : Arena := s2Step348HeadFAfter

private theorem s2Step348HeadGv_Incoming : rowsOwned s2Step348HeadGvBefore [s2Step348HeadGvRow,s2Step348HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step348HeadGRow,s2Step348HeadFRow,s2Step348HeadGvRow,s2Step348HeadFvRow] 2 s2Step348HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step348HeadGvBefore (fun q => (0≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (846≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step348HeadGv_Outgoing : rowsOwned s2Step348HeadFvAfter [s2Step348HeadGvOut,s2Step348HeadFvOut] :=
  hmrRows_owned_drop s2Step348HeadFvAfter [s2Step348HeadGOut,s2Step348HeadFOut,s2Step348HeadGvOut,s2Step348HeadFvOut] 2 s2Step348HeadBank_outgoingOwned

private theorem s2Step348HeadGv_distinct : (s2Step348HeadGvRow.sign::s2Step348HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step348HeadGv_owned : (s2Step348HeadGvRow.sign::s2Step348HeadGvRow.payload).toFinset⊆s2Step348HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step348HeadGvBefore (fun q => (0≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (846≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step348HeadGv_reserved : s2Step348HeadGvBefore.reserve s2Step348HeadGvFresh.toFinset=some s2Step348HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step348HeadGvFresh,arenaWires]
  · norm_num [s2Step348HeadGvBefore,s2Step348HeadFAfter,s2Step348HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step348HeadGvAfter,s2Step348HeadGvBefore,s2Step348HeadFAfter,s2Step348HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step348HeadGv_checked : planRowResizeLog s2Step348HeadGvBefore s2Step348HeadGvRow 191 s2Step348HeadGvFresh=
    some (s2Step348HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 788],771⟩,growRow 771 s2Step348HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step348HeadGvBefore s2Step348HeadGvAfter s2Step348HeadGvRow 191 s2Step348HeadGvFresh
    s2Step348HeadGv_distinct s2Step348HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step348HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step348HeadGvRow.payload++s2Step348HeadGvFresh) s2Step348HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 788],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step348HeadBank_rows : planWindowRowsLog s2Step348HeadGBefore [(s2Step348HeadGRow,99),(s2Step348HeadFRow,99),(s2Step348HeadGvRow,191),(s2Step348HeadFvRow,191)] [s2Step348HeadGFresh,s2Step348HeadFFresh,s2Step348HeadGvFresh,s2Step348HeadFvFresh]=
    some (s2Step348HeadFvAfter,[s2Step348HeadGOut,s2Step348HeadFOut,s2Step348HeadGvOut,s2Step348HeadFvOut],(growRow 769 s2Step348HeadGFresh ++ (growRow 768 s2Step348HeadFFresh ++ (growRow 771 s2Step348HeadGvFresh ++ (growRow 770 s2Step348HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step348HeadFvAfter [] []=some (s2Step348HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step348HeadFvBefore s2Step348HeadFvAfter s2Step348HeadFvAfter
    s2Step348HeadFvRow s2Step348HeadFvOut 191 s2Step348HeadFvFresh [] [] []
    (growRow 770 s2Step348HeadFvFresh) ([]) s2Step348HeadFv_Incoming s2Step348HeadFv_checked h4 s2Step348HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step348HeadGvBefore s2Step348HeadGvAfter s2Step348HeadFvAfter
    s2Step348HeadGvRow s2Step348HeadGvOut 191 s2Step348HeadGvFresh [(s2Step348HeadFvRow,191)] [s2Step348HeadFvFresh] [s2Step348HeadFvOut]
    (growRow 771 s2Step348HeadGvFresh) ((growRow 770 s2Step348HeadFvFresh ++ [])) s2Step348HeadGv_Incoming s2Step348HeadGv_checked h3 s2Step348HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step348HeadFBefore s2Step348HeadFAfter s2Step348HeadFvAfter
    s2Step348HeadFRow s2Step348HeadFOut 99 s2Step348HeadFFresh [(s2Step348HeadGvRow,191),(s2Step348HeadFvRow,191)] [s2Step348HeadGvFresh,s2Step348HeadFvFresh] [s2Step348HeadGvOut,s2Step348HeadFvOut]
    (growRow 768 s2Step348HeadFFresh) ((growRow 771 s2Step348HeadGvFresh ++ (growRow 770 s2Step348HeadFvFresh ++ []))) s2Step348HeadF_Incoming s2Step348HeadF_checked h2 s2Step348HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step348HeadGBefore s2Step348HeadGAfter s2Step348HeadFvAfter
    s2Step348HeadGRow s2Step348HeadGOut 99 s2Step348HeadGFresh [(s2Step348HeadFRow,99),(s2Step348HeadGvRow,191),(s2Step348HeadFvRow,191)] [s2Step348HeadFFresh,s2Step348HeadGvFresh,s2Step348HeadFvFresh] [s2Step348HeadFOut,s2Step348HeadGvOut,s2Step348HeadFvOut]
    (growRow 769 s2Step348HeadGFresh) ((growRow 768 s2Step348HeadFFresh ++ (growRow 771 s2Step348HeadGvFresh ++ (growRow 770 s2Step348HeadFvFresh ++ [])))) s2Step348HeadG_Incoming s2Step348HeadG_checked h1 s2Step348HeadG_Outgoing
  exact h0

private theorem s2Step348HeadBank_checked : compileHmrBankResizeLog .headroom s2Step348HeadGBefore ⟨s2Step348HeadFRow,s2Step348HeadGRow,s2Step348HeadFvRow,s2Step348HeadGvRow⟩ ⟨99,99,191,191⟩ [s2Step348HeadGFresh,s2Step348HeadFFresh,s2Step348HeadGvFresh,s2Step348HeadFvFresh]=
    some (s2Step348HeadFvAfter,⟨s2Step348HeadFOut,s2Step348HeadGOut,s2Step348HeadFvOut,s2Step348HeadGvOut⟩,(growRow 769 s2Step348HeadGFresh ++ (growRow 768 s2Step348HeadFFresh ++ (growRow 771 s2Step348HeadGvFresh ++ (growRow 770 s2Step348HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step348HeadBank_rows]
  rfl

private theorem s2Step348Front_checked : compileHmrSourceFrontLog s2Step348EntryFBefore s2Step348FrontBank 98 190 ⟨97,97,191,190⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step348FrontLog=some s2Step348FrontPlan := by
  have pairEq : s2Step348FrontPair=⟨s2Step348HeadFRow,s2Step348HeadGRow,s2Step348HeadFvRow,s2Step348HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step348FrontHead=⟨s2Step348ExitFRow,s2Step348ExitGRow,s2Step348ExitFvRow,s2Step348ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step348Add0A=s2Step348FrontHead.f.wires := by decide +kernel
  have gEq : s2Step348Add0B=s2Step348FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step348Add1A=s2Step348FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step348Add1B=s2Step348FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step348EntryFBefore s2Step348FrontBank 98 190 ⟨97,97,191,190⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step348FrontLog s2Step348FrontPlan
  · exact s2Step348Front_entry
  · exact s2Step348EntryBank_checked
  · exact s2Step348Front_sigma
  · rfl
  · exact s2Step348Front_branch
  · rfl
  · simpa only [s2Step348FrontPlan,pairEq] using s2Step348HeadBank_checked
  · simpa only [s2Step348FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step348F4_checked
  · exact s2Step348Counter_checked
  · rfl
  · simpa only [s2Step348FrontPlan,headEq] using s2Step348ExitBank_checked

private theorem s2Step348Complete_explicit_checked : compileHmrEarlyStepLog s2Step348EntryFBefore s2Step348FrontBank 98 190 ⟨97,97,191,190⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step348CompleteLog=some s2Step348CompletePlan := by
  let Q := s2Step348EarlyControlPlan
  have hq := s2Step348EarlyControl_plan_checked
  have fv1 : s2Step348CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step348CompleteOut.fv.payload[2]?.getD s2Step348CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step348CompleteOut.fv.payload[3]?.getD s2Step348CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step348CompleteOut.fv.payload[4]?.getD s2Step348CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step348EntryFBefore s2Step348EarlyControlArena s2Step348FrontBank 98 190 ⟨97,97,191,190⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step348CompleteLog s2Step348FrontPlan Q
    s2Step348Front_checked s2Step348Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step348Complete_owned s2Step348Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step348EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 801 s2Step348CompleteOut.fv.second (s2Step348CompleteOut.fv.payload[2]?.getD s2Step348CompleteOut.fv.sign) (s2Step348CompleteOut.fv.payload[3]?.getD s2Step348CompleteOut.fv.sign) (s2Step348CompleteOut.fv.payload[4]?.getD s2Step348CompleteOut.fv.sign) 891 60 s2Step348EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep348Arena : Arena := s2Step348EntryFBefore
def s2PrivateStep348Bank : WindowBank := s2Step348FrontBank
def s2PrivateStep348Spec : HmrSourceWalkStepLog := ⟨98,190,⟨97,97,191,190⟩,60,.early s2Step348CompleteLog⟩
def s2PrivateStep348Plan : HmrSourceStepPlan := .early s2Step348CompletePlan
theorem s2PrivateStep348_source : s2PrivateStep348Spec=s2ObservedLogs336[12] := rfl
theorem s2PrivateStep348_checked : compileHmrSourceStepLog s2PrivateStep348Arena s2PrivateStep348Bank
    s2PrivateStep348Spec.fgWidth s2PrivateStep348Spec.vWidth s2PrivateStep348Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]
    6 498 348 s2PrivateStep348Spec.need none s2PrivateStep348Spec.log=some s2PrivateStep348Plan := by
  change compileHmrSourceStepLog s2Step348EntryFBefore s2Step348FrontBank 98 190 ⟨97,97,191,190⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 6 498 348 60 none (.early s2Step348CompleteLog)=some (.early s2Step348CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 348<498)]
  rw [s2Step348Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
