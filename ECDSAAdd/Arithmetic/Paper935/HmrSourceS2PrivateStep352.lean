import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep350
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

private def s2Step352CompleteMoves : List (Wire × Wire) := [(790,94),(791,607)]

private def s2Step352EarlyControlLog : HmrEarlyControlLog := ⟨[791, 790, 839, 894, 801],[903],[800],[789, 827, 844, 907, 913, 914],[]⟩

private def s2Step352FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [801], [], []],[[903], [894], [839], [788]],[[], [], [], []]⟩,[808],[796],[800],[789],[827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[800, 789, 827, 844]⟩

private def s2Step352CompleteLog : HmrEarlyStepLog := ⟨s2Step352FrontLog,s2Step352CompleteMoves,s2Step352EarlyControlLog⟩

private def s2Step352ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606],768⟩

private def s2Step352ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788],770⟩

private def s2Step352ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93],769⟩

private def s2Step352ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891],771⟩

private def s2Step352FrontOut : WindowBank := ⟨s2Step352ExitFOut,s2Step352ExitGOut,s2Step352ExitFvOut,s2Step352ExitGvOut⟩

private def s2Step352CompleteOut : WindowBank := s2Step352FrontOut.repacked s2Step352CompleteMoves

private def s2Step352EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (792≤q ∧ q<800) ∨ (802≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step352EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step352EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step352EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step352EarlyControlPositiveArena,[903],s2Step352EarlyControlEqualityArena,[800],⟨⟨808,false⟩,[⟨⟨903,false⟩,800⟩]⟩⟩

private def s2Step352EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<915)),Finset.filter_subset _ _⟩

private def s2Step352EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<915)),Finset.filter_subset _ _⟩

private def s2Step352EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (792≤q ∧ q<800) ∨ (802≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step352EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step352EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (792≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step352EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step352EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,791⟩,⟨⟨774,false⟩,790⟩,⟨⟨775,false⟩,839⟩,⟨⟨776,false⟩,894⟩,⟨⟨777,false⟩,801⟩]⟩

private def s2Step352EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step352EarlyControlZeroArena,s2Step352EarlyControlZeroPlan,s2Step352EarlyControlClassPlan,s2Step352EarlyControlFlagArena,s2Step352EarlyControlFittedArena,s2Step352EarlyControlHistoryArena,s2Step352EarlyControlSigmaArena,s2Step352EarlyControlOutputArena,s2Step352EarlyControlLog⟩

private def s2Step352CounterWork : List Wire := [800, 789, 827, 844]

private theorem s2Step352Counter_bounded : s2Step352CounterWork.toFinset⊆arenaWires := by norm_num [s2Step352CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step352HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step352CounterDuring : Arena := ⟨s2Step352HeadFvAfter.live∪s2Step352CounterWork.toFinset,Finset.union_subset s2Step352HeadFvAfter.bounded s2Step352Counter_bounded⟩

private def s2Step352EntryFFresh : List Wire := []

private def s2Step352EntryFvFresh : List Wire := []

private def s2Step352EntryGFresh : List Wire := [801]

private def s2Step352EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<788) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step352EntryGvAfter : Arena := s2Step352EntryGAfter

private def s2Step352EntryGvFresh : List Wire := []

private def s2Step352ExitFExtra : List Wire := [607, 894]

private def s2Step352ExitGExtra : List Wire := [94, 801, 903]

private def s2Step352ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<94) ∨ (95≤q ∧ q<607) ∨ (608≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (802≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step352ExitGvExtra : List Wire := [839]

private def s2Step352Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step352Add0Work : List Wire := [827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step352Add0_bounded : s2Step352Add0Work.toFinset⊆arenaWires := by
  have h : s2Step352Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step352Add0During : Arena := ⟨s2Step352Add0Arena.live∪s2Step352Add0Work.toFinset,Finset.union_subset s2Step352Add0Arena.bounded s2Step352Add0_bounded⟩

private def s2Step352Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step352Add1Work : List Wire := [827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step352Add1_bounded : s2Step352Add1Work.toFinset⊆arenaWires := by
  have h : s2Step352Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step352Add1During : Arena := ⟨s2Step352Add1Arena.live∪s2Step352Add1Work.toFinset,Finset.union_subset s2Step352Add1Arena.bounded s2Step352Add1_bounded⟩

private def s2Step352F4FlagArena : Arena := ⟨s2Step352HeadFvAfter.live∪{800},Finset.union_subset s2Step352HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step352F4Plan : HmrHybridF4Plan := ⟨s2Step352F4FlagArena,[800],s2Step352Add0Arena,[789],s2Step352Add0During,s2Step352Add0Work,s2Step352Add1During,s2Step352Add1Work⟩

private def s2Step352HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 894],768⟩

private def s2Step352HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788],770⟩

private def s2Step352HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 801, 903],769⟩

private def s2Step352HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 839],771⟩

private def s2Step352FrontHead : WindowBank := ⟨s2Step352HeadFOut,s2Step352HeadGOut,s2Step352HeadFvOut,s2Step352HeadGvOut⟩

private def s2Step352EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607],768⟩

private def s2Step352EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815],770⟩

private def s2Step352EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 801],769⟩

private def s2Step352EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891],771⟩

private def s2Step352FrontPair : WindowBank := ⟨s2Step352EntryFOut,s2Step352EntryGOut,s2Step352EntryFvOut,s2Step352EntryGvOut⟩

private def s2Step352FrontSigmaArena : Arena := ⟨s2Step352EntryGvAfter.live∪{808},Finset.union_subset s2Step352EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step352HeadFFresh : List Wire := [894]

private def s2Step352HeadFvFresh : List Wire := [788]

private def s2Step352HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step352HeadGFresh : List Wire := [903]

private def s2Step352HeadGvFresh : List Wire := [839]

private def s2Step352FrontPlan : HmrSourceFront := ⟨s2Step352EntryGvAfter,s2Step352FrontPair,(growRow 768 s2Step352EntryFFresh ++ (growRow 769 s2Step352EntryGFresh ++ (growRow 770 s2Step352EntryFvFresh ++ (growRow 771 s2Step352EntryGvFresh ++ [])))),s2Step352FrontSigmaArena,[808],s2Step352HeadGBefore,[796],
  s2Step352HeadFvAfter,s2Step352FrontHead,(growRow 769 s2Step352HeadGFresh ++ (growRow 768 s2Step352HeadFFresh ++ (growRow 771 s2Step352HeadGvFresh ++ (growRow 770 s2Step352HeadFvFresh ++ [])))),s2Step352F4Plan,s2Step352CounterDuring,s2Step352CounterWork,s2Step352ExitGvAfter,s2Step352FrontOut,(shrinkRow 769 s2Step352ExitGExtra ++ (shrinkRow 768 s2Step352ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step352ExitGvExtra ++ []))))⟩

private def s2Step352CompletePlan : HmrEarlyStepPlan := ⟨s2Step352FrontPlan,s2Step352EarlyControlArena,s2Step352EarlyControlPlan,s2Step352CompleteMoves⟩

private theorem s2Step352Complete_apart : List.Disjoint (s2Step352CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [808, 796, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] := by
  have nd : ((s2Step352CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[808, 796, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step352Complete_owned : (s2Step352CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step352EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step352EarlyControlArena (fun q => (0≤q ∧ q<789) ∨ (792≤q ∧ q<800) ∨ (802≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private def s2Step352CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,607),(608,789),(791,800),(802,827),(828,839),(840,844),(845,894),(895,903),(904,907),(908,913)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s2Step352CompleteRelocationMove0Borrowed : Arena := ⟨s2Step352ExitGvAfter.live∪{94},Finset.union_subset s2Step352ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step352CompleteRelocationMove1Borrowed : Arena := ⟨s2Step352CompleteRelocationMove0After.live∪{607},Finset.union_subset s2Step352CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s2Step352CompleteRelocation_move0_owned : 790∈s2Step352ExitGvAfter.live := by norm_num [s2Step352ExitGvAfter,arenaWires]

private theorem s2Step352CompleteRelocation_move0_reserve : s2Step352ExitGvAfter.reserve {94}=some s2Step352CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step352ExitGvAfter,arenaWires]
  · rfl

private theorem s2Step352CompleteRelocation_move0_retire : s2Step352CompleteRelocationMove0Borrowed.retireSet {790}=s2Step352CompleteRelocationMove0After := by
  unfold Arena.retireSet s2Step352CompleteRelocationMove0After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step352CompleteRelocationMove0Borrowed,s2Step352ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step352CompleteRelocation_move1_owned : 791∈s2Step352CompleteRelocationMove0After.live := by norm_num [s2Step352CompleteRelocationMove0After,arenaWires]

private theorem s2Step352CompleteRelocation_move1_reserve : s2Step352CompleteRelocationMove0After.reserve {607}=some s2Step352CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step352CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s2Step352CompleteRelocation_move1_retire : s2Step352CompleteRelocationMove1Borrowed.retireSet {791}=s2Step352EarlyControlArena := by
  unfold Arena.retireSet s2Step352EarlyControlArena
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step352CompleteRelocationMove1Borrowed,s2Step352CompleteRelocationMove0After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step352CompleteRelocation_checked : s2Step352ExitGvAfter.checkRepack [(790,94),(791,607)]=some s2Step352EarlyControlArena := by
  have tail2 : s2Step352EarlyControlArena.checkRepack []=some s2Step352EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s2Step352CompleteRelocationMove0After s2Step352CompleteRelocationMove1Borrowed s2Step352EarlyControlArena s2Step352EarlyControlArena 791 607 []
    s2Step352CompleteRelocation_move1_owned s2Step352CompleteRelocation_move1_reserve s2Step352CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s2Step352ExitGvAfter s2Step352CompleteRelocationMove0Borrowed s2Step352CompleteRelocationMove0After s2Step352EarlyControlArena 790 94 [(791,607)]
    s2Step352CompleteRelocation_move0_owned s2Step352CompleteRelocation_move0_reserve s2Step352CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s2Step352Complete_repack : s2Step352ExitGvAfter.checkRepack s2Step352CompleteMoves=some s2Step352EarlyControlArena := by
  simpa only [s2Step352CompleteMoves] using s2Step352CompleteRelocation_checked

private theorem s2Step352EarlyControl_branchOwned : ([796] : List Wire).toFinset⊆s2Step352EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step352EarlyControlSigmaArena (fun q => (0≤q ∧ q<789) ∨ (792≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step352EarlyControl_branch : compileHmrBranchRetirement s2Step352EarlyControlSigmaArena 796=some s2Step352EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step352EarlyControl_branchOwned
  · ext q
    simp [s2Step352EarlyControlOutputArena,s2Step352EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step352EarlyControl_classEqualityBorrow : s2Step352EarlyControlPositiveArena.checkBorrow (([808, 903] : List Wire).length-1) s2Step352EarlyControlLog.classWork=some s2Step352EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step352EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step352EarlyControlPositiveArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step352EarlyControlEqualityArena,s2Step352EarlyControlPositiveArena,s2Step352EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step352EarlyControl_classEqualityOwned : ([808, 903] : List Wire).toFinset⊆s2Step352EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step352EarlyControlPositiveArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step352EarlyControl_classEquality : compileHmrEqualityLog s2Step352EarlyControlPositiveArena [808, 903] 0 s2Step352EarlyControlLog.classWork=some (s2Step352EarlyControlEqualityArena,s2Step352EarlyControlLog.classWork,s2Step352EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step352EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step352EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step352EarlyControl_classOwned : ([777, 801, 808] : List Wire).toFinset⊆s2Step352EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step352EarlyControlZeroArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step352EarlyControl_positiveBorrow : s2Step352EarlyControlZeroArena.checkBorrow (1) s2Step352EarlyControlLog.positiveWork=some s2Step352EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step352EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step352EarlyControlZeroArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step352EarlyControlPositiveArena,s2Step352EarlyControlZeroArena,s2Step352EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step352EarlyControl_class : compileHmrSourceClassLog s2Step352EarlyControlZeroArena false 777 s2Step352EarlyControlZeroPlan.top 0 808 s2Step352EarlyControlLog.positiveWork s2Step352EarlyControlLog.classWork=some s2Step352EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step352EarlyControlClassPlan s2Step352EarlyControlZeroArena false 777 s2Step352EarlyControlZeroPlan.top 0 808
  constructor
  · decide +kernel
  · exact s2Step352EarlyControl_classOwned
  · exact s2Step352EarlyControl_positiveBorrow
  · exact s2Step352EarlyControl_classEquality

private theorem s2Step352EarlyControl_entryRecordOwned : ([796, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step352EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step352EarlyControlArena (fun q => (0≤q ∧ q<789) ∨ (792≤q ∧ q<800) ∨ (802≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step352EarlyControl_entrySigmaOwned : ([808, 254] : List Wire).toFinset⊆s2Step352EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step352EarlyControlArena (fun q => (0≤q ∧ q<789) ∨ (792≤q ∧ q<800) ∨ (802≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step352EarlyControl_fitBorrow : s2Step352EarlyControlFlagArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step352EarlyControlLog.recordFresh=some s2Step352EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step352EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step352EarlyControlFlagArena (fun q => (0≤q ∧ q<915)) rfl
      decide +kernel
    · ext q
      simp [s2Step352EarlyControlFittedArena,s2Step352EarlyControlFlagArena,s2Step352EarlyControlLog,arenaWires]

private theorem s2Step352EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step352EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step352EarlyControlFlagArena (fun q => (0≤q ∧ q<915)) rfl
  decide +kernel

private theorem s2Step352EarlyControl_fit : compileHmrRecordGrowLog s2Step352EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step352EarlyControlLog.recordFresh=some s2Step352EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step352EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step352EarlyControl_fitBorrow

private theorem s2Step352EarlyControl_flagsBorrow : s2Step352EarlyControlEqualityArena.checkBorrow (6) s2Step352EarlyControlLog.flagWork=some s2Step352EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step352EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step352EarlyControlEqualityArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step352EarlyControlFlagArena,s2Step352EarlyControlEqualityArena,s2Step352EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step352EarlyControl_flagsOwned : ([800, 253, 252, 251] : List Wire).toFinset⊆s2Step352EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step352EarlyControlEqualityArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step352EarlyControl_flags : compileHmrFlagsLog s2Step352EarlyControlClassPlan.equalityArena s2Step352EarlyControlClassPlan.equality.top 253 252 251 s2Step352EarlyControlLog.flagWork=some s2Step352EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step352EarlyControl_flagsOwned⟩
  · exact s2Step352EarlyControl_flagsBorrow

private theorem s2Step352EarlyControl_historyBorrow : s2Step352EarlyControlArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step352EarlyControlLog.recordFresh=some s2Step352EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step352EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step352EarlyControlArena (fun q => (0≤q ∧ q<789) ∨ (792≤q ∧ q<800) ∨ (802≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step352EarlyControlHistoryArena,s2Step352EarlyControlArena,s2Step352EarlyControlLog,arenaWires]

private theorem s2Step352EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step352EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step352EarlyControlArena (fun q => (0≤q ∧ q<789) ∨ (792≤q ∧ q<800) ∨ (802≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step352EarlyControl_history : compileHmrRecordGrowLog s2Step352EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step352EarlyControlLog.recordFresh=some s2Step352EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step352EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step352EarlyControl_historyBorrow

private theorem s2Step352EarlyControl_sigmaOwned : ([254, 808] : List Wire).toFinset⊆s2Step352EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step352EarlyControlHistoryArena (fun q => (0≤q ∧ q<789) ∨ (792≤q ∧ q<800) ∨ (802≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step352EarlyControl_sigmaReleaseOwned : ([808] : List Wire).toFinset⊆s2Step352EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step352EarlyControlHistoryArena (fun q => (0≤q ∧ q<789) ∨ (792≤q ∧ q<800) ∨ (802≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step352EarlyControl_sigmaRelease : s2Step352EarlyControlHistoryArena.release {808} (fun _ => false)=some s2Step352EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step352EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step352EarlyControlSigmaArena,s2Step352EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step352EarlyControl_sigma : compileHmrSigmaDropLog s2Step352EarlyControlHistoryArena false 0 0 254 808 []=some s2Step352EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step352EarlyControl_sigmaOwned⟩
  · exact s2Step352EarlyControl_sigmaRelease

private theorem s2Step352EarlyControl_zeroBorrow : s2Step352EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step352EarlyControlLog.zeroWork=some s2Step352EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step352EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step352EarlyControlArena (fun q => (0≤q ∧ q<789) ∨ (792≤q ∧ q<800) ∨ (802≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step352EarlyControlZeroArena,s2Step352EarlyControlArena,s2Step352EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step352EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step352EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step352EarlyControlArena (fun q => (0≤q ∧ q<789) ∨ (792≤q ∧ q<800) ∨ (802≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step352EarlyControl_zero : compileHmrEqualityLog s2Step352EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step352EarlyControlLog.zeroWork=some (s2Step352EarlyControlZeroArena,s2Step352EarlyControlLog.zeroWork,s2Step352EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step352EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step352EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step352EarlyControl_logged : s2Step352EarlyControlPlan.Logged s2Step352EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 808 254 253 252 251 796 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step352EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step352EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step352EarlyControl_zero
  · exact s2Step352EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step352EarlyControl_flags
  · exact s2Step352EarlyControl_fit
  · exact s2Step352EarlyControl_history
  · exact s2Step352EarlyControl_sigma
  · exact s2Step352EarlyControl_branch

private theorem s2Step352EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step352EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 808 254 253 252 251 796 60 s2Step352EarlyControlLog=some s2Step352EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step352EarlyControlPlan s2Step352EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 808 254 253 252 251 796 60 s2Step352EarlyControl_logged

private def s2Step352EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<788) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step352EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607],768⟩

private def s2Step352EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815],770⟩

private def s2Step352EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94],769⟩

private def s2Step352EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891],771⟩

private def s2Step352FrontBank : WindowBank := ⟨s2Step352EntryFRow,s2Step352EntryGRow,s2Step352EntryFvRow,s2Step352EntryGvRow⟩

private def s2Step352Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 894, 768]

private def s2Step352Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 801, 903, 769]

private def s2Step352Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 770]

private def s2Step352Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 839, 771]

private theorem s2Step352Counter_apart : Disjoint s2Step352HeadFvAfter.live s2Step352CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step352HeadFvAfter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step352Counter_borrowed : s2Step352HeadFvAfter.checkBorrow 4 s2Step352CounterWork=some s2Step352CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step352HeadFvAfter s2Step352CounterDuring s2Step352CounterWork.toFinset s2Step352Counter_bounded s2Step352Counter_apart rfl

private theorem s2Step352Counter_owned : (808::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step352HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step352HeadFvAfter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step352Counter_checked : compileHmrCounterStepLog s2Step352HeadFvAfter true 808 [772, 773, 774, 775, 776, 777] s2Step352CounterWork=some s2Step352CounterDuring := by
  have owned : ∀q∈808::[772, 773, 774, 775, 776, 777],q∈s2Step352HeadFvAfter.live := fun q hq => s2Step352Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step352Counter_borrowed

private def s2Step352EntryFAfter : Arena := s2Step352EntryFBefore

private theorem s2Step352EntryBank_incomingDistinct : ([s2Step352EntryFRow,s2Step352EntryGRow,s2Step352EntryFvRow,s2Step352EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step352EntryF_Incoming : rowsOwned s2Step352EntryFBefore [s2Step352EntryFRow,s2Step352EntryGRow,s2Step352EntryFvRow,s2Step352EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step352EntryFRow,s2Step352EntryGRow,s2Step352EntryFvRow,s2Step352EntryGvRow] 0 s2Step352EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step352EntryFBefore (fun q => (0≤q ∧ q<788) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step352EntryBank_outgoingOwned : rowsOwned s2Step352EntryGvAfter [s2Step352EntryFOut,s2Step352EntryGOut,s2Step352EntryFvOut,s2Step352EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step352EntryGvAfter (fun q => (0≤q ∧ q<788) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step352EntryF_Outgoing : rowsOwned s2Step352EntryGvAfter [s2Step352EntryFOut,s2Step352EntryGOut,s2Step352EntryFvOut,s2Step352EntryGvOut] :=
  hmrRows_owned_drop s2Step352EntryGvAfter [s2Step352EntryFOut,s2Step352EntryGOut,s2Step352EntryFvOut,s2Step352EntryGvOut] 0 s2Step352EntryBank_outgoingOwned

private theorem s2Step352EntryF_distinct : (s2Step352EntryFRow.sign::s2Step352EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step352EntryF_owned : (s2Step352EntryFRow.sign::s2Step352EntryFRow.payload).toFinset⊆s2Step352EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step352EntryFBefore (fun q => (0≤q ∧ q<788) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step352EntryF_reserved : s2Step352EntryFBefore.reserve s2Step352EntryFFresh.toFinset=some s2Step352EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step352EntryFFresh,arenaWires]
  · norm_num [s2Step352EntryFBefore,s2Step352EntryFFresh,arenaWires]
  · simp only [s2Step352EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step352EntryF_checked : planRowResizeLog s2Step352EntryFBefore s2Step352EntryFRow 96 s2Step352EntryFFresh=
    some (s2Step352EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607],768⟩,growRow 768 s2Step352EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step352EntryFBefore s2Step352EntryFAfter s2Step352EntryFRow 96 s2Step352EntryFFresh
    s2Step352EntryF_distinct s2Step352EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step352EntryF_reserved
  have rowEq : WindowRow.mk (s2Step352EntryFRow.payload++s2Step352EntryFFresh) s2Step352EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step352EntryFvAfter : Arena := s2Step352EntryGAfter

private def s2Step352EntryFvBefore : Arena := s2Step352EntryGAfter

private theorem s2Step352EntryFv_Incoming : rowsOwned s2Step352EntryFvBefore [s2Step352EntryFvRow,s2Step352EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step352EntryFRow,s2Step352EntryGRow,s2Step352EntryFvRow,s2Step352EntryGvRow] 2 s2Step352EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step352EntryFvBefore (fun q => (0≤q ∧ q<788) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step352EntryFv_Outgoing : rowsOwned s2Step352EntryGvAfter [s2Step352EntryFvOut,s2Step352EntryGvOut] :=
  hmrRows_owned_drop s2Step352EntryGvAfter [s2Step352EntryFOut,s2Step352EntryGOut,s2Step352EntryFvOut,s2Step352EntryGvOut] 2 s2Step352EntryBank_outgoingOwned

private theorem s2Step352EntryFv_distinct : (s2Step352EntryFvRow.sign::s2Step352EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step352EntryFv_owned : (s2Step352EntryFvRow.sign::s2Step352EntryFvRow.payload).toFinset⊆s2Step352EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step352EntryFvBefore (fun q => (0≤q ∧ q<788) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step352EntryFv_reserved : s2Step352EntryFvBefore.reserve s2Step352EntryFvFresh.toFinset=some s2Step352EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step352EntryFvFresh,arenaWires]
  · norm_num [s2Step352EntryFvBefore,s2Step352EntryGAfter,s2Step352EntryFvFresh,arenaWires]
  · simp only [s2Step352EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step352EntryFv_checked : planRowResizeLog s2Step352EntryFvBefore s2Step352EntryFvRow 192 s2Step352EntryFvFresh=
    some (s2Step352EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815],770⟩,growRow 770 s2Step352EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step352EntryFvBefore s2Step352EntryFvAfter s2Step352EntryFvRow 192 s2Step352EntryFvFresh
    s2Step352EntryFv_distinct s2Step352EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step352EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step352EntryFvRow.payload++s2Step352EntryFvFresh) s2Step352EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step352EntryGBefore : Arena := s2Step352EntryFBefore

private theorem s2Step352EntryG_Incoming : rowsOwned s2Step352EntryGBefore [s2Step352EntryGRow,s2Step352EntryFvRow,s2Step352EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step352EntryFRow,s2Step352EntryGRow,s2Step352EntryFvRow,s2Step352EntryGvRow] 1 s2Step352EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step352EntryGBefore (fun q => (0≤q ∧ q<788) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step352EntryG_Outgoing : rowsOwned s2Step352EntryGvAfter [s2Step352EntryGOut,s2Step352EntryFvOut,s2Step352EntryGvOut] :=
  hmrRows_owned_drop s2Step352EntryGvAfter [s2Step352EntryFOut,s2Step352EntryGOut,s2Step352EntryFvOut,s2Step352EntryGvOut] 1 s2Step352EntryBank_outgoingOwned

private theorem s2Step352EntryG_distinct : (s2Step352EntryGRow.sign::s2Step352EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step352EntryG_owned : (s2Step352EntryGRow.sign::s2Step352EntryGRow.payload).toFinset⊆s2Step352EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step352EntryGBefore (fun q => (0≤q ∧ q<788) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step352EntryG_reserved : s2Step352EntryGBefore.reserve s2Step352EntryGFresh.toFinset=some s2Step352EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step352EntryGFresh,arenaWires]
  · norm_num [s2Step352EntryGBefore,s2Step352EntryFBefore,s2Step352EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step352EntryGAfter,s2Step352EntryGBefore,s2Step352EntryFBefore,s2Step352EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step352EntryG_checked : planRowResizeLog s2Step352EntryGBefore s2Step352EntryGRow 96 s2Step352EntryGFresh=
    some (s2Step352EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 801],769⟩,growRow 769 s2Step352EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step352EntryGBefore s2Step352EntryGAfter s2Step352EntryGRow 96 s2Step352EntryGFresh
    s2Step352EntryG_distinct s2Step352EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step352EntryG_reserved
  have rowEq : WindowRow.mk (s2Step352EntryGRow.payload++s2Step352EntryGFresh) s2Step352EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 801],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step352EntryGvBefore : Arena := s2Step352EntryGAfter

private theorem s2Step352EntryGv_Incoming : rowsOwned s2Step352EntryGvBefore [s2Step352EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step352EntryFRow,s2Step352EntryGRow,s2Step352EntryFvRow,s2Step352EntryGvRow] 3 s2Step352EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step352EntryGvBefore (fun q => (0≤q ∧ q<788) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step352EntryGv_Outgoing : rowsOwned s2Step352EntryGvAfter [s2Step352EntryGvOut] :=
  hmrRows_owned_drop s2Step352EntryGvAfter [s2Step352EntryFOut,s2Step352EntryGOut,s2Step352EntryFvOut,s2Step352EntryGvOut] 3 s2Step352EntryBank_outgoingOwned

private theorem s2Step352EntryGv_distinct : (s2Step352EntryGvRow.sign::s2Step352EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step352EntryGv_owned : (s2Step352EntryGvRow.sign::s2Step352EntryGvRow.payload).toFinset⊆s2Step352EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step352EntryGvBefore (fun q => (0≤q ∧ q<788) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step352EntryGv_reserved : s2Step352EntryGvBefore.reserve s2Step352EntryGvFresh.toFinset=some s2Step352EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step352EntryGvFresh,arenaWires]
  · norm_num [s2Step352EntryGvBefore,s2Step352EntryGAfter,s2Step352EntryGvFresh,arenaWires]
  · simp only [s2Step352EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step352EntryGv_checked : planRowResizeLog s2Step352EntryGvBefore s2Step352EntryGvRow 192 s2Step352EntryGvFresh=
    some (s2Step352EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891],771⟩,growRow 771 s2Step352EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step352EntryGvBefore s2Step352EntryGvAfter s2Step352EntryGvRow 192 s2Step352EntryGvFresh
    s2Step352EntryGv_distinct s2Step352EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step352EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step352EntryGvRow.payload++s2Step352EntryGvFresh) s2Step352EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step352EntryBank_rows : planWindowRowsLog s2Step352EntryFBefore [(s2Step352EntryFRow,96),(s2Step352EntryGRow,96),(s2Step352EntryFvRow,192),(s2Step352EntryGvRow,192)] [s2Step352EntryFFresh,s2Step352EntryGFresh,s2Step352EntryFvFresh,s2Step352EntryGvFresh]=
    some (s2Step352EntryGvAfter,[s2Step352EntryFOut,s2Step352EntryGOut,s2Step352EntryFvOut,s2Step352EntryGvOut],(growRow 768 s2Step352EntryFFresh ++ (growRow 769 s2Step352EntryGFresh ++ (growRow 770 s2Step352EntryFvFresh ++ (growRow 771 s2Step352EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step352EntryGvAfter [] []=some (s2Step352EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step352EntryGvBefore s2Step352EntryGvAfter s2Step352EntryGvAfter
    s2Step352EntryGvRow s2Step352EntryGvOut 192 s2Step352EntryGvFresh [] [] []
    (growRow 771 s2Step352EntryGvFresh) ([]) s2Step352EntryGv_Incoming s2Step352EntryGv_checked h4 s2Step352EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step352EntryFvBefore s2Step352EntryFvAfter s2Step352EntryGvAfter
    s2Step352EntryFvRow s2Step352EntryFvOut 192 s2Step352EntryFvFresh [(s2Step352EntryGvRow,192)] [s2Step352EntryGvFresh] [s2Step352EntryGvOut]
    (growRow 770 s2Step352EntryFvFresh) ((growRow 771 s2Step352EntryGvFresh ++ [])) s2Step352EntryFv_Incoming s2Step352EntryFv_checked h3 s2Step352EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step352EntryGBefore s2Step352EntryGAfter s2Step352EntryGvAfter
    s2Step352EntryGRow s2Step352EntryGOut 96 s2Step352EntryGFresh [(s2Step352EntryFvRow,192),(s2Step352EntryGvRow,192)] [s2Step352EntryFvFresh,s2Step352EntryGvFresh] [s2Step352EntryFvOut,s2Step352EntryGvOut]
    (growRow 769 s2Step352EntryGFresh) ((growRow 770 s2Step352EntryFvFresh ++ (growRow 771 s2Step352EntryGvFresh ++ []))) s2Step352EntryG_Incoming s2Step352EntryG_checked h2 s2Step352EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step352EntryFBefore s2Step352EntryFAfter s2Step352EntryGvAfter
    s2Step352EntryFRow s2Step352EntryFOut 96 s2Step352EntryFFresh [(s2Step352EntryGRow,96),(s2Step352EntryFvRow,192),(s2Step352EntryGvRow,192)] [s2Step352EntryGFresh,s2Step352EntryFvFresh,s2Step352EntryGvFresh] [s2Step352EntryGOut,s2Step352EntryFvOut,s2Step352EntryGvOut]
    (growRow 768 s2Step352EntryFFresh) ((growRow 769 s2Step352EntryGFresh ++ (growRow 770 s2Step352EntryFvFresh ++ (growRow 771 s2Step352EntryGvFresh ++ [])))) s2Step352EntryF_Incoming s2Step352EntryF_checked h1 s2Step352EntryF_Outgoing
  exact h0

private theorem s2Step352EntryBank_checked : compileHmrBankResizeLog .entry s2Step352EntryFBefore ⟨s2Step352EntryFRow,s2Step352EntryGRow,s2Step352EntryFvRow,s2Step352EntryGvRow⟩ ⟨96,96,192,192⟩ [s2Step352EntryFFresh,s2Step352EntryGFresh,s2Step352EntryFvFresh,s2Step352EntryGvFresh]=
    some (s2Step352EntryGvAfter,⟨s2Step352EntryFOut,s2Step352EntryGOut,s2Step352EntryFvOut,s2Step352EntryGvOut⟩,(growRow 768 s2Step352EntryFFresh ++ (growRow 769 s2Step352EntryGFresh ++ (growRow 770 s2Step352EntryFvFresh ++ (growRow 771 s2Step352EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step352EntryBank_rows]
  rfl

private def s2Step352ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<94) ∨ (95≤q ∧ q<607) ∨ (608≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (802≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step352ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<94) ∨ (95≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (802≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step352ExitFBefore : Arena := s2Step352ExitGAfter

private def s2Step352ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 894],768⟩

private def s2Step352ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788],770⟩

private def s2Step352ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 801, 903],769⟩

private def s2Step352ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 839],771⟩

private theorem s2Step352ExitBank_incomingDistinct : ([s2Step352ExitGRow,s2Step352ExitFRow,s2Step352ExitFvRow,s2Step352ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step352ExitF_Incoming : rowsOwned s2Step352ExitFBefore [s2Step352ExitFRow,s2Step352ExitFvRow,s2Step352ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step352ExitGRow,s2Step352ExitFRow,s2Step352ExitFvRow,s2Step352ExitGvRow] 1 s2Step352ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step352ExitFBefore (fun q => (0≤q ∧ q<94) ∨ (95≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (802≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step352ExitBank_outgoingOwned : rowsOwned s2Step352ExitGvAfter [s2Step352ExitGOut,s2Step352ExitFOut,s2Step352ExitFvOut,s2Step352ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step352ExitGvAfter (fun q => (0≤q ∧ q<94) ∨ (95≤q ∧ q<607) ∨ (608≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (802≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step352ExitF_Outgoing : rowsOwned s2Step352ExitGvAfter [s2Step352ExitFOut,s2Step352ExitFvOut,s2Step352ExitGvOut] :=
  hmrRows_owned_drop s2Step352ExitGvAfter [s2Step352ExitGOut,s2Step352ExitFOut,s2Step352ExitFvOut,s2Step352ExitGvOut] 1 s2Step352ExitBank_outgoingOwned

private theorem s2Step352ExitF_distinct : (s2Step352ExitFRow.sign::s2Step352ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step352ExitF_owned : (s2Step352ExitFRow.sign::s2Step352ExitFRow.payload).toFinset⊆s2Step352ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step352ExitFBefore (fun q => (0≤q ∧ q<94) ∨ (95≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (802≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step352ExitF_retired : s2Step352ExitFBefore.retireSet s2Step352ExitFExtra.toFinset=s2Step352ExitFAfter := by
  unfold Arena.retireSet s2Step352ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step352ExitFBefore,s2Step352ExitGAfter,s2Step352ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step352ExitF_checked : planRowResizeLog s2Step352ExitFBefore s2Step352ExitFRow 95 []=
    some (s2Step352ExitFAfter,s2Step352ExitFOut,shrinkRow 768 s2Step352ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step352ExitFBefore s2Step352ExitFRow 95 s2Step352ExitF_distinct s2Step352ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step352ExitFRow.payload.take 95) s2Step352ExitFRow.sign=s2Step352ExitFOut := by decide +kernel
  have hi : s2Step352ExitFRow.payload.drop 95=s2Step352ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step352ExitF_retired] at result
  exact result

private def s2Step352ExitFvAfter : Arena := s2Step352ExitFAfter

private def s2Step352ExitFvBefore : Arena := s2Step352ExitFAfter

private theorem s2Step352ExitFv_Incoming : rowsOwned s2Step352ExitFvBefore [s2Step352ExitFvRow,s2Step352ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step352ExitGRow,s2Step352ExitFRow,s2Step352ExitFvRow,s2Step352ExitGvRow] 2 s2Step352ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step352ExitFvBefore (fun q => (0≤q ∧ q<94) ∨ (95≤q ∧ q<607) ∨ (608≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (802≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step352ExitFv_Outgoing : rowsOwned s2Step352ExitGvAfter [s2Step352ExitFvOut,s2Step352ExitGvOut] :=
  hmrRows_owned_drop s2Step352ExitGvAfter [s2Step352ExitGOut,s2Step352ExitFOut,s2Step352ExitFvOut,s2Step352ExitGvOut] 2 s2Step352ExitBank_outgoingOwned

private theorem s2Step352ExitFv_distinct : (s2Step352ExitFvRow.sign::s2Step352ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step352ExitFv_owned : (s2Step352ExitFvRow.sign::s2Step352ExitFvRow.payload).toFinset⊆s2Step352ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step352ExitFvBefore (fun q => (0≤q ∧ q<94) ∨ (95≤q ∧ q<607) ∨ (608≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (802≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step352ExitFv_reserved : s2Step352ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step352ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step352ExitFv_checked : planRowResizeLog s2Step352ExitFvBefore s2Step352ExitFvRow 193 []=
    some (s2Step352ExitFvAfter,s2Step352ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step352ExitFvBefore s2Step352ExitFvAfter s2Step352ExitFvRow 193 []
    s2Step352ExitFv_distinct s2Step352ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step352ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step352ExitFvRow.payload++[]) s2Step352ExitFvRow.sign=s2Step352ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step352ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private theorem s2Step352ExitG_Incoming : rowsOwned s2Step352ExitGBefore [s2Step352ExitGRow,s2Step352ExitFRow,s2Step352ExitFvRow,s2Step352ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step352ExitGRow,s2Step352ExitFRow,s2Step352ExitFvRow,s2Step352ExitGvRow] 0 s2Step352ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step352ExitGBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step352ExitG_Outgoing : rowsOwned s2Step352ExitGvAfter [s2Step352ExitGOut,s2Step352ExitFOut,s2Step352ExitFvOut,s2Step352ExitGvOut] :=
  hmrRows_owned_drop s2Step352ExitGvAfter [s2Step352ExitGOut,s2Step352ExitFOut,s2Step352ExitFvOut,s2Step352ExitGvOut] 0 s2Step352ExitBank_outgoingOwned

private theorem s2Step352ExitG_distinct : (s2Step352ExitGRow.sign::s2Step352ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step352ExitG_owned : (s2Step352ExitGRow.sign::s2Step352ExitGRow.payload).toFinset⊆s2Step352ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step352ExitGBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step352ExitG_retired : s2Step352ExitGBefore.retireSet s2Step352ExitGExtra.toFinset=s2Step352ExitGAfter := by
  unfold Arena.retireSet s2Step352ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step352ExitGBefore,s2Step352ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step352ExitG_checked : planRowResizeLog s2Step352ExitGBefore s2Step352ExitGRow 94 []=
    some (s2Step352ExitGAfter,s2Step352ExitGOut,shrinkRow 769 s2Step352ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step352ExitGBefore s2Step352ExitGRow 94 s2Step352ExitG_distinct s2Step352ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step352ExitGRow.payload.take 94) s2Step352ExitGRow.sign=s2Step352ExitGOut := by decide +kernel
  have hi : s2Step352ExitGRow.payload.drop 94=s2Step352ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step352ExitG_retired] at result
  exact result

private def s2Step352ExitGvBefore : Arena := s2Step352ExitFAfter

private theorem s2Step352ExitGv_Incoming : rowsOwned s2Step352ExitGvBefore [s2Step352ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step352ExitGRow,s2Step352ExitFRow,s2Step352ExitFvRow,s2Step352ExitGvRow] 3 s2Step352ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step352ExitGvBefore (fun q => (0≤q ∧ q<94) ∨ (95≤q ∧ q<607) ∨ (608≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (802≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step352ExitGv_Outgoing : rowsOwned s2Step352ExitGvAfter [s2Step352ExitGvOut] :=
  hmrRows_owned_drop s2Step352ExitGvAfter [s2Step352ExitGOut,s2Step352ExitFOut,s2Step352ExitFvOut,s2Step352ExitGvOut] 3 s2Step352ExitBank_outgoingOwned

private theorem s2Step352ExitGv_distinct : (s2Step352ExitGvRow.sign::s2Step352ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step352ExitGv_owned : (s2Step352ExitGvRow.sign::s2Step352ExitGvRow.payload).toFinset⊆s2Step352ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step352ExitGvBefore (fun q => (0≤q ∧ q<94) ∨ (95≤q ∧ q<607) ∨ (608≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (802≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step352ExitGv_retired : s2Step352ExitGvBefore.retireSet s2Step352ExitGvExtra.toFinset=s2Step352ExitGvAfter := by
  unfold Arena.retireSet s2Step352ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step352ExitGvBefore,s2Step352ExitFAfter,s2Step352ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step352ExitGv_checked : planRowResizeLog s2Step352ExitGvBefore s2Step352ExitGvRow 192 []=
    some (s2Step352ExitGvAfter,s2Step352ExitGvOut,shrinkRow 771 s2Step352ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step352ExitGvBefore s2Step352ExitGvRow 192 s2Step352ExitGv_distinct s2Step352ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step352ExitGvRow.payload.take 192) s2Step352ExitGvRow.sign=s2Step352ExitGvOut := by decide +kernel
  have hi : s2Step352ExitGvRow.payload.drop 192=s2Step352ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step352ExitGv_retired] at result
  exact result

private theorem s2Step352ExitBank_rows : planWindowRowsLog s2Step352ExitGBefore [(s2Step352ExitGRow,94),(s2Step352ExitFRow,95),(s2Step352ExitFvRow,193),(s2Step352ExitGvRow,192)] [[],[],[],[]]=
    some (s2Step352ExitGvAfter,[s2Step352ExitGOut,s2Step352ExitFOut,s2Step352ExitFvOut,s2Step352ExitGvOut],(shrinkRow 769 s2Step352ExitGExtra ++ (shrinkRow 768 s2Step352ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step352ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step352ExitGvAfter [] []=some (s2Step352ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step352ExitGvBefore s2Step352ExitGvAfter s2Step352ExitGvAfter
    s2Step352ExitGvRow s2Step352ExitGvOut 192 [] [] [] []
    (shrinkRow 771 s2Step352ExitGvExtra) ([]) s2Step352ExitGv_Incoming s2Step352ExitGv_checked h4 s2Step352ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step352ExitFvBefore s2Step352ExitFvAfter s2Step352ExitGvAfter
    s2Step352ExitFvRow s2Step352ExitFvOut 193 [] [(s2Step352ExitGvRow,192)] [[]] [s2Step352ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step352ExitGvExtra ++ [])) s2Step352ExitFv_Incoming s2Step352ExitFv_checked h3 s2Step352ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step352ExitFBefore s2Step352ExitFAfter s2Step352ExitGvAfter
    s2Step352ExitFRow s2Step352ExitFOut 95 [] [(s2Step352ExitFvRow,193),(s2Step352ExitGvRow,192)] [[],[]] [s2Step352ExitFvOut,s2Step352ExitGvOut]
    (shrinkRow 768 s2Step352ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step352ExitGvExtra ++ []))) s2Step352ExitF_Incoming s2Step352ExitF_checked h2 s2Step352ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step352ExitGBefore s2Step352ExitGAfter s2Step352ExitGvAfter
    s2Step352ExitGRow s2Step352ExitGOut 94 [] [(s2Step352ExitFRow,95),(s2Step352ExitFvRow,193),(s2Step352ExitGvRow,192)] [[],[],[]] [s2Step352ExitFOut,s2Step352ExitFvOut,s2Step352ExitGvOut]
    (shrinkRow 769 s2Step352ExitGExtra) ((shrinkRow 768 s2Step352ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step352ExitGvExtra ++ [])))) s2Step352ExitG_Incoming s2Step352ExitG_checked h1 s2Step352ExitG_Outgoing
  exact h0

private theorem s2Step352ExitBank_checked : compileHmrBankResizeLog .exit s2Step352ExitGBefore ⟨s2Step352ExitFRow,s2Step352ExitGRow,s2Step352ExitFvRow,s2Step352ExitGvRow⟩ ⟨95,94,193,192⟩ [[],[],[],[]]=
    some (s2Step352ExitGvAfter,⟨s2Step352ExitFOut,s2Step352ExitGOut,s2Step352ExitFvOut,s2Step352ExitGvOut⟩,(shrinkRow 769 s2Step352ExitGExtra ++ (shrinkRow 768 s2Step352ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step352ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step352ExitBank_rows]
  rfl

private theorem s2Step352Add0_apart : Disjoint s2Step352Add0Arena.live s2Step352Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step352Add0Arena (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step352Add0_card : s2Step352Add0Arena.live.card=910 := by
  decide +kernel

private theorem s2Step352Add0_borrowed : s2Step352Add0Arena.checkBorrow (hmrHybridCount s2Step352Add0Arena s2Step352Add0B.length) s2Step352Add0Work=some s2Step352Add0During := by
  have len : s2Step352Add0Work.length=hmrHybridCount s2Step352Add0Arena s2Step352Add0B.length := by
    rw [hmrHybridCount,s2Step352Add0_card]
    decide +kernel
  have nd : s2Step352Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step352Add0Arena s2Step352Add0During s2Step352Add0Work.toFinset s2Step352Add0_bounded s2Step352Add0_apart rfl

private theorem s2Step352Add0_distinct : (800::796::789::(s2Step352Add0A++s2Step352Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step352Add0_owned : (800::796::789::(s2Step352Add0A++s2Step352Add0B)).toFinset⊆s2Step352Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step352Add0Arena (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step352Add0_checked : compileHmrHybridCinLog s2Step352Add0Arena 796 800 789 s2Step352Add0A s2Step352Add0B s2Step352Add0Work=some s2Step352Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step352Add0Arena s2Step352Add0During 796 800 789 s2Step352Add0A s2Step352Add0B s2Step352Add0Work
    (by decide +kernel) (by decide +kernel) s2Step352Add0_distinct
    (fun q hq => s2Step352Add0_owned (List.mem_toFinset.mpr hq)) s2Step352Add0_borrowed

private theorem s2Step352Add1_apart : Disjoint s2Step352Add1Arena.live s2Step352Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step352Add1Arena (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step352Add1_card : s2Step352Add1Arena.live.card=910 := by
  decide +kernel

private theorem s2Step352Add1_borrowed : s2Step352Add1Arena.checkBorrow (hmrHybridCount s2Step352Add1Arena s2Step352Add1B.length) s2Step352Add1Work=some s2Step352Add1During := by
  have len : s2Step352Add1Work.length=hmrHybridCount s2Step352Add1Arena s2Step352Add1B.length := by
    rw [hmrHybridCount,s2Step352Add1_card]
    decide +kernel
  have nd : s2Step352Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step352Add1Arena s2Step352Add1During s2Step352Add1Work.toFinset s2Step352Add1_bounded s2Step352Add1_apart rfl

private theorem s2Step352Add1_distinct : (800::796::789::(s2Step352Add1A++s2Step352Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step352Add1_owned : (800::796::789::(s2Step352Add1A++s2Step352Add1B)).toFinset⊆s2Step352Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step352Add1Arena (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step352Add1_checked : compileHmrHybridCinLog s2Step352Add1Arena 796 800 789 s2Step352Add1A s2Step352Add1B s2Step352Add1Work=some s2Step352Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step352Add1Arena s2Step352Add1During 796 800 789 s2Step352Add1A s2Step352Add1B s2Step352Add1Work
    (by decide +kernel) (by decide +kernel) s2Step352Add1_distinct
    (fun q hq => s2Step352Add1_owned (List.mem_toFinset.mpr hq)) s2Step352Add1_borrowed

private theorem s2Step352F4_apart : Disjoint (s2Step352Add0A++s2Step352Add0B).toFinset (s2Step352Add1A++s2Step352Add1B).toFinset := by
  have nd : ((s2Step352Add0A++s2Step352Add0B)++(s2Step352Add1A++s2Step352Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step352F4_carry : s2Step352F4FlagArena.checkBorrow 1 [789]=some s2Step352Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step352F4FlagArena,s2Step352HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step352F4FlagArena,s2Step352HeadFvAfter,s2Step352Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step352F4_distinct : (808::796::800::789::((s2Step352Add0A++s2Step352Add1A)++(s2Step352Add0B++s2Step352Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step352F4_flag : s2Step352HeadFvAfter.checkBorrow 1 [800]=some s2Step352F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step352HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step352F4_owned : (808::796::((s2Step352Add0A++s2Step352Add1A)++(s2Step352Add0B++s2Step352Add1B))).toFinset⊆s2Step352HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step352HeadFvAfter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step352F4_checked : compileHmrHybridF4Log s2Step352HeadFvAfter 808 796 s2Step352Add0A s2Step352Add0B s2Step352Add1A s2Step352Add1B [800] [789] s2Step352Add0Work s2Step352Add1Work=some s2Step352F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step352HeadFvAfter s2Step352F4FlagArena s2Step352Add0Arena s2Step352Add0During s2Step352Add1During 808 796
    s2Step352Add0A s2Step352Add0B s2Step352Add1A s2Step352Add1B [800] [789] s2Step352Add0Work s2Step352Add1Work
    (fun q hq => s2Step352F4_owned (List.mem_toFinset.mpr hq)) s2Step352F4_flag s2Step352F4_carry
    s2Step352F4_distinct s2Step352F4_apart s2Step352Add0_checked s2Step352Add1_checked

private theorem s2Step352Front_branch : s2Step352FrontSigmaArena.checkBorrow 1 [796]=some s2Step352HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step352FrontSigmaArena,s2Step352EntryGvAfter,s2Step352EntryGAfter,arenaWires]
  · ext q
    simp only [s2Step352FrontSigmaArena,s2Step352EntryGvAfter,s2Step352EntryGAfter,s2Step352HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step352Front_entry : HmrFrontEntryValid s2Step352EntryFBefore s2Step352FrontBank 96 192 ⟨95,94,193,192⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step352FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step352EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step352EntryFBefore (fun q => (0≤q ∧ q<788) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step352FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step352Front_sigma : s2Step352EntryGvAfter.checkBorrow 1 [808]=some s2Step352FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step352EntryGvAfter,s2Step352EntryGAfter,arenaWires]
  · rfl

private def s2Step352HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step352HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step352HeadFBefore : Arena := s2Step352HeadGAfter

private def s2Step352HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607],768⟩

private def s2Step352HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815],770⟩

private def s2Step352HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 801],769⟩

private def s2Step352HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891],771⟩

private theorem s2Step352HeadBank_incomingDistinct : ([s2Step352HeadGRow,s2Step352HeadFRow,s2Step352HeadGvRow,s2Step352HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step352HeadF_Incoming : rowsOwned s2Step352HeadFBefore [s2Step352HeadFRow,s2Step352HeadGvRow,s2Step352HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step352HeadGRow,s2Step352HeadFRow,s2Step352HeadGvRow,s2Step352HeadFvRow] 1 s2Step352HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step352HeadFBefore (fun q => (0≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step352HeadBank_outgoingOwned : rowsOwned s2Step352HeadFvAfter [s2Step352HeadGOut,s2Step352HeadFOut,s2Step352HeadGvOut,s2Step352HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step352HeadFvAfter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step352HeadF_Outgoing : rowsOwned s2Step352HeadFvAfter [s2Step352HeadFOut,s2Step352HeadGvOut,s2Step352HeadFvOut] :=
  hmrRows_owned_drop s2Step352HeadFvAfter [s2Step352HeadGOut,s2Step352HeadFOut,s2Step352HeadGvOut,s2Step352HeadFvOut] 1 s2Step352HeadBank_outgoingOwned

private theorem s2Step352HeadF_distinct : (s2Step352HeadFRow.sign::s2Step352HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step352HeadF_owned : (s2Step352HeadFRow.sign::s2Step352HeadFRow.payload).toFinset⊆s2Step352HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step352HeadFBefore (fun q => (0≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step352HeadF_reserved : s2Step352HeadFBefore.reserve s2Step352HeadFFresh.toFinset=some s2Step352HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step352HeadFFresh,arenaWires]
  · norm_num [s2Step352HeadFBefore,s2Step352HeadGAfter,s2Step352HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step352HeadFAfter,s2Step352HeadFBefore,s2Step352HeadGAfter,s2Step352HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step352HeadF_checked : planRowResizeLog s2Step352HeadFBefore s2Step352HeadFRow 97 s2Step352HeadFFresh=
    some (s2Step352HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 894],768⟩,growRow 768 s2Step352HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step352HeadFBefore s2Step352HeadFAfter s2Step352HeadFRow 97 s2Step352HeadFFresh
    s2Step352HeadF_distinct s2Step352HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step352HeadF_reserved
  have rowEq : WindowRow.mk (s2Step352HeadFRow.payload++s2Step352HeadFFresh) s2Step352HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 894],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step352HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step352HeadFvBefore : Arena := s2Step352HeadGvAfter

private theorem s2Step352HeadFv_Incoming : rowsOwned s2Step352HeadFvBefore [s2Step352HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step352HeadGRow,s2Step352HeadFRow,s2Step352HeadGvRow,s2Step352HeadFvRow] 3 s2Step352HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step352HeadFvBefore (fun q => (0≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step352HeadFv_Outgoing : rowsOwned s2Step352HeadFvAfter [s2Step352HeadFvOut] :=
  hmrRows_owned_drop s2Step352HeadFvAfter [s2Step352HeadGOut,s2Step352HeadFOut,s2Step352HeadGvOut,s2Step352HeadFvOut] 3 s2Step352HeadBank_outgoingOwned

private theorem s2Step352HeadFv_distinct : (s2Step352HeadFvRow.sign::s2Step352HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step352HeadFv_owned : (s2Step352HeadFvRow.sign::s2Step352HeadFvRow.payload).toFinset⊆s2Step352HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step352HeadFvBefore (fun q => (0≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step352HeadFv_reserved : s2Step352HeadFvBefore.reserve s2Step352HeadFvFresh.toFinset=some s2Step352HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step352HeadFvFresh,arenaWires]
  · norm_num [s2Step352HeadFvBefore,s2Step352HeadGvAfter,s2Step352HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step352HeadFvAfter,s2Step352HeadFvBefore,s2Step352HeadGvAfter,s2Step352HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step352HeadFv_checked : planRowResizeLog s2Step352HeadFvBefore s2Step352HeadFvRow 193 s2Step352HeadFvFresh=
    some (s2Step352HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788],770⟩,growRow 770 s2Step352HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step352HeadFvBefore s2Step352HeadFvAfter s2Step352HeadFvRow 193 s2Step352HeadFvFresh
    s2Step352HeadFv_distinct s2Step352HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step352HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step352HeadFvRow.payload++s2Step352HeadFvFresh) s2Step352HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step352HeadG_Incoming : rowsOwned s2Step352HeadGBefore [s2Step352HeadGRow,s2Step352HeadFRow,s2Step352HeadGvRow,s2Step352HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step352HeadGRow,s2Step352HeadFRow,s2Step352HeadGvRow,s2Step352HeadFvRow] 0 s2Step352HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step352HeadGBefore (fun q => (0≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step352HeadG_Outgoing : rowsOwned s2Step352HeadFvAfter [s2Step352HeadGOut,s2Step352HeadFOut,s2Step352HeadGvOut,s2Step352HeadFvOut] :=
  hmrRows_owned_drop s2Step352HeadFvAfter [s2Step352HeadGOut,s2Step352HeadFOut,s2Step352HeadGvOut,s2Step352HeadFvOut] 0 s2Step352HeadBank_outgoingOwned

private theorem s2Step352HeadG_distinct : (s2Step352HeadGRow.sign::s2Step352HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step352HeadG_owned : (s2Step352HeadGRow.sign::s2Step352HeadGRow.payload).toFinset⊆s2Step352HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step352HeadGBefore (fun q => (0≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step352HeadG_reserved : s2Step352HeadGBefore.reserve s2Step352HeadGFresh.toFinset=some s2Step352HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step352HeadGFresh,arenaWires]
  · norm_num [s2Step352HeadGBefore,s2Step352HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step352HeadGAfter,s2Step352HeadGBefore,s2Step352HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step352HeadG_checked : planRowResizeLog s2Step352HeadGBefore s2Step352HeadGRow 97 s2Step352HeadGFresh=
    some (s2Step352HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 801, 903],769⟩,growRow 769 s2Step352HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step352HeadGBefore s2Step352HeadGAfter s2Step352HeadGRow 97 s2Step352HeadGFresh
    s2Step352HeadG_distinct s2Step352HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step352HeadG_reserved
  have rowEq : WindowRow.mk (s2Step352HeadGRow.payload++s2Step352HeadGFresh) s2Step352HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 801, 903],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step352HeadGvBefore : Arena := s2Step352HeadFAfter

private theorem s2Step352HeadGv_Incoming : rowsOwned s2Step352HeadGvBefore [s2Step352HeadGvRow,s2Step352HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step352HeadGRow,s2Step352HeadFRow,s2Step352HeadGvRow,s2Step352HeadFvRow] 2 s2Step352HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step352HeadGvBefore (fun q => (0≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step352HeadGv_Outgoing : rowsOwned s2Step352HeadFvAfter [s2Step352HeadGvOut,s2Step352HeadFvOut] :=
  hmrRows_owned_drop s2Step352HeadFvAfter [s2Step352HeadGOut,s2Step352HeadFOut,s2Step352HeadGvOut,s2Step352HeadFvOut] 2 s2Step352HeadBank_outgoingOwned

private theorem s2Step352HeadGv_distinct : (s2Step352HeadGvRow.sign::s2Step352HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step352HeadGv_owned : (s2Step352HeadGvRow.sign::s2Step352HeadGvRow.payload).toFinset⊆s2Step352HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step352HeadGvBefore (fun q => (0≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step352HeadGv_reserved : s2Step352HeadGvBefore.reserve s2Step352HeadGvFresh.toFinset=some s2Step352HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step352HeadGvFresh,arenaWires]
  · norm_num [s2Step352HeadGvBefore,s2Step352HeadFAfter,s2Step352HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step352HeadGvAfter,s2Step352HeadGvBefore,s2Step352HeadFAfter,s2Step352HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step352HeadGv_checked : planRowResizeLog s2Step352HeadGvBefore s2Step352HeadGvRow 193 s2Step352HeadGvFresh=
    some (s2Step352HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 839],771⟩,growRow 771 s2Step352HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step352HeadGvBefore s2Step352HeadGvAfter s2Step352HeadGvRow 193 s2Step352HeadGvFresh
    s2Step352HeadGv_distinct s2Step352HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step352HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step352HeadGvRow.payload++s2Step352HeadGvFresh) s2Step352HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 839],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step352HeadBank_rows : planWindowRowsLog s2Step352HeadGBefore [(s2Step352HeadGRow,97),(s2Step352HeadFRow,97),(s2Step352HeadGvRow,193),(s2Step352HeadFvRow,193)] [s2Step352HeadGFresh,s2Step352HeadFFresh,s2Step352HeadGvFresh,s2Step352HeadFvFresh]=
    some (s2Step352HeadFvAfter,[s2Step352HeadGOut,s2Step352HeadFOut,s2Step352HeadGvOut,s2Step352HeadFvOut],(growRow 769 s2Step352HeadGFresh ++ (growRow 768 s2Step352HeadFFresh ++ (growRow 771 s2Step352HeadGvFresh ++ (growRow 770 s2Step352HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step352HeadFvAfter [] []=some (s2Step352HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step352HeadFvBefore s2Step352HeadFvAfter s2Step352HeadFvAfter
    s2Step352HeadFvRow s2Step352HeadFvOut 193 s2Step352HeadFvFresh [] [] []
    (growRow 770 s2Step352HeadFvFresh) ([]) s2Step352HeadFv_Incoming s2Step352HeadFv_checked h4 s2Step352HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step352HeadGvBefore s2Step352HeadGvAfter s2Step352HeadFvAfter
    s2Step352HeadGvRow s2Step352HeadGvOut 193 s2Step352HeadGvFresh [(s2Step352HeadFvRow,193)] [s2Step352HeadFvFresh] [s2Step352HeadFvOut]
    (growRow 771 s2Step352HeadGvFresh) ((growRow 770 s2Step352HeadFvFresh ++ [])) s2Step352HeadGv_Incoming s2Step352HeadGv_checked h3 s2Step352HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step352HeadFBefore s2Step352HeadFAfter s2Step352HeadFvAfter
    s2Step352HeadFRow s2Step352HeadFOut 97 s2Step352HeadFFresh [(s2Step352HeadGvRow,193),(s2Step352HeadFvRow,193)] [s2Step352HeadGvFresh,s2Step352HeadFvFresh] [s2Step352HeadGvOut,s2Step352HeadFvOut]
    (growRow 768 s2Step352HeadFFresh) ((growRow 771 s2Step352HeadGvFresh ++ (growRow 770 s2Step352HeadFvFresh ++ []))) s2Step352HeadF_Incoming s2Step352HeadF_checked h2 s2Step352HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step352HeadGBefore s2Step352HeadGAfter s2Step352HeadFvAfter
    s2Step352HeadGRow s2Step352HeadGOut 97 s2Step352HeadGFresh [(s2Step352HeadFRow,97),(s2Step352HeadGvRow,193),(s2Step352HeadFvRow,193)] [s2Step352HeadFFresh,s2Step352HeadGvFresh,s2Step352HeadFvFresh] [s2Step352HeadFOut,s2Step352HeadGvOut,s2Step352HeadFvOut]
    (growRow 769 s2Step352HeadGFresh) ((growRow 768 s2Step352HeadFFresh ++ (growRow 771 s2Step352HeadGvFresh ++ (growRow 770 s2Step352HeadFvFresh ++ [])))) s2Step352HeadG_Incoming s2Step352HeadG_checked h1 s2Step352HeadG_Outgoing
  exact h0

private theorem s2Step352HeadBank_checked : compileHmrBankResizeLog .headroom s2Step352HeadGBefore ⟨s2Step352HeadFRow,s2Step352HeadGRow,s2Step352HeadFvRow,s2Step352HeadGvRow⟩ ⟨97,97,193,193⟩ [s2Step352HeadGFresh,s2Step352HeadFFresh,s2Step352HeadGvFresh,s2Step352HeadFvFresh]=
    some (s2Step352HeadFvAfter,⟨s2Step352HeadFOut,s2Step352HeadGOut,s2Step352HeadFvOut,s2Step352HeadGvOut⟩,(growRow 769 s2Step352HeadGFresh ++ (growRow 768 s2Step352HeadFFresh ++ (growRow 771 s2Step352HeadGvFresh ++ (growRow 770 s2Step352HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step352HeadBank_rows]
  rfl

private theorem s2Step352Front_checked : compileHmrSourceFrontLog s2Step352EntryFBefore s2Step352FrontBank 96 192 ⟨95,94,193,192⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step352FrontLog=some s2Step352FrontPlan := by
  have pairEq : s2Step352FrontPair=⟨s2Step352HeadFRow,s2Step352HeadGRow,s2Step352HeadFvRow,s2Step352HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step352FrontHead=⟨s2Step352ExitFRow,s2Step352ExitGRow,s2Step352ExitFvRow,s2Step352ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step352Add0A=s2Step352FrontHead.f.wires := by decide +kernel
  have gEq : s2Step352Add0B=s2Step352FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step352Add1A=s2Step352FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step352Add1B=s2Step352FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step352EntryFBefore s2Step352FrontBank 96 192 ⟨95,94,193,192⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step352FrontLog s2Step352FrontPlan
  · exact s2Step352Front_entry
  · exact s2Step352EntryBank_checked
  · exact s2Step352Front_sigma
  · rfl
  · exact s2Step352Front_branch
  · rfl
  · simpa only [s2Step352FrontPlan,pairEq] using s2Step352HeadBank_checked
  · simpa only [s2Step352FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step352F4_checked
  · exact s2Step352Counter_checked
  · rfl
  · simpa only [s2Step352FrontPlan,headEq] using s2Step352ExitBank_checked

private theorem s2Step352Complete_explicit_checked : compileHmrEarlyStepLog s2Step352EntryFBefore s2Step352FrontBank 96 192 ⟨95,94,193,192⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step352CompleteLog=some s2Step352CompletePlan := by
  let Q := s2Step352EarlyControlPlan
  have hq := s2Step352EarlyControl_plan_checked
  have fv1 : s2Step352CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step352CompleteOut.fv.payload[2]?.getD s2Step352CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step352CompleteOut.fv.payload[3]?.getD s2Step352CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step352CompleteOut.fv.payload[4]?.getD s2Step352CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step352EntryFBefore s2Step352EarlyControlArena s2Step352FrontBank 96 192 ⟨95,94,193,192⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step352CompleteLog s2Step352FrontPlan Q
    s2Step352Front_checked s2Step352Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step352Complete_owned s2Step352Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step352EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 808 s2Step352CompleteOut.fv.second (s2Step352CompleteOut.fv.payload[2]?.getD s2Step352CompleteOut.fv.sign) (s2Step352CompleteOut.fv.payload[3]?.getD s2Step352CompleteOut.fv.sign) (s2Step352CompleteOut.fv.payload[4]?.getD s2Step352CompleteOut.fv.sign) 796 60 s2Step352EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep352Arena : Arena := s2Step352EntryFBefore
def s2PrivateStep352Bank : WindowBank := s2Step352FrontBank
def s2PrivateStep352Spec : HmrSourceWalkStepLog := ⟨96,192,⟨95,94,193,192⟩,60,.early s2Step352CompleteLog⟩
def s2PrivateStep352Plan : HmrSourceStepPlan := .early s2Step352CompletePlan
theorem s2PrivateStep352_source : s2PrivateStep352Spec=s2ObservedLogs352[0] := rfl
theorem s2PrivateStep352_checked : compileHmrSourceStepLog s2PrivateStep352Arena s2PrivateStep352Bank
    s2PrivateStep352Spec.fgWidth s2PrivateStep352Spec.vWidth s2PrivateStep352Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]
    6 498 352 s2PrivateStep352Spec.need none s2PrivateStep352Spec.log=some s2PrivateStep352Plan := by
  change compileHmrSourceStepLog s2Step352EntryFBefore s2Step352FrontBank 96 192 ⟨95,94,193,192⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 6 498 352 60 none (.early s2Step352CompleteLog)=some (.early s2Step352CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 352<498)]
  rw [s2Step352Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
