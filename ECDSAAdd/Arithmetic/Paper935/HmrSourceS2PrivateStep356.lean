import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep354
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

private def s2Step356CompleteMoves : List (Wire × Wire) := [(785,92)]

private def s2Step356EarlyControlLog : HmrEarlyControlLog := ⟨[785, 796, 839, 821, 790],[903],[800],[789, 827, 844, 907, 913, 914],[]⟩

private def s2Step356FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [849]],[[821], [839], [796], [791]],[[], [], [], []]⟩,[808],[812],[790],[903],[800, 789, 827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[800, 789, 827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[790, 903, 800, 789]⟩

private def s2Step356CompleteLog : HmrEarlyStepLog := ⟨s2Step356FrontLog,s2Step356CompleteMoves,s2Step356EarlyControlLog⟩

private def s2Step356ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604],768⟩

private def s2Step356ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791],770⟩

private def s2Step356ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91],769⟩

private def s2Step356ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849],771⟩

private def s2Step356FrontOut : WindowBank := ⟨s2Step356ExitFOut,s2Step356ExitGOut,s2Step356ExitFvOut,s2Step356ExitGvOut⟩

private def s2Step356CompleteOut : WindowBank := s2Step356FrontOut.repacked s2Step356CompleteMoves

private def s2Step356EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step356EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step356EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step356EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step356EarlyControlPositiveArena,[903],s2Step356EarlyControlEqualityArena,[800],⟨⟨808,false⟩,[⟨⟨903,false⟩,800⟩]⟩⟩

private def s2Step356EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<915)),Finset.filter_subset _ _⟩

private def s2Step356EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<915)),Finset.filter_subset _ _⟩

private def s2Step356EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step356EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step356EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step356EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step356EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,785⟩,⟨⟨774,false⟩,796⟩,⟨⟨775,false⟩,839⟩,⟨⟨776,false⟩,821⟩,⟨⟨777,false⟩,790⟩]⟩

private def s2Step356EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step356EarlyControlZeroArena,s2Step356EarlyControlZeroPlan,s2Step356EarlyControlClassPlan,s2Step356EarlyControlFlagArena,s2Step356EarlyControlFittedArena,s2Step356EarlyControlHistoryArena,s2Step356EarlyControlSigmaArena,s2Step356EarlyControlOutputArena,s2Step356EarlyControlLog⟩

private def s2Step356CounterWork : List Wire := [790, 903, 800, 789]

private theorem s2Step356Counter_bounded : s2Step356CounterWork.toFinset⊆arenaWires := by norm_num [s2Step356CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step356HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step356CounterDuring : Arena := ⟨s2Step356HeadFvAfter.live∪s2Step356CounterWork.toFinset,Finset.union_subset s2Step356HeadFvAfter.bounded s2Step356Counter_bounded⟩

private def s2Step356EntryFFresh : List Wire := []

private def s2Step356EntryFvFresh : List Wire := []

private def s2Step356EntryGFresh : List Wire := []

private def s2Step356EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step356EntryGvFresh : List Wire := [849]

private def s2Step356ExitFExtra : List Wire := [839]

private def s2Step356ExitGExtra : List Wire := [92, 821]

private def s2Step356ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<92) ∨ (93≤q ∧ q<789) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step356ExitGvExtra : List Wire := [796]

private def s2Step356Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step356Add0Work : List Wire := [800, 789, 827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step356Add0_bounded : s2Step356Add0Work.toFinset⊆arenaWires := by
  have h : s2Step356Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step356Add0During : Arena := ⟨s2Step356Add0Arena.live∪s2Step356Add0Work.toFinset,Finset.union_subset s2Step356Add0Arena.bounded s2Step356Add0_bounded⟩

private def s2Step356Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step356Add1Work : List Wire := [800, 789, 827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step356Add1_bounded : s2Step356Add1Work.toFinset⊆arenaWires := by
  have h : s2Step356Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step356Add1During : Arena := ⟨s2Step356Add1Arena.live∪s2Step356Add1Work.toFinset,Finset.union_subset s2Step356Add1Arena.bounded s2Step356Add1_bounded⟩

private def s2Step356F4FlagArena : Arena := ⟨s2Step356HeadFvAfter.live∪{790},Finset.union_subset s2Step356HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step356F4Plan : HmrHybridF4Plan := ⟨s2Step356F4FlagArena,[790],s2Step356Add0Arena,[903],s2Step356Add0During,s2Step356Add0Work,s2Step356Add1During,s2Step356Add1Work⟩

private def s2Step356HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 839],768⟩

private def s2Step356HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791],770⟩

private def s2Step356HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 821],769⟩

private def s2Step356HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 796],771⟩

private def s2Step356FrontHead : WindowBank := ⟨s2Step356HeadFOut,s2Step356HeadGOut,s2Step356HeadFvOut,s2Step356HeadGvOut⟩

private def s2Step356EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604],768⟩

private def s2Step356EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894],770⟩

private def s2Step356EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92],769⟩

private def s2Step356EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849],771⟩

private def s2Step356FrontPair : WindowBank := ⟨s2Step356EntryFOut,s2Step356EntryGOut,s2Step356EntryFvOut,s2Step356EntryGvOut⟩

private def s2Step356FrontSigmaArena : Arena := ⟨s2Step356EntryGvAfter.live∪{808},Finset.union_subset s2Step356EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step356HeadFFresh : List Wire := [839]

private def s2Step356HeadFvFresh : List Wire := [791]

private def s2Step356HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step356HeadGFresh : List Wire := [821]

private def s2Step356HeadGvFresh : List Wire := [796]

private def s2Step356FrontPlan : HmrSourceFront := ⟨s2Step356EntryGvAfter,s2Step356FrontPair,(growRow 768 s2Step356EntryFFresh ++ (growRow 769 s2Step356EntryGFresh ++ (growRow 770 s2Step356EntryFvFresh ++ (growRow 771 s2Step356EntryGvFresh ++ [])))),s2Step356FrontSigmaArena,[808],s2Step356HeadGBefore,[812],
  s2Step356HeadFvAfter,s2Step356FrontHead,(growRow 769 s2Step356HeadGFresh ++ (growRow 768 s2Step356HeadFFresh ++ (growRow 771 s2Step356HeadGvFresh ++ (growRow 770 s2Step356HeadFvFresh ++ [])))),s2Step356F4Plan,s2Step356CounterDuring,s2Step356CounterWork,s2Step356ExitGvAfter,s2Step356FrontOut,(shrinkRow 769 s2Step356ExitGExtra ++ (shrinkRow 768 s2Step356ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step356ExitGvExtra ++ []))))⟩

private def s2Step356CompletePlan : HmrEarlyStepPlan := ⟨s2Step356FrontPlan,s2Step356EarlyControlArena,s2Step356EarlyControlPlan,s2Step356CompleteMoves⟩

private theorem s2Step356Complete_apart : List.Disjoint (s2Step356CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [808, 812, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] := by
  have nd : ((s2Step356CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[808, 812, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step356Complete_owned : (s2Step356CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step356EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step356EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private def s2Step356CompleteMoveArena : Arena := ⟨s2Step356ExitGvAfter.live∪{92},Finset.union_subset s2Step356ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step356Complete_repack : s2Step356ExitGvAfter.checkRepack s2Step356CompleteMoves=some s2Step356EarlyControlArena := by
  have owned : 785∈s2Step356ExitGvAfter.live := by norm_num [s2Step356ExitGvAfter,arenaWires]
  have reserve : s2Step356ExitGvAfter.reserve {92}=some s2Step356CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step356ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step356CompleteMoveArena.retireSet {785}=s2Step356EarlyControlArena := by
    unfold Arena.retireSet s2Step356EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step356CompleteMoveArena,s2Step356ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step356CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step356CompleteMoveArena.retireSet {785}).checkRepack []=some s2Step356EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step356EarlyControl_branchOwned : ([812] : List Wire).toFinset⊆s2Step356EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step356EarlyControlSigmaArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step356EarlyControl_branch : compileHmrBranchRetirement s2Step356EarlyControlSigmaArena 812=some s2Step356EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step356EarlyControl_branchOwned
  · ext q
    simp [s2Step356EarlyControlOutputArena,s2Step356EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step356EarlyControl_classEqualityBorrow : s2Step356EarlyControlPositiveArena.checkBorrow (([808, 903] : List Wire).length-1) s2Step356EarlyControlLog.classWork=some s2Step356EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step356EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step356EarlyControlPositiveArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step356EarlyControlEqualityArena,s2Step356EarlyControlPositiveArena,s2Step356EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step356EarlyControl_classEqualityOwned : ([808, 903] : List Wire).toFinset⊆s2Step356EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step356EarlyControlPositiveArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step356EarlyControl_classEquality : compileHmrEqualityLog s2Step356EarlyControlPositiveArena [808, 903] 0 s2Step356EarlyControlLog.classWork=some (s2Step356EarlyControlEqualityArena,s2Step356EarlyControlLog.classWork,s2Step356EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step356EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step356EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step356EarlyControl_classOwned : ([777, 790, 808] : List Wire).toFinset⊆s2Step356EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step356EarlyControlZeroArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step356EarlyControl_positiveBorrow : s2Step356EarlyControlZeroArena.checkBorrow (1) s2Step356EarlyControlLog.positiveWork=some s2Step356EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step356EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step356EarlyControlZeroArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step356EarlyControlPositiveArena,s2Step356EarlyControlZeroArena,s2Step356EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step356EarlyControl_class : compileHmrSourceClassLog s2Step356EarlyControlZeroArena false 777 s2Step356EarlyControlZeroPlan.top 0 808 s2Step356EarlyControlLog.positiveWork s2Step356EarlyControlLog.classWork=some s2Step356EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step356EarlyControlClassPlan s2Step356EarlyControlZeroArena false 777 s2Step356EarlyControlZeroPlan.top 0 808
  constructor
  · decide +kernel
  · exact s2Step356EarlyControl_classOwned
  · exact s2Step356EarlyControl_positiveBorrow
  · exact s2Step356EarlyControl_classEquality

private theorem s2Step356EarlyControl_entryRecordOwned : ([812, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step356EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step356EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step356EarlyControl_entrySigmaOwned : ([808, 254] : List Wire).toFinset⊆s2Step356EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step356EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step356EarlyControl_fitBorrow : s2Step356EarlyControlFlagArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step356EarlyControlLog.recordFresh=some s2Step356EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step356EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step356EarlyControlFlagArena (fun q => (0≤q ∧ q<915)) rfl
      decide +kernel
    · ext q
      simp [s2Step356EarlyControlFittedArena,s2Step356EarlyControlFlagArena,s2Step356EarlyControlLog,arenaWires]

private theorem s2Step356EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step356EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step356EarlyControlFlagArena (fun q => (0≤q ∧ q<915)) rfl
  decide +kernel

private theorem s2Step356EarlyControl_fit : compileHmrRecordGrowLog s2Step356EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step356EarlyControlLog.recordFresh=some s2Step356EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step356EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step356EarlyControl_fitBorrow

private theorem s2Step356EarlyControl_flagsBorrow : s2Step356EarlyControlEqualityArena.checkBorrow (6) s2Step356EarlyControlLog.flagWork=some s2Step356EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step356EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step356EarlyControlEqualityArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step356EarlyControlFlagArena,s2Step356EarlyControlEqualityArena,s2Step356EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step356EarlyControl_flagsOwned : ([800, 253, 252, 251] : List Wire).toFinset⊆s2Step356EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step356EarlyControlEqualityArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step356EarlyControl_flags : compileHmrFlagsLog s2Step356EarlyControlClassPlan.equalityArena s2Step356EarlyControlClassPlan.equality.top 253 252 251 s2Step356EarlyControlLog.flagWork=some s2Step356EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step356EarlyControl_flagsOwned⟩
  · exact s2Step356EarlyControl_flagsBorrow

private theorem s2Step356EarlyControl_historyBorrow : s2Step356EarlyControlArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step356EarlyControlLog.recordFresh=some s2Step356EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step356EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step356EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step356EarlyControlHistoryArena,s2Step356EarlyControlArena,s2Step356EarlyControlLog,arenaWires]

private theorem s2Step356EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step356EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step356EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step356EarlyControl_history : compileHmrRecordGrowLog s2Step356EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step356EarlyControlLog.recordFresh=some s2Step356EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step356EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step356EarlyControl_historyBorrow

private theorem s2Step356EarlyControl_sigmaOwned : ([254, 808] : List Wire).toFinset⊆s2Step356EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step356EarlyControlHistoryArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step356EarlyControl_sigmaReleaseOwned : ([808] : List Wire).toFinset⊆s2Step356EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step356EarlyControlHistoryArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step356EarlyControl_sigmaRelease : s2Step356EarlyControlHistoryArena.release {808} (fun _ => false)=some s2Step356EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step356EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step356EarlyControlSigmaArena,s2Step356EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step356EarlyControl_sigma : compileHmrSigmaDropLog s2Step356EarlyControlHistoryArena false 0 0 254 808 []=some s2Step356EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step356EarlyControl_sigmaOwned⟩
  · exact s2Step356EarlyControl_sigmaRelease

private theorem s2Step356EarlyControl_zeroBorrow : s2Step356EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step356EarlyControlLog.zeroWork=some s2Step356EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step356EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step356EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step356EarlyControlZeroArena,s2Step356EarlyControlArena,s2Step356EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step356EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step356EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step356EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step356EarlyControl_zero : compileHmrEqualityLog s2Step356EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step356EarlyControlLog.zeroWork=some (s2Step356EarlyControlZeroArena,s2Step356EarlyControlLog.zeroWork,s2Step356EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step356EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step356EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step356EarlyControl_logged : s2Step356EarlyControlPlan.Logged s2Step356EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 808 254 253 252 251 812 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step356EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step356EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step356EarlyControl_zero
  · exact s2Step356EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step356EarlyControl_flags
  · exact s2Step356EarlyControl_fit
  · exact s2Step356EarlyControl_history
  · exact s2Step356EarlyControl_sigma
  · exact s2Step356EarlyControl_branch

private theorem s2Step356EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step356EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 808 254 253 252 251 812 60 s2Step356EarlyControlLog=some s2Step356EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step356EarlyControlPlan s2Step356EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 808 254 253 252 251 812 60 s2Step356EarlyControl_logged

private def s2Step356EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step356EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604],768⟩

private def s2Step356EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894],770⟩

private def s2Step356EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92],769⟩

private def s2Step356EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801],771⟩

private def s2Step356FrontBank : WindowBank := ⟨s2Step356EntryFRow,s2Step356EntryGRow,s2Step356EntryFvRow,s2Step356EntryGvRow⟩

private def s2Step356Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 839, 768]

private def s2Step356Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 821, 769]

private def s2Step356Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 770]

private def s2Step356Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 796, 771]

private theorem s2Step356Counter_apart : Disjoint s2Step356HeadFvAfter.live s2Step356CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step356HeadFvAfter (fun q => (0≤q ∧ q<789) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step356Counter_borrowed : s2Step356HeadFvAfter.checkBorrow 4 s2Step356CounterWork=some s2Step356CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step356HeadFvAfter s2Step356CounterDuring s2Step356CounterWork.toFinset s2Step356Counter_bounded s2Step356Counter_apart rfl

private theorem s2Step356Counter_owned : (808::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step356HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step356HeadFvAfter (fun q => (0≤q ∧ q<789) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step356Counter_checked : compileHmrCounterStepLog s2Step356HeadFvAfter true 808 [772, 773, 774, 775, 776, 777] s2Step356CounterWork=some s2Step356CounterDuring := by
  have owned : ∀q∈808::[772, 773, 774, 775, 776, 777],q∈s2Step356HeadFvAfter.live := fun q hq => s2Step356Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step356Counter_borrowed

private def s2Step356EntryFAfter : Arena := s2Step356EntryFBefore

private theorem s2Step356EntryBank_incomingDistinct : ([s2Step356EntryFRow,s2Step356EntryGRow,s2Step356EntryFvRow,s2Step356EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step356EntryF_Incoming : rowsOwned s2Step356EntryFBefore [s2Step356EntryFRow,s2Step356EntryGRow,s2Step356EntryFvRow,s2Step356EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step356EntryFRow,s2Step356EntryGRow,s2Step356EntryFvRow,s2Step356EntryGvRow] 0 s2Step356EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step356EntryFBefore (fun q => (0≤q ∧ q<789) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step356EntryBank_outgoingOwned : rowsOwned s2Step356EntryGvAfter [s2Step356EntryFOut,s2Step356EntryGOut,s2Step356EntryFvOut,s2Step356EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step356EntryGvAfter (fun q => (0≤q ∧ q<789) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step356EntryF_Outgoing : rowsOwned s2Step356EntryGvAfter [s2Step356EntryFOut,s2Step356EntryGOut,s2Step356EntryFvOut,s2Step356EntryGvOut] :=
  hmrRows_owned_drop s2Step356EntryGvAfter [s2Step356EntryFOut,s2Step356EntryGOut,s2Step356EntryFvOut,s2Step356EntryGvOut] 0 s2Step356EntryBank_outgoingOwned

private theorem s2Step356EntryF_distinct : (s2Step356EntryFRow.sign::s2Step356EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step356EntryF_owned : (s2Step356EntryFRow.sign::s2Step356EntryFRow.payload).toFinset⊆s2Step356EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step356EntryFBefore (fun q => (0≤q ∧ q<789) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step356EntryF_reserved : s2Step356EntryFBefore.reserve s2Step356EntryFFresh.toFinset=some s2Step356EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step356EntryFFresh,arenaWires]
  · norm_num [s2Step356EntryFBefore,s2Step356EntryFFresh,arenaWires]
  · simp only [s2Step356EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step356EntryF_checked : planRowResizeLog s2Step356EntryFBefore s2Step356EntryFRow 93 s2Step356EntryFFresh=
    some (s2Step356EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604],768⟩,growRow 768 s2Step356EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step356EntryFBefore s2Step356EntryFAfter s2Step356EntryFRow 93 s2Step356EntryFFresh
    s2Step356EntryF_distinct s2Step356EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step356EntryF_reserved
  have rowEq : WindowRow.mk (s2Step356EntryFRow.payload++s2Step356EntryFFresh) s2Step356EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step356EntryFvAfter : Arena := s2Step356EntryFBefore

private def s2Step356EntryFvBefore : Arena := s2Step356EntryFBefore

private theorem s2Step356EntryFv_Incoming : rowsOwned s2Step356EntryFvBefore [s2Step356EntryFvRow,s2Step356EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step356EntryFRow,s2Step356EntryGRow,s2Step356EntryFvRow,s2Step356EntryGvRow] 2 s2Step356EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step356EntryFvBefore (fun q => (0≤q ∧ q<789) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step356EntryFv_Outgoing : rowsOwned s2Step356EntryGvAfter [s2Step356EntryFvOut,s2Step356EntryGvOut] :=
  hmrRows_owned_drop s2Step356EntryGvAfter [s2Step356EntryFOut,s2Step356EntryGOut,s2Step356EntryFvOut,s2Step356EntryGvOut] 2 s2Step356EntryBank_outgoingOwned

private theorem s2Step356EntryFv_distinct : (s2Step356EntryFvRow.sign::s2Step356EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step356EntryFv_owned : (s2Step356EntryFvRow.sign::s2Step356EntryFvRow.payload).toFinset⊆s2Step356EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step356EntryFvBefore (fun q => (0≤q ∧ q<789) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step356EntryFv_reserved : s2Step356EntryFvBefore.reserve s2Step356EntryFvFresh.toFinset=some s2Step356EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step356EntryFvFresh,arenaWires]
  · norm_num [s2Step356EntryFvBefore,s2Step356EntryFBefore,s2Step356EntryFvFresh,arenaWires]
  · simp only [s2Step356EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step356EntryFv_checked : planRowResizeLog s2Step356EntryFvBefore s2Step356EntryFvRow 194 s2Step356EntryFvFresh=
    some (s2Step356EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894],770⟩,growRow 770 s2Step356EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step356EntryFvBefore s2Step356EntryFvAfter s2Step356EntryFvRow 194 s2Step356EntryFvFresh
    s2Step356EntryFv_distinct s2Step356EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step356EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step356EntryFvRow.payload++s2Step356EntryFvFresh) s2Step356EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step356EntryGAfter : Arena := s2Step356EntryFBefore

private def s2Step356EntryGBefore : Arena := s2Step356EntryFBefore

private theorem s2Step356EntryG_Incoming : rowsOwned s2Step356EntryGBefore [s2Step356EntryGRow,s2Step356EntryFvRow,s2Step356EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step356EntryFRow,s2Step356EntryGRow,s2Step356EntryFvRow,s2Step356EntryGvRow] 1 s2Step356EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step356EntryGBefore (fun q => (0≤q ∧ q<789) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step356EntryG_Outgoing : rowsOwned s2Step356EntryGvAfter [s2Step356EntryGOut,s2Step356EntryFvOut,s2Step356EntryGvOut] :=
  hmrRows_owned_drop s2Step356EntryGvAfter [s2Step356EntryFOut,s2Step356EntryGOut,s2Step356EntryFvOut,s2Step356EntryGvOut] 1 s2Step356EntryBank_outgoingOwned

private theorem s2Step356EntryG_distinct : (s2Step356EntryGRow.sign::s2Step356EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step356EntryG_owned : (s2Step356EntryGRow.sign::s2Step356EntryGRow.payload).toFinset⊆s2Step356EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step356EntryGBefore (fun q => (0≤q ∧ q<789) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step356EntryG_reserved : s2Step356EntryGBefore.reserve s2Step356EntryGFresh.toFinset=some s2Step356EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step356EntryGFresh,arenaWires]
  · norm_num [s2Step356EntryGBefore,s2Step356EntryFBefore,s2Step356EntryGFresh,arenaWires]
  · simp only [s2Step356EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step356EntryG_checked : planRowResizeLog s2Step356EntryGBefore s2Step356EntryGRow 93 s2Step356EntryGFresh=
    some (s2Step356EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92],769⟩,growRow 769 s2Step356EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step356EntryGBefore s2Step356EntryGAfter s2Step356EntryGRow 93 s2Step356EntryGFresh
    s2Step356EntryG_distinct s2Step356EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step356EntryG_reserved
  have rowEq : WindowRow.mk (s2Step356EntryGRow.payload++s2Step356EntryGFresh) s2Step356EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step356EntryGvBefore : Arena := s2Step356EntryFBefore

private theorem s2Step356EntryGv_Incoming : rowsOwned s2Step356EntryGvBefore [s2Step356EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step356EntryFRow,s2Step356EntryGRow,s2Step356EntryFvRow,s2Step356EntryGvRow] 3 s2Step356EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step356EntryGvBefore (fun q => (0≤q ∧ q<789) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step356EntryGv_Outgoing : rowsOwned s2Step356EntryGvAfter [s2Step356EntryGvOut] :=
  hmrRows_owned_drop s2Step356EntryGvAfter [s2Step356EntryFOut,s2Step356EntryGOut,s2Step356EntryFvOut,s2Step356EntryGvOut] 3 s2Step356EntryBank_outgoingOwned

private theorem s2Step356EntryGv_distinct : (s2Step356EntryGvRow.sign::s2Step356EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step356EntryGv_owned : (s2Step356EntryGvRow.sign::s2Step356EntryGvRow.payload).toFinset⊆s2Step356EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step356EntryGvBefore (fun q => (0≤q ∧ q<789) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step356EntryGv_reserved : s2Step356EntryGvBefore.reserve s2Step356EntryGvFresh.toFinset=some s2Step356EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step356EntryGvFresh,arenaWires]
  · norm_num [s2Step356EntryGvBefore,s2Step356EntryFBefore,s2Step356EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step356EntryGvAfter,s2Step356EntryGvBefore,s2Step356EntryFBefore,s2Step356EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step356EntryGv_checked : planRowResizeLog s2Step356EntryGvBefore s2Step356EntryGvRow 194 s2Step356EntryGvFresh=
    some (s2Step356EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849],771⟩,growRow 771 s2Step356EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step356EntryGvBefore s2Step356EntryGvAfter s2Step356EntryGvRow 194 s2Step356EntryGvFresh
    s2Step356EntryGv_distinct s2Step356EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step356EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step356EntryGvRow.payload++s2Step356EntryGvFresh) s2Step356EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step356EntryBank_rows : planWindowRowsLog s2Step356EntryFBefore [(s2Step356EntryFRow,93),(s2Step356EntryGRow,93),(s2Step356EntryFvRow,194),(s2Step356EntryGvRow,194)] [s2Step356EntryFFresh,s2Step356EntryGFresh,s2Step356EntryFvFresh,s2Step356EntryGvFresh]=
    some (s2Step356EntryGvAfter,[s2Step356EntryFOut,s2Step356EntryGOut,s2Step356EntryFvOut,s2Step356EntryGvOut],(growRow 768 s2Step356EntryFFresh ++ (growRow 769 s2Step356EntryGFresh ++ (growRow 770 s2Step356EntryFvFresh ++ (growRow 771 s2Step356EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step356EntryGvAfter [] []=some (s2Step356EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step356EntryGvBefore s2Step356EntryGvAfter s2Step356EntryGvAfter
    s2Step356EntryGvRow s2Step356EntryGvOut 194 s2Step356EntryGvFresh [] [] []
    (growRow 771 s2Step356EntryGvFresh) ([]) s2Step356EntryGv_Incoming s2Step356EntryGv_checked h4 s2Step356EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step356EntryFvBefore s2Step356EntryFvAfter s2Step356EntryGvAfter
    s2Step356EntryFvRow s2Step356EntryFvOut 194 s2Step356EntryFvFresh [(s2Step356EntryGvRow,194)] [s2Step356EntryGvFresh] [s2Step356EntryGvOut]
    (growRow 770 s2Step356EntryFvFresh) ((growRow 771 s2Step356EntryGvFresh ++ [])) s2Step356EntryFv_Incoming s2Step356EntryFv_checked h3 s2Step356EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step356EntryGBefore s2Step356EntryGAfter s2Step356EntryGvAfter
    s2Step356EntryGRow s2Step356EntryGOut 93 s2Step356EntryGFresh [(s2Step356EntryFvRow,194),(s2Step356EntryGvRow,194)] [s2Step356EntryFvFresh,s2Step356EntryGvFresh] [s2Step356EntryFvOut,s2Step356EntryGvOut]
    (growRow 769 s2Step356EntryGFresh) ((growRow 770 s2Step356EntryFvFresh ++ (growRow 771 s2Step356EntryGvFresh ++ []))) s2Step356EntryG_Incoming s2Step356EntryG_checked h2 s2Step356EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step356EntryFBefore s2Step356EntryFAfter s2Step356EntryGvAfter
    s2Step356EntryFRow s2Step356EntryFOut 93 s2Step356EntryFFresh [(s2Step356EntryGRow,93),(s2Step356EntryFvRow,194),(s2Step356EntryGvRow,194)] [s2Step356EntryGFresh,s2Step356EntryFvFresh,s2Step356EntryGvFresh] [s2Step356EntryGOut,s2Step356EntryFvOut,s2Step356EntryGvOut]
    (growRow 768 s2Step356EntryFFresh) ((growRow 769 s2Step356EntryGFresh ++ (growRow 770 s2Step356EntryFvFresh ++ (growRow 771 s2Step356EntryGvFresh ++ [])))) s2Step356EntryF_Incoming s2Step356EntryF_checked h1 s2Step356EntryF_Outgoing
  exact h0

private theorem s2Step356EntryBank_checked : compileHmrBankResizeLog .entry s2Step356EntryFBefore ⟨s2Step356EntryFRow,s2Step356EntryGRow,s2Step356EntryFvRow,s2Step356EntryGvRow⟩ ⟨93,93,194,194⟩ [s2Step356EntryFFresh,s2Step356EntryGFresh,s2Step356EntryFvFresh,s2Step356EntryGvFresh]=
    some (s2Step356EntryGvAfter,⟨s2Step356EntryFOut,s2Step356EntryGOut,s2Step356EntryFvOut,s2Step356EntryGvOut⟩,(growRow 768 s2Step356EntryFFresh ++ (growRow 769 s2Step356EntryGFresh ++ (growRow 770 s2Step356EntryFvFresh ++ (growRow 771 s2Step356EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step356EntryBank_rows]
  rfl

private def s2Step356ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<92) ∨ (93≤q ∧ q<789) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step356ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<92) ∨ (93≤q ∧ q<789) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step356ExitFBefore : Arena := s2Step356ExitGAfter

private def s2Step356ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 839],768⟩

private def s2Step356ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791],770⟩

private def s2Step356ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 821],769⟩

private def s2Step356ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 796],771⟩

private theorem s2Step356ExitBank_incomingDistinct : ([s2Step356ExitGRow,s2Step356ExitFRow,s2Step356ExitFvRow,s2Step356ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step356ExitF_Incoming : rowsOwned s2Step356ExitFBefore [s2Step356ExitFRow,s2Step356ExitFvRow,s2Step356ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step356ExitGRow,s2Step356ExitFRow,s2Step356ExitFvRow,s2Step356ExitGvRow] 1 s2Step356ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step356ExitFBefore (fun q => (0≤q ∧ q<92) ∨ (93≤q ∧ q<789) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step356ExitBank_outgoingOwned : rowsOwned s2Step356ExitGvAfter [s2Step356ExitGOut,s2Step356ExitFOut,s2Step356ExitFvOut,s2Step356ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step356ExitGvAfter (fun q => (0≤q ∧ q<92) ∨ (93≤q ∧ q<789) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step356ExitF_Outgoing : rowsOwned s2Step356ExitGvAfter [s2Step356ExitFOut,s2Step356ExitFvOut,s2Step356ExitGvOut] :=
  hmrRows_owned_drop s2Step356ExitGvAfter [s2Step356ExitGOut,s2Step356ExitFOut,s2Step356ExitFvOut,s2Step356ExitGvOut] 1 s2Step356ExitBank_outgoingOwned

private theorem s2Step356ExitF_distinct : (s2Step356ExitFRow.sign::s2Step356ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step356ExitF_owned : (s2Step356ExitFRow.sign::s2Step356ExitFRow.payload).toFinset⊆s2Step356ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step356ExitFBefore (fun q => (0≤q ∧ q<92) ∨ (93≤q ∧ q<789) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step356ExitF_retired : s2Step356ExitFBefore.retireSet s2Step356ExitFExtra.toFinset=s2Step356ExitFAfter := by
  unfold Arena.retireSet s2Step356ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step356ExitFBefore,s2Step356ExitGAfter,s2Step356ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step356ExitF_checked : planRowResizeLog s2Step356ExitFBefore s2Step356ExitFRow 93 []=
    some (s2Step356ExitFAfter,s2Step356ExitFOut,shrinkRow 768 s2Step356ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step356ExitFBefore s2Step356ExitFRow 93 s2Step356ExitF_distinct s2Step356ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step356ExitFRow.payload.take 93) s2Step356ExitFRow.sign=s2Step356ExitFOut := by decide +kernel
  have hi : s2Step356ExitFRow.payload.drop 93=s2Step356ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step356ExitF_retired] at result
  exact result

private def s2Step356ExitFvAfter : Arena := s2Step356ExitFAfter

private def s2Step356ExitFvBefore : Arena := s2Step356ExitFAfter

private theorem s2Step356ExitFv_Incoming : rowsOwned s2Step356ExitFvBefore [s2Step356ExitFvRow,s2Step356ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step356ExitGRow,s2Step356ExitFRow,s2Step356ExitFvRow,s2Step356ExitGvRow] 2 s2Step356ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step356ExitFvBefore (fun q => (0≤q ∧ q<92) ∨ (93≤q ∧ q<789) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step356ExitFv_Outgoing : rowsOwned s2Step356ExitGvAfter [s2Step356ExitFvOut,s2Step356ExitGvOut] :=
  hmrRows_owned_drop s2Step356ExitGvAfter [s2Step356ExitGOut,s2Step356ExitFOut,s2Step356ExitFvOut,s2Step356ExitGvOut] 2 s2Step356ExitBank_outgoingOwned

private theorem s2Step356ExitFv_distinct : (s2Step356ExitFvRow.sign::s2Step356ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step356ExitFv_owned : (s2Step356ExitFvRow.sign::s2Step356ExitFvRow.payload).toFinset⊆s2Step356ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step356ExitFvBefore (fun q => (0≤q ∧ q<92) ∨ (93≤q ∧ q<789) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step356ExitFv_reserved : s2Step356ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step356ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step356ExitFv_checked : planRowResizeLog s2Step356ExitFvBefore s2Step356ExitFvRow 195 []=
    some (s2Step356ExitFvAfter,s2Step356ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step356ExitFvBefore s2Step356ExitFvAfter s2Step356ExitFvRow 195 []
    s2Step356ExitFv_distinct s2Step356ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step356ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step356ExitFvRow.payload++[]) s2Step356ExitFvRow.sign=s2Step356ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step356ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private theorem s2Step356ExitG_Incoming : rowsOwned s2Step356ExitGBefore [s2Step356ExitGRow,s2Step356ExitFRow,s2Step356ExitFvRow,s2Step356ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step356ExitGRow,s2Step356ExitFRow,s2Step356ExitFvRow,s2Step356ExitGvRow] 0 s2Step356ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step356ExitGBefore (fun q => (0≤q ∧ q<789) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step356ExitG_Outgoing : rowsOwned s2Step356ExitGvAfter [s2Step356ExitGOut,s2Step356ExitFOut,s2Step356ExitFvOut,s2Step356ExitGvOut] :=
  hmrRows_owned_drop s2Step356ExitGvAfter [s2Step356ExitGOut,s2Step356ExitFOut,s2Step356ExitFvOut,s2Step356ExitGvOut] 0 s2Step356ExitBank_outgoingOwned

private theorem s2Step356ExitG_distinct : (s2Step356ExitGRow.sign::s2Step356ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step356ExitG_owned : (s2Step356ExitGRow.sign::s2Step356ExitGRow.payload).toFinset⊆s2Step356ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step356ExitGBefore (fun q => (0≤q ∧ q<789) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step356ExitG_retired : s2Step356ExitGBefore.retireSet s2Step356ExitGExtra.toFinset=s2Step356ExitGAfter := by
  unfold Arena.retireSet s2Step356ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step356ExitGBefore,s2Step356ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step356ExitG_checked : planRowResizeLog s2Step356ExitGBefore s2Step356ExitGRow 92 []=
    some (s2Step356ExitGAfter,s2Step356ExitGOut,shrinkRow 769 s2Step356ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step356ExitGBefore s2Step356ExitGRow 92 s2Step356ExitG_distinct s2Step356ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step356ExitGRow.payload.take 92) s2Step356ExitGRow.sign=s2Step356ExitGOut := by decide +kernel
  have hi : s2Step356ExitGRow.payload.drop 92=s2Step356ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step356ExitG_retired] at result
  exact result

private def s2Step356ExitGvBefore : Arena := s2Step356ExitFAfter

private theorem s2Step356ExitGv_Incoming : rowsOwned s2Step356ExitGvBefore [s2Step356ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step356ExitGRow,s2Step356ExitFRow,s2Step356ExitFvRow,s2Step356ExitGvRow] 3 s2Step356ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step356ExitGvBefore (fun q => (0≤q ∧ q<92) ∨ (93≤q ∧ q<789) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step356ExitGv_Outgoing : rowsOwned s2Step356ExitGvAfter [s2Step356ExitGvOut] :=
  hmrRows_owned_drop s2Step356ExitGvAfter [s2Step356ExitGOut,s2Step356ExitFOut,s2Step356ExitFvOut,s2Step356ExitGvOut] 3 s2Step356ExitBank_outgoingOwned

private theorem s2Step356ExitGv_distinct : (s2Step356ExitGvRow.sign::s2Step356ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step356ExitGv_owned : (s2Step356ExitGvRow.sign::s2Step356ExitGvRow.payload).toFinset⊆s2Step356ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step356ExitGvBefore (fun q => (0≤q ∧ q<92) ∨ (93≤q ∧ q<789) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step356ExitGv_retired : s2Step356ExitGvBefore.retireSet s2Step356ExitGvExtra.toFinset=s2Step356ExitGvAfter := by
  unfold Arena.retireSet s2Step356ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step356ExitGvBefore,s2Step356ExitFAfter,s2Step356ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step356ExitGv_checked : planRowResizeLog s2Step356ExitGvBefore s2Step356ExitGvRow 194 []=
    some (s2Step356ExitGvAfter,s2Step356ExitGvOut,shrinkRow 771 s2Step356ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step356ExitGvBefore s2Step356ExitGvRow 194 s2Step356ExitGv_distinct s2Step356ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step356ExitGvRow.payload.take 194) s2Step356ExitGvRow.sign=s2Step356ExitGvOut := by decide +kernel
  have hi : s2Step356ExitGvRow.payload.drop 194=s2Step356ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step356ExitGv_retired] at result
  exact result

private theorem s2Step356ExitBank_rows : planWindowRowsLog s2Step356ExitGBefore [(s2Step356ExitGRow,92),(s2Step356ExitFRow,93),(s2Step356ExitFvRow,195),(s2Step356ExitGvRow,194)] [[],[],[],[]]=
    some (s2Step356ExitGvAfter,[s2Step356ExitGOut,s2Step356ExitFOut,s2Step356ExitFvOut,s2Step356ExitGvOut],(shrinkRow 769 s2Step356ExitGExtra ++ (shrinkRow 768 s2Step356ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step356ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step356ExitGvAfter [] []=some (s2Step356ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step356ExitGvBefore s2Step356ExitGvAfter s2Step356ExitGvAfter
    s2Step356ExitGvRow s2Step356ExitGvOut 194 [] [] [] []
    (shrinkRow 771 s2Step356ExitGvExtra) ([]) s2Step356ExitGv_Incoming s2Step356ExitGv_checked h4 s2Step356ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step356ExitFvBefore s2Step356ExitFvAfter s2Step356ExitGvAfter
    s2Step356ExitFvRow s2Step356ExitFvOut 195 [] [(s2Step356ExitGvRow,194)] [[]] [s2Step356ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step356ExitGvExtra ++ [])) s2Step356ExitFv_Incoming s2Step356ExitFv_checked h3 s2Step356ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step356ExitFBefore s2Step356ExitFAfter s2Step356ExitGvAfter
    s2Step356ExitFRow s2Step356ExitFOut 93 [] [(s2Step356ExitFvRow,195),(s2Step356ExitGvRow,194)] [[],[]] [s2Step356ExitFvOut,s2Step356ExitGvOut]
    (shrinkRow 768 s2Step356ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step356ExitGvExtra ++ []))) s2Step356ExitF_Incoming s2Step356ExitF_checked h2 s2Step356ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step356ExitGBefore s2Step356ExitGAfter s2Step356ExitGvAfter
    s2Step356ExitGRow s2Step356ExitGOut 92 [] [(s2Step356ExitFRow,93),(s2Step356ExitFvRow,195),(s2Step356ExitGvRow,194)] [[],[],[]] [s2Step356ExitFOut,s2Step356ExitFvOut,s2Step356ExitGvOut]
    (shrinkRow 769 s2Step356ExitGExtra) ((shrinkRow 768 s2Step356ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step356ExitGvExtra ++ [])))) s2Step356ExitG_Incoming s2Step356ExitG_checked h1 s2Step356ExitG_Outgoing
  exact h0

private theorem s2Step356ExitBank_checked : compileHmrBankResizeLog .exit s2Step356ExitGBefore ⟨s2Step356ExitFRow,s2Step356ExitGRow,s2Step356ExitFvRow,s2Step356ExitGvRow⟩ ⟨93,92,195,194⟩ [[],[],[],[]]=
    some (s2Step356ExitGvAfter,⟨s2Step356ExitFOut,s2Step356ExitGOut,s2Step356ExitFvOut,s2Step356ExitGvOut⟩,(shrinkRow 769 s2Step356ExitGExtra ++ (shrinkRow 768 s2Step356ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step356ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step356ExitBank_rows]
  rfl

private theorem s2Step356Add0_apart : Disjoint s2Step356Add0Arena.live s2Step356Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step356Add0Arena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step356Add0_card : s2Step356Add0Arena.live.card=908 := by
  decide +kernel

private theorem s2Step356Add0_borrowed : s2Step356Add0Arena.checkBorrow (hmrHybridCount s2Step356Add0Arena s2Step356Add0B.length) s2Step356Add0Work=some s2Step356Add0During := by
  have len : s2Step356Add0Work.length=hmrHybridCount s2Step356Add0Arena s2Step356Add0B.length := by
    rw [hmrHybridCount,s2Step356Add0_card]
    decide +kernel
  have nd : s2Step356Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step356Add0Arena s2Step356Add0During s2Step356Add0Work.toFinset s2Step356Add0_bounded s2Step356Add0_apart rfl

private theorem s2Step356Add0_distinct : (790::812::903::(s2Step356Add0A++s2Step356Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step356Add0_owned : (790::812::903::(s2Step356Add0A++s2Step356Add0B)).toFinset⊆s2Step356Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step356Add0Arena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step356Add0_checked : compileHmrHybridCinLog s2Step356Add0Arena 812 790 903 s2Step356Add0A s2Step356Add0B s2Step356Add0Work=some s2Step356Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step356Add0Arena s2Step356Add0During 812 790 903 s2Step356Add0A s2Step356Add0B s2Step356Add0Work
    (by decide +kernel) (by decide +kernel) s2Step356Add0_distinct
    (fun q hq => s2Step356Add0_owned (List.mem_toFinset.mpr hq)) s2Step356Add0_borrowed

private theorem s2Step356Add1_apart : Disjoint s2Step356Add1Arena.live s2Step356Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step356Add1Arena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step356Add1_card : s2Step356Add1Arena.live.card=908 := by
  decide +kernel

private theorem s2Step356Add1_borrowed : s2Step356Add1Arena.checkBorrow (hmrHybridCount s2Step356Add1Arena s2Step356Add1B.length) s2Step356Add1Work=some s2Step356Add1During := by
  have len : s2Step356Add1Work.length=hmrHybridCount s2Step356Add1Arena s2Step356Add1B.length := by
    rw [hmrHybridCount,s2Step356Add1_card]
    decide +kernel
  have nd : s2Step356Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step356Add1Arena s2Step356Add1During s2Step356Add1Work.toFinset s2Step356Add1_bounded s2Step356Add1_apart rfl

private theorem s2Step356Add1_distinct : (790::812::903::(s2Step356Add1A++s2Step356Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step356Add1_owned : (790::812::903::(s2Step356Add1A++s2Step356Add1B)).toFinset⊆s2Step356Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step356Add1Arena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step356Add1_checked : compileHmrHybridCinLog s2Step356Add1Arena 812 790 903 s2Step356Add1A s2Step356Add1B s2Step356Add1Work=some s2Step356Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step356Add1Arena s2Step356Add1During 812 790 903 s2Step356Add1A s2Step356Add1B s2Step356Add1Work
    (by decide +kernel) (by decide +kernel) s2Step356Add1_distinct
    (fun q hq => s2Step356Add1_owned (List.mem_toFinset.mpr hq)) s2Step356Add1_borrowed

private theorem s2Step356F4_apart : Disjoint (s2Step356Add0A++s2Step356Add0B).toFinset (s2Step356Add1A++s2Step356Add1B).toFinset := by
  have nd : ((s2Step356Add0A++s2Step356Add0B)++(s2Step356Add1A++s2Step356Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step356F4_carry : s2Step356F4FlagArena.checkBorrow 1 [903]=some s2Step356Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step356F4FlagArena,s2Step356HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step356F4FlagArena,s2Step356HeadFvAfter,s2Step356Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step356F4_distinct : (808::812::790::903::((s2Step356Add0A++s2Step356Add1A)++(s2Step356Add0B++s2Step356Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step356F4_flag : s2Step356HeadFvAfter.checkBorrow 1 [790]=some s2Step356F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step356HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step356F4_owned : (808::812::((s2Step356Add0A++s2Step356Add1A)++(s2Step356Add0B++s2Step356Add1B))).toFinset⊆s2Step356HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step356HeadFvAfter (fun q => (0≤q ∧ q<789) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step356F4_checked : compileHmrHybridF4Log s2Step356HeadFvAfter 808 812 s2Step356Add0A s2Step356Add0B s2Step356Add1A s2Step356Add1B [790] [903] s2Step356Add0Work s2Step356Add1Work=some s2Step356F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step356HeadFvAfter s2Step356F4FlagArena s2Step356Add0Arena s2Step356Add0During s2Step356Add1During 808 812
    s2Step356Add0A s2Step356Add0B s2Step356Add1A s2Step356Add1B [790] [903] s2Step356Add0Work s2Step356Add1Work
    (fun q hq => s2Step356F4_owned (List.mem_toFinset.mpr hq)) s2Step356F4_flag s2Step356F4_carry
    s2Step356F4_distinct s2Step356F4_apart s2Step356Add0_checked s2Step356Add1_checked

private theorem s2Step356Front_branch : s2Step356FrontSigmaArena.checkBorrow 1 [812]=some s2Step356HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step356FrontSigmaArena,s2Step356EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step356FrontSigmaArena,s2Step356EntryGvAfter,s2Step356HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step356Front_entry : HmrFrontEntryValid s2Step356EntryFBefore s2Step356FrontBank 93 194 ⟨93,92,195,194⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step356FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step356EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step356EntryFBefore (fun q => (0≤q ∧ q<789) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step356FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step356Front_sigma : s2Step356EntryGvAfter.checkBorrow 1 [808]=some s2Step356FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step356EntryGvAfter,arenaWires]
  · rfl

private def s2Step356HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step356HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step356HeadFBefore : Arena := s2Step356HeadGAfter

private def s2Step356HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604],768⟩

private def s2Step356HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894],770⟩

private def s2Step356HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92],769⟩

private def s2Step356HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849],771⟩

private theorem s2Step356HeadBank_incomingDistinct : ([s2Step356HeadGRow,s2Step356HeadFRow,s2Step356HeadGvRow,s2Step356HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step356HeadF_Incoming : rowsOwned s2Step356HeadFBefore [s2Step356HeadFRow,s2Step356HeadGvRow,s2Step356HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step356HeadGRow,s2Step356HeadFRow,s2Step356HeadGvRow,s2Step356HeadFvRow] 1 s2Step356HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step356HeadFBefore (fun q => (0≤q ∧ q<789) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step356HeadBank_outgoingOwned : rowsOwned s2Step356HeadFvAfter [s2Step356HeadGOut,s2Step356HeadFOut,s2Step356HeadGvOut,s2Step356HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step356HeadFvAfter (fun q => (0≤q ∧ q<789) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step356HeadF_Outgoing : rowsOwned s2Step356HeadFvAfter [s2Step356HeadFOut,s2Step356HeadGvOut,s2Step356HeadFvOut] :=
  hmrRows_owned_drop s2Step356HeadFvAfter [s2Step356HeadGOut,s2Step356HeadFOut,s2Step356HeadGvOut,s2Step356HeadFvOut] 1 s2Step356HeadBank_outgoingOwned

private theorem s2Step356HeadF_distinct : (s2Step356HeadFRow.sign::s2Step356HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step356HeadF_owned : (s2Step356HeadFRow.sign::s2Step356HeadFRow.payload).toFinset⊆s2Step356HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step356HeadFBefore (fun q => (0≤q ∧ q<789) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step356HeadF_reserved : s2Step356HeadFBefore.reserve s2Step356HeadFFresh.toFinset=some s2Step356HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step356HeadFFresh,arenaWires]
  · norm_num [s2Step356HeadFBefore,s2Step356HeadGAfter,s2Step356HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step356HeadFAfter,s2Step356HeadFBefore,s2Step356HeadGAfter,s2Step356HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step356HeadF_checked : planRowResizeLog s2Step356HeadFBefore s2Step356HeadFRow 94 s2Step356HeadFFresh=
    some (s2Step356HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 839],768⟩,growRow 768 s2Step356HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step356HeadFBefore s2Step356HeadFAfter s2Step356HeadFRow 94 s2Step356HeadFFresh
    s2Step356HeadF_distinct s2Step356HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step356HeadF_reserved
  have rowEq : WindowRow.mk (s2Step356HeadFRow.payload++s2Step356HeadFFresh) s2Step356HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 839],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step356HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step356HeadFvBefore : Arena := s2Step356HeadGvAfter

private theorem s2Step356HeadFv_Incoming : rowsOwned s2Step356HeadFvBefore [s2Step356HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step356HeadGRow,s2Step356HeadFRow,s2Step356HeadGvRow,s2Step356HeadFvRow] 3 s2Step356HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step356HeadFvBefore (fun q => (0≤q ∧ q<789) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step356HeadFv_Outgoing : rowsOwned s2Step356HeadFvAfter [s2Step356HeadFvOut] :=
  hmrRows_owned_drop s2Step356HeadFvAfter [s2Step356HeadGOut,s2Step356HeadFOut,s2Step356HeadGvOut,s2Step356HeadFvOut] 3 s2Step356HeadBank_outgoingOwned

private theorem s2Step356HeadFv_distinct : (s2Step356HeadFvRow.sign::s2Step356HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step356HeadFv_owned : (s2Step356HeadFvRow.sign::s2Step356HeadFvRow.payload).toFinset⊆s2Step356HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step356HeadFvBefore (fun q => (0≤q ∧ q<789) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step356HeadFv_reserved : s2Step356HeadFvBefore.reserve s2Step356HeadFvFresh.toFinset=some s2Step356HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step356HeadFvFresh,arenaWires]
  · norm_num [s2Step356HeadFvBefore,s2Step356HeadGvAfter,s2Step356HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step356HeadFvAfter,s2Step356HeadFvBefore,s2Step356HeadGvAfter,s2Step356HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step356HeadFv_checked : planRowResizeLog s2Step356HeadFvBefore s2Step356HeadFvRow 195 s2Step356HeadFvFresh=
    some (s2Step356HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791],770⟩,growRow 770 s2Step356HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step356HeadFvBefore s2Step356HeadFvAfter s2Step356HeadFvRow 195 s2Step356HeadFvFresh
    s2Step356HeadFv_distinct s2Step356HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step356HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step356HeadFvRow.payload++s2Step356HeadFvFresh) s2Step356HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step356HeadG_Incoming : rowsOwned s2Step356HeadGBefore [s2Step356HeadGRow,s2Step356HeadFRow,s2Step356HeadGvRow,s2Step356HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step356HeadGRow,s2Step356HeadFRow,s2Step356HeadGvRow,s2Step356HeadFvRow] 0 s2Step356HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step356HeadGBefore (fun q => (0≤q ∧ q<789) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step356HeadG_Outgoing : rowsOwned s2Step356HeadFvAfter [s2Step356HeadGOut,s2Step356HeadFOut,s2Step356HeadGvOut,s2Step356HeadFvOut] :=
  hmrRows_owned_drop s2Step356HeadFvAfter [s2Step356HeadGOut,s2Step356HeadFOut,s2Step356HeadGvOut,s2Step356HeadFvOut] 0 s2Step356HeadBank_outgoingOwned

private theorem s2Step356HeadG_distinct : (s2Step356HeadGRow.sign::s2Step356HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step356HeadG_owned : (s2Step356HeadGRow.sign::s2Step356HeadGRow.payload).toFinset⊆s2Step356HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step356HeadGBefore (fun q => (0≤q ∧ q<789) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step356HeadG_reserved : s2Step356HeadGBefore.reserve s2Step356HeadGFresh.toFinset=some s2Step356HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step356HeadGFresh,arenaWires]
  · norm_num [s2Step356HeadGBefore,s2Step356HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step356HeadGAfter,s2Step356HeadGBefore,s2Step356HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step356HeadG_checked : planRowResizeLog s2Step356HeadGBefore s2Step356HeadGRow 94 s2Step356HeadGFresh=
    some (s2Step356HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 821],769⟩,growRow 769 s2Step356HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step356HeadGBefore s2Step356HeadGAfter s2Step356HeadGRow 94 s2Step356HeadGFresh
    s2Step356HeadG_distinct s2Step356HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step356HeadG_reserved
  have rowEq : WindowRow.mk (s2Step356HeadGRow.payload++s2Step356HeadGFresh) s2Step356HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 821],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step356HeadGvBefore : Arena := s2Step356HeadFAfter

private theorem s2Step356HeadGv_Incoming : rowsOwned s2Step356HeadGvBefore [s2Step356HeadGvRow,s2Step356HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step356HeadGRow,s2Step356HeadFRow,s2Step356HeadGvRow,s2Step356HeadFvRow] 2 s2Step356HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step356HeadGvBefore (fun q => (0≤q ∧ q<789) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step356HeadGv_Outgoing : rowsOwned s2Step356HeadFvAfter [s2Step356HeadGvOut,s2Step356HeadFvOut] :=
  hmrRows_owned_drop s2Step356HeadFvAfter [s2Step356HeadGOut,s2Step356HeadFOut,s2Step356HeadGvOut,s2Step356HeadFvOut] 2 s2Step356HeadBank_outgoingOwned

private theorem s2Step356HeadGv_distinct : (s2Step356HeadGvRow.sign::s2Step356HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step356HeadGv_owned : (s2Step356HeadGvRow.sign::s2Step356HeadGvRow.payload).toFinset⊆s2Step356HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step356HeadGvBefore (fun q => (0≤q ∧ q<789) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step356HeadGv_reserved : s2Step356HeadGvBefore.reserve s2Step356HeadGvFresh.toFinset=some s2Step356HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step356HeadGvFresh,arenaWires]
  · norm_num [s2Step356HeadGvBefore,s2Step356HeadFAfter,s2Step356HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step356HeadGvAfter,s2Step356HeadGvBefore,s2Step356HeadFAfter,s2Step356HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step356HeadGv_checked : planRowResizeLog s2Step356HeadGvBefore s2Step356HeadGvRow 195 s2Step356HeadGvFresh=
    some (s2Step356HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 796],771⟩,growRow 771 s2Step356HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step356HeadGvBefore s2Step356HeadGvAfter s2Step356HeadGvRow 195 s2Step356HeadGvFresh
    s2Step356HeadGv_distinct s2Step356HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step356HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step356HeadGvRow.payload++s2Step356HeadGvFresh) s2Step356HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 796],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step356HeadBank_rows : planWindowRowsLog s2Step356HeadGBefore [(s2Step356HeadGRow,94),(s2Step356HeadFRow,94),(s2Step356HeadGvRow,195),(s2Step356HeadFvRow,195)] [s2Step356HeadGFresh,s2Step356HeadFFresh,s2Step356HeadGvFresh,s2Step356HeadFvFresh]=
    some (s2Step356HeadFvAfter,[s2Step356HeadGOut,s2Step356HeadFOut,s2Step356HeadGvOut,s2Step356HeadFvOut],(growRow 769 s2Step356HeadGFresh ++ (growRow 768 s2Step356HeadFFresh ++ (growRow 771 s2Step356HeadGvFresh ++ (growRow 770 s2Step356HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step356HeadFvAfter [] []=some (s2Step356HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step356HeadFvBefore s2Step356HeadFvAfter s2Step356HeadFvAfter
    s2Step356HeadFvRow s2Step356HeadFvOut 195 s2Step356HeadFvFresh [] [] []
    (growRow 770 s2Step356HeadFvFresh) ([]) s2Step356HeadFv_Incoming s2Step356HeadFv_checked h4 s2Step356HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step356HeadGvBefore s2Step356HeadGvAfter s2Step356HeadFvAfter
    s2Step356HeadGvRow s2Step356HeadGvOut 195 s2Step356HeadGvFresh [(s2Step356HeadFvRow,195)] [s2Step356HeadFvFresh] [s2Step356HeadFvOut]
    (growRow 771 s2Step356HeadGvFresh) ((growRow 770 s2Step356HeadFvFresh ++ [])) s2Step356HeadGv_Incoming s2Step356HeadGv_checked h3 s2Step356HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step356HeadFBefore s2Step356HeadFAfter s2Step356HeadFvAfter
    s2Step356HeadFRow s2Step356HeadFOut 94 s2Step356HeadFFresh [(s2Step356HeadGvRow,195),(s2Step356HeadFvRow,195)] [s2Step356HeadGvFresh,s2Step356HeadFvFresh] [s2Step356HeadGvOut,s2Step356HeadFvOut]
    (growRow 768 s2Step356HeadFFresh) ((growRow 771 s2Step356HeadGvFresh ++ (growRow 770 s2Step356HeadFvFresh ++ []))) s2Step356HeadF_Incoming s2Step356HeadF_checked h2 s2Step356HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step356HeadGBefore s2Step356HeadGAfter s2Step356HeadFvAfter
    s2Step356HeadGRow s2Step356HeadGOut 94 s2Step356HeadGFresh [(s2Step356HeadFRow,94),(s2Step356HeadGvRow,195),(s2Step356HeadFvRow,195)] [s2Step356HeadFFresh,s2Step356HeadGvFresh,s2Step356HeadFvFresh] [s2Step356HeadFOut,s2Step356HeadGvOut,s2Step356HeadFvOut]
    (growRow 769 s2Step356HeadGFresh) ((growRow 768 s2Step356HeadFFresh ++ (growRow 771 s2Step356HeadGvFresh ++ (growRow 770 s2Step356HeadFvFresh ++ [])))) s2Step356HeadG_Incoming s2Step356HeadG_checked h1 s2Step356HeadG_Outgoing
  exact h0

private theorem s2Step356HeadBank_checked : compileHmrBankResizeLog .headroom s2Step356HeadGBefore ⟨s2Step356HeadFRow,s2Step356HeadGRow,s2Step356HeadFvRow,s2Step356HeadGvRow⟩ ⟨94,94,195,195⟩ [s2Step356HeadGFresh,s2Step356HeadFFresh,s2Step356HeadGvFresh,s2Step356HeadFvFresh]=
    some (s2Step356HeadFvAfter,⟨s2Step356HeadFOut,s2Step356HeadGOut,s2Step356HeadFvOut,s2Step356HeadGvOut⟩,(growRow 769 s2Step356HeadGFresh ++ (growRow 768 s2Step356HeadFFresh ++ (growRow 771 s2Step356HeadGvFresh ++ (growRow 770 s2Step356HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step356HeadBank_rows]
  rfl

private theorem s2Step356Front_checked : compileHmrSourceFrontLog s2Step356EntryFBefore s2Step356FrontBank 93 194 ⟨93,92,195,194⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step356FrontLog=some s2Step356FrontPlan := by
  have pairEq : s2Step356FrontPair=⟨s2Step356HeadFRow,s2Step356HeadGRow,s2Step356HeadFvRow,s2Step356HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step356FrontHead=⟨s2Step356ExitFRow,s2Step356ExitGRow,s2Step356ExitFvRow,s2Step356ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step356Add0A=s2Step356FrontHead.f.wires := by decide +kernel
  have gEq : s2Step356Add0B=s2Step356FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step356Add1A=s2Step356FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step356Add1B=s2Step356FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step356EntryFBefore s2Step356FrontBank 93 194 ⟨93,92,195,194⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step356FrontLog s2Step356FrontPlan
  · exact s2Step356Front_entry
  · exact s2Step356EntryBank_checked
  · exact s2Step356Front_sigma
  · rfl
  · exact s2Step356Front_branch
  · rfl
  · simpa only [s2Step356FrontPlan,pairEq] using s2Step356HeadBank_checked
  · simpa only [s2Step356FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step356F4_checked
  · exact s2Step356Counter_checked
  · rfl
  · simpa only [s2Step356FrontPlan,headEq] using s2Step356ExitBank_checked

private theorem s2Step356Complete_explicit_checked : compileHmrEarlyStepLog s2Step356EntryFBefore s2Step356FrontBank 93 194 ⟨93,92,195,194⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step356CompleteLog=some s2Step356CompletePlan := by
  let Q := s2Step356EarlyControlPlan
  have hq := s2Step356EarlyControl_plan_checked
  have fv1 : s2Step356CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step356CompleteOut.fv.payload[2]?.getD s2Step356CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step356CompleteOut.fv.payload[3]?.getD s2Step356CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step356CompleteOut.fv.payload[4]?.getD s2Step356CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step356EntryFBefore s2Step356EarlyControlArena s2Step356FrontBank 93 194 ⟨93,92,195,194⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step356CompleteLog s2Step356FrontPlan Q
    s2Step356Front_checked s2Step356Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step356Complete_owned s2Step356Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step356EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 808 s2Step356CompleteOut.fv.second (s2Step356CompleteOut.fv.payload[2]?.getD s2Step356CompleteOut.fv.sign) (s2Step356CompleteOut.fv.payload[3]?.getD s2Step356CompleteOut.fv.sign) (s2Step356CompleteOut.fv.payload[4]?.getD s2Step356CompleteOut.fv.sign) 812 60 s2Step356EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep356Arena : Arena := s2Step356EntryFBefore
def s2PrivateStep356Bank : WindowBank := s2Step356FrontBank
def s2PrivateStep356Spec : HmrSourceWalkStepLog := ⟨93,194,⟨93,92,195,194⟩,60,.early s2Step356CompleteLog⟩
def s2PrivateStep356Plan : HmrSourceStepPlan := .early s2Step356CompletePlan
theorem s2PrivateStep356_source : s2PrivateStep356Spec=s2ObservedLogs352[4] := rfl
theorem s2PrivateStep356_checked : compileHmrSourceStepLog s2PrivateStep356Arena s2PrivateStep356Bank
    s2PrivateStep356Spec.fgWidth s2PrivateStep356Spec.vWidth s2PrivateStep356Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]
    6 498 356 s2PrivateStep356Spec.need none s2PrivateStep356Spec.log=some s2PrivateStep356Plan := by
  change compileHmrSourceStepLog s2Step356EntryFBefore s2Step356FrontBank 93 194 ⟨93,92,195,194⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 6 498 356 60 none (.early s2Step356CompleteLog)=some (.early s2Step356CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 356<498)]
  rw [s2Step356Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
