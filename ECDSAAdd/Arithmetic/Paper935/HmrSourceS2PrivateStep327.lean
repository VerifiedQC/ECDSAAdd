import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep325
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

private def s2Step327CompleteMoves : List (Wire × Wire) := [(794,106)]

private def s2Step327EarlyControlLog : HmrEarlyControlLog := ⟨[794, 787, 827, 782, 834],[806],[784],[800, 894, 896, 901, 903, 907],[]⟩

private def s2Step327FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [830]],[[782], [827], [787], [807]],[[], [], [], []]⟩,[829],[877],[834],[806],[784, 800, 894, 896, 901, 903, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[784, 800, 894, 896, 901, 903, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[834, 806, 784, 800]⟩

private def s2Step327CompleteLog : HmrEarlyStepLog := ⟨s2Step327FrontLog,s2Step327CompleteMoves,s2Step327EarlyControlLog⟩

private def s2Step327ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618],768⟩

private def s2Step327ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807],770⟩

private def s2Step327ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105],769⟩

private def s2Step327ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830],771⟩

private def s2Step327FrontOut : WindowBank := ⟨s2Step327ExitFOut,s2Step327ExitGOut,s2Step327ExitFvOut,s2Step327ExitGvOut⟩

private def s2Step327CompleteOut : WindowBank := s2Step327FrontOut.repacked s2Step327CompleteMoves

private def s2Step327EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step327EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step327EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step327EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step327EarlyControlPositiveArena,[806],s2Step327EarlyControlEqualityArena,[784],⟨⟨829,false⟩,[⟨⟨806,false⟩,784⟩]⟩⟩

private def s2Step327EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step327EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step327EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step327EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step327EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step327EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step327EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,794⟩,⟨⟨774,false⟩,787⟩,⟨⟨775,false⟩,827⟩,⟨⟨776,false⟩,782⟩,⟨⟨777,false⟩,834⟩]⟩

private def s2Step327EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step327EarlyControlZeroArena,s2Step327EarlyControlZeroPlan,s2Step327EarlyControlClassPlan,s2Step327EarlyControlFlagArena,s2Step327EarlyControlFittedArena,s2Step327EarlyControlHistoryArena,s2Step327EarlyControlSigmaArena,s2Step327EarlyControlOutputArena,s2Step327EarlyControlLog⟩

private def s2Step327CounterWork : List Wire := [834, 806, 784, 800]

private theorem s2Step327Counter_bounded : s2Step327CounterWork.toFinset⊆arenaWires := by norm_num [s2Step327CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step327HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step327CounterDuring : Arena := ⟨s2Step327HeadFvAfter.live∪s2Step327CounterWork.toFinset,Finset.union_subset s2Step327HeadFvAfter.bounded s2Step327Counter_bounded⟩

private def s2Step327EntryFFresh : List Wire := []

private def s2Step327EntryFvFresh : List Wire := []

private def s2Step327EntryGFresh : List Wire := []

private def s2Step327EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step327EntryGvFresh : List Wire := [830]

private def s2Step327ExitFExtra : List Wire := [827]

private def s2Step327ExitGExtra : List Wire := [106, 782]

private def s2Step327ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<106) ∨ (107≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step327ExitGvExtra : List Wire := [787]

private def s2Step327Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step327Add0Work : List Wire := [784, 800, 894, 896, 901, 903, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step327Add0_bounded : s2Step327Add0Work.toFinset⊆arenaWires := by
  have h : s2Step327Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step327Add0During : Arena := ⟨s2Step327Add0Arena.live∪s2Step327Add0Work.toFinset,Finset.union_subset s2Step327Add0Arena.bounded s2Step327Add0_bounded⟩

private def s2Step327Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step327Add1Work : List Wire := [784, 800, 894, 896, 901, 903, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step327Add1_bounded : s2Step327Add1Work.toFinset⊆arenaWires := by
  have h : s2Step327Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step327Add1During : Arena := ⟨s2Step327Add1Arena.live∪s2Step327Add1Work.toFinset,Finset.union_subset s2Step327Add1Arena.bounded s2Step327Add1_bounded⟩

private def s2Step327F4FlagArena : Arena := ⟨s2Step327HeadFvAfter.live∪{834},Finset.union_subset s2Step327HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step327F4Plan : HmrHybridF4Plan := ⟨s2Step327F4FlagArena,[834],s2Step327Add0Arena,[806],s2Step327Add0During,s2Step327Add0Work,s2Step327Add1During,s2Step327Add1Work⟩

private def s2Step327HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 827],768⟩

private def s2Step327HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807],770⟩

private def s2Step327HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 782],769⟩

private def s2Step327HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787],771⟩

private def s2Step327FrontHead : WindowBank := ⟨s2Step327HeadFOut,s2Step327HeadGOut,s2Step327HeadFvOut,s2Step327HeadGvOut⟩

private def s2Step327EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618],768⟩

private def s2Step327EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867],770⟩

private def s2Step327EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106],769⟩

private def s2Step327EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830],771⟩

private def s2Step327FrontPair : WindowBank := ⟨s2Step327EntryFOut,s2Step327EntryGOut,s2Step327EntryFvOut,s2Step327EntryGvOut⟩

private def s2Step327FrontSigmaArena : Arena := ⟨s2Step327EntryGvAfter.live∪{829},Finset.union_subset s2Step327EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step327HeadFFresh : List Wire := [827]

private def s2Step327HeadFvFresh : List Wire := [807]

private def s2Step327HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step327HeadGFresh : List Wire := [782]

private def s2Step327HeadGvFresh : List Wire := [787]

private def s2Step327FrontPlan : HmrSourceFront := ⟨s2Step327EntryGvAfter,s2Step327FrontPair,(growRow 768 s2Step327EntryFFresh ++ (growRow 769 s2Step327EntryGFresh ++ (growRow 770 s2Step327EntryFvFresh ++ (growRow 771 s2Step327EntryGvFresh ++ [])))),s2Step327FrontSigmaArena,[829],s2Step327HeadGBefore,[877],
  s2Step327HeadFvAfter,s2Step327FrontHead,(growRow 769 s2Step327HeadGFresh ++ (growRow 768 s2Step327HeadFFresh ++ (growRow 771 s2Step327HeadGvFresh ++ (growRow 770 s2Step327HeadFvFresh ++ [])))),s2Step327F4Plan,s2Step327CounterDuring,s2Step327CounterWork,s2Step327ExitGvAfter,s2Step327FrontOut,(shrinkRow 769 s2Step327ExitGExtra ++ (shrinkRow 768 s2Step327ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step327ExitGvExtra ++ []))))⟩

private def s2Step327CompletePlan : HmrEarlyStepPlan := ⟨s2Step327FrontPlan,s2Step327EarlyControlArena,s2Step327EarlyControlPlan,s2Step327CompleteMoves⟩

private theorem s2Step327Complete_apart : List.Disjoint (s2Step327CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [829, 877, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] := by
  have nd : ((s2Step327CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[829, 877, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step327Complete_owned : (s2Step327CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step327EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step327EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private def s2Step327CompleteMoveArena : Arena := ⟨s2Step327ExitGvAfter.live∪{106},Finset.union_subset s2Step327ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step327Complete_repack : s2Step327ExitGvAfter.checkRepack s2Step327CompleteMoves=some s2Step327EarlyControlArena := by
  have owned : 794∈s2Step327ExitGvAfter.live := by norm_num [s2Step327ExitGvAfter,arenaWires]
  have reserve : s2Step327ExitGvAfter.reserve {106}=some s2Step327CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step327ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step327CompleteMoveArena.retireSet {794}=s2Step327EarlyControlArena := by
    unfold Arena.retireSet s2Step327EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step327CompleteMoveArena,s2Step327ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step327CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step327CompleteMoveArena.retireSet {794}).checkRepack []=some s2Step327EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step327EarlyControl_branchOwned : ([877] : List Wire).toFinset⊆s2Step327EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step327EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step327EarlyControl_branch : compileHmrBranchRetirement s2Step327EarlyControlSigmaArena 877=some s2Step327EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step327EarlyControl_branchOwned
  · ext q
    simp [s2Step327EarlyControlOutputArena,s2Step327EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step327EarlyControl_classEqualityBorrow : s2Step327EarlyControlPositiveArena.checkBorrow (([829, 806] : List Wire).length-1) s2Step327EarlyControlLog.classWork=some s2Step327EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step327EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step327EarlyControlPositiveArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step327EarlyControlEqualityArena,s2Step327EarlyControlPositiveArena,s2Step327EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step327EarlyControl_classEqualityOwned : ([829, 806] : List Wire).toFinset⊆s2Step327EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step327EarlyControlPositiveArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step327EarlyControl_classEquality : compileHmrEqualityLog s2Step327EarlyControlPositiveArena [829, 806] 0 s2Step327EarlyControlLog.classWork=some (s2Step327EarlyControlEqualityArena,s2Step327EarlyControlLog.classWork,s2Step327EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step327EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step327EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step327EarlyControl_classOwned : ([777, 834, 829] : List Wire).toFinset⊆s2Step327EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step327EarlyControlZeroArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step327EarlyControl_positiveBorrow : s2Step327EarlyControlZeroArena.checkBorrow (1) s2Step327EarlyControlLog.positiveWork=some s2Step327EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step327EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step327EarlyControlZeroArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step327EarlyControlPositiveArena,s2Step327EarlyControlZeroArena,s2Step327EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step327EarlyControl_class : compileHmrSourceClassLog s2Step327EarlyControlZeroArena false 777 s2Step327EarlyControlZeroPlan.top 0 829 s2Step327EarlyControlLog.positiveWork s2Step327EarlyControlLog.classWork=some s2Step327EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step327EarlyControlClassPlan s2Step327EarlyControlZeroArena false 777 s2Step327EarlyControlZeroPlan.top 0 829
  constructor
  · decide +kernel
  · exact s2Step327EarlyControl_classOwned
  · exact s2Step327EarlyControl_positiveBorrow
  · exact s2Step327EarlyControl_classEquality

private theorem s2Step327EarlyControl_entryRecordOwned : ([877, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step327EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step327EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step327EarlyControl_entrySigmaOwned : ([829, 254] : List Wire).toFinset⊆s2Step327EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step327EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step327EarlyControl_fitBorrow : s2Step327EarlyControlFlagArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step327EarlyControlLog.recordFresh=some s2Step327EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step327EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step327EarlyControlFlagArena (fun q => (0≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step327EarlyControlFittedArena,s2Step327EarlyControlFlagArena,s2Step327EarlyControlLog,arenaWires]

private theorem s2Step327EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step327EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step327EarlyControlFlagArena (fun q => (0≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step327EarlyControl_fit : compileHmrRecordGrowLog s2Step327EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step327EarlyControlLog.recordFresh=some s2Step327EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step327EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step327EarlyControl_fitBorrow

private theorem s2Step327EarlyControl_flagsBorrow : s2Step327EarlyControlEqualityArena.checkBorrow (6) s2Step327EarlyControlLog.flagWork=some s2Step327EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step327EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step327EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step327EarlyControlFlagArena,s2Step327EarlyControlEqualityArena,s2Step327EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step327EarlyControl_flagsOwned : ([784, 253, 252, 251] : List Wire).toFinset⊆s2Step327EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step327EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step327EarlyControl_flags : compileHmrFlagsLog s2Step327EarlyControlClassPlan.equalityArena s2Step327EarlyControlClassPlan.equality.top 253 252 251 s2Step327EarlyControlLog.flagWork=some s2Step327EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step327EarlyControl_flagsOwned⟩
  · exact s2Step327EarlyControl_flagsBorrow

private theorem s2Step327EarlyControl_historyBorrow : s2Step327EarlyControlArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step327EarlyControlLog.recordFresh=some s2Step327EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step327EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step327EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step327EarlyControlHistoryArena,s2Step327EarlyControlArena,s2Step327EarlyControlLog,arenaWires]

private theorem s2Step327EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step327EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step327EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step327EarlyControl_history : compileHmrRecordGrowLog s2Step327EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step327EarlyControlLog.recordFresh=some s2Step327EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step327EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step327EarlyControl_historyBorrow

private theorem s2Step327EarlyControl_sigmaOwned : ([254, 829] : List Wire).toFinset⊆s2Step327EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step327EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step327EarlyControl_sigmaReleaseOwned : ([829] : List Wire).toFinset⊆s2Step327EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step327EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step327EarlyControl_sigmaRelease : s2Step327EarlyControlHistoryArena.release {829} (fun _ => false)=some s2Step327EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step327EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step327EarlyControlSigmaArena,s2Step327EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step327EarlyControl_sigma : compileHmrSigmaDropLog s2Step327EarlyControlHistoryArena false 0 0 254 829 []=some s2Step327EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step327EarlyControl_sigmaOwned⟩
  · exact s2Step327EarlyControl_sigmaRelease

private theorem s2Step327EarlyControl_zeroBorrow : s2Step327EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step327EarlyControlLog.zeroWork=some s2Step327EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step327EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step327EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step327EarlyControlZeroArena,s2Step327EarlyControlArena,s2Step327EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step327EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step327EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step327EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step327EarlyControl_zero : compileHmrEqualityLog s2Step327EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step327EarlyControlLog.zeroWork=some (s2Step327EarlyControlZeroArena,s2Step327EarlyControlLog.zeroWork,s2Step327EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step327EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step327EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step327EarlyControl_logged : s2Step327EarlyControlPlan.Logged s2Step327EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 829 254 253 252 251 877 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step327EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step327EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step327EarlyControl_zero
  · exact s2Step327EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step327EarlyControl_flags
  · exact s2Step327EarlyControl_fit
  · exact s2Step327EarlyControl_history
  · exact s2Step327EarlyControl_sigma
  · exact s2Step327EarlyControl_branch

private theorem s2Step327EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step327EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 829 254 253 252 251 877 60 s2Step327EarlyControlLog=some s2Step327EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step327EarlyControlPlan s2Step327EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 829 254 253 252 251 877 60 s2Step327EarlyControl_logged

private def s2Step327EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step327EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618],768⟩

private def s2Step327EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867],770⟩

private def s2Step327EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106],769⟩

private def s2Step327EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885],771⟩

private def s2Step327FrontBank : WindowBank := ⟨s2Step327EntryFRow,s2Step327EntryGRow,s2Step327EntryFvRow,s2Step327EntryGvRow⟩

private def s2Step327Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 827, 768]

private def s2Step327Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 782, 769]

private def s2Step327Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 770]

private def s2Step327Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 771]

private theorem s2Step327Counter_apart : Disjoint s2Step327HeadFvAfter.live s2Step327CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step327HeadFvAfter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step327Counter_borrowed : s2Step327HeadFvAfter.checkBorrow 4 s2Step327CounterWork=some s2Step327CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step327HeadFvAfter s2Step327CounterDuring s2Step327CounterWork.toFinset s2Step327Counter_bounded s2Step327Counter_apart rfl

private theorem s2Step327Counter_owned : (829::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step327HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step327HeadFvAfter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step327Counter_checked : compileHmrCounterStepLog s2Step327HeadFvAfter true 829 [772, 773, 774, 775, 776, 777] s2Step327CounterWork=some s2Step327CounterDuring := by
  have owned : ∀q∈829::[772, 773, 774, 775, 776, 777],q∈s2Step327HeadFvAfter.live := fun q hq => s2Step327Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step327Counter_borrowed

private def s2Step327EntryFAfter : Arena := s2Step327EntryFBefore

private theorem s2Step327EntryBank_incomingDistinct : ([s2Step327EntryFRow,s2Step327EntryGRow,s2Step327EntryFvRow,s2Step327EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step327EntryF_Incoming : rowsOwned s2Step327EntryFBefore [s2Step327EntryFRow,s2Step327EntryGRow,s2Step327EntryFvRow,s2Step327EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step327EntryFRow,s2Step327EntryGRow,s2Step327EntryFvRow,s2Step327EntryGvRow] 0 s2Step327EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step327EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step327EntryBank_outgoingOwned : rowsOwned s2Step327EntryGvAfter [s2Step327EntryFOut,s2Step327EntryGOut,s2Step327EntryFvOut,s2Step327EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step327EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step327EntryF_Outgoing : rowsOwned s2Step327EntryGvAfter [s2Step327EntryFOut,s2Step327EntryGOut,s2Step327EntryFvOut,s2Step327EntryGvOut] :=
  hmrRows_owned_drop s2Step327EntryGvAfter [s2Step327EntryFOut,s2Step327EntryGOut,s2Step327EntryFvOut,s2Step327EntryGvOut] 0 s2Step327EntryBank_outgoingOwned

private theorem s2Step327EntryF_distinct : (s2Step327EntryFRow.sign::s2Step327EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step327EntryF_owned : (s2Step327EntryFRow.sign::s2Step327EntryFRow.payload).toFinset⊆s2Step327EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step327EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step327EntryF_reserved : s2Step327EntryFBefore.reserve s2Step327EntryFFresh.toFinset=some s2Step327EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step327EntryFFresh,arenaWires]
  · norm_num [s2Step327EntryFBefore,s2Step327EntryFFresh,arenaWires]
  · simp only [s2Step327EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step327EntryF_checked : planRowResizeLog s2Step327EntryFBefore s2Step327EntryFRow 107 s2Step327EntryFFresh=
    some (s2Step327EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618],768⟩,growRow 768 s2Step327EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step327EntryFBefore s2Step327EntryFAfter s2Step327EntryFRow 107 s2Step327EntryFFresh
    s2Step327EntryF_distinct s2Step327EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step327EntryF_reserved
  have rowEq : WindowRow.mk (s2Step327EntryFRow.payload++s2Step327EntryFFresh) s2Step327EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step327EntryFvAfter : Arena := s2Step327EntryFBefore

private def s2Step327EntryFvBefore : Arena := s2Step327EntryFBefore

private theorem s2Step327EntryFv_Incoming : rowsOwned s2Step327EntryFvBefore [s2Step327EntryFvRow,s2Step327EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step327EntryFRow,s2Step327EntryGRow,s2Step327EntryFvRow,s2Step327EntryGvRow] 2 s2Step327EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step327EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step327EntryFv_Outgoing : rowsOwned s2Step327EntryGvAfter [s2Step327EntryFvOut,s2Step327EntryGvOut] :=
  hmrRows_owned_drop s2Step327EntryGvAfter [s2Step327EntryFOut,s2Step327EntryGOut,s2Step327EntryFvOut,s2Step327EntryGvOut] 2 s2Step327EntryBank_outgoingOwned

private theorem s2Step327EntryFv_distinct : (s2Step327EntryFvRow.sign::s2Step327EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step327EntryFv_owned : (s2Step327EntryFvRow.sign::s2Step327EntryFvRow.payload).toFinset⊆s2Step327EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step327EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step327EntryFv_reserved : s2Step327EntryFvBefore.reserve s2Step327EntryFvFresh.toFinset=some s2Step327EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step327EntryFvFresh,arenaWires]
  · norm_num [s2Step327EntryFvBefore,s2Step327EntryFBefore,s2Step327EntryFvFresh,arenaWires]
  · simp only [s2Step327EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step327EntryFv_checked : planRowResizeLog s2Step327EntryFvBefore s2Step327EntryFvRow 179 s2Step327EntryFvFresh=
    some (s2Step327EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867],770⟩,growRow 770 s2Step327EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step327EntryFvBefore s2Step327EntryFvAfter s2Step327EntryFvRow 179 s2Step327EntryFvFresh
    s2Step327EntryFv_distinct s2Step327EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step327EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step327EntryFvRow.payload++s2Step327EntryFvFresh) s2Step327EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step327EntryGAfter : Arena := s2Step327EntryFBefore

private def s2Step327EntryGBefore : Arena := s2Step327EntryFBefore

private theorem s2Step327EntryG_Incoming : rowsOwned s2Step327EntryGBefore [s2Step327EntryGRow,s2Step327EntryFvRow,s2Step327EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step327EntryFRow,s2Step327EntryGRow,s2Step327EntryFvRow,s2Step327EntryGvRow] 1 s2Step327EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step327EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step327EntryG_Outgoing : rowsOwned s2Step327EntryGvAfter [s2Step327EntryGOut,s2Step327EntryFvOut,s2Step327EntryGvOut] :=
  hmrRows_owned_drop s2Step327EntryGvAfter [s2Step327EntryFOut,s2Step327EntryGOut,s2Step327EntryFvOut,s2Step327EntryGvOut] 1 s2Step327EntryBank_outgoingOwned

private theorem s2Step327EntryG_distinct : (s2Step327EntryGRow.sign::s2Step327EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step327EntryG_owned : (s2Step327EntryGRow.sign::s2Step327EntryGRow.payload).toFinset⊆s2Step327EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step327EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step327EntryG_reserved : s2Step327EntryGBefore.reserve s2Step327EntryGFresh.toFinset=some s2Step327EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step327EntryGFresh,arenaWires]
  · norm_num [s2Step327EntryGBefore,s2Step327EntryFBefore,s2Step327EntryGFresh,arenaWires]
  · simp only [s2Step327EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step327EntryG_checked : planRowResizeLog s2Step327EntryGBefore s2Step327EntryGRow 107 s2Step327EntryGFresh=
    some (s2Step327EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106],769⟩,growRow 769 s2Step327EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step327EntryGBefore s2Step327EntryGAfter s2Step327EntryGRow 107 s2Step327EntryGFresh
    s2Step327EntryG_distinct s2Step327EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step327EntryG_reserved
  have rowEq : WindowRow.mk (s2Step327EntryGRow.payload++s2Step327EntryGFresh) s2Step327EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step327EntryGvBefore : Arena := s2Step327EntryFBefore

private theorem s2Step327EntryGv_Incoming : rowsOwned s2Step327EntryGvBefore [s2Step327EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step327EntryFRow,s2Step327EntryGRow,s2Step327EntryFvRow,s2Step327EntryGvRow] 3 s2Step327EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step327EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step327EntryGv_Outgoing : rowsOwned s2Step327EntryGvAfter [s2Step327EntryGvOut] :=
  hmrRows_owned_drop s2Step327EntryGvAfter [s2Step327EntryFOut,s2Step327EntryGOut,s2Step327EntryFvOut,s2Step327EntryGvOut] 3 s2Step327EntryBank_outgoingOwned

private theorem s2Step327EntryGv_distinct : (s2Step327EntryGvRow.sign::s2Step327EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step327EntryGv_owned : (s2Step327EntryGvRow.sign::s2Step327EntryGvRow.payload).toFinset⊆s2Step327EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step327EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step327EntryGv_reserved : s2Step327EntryGvBefore.reserve s2Step327EntryGvFresh.toFinset=some s2Step327EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step327EntryGvFresh,arenaWires]
  · norm_num [s2Step327EntryGvBefore,s2Step327EntryFBefore,s2Step327EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step327EntryGvAfter,s2Step327EntryGvBefore,s2Step327EntryFBefore,s2Step327EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step327EntryGv_checked : planRowResizeLog s2Step327EntryGvBefore s2Step327EntryGvRow 179 s2Step327EntryGvFresh=
    some (s2Step327EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830],771⟩,growRow 771 s2Step327EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step327EntryGvBefore s2Step327EntryGvAfter s2Step327EntryGvRow 179 s2Step327EntryGvFresh
    s2Step327EntryGv_distinct s2Step327EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step327EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step327EntryGvRow.payload++s2Step327EntryGvFresh) s2Step327EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step327EntryBank_rows : planWindowRowsLog s2Step327EntryFBefore [(s2Step327EntryFRow,107),(s2Step327EntryGRow,107),(s2Step327EntryFvRow,179),(s2Step327EntryGvRow,179)] [s2Step327EntryFFresh,s2Step327EntryGFresh,s2Step327EntryFvFresh,s2Step327EntryGvFresh]=
    some (s2Step327EntryGvAfter,[s2Step327EntryFOut,s2Step327EntryGOut,s2Step327EntryFvOut,s2Step327EntryGvOut],(growRow 768 s2Step327EntryFFresh ++ (growRow 769 s2Step327EntryGFresh ++ (growRow 770 s2Step327EntryFvFresh ++ (growRow 771 s2Step327EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step327EntryGvAfter [] []=some (s2Step327EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step327EntryGvBefore s2Step327EntryGvAfter s2Step327EntryGvAfter
    s2Step327EntryGvRow s2Step327EntryGvOut 179 s2Step327EntryGvFresh [] [] []
    (growRow 771 s2Step327EntryGvFresh) ([]) s2Step327EntryGv_Incoming s2Step327EntryGv_checked h4 s2Step327EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step327EntryFvBefore s2Step327EntryFvAfter s2Step327EntryGvAfter
    s2Step327EntryFvRow s2Step327EntryFvOut 179 s2Step327EntryFvFresh [(s2Step327EntryGvRow,179)] [s2Step327EntryGvFresh] [s2Step327EntryGvOut]
    (growRow 770 s2Step327EntryFvFresh) ((growRow 771 s2Step327EntryGvFresh ++ [])) s2Step327EntryFv_Incoming s2Step327EntryFv_checked h3 s2Step327EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step327EntryGBefore s2Step327EntryGAfter s2Step327EntryGvAfter
    s2Step327EntryGRow s2Step327EntryGOut 107 s2Step327EntryGFresh [(s2Step327EntryFvRow,179),(s2Step327EntryGvRow,179)] [s2Step327EntryFvFresh,s2Step327EntryGvFresh] [s2Step327EntryFvOut,s2Step327EntryGvOut]
    (growRow 769 s2Step327EntryGFresh) ((growRow 770 s2Step327EntryFvFresh ++ (growRow 771 s2Step327EntryGvFresh ++ []))) s2Step327EntryG_Incoming s2Step327EntryG_checked h2 s2Step327EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step327EntryFBefore s2Step327EntryFAfter s2Step327EntryGvAfter
    s2Step327EntryFRow s2Step327EntryFOut 107 s2Step327EntryFFresh [(s2Step327EntryGRow,107),(s2Step327EntryFvRow,179),(s2Step327EntryGvRow,179)] [s2Step327EntryGFresh,s2Step327EntryFvFresh,s2Step327EntryGvFresh] [s2Step327EntryGOut,s2Step327EntryFvOut,s2Step327EntryGvOut]
    (growRow 768 s2Step327EntryFFresh) ((growRow 769 s2Step327EntryGFresh ++ (growRow 770 s2Step327EntryFvFresh ++ (growRow 771 s2Step327EntryGvFresh ++ [])))) s2Step327EntryF_Incoming s2Step327EntryF_checked h1 s2Step327EntryF_Outgoing
  exact h0

private theorem s2Step327EntryBank_checked : compileHmrBankResizeLog .entry s2Step327EntryFBefore ⟨s2Step327EntryFRow,s2Step327EntryGRow,s2Step327EntryFvRow,s2Step327EntryGvRow⟩ ⟨107,107,179,179⟩ [s2Step327EntryFFresh,s2Step327EntryGFresh,s2Step327EntryFvFresh,s2Step327EntryGvFresh]=
    some (s2Step327EntryGvAfter,⟨s2Step327EntryFOut,s2Step327EntryGOut,s2Step327EntryFvOut,s2Step327EntryGvOut⟩,(growRow 768 s2Step327EntryFFresh ++ (growRow 769 s2Step327EntryGFresh ++ (growRow 770 s2Step327EntryFvFresh ++ (growRow 771 s2Step327EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step327EntryBank_rows]
  rfl

private def s2Step327ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<106) ∨ (107≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step327ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<106) ∨ (107≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step327ExitFBefore : Arena := s2Step327ExitGAfter

private def s2Step327ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 827],768⟩

private def s2Step327ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807],770⟩

private def s2Step327ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 782],769⟩

private def s2Step327ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787],771⟩

private theorem s2Step327ExitBank_incomingDistinct : ([s2Step327ExitGRow,s2Step327ExitFRow,s2Step327ExitFvRow,s2Step327ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step327ExitF_Incoming : rowsOwned s2Step327ExitFBefore [s2Step327ExitFRow,s2Step327ExitFvRow,s2Step327ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step327ExitGRow,s2Step327ExitFRow,s2Step327ExitFvRow,s2Step327ExitGvRow] 1 s2Step327ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step327ExitFBefore (fun q => (0≤q ∧ q<106) ∨ (107≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step327ExitBank_outgoingOwned : rowsOwned s2Step327ExitGvAfter [s2Step327ExitGOut,s2Step327ExitFOut,s2Step327ExitFvOut,s2Step327ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step327ExitGvAfter (fun q => (0≤q ∧ q<106) ∨ (107≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step327ExitF_Outgoing : rowsOwned s2Step327ExitGvAfter [s2Step327ExitFOut,s2Step327ExitFvOut,s2Step327ExitGvOut] :=
  hmrRows_owned_drop s2Step327ExitGvAfter [s2Step327ExitGOut,s2Step327ExitFOut,s2Step327ExitFvOut,s2Step327ExitGvOut] 1 s2Step327ExitBank_outgoingOwned

private theorem s2Step327ExitF_distinct : (s2Step327ExitFRow.sign::s2Step327ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step327ExitF_owned : (s2Step327ExitFRow.sign::s2Step327ExitFRow.payload).toFinset⊆s2Step327ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step327ExitFBefore (fun q => (0≤q ∧ q<106) ∨ (107≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step327ExitF_retired : s2Step327ExitFBefore.retireSet s2Step327ExitFExtra.toFinset=s2Step327ExitFAfter := by
  unfold Arena.retireSet s2Step327ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step327ExitFBefore,s2Step327ExitGAfter,s2Step327ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step327ExitF_checked : planRowResizeLog s2Step327ExitFBefore s2Step327ExitFRow 107 []=
    some (s2Step327ExitFAfter,s2Step327ExitFOut,shrinkRow 768 s2Step327ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step327ExitFBefore s2Step327ExitFRow 107 s2Step327ExitF_distinct s2Step327ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step327ExitFRow.payload.take 107) s2Step327ExitFRow.sign=s2Step327ExitFOut := by decide +kernel
  have hi : s2Step327ExitFRow.payload.drop 107=s2Step327ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step327ExitF_retired] at result
  exact result

private def s2Step327ExitFvAfter : Arena := s2Step327ExitFAfter

private def s2Step327ExitFvBefore : Arena := s2Step327ExitFAfter

private theorem s2Step327ExitFv_Incoming : rowsOwned s2Step327ExitFvBefore [s2Step327ExitFvRow,s2Step327ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step327ExitGRow,s2Step327ExitFRow,s2Step327ExitFvRow,s2Step327ExitGvRow] 2 s2Step327ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step327ExitFvBefore (fun q => (0≤q ∧ q<106) ∨ (107≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step327ExitFv_Outgoing : rowsOwned s2Step327ExitGvAfter [s2Step327ExitFvOut,s2Step327ExitGvOut] :=
  hmrRows_owned_drop s2Step327ExitGvAfter [s2Step327ExitGOut,s2Step327ExitFOut,s2Step327ExitFvOut,s2Step327ExitGvOut] 2 s2Step327ExitBank_outgoingOwned

private theorem s2Step327ExitFv_distinct : (s2Step327ExitFvRow.sign::s2Step327ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step327ExitFv_owned : (s2Step327ExitFvRow.sign::s2Step327ExitFvRow.payload).toFinset⊆s2Step327ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step327ExitFvBefore (fun q => (0≤q ∧ q<106) ∨ (107≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step327ExitFv_reserved : s2Step327ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step327ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step327ExitFv_checked : planRowResizeLog s2Step327ExitFvBefore s2Step327ExitFvRow 180 []=
    some (s2Step327ExitFvAfter,s2Step327ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step327ExitFvBefore s2Step327ExitFvAfter s2Step327ExitFvRow 180 []
    s2Step327ExitFv_distinct s2Step327ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step327ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step327ExitFvRow.payload++[]) s2Step327ExitFvRow.sign=s2Step327ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step327ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private theorem s2Step327ExitG_Incoming : rowsOwned s2Step327ExitGBefore [s2Step327ExitGRow,s2Step327ExitFRow,s2Step327ExitFvRow,s2Step327ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step327ExitGRow,s2Step327ExitFRow,s2Step327ExitFvRow,s2Step327ExitGvRow] 0 s2Step327ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step327ExitGBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step327ExitG_Outgoing : rowsOwned s2Step327ExitGvAfter [s2Step327ExitGOut,s2Step327ExitFOut,s2Step327ExitFvOut,s2Step327ExitGvOut] :=
  hmrRows_owned_drop s2Step327ExitGvAfter [s2Step327ExitGOut,s2Step327ExitFOut,s2Step327ExitFvOut,s2Step327ExitGvOut] 0 s2Step327ExitBank_outgoingOwned

private theorem s2Step327ExitG_distinct : (s2Step327ExitGRow.sign::s2Step327ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step327ExitG_owned : (s2Step327ExitGRow.sign::s2Step327ExitGRow.payload).toFinset⊆s2Step327ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step327ExitGBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step327ExitG_retired : s2Step327ExitGBefore.retireSet s2Step327ExitGExtra.toFinset=s2Step327ExitGAfter := by
  unfold Arena.retireSet s2Step327ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step327ExitGBefore,s2Step327ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step327ExitG_checked : planRowResizeLog s2Step327ExitGBefore s2Step327ExitGRow 106 []=
    some (s2Step327ExitGAfter,s2Step327ExitGOut,shrinkRow 769 s2Step327ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step327ExitGBefore s2Step327ExitGRow 106 s2Step327ExitG_distinct s2Step327ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step327ExitGRow.payload.take 106) s2Step327ExitGRow.sign=s2Step327ExitGOut := by decide +kernel
  have hi : s2Step327ExitGRow.payload.drop 106=s2Step327ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step327ExitG_retired] at result
  exact result

private def s2Step327ExitGvBefore : Arena := s2Step327ExitFAfter

private theorem s2Step327ExitGv_Incoming : rowsOwned s2Step327ExitGvBefore [s2Step327ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step327ExitGRow,s2Step327ExitFRow,s2Step327ExitFvRow,s2Step327ExitGvRow] 3 s2Step327ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step327ExitGvBefore (fun q => (0≤q ∧ q<106) ∨ (107≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step327ExitGv_Outgoing : rowsOwned s2Step327ExitGvAfter [s2Step327ExitGvOut] :=
  hmrRows_owned_drop s2Step327ExitGvAfter [s2Step327ExitGOut,s2Step327ExitFOut,s2Step327ExitFvOut,s2Step327ExitGvOut] 3 s2Step327ExitBank_outgoingOwned

private theorem s2Step327ExitGv_distinct : (s2Step327ExitGvRow.sign::s2Step327ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step327ExitGv_owned : (s2Step327ExitGvRow.sign::s2Step327ExitGvRow.payload).toFinset⊆s2Step327ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step327ExitGvBefore (fun q => (0≤q ∧ q<106) ∨ (107≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step327ExitGv_retired : s2Step327ExitGvBefore.retireSet s2Step327ExitGvExtra.toFinset=s2Step327ExitGvAfter := by
  unfold Arena.retireSet s2Step327ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step327ExitGvBefore,s2Step327ExitFAfter,s2Step327ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step327ExitGv_checked : planRowResizeLog s2Step327ExitGvBefore s2Step327ExitGvRow 179 []=
    some (s2Step327ExitGvAfter,s2Step327ExitGvOut,shrinkRow 771 s2Step327ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step327ExitGvBefore s2Step327ExitGvRow 179 s2Step327ExitGv_distinct s2Step327ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step327ExitGvRow.payload.take 179) s2Step327ExitGvRow.sign=s2Step327ExitGvOut := by decide +kernel
  have hi : s2Step327ExitGvRow.payload.drop 179=s2Step327ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step327ExitGv_retired] at result
  exact result

private theorem s2Step327ExitBank_rows : planWindowRowsLog s2Step327ExitGBefore [(s2Step327ExitGRow,106),(s2Step327ExitFRow,107),(s2Step327ExitFvRow,180),(s2Step327ExitGvRow,179)] [[],[],[],[]]=
    some (s2Step327ExitGvAfter,[s2Step327ExitGOut,s2Step327ExitFOut,s2Step327ExitFvOut,s2Step327ExitGvOut],(shrinkRow 769 s2Step327ExitGExtra ++ (shrinkRow 768 s2Step327ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step327ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step327ExitGvAfter [] []=some (s2Step327ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step327ExitGvBefore s2Step327ExitGvAfter s2Step327ExitGvAfter
    s2Step327ExitGvRow s2Step327ExitGvOut 179 [] [] [] []
    (shrinkRow 771 s2Step327ExitGvExtra) ([]) s2Step327ExitGv_Incoming s2Step327ExitGv_checked h4 s2Step327ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step327ExitFvBefore s2Step327ExitFvAfter s2Step327ExitGvAfter
    s2Step327ExitFvRow s2Step327ExitFvOut 180 [] [(s2Step327ExitGvRow,179)] [[]] [s2Step327ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step327ExitGvExtra ++ [])) s2Step327ExitFv_Incoming s2Step327ExitFv_checked h3 s2Step327ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step327ExitFBefore s2Step327ExitFAfter s2Step327ExitGvAfter
    s2Step327ExitFRow s2Step327ExitFOut 107 [] [(s2Step327ExitFvRow,180),(s2Step327ExitGvRow,179)] [[],[]] [s2Step327ExitFvOut,s2Step327ExitGvOut]
    (shrinkRow 768 s2Step327ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step327ExitGvExtra ++ []))) s2Step327ExitF_Incoming s2Step327ExitF_checked h2 s2Step327ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step327ExitGBefore s2Step327ExitGAfter s2Step327ExitGvAfter
    s2Step327ExitGRow s2Step327ExitGOut 106 [] [(s2Step327ExitFRow,107),(s2Step327ExitFvRow,180),(s2Step327ExitGvRow,179)] [[],[],[]] [s2Step327ExitFOut,s2Step327ExitFvOut,s2Step327ExitGvOut]
    (shrinkRow 769 s2Step327ExitGExtra) ((shrinkRow 768 s2Step327ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step327ExitGvExtra ++ [])))) s2Step327ExitG_Incoming s2Step327ExitG_checked h1 s2Step327ExitG_Outgoing
  exact h0

private theorem s2Step327ExitBank_checked : compileHmrBankResizeLog .exit s2Step327ExitGBefore ⟨s2Step327ExitFRow,s2Step327ExitGRow,s2Step327ExitFvRow,s2Step327ExitGvRow⟩ ⟨107,106,180,179⟩ [[],[],[],[]]=
    some (s2Step327ExitGvAfter,⟨s2Step327ExitFOut,s2Step327ExitGOut,s2Step327ExitFvOut,s2Step327ExitGvOut⟩,(shrinkRow 769 s2Step327ExitGExtra ++ (shrinkRow 768 s2Step327ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step327ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step327ExitBank_rows]
  rfl

private theorem s2Step327Add0_apart : Disjoint s2Step327Add0Arena.live s2Step327Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step327Add0Arena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step327Add0_card : s2Step327Add0Arena.live.card=906 := by
  decide +kernel

private theorem s2Step327Add0_borrowed : s2Step327Add0Arena.checkBorrow (hmrHybridCount s2Step327Add0Arena s2Step327Add0B.length) s2Step327Add0Work=some s2Step327Add0During := by
  have len : s2Step327Add0Work.length=hmrHybridCount s2Step327Add0Arena s2Step327Add0B.length := by
    rw [hmrHybridCount,s2Step327Add0_card]
    decide +kernel
  have nd : s2Step327Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step327Add0Arena s2Step327Add0During s2Step327Add0Work.toFinset s2Step327Add0_bounded s2Step327Add0_apart rfl

private theorem s2Step327Add0_distinct : (834::877::806::(s2Step327Add0A++s2Step327Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step327Add0_owned : (834::877::806::(s2Step327Add0A++s2Step327Add0B)).toFinset⊆s2Step327Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step327Add0Arena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step327Add0_checked : compileHmrHybridCinLog s2Step327Add0Arena 877 834 806 s2Step327Add0A s2Step327Add0B s2Step327Add0Work=some s2Step327Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step327Add0Arena s2Step327Add0During 877 834 806 s2Step327Add0A s2Step327Add0B s2Step327Add0Work
    (by decide +kernel) (by decide +kernel) s2Step327Add0_distinct
    (fun q hq => s2Step327Add0_owned (List.mem_toFinset.mpr hq)) s2Step327Add0_borrowed

private theorem s2Step327Add1_apart : Disjoint s2Step327Add1Arena.live s2Step327Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step327Add1Arena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step327Add1_card : s2Step327Add1Arena.live.card=906 := by
  decide +kernel

private theorem s2Step327Add1_borrowed : s2Step327Add1Arena.checkBorrow (hmrHybridCount s2Step327Add1Arena s2Step327Add1B.length) s2Step327Add1Work=some s2Step327Add1During := by
  have len : s2Step327Add1Work.length=hmrHybridCount s2Step327Add1Arena s2Step327Add1B.length := by
    rw [hmrHybridCount,s2Step327Add1_card]
    decide +kernel
  have nd : s2Step327Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step327Add1Arena s2Step327Add1During s2Step327Add1Work.toFinset s2Step327Add1_bounded s2Step327Add1_apart rfl

private theorem s2Step327Add1_distinct : (834::877::806::(s2Step327Add1A++s2Step327Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step327Add1_owned : (834::877::806::(s2Step327Add1A++s2Step327Add1B)).toFinset⊆s2Step327Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step327Add1Arena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step327Add1_checked : compileHmrHybridCinLog s2Step327Add1Arena 877 834 806 s2Step327Add1A s2Step327Add1B s2Step327Add1Work=some s2Step327Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step327Add1Arena s2Step327Add1During 877 834 806 s2Step327Add1A s2Step327Add1B s2Step327Add1Work
    (by decide +kernel) (by decide +kernel) s2Step327Add1_distinct
    (fun q hq => s2Step327Add1_owned (List.mem_toFinset.mpr hq)) s2Step327Add1_borrowed

private theorem s2Step327F4_apart : Disjoint (s2Step327Add0A++s2Step327Add0B).toFinset (s2Step327Add1A++s2Step327Add1B).toFinset := by
  have nd : ((s2Step327Add0A++s2Step327Add0B)++(s2Step327Add1A++s2Step327Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step327F4_carry : s2Step327F4FlagArena.checkBorrow 1 [806]=some s2Step327Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step327F4FlagArena,s2Step327HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step327F4FlagArena,s2Step327HeadFvAfter,s2Step327Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step327F4_distinct : (829::877::834::806::((s2Step327Add0A++s2Step327Add1A)++(s2Step327Add0B++s2Step327Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step327F4_flag : s2Step327HeadFvAfter.checkBorrow 1 [834]=some s2Step327F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step327HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step327F4_owned : (829::877::((s2Step327Add0A++s2Step327Add1A)++(s2Step327Add0B++s2Step327Add1B))).toFinset⊆s2Step327HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step327HeadFvAfter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step327F4_checked : compileHmrHybridF4Log s2Step327HeadFvAfter 829 877 s2Step327Add0A s2Step327Add0B s2Step327Add1A s2Step327Add1B [834] [806] s2Step327Add0Work s2Step327Add1Work=some s2Step327F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step327HeadFvAfter s2Step327F4FlagArena s2Step327Add0Arena s2Step327Add0During s2Step327Add1During 829 877
    s2Step327Add0A s2Step327Add0B s2Step327Add1A s2Step327Add1B [834] [806] s2Step327Add0Work s2Step327Add1Work
    (fun q hq => s2Step327F4_owned (List.mem_toFinset.mpr hq)) s2Step327F4_flag s2Step327F4_carry
    s2Step327F4_distinct s2Step327F4_apart s2Step327Add0_checked s2Step327Add1_checked

private theorem s2Step327Front_branch : s2Step327FrontSigmaArena.checkBorrow 1 [877]=some s2Step327HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step327FrontSigmaArena,s2Step327EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step327FrontSigmaArena,s2Step327EntryGvAfter,s2Step327HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step327Front_entry : HmrFrontEntryValid s2Step327EntryFBefore s2Step327FrontBank 107 179 ⟨107,106,180,179⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step327FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step327EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step327EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step327FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step327Front_sigma : s2Step327EntryGvAfter.checkBorrow 1 [829]=some s2Step327FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step327EntryGvAfter,arenaWires]
  · rfl

private def s2Step327HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step327HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step327HeadFBefore : Arena := s2Step327HeadGAfter

private def s2Step327HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618],768⟩

private def s2Step327HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867],770⟩

private def s2Step327HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106],769⟩

private def s2Step327HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830],771⟩

private theorem s2Step327HeadBank_incomingDistinct : ([s2Step327HeadGRow,s2Step327HeadFRow,s2Step327HeadGvRow,s2Step327HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step327HeadF_Incoming : rowsOwned s2Step327HeadFBefore [s2Step327HeadFRow,s2Step327HeadGvRow,s2Step327HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step327HeadGRow,s2Step327HeadFRow,s2Step327HeadGvRow,s2Step327HeadFvRow] 1 s2Step327HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step327HeadFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step327HeadBank_outgoingOwned : rowsOwned s2Step327HeadFvAfter [s2Step327HeadGOut,s2Step327HeadFOut,s2Step327HeadGvOut,s2Step327HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step327HeadFvAfter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step327HeadF_Outgoing : rowsOwned s2Step327HeadFvAfter [s2Step327HeadFOut,s2Step327HeadGvOut,s2Step327HeadFvOut] :=
  hmrRows_owned_drop s2Step327HeadFvAfter [s2Step327HeadGOut,s2Step327HeadFOut,s2Step327HeadGvOut,s2Step327HeadFvOut] 1 s2Step327HeadBank_outgoingOwned

private theorem s2Step327HeadF_distinct : (s2Step327HeadFRow.sign::s2Step327HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step327HeadF_owned : (s2Step327HeadFRow.sign::s2Step327HeadFRow.payload).toFinset⊆s2Step327HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step327HeadFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step327HeadF_reserved : s2Step327HeadFBefore.reserve s2Step327HeadFFresh.toFinset=some s2Step327HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step327HeadFFresh,arenaWires]
  · norm_num [s2Step327HeadFBefore,s2Step327HeadGAfter,s2Step327HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step327HeadFAfter,s2Step327HeadFBefore,s2Step327HeadGAfter,s2Step327HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step327HeadF_checked : planRowResizeLog s2Step327HeadFBefore s2Step327HeadFRow 108 s2Step327HeadFFresh=
    some (s2Step327HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 827],768⟩,growRow 768 s2Step327HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step327HeadFBefore s2Step327HeadFAfter s2Step327HeadFRow 108 s2Step327HeadFFresh
    s2Step327HeadF_distinct s2Step327HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step327HeadF_reserved
  have rowEq : WindowRow.mk (s2Step327HeadFRow.payload++s2Step327HeadFFresh) s2Step327HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 827],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step327HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step327HeadFvBefore : Arena := s2Step327HeadGvAfter

private theorem s2Step327HeadFv_Incoming : rowsOwned s2Step327HeadFvBefore [s2Step327HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step327HeadGRow,s2Step327HeadFRow,s2Step327HeadGvRow,s2Step327HeadFvRow] 3 s2Step327HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step327HeadFvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step327HeadFv_Outgoing : rowsOwned s2Step327HeadFvAfter [s2Step327HeadFvOut] :=
  hmrRows_owned_drop s2Step327HeadFvAfter [s2Step327HeadGOut,s2Step327HeadFOut,s2Step327HeadGvOut,s2Step327HeadFvOut] 3 s2Step327HeadBank_outgoingOwned

private theorem s2Step327HeadFv_distinct : (s2Step327HeadFvRow.sign::s2Step327HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step327HeadFv_owned : (s2Step327HeadFvRow.sign::s2Step327HeadFvRow.payload).toFinset⊆s2Step327HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step327HeadFvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step327HeadFv_reserved : s2Step327HeadFvBefore.reserve s2Step327HeadFvFresh.toFinset=some s2Step327HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step327HeadFvFresh,arenaWires]
  · norm_num [s2Step327HeadFvBefore,s2Step327HeadGvAfter,s2Step327HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step327HeadFvAfter,s2Step327HeadFvBefore,s2Step327HeadGvAfter,s2Step327HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step327HeadFv_checked : planRowResizeLog s2Step327HeadFvBefore s2Step327HeadFvRow 180 s2Step327HeadFvFresh=
    some (s2Step327HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807],770⟩,growRow 770 s2Step327HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step327HeadFvBefore s2Step327HeadFvAfter s2Step327HeadFvRow 180 s2Step327HeadFvFresh
    s2Step327HeadFv_distinct s2Step327HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step327HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step327HeadFvRow.payload++s2Step327HeadFvFresh) s2Step327HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step327HeadG_Incoming : rowsOwned s2Step327HeadGBefore [s2Step327HeadGRow,s2Step327HeadFRow,s2Step327HeadGvRow,s2Step327HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step327HeadGRow,s2Step327HeadFRow,s2Step327HeadGvRow,s2Step327HeadFvRow] 0 s2Step327HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step327HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step327HeadG_Outgoing : rowsOwned s2Step327HeadFvAfter [s2Step327HeadGOut,s2Step327HeadFOut,s2Step327HeadGvOut,s2Step327HeadFvOut] :=
  hmrRows_owned_drop s2Step327HeadFvAfter [s2Step327HeadGOut,s2Step327HeadFOut,s2Step327HeadGvOut,s2Step327HeadFvOut] 0 s2Step327HeadBank_outgoingOwned

private theorem s2Step327HeadG_distinct : (s2Step327HeadGRow.sign::s2Step327HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step327HeadG_owned : (s2Step327HeadGRow.sign::s2Step327HeadGRow.payload).toFinset⊆s2Step327HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step327HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step327HeadG_reserved : s2Step327HeadGBefore.reserve s2Step327HeadGFresh.toFinset=some s2Step327HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step327HeadGFresh,arenaWires]
  · norm_num [s2Step327HeadGBefore,s2Step327HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step327HeadGAfter,s2Step327HeadGBefore,s2Step327HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step327HeadG_checked : planRowResizeLog s2Step327HeadGBefore s2Step327HeadGRow 108 s2Step327HeadGFresh=
    some (s2Step327HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 782],769⟩,growRow 769 s2Step327HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step327HeadGBefore s2Step327HeadGAfter s2Step327HeadGRow 108 s2Step327HeadGFresh
    s2Step327HeadG_distinct s2Step327HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step327HeadG_reserved
  have rowEq : WindowRow.mk (s2Step327HeadGRow.payload++s2Step327HeadGFresh) s2Step327HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 782],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step327HeadGvBefore : Arena := s2Step327HeadFAfter

private theorem s2Step327HeadGv_Incoming : rowsOwned s2Step327HeadGvBefore [s2Step327HeadGvRow,s2Step327HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step327HeadGRow,s2Step327HeadFRow,s2Step327HeadGvRow,s2Step327HeadFvRow] 2 s2Step327HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step327HeadGvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step327HeadGv_Outgoing : rowsOwned s2Step327HeadFvAfter [s2Step327HeadGvOut,s2Step327HeadFvOut] :=
  hmrRows_owned_drop s2Step327HeadFvAfter [s2Step327HeadGOut,s2Step327HeadFOut,s2Step327HeadGvOut,s2Step327HeadFvOut] 2 s2Step327HeadBank_outgoingOwned

private theorem s2Step327HeadGv_distinct : (s2Step327HeadGvRow.sign::s2Step327HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step327HeadGv_owned : (s2Step327HeadGvRow.sign::s2Step327HeadGvRow.payload).toFinset⊆s2Step327HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step327HeadGvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step327HeadGv_reserved : s2Step327HeadGvBefore.reserve s2Step327HeadGvFresh.toFinset=some s2Step327HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step327HeadGvFresh,arenaWires]
  · norm_num [s2Step327HeadGvBefore,s2Step327HeadFAfter,s2Step327HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step327HeadGvAfter,s2Step327HeadGvBefore,s2Step327HeadFAfter,s2Step327HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step327HeadGv_checked : planRowResizeLog s2Step327HeadGvBefore s2Step327HeadGvRow 180 s2Step327HeadGvFresh=
    some (s2Step327HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787],771⟩,growRow 771 s2Step327HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step327HeadGvBefore s2Step327HeadGvAfter s2Step327HeadGvRow 180 s2Step327HeadGvFresh
    s2Step327HeadGv_distinct s2Step327HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step327HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step327HeadGvRow.payload++s2Step327HeadGvFresh) s2Step327HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step327HeadBank_rows : planWindowRowsLog s2Step327HeadGBefore [(s2Step327HeadGRow,108),(s2Step327HeadFRow,108),(s2Step327HeadGvRow,180),(s2Step327HeadFvRow,180)] [s2Step327HeadGFresh,s2Step327HeadFFresh,s2Step327HeadGvFresh,s2Step327HeadFvFresh]=
    some (s2Step327HeadFvAfter,[s2Step327HeadGOut,s2Step327HeadFOut,s2Step327HeadGvOut,s2Step327HeadFvOut],(growRow 769 s2Step327HeadGFresh ++ (growRow 768 s2Step327HeadFFresh ++ (growRow 771 s2Step327HeadGvFresh ++ (growRow 770 s2Step327HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step327HeadFvAfter [] []=some (s2Step327HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step327HeadFvBefore s2Step327HeadFvAfter s2Step327HeadFvAfter
    s2Step327HeadFvRow s2Step327HeadFvOut 180 s2Step327HeadFvFresh [] [] []
    (growRow 770 s2Step327HeadFvFresh) ([]) s2Step327HeadFv_Incoming s2Step327HeadFv_checked h4 s2Step327HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step327HeadGvBefore s2Step327HeadGvAfter s2Step327HeadFvAfter
    s2Step327HeadGvRow s2Step327HeadGvOut 180 s2Step327HeadGvFresh [(s2Step327HeadFvRow,180)] [s2Step327HeadFvFresh] [s2Step327HeadFvOut]
    (growRow 771 s2Step327HeadGvFresh) ((growRow 770 s2Step327HeadFvFresh ++ [])) s2Step327HeadGv_Incoming s2Step327HeadGv_checked h3 s2Step327HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step327HeadFBefore s2Step327HeadFAfter s2Step327HeadFvAfter
    s2Step327HeadFRow s2Step327HeadFOut 108 s2Step327HeadFFresh [(s2Step327HeadGvRow,180),(s2Step327HeadFvRow,180)] [s2Step327HeadGvFresh,s2Step327HeadFvFresh] [s2Step327HeadGvOut,s2Step327HeadFvOut]
    (growRow 768 s2Step327HeadFFresh) ((growRow 771 s2Step327HeadGvFresh ++ (growRow 770 s2Step327HeadFvFresh ++ []))) s2Step327HeadF_Incoming s2Step327HeadF_checked h2 s2Step327HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step327HeadGBefore s2Step327HeadGAfter s2Step327HeadFvAfter
    s2Step327HeadGRow s2Step327HeadGOut 108 s2Step327HeadGFresh [(s2Step327HeadFRow,108),(s2Step327HeadGvRow,180),(s2Step327HeadFvRow,180)] [s2Step327HeadFFresh,s2Step327HeadGvFresh,s2Step327HeadFvFresh] [s2Step327HeadFOut,s2Step327HeadGvOut,s2Step327HeadFvOut]
    (growRow 769 s2Step327HeadGFresh) ((growRow 768 s2Step327HeadFFresh ++ (growRow 771 s2Step327HeadGvFresh ++ (growRow 770 s2Step327HeadFvFresh ++ [])))) s2Step327HeadG_Incoming s2Step327HeadG_checked h1 s2Step327HeadG_Outgoing
  exact h0

private theorem s2Step327HeadBank_checked : compileHmrBankResizeLog .headroom s2Step327HeadGBefore ⟨s2Step327HeadFRow,s2Step327HeadGRow,s2Step327HeadFvRow,s2Step327HeadGvRow⟩ ⟨108,108,180,180⟩ [s2Step327HeadGFresh,s2Step327HeadFFresh,s2Step327HeadGvFresh,s2Step327HeadFvFresh]=
    some (s2Step327HeadFvAfter,⟨s2Step327HeadFOut,s2Step327HeadGOut,s2Step327HeadFvOut,s2Step327HeadGvOut⟩,(growRow 769 s2Step327HeadGFresh ++ (growRow 768 s2Step327HeadFFresh ++ (growRow 771 s2Step327HeadGvFresh ++ (growRow 770 s2Step327HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step327HeadBank_rows]
  rfl

private theorem s2Step327Front_checked : compileHmrSourceFrontLog s2Step327EntryFBefore s2Step327FrontBank 107 179 ⟨107,106,180,179⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step327FrontLog=some s2Step327FrontPlan := by
  have pairEq : s2Step327FrontPair=⟨s2Step327HeadFRow,s2Step327HeadGRow,s2Step327HeadFvRow,s2Step327HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step327FrontHead=⟨s2Step327ExitFRow,s2Step327ExitGRow,s2Step327ExitFvRow,s2Step327ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step327Add0A=s2Step327FrontHead.f.wires := by decide +kernel
  have gEq : s2Step327Add0B=s2Step327FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step327Add1A=s2Step327FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step327Add1B=s2Step327FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step327EntryFBefore s2Step327FrontBank 107 179 ⟨107,106,180,179⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step327FrontLog s2Step327FrontPlan
  · exact s2Step327Front_entry
  · exact s2Step327EntryBank_checked
  · exact s2Step327Front_sigma
  · rfl
  · exact s2Step327Front_branch
  · rfl
  · simpa only [s2Step327FrontPlan,pairEq] using s2Step327HeadBank_checked
  · simpa only [s2Step327FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step327F4_checked
  · exact s2Step327Counter_checked
  · rfl
  · simpa only [s2Step327FrontPlan,headEq] using s2Step327ExitBank_checked

private theorem s2Step327Complete_explicit_checked : compileHmrEarlyStepLog s2Step327EntryFBefore s2Step327FrontBank 107 179 ⟨107,106,180,179⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step327CompleteLog=some s2Step327CompletePlan := by
  let Q := s2Step327EarlyControlPlan
  have hq := s2Step327EarlyControl_plan_checked
  have fv1 : s2Step327CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step327CompleteOut.fv.payload[2]?.getD s2Step327CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step327CompleteOut.fv.payload[3]?.getD s2Step327CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step327CompleteOut.fv.payload[4]?.getD s2Step327CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step327EntryFBefore s2Step327EarlyControlArena s2Step327FrontBank 107 179 ⟨107,106,180,179⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step327CompleteLog s2Step327FrontPlan Q
    s2Step327Front_checked s2Step327Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step327Complete_owned s2Step327Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step327EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 829 s2Step327CompleteOut.fv.second (s2Step327CompleteOut.fv.payload[2]?.getD s2Step327CompleteOut.fv.sign) (s2Step327CompleteOut.fv.payload[3]?.getD s2Step327CompleteOut.fv.sign) (s2Step327CompleteOut.fv.payload[4]?.getD s2Step327CompleteOut.fv.sign) 877 60 s2Step327EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep327Arena : Arena := s2Step327EntryFBefore
def s2PrivateStep327Bank : WindowBank := s2Step327FrontBank
def s2PrivateStep327Spec : HmrSourceWalkStepLog := ⟨107,179,⟨107,106,180,179⟩,60,.early s2Step327CompleteLog⟩
def s2PrivateStep327Plan : HmrSourceStepPlan := .early s2Step327CompletePlan
theorem s2PrivateStep327_source : s2PrivateStep327Spec=s2ObservedLogs320[7] := rfl
theorem s2PrivateStep327_checked : compileHmrSourceStepLog s2PrivateStep327Arena s2PrivateStep327Bank
    s2PrivateStep327Spec.fgWidth s2PrivateStep327Spec.vWidth s2PrivateStep327Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]
    6 498 327 s2PrivateStep327Spec.need none s2PrivateStep327Spec.log=some s2PrivateStep327Plan := by
  change compileHmrSourceStepLog s2Step327EntryFBefore s2Step327FrontBank 107 179 ⟨107,106,180,179⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 6 498 327 60 none (.early s2Step327CompleteLog)=some (.early s2Step327CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 327<498)]
  rw [s2Step327Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
