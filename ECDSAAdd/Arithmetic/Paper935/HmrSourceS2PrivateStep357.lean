import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep355
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

private def s2Step357CompleteMoves : List (Wire × Wire) := [(832,604)]

private def s2Step357EarlyControlLog : HmrEarlyControlLog := ⟨[832, 790, 903, 821, 812],[839],[800],[789, 827, 844, 907, 913, 914],[]⟩

private def s2Step357FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [812], [], [808]],[[839], [821], [790], [903]],[[], [], [], []]⟩,[785],[796],[800],[789],[827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[800, 789, 827, 844]⟩

private def s2Step357CompleteLog : HmrEarlyStepLog := ⟨s2Step357FrontLog,s2Step357CompleteMoves,s2Step357EarlyControlLog⟩

private def s2Step357ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603],768⟩

private def s2Step357ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791],770⟩

private def s2Step357ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91],769⟩

private def s2Step357ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808],771⟩

private def s2Step357FrontOut : WindowBank := ⟨s2Step357ExitFOut,s2Step357ExitGOut,s2Step357ExitFvOut,s2Step357ExitGvOut⟩

private def s2Step357CompleteOut : WindowBank := s2Step357FrontOut.repacked s2Step357CompleteMoves

private def s2Step357EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step357EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step357EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step357EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step357EarlyControlPositiveArena,[839],s2Step357EarlyControlEqualityArena,[800],⟨⟨785,false⟩,[⟨⟨839,false⟩,800⟩]⟩⟩

private def s2Step357EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<915)),Finset.filter_subset _ _⟩

private def s2Step357EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<915)),Finset.filter_subset _ _⟩

private def s2Step357EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step357EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step357EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step357EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step357EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,832⟩,⟨⟨774,false⟩,790⟩,⟨⟨775,false⟩,903⟩,⟨⟨776,false⟩,821⟩,⟨⟨777,false⟩,812⟩]⟩

private def s2Step357EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step357EarlyControlZeroArena,s2Step357EarlyControlZeroPlan,s2Step357EarlyControlClassPlan,s2Step357EarlyControlFlagArena,s2Step357EarlyControlFittedArena,s2Step357EarlyControlHistoryArena,s2Step357EarlyControlSigmaArena,s2Step357EarlyControlOutputArena,s2Step357EarlyControlLog⟩

private def s2Step357CounterWork : List Wire := [800, 789, 827, 844]

private theorem s2Step357Counter_bounded : s2Step357CounterWork.toFinset⊆arenaWires := by norm_num [s2Step357CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step357HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step357CounterDuring : Arena := ⟨s2Step357HeadFvAfter.live∪s2Step357CounterWork.toFinset,Finset.union_subset s2Step357HeadFvAfter.bounded s2Step357Counter_bounded⟩

private def s2Step357EntryFFresh : List Wire := []

private def s2Step357EntryFvFresh : List Wire := []

private def s2Step357EntryGFresh : List Wire := [812]

private def s2Step357EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step357EntryGvFresh : List Wire := [808]

private def s2Step357ExitFExtra : List Wire := [604, 821]

private def s2Step357ExitFvExtra : List Wire := [903]

private def s2Step357ExitGExtra : List Wire := [812, 839]

private def s2Step357ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<604) ∨ (605≤q ∧ q<789) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step357ExitGvExtra : List Wire := [790]

private def s2Step357Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step357Add0Work : List Wire := [827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step357Add0_bounded : s2Step357Add0Work.toFinset⊆arenaWires := by
  have h : s2Step357Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step357Add0During : Arena := ⟨s2Step357Add0Arena.live∪s2Step357Add0Work.toFinset,Finset.union_subset s2Step357Add0Arena.bounded s2Step357Add0_bounded⟩

private def s2Step357Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step357Add1Work : List Wire := [827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step357Add1_bounded : s2Step357Add1Work.toFinset⊆arenaWires := by
  have h : s2Step357Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step357Add1During : Arena := ⟨s2Step357Add1Arena.live∪s2Step357Add1Work.toFinset,Finset.union_subset s2Step357Add1Arena.bounded s2Step357Add1_bounded⟩

private def s2Step357F4FlagArena : Arena := ⟨s2Step357HeadFvAfter.live∪{800},Finset.union_subset s2Step357HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step357F4Plan : HmrHybridF4Plan := ⟨s2Step357F4FlagArena,[800],s2Step357Add0Arena,[789],s2Step357Add0During,s2Step357Add0Work,s2Step357Add1During,s2Step357Add1Work⟩

private def s2Step357HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 821],768⟩

private def s2Step357HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 903],770⟩

private def s2Step357HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 812, 839],769⟩

private def s2Step357HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790],771⟩

private def s2Step357FrontHead : WindowBank := ⟨s2Step357HeadFOut,s2Step357HeadGOut,s2Step357HeadFvOut,s2Step357HeadGvOut⟩

private def s2Step357EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604],768⟩

private def s2Step357EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791],770⟩

private def s2Step357EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 812],769⟩

private def s2Step357EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808],771⟩

private def s2Step357FrontPair : WindowBank := ⟨s2Step357EntryFOut,s2Step357EntryGOut,s2Step357EntryFvOut,s2Step357EntryGvOut⟩

private def s2Step357FrontSigmaArena : Arena := ⟨s2Step357EntryGvAfter.live∪{785},Finset.union_subset s2Step357EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step357HeadFFresh : List Wire := [821]

private def s2Step357HeadFvFresh : List Wire := [903]

private def s2Step357HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step357HeadGFresh : List Wire := [839]

private def s2Step357HeadGvFresh : List Wire := [790]

private def s2Step357FrontPlan : HmrSourceFront := ⟨s2Step357EntryGvAfter,s2Step357FrontPair,(growRow 768 s2Step357EntryFFresh ++ (growRow 769 s2Step357EntryGFresh ++ (growRow 770 s2Step357EntryFvFresh ++ (growRow 771 s2Step357EntryGvFresh ++ [])))),s2Step357FrontSigmaArena,[785],s2Step357HeadGBefore,[796],
  s2Step357HeadFvAfter,s2Step357FrontHead,(growRow 769 s2Step357HeadGFresh ++ (growRow 768 s2Step357HeadFFresh ++ (growRow 771 s2Step357HeadGvFresh ++ (growRow 770 s2Step357HeadFvFresh ++ [])))),s2Step357F4Plan,s2Step357CounterDuring,s2Step357CounterWork,s2Step357ExitGvAfter,s2Step357FrontOut,(shrinkRow 769 s2Step357ExitGExtra ++ (shrinkRow 768 s2Step357ExitFExtra ++ (shrinkRow 770 s2Step357ExitFvExtra ++ (shrinkRow 771 s2Step357ExitGvExtra ++ []))))⟩

private def s2Step357CompletePlan : HmrEarlyStepPlan := ⟨s2Step357FrontPlan,s2Step357EarlyControlArena,s2Step357EarlyControlPlan,s2Step357CompleteMoves⟩

private theorem s2Step357Complete_apart : List.Disjoint (s2Step357CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [785, 796, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] := by
  have nd : ((s2Step357CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[785, 796, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step357Complete_owned : (s2Step357CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step357EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step357EarlyControlArena (fun q => (0≤q ∧ q<789) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private def s2Step357CompleteMoveArena : Arena := ⟨s2Step357ExitGvAfter.live∪{604},Finset.union_subset s2Step357ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step357Complete_repack : s2Step357ExitGvAfter.checkRepack s2Step357CompleteMoves=some s2Step357EarlyControlArena := by
  have owned : 832∈s2Step357ExitGvAfter.live := by norm_num [s2Step357ExitGvAfter,arenaWires]
  have reserve : s2Step357ExitGvAfter.reserve {604}=some s2Step357CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step357ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step357CompleteMoveArena.retireSet {832}=s2Step357EarlyControlArena := by
    unfold Arena.retireSet s2Step357EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step357CompleteMoveArena,s2Step357ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step357CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step357CompleteMoveArena.retireSet {832}).checkRepack []=some s2Step357EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step357EarlyControl_branchOwned : ([796] : List Wire).toFinset⊆s2Step357EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step357EarlyControlSigmaArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step357EarlyControl_branch : compileHmrBranchRetirement s2Step357EarlyControlSigmaArena 796=some s2Step357EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step357EarlyControl_branchOwned
  · ext q
    simp [s2Step357EarlyControlOutputArena,s2Step357EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step357EarlyControl_classEqualityBorrow : s2Step357EarlyControlPositiveArena.checkBorrow (([785, 839] : List Wire).length-1) s2Step357EarlyControlLog.classWork=some s2Step357EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step357EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step357EarlyControlPositiveArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step357EarlyControlEqualityArena,s2Step357EarlyControlPositiveArena,s2Step357EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step357EarlyControl_classEqualityOwned : ([785, 839] : List Wire).toFinset⊆s2Step357EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step357EarlyControlPositiveArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step357EarlyControl_classEquality : compileHmrEqualityLog s2Step357EarlyControlPositiveArena [785, 839] 0 s2Step357EarlyControlLog.classWork=some (s2Step357EarlyControlEqualityArena,s2Step357EarlyControlLog.classWork,s2Step357EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step357EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step357EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step357EarlyControl_classOwned : ([777, 812, 785] : List Wire).toFinset⊆s2Step357EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step357EarlyControlZeroArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step357EarlyControl_positiveBorrow : s2Step357EarlyControlZeroArena.checkBorrow (1) s2Step357EarlyControlLog.positiveWork=some s2Step357EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step357EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step357EarlyControlZeroArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step357EarlyControlPositiveArena,s2Step357EarlyControlZeroArena,s2Step357EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step357EarlyControl_class : compileHmrSourceClassLog s2Step357EarlyControlZeroArena false 777 s2Step357EarlyControlZeroPlan.top 0 785 s2Step357EarlyControlLog.positiveWork s2Step357EarlyControlLog.classWork=some s2Step357EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step357EarlyControlClassPlan s2Step357EarlyControlZeroArena false 777 s2Step357EarlyControlZeroPlan.top 0 785
  constructor
  · decide +kernel
  · exact s2Step357EarlyControl_classOwned
  · exact s2Step357EarlyControl_positiveBorrow
  · exact s2Step357EarlyControl_classEquality

private theorem s2Step357EarlyControl_entryRecordOwned : ([796, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step357EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step357EarlyControlArena (fun q => (0≤q ∧ q<789) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step357EarlyControl_entrySigmaOwned : ([785, 254] : List Wire).toFinset⊆s2Step357EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step357EarlyControlArena (fun q => (0≤q ∧ q<789) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step357EarlyControl_fitBorrow : s2Step357EarlyControlFlagArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step357EarlyControlLog.recordFresh=some s2Step357EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step357EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step357EarlyControlFlagArena (fun q => (0≤q ∧ q<915)) rfl
      decide +kernel
    · ext q
      simp [s2Step357EarlyControlFittedArena,s2Step357EarlyControlFlagArena,s2Step357EarlyControlLog,arenaWires]

private theorem s2Step357EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step357EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step357EarlyControlFlagArena (fun q => (0≤q ∧ q<915)) rfl
  decide +kernel

private theorem s2Step357EarlyControl_fit : compileHmrRecordGrowLog s2Step357EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step357EarlyControlLog.recordFresh=some s2Step357EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step357EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step357EarlyControl_fitBorrow

private theorem s2Step357EarlyControl_flagsBorrow : s2Step357EarlyControlEqualityArena.checkBorrow (6) s2Step357EarlyControlLog.flagWork=some s2Step357EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step357EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step357EarlyControlEqualityArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step357EarlyControlFlagArena,s2Step357EarlyControlEqualityArena,s2Step357EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step357EarlyControl_flagsOwned : ([800, 253, 252, 251] : List Wire).toFinset⊆s2Step357EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step357EarlyControlEqualityArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step357EarlyControl_flags : compileHmrFlagsLog s2Step357EarlyControlClassPlan.equalityArena s2Step357EarlyControlClassPlan.equality.top 253 252 251 s2Step357EarlyControlLog.flagWork=some s2Step357EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step357EarlyControl_flagsOwned⟩
  · exact s2Step357EarlyControl_flagsBorrow

private theorem s2Step357EarlyControl_historyBorrow : s2Step357EarlyControlArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step357EarlyControlLog.recordFresh=some s2Step357EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step357EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step357EarlyControlArena (fun q => (0≤q ∧ q<789) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step357EarlyControlHistoryArena,s2Step357EarlyControlArena,s2Step357EarlyControlLog,arenaWires]

private theorem s2Step357EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step357EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step357EarlyControlArena (fun q => (0≤q ∧ q<789) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step357EarlyControl_history : compileHmrRecordGrowLog s2Step357EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step357EarlyControlLog.recordFresh=some s2Step357EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step357EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step357EarlyControl_historyBorrow

private theorem s2Step357EarlyControl_sigmaOwned : ([254, 785] : List Wire).toFinset⊆s2Step357EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step357EarlyControlHistoryArena (fun q => (0≤q ∧ q<789) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step357EarlyControl_sigmaReleaseOwned : ([785] : List Wire).toFinset⊆s2Step357EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step357EarlyControlHistoryArena (fun q => (0≤q ∧ q<789) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step357EarlyControl_sigmaRelease : s2Step357EarlyControlHistoryArena.release {785} (fun _ => false)=some s2Step357EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step357EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step357EarlyControlSigmaArena,s2Step357EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step357EarlyControl_sigma : compileHmrSigmaDropLog s2Step357EarlyControlHistoryArena false 0 0 254 785 []=some s2Step357EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step357EarlyControl_sigmaOwned⟩
  · exact s2Step357EarlyControl_sigmaRelease

private theorem s2Step357EarlyControl_zeroBorrow : s2Step357EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step357EarlyControlLog.zeroWork=some s2Step357EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step357EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step357EarlyControlArena (fun q => (0≤q ∧ q<789) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step357EarlyControlZeroArena,s2Step357EarlyControlArena,s2Step357EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step357EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step357EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step357EarlyControlArena (fun q => (0≤q ∧ q<789) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step357EarlyControl_zero : compileHmrEqualityLog s2Step357EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step357EarlyControlLog.zeroWork=some (s2Step357EarlyControlZeroArena,s2Step357EarlyControlLog.zeroWork,s2Step357EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step357EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step357EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step357EarlyControl_logged : s2Step357EarlyControlPlan.Logged s2Step357EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 785 254 253 252 251 796 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step357EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step357EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step357EarlyControl_zero
  · exact s2Step357EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step357EarlyControl_flags
  · exact s2Step357EarlyControl_fit
  · exact s2Step357EarlyControl_history
  · exact s2Step357EarlyControl_sigma
  · exact s2Step357EarlyControl_branch

private theorem s2Step357EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step357EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 785 254 253 252 251 796 60 s2Step357EarlyControlLog=some s2Step357EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step357EarlyControlPlan s2Step357EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 785 254 253 252 251 796 60 s2Step357EarlyControl_logged

private def s2Step357EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step357EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604],768⟩

private def s2Step357EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791],770⟩

private def s2Step357EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91],769⟩

private def s2Step357EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849],771⟩

private def s2Step357FrontBank : WindowBank := ⟨s2Step357EntryFRow,s2Step357EntryGRow,s2Step357EntryFvRow,s2Step357EntryGvRow⟩

private def s2Step357Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 821, 768]

private def s2Step357Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 812, 839, 769]

private def s2Step357Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 903, 770]

private def s2Step357Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 771]

private theorem s2Step357Counter_apart : Disjoint s2Step357HeadFvAfter.live s2Step357CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step357HeadFvAfter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step357Counter_borrowed : s2Step357HeadFvAfter.checkBorrow 4 s2Step357CounterWork=some s2Step357CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step357HeadFvAfter s2Step357CounterDuring s2Step357CounterWork.toFinset s2Step357Counter_bounded s2Step357Counter_apart rfl

private theorem s2Step357Counter_owned : (785::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step357HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step357HeadFvAfter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step357Counter_checked : compileHmrCounterStepLog s2Step357HeadFvAfter true 785 [772, 773, 774, 775, 776, 777] s2Step357CounterWork=some s2Step357CounterDuring := by
  have owned : ∀q∈785::[772, 773, 774, 775, 776, 777],q∈s2Step357HeadFvAfter.live := fun q hq => s2Step357Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step357Counter_borrowed

private def s2Step357EntryFAfter : Arena := s2Step357EntryFBefore

private theorem s2Step357EntryBank_incomingDistinct : ([s2Step357EntryFRow,s2Step357EntryGRow,s2Step357EntryFvRow,s2Step357EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step357EntryF_Incoming : rowsOwned s2Step357EntryFBefore [s2Step357EntryFRow,s2Step357EntryGRow,s2Step357EntryFvRow,s2Step357EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step357EntryFRow,s2Step357EntryGRow,s2Step357EntryFvRow,s2Step357EntryGvRow] 0 s2Step357EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step357EntryFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step357EntryBank_outgoingOwned : rowsOwned s2Step357EntryGvAfter [s2Step357EntryFOut,s2Step357EntryGOut,s2Step357EntryFvOut,s2Step357EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step357EntryGvAfter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step357EntryF_Outgoing : rowsOwned s2Step357EntryGvAfter [s2Step357EntryFOut,s2Step357EntryGOut,s2Step357EntryFvOut,s2Step357EntryGvOut] :=
  hmrRows_owned_drop s2Step357EntryGvAfter [s2Step357EntryFOut,s2Step357EntryGOut,s2Step357EntryFvOut,s2Step357EntryGvOut] 0 s2Step357EntryBank_outgoingOwned

private theorem s2Step357EntryF_distinct : (s2Step357EntryFRow.sign::s2Step357EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step357EntryF_owned : (s2Step357EntryFRow.sign::s2Step357EntryFRow.payload).toFinset⊆s2Step357EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step357EntryFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step357EntryF_reserved : s2Step357EntryFBefore.reserve s2Step357EntryFFresh.toFinset=some s2Step357EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step357EntryFFresh,arenaWires]
  · norm_num [s2Step357EntryFBefore,s2Step357EntryFFresh,arenaWires]
  · simp only [s2Step357EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step357EntryF_checked : planRowResizeLog s2Step357EntryFBefore s2Step357EntryFRow 93 s2Step357EntryFFresh=
    some (s2Step357EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604],768⟩,growRow 768 s2Step357EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step357EntryFBefore s2Step357EntryFAfter s2Step357EntryFRow 93 s2Step357EntryFFresh
    s2Step357EntryF_distinct s2Step357EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step357EntryF_reserved
  have rowEq : WindowRow.mk (s2Step357EntryFRow.payload++s2Step357EntryFFresh) s2Step357EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step357EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step357EntryFvAfter : Arena := s2Step357EntryGAfter

private def s2Step357EntryFvBefore : Arena := s2Step357EntryGAfter

private theorem s2Step357EntryFv_Incoming : rowsOwned s2Step357EntryFvBefore [s2Step357EntryFvRow,s2Step357EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step357EntryFRow,s2Step357EntryGRow,s2Step357EntryFvRow,s2Step357EntryGvRow] 2 s2Step357EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step357EntryFvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step357EntryFv_Outgoing : rowsOwned s2Step357EntryGvAfter [s2Step357EntryFvOut,s2Step357EntryGvOut] :=
  hmrRows_owned_drop s2Step357EntryGvAfter [s2Step357EntryFOut,s2Step357EntryGOut,s2Step357EntryFvOut,s2Step357EntryGvOut] 2 s2Step357EntryBank_outgoingOwned

private theorem s2Step357EntryFv_distinct : (s2Step357EntryFvRow.sign::s2Step357EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step357EntryFv_owned : (s2Step357EntryFvRow.sign::s2Step357EntryFvRow.payload).toFinset⊆s2Step357EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step357EntryFvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step357EntryFv_reserved : s2Step357EntryFvBefore.reserve s2Step357EntryFvFresh.toFinset=some s2Step357EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step357EntryFvFresh,arenaWires]
  · norm_num [s2Step357EntryFvBefore,s2Step357EntryGAfter,s2Step357EntryFvFresh,arenaWires]
  · simp only [s2Step357EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step357EntryFv_checked : planRowResizeLog s2Step357EntryFvBefore s2Step357EntryFvRow 195 s2Step357EntryFvFresh=
    some (s2Step357EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791],770⟩,growRow 770 s2Step357EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step357EntryFvBefore s2Step357EntryFvAfter s2Step357EntryFvRow 195 s2Step357EntryFvFresh
    s2Step357EntryFv_distinct s2Step357EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step357EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step357EntryFvRow.payload++s2Step357EntryFvFresh) s2Step357EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step357EntryGBefore : Arena := s2Step357EntryFBefore

private theorem s2Step357EntryG_Incoming : rowsOwned s2Step357EntryGBefore [s2Step357EntryGRow,s2Step357EntryFvRow,s2Step357EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step357EntryFRow,s2Step357EntryGRow,s2Step357EntryFvRow,s2Step357EntryGvRow] 1 s2Step357EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step357EntryGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step357EntryG_Outgoing : rowsOwned s2Step357EntryGvAfter [s2Step357EntryGOut,s2Step357EntryFvOut,s2Step357EntryGvOut] :=
  hmrRows_owned_drop s2Step357EntryGvAfter [s2Step357EntryFOut,s2Step357EntryGOut,s2Step357EntryFvOut,s2Step357EntryGvOut] 1 s2Step357EntryBank_outgoingOwned

private theorem s2Step357EntryG_distinct : (s2Step357EntryGRow.sign::s2Step357EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step357EntryG_owned : (s2Step357EntryGRow.sign::s2Step357EntryGRow.payload).toFinset⊆s2Step357EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step357EntryGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step357EntryG_reserved : s2Step357EntryGBefore.reserve s2Step357EntryGFresh.toFinset=some s2Step357EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step357EntryGFresh,arenaWires]
  · norm_num [s2Step357EntryGBefore,s2Step357EntryFBefore,s2Step357EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step357EntryGAfter,s2Step357EntryGBefore,s2Step357EntryFBefore,s2Step357EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step357EntryG_checked : planRowResizeLog s2Step357EntryGBefore s2Step357EntryGRow 93 s2Step357EntryGFresh=
    some (s2Step357EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 812],769⟩,growRow 769 s2Step357EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step357EntryGBefore s2Step357EntryGAfter s2Step357EntryGRow 93 s2Step357EntryGFresh
    s2Step357EntryG_distinct s2Step357EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step357EntryG_reserved
  have rowEq : WindowRow.mk (s2Step357EntryGRow.payload++s2Step357EntryGFresh) s2Step357EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 812],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step357EntryGvBefore : Arena := s2Step357EntryGAfter

private theorem s2Step357EntryGv_Incoming : rowsOwned s2Step357EntryGvBefore [s2Step357EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step357EntryFRow,s2Step357EntryGRow,s2Step357EntryFvRow,s2Step357EntryGvRow] 3 s2Step357EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step357EntryGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step357EntryGv_Outgoing : rowsOwned s2Step357EntryGvAfter [s2Step357EntryGvOut] :=
  hmrRows_owned_drop s2Step357EntryGvAfter [s2Step357EntryFOut,s2Step357EntryGOut,s2Step357EntryFvOut,s2Step357EntryGvOut] 3 s2Step357EntryBank_outgoingOwned

private theorem s2Step357EntryGv_distinct : (s2Step357EntryGvRow.sign::s2Step357EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step357EntryGv_owned : (s2Step357EntryGvRow.sign::s2Step357EntryGvRow.payload).toFinset⊆s2Step357EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step357EntryGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step357EntryGv_reserved : s2Step357EntryGvBefore.reserve s2Step357EntryGvFresh.toFinset=some s2Step357EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step357EntryGvFresh,arenaWires]
  · norm_num [s2Step357EntryGvBefore,s2Step357EntryGAfter,s2Step357EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step357EntryGvAfter,s2Step357EntryGvBefore,s2Step357EntryGAfter,s2Step357EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step357EntryGv_checked : planRowResizeLog s2Step357EntryGvBefore s2Step357EntryGvRow 195 s2Step357EntryGvFresh=
    some (s2Step357EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808],771⟩,growRow 771 s2Step357EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step357EntryGvBefore s2Step357EntryGvAfter s2Step357EntryGvRow 195 s2Step357EntryGvFresh
    s2Step357EntryGv_distinct s2Step357EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step357EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step357EntryGvRow.payload++s2Step357EntryGvFresh) s2Step357EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step357EntryBank_rows : planWindowRowsLog s2Step357EntryFBefore [(s2Step357EntryFRow,93),(s2Step357EntryGRow,93),(s2Step357EntryFvRow,195),(s2Step357EntryGvRow,195)] [s2Step357EntryFFresh,s2Step357EntryGFresh,s2Step357EntryFvFresh,s2Step357EntryGvFresh]=
    some (s2Step357EntryGvAfter,[s2Step357EntryFOut,s2Step357EntryGOut,s2Step357EntryFvOut,s2Step357EntryGvOut],(growRow 768 s2Step357EntryFFresh ++ (growRow 769 s2Step357EntryGFresh ++ (growRow 770 s2Step357EntryFvFresh ++ (growRow 771 s2Step357EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step357EntryGvAfter [] []=some (s2Step357EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step357EntryGvBefore s2Step357EntryGvAfter s2Step357EntryGvAfter
    s2Step357EntryGvRow s2Step357EntryGvOut 195 s2Step357EntryGvFresh [] [] []
    (growRow 771 s2Step357EntryGvFresh) ([]) s2Step357EntryGv_Incoming s2Step357EntryGv_checked h4 s2Step357EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step357EntryFvBefore s2Step357EntryFvAfter s2Step357EntryGvAfter
    s2Step357EntryFvRow s2Step357EntryFvOut 195 s2Step357EntryFvFresh [(s2Step357EntryGvRow,195)] [s2Step357EntryGvFresh] [s2Step357EntryGvOut]
    (growRow 770 s2Step357EntryFvFresh) ((growRow 771 s2Step357EntryGvFresh ++ [])) s2Step357EntryFv_Incoming s2Step357EntryFv_checked h3 s2Step357EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step357EntryGBefore s2Step357EntryGAfter s2Step357EntryGvAfter
    s2Step357EntryGRow s2Step357EntryGOut 93 s2Step357EntryGFresh [(s2Step357EntryFvRow,195),(s2Step357EntryGvRow,195)] [s2Step357EntryFvFresh,s2Step357EntryGvFresh] [s2Step357EntryFvOut,s2Step357EntryGvOut]
    (growRow 769 s2Step357EntryGFresh) ((growRow 770 s2Step357EntryFvFresh ++ (growRow 771 s2Step357EntryGvFresh ++ []))) s2Step357EntryG_Incoming s2Step357EntryG_checked h2 s2Step357EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step357EntryFBefore s2Step357EntryFAfter s2Step357EntryGvAfter
    s2Step357EntryFRow s2Step357EntryFOut 93 s2Step357EntryFFresh [(s2Step357EntryGRow,93),(s2Step357EntryFvRow,195),(s2Step357EntryGvRow,195)] [s2Step357EntryGFresh,s2Step357EntryFvFresh,s2Step357EntryGvFresh] [s2Step357EntryGOut,s2Step357EntryFvOut,s2Step357EntryGvOut]
    (growRow 768 s2Step357EntryFFresh) ((growRow 769 s2Step357EntryGFresh ++ (growRow 770 s2Step357EntryFvFresh ++ (growRow 771 s2Step357EntryGvFresh ++ [])))) s2Step357EntryF_Incoming s2Step357EntryF_checked h1 s2Step357EntryF_Outgoing
  exact h0

private theorem s2Step357EntryBank_checked : compileHmrBankResizeLog .entry s2Step357EntryFBefore ⟨s2Step357EntryFRow,s2Step357EntryGRow,s2Step357EntryFvRow,s2Step357EntryGvRow⟩ ⟨93,93,195,195⟩ [s2Step357EntryFFresh,s2Step357EntryGFresh,s2Step357EntryFvFresh,s2Step357EntryGvFresh]=
    some (s2Step357EntryGvAfter,⟨s2Step357EntryFOut,s2Step357EntryGOut,s2Step357EntryFvOut,s2Step357EntryGvOut⟩,(growRow 768 s2Step357EntryFFresh ++ (growRow 769 s2Step357EntryGFresh ++ (growRow 770 s2Step357EntryFvFresh ++ (growRow 771 s2Step357EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step357EntryBank_rows]
  rfl

private def s2Step357ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<604) ∨ (605≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step357ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step357ExitFBefore : Arena := s2Step357ExitGAfter

private def s2Step357ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 821],768⟩

private def s2Step357ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 903],770⟩

private def s2Step357ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 812, 839],769⟩

private def s2Step357ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790],771⟩

private theorem s2Step357ExitBank_incomingDistinct : ([s2Step357ExitGRow,s2Step357ExitFRow,s2Step357ExitFvRow,s2Step357ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step357ExitF_Incoming : rowsOwned s2Step357ExitFBefore [s2Step357ExitFRow,s2Step357ExitFvRow,s2Step357ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step357ExitGRow,s2Step357ExitFRow,s2Step357ExitFvRow,s2Step357ExitGvRow] 1 s2Step357ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step357ExitFBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step357ExitBank_outgoingOwned : rowsOwned s2Step357ExitGvAfter [s2Step357ExitGOut,s2Step357ExitFOut,s2Step357ExitFvOut,s2Step357ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step357ExitGvAfter (fun q => (0≤q ∧ q<604) ∨ (605≤q ∧ q<789) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step357ExitF_Outgoing : rowsOwned s2Step357ExitGvAfter [s2Step357ExitFOut,s2Step357ExitFvOut,s2Step357ExitGvOut] :=
  hmrRows_owned_drop s2Step357ExitGvAfter [s2Step357ExitGOut,s2Step357ExitFOut,s2Step357ExitFvOut,s2Step357ExitGvOut] 1 s2Step357ExitBank_outgoingOwned

private theorem s2Step357ExitF_distinct : (s2Step357ExitFRow.sign::s2Step357ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step357ExitF_owned : (s2Step357ExitFRow.sign::s2Step357ExitFRow.payload).toFinset⊆s2Step357ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step357ExitFBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step357ExitF_retired : s2Step357ExitFBefore.retireSet s2Step357ExitFExtra.toFinset=s2Step357ExitFAfter := by
  unfold Arena.retireSet s2Step357ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step357ExitFBefore,s2Step357ExitGAfter,s2Step357ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step357ExitF_checked : planRowResizeLog s2Step357ExitFBefore s2Step357ExitFRow 92 []=
    some (s2Step357ExitFAfter,s2Step357ExitFOut,shrinkRow 768 s2Step357ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step357ExitFBefore s2Step357ExitFRow 92 s2Step357ExitF_distinct s2Step357ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step357ExitFRow.payload.take 92) s2Step357ExitFRow.sign=s2Step357ExitFOut := by decide +kernel
  have hi : s2Step357ExitFRow.payload.drop 92=s2Step357ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step357ExitF_retired] at result
  exact result

private def s2Step357ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<604) ∨ (605≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step357ExitFvBefore : Arena := s2Step357ExitFAfter

private theorem s2Step357ExitFv_Incoming : rowsOwned s2Step357ExitFvBefore [s2Step357ExitFvRow,s2Step357ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step357ExitGRow,s2Step357ExitFRow,s2Step357ExitFvRow,s2Step357ExitGvRow] 2 s2Step357ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step357ExitFvBefore (fun q => (0≤q ∧ q<604) ∨ (605≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step357ExitFv_Outgoing : rowsOwned s2Step357ExitGvAfter [s2Step357ExitFvOut,s2Step357ExitGvOut] :=
  hmrRows_owned_drop s2Step357ExitGvAfter [s2Step357ExitGOut,s2Step357ExitFOut,s2Step357ExitFvOut,s2Step357ExitGvOut] 2 s2Step357ExitBank_outgoingOwned

private theorem s2Step357ExitFv_distinct : (s2Step357ExitFvRow.sign::s2Step357ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step357ExitFv_owned : (s2Step357ExitFvRow.sign::s2Step357ExitFvRow.payload).toFinset⊆s2Step357ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step357ExitFvBefore (fun q => (0≤q ∧ q<604) ∨ (605≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step357ExitFv_retired : s2Step357ExitFvBefore.retireSet s2Step357ExitFvExtra.toFinset=s2Step357ExitFvAfter := by
  unfold Arena.retireSet s2Step357ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step357ExitFvBefore,s2Step357ExitFAfter,s2Step357ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step357ExitFv_checked : planRowResizeLog s2Step357ExitFvBefore s2Step357ExitFvRow 195 []=
    some (s2Step357ExitFvAfter,s2Step357ExitFvOut,shrinkRow 770 s2Step357ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step357ExitFvBefore s2Step357ExitFvRow 195 s2Step357ExitFv_distinct s2Step357ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step357ExitFvRow.payload.take 195) s2Step357ExitFvRow.sign=s2Step357ExitFvOut := by decide +kernel
  have hi : s2Step357ExitFvRow.payload.drop 195=s2Step357ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step357ExitFv_retired] at result
  exact result

private def s2Step357ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private theorem s2Step357ExitG_Incoming : rowsOwned s2Step357ExitGBefore [s2Step357ExitGRow,s2Step357ExitFRow,s2Step357ExitFvRow,s2Step357ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step357ExitGRow,s2Step357ExitFRow,s2Step357ExitFvRow,s2Step357ExitGvRow] 0 s2Step357ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step357ExitGBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step357ExitG_Outgoing : rowsOwned s2Step357ExitGvAfter [s2Step357ExitGOut,s2Step357ExitFOut,s2Step357ExitFvOut,s2Step357ExitGvOut] :=
  hmrRows_owned_drop s2Step357ExitGvAfter [s2Step357ExitGOut,s2Step357ExitFOut,s2Step357ExitFvOut,s2Step357ExitGvOut] 0 s2Step357ExitBank_outgoingOwned

private theorem s2Step357ExitG_distinct : (s2Step357ExitGRow.sign::s2Step357ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step357ExitG_owned : (s2Step357ExitGRow.sign::s2Step357ExitGRow.payload).toFinset⊆s2Step357ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step357ExitGBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step357ExitG_retired : s2Step357ExitGBefore.retireSet s2Step357ExitGExtra.toFinset=s2Step357ExitGAfter := by
  unfold Arena.retireSet s2Step357ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step357ExitGBefore,s2Step357ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step357ExitG_checked : planRowResizeLog s2Step357ExitGBefore s2Step357ExitGRow 92 []=
    some (s2Step357ExitGAfter,s2Step357ExitGOut,shrinkRow 769 s2Step357ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step357ExitGBefore s2Step357ExitGRow 92 s2Step357ExitG_distinct s2Step357ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step357ExitGRow.payload.take 92) s2Step357ExitGRow.sign=s2Step357ExitGOut := by decide +kernel
  have hi : s2Step357ExitGRow.payload.drop 92=s2Step357ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step357ExitG_retired] at result
  exact result

private def s2Step357ExitGvBefore : Arena := s2Step357ExitFvAfter

private theorem s2Step357ExitGv_Incoming : rowsOwned s2Step357ExitGvBefore [s2Step357ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step357ExitGRow,s2Step357ExitFRow,s2Step357ExitFvRow,s2Step357ExitGvRow] 3 s2Step357ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step357ExitGvBefore (fun q => (0≤q ∧ q<604) ∨ (605≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step357ExitGv_Outgoing : rowsOwned s2Step357ExitGvAfter [s2Step357ExitGvOut] :=
  hmrRows_owned_drop s2Step357ExitGvAfter [s2Step357ExitGOut,s2Step357ExitFOut,s2Step357ExitFvOut,s2Step357ExitGvOut] 3 s2Step357ExitBank_outgoingOwned

private theorem s2Step357ExitGv_distinct : (s2Step357ExitGvRow.sign::s2Step357ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step357ExitGv_owned : (s2Step357ExitGvRow.sign::s2Step357ExitGvRow.payload).toFinset⊆s2Step357ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step357ExitGvBefore (fun q => (0≤q ∧ q<604) ∨ (605≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step357ExitGv_retired : s2Step357ExitGvBefore.retireSet s2Step357ExitGvExtra.toFinset=s2Step357ExitGvAfter := by
  unfold Arena.retireSet s2Step357ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step357ExitGvBefore,s2Step357ExitFvAfter,s2Step357ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step357ExitGv_checked : planRowResizeLog s2Step357ExitGvBefore s2Step357ExitGvRow 195 []=
    some (s2Step357ExitGvAfter,s2Step357ExitGvOut,shrinkRow 771 s2Step357ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step357ExitGvBefore s2Step357ExitGvRow 195 s2Step357ExitGv_distinct s2Step357ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step357ExitGvRow.payload.take 195) s2Step357ExitGvRow.sign=s2Step357ExitGvOut := by decide +kernel
  have hi : s2Step357ExitGvRow.payload.drop 195=s2Step357ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step357ExitGv_retired] at result
  exact result

private theorem s2Step357ExitBank_rows : planWindowRowsLog s2Step357ExitGBefore [(s2Step357ExitGRow,92),(s2Step357ExitFRow,92),(s2Step357ExitFvRow,195),(s2Step357ExitGvRow,195)] [[],[],[],[]]=
    some (s2Step357ExitGvAfter,[s2Step357ExitGOut,s2Step357ExitFOut,s2Step357ExitFvOut,s2Step357ExitGvOut],(shrinkRow 769 s2Step357ExitGExtra ++ (shrinkRow 768 s2Step357ExitFExtra ++ (shrinkRow 770 s2Step357ExitFvExtra ++ (shrinkRow 771 s2Step357ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step357ExitGvAfter [] []=some (s2Step357ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step357ExitGvBefore s2Step357ExitGvAfter s2Step357ExitGvAfter
    s2Step357ExitGvRow s2Step357ExitGvOut 195 [] [] [] []
    (shrinkRow 771 s2Step357ExitGvExtra) ([]) s2Step357ExitGv_Incoming s2Step357ExitGv_checked h4 s2Step357ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step357ExitFvBefore s2Step357ExitFvAfter s2Step357ExitGvAfter
    s2Step357ExitFvRow s2Step357ExitFvOut 195 [] [(s2Step357ExitGvRow,195)] [[]] [s2Step357ExitGvOut]
    (shrinkRow 770 s2Step357ExitFvExtra) ((shrinkRow 771 s2Step357ExitGvExtra ++ [])) s2Step357ExitFv_Incoming s2Step357ExitFv_checked h3 s2Step357ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step357ExitFBefore s2Step357ExitFAfter s2Step357ExitGvAfter
    s2Step357ExitFRow s2Step357ExitFOut 92 [] [(s2Step357ExitFvRow,195),(s2Step357ExitGvRow,195)] [[],[]] [s2Step357ExitFvOut,s2Step357ExitGvOut]
    (shrinkRow 768 s2Step357ExitFExtra) ((shrinkRow 770 s2Step357ExitFvExtra ++ (shrinkRow 771 s2Step357ExitGvExtra ++ []))) s2Step357ExitF_Incoming s2Step357ExitF_checked h2 s2Step357ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step357ExitGBefore s2Step357ExitGAfter s2Step357ExitGvAfter
    s2Step357ExitGRow s2Step357ExitGOut 92 [] [(s2Step357ExitFRow,92),(s2Step357ExitFvRow,195),(s2Step357ExitGvRow,195)] [[],[],[]] [s2Step357ExitFOut,s2Step357ExitFvOut,s2Step357ExitGvOut]
    (shrinkRow 769 s2Step357ExitGExtra) ((shrinkRow 768 s2Step357ExitFExtra ++ (shrinkRow 770 s2Step357ExitFvExtra ++ (shrinkRow 771 s2Step357ExitGvExtra ++ [])))) s2Step357ExitG_Incoming s2Step357ExitG_checked h1 s2Step357ExitG_Outgoing
  exact h0

private theorem s2Step357ExitBank_checked : compileHmrBankResizeLog .exit s2Step357ExitGBefore ⟨s2Step357ExitFRow,s2Step357ExitGRow,s2Step357ExitFvRow,s2Step357ExitGvRow⟩ ⟨92,92,195,195⟩ [[],[],[],[]]=
    some (s2Step357ExitGvAfter,⟨s2Step357ExitFOut,s2Step357ExitGOut,s2Step357ExitFvOut,s2Step357ExitGvOut⟩,(shrinkRow 769 s2Step357ExitGExtra ++ (shrinkRow 768 s2Step357ExitFExtra ++ (shrinkRow 770 s2Step357ExitFvExtra ++ (shrinkRow 771 s2Step357ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step357ExitBank_rows]
  rfl

private theorem s2Step357Add0_apart : Disjoint s2Step357Add0Arena.live s2Step357Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step357Add0Arena (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step357Add0_card : s2Step357Add0Arena.live.card=910 := by
  decide +kernel

private theorem s2Step357Add0_borrowed : s2Step357Add0Arena.checkBorrow (hmrHybridCount s2Step357Add0Arena s2Step357Add0B.length) s2Step357Add0Work=some s2Step357Add0During := by
  have len : s2Step357Add0Work.length=hmrHybridCount s2Step357Add0Arena s2Step357Add0B.length := by
    rw [hmrHybridCount,s2Step357Add0_card]
    decide +kernel
  have nd : s2Step357Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step357Add0Arena s2Step357Add0During s2Step357Add0Work.toFinset s2Step357Add0_bounded s2Step357Add0_apart rfl

private theorem s2Step357Add0_distinct : (800::796::789::(s2Step357Add0A++s2Step357Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step357Add0_owned : (800::796::789::(s2Step357Add0A++s2Step357Add0B)).toFinset⊆s2Step357Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step357Add0Arena (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step357Add0_checked : compileHmrHybridCinLog s2Step357Add0Arena 796 800 789 s2Step357Add0A s2Step357Add0B s2Step357Add0Work=some s2Step357Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step357Add0Arena s2Step357Add0During 796 800 789 s2Step357Add0A s2Step357Add0B s2Step357Add0Work
    (by decide +kernel) (by decide +kernel) s2Step357Add0_distinct
    (fun q hq => s2Step357Add0_owned (List.mem_toFinset.mpr hq)) s2Step357Add0_borrowed

private theorem s2Step357Add1_apart : Disjoint s2Step357Add1Arena.live s2Step357Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step357Add1Arena (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step357Add1_card : s2Step357Add1Arena.live.card=910 := by
  decide +kernel

private theorem s2Step357Add1_borrowed : s2Step357Add1Arena.checkBorrow (hmrHybridCount s2Step357Add1Arena s2Step357Add1B.length) s2Step357Add1Work=some s2Step357Add1During := by
  have len : s2Step357Add1Work.length=hmrHybridCount s2Step357Add1Arena s2Step357Add1B.length := by
    rw [hmrHybridCount,s2Step357Add1_card]
    decide +kernel
  have nd : s2Step357Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step357Add1Arena s2Step357Add1During s2Step357Add1Work.toFinset s2Step357Add1_bounded s2Step357Add1_apart rfl

private theorem s2Step357Add1_distinct : (800::796::789::(s2Step357Add1A++s2Step357Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step357Add1_owned : (800::796::789::(s2Step357Add1A++s2Step357Add1B)).toFinset⊆s2Step357Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step357Add1Arena (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step357Add1_checked : compileHmrHybridCinLog s2Step357Add1Arena 796 800 789 s2Step357Add1A s2Step357Add1B s2Step357Add1Work=some s2Step357Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step357Add1Arena s2Step357Add1During 796 800 789 s2Step357Add1A s2Step357Add1B s2Step357Add1Work
    (by decide +kernel) (by decide +kernel) s2Step357Add1_distinct
    (fun q hq => s2Step357Add1_owned (List.mem_toFinset.mpr hq)) s2Step357Add1_borrowed

private theorem s2Step357F4_apart : Disjoint (s2Step357Add0A++s2Step357Add0B).toFinset (s2Step357Add1A++s2Step357Add1B).toFinset := by
  have nd : ((s2Step357Add0A++s2Step357Add0B)++(s2Step357Add1A++s2Step357Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step357F4_carry : s2Step357F4FlagArena.checkBorrow 1 [789]=some s2Step357Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step357F4FlagArena,s2Step357HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step357F4FlagArena,s2Step357HeadFvAfter,s2Step357Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step357F4_distinct : (785::796::800::789::((s2Step357Add0A++s2Step357Add1A)++(s2Step357Add0B++s2Step357Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step357F4_flag : s2Step357HeadFvAfter.checkBorrow 1 [800]=some s2Step357F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step357HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step357F4_owned : (785::796::((s2Step357Add0A++s2Step357Add1A)++(s2Step357Add0B++s2Step357Add1B))).toFinset⊆s2Step357HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step357HeadFvAfter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step357F4_checked : compileHmrHybridF4Log s2Step357HeadFvAfter 785 796 s2Step357Add0A s2Step357Add0B s2Step357Add1A s2Step357Add1B [800] [789] s2Step357Add0Work s2Step357Add1Work=some s2Step357F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step357HeadFvAfter s2Step357F4FlagArena s2Step357Add0Arena s2Step357Add0During s2Step357Add1During 785 796
    s2Step357Add0A s2Step357Add0B s2Step357Add1A s2Step357Add1B [800] [789] s2Step357Add0Work s2Step357Add1Work
    (fun q hq => s2Step357F4_owned (List.mem_toFinset.mpr hq)) s2Step357F4_flag s2Step357F4_carry
    s2Step357F4_distinct s2Step357F4_apart s2Step357Add0_checked s2Step357Add1_checked

private theorem s2Step357Front_branch : s2Step357FrontSigmaArena.checkBorrow 1 [796]=some s2Step357HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step357FrontSigmaArena,s2Step357EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step357FrontSigmaArena,s2Step357EntryGvAfter,s2Step357HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step357Front_entry : HmrFrontEntryValid s2Step357EntryFBefore s2Step357FrontBank 93 195 ⟨92,92,195,195⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step357FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step357EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step357EntryFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step357FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step357Front_sigma : s2Step357EntryGvAfter.checkBorrow 1 [785]=some s2Step357FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step357EntryGvAfter,arenaWires]
  · rfl

private def s2Step357HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step357HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step357HeadFBefore : Arena := s2Step357HeadGAfter

private def s2Step357HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604],768⟩

private def s2Step357HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791],770⟩

private def s2Step357HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 812],769⟩

private def s2Step357HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808],771⟩

private theorem s2Step357HeadBank_incomingDistinct : ([s2Step357HeadGRow,s2Step357HeadFRow,s2Step357HeadGvRow,s2Step357HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step357HeadF_Incoming : rowsOwned s2Step357HeadFBefore [s2Step357HeadFRow,s2Step357HeadGvRow,s2Step357HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step357HeadGRow,s2Step357HeadFRow,s2Step357HeadGvRow,s2Step357HeadFvRow] 1 s2Step357HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step357HeadFBefore (fun q => (0≤q ∧ q<789) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step357HeadBank_outgoingOwned : rowsOwned s2Step357HeadFvAfter [s2Step357HeadGOut,s2Step357HeadFOut,s2Step357HeadGvOut,s2Step357HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step357HeadFvAfter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step357HeadF_Outgoing : rowsOwned s2Step357HeadFvAfter [s2Step357HeadFOut,s2Step357HeadGvOut,s2Step357HeadFvOut] :=
  hmrRows_owned_drop s2Step357HeadFvAfter [s2Step357HeadGOut,s2Step357HeadFOut,s2Step357HeadGvOut,s2Step357HeadFvOut] 1 s2Step357HeadBank_outgoingOwned

private theorem s2Step357HeadF_distinct : (s2Step357HeadFRow.sign::s2Step357HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step357HeadF_owned : (s2Step357HeadFRow.sign::s2Step357HeadFRow.payload).toFinset⊆s2Step357HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step357HeadFBefore (fun q => (0≤q ∧ q<789) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step357HeadF_reserved : s2Step357HeadFBefore.reserve s2Step357HeadFFresh.toFinset=some s2Step357HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step357HeadFFresh,arenaWires]
  · norm_num [s2Step357HeadFBefore,s2Step357HeadGAfter,s2Step357HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step357HeadFAfter,s2Step357HeadFBefore,s2Step357HeadGAfter,s2Step357HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step357HeadF_checked : planRowResizeLog s2Step357HeadFBefore s2Step357HeadFRow 94 s2Step357HeadFFresh=
    some (s2Step357HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 821],768⟩,growRow 768 s2Step357HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step357HeadFBefore s2Step357HeadFAfter s2Step357HeadFRow 94 s2Step357HeadFFresh
    s2Step357HeadF_distinct s2Step357HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step357HeadF_reserved
  have rowEq : WindowRow.mk (s2Step357HeadFRow.payload++s2Step357HeadFFresh) s2Step357HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 821],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step357HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step357HeadFvBefore : Arena := s2Step357HeadGvAfter

private theorem s2Step357HeadFv_Incoming : rowsOwned s2Step357HeadFvBefore [s2Step357HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step357HeadGRow,s2Step357HeadFRow,s2Step357HeadGvRow,s2Step357HeadFvRow] 3 s2Step357HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step357HeadFvBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step357HeadFv_Outgoing : rowsOwned s2Step357HeadFvAfter [s2Step357HeadFvOut] :=
  hmrRows_owned_drop s2Step357HeadFvAfter [s2Step357HeadGOut,s2Step357HeadFOut,s2Step357HeadGvOut,s2Step357HeadFvOut] 3 s2Step357HeadBank_outgoingOwned

private theorem s2Step357HeadFv_distinct : (s2Step357HeadFvRow.sign::s2Step357HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step357HeadFv_owned : (s2Step357HeadFvRow.sign::s2Step357HeadFvRow.payload).toFinset⊆s2Step357HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step357HeadFvBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step357HeadFv_reserved : s2Step357HeadFvBefore.reserve s2Step357HeadFvFresh.toFinset=some s2Step357HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step357HeadFvFresh,arenaWires]
  · norm_num [s2Step357HeadFvBefore,s2Step357HeadGvAfter,s2Step357HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step357HeadFvAfter,s2Step357HeadFvBefore,s2Step357HeadGvAfter,s2Step357HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step357HeadFv_checked : planRowResizeLog s2Step357HeadFvBefore s2Step357HeadFvRow 196 s2Step357HeadFvFresh=
    some (s2Step357HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 903],770⟩,growRow 770 s2Step357HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step357HeadFvBefore s2Step357HeadFvAfter s2Step357HeadFvRow 196 s2Step357HeadFvFresh
    s2Step357HeadFv_distinct s2Step357HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step357HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step357HeadFvRow.payload++s2Step357HeadFvFresh) s2Step357HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 903],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step357HeadG_Incoming : rowsOwned s2Step357HeadGBefore [s2Step357HeadGRow,s2Step357HeadFRow,s2Step357HeadGvRow,s2Step357HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step357HeadGRow,s2Step357HeadFRow,s2Step357HeadGvRow,s2Step357HeadFvRow] 0 s2Step357HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step357HeadGBefore (fun q => (0≤q ∧ q<789) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step357HeadG_Outgoing : rowsOwned s2Step357HeadFvAfter [s2Step357HeadGOut,s2Step357HeadFOut,s2Step357HeadGvOut,s2Step357HeadFvOut] :=
  hmrRows_owned_drop s2Step357HeadFvAfter [s2Step357HeadGOut,s2Step357HeadFOut,s2Step357HeadGvOut,s2Step357HeadFvOut] 0 s2Step357HeadBank_outgoingOwned

private theorem s2Step357HeadG_distinct : (s2Step357HeadGRow.sign::s2Step357HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step357HeadG_owned : (s2Step357HeadGRow.sign::s2Step357HeadGRow.payload).toFinset⊆s2Step357HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step357HeadGBefore (fun q => (0≤q ∧ q<789) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step357HeadG_reserved : s2Step357HeadGBefore.reserve s2Step357HeadGFresh.toFinset=some s2Step357HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step357HeadGFresh,arenaWires]
  · norm_num [s2Step357HeadGBefore,s2Step357HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step357HeadGAfter,s2Step357HeadGBefore,s2Step357HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step357HeadG_checked : planRowResizeLog s2Step357HeadGBefore s2Step357HeadGRow 94 s2Step357HeadGFresh=
    some (s2Step357HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 812, 839],769⟩,growRow 769 s2Step357HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step357HeadGBefore s2Step357HeadGAfter s2Step357HeadGRow 94 s2Step357HeadGFresh
    s2Step357HeadG_distinct s2Step357HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step357HeadG_reserved
  have rowEq : WindowRow.mk (s2Step357HeadGRow.payload++s2Step357HeadGFresh) s2Step357HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 812, 839],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step357HeadGvBefore : Arena := s2Step357HeadFAfter

private theorem s2Step357HeadGv_Incoming : rowsOwned s2Step357HeadGvBefore [s2Step357HeadGvRow,s2Step357HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step357HeadGRow,s2Step357HeadFRow,s2Step357HeadGvRow,s2Step357HeadFvRow] 2 s2Step357HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step357HeadGvBefore (fun q => (0≤q ∧ q<789) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step357HeadGv_Outgoing : rowsOwned s2Step357HeadFvAfter [s2Step357HeadGvOut,s2Step357HeadFvOut] :=
  hmrRows_owned_drop s2Step357HeadFvAfter [s2Step357HeadGOut,s2Step357HeadFOut,s2Step357HeadGvOut,s2Step357HeadFvOut] 2 s2Step357HeadBank_outgoingOwned

private theorem s2Step357HeadGv_distinct : (s2Step357HeadGvRow.sign::s2Step357HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step357HeadGv_owned : (s2Step357HeadGvRow.sign::s2Step357HeadGvRow.payload).toFinset⊆s2Step357HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step357HeadGvBefore (fun q => (0≤q ∧ q<789) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step357HeadGv_reserved : s2Step357HeadGvBefore.reserve s2Step357HeadGvFresh.toFinset=some s2Step357HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step357HeadGvFresh,arenaWires]
  · norm_num [s2Step357HeadGvBefore,s2Step357HeadFAfter,s2Step357HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step357HeadGvAfter,s2Step357HeadGvBefore,s2Step357HeadFAfter,s2Step357HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step357HeadGv_checked : planRowResizeLog s2Step357HeadGvBefore s2Step357HeadGvRow 196 s2Step357HeadGvFresh=
    some (s2Step357HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790],771⟩,growRow 771 s2Step357HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step357HeadGvBefore s2Step357HeadGvAfter s2Step357HeadGvRow 196 s2Step357HeadGvFresh
    s2Step357HeadGv_distinct s2Step357HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step357HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step357HeadGvRow.payload++s2Step357HeadGvFresh) s2Step357HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step357HeadBank_rows : planWindowRowsLog s2Step357HeadGBefore [(s2Step357HeadGRow,94),(s2Step357HeadFRow,94),(s2Step357HeadGvRow,196),(s2Step357HeadFvRow,196)] [s2Step357HeadGFresh,s2Step357HeadFFresh,s2Step357HeadGvFresh,s2Step357HeadFvFresh]=
    some (s2Step357HeadFvAfter,[s2Step357HeadGOut,s2Step357HeadFOut,s2Step357HeadGvOut,s2Step357HeadFvOut],(growRow 769 s2Step357HeadGFresh ++ (growRow 768 s2Step357HeadFFresh ++ (growRow 771 s2Step357HeadGvFresh ++ (growRow 770 s2Step357HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step357HeadFvAfter [] []=some (s2Step357HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step357HeadFvBefore s2Step357HeadFvAfter s2Step357HeadFvAfter
    s2Step357HeadFvRow s2Step357HeadFvOut 196 s2Step357HeadFvFresh [] [] []
    (growRow 770 s2Step357HeadFvFresh) ([]) s2Step357HeadFv_Incoming s2Step357HeadFv_checked h4 s2Step357HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step357HeadGvBefore s2Step357HeadGvAfter s2Step357HeadFvAfter
    s2Step357HeadGvRow s2Step357HeadGvOut 196 s2Step357HeadGvFresh [(s2Step357HeadFvRow,196)] [s2Step357HeadFvFresh] [s2Step357HeadFvOut]
    (growRow 771 s2Step357HeadGvFresh) ((growRow 770 s2Step357HeadFvFresh ++ [])) s2Step357HeadGv_Incoming s2Step357HeadGv_checked h3 s2Step357HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step357HeadFBefore s2Step357HeadFAfter s2Step357HeadFvAfter
    s2Step357HeadFRow s2Step357HeadFOut 94 s2Step357HeadFFresh [(s2Step357HeadGvRow,196),(s2Step357HeadFvRow,196)] [s2Step357HeadGvFresh,s2Step357HeadFvFresh] [s2Step357HeadGvOut,s2Step357HeadFvOut]
    (growRow 768 s2Step357HeadFFresh) ((growRow 771 s2Step357HeadGvFresh ++ (growRow 770 s2Step357HeadFvFresh ++ []))) s2Step357HeadF_Incoming s2Step357HeadF_checked h2 s2Step357HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step357HeadGBefore s2Step357HeadGAfter s2Step357HeadFvAfter
    s2Step357HeadGRow s2Step357HeadGOut 94 s2Step357HeadGFresh [(s2Step357HeadFRow,94),(s2Step357HeadGvRow,196),(s2Step357HeadFvRow,196)] [s2Step357HeadFFresh,s2Step357HeadGvFresh,s2Step357HeadFvFresh] [s2Step357HeadFOut,s2Step357HeadGvOut,s2Step357HeadFvOut]
    (growRow 769 s2Step357HeadGFresh) ((growRow 768 s2Step357HeadFFresh ++ (growRow 771 s2Step357HeadGvFresh ++ (growRow 770 s2Step357HeadFvFresh ++ [])))) s2Step357HeadG_Incoming s2Step357HeadG_checked h1 s2Step357HeadG_Outgoing
  exact h0

private theorem s2Step357HeadBank_checked : compileHmrBankResizeLog .headroom s2Step357HeadGBefore ⟨s2Step357HeadFRow,s2Step357HeadGRow,s2Step357HeadFvRow,s2Step357HeadGvRow⟩ ⟨94,94,196,196⟩ [s2Step357HeadGFresh,s2Step357HeadFFresh,s2Step357HeadGvFresh,s2Step357HeadFvFresh]=
    some (s2Step357HeadFvAfter,⟨s2Step357HeadFOut,s2Step357HeadGOut,s2Step357HeadFvOut,s2Step357HeadGvOut⟩,(growRow 769 s2Step357HeadGFresh ++ (growRow 768 s2Step357HeadFFresh ++ (growRow 771 s2Step357HeadGvFresh ++ (growRow 770 s2Step357HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step357HeadBank_rows]
  rfl

private theorem s2Step357Front_checked : compileHmrSourceFrontLog s2Step357EntryFBefore s2Step357FrontBank 93 195 ⟨92,92,195,195⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step357FrontLog=some s2Step357FrontPlan := by
  have pairEq : s2Step357FrontPair=⟨s2Step357HeadFRow,s2Step357HeadGRow,s2Step357HeadFvRow,s2Step357HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step357FrontHead=⟨s2Step357ExitFRow,s2Step357ExitGRow,s2Step357ExitFvRow,s2Step357ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step357Add0A=s2Step357FrontHead.f.wires := by decide +kernel
  have gEq : s2Step357Add0B=s2Step357FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step357Add1A=s2Step357FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step357Add1B=s2Step357FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step357EntryFBefore s2Step357FrontBank 93 195 ⟨92,92,195,195⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step357FrontLog s2Step357FrontPlan
  · exact s2Step357Front_entry
  · exact s2Step357EntryBank_checked
  · exact s2Step357Front_sigma
  · rfl
  · exact s2Step357Front_branch
  · rfl
  · simpa only [s2Step357FrontPlan,pairEq] using s2Step357HeadBank_checked
  · simpa only [s2Step357FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step357F4_checked
  · exact s2Step357Counter_checked
  · rfl
  · simpa only [s2Step357FrontPlan,headEq] using s2Step357ExitBank_checked

private theorem s2Step357Complete_explicit_checked : compileHmrEarlyStepLog s2Step357EntryFBefore s2Step357FrontBank 93 195 ⟨92,92,195,195⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step357CompleteLog=some s2Step357CompletePlan := by
  let Q := s2Step357EarlyControlPlan
  have hq := s2Step357EarlyControl_plan_checked
  have fv1 : s2Step357CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step357CompleteOut.fv.payload[2]?.getD s2Step357CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step357CompleteOut.fv.payload[3]?.getD s2Step357CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step357CompleteOut.fv.payload[4]?.getD s2Step357CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step357EntryFBefore s2Step357EarlyControlArena s2Step357FrontBank 93 195 ⟨92,92,195,195⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step357CompleteLog s2Step357FrontPlan Q
    s2Step357Front_checked s2Step357Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step357Complete_owned s2Step357Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step357EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 785 s2Step357CompleteOut.fv.second (s2Step357CompleteOut.fv.payload[2]?.getD s2Step357CompleteOut.fv.sign) (s2Step357CompleteOut.fv.payload[3]?.getD s2Step357CompleteOut.fv.sign) (s2Step357CompleteOut.fv.payload[4]?.getD s2Step357CompleteOut.fv.sign) 796 60 s2Step357EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep357Arena : Arena := s2Step357EntryFBefore
def s2PrivateStep357Bank : WindowBank := s2Step357FrontBank
def s2PrivateStep357Spec : HmrSourceWalkStepLog := ⟨93,195,⟨92,92,195,195⟩,60,.early s2Step357CompleteLog⟩
def s2PrivateStep357Plan : HmrSourceStepPlan := .early s2Step357CompletePlan
theorem s2PrivateStep357_source : s2PrivateStep357Spec=s2ObservedLogs352[5] := rfl
theorem s2PrivateStep357_checked : compileHmrSourceStepLog s2PrivateStep357Arena s2PrivateStep357Bank
    s2PrivateStep357Spec.fgWidth s2PrivateStep357Spec.vWidth s2PrivateStep357Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]
    6 498 357 s2PrivateStep357Spec.need none s2PrivateStep357Spec.log=some s2PrivateStep357Plan := by
  change compileHmrSourceStepLog s2Step357EntryFBefore s2Step357FrontBank 93 195 ⟨92,92,195,195⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 6 498 357 60 none (.early s2Step357CompleteLog)=some (.early s2Step357CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 357<498)]
  rw [s2Step357Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
