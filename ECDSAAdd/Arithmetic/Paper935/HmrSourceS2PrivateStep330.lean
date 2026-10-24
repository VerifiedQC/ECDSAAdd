import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep328
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

private def s2Step330CompleteMoves : List (Wire × Wire) := [(786,104)]

private def s2Step330EarlyControlLog : HmrEarlyControlLog := ⟨[786, 806, 836, 779, 834],[829],[877],[827, 784, 800, 894, 896, 901],[]⟩

private def s2Step330FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[779], [836], [806], [782]],[[], [], [], []]⟩,[817],[794],[834],[829],[877, 827, 784, 800, 894, 896, 901, 903, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[877, 827, 784, 800, 894, 896, 901, 903, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[834, 829, 877, 827]⟩

private def s2Step330CompleteLog : HmrEarlyStepLog := ⟨s2Step330FrontLog,s2Step330CompleteMoves,s2Step330EarlyControlLog⟩

private def s2Step330ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616],768⟩

private def s2Step330ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782],770⟩

private def s2Step330ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103],769⟩

private def s2Step330ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787],771⟩

private def s2Step330FrontOut : WindowBank := ⟨s2Step330ExitFOut,s2Step330ExitGOut,s2Step330ExitFvOut,s2Step330ExitGvOut⟩

private def s2Step330CompleteOut : WindowBank := s2Step330FrontOut.repacked s2Step330CompleteMoves

private def s2Step330EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step330EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step330EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step330EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step330EarlyControlPositiveArena,[829],s2Step330EarlyControlEqualityArena,[877],⟨⟨817,false⟩,[⟨⟨829,false⟩,877⟩]⟩⟩

private def s2Step330EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step330EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step330EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step330EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<817) ∨ (818≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step330EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<817) ∨ (818≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step330EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step330EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,786⟩,⟨⟨774,false⟩,806⟩,⟨⟨775,false⟩,836⟩,⟨⟨776,false⟩,779⟩,⟨⟨777,false⟩,834⟩]⟩

private def s2Step330EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step330EarlyControlZeroArena,s2Step330EarlyControlZeroPlan,s2Step330EarlyControlClassPlan,s2Step330EarlyControlFlagArena,s2Step330EarlyControlFittedArena,s2Step330EarlyControlHistoryArena,s2Step330EarlyControlSigmaArena,s2Step330EarlyControlOutputArena,s2Step330EarlyControlLog⟩

private def s2Step330CounterWork : List Wire := [834, 829, 877, 827]

private theorem s2Step330Counter_bounded : s2Step330CounterWork.toFinset⊆arenaWires := by norm_num [s2Step330CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step330HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step330CounterDuring : Arena := ⟨s2Step330HeadFvAfter.live∪s2Step330CounterWork.toFinset,Finset.union_subset s2Step330HeadFvAfter.bounded s2Step330Counter_bounded⟩

private def s2Step330EntryFFresh : List Wire := []

private def s2Step330EntryFvFresh : List Wire := []

private def s2Step330EntryGFresh : List Wire := []

private def s2Step330EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<817) ∨ (818≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step330EntryGvAfter : Arena := s2Step330EntryFBefore

private def s2Step330EntryGvFresh : List Wire := []

private def s2Step330ExitFExtra : List Wire := [836]

private def s2Step330ExitGExtra : List Wire := [104, 779]

private def s2Step330ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<104) ∨ (105≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step330ExitGvExtra : List Wire := [806]

private def s2Step330Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step330Add0Work : List Wire := [877, 827, 784, 800, 894, 896, 901, 903, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step330Add0_bounded : s2Step330Add0Work.toFinset⊆arenaWires := by
  have h : s2Step330Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step330Add0During : Arena := ⟨s2Step330Add0Arena.live∪s2Step330Add0Work.toFinset,Finset.union_subset s2Step330Add0Arena.bounded s2Step330Add0_bounded⟩

private def s2Step330Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step330Add1Work : List Wire := [877, 827, 784, 800, 894, 896, 901, 903, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step330Add1_bounded : s2Step330Add1Work.toFinset⊆arenaWires := by
  have h : s2Step330Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step330Add1During : Arena := ⟨s2Step330Add1Arena.live∪s2Step330Add1Work.toFinset,Finset.union_subset s2Step330Add1Arena.bounded s2Step330Add1_bounded⟩

private def s2Step330F4FlagArena : Arena := ⟨s2Step330HeadFvAfter.live∪{834},Finset.union_subset s2Step330HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step330F4Plan : HmrHybridF4Plan := ⟨s2Step330F4FlagArena,[834],s2Step330Add0Arena,[829],s2Step330Add0During,s2Step330Add0Work,s2Step330Add1During,s2Step330Add1Work⟩

private def s2Step330HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 836],768⟩

private def s2Step330HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782],770⟩

private def s2Step330HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 779],769⟩

private def s2Step330HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 806],771⟩

private def s2Step330FrontHead : WindowBank := ⟨s2Step330HeadFOut,s2Step330HeadGOut,s2Step330HeadFvOut,s2Step330HeadGvOut⟩

private def s2Step330EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616],768⟩

private def s2Step330EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807],770⟩

private def s2Step330EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104],769⟩

private def s2Step330EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787],771⟩

private def s2Step330FrontPair : WindowBank := ⟨s2Step330EntryFOut,s2Step330EntryGOut,s2Step330EntryFvOut,s2Step330EntryGvOut⟩

private def s2Step330FrontSigmaArena : Arena := ⟨s2Step330EntryGvAfter.live∪{817},Finset.union_subset s2Step330EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step330HeadFFresh : List Wire := [836]

private def s2Step330HeadFvFresh : List Wire := [782]

private def s2Step330HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step330HeadGFresh : List Wire := [779]

private def s2Step330HeadGvFresh : List Wire := [806]

private def s2Step330FrontPlan : HmrSourceFront := ⟨s2Step330EntryGvAfter,s2Step330FrontPair,(growRow 768 s2Step330EntryFFresh ++ (growRow 769 s2Step330EntryGFresh ++ (growRow 770 s2Step330EntryFvFresh ++ (growRow 771 s2Step330EntryGvFresh ++ [])))),s2Step330FrontSigmaArena,[817],s2Step330HeadGBefore,[794],
  s2Step330HeadFvAfter,s2Step330FrontHead,(growRow 769 s2Step330HeadGFresh ++ (growRow 768 s2Step330HeadFFresh ++ (growRow 771 s2Step330HeadGvFresh ++ (growRow 770 s2Step330HeadFvFresh ++ [])))),s2Step330F4Plan,s2Step330CounterDuring,s2Step330CounterWork,s2Step330ExitGvAfter,s2Step330FrontOut,(shrinkRow 769 s2Step330ExitGExtra ++ (shrinkRow 768 s2Step330ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step330ExitGvExtra ++ []))))⟩

private def s2Step330CompletePlan : HmrEarlyStepPlan := ⟨s2Step330FrontPlan,s2Step330EarlyControlArena,s2Step330EarlyControlPlan,s2Step330CompleteMoves⟩

private theorem s2Step330Complete_apart : List.Disjoint (s2Step330CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [817, 794, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] := by
  have nd : ((s2Step330CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[817, 794, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step330Complete_owned : (s2Step330CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step330EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step330EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private def s2Step330CompleteMoveArena : Arena := ⟨s2Step330ExitGvAfter.live∪{104},Finset.union_subset s2Step330ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step330Complete_repack : s2Step330ExitGvAfter.checkRepack s2Step330CompleteMoves=some s2Step330EarlyControlArena := by
  have owned : 786∈s2Step330ExitGvAfter.live := by norm_num [s2Step330ExitGvAfter,arenaWires]
  have reserve : s2Step330ExitGvAfter.reserve {104}=some s2Step330CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step330ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step330CompleteMoveArena.retireSet {786}=s2Step330EarlyControlArena := by
    unfold Arena.retireSet s2Step330EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step330CompleteMoveArena,s2Step330ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step330CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step330CompleteMoveArena.retireSet {786}).checkRepack []=some s2Step330EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step330EarlyControl_branchOwned : ([794] : List Wire).toFinset⊆s2Step330EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step330EarlyControlSigmaArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<817) ∨ (818≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step330EarlyControl_branch : compileHmrBranchRetirement s2Step330EarlyControlSigmaArena 794=some s2Step330EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step330EarlyControl_branchOwned
  · ext q
    simp [s2Step330EarlyControlOutputArena,s2Step330EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step330EarlyControl_classEqualityBorrow : s2Step330EarlyControlPositiveArena.checkBorrow (([817, 829] : List Wire).length-1) s2Step330EarlyControlLog.classWork=some s2Step330EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step330EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step330EarlyControlPositiveArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step330EarlyControlEqualityArena,s2Step330EarlyControlPositiveArena,s2Step330EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step330EarlyControl_classEqualityOwned : ([817, 829] : List Wire).toFinset⊆s2Step330EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step330EarlyControlPositiveArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step330EarlyControl_classEquality : compileHmrEqualityLog s2Step330EarlyControlPositiveArena [817, 829] 0 s2Step330EarlyControlLog.classWork=some (s2Step330EarlyControlEqualityArena,s2Step330EarlyControlLog.classWork,s2Step330EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step330EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step330EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step330EarlyControl_classOwned : ([777, 834, 817] : List Wire).toFinset⊆s2Step330EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step330EarlyControlZeroArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step330EarlyControl_positiveBorrow : s2Step330EarlyControlZeroArena.checkBorrow (1) s2Step330EarlyControlLog.positiveWork=some s2Step330EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step330EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step330EarlyControlZeroArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step330EarlyControlPositiveArena,s2Step330EarlyControlZeroArena,s2Step330EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step330EarlyControl_class : compileHmrSourceClassLog s2Step330EarlyControlZeroArena false 777 s2Step330EarlyControlZeroPlan.top 0 817 s2Step330EarlyControlLog.positiveWork s2Step330EarlyControlLog.classWork=some s2Step330EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step330EarlyControlClassPlan s2Step330EarlyControlZeroArena false 777 s2Step330EarlyControlZeroPlan.top 0 817
  constructor
  · decide +kernel
  · exact s2Step330EarlyControl_classOwned
  · exact s2Step330EarlyControl_positiveBorrow
  · exact s2Step330EarlyControl_classEquality

private theorem s2Step330EarlyControl_entryRecordOwned : ([794, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step330EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step330EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step330EarlyControl_entrySigmaOwned : ([817, 254] : List Wire).toFinset⊆s2Step330EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step330EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step330EarlyControl_fitBorrow : s2Step330EarlyControlFlagArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step330EarlyControlLog.recordFresh=some s2Step330EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step330EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step330EarlyControlFlagArena (fun q => (0≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step330EarlyControlFittedArena,s2Step330EarlyControlFlagArena,s2Step330EarlyControlLog,arenaWires]

private theorem s2Step330EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step330EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step330EarlyControlFlagArena (fun q => (0≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step330EarlyControl_fit : compileHmrRecordGrowLog s2Step330EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step330EarlyControlLog.recordFresh=some s2Step330EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step330EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step330EarlyControl_fitBorrow

private theorem s2Step330EarlyControl_flagsBorrow : s2Step330EarlyControlEqualityArena.checkBorrow (6) s2Step330EarlyControlLog.flagWork=some s2Step330EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step330EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step330EarlyControlEqualityArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step330EarlyControlFlagArena,s2Step330EarlyControlEqualityArena,s2Step330EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step330EarlyControl_flagsOwned : ([877, 253, 252, 251] : List Wire).toFinset⊆s2Step330EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step330EarlyControlEqualityArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step330EarlyControl_flags : compileHmrFlagsLog s2Step330EarlyControlClassPlan.equalityArena s2Step330EarlyControlClassPlan.equality.top 253 252 251 s2Step330EarlyControlLog.flagWork=some s2Step330EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step330EarlyControl_flagsOwned⟩
  · exact s2Step330EarlyControl_flagsBorrow

private theorem s2Step330EarlyControl_historyBorrow : s2Step330EarlyControlArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step330EarlyControlLog.recordFresh=some s2Step330EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step330EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step330EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step330EarlyControlHistoryArena,s2Step330EarlyControlArena,s2Step330EarlyControlLog,arenaWires]

private theorem s2Step330EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step330EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step330EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step330EarlyControl_history : compileHmrRecordGrowLog s2Step330EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step330EarlyControlLog.recordFresh=some s2Step330EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step330EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step330EarlyControl_historyBorrow

private theorem s2Step330EarlyControl_sigmaOwned : ([254, 817] : List Wire).toFinset⊆s2Step330EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step330EarlyControlHistoryArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step330EarlyControl_sigmaReleaseOwned : ([817] : List Wire).toFinset⊆s2Step330EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step330EarlyControlHistoryArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step330EarlyControl_sigmaRelease : s2Step330EarlyControlHistoryArena.release {817} (fun _ => false)=some s2Step330EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step330EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step330EarlyControlSigmaArena,s2Step330EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step330EarlyControl_sigma : compileHmrSigmaDropLog s2Step330EarlyControlHistoryArena false 0 0 254 817 []=some s2Step330EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step330EarlyControl_sigmaOwned⟩
  · exact s2Step330EarlyControl_sigmaRelease

private theorem s2Step330EarlyControl_zeroBorrow : s2Step330EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step330EarlyControlLog.zeroWork=some s2Step330EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step330EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step330EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step330EarlyControlZeroArena,s2Step330EarlyControlArena,s2Step330EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step330EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step330EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step330EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step330EarlyControl_zero : compileHmrEqualityLog s2Step330EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step330EarlyControlLog.zeroWork=some (s2Step330EarlyControlZeroArena,s2Step330EarlyControlLog.zeroWork,s2Step330EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step330EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step330EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step330EarlyControl_logged : s2Step330EarlyControlPlan.Logged s2Step330EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 817 254 253 252 251 794 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step330EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step330EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step330EarlyControl_zero
  · exact s2Step330EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step330EarlyControl_flags
  · exact s2Step330EarlyControl_fit
  · exact s2Step330EarlyControl_history
  · exact s2Step330EarlyControl_sigma
  · exact s2Step330EarlyControl_branch

private theorem s2Step330EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step330EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 817 254 253 252 251 794 60 s2Step330EarlyControlLog=some s2Step330EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step330EarlyControlPlan s2Step330EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 817 254 253 252 251 794 60 s2Step330EarlyControl_logged

private def s2Step330EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616],768⟩

private def s2Step330EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807],770⟩

private def s2Step330EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104],769⟩

private def s2Step330EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787],771⟩

private def s2Step330FrontBank : WindowBank := ⟨s2Step330EntryFRow,s2Step330EntryGRow,s2Step330EntryFvRow,s2Step330EntryGvRow⟩

private def s2Step330Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 836, 768]

private def s2Step330Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 779, 769]

private def s2Step330Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 770]

private def s2Step330Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 806, 771]

private theorem s2Step330Counter_apart : Disjoint s2Step330HeadFvAfter.live s2Step330CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step330HeadFvAfter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step330Counter_borrowed : s2Step330HeadFvAfter.checkBorrow 4 s2Step330CounterWork=some s2Step330CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step330HeadFvAfter s2Step330CounterDuring s2Step330CounterWork.toFinset s2Step330Counter_bounded s2Step330Counter_apart rfl

private theorem s2Step330Counter_owned : (817::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step330HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step330HeadFvAfter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step330Counter_checked : compileHmrCounterStepLog s2Step330HeadFvAfter true 817 [772, 773, 774, 775, 776, 777] s2Step330CounterWork=some s2Step330CounterDuring := by
  have owned : ∀q∈817::[772, 773, 774, 775, 776, 777],q∈s2Step330HeadFvAfter.live := fun q hq => s2Step330Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step330Counter_borrowed

private def s2Step330EntryFAfter : Arena := s2Step330EntryFBefore

private theorem s2Step330EntryBank_incomingDistinct : ([s2Step330EntryFRow,s2Step330EntryGRow,s2Step330EntryFvRow,s2Step330EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step330EntryF_Incoming : rowsOwned s2Step330EntryFBefore [s2Step330EntryFRow,s2Step330EntryGRow,s2Step330EntryFvRow,s2Step330EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step330EntryFRow,s2Step330EntryGRow,s2Step330EntryFvRow,s2Step330EntryGvRow] 0 s2Step330EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step330EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<817) ∨ (818≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step330EntryBank_outgoingOwned : rowsOwned s2Step330EntryGvAfter [s2Step330EntryFOut,s2Step330EntryGOut,s2Step330EntryFvOut,s2Step330EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step330EntryGvAfter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<817) ∨ (818≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step330EntryF_Outgoing : rowsOwned s2Step330EntryGvAfter [s2Step330EntryFOut,s2Step330EntryGOut,s2Step330EntryFvOut,s2Step330EntryGvOut] :=
  hmrRows_owned_drop s2Step330EntryGvAfter [s2Step330EntryFOut,s2Step330EntryGOut,s2Step330EntryFvOut,s2Step330EntryGvOut] 0 s2Step330EntryBank_outgoingOwned

private theorem s2Step330EntryF_distinct : (s2Step330EntryFRow.sign::s2Step330EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step330EntryF_owned : (s2Step330EntryFRow.sign::s2Step330EntryFRow.payload).toFinset⊆s2Step330EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step330EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<817) ∨ (818≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step330EntryF_reserved : s2Step330EntryFBefore.reserve s2Step330EntryFFresh.toFinset=some s2Step330EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step330EntryFFresh,arenaWires]
  · norm_num [s2Step330EntryFBefore,s2Step330EntryFFresh,arenaWires]
  · simp only [s2Step330EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step330EntryF_checked : planRowResizeLog s2Step330EntryFBefore s2Step330EntryFRow 105 s2Step330EntryFFresh=
    some (s2Step330EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616],768⟩,growRow 768 s2Step330EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step330EntryFBefore s2Step330EntryFAfter s2Step330EntryFRow 105 s2Step330EntryFFresh
    s2Step330EntryF_distinct s2Step330EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step330EntryF_reserved
  have rowEq : WindowRow.mk (s2Step330EntryFRow.payload++s2Step330EntryFFresh) s2Step330EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step330EntryFvAfter : Arena := s2Step330EntryFBefore

private def s2Step330EntryFvBefore : Arena := s2Step330EntryFBefore

private theorem s2Step330EntryFv_Incoming : rowsOwned s2Step330EntryFvBefore [s2Step330EntryFvRow,s2Step330EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step330EntryFRow,s2Step330EntryGRow,s2Step330EntryFvRow,s2Step330EntryGvRow] 2 s2Step330EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step330EntryFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<817) ∨ (818≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step330EntryFv_Outgoing : rowsOwned s2Step330EntryGvAfter [s2Step330EntryFvOut,s2Step330EntryGvOut] :=
  hmrRows_owned_drop s2Step330EntryGvAfter [s2Step330EntryFOut,s2Step330EntryGOut,s2Step330EntryFvOut,s2Step330EntryGvOut] 2 s2Step330EntryBank_outgoingOwned

private theorem s2Step330EntryFv_distinct : (s2Step330EntryFvRow.sign::s2Step330EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step330EntryFv_owned : (s2Step330EntryFvRow.sign::s2Step330EntryFvRow.payload).toFinset⊆s2Step330EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step330EntryFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<817) ∨ (818≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step330EntryFv_reserved : s2Step330EntryFvBefore.reserve s2Step330EntryFvFresh.toFinset=some s2Step330EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step330EntryFvFresh,arenaWires]
  · norm_num [s2Step330EntryFvBefore,s2Step330EntryFBefore,s2Step330EntryFvFresh,arenaWires]
  · simp only [s2Step330EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step330EntryFv_checked : planRowResizeLog s2Step330EntryFvBefore s2Step330EntryFvRow 180 s2Step330EntryFvFresh=
    some (s2Step330EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807],770⟩,growRow 770 s2Step330EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step330EntryFvBefore s2Step330EntryFvAfter s2Step330EntryFvRow 180 s2Step330EntryFvFresh
    s2Step330EntryFv_distinct s2Step330EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step330EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step330EntryFvRow.payload++s2Step330EntryFvFresh) s2Step330EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step330EntryGAfter : Arena := s2Step330EntryFBefore

private def s2Step330EntryGBefore : Arena := s2Step330EntryFBefore

private theorem s2Step330EntryG_Incoming : rowsOwned s2Step330EntryGBefore [s2Step330EntryGRow,s2Step330EntryFvRow,s2Step330EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step330EntryFRow,s2Step330EntryGRow,s2Step330EntryFvRow,s2Step330EntryGvRow] 1 s2Step330EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step330EntryGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<817) ∨ (818≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step330EntryG_Outgoing : rowsOwned s2Step330EntryGvAfter [s2Step330EntryGOut,s2Step330EntryFvOut,s2Step330EntryGvOut] :=
  hmrRows_owned_drop s2Step330EntryGvAfter [s2Step330EntryFOut,s2Step330EntryGOut,s2Step330EntryFvOut,s2Step330EntryGvOut] 1 s2Step330EntryBank_outgoingOwned

private theorem s2Step330EntryG_distinct : (s2Step330EntryGRow.sign::s2Step330EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step330EntryG_owned : (s2Step330EntryGRow.sign::s2Step330EntryGRow.payload).toFinset⊆s2Step330EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step330EntryGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<817) ∨ (818≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step330EntryG_reserved : s2Step330EntryGBefore.reserve s2Step330EntryGFresh.toFinset=some s2Step330EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step330EntryGFresh,arenaWires]
  · norm_num [s2Step330EntryGBefore,s2Step330EntryFBefore,s2Step330EntryGFresh,arenaWires]
  · simp only [s2Step330EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step330EntryG_checked : planRowResizeLog s2Step330EntryGBefore s2Step330EntryGRow 105 s2Step330EntryGFresh=
    some (s2Step330EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104],769⟩,growRow 769 s2Step330EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step330EntryGBefore s2Step330EntryGAfter s2Step330EntryGRow 105 s2Step330EntryGFresh
    s2Step330EntryG_distinct s2Step330EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step330EntryG_reserved
  have rowEq : WindowRow.mk (s2Step330EntryGRow.payload++s2Step330EntryGFresh) s2Step330EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step330EntryGvBefore : Arena := s2Step330EntryFBefore

private theorem s2Step330EntryGv_Incoming : rowsOwned s2Step330EntryGvBefore [s2Step330EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step330EntryFRow,s2Step330EntryGRow,s2Step330EntryFvRow,s2Step330EntryGvRow] 3 s2Step330EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step330EntryGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<817) ∨ (818≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step330EntryGv_Outgoing : rowsOwned s2Step330EntryGvAfter [s2Step330EntryGvOut] :=
  hmrRows_owned_drop s2Step330EntryGvAfter [s2Step330EntryFOut,s2Step330EntryGOut,s2Step330EntryFvOut,s2Step330EntryGvOut] 3 s2Step330EntryBank_outgoingOwned

private theorem s2Step330EntryGv_distinct : (s2Step330EntryGvRow.sign::s2Step330EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step330EntryGv_owned : (s2Step330EntryGvRow.sign::s2Step330EntryGvRow.payload).toFinset⊆s2Step330EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step330EntryGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<817) ∨ (818≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step330EntryGv_reserved : s2Step330EntryGvBefore.reserve s2Step330EntryGvFresh.toFinset=some s2Step330EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step330EntryGvFresh,arenaWires]
  · norm_num [s2Step330EntryGvBefore,s2Step330EntryFBefore,s2Step330EntryGvFresh,arenaWires]
  · simp only [s2Step330EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step330EntryGv_checked : planRowResizeLog s2Step330EntryGvBefore s2Step330EntryGvRow 180 s2Step330EntryGvFresh=
    some (s2Step330EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787],771⟩,growRow 771 s2Step330EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step330EntryGvBefore s2Step330EntryGvAfter s2Step330EntryGvRow 180 s2Step330EntryGvFresh
    s2Step330EntryGv_distinct s2Step330EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step330EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step330EntryGvRow.payload++s2Step330EntryGvFresh) s2Step330EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step330EntryBank_rows : planWindowRowsLog s2Step330EntryFBefore [(s2Step330EntryFRow,105),(s2Step330EntryGRow,105),(s2Step330EntryFvRow,180),(s2Step330EntryGvRow,180)] [s2Step330EntryFFresh,s2Step330EntryGFresh,s2Step330EntryFvFresh,s2Step330EntryGvFresh]=
    some (s2Step330EntryGvAfter,[s2Step330EntryFOut,s2Step330EntryGOut,s2Step330EntryFvOut,s2Step330EntryGvOut],(growRow 768 s2Step330EntryFFresh ++ (growRow 769 s2Step330EntryGFresh ++ (growRow 770 s2Step330EntryFvFresh ++ (growRow 771 s2Step330EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step330EntryGvAfter [] []=some (s2Step330EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step330EntryGvBefore s2Step330EntryGvAfter s2Step330EntryGvAfter
    s2Step330EntryGvRow s2Step330EntryGvOut 180 s2Step330EntryGvFresh [] [] []
    (growRow 771 s2Step330EntryGvFresh) ([]) s2Step330EntryGv_Incoming s2Step330EntryGv_checked h4 s2Step330EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step330EntryFvBefore s2Step330EntryFvAfter s2Step330EntryGvAfter
    s2Step330EntryFvRow s2Step330EntryFvOut 180 s2Step330EntryFvFresh [(s2Step330EntryGvRow,180)] [s2Step330EntryGvFresh] [s2Step330EntryGvOut]
    (growRow 770 s2Step330EntryFvFresh) ((growRow 771 s2Step330EntryGvFresh ++ [])) s2Step330EntryFv_Incoming s2Step330EntryFv_checked h3 s2Step330EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step330EntryGBefore s2Step330EntryGAfter s2Step330EntryGvAfter
    s2Step330EntryGRow s2Step330EntryGOut 105 s2Step330EntryGFresh [(s2Step330EntryFvRow,180),(s2Step330EntryGvRow,180)] [s2Step330EntryFvFresh,s2Step330EntryGvFresh] [s2Step330EntryFvOut,s2Step330EntryGvOut]
    (growRow 769 s2Step330EntryGFresh) ((growRow 770 s2Step330EntryFvFresh ++ (growRow 771 s2Step330EntryGvFresh ++ []))) s2Step330EntryG_Incoming s2Step330EntryG_checked h2 s2Step330EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step330EntryFBefore s2Step330EntryFAfter s2Step330EntryGvAfter
    s2Step330EntryFRow s2Step330EntryFOut 105 s2Step330EntryFFresh [(s2Step330EntryGRow,105),(s2Step330EntryFvRow,180),(s2Step330EntryGvRow,180)] [s2Step330EntryGFresh,s2Step330EntryFvFresh,s2Step330EntryGvFresh] [s2Step330EntryGOut,s2Step330EntryFvOut,s2Step330EntryGvOut]
    (growRow 768 s2Step330EntryFFresh) ((growRow 769 s2Step330EntryGFresh ++ (growRow 770 s2Step330EntryFvFresh ++ (growRow 771 s2Step330EntryGvFresh ++ [])))) s2Step330EntryF_Incoming s2Step330EntryF_checked h1 s2Step330EntryF_Outgoing
  exact h0

private theorem s2Step330EntryBank_checked : compileHmrBankResizeLog .entry s2Step330EntryFBefore ⟨s2Step330EntryFRow,s2Step330EntryGRow,s2Step330EntryFvRow,s2Step330EntryGvRow⟩ ⟨105,105,180,180⟩ [s2Step330EntryFFresh,s2Step330EntryGFresh,s2Step330EntryFvFresh,s2Step330EntryGvFresh]=
    some (s2Step330EntryGvAfter,⟨s2Step330EntryFOut,s2Step330EntryGOut,s2Step330EntryFvOut,s2Step330EntryGvOut⟩,(growRow 768 s2Step330EntryFFresh ++ (growRow 769 s2Step330EntryGFresh ++ (growRow 770 s2Step330EntryFvFresh ++ (growRow 771 s2Step330EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step330EntryBank_rows]
  rfl

private def s2Step330ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<104) ∨ (105≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step330ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<104) ∨ (105≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step330ExitFBefore : Arena := s2Step330ExitGAfter

private def s2Step330ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 836],768⟩

private def s2Step330ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782],770⟩

private def s2Step330ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 779],769⟩

private def s2Step330ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 806],771⟩

private theorem s2Step330ExitBank_incomingDistinct : ([s2Step330ExitGRow,s2Step330ExitFRow,s2Step330ExitFvRow,s2Step330ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step330ExitF_Incoming : rowsOwned s2Step330ExitFBefore [s2Step330ExitFRow,s2Step330ExitFvRow,s2Step330ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step330ExitGRow,s2Step330ExitFRow,s2Step330ExitFvRow,s2Step330ExitGvRow] 1 s2Step330ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step330ExitFBefore (fun q => (0≤q ∧ q<104) ∨ (105≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step330ExitBank_outgoingOwned : rowsOwned s2Step330ExitGvAfter [s2Step330ExitGOut,s2Step330ExitFOut,s2Step330ExitFvOut,s2Step330ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step330ExitGvAfter (fun q => (0≤q ∧ q<104) ∨ (105≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step330ExitF_Outgoing : rowsOwned s2Step330ExitGvAfter [s2Step330ExitFOut,s2Step330ExitFvOut,s2Step330ExitGvOut] :=
  hmrRows_owned_drop s2Step330ExitGvAfter [s2Step330ExitGOut,s2Step330ExitFOut,s2Step330ExitFvOut,s2Step330ExitGvOut] 1 s2Step330ExitBank_outgoingOwned

private theorem s2Step330ExitF_distinct : (s2Step330ExitFRow.sign::s2Step330ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step330ExitF_owned : (s2Step330ExitFRow.sign::s2Step330ExitFRow.payload).toFinset⊆s2Step330ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step330ExitFBefore (fun q => (0≤q ∧ q<104) ∨ (105≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step330ExitF_retired : s2Step330ExitFBefore.retireSet s2Step330ExitFExtra.toFinset=s2Step330ExitFAfter := by
  unfold Arena.retireSet s2Step330ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step330ExitFBefore,s2Step330ExitGAfter,s2Step330ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step330ExitF_checked : planRowResizeLog s2Step330ExitFBefore s2Step330ExitFRow 105 []=
    some (s2Step330ExitFAfter,s2Step330ExitFOut,shrinkRow 768 s2Step330ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step330ExitFBefore s2Step330ExitFRow 105 s2Step330ExitF_distinct s2Step330ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step330ExitFRow.payload.take 105) s2Step330ExitFRow.sign=s2Step330ExitFOut := by decide +kernel
  have hi : s2Step330ExitFRow.payload.drop 105=s2Step330ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step330ExitF_retired] at result
  exact result

private def s2Step330ExitFvAfter : Arena := s2Step330ExitFAfter

private def s2Step330ExitFvBefore : Arena := s2Step330ExitFAfter

private theorem s2Step330ExitFv_Incoming : rowsOwned s2Step330ExitFvBefore [s2Step330ExitFvRow,s2Step330ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step330ExitGRow,s2Step330ExitFRow,s2Step330ExitFvRow,s2Step330ExitGvRow] 2 s2Step330ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step330ExitFvBefore (fun q => (0≤q ∧ q<104) ∨ (105≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step330ExitFv_Outgoing : rowsOwned s2Step330ExitGvAfter [s2Step330ExitFvOut,s2Step330ExitGvOut] :=
  hmrRows_owned_drop s2Step330ExitGvAfter [s2Step330ExitGOut,s2Step330ExitFOut,s2Step330ExitFvOut,s2Step330ExitGvOut] 2 s2Step330ExitBank_outgoingOwned

private theorem s2Step330ExitFv_distinct : (s2Step330ExitFvRow.sign::s2Step330ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step330ExitFv_owned : (s2Step330ExitFvRow.sign::s2Step330ExitFvRow.payload).toFinset⊆s2Step330ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step330ExitFvBefore (fun q => (0≤q ∧ q<104) ∨ (105≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step330ExitFv_reserved : s2Step330ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step330ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step330ExitFv_checked : planRowResizeLog s2Step330ExitFvBefore s2Step330ExitFvRow 181 []=
    some (s2Step330ExitFvAfter,s2Step330ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step330ExitFvBefore s2Step330ExitFvAfter s2Step330ExitFvRow 181 []
    s2Step330ExitFv_distinct s2Step330ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step330ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step330ExitFvRow.payload++[]) s2Step330ExitFvRow.sign=s2Step330ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step330ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private theorem s2Step330ExitG_Incoming : rowsOwned s2Step330ExitGBefore [s2Step330ExitGRow,s2Step330ExitFRow,s2Step330ExitFvRow,s2Step330ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step330ExitGRow,s2Step330ExitFRow,s2Step330ExitFvRow,s2Step330ExitGvRow] 0 s2Step330ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step330ExitGBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step330ExitG_Outgoing : rowsOwned s2Step330ExitGvAfter [s2Step330ExitGOut,s2Step330ExitFOut,s2Step330ExitFvOut,s2Step330ExitGvOut] :=
  hmrRows_owned_drop s2Step330ExitGvAfter [s2Step330ExitGOut,s2Step330ExitFOut,s2Step330ExitFvOut,s2Step330ExitGvOut] 0 s2Step330ExitBank_outgoingOwned

private theorem s2Step330ExitG_distinct : (s2Step330ExitGRow.sign::s2Step330ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step330ExitG_owned : (s2Step330ExitGRow.sign::s2Step330ExitGRow.payload).toFinset⊆s2Step330ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step330ExitGBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step330ExitG_retired : s2Step330ExitGBefore.retireSet s2Step330ExitGExtra.toFinset=s2Step330ExitGAfter := by
  unfold Arena.retireSet s2Step330ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step330ExitGBefore,s2Step330ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step330ExitG_checked : planRowResizeLog s2Step330ExitGBefore s2Step330ExitGRow 104 []=
    some (s2Step330ExitGAfter,s2Step330ExitGOut,shrinkRow 769 s2Step330ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step330ExitGBefore s2Step330ExitGRow 104 s2Step330ExitG_distinct s2Step330ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step330ExitGRow.payload.take 104) s2Step330ExitGRow.sign=s2Step330ExitGOut := by decide +kernel
  have hi : s2Step330ExitGRow.payload.drop 104=s2Step330ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step330ExitG_retired] at result
  exact result

private def s2Step330ExitGvBefore : Arena := s2Step330ExitFAfter

private theorem s2Step330ExitGv_Incoming : rowsOwned s2Step330ExitGvBefore [s2Step330ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step330ExitGRow,s2Step330ExitFRow,s2Step330ExitFvRow,s2Step330ExitGvRow] 3 s2Step330ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step330ExitGvBefore (fun q => (0≤q ∧ q<104) ∨ (105≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step330ExitGv_Outgoing : rowsOwned s2Step330ExitGvAfter [s2Step330ExitGvOut] :=
  hmrRows_owned_drop s2Step330ExitGvAfter [s2Step330ExitGOut,s2Step330ExitFOut,s2Step330ExitFvOut,s2Step330ExitGvOut] 3 s2Step330ExitBank_outgoingOwned

private theorem s2Step330ExitGv_distinct : (s2Step330ExitGvRow.sign::s2Step330ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step330ExitGv_owned : (s2Step330ExitGvRow.sign::s2Step330ExitGvRow.payload).toFinset⊆s2Step330ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step330ExitGvBefore (fun q => (0≤q ∧ q<104) ∨ (105≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step330ExitGv_retired : s2Step330ExitGvBefore.retireSet s2Step330ExitGvExtra.toFinset=s2Step330ExitGvAfter := by
  unfold Arena.retireSet s2Step330ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step330ExitGvBefore,s2Step330ExitFAfter,s2Step330ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step330ExitGv_checked : planRowResizeLog s2Step330ExitGvBefore s2Step330ExitGvRow 180 []=
    some (s2Step330ExitGvAfter,s2Step330ExitGvOut,shrinkRow 771 s2Step330ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step330ExitGvBefore s2Step330ExitGvRow 180 s2Step330ExitGv_distinct s2Step330ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step330ExitGvRow.payload.take 180) s2Step330ExitGvRow.sign=s2Step330ExitGvOut := by decide +kernel
  have hi : s2Step330ExitGvRow.payload.drop 180=s2Step330ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step330ExitGv_retired] at result
  exact result

private theorem s2Step330ExitBank_rows : planWindowRowsLog s2Step330ExitGBefore [(s2Step330ExitGRow,104),(s2Step330ExitFRow,105),(s2Step330ExitFvRow,181),(s2Step330ExitGvRow,180)] [[],[],[],[]]=
    some (s2Step330ExitGvAfter,[s2Step330ExitGOut,s2Step330ExitFOut,s2Step330ExitFvOut,s2Step330ExitGvOut],(shrinkRow 769 s2Step330ExitGExtra ++ (shrinkRow 768 s2Step330ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step330ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step330ExitGvAfter [] []=some (s2Step330ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step330ExitGvBefore s2Step330ExitGvAfter s2Step330ExitGvAfter
    s2Step330ExitGvRow s2Step330ExitGvOut 180 [] [] [] []
    (shrinkRow 771 s2Step330ExitGvExtra) ([]) s2Step330ExitGv_Incoming s2Step330ExitGv_checked h4 s2Step330ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step330ExitFvBefore s2Step330ExitFvAfter s2Step330ExitGvAfter
    s2Step330ExitFvRow s2Step330ExitFvOut 181 [] [(s2Step330ExitGvRow,180)] [[]] [s2Step330ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step330ExitGvExtra ++ [])) s2Step330ExitFv_Incoming s2Step330ExitFv_checked h3 s2Step330ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step330ExitFBefore s2Step330ExitFAfter s2Step330ExitGvAfter
    s2Step330ExitFRow s2Step330ExitFOut 105 [] [(s2Step330ExitFvRow,181),(s2Step330ExitGvRow,180)] [[],[]] [s2Step330ExitFvOut,s2Step330ExitGvOut]
    (shrinkRow 768 s2Step330ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step330ExitGvExtra ++ []))) s2Step330ExitF_Incoming s2Step330ExitF_checked h2 s2Step330ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step330ExitGBefore s2Step330ExitGAfter s2Step330ExitGvAfter
    s2Step330ExitGRow s2Step330ExitGOut 104 [] [(s2Step330ExitFRow,105),(s2Step330ExitFvRow,181),(s2Step330ExitGvRow,180)] [[],[],[]] [s2Step330ExitFOut,s2Step330ExitFvOut,s2Step330ExitGvOut]
    (shrinkRow 769 s2Step330ExitGExtra) ((shrinkRow 768 s2Step330ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step330ExitGvExtra ++ [])))) s2Step330ExitG_Incoming s2Step330ExitG_checked h1 s2Step330ExitG_Outgoing
  exact h0

private theorem s2Step330ExitBank_checked : compileHmrBankResizeLog .exit s2Step330ExitGBefore ⟨s2Step330ExitFRow,s2Step330ExitGRow,s2Step330ExitFvRow,s2Step330ExitGvRow⟩ ⟨105,104,181,180⟩ [[],[],[],[]]=
    some (s2Step330ExitGvAfter,⟨s2Step330ExitFOut,s2Step330ExitGOut,s2Step330ExitFvOut,s2Step330ExitGvOut⟩,(shrinkRow 769 s2Step330ExitGExtra ++ (shrinkRow 768 s2Step330ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step330ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step330ExitBank_rows]
  rfl

private theorem s2Step330Add0_apart : Disjoint s2Step330Add0Arena.live s2Step330Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step330Add0Arena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step330Add0_card : s2Step330Add0Arena.live.card=904 := by
  decide +kernel

private theorem s2Step330Add0_borrowed : s2Step330Add0Arena.checkBorrow (hmrHybridCount s2Step330Add0Arena s2Step330Add0B.length) s2Step330Add0Work=some s2Step330Add0During := by
  have len : s2Step330Add0Work.length=hmrHybridCount s2Step330Add0Arena s2Step330Add0B.length := by
    rw [hmrHybridCount,s2Step330Add0_card]
    decide +kernel
  have nd : s2Step330Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step330Add0Arena s2Step330Add0During s2Step330Add0Work.toFinset s2Step330Add0_bounded s2Step330Add0_apart rfl

private theorem s2Step330Add0_distinct : (834::794::829::(s2Step330Add0A++s2Step330Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step330Add0_owned : (834::794::829::(s2Step330Add0A++s2Step330Add0B)).toFinset⊆s2Step330Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step330Add0Arena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step330Add0_checked : compileHmrHybridCinLog s2Step330Add0Arena 794 834 829 s2Step330Add0A s2Step330Add0B s2Step330Add0Work=some s2Step330Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step330Add0Arena s2Step330Add0During 794 834 829 s2Step330Add0A s2Step330Add0B s2Step330Add0Work
    (by decide +kernel) (by decide +kernel) s2Step330Add0_distinct
    (fun q hq => s2Step330Add0_owned (List.mem_toFinset.mpr hq)) s2Step330Add0_borrowed

private theorem s2Step330Add1_apart : Disjoint s2Step330Add1Arena.live s2Step330Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step330Add1Arena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step330Add1_card : s2Step330Add1Arena.live.card=904 := by
  decide +kernel

private theorem s2Step330Add1_borrowed : s2Step330Add1Arena.checkBorrow (hmrHybridCount s2Step330Add1Arena s2Step330Add1B.length) s2Step330Add1Work=some s2Step330Add1During := by
  have len : s2Step330Add1Work.length=hmrHybridCount s2Step330Add1Arena s2Step330Add1B.length := by
    rw [hmrHybridCount,s2Step330Add1_card]
    decide +kernel
  have nd : s2Step330Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step330Add1Arena s2Step330Add1During s2Step330Add1Work.toFinset s2Step330Add1_bounded s2Step330Add1_apart rfl

private theorem s2Step330Add1_distinct : (834::794::829::(s2Step330Add1A++s2Step330Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step330Add1_owned : (834::794::829::(s2Step330Add1A++s2Step330Add1B)).toFinset⊆s2Step330Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step330Add1Arena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step330Add1_checked : compileHmrHybridCinLog s2Step330Add1Arena 794 834 829 s2Step330Add1A s2Step330Add1B s2Step330Add1Work=some s2Step330Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step330Add1Arena s2Step330Add1During 794 834 829 s2Step330Add1A s2Step330Add1B s2Step330Add1Work
    (by decide +kernel) (by decide +kernel) s2Step330Add1_distinct
    (fun q hq => s2Step330Add1_owned (List.mem_toFinset.mpr hq)) s2Step330Add1_borrowed

private theorem s2Step330F4_apart : Disjoint (s2Step330Add0A++s2Step330Add0B).toFinset (s2Step330Add1A++s2Step330Add1B).toFinset := by
  have nd : ((s2Step330Add0A++s2Step330Add0B)++(s2Step330Add1A++s2Step330Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step330F4_carry : s2Step330F4FlagArena.checkBorrow 1 [829]=some s2Step330Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step330F4FlagArena,s2Step330HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step330F4FlagArena,s2Step330HeadFvAfter,s2Step330Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step330F4_distinct : (817::794::834::829::((s2Step330Add0A++s2Step330Add1A)++(s2Step330Add0B++s2Step330Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step330F4_flag : s2Step330HeadFvAfter.checkBorrow 1 [834]=some s2Step330F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step330HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step330F4_owned : (817::794::((s2Step330Add0A++s2Step330Add1A)++(s2Step330Add0B++s2Step330Add1B))).toFinset⊆s2Step330HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step330HeadFvAfter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step330F4_checked : compileHmrHybridF4Log s2Step330HeadFvAfter 817 794 s2Step330Add0A s2Step330Add0B s2Step330Add1A s2Step330Add1B [834] [829] s2Step330Add0Work s2Step330Add1Work=some s2Step330F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step330HeadFvAfter s2Step330F4FlagArena s2Step330Add0Arena s2Step330Add0During s2Step330Add1During 817 794
    s2Step330Add0A s2Step330Add0B s2Step330Add1A s2Step330Add1B [834] [829] s2Step330Add0Work s2Step330Add1Work
    (fun q hq => s2Step330F4_owned (List.mem_toFinset.mpr hq)) s2Step330F4_flag s2Step330F4_carry
    s2Step330F4_distinct s2Step330F4_apart s2Step330Add0_checked s2Step330Add1_checked

private theorem s2Step330Front_branch : s2Step330FrontSigmaArena.checkBorrow 1 [794]=some s2Step330HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step330FrontSigmaArena,s2Step330EntryGvAfter,s2Step330EntryFBefore,arenaWires]
  · ext q
    simp only [s2Step330FrontSigmaArena,s2Step330EntryGvAfter,s2Step330EntryFBefore,s2Step330HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step330Front_entry : HmrFrontEntryValid s2Step330EntryFBefore s2Step330FrontBank 105 180 ⟨105,104,181,180⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step330FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step330EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step330EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<817) ∨ (818≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step330FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step330Front_sigma : s2Step330EntryGvAfter.checkBorrow 1 [817]=some s2Step330FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step330EntryGvAfter,s2Step330EntryFBefore,arenaWires]
  · rfl

private def s2Step330HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step330HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step330HeadFBefore : Arena := s2Step330HeadGAfter

private def s2Step330HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616],768⟩

private def s2Step330HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807],770⟩

private def s2Step330HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104],769⟩

private def s2Step330HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787],771⟩

private theorem s2Step330HeadBank_incomingDistinct : ([s2Step330HeadGRow,s2Step330HeadFRow,s2Step330HeadGvRow,s2Step330HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step330HeadF_Incoming : rowsOwned s2Step330HeadFBefore [s2Step330HeadFRow,s2Step330HeadGvRow,s2Step330HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step330HeadGRow,s2Step330HeadFRow,s2Step330HeadGvRow,s2Step330HeadFvRow] 1 s2Step330HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step330HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step330HeadBank_outgoingOwned : rowsOwned s2Step330HeadFvAfter [s2Step330HeadGOut,s2Step330HeadFOut,s2Step330HeadGvOut,s2Step330HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step330HeadFvAfter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step330HeadF_Outgoing : rowsOwned s2Step330HeadFvAfter [s2Step330HeadFOut,s2Step330HeadGvOut,s2Step330HeadFvOut] :=
  hmrRows_owned_drop s2Step330HeadFvAfter [s2Step330HeadGOut,s2Step330HeadFOut,s2Step330HeadGvOut,s2Step330HeadFvOut] 1 s2Step330HeadBank_outgoingOwned

private theorem s2Step330HeadF_distinct : (s2Step330HeadFRow.sign::s2Step330HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step330HeadF_owned : (s2Step330HeadFRow.sign::s2Step330HeadFRow.payload).toFinset⊆s2Step330HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step330HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step330HeadF_reserved : s2Step330HeadFBefore.reserve s2Step330HeadFFresh.toFinset=some s2Step330HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step330HeadFFresh,arenaWires]
  · norm_num [s2Step330HeadFBefore,s2Step330HeadGAfter,s2Step330HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step330HeadFAfter,s2Step330HeadFBefore,s2Step330HeadGAfter,s2Step330HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step330HeadF_checked : planRowResizeLog s2Step330HeadFBefore s2Step330HeadFRow 106 s2Step330HeadFFresh=
    some (s2Step330HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 836],768⟩,growRow 768 s2Step330HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step330HeadFBefore s2Step330HeadFAfter s2Step330HeadFRow 106 s2Step330HeadFFresh
    s2Step330HeadF_distinct s2Step330HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step330HeadF_reserved
  have rowEq : WindowRow.mk (s2Step330HeadFRow.payload++s2Step330HeadFFresh) s2Step330HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 836],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step330HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step330HeadFvBefore : Arena := s2Step330HeadGvAfter

private theorem s2Step330HeadFv_Incoming : rowsOwned s2Step330HeadFvBefore [s2Step330HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step330HeadGRow,s2Step330HeadFRow,s2Step330HeadGvRow,s2Step330HeadFvRow] 3 s2Step330HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step330HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step330HeadFv_Outgoing : rowsOwned s2Step330HeadFvAfter [s2Step330HeadFvOut] :=
  hmrRows_owned_drop s2Step330HeadFvAfter [s2Step330HeadGOut,s2Step330HeadFOut,s2Step330HeadGvOut,s2Step330HeadFvOut] 3 s2Step330HeadBank_outgoingOwned

private theorem s2Step330HeadFv_distinct : (s2Step330HeadFvRow.sign::s2Step330HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step330HeadFv_owned : (s2Step330HeadFvRow.sign::s2Step330HeadFvRow.payload).toFinset⊆s2Step330HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step330HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step330HeadFv_reserved : s2Step330HeadFvBefore.reserve s2Step330HeadFvFresh.toFinset=some s2Step330HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step330HeadFvFresh,arenaWires]
  · norm_num [s2Step330HeadFvBefore,s2Step330HeadGvAfter,s2Step330HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step330HeadFvAfter,s2Step330HeadFvBefore,s2Step330HeadGvAfter,s2Step330HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step330HeadFv_checked : planRowResizeLog s2Step330HeadFvBefore s2Step330HeadFvRow 181 s2Step330HeadFvFresh=
    some (s2Step330HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782],770⟩,growRow 770 s2Step330HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step330HeadFvBefore s2Step330HeadFvAfter s2Step330HeadFvRow 181 s2Step330HeadFvFresh
    s2Step330HeadFv_distinct s2Step330HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step330HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step330HeadFvRow.payload++s2Step330HeadFvFresh) s2Step330HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step330HeadG_Incoming : rowsOwned s2Step330HeadGBefore [s2Step330HeadGRow,s2Step330HeadFRow,s2Step330HeadGvRow,s2Step330HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step330HeadGRow,s2Step330HeadFRow,s2Step330HeadGvRow,s2Step330HeadFvRow] 0 s2Step330HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step330HeadGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step330HeadG_Outgoing : rowsOwned s2Step330HeadFvAfter [s2Step330HeadGOut,s2Step330HeadFOut,s2Step330HeadGvOut,s2Step330HeadFvOut] :=
  hmrRows_owned_drop s2Step330HeadFvAfter [s2Step330HeadGOut,s2Step330HeadFOut,s2Step330HeadGvOut,s2Step330HeadFvOut] 0 s2Step330HeadBank_outgoingOwned

private theorem s2Step330HeadG_distinct : (s2Step330HeadGRow.sign::s2Step330HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step330HeadG_owned : (s2Step330HeadGRow.sign::s2Step330HeadGRow.payload).toFinset⊆s2Step330HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step330HeadGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step330HeadG_reserved : s2Step330HeadGBefore.reserve s2Step330HeadGFresh.toFinset=some s2Step330HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step330HeadGFresh,arenaWires]
  · norm_num [s2Step330HeadGBefore,s2Step330HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step330HeadGAfter,s2Step330HeadGBefore,s2Step330HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step330HeadG_checked : planRowResizeLog s2Step330HeadGBefore s2Step330HeadGRow 106 s2Step330HeadGFresh=
    some (s2Step330HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 779],769⟩,growRow 769 s2Step330HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step330HeadGBefore s2Step330HeadGAfter s2Step330HeadGRow 106 s2Step330HeadGFresh
    s2Step330HeadG_distinct s2Step330HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step330HeadG_reserved
  have rowEq : WindowRow.mk (s2Step330HeadGRow.payload++s2Step330HeadGFresh) s2Step330HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 779],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step330HeadGvBefore : Arena := s2Step330HeadFAfter

private theorem s2Step330HeadGv_Incoming : rowsOwned s2Step330HeadGvBefore [s2Step330HeadGvRow,s2Step330HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step330HeadGRow,s2Step330HeadFRow,s2Step330HeadGvRow,s2Step330HeadFvRow] 2 s2Step330HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step330HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step330HeadGv_Outgoing : rowsOwned s2Step330HeadFvAfter [s2Step330HeadGvOut,s2Step330HeadFvOut] :=
  hmrRows_owned_drop s2Step330HeadFvAfter [s2Step330HeadGOut,s2Step330HeadFOut,s2Step330HeadGvOut,s2Step330HeadFvOut] 2 s2Step330HeadBank_outgoingOwned

private theorem s2Step330HeadGv_distinct : (s2Step330HeadGvRow.sign::s2Step330HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step330HeadGv_owned : (s2Step330HeadGvRow.sign::s2Step330HeadGvRow.payload).toFinset⊆s2Step330HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step330HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step330HeadGv_reserved : s2Step330HeadGvBefore.reserve s2Step330HeadGvFresh.toFinset=some s2Step330HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step330HeadGvFresh,arenaWires]
  · norm_num [s2Step330HeadGvBefore,s2Step330HeadFAfter,s2Step330HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step330HeadGvAfter,s2Step330HeadGvBefore,s2Step330HeadFAfter,s2Step330HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step330HeadGv_checked : planRowResizeLog s2Step330HeadGvBefore s2Step330HeadGvRow 181 s2Step330HeadGvFresh=
    some (s2Step330HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 806],771⟩,growRow 771 s2Step330HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step330HeadGvBefore s2Step330HeadGvAfter s2Step330HeadGvRow 181 s2Step330HeadGvFresh
    s2Step330HeadGv_distinct s2Step330HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step330HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step330HeadGvRow.payload++s2Step330HeadGvFresh) s2Step330HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 806],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step330HeadBank_rows : planWindowRowsLog s2Step330HeadGBefore [(s2Step330HeadGRow,106),(s2Step330HeadFRow,106),(s2Step330HeadGvRow,181),(s2Step330HeadFvRow,181)] [s2Step330HeadGFresh,s2Step330HeadFFresh,s2Step330HeadGvFresh,s2Step330HeadFvFresh]=
    some (s2Step330HeadFvAfter,[s2Step330HeadGOut,s2Step330HeadFOut,s2Step330HeadGvOut,s2Step330HeadFvOut],(growRow 769 s2Step330HeadGFresh ++ (growRow 768 s2Step330HeadFFresh ++ (growRow 771 s2Step330HeadGvFresh ++ (growRow 770 s2Step330HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step330HeadFvAfter [] []=some (s2Step330HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step330HeadFvBefore s2Step330HeadFvAfter s2Step330HeadFvAfter
    s2Step330HeadFvRow s2Step330HeadFvOut 181 s2Step330HeadFvFresh [] [] []
    (growRow 770 s2Step330HeadFvFresh) ([]) s2Step330HeadFv_Incoming s2Step330HeadFv_checked h4 s2Step330HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step330HeadGvBefore s2Step330HeadGvAfter s2Step330HeadFvAfter
    s2Step330HeadGvRow s2Step330HeadGvOut 181 s2Step330HeadGvFresh [(s2Step330HeadFvRow,181)] [s2Step330HeadFvFresh] [s2Step330HeadFvOut]
    (growRow 771 s2Step330HeadGvFresh) ((growRow 770 s2Step330HeadFvFresh ++ [])) s2Step330HeadGv_Incoming s2Step330HeadGv_checked h3 s2Step330HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step330HeadFBefore s2Step330HeadFAfter s2Step330HeadFvAfter
    s2Step330HeadFRow s2Step330HeadFOut 106 s2Step330HeadFFresh [(s2Step330HeadGvRow,181),(s2Step330HeadFvRow,181)] [s2Step330HeadGvFresh,s2Step330HeadFvFresh] [s2Step330HeadGvOut,s2Step330HeadFvOut]
    (growRow 768 s2Step330HeadFFresh) ((growRow 771 s2Step330HeadGvFresh ++ (growRow 770 s2Step330HeadFvFresh ++ []))) s2Step330HeadF_Incoming s2Step330HeadF_checked h2 s2Step330HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step330HeadGBefore s2Step330HeadGAfter s2Step330HeadFvAfter
    s2Step330HeadGRow s2Step330HeadGOut 106 s2Step330HeadGFresh [(s2Step330HeadFRow,106),(s2Step330HeadGvRow,181),(s2Step330HeadFvRow,181)] [s2Step330HeadFFresh,s2Step330HeadGvFresh,s2Step330HeadFvFresh] [s2Step330HeadFOut,s2Step330HeadGvOut,s2Step330HeadFvOut]
    (growRow 769 s2Step330HeadGFresh) ((growRow 768 s2Step330HeadFFresh ++ (growRow 771 s2Step330HeadGvFresh ++ (growRow 770 s2Step330HeadFvFresh ++ [])))) s2Step330HeadG_Incoming s2Step330HeadG_checked h1 s2Step330HeadG_Outgoing
  exact h0

private theorem s2Step330HeadBank_checked : compileHmrBankResizeLog .headroom s2Step330HeadGBefore ⟨s2Step330HeadFRow,s2Step330HeadGRow,s2Step330HeadFvRow,s2Step330HeadGvRow⟩ ⟨106,106,181,181⟩ [s2Step330HeadGFresh,s2Step330HeadFFresh,s2Step330HeadGvFresh,s2Step330HeadFvFresh]=
    some (s2Step330HeadFvAfter,⟨s2Step330HeadFOut,s2Step330HeadGOut,s2Step330HeadFvOut,s2Step330HeadGvOut⟩,(growRow 769 s2Step330HeadGFresh ++ (growRow 768 s2Step330HeadFFresh ++ (growRow 771 s2Step330HeadGvFresh ++ (growRow 770 s2Step330HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step330HeadBank_rows]
  rfl

private theorem s2Step330Front_checked : compileHmrSourceFrontLog s2Step330EntryFBefore s2Step330FrontBank 105 180 ⟨105,104,181,180⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step330FrontLog=some s2Step330FrontPlan := by
  have pairEq : s2Step330FrontPair=⟨s2Step330HeadFRow,s2Step330HeadGRow,s2Step330HeadFvRow,s2Step330HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step330FrontHead=⟨s2Step330ExitFRow,s2Step330ExitGRow,s2Step330ExitFvRow,s2Step330ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step330Add0A=s2Step330FrontHead.f.wires := by decide +kernel
  have gEq : s2Step330Add0B=s2Step330FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step330Add1A=s2Step330FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step330Add1B=s2Step330FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step330EntryFBefore s2Step330FrontBank 105 180 ⟨105,104,181,180⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step330FrontLog s2Step330FrontPlan
  · exact s2Step330Front_entry
  · exact s2Step330EntryBank_checked
  · exact s2Step330Front_sigma
  · rfl
  · exact s2Step330Front_branch
  · rfl
  · simpa only [s2Step330FrontPlan,pairEq] using s2Step330HeadBank_checked
  · simpa only [s2Step330FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step330F4_checked
  · exact s2Step330Counter_checked
  · rfl
  · simpa only [s2Step330FrontPlan,headEq] using s2Step330ExitBank_checked

private theorem s2Step330Complete_explicit_checked : compileHmrEarlyStepLog s2Step330EntryFBefore s2Step330FrontBank 105 180 ⟨105,104,181,180⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step330CompleteLog=some s2Step330CompletePlan := by
  let Q := s2Step330EarlyControlPlan
  have hq := s2Step330EarlyControl_plan_checked
  have fv1 : s2Step330CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step330CompleteOut.fv.payload[2]?.getD s2Step330CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step330CompleteOut.fv.payload[3]?.getD s2Step330CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step330CompleteOut.fv.payload[4]?.getD s2Step330CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step330EntryFBefore s2Step330EarlyControlArena s2Step330FrontBank 105 180 ⟨105,104,181,180⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step330CompleteLog s2Step330FrontPlan Q
    s2Step330Front_checked s2Step330Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step330Complete_owned s2Step330Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step330EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 817 s2Step330CompleteOut.fv.second (s2Step330CompleteOut.fv.payload[2]?.getD s2Step330CompleteOut.fv.sign) (s2Step330CompleteOut.fv.payload[3]?.getD s2Step330CompleteOut.fv.sign) (s2Step330CompleteOut.fv.payload[4]?.getD s2Step330CompleteOut.fv.sign) 794 60 s2Step330EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep330Arena : Arena := s2Step330EntryFBefore
def s2PrivateStep330Bank : WindowBank := s2Step330FrontBank
def s2PrivateStep330Spec : HmrSourceWalkStepLog := ⟨105,180,⟨105,104,181,180⟩,60,.early s2Step330CompleteLog⟩
def s2PrivateStep330Plan : HmrSourceStepPlan := .early s2Step330CompletePlan
theorem s2PrivateStep330_source : s2PrivateStep330Spec=s2ObservedLogs320[10] := rfl
theorem s2PrivateStep330_checked : compileHmrSourceStepLog s2PrivateStep330Arena s2PrivateStep330Bank
    s2PrivateStep330Spec.fgWidth s2PrivateStep330Spec.vWidth s2PrivateStep330Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]
    6 498 330 s2PrivateStep330Spec.need none s2PrivateStep330Spec.log=some s2PrivateStep330Plan := by
  change compileHmrSourceStepLog s2Step330EntryFBefore s2Step330FrontBank 105 180 ⟨105,104,181,180⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 6 498 330 60 none (.early s2Step330CompleteLog)=some (.early s2Step330CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 330<498)]
  rw [s2Step330Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
