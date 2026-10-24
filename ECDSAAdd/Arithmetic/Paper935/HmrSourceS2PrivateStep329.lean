import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep327
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

private def s2Step329CompleteMoves : List (Wire × Wire) := [(836,105),(779,617)]

private def s2Step329EarlyControlLog : HmrEarlyControlLog := ⟨[779, 836, 806, 782, 834],[829],[877],[827, 784, 800, 894, 896, 901],[]⟩

private def s2Step329FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [787]],[[829], [834], [806], [782]],[[], [], [], []]⟩,[794],[817],[877],[827],[784, 800, 894, 896, 901, 903, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[784, 800, 894, 896, 901, 903, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[877, 827, 784, 800]⟩

private def s2Step329CompleteLog : HmrEarlyStepLog := ⟨s2Step329FrontLog,s2Step329CompleteMoves,s2Step329EarlyControlLog⟩

private def s2Step329ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616],768⟩

private def s2Step329ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807],770⟩

private def s2Step329ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104],769⟩

private def s2Step329ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787],771⟩

private def s2Step329FrontOut : WindowBank := ⟨s2Step329ExitFOut,s2Step329ExitGOut,s2Step329ExitFvOut,s2Step329ExitGvOut⟩

private def s2Step329CompleteOut : WindowBank := s2Step329FrontOut.repacked s2Step329CompleteMoves

private def s2Step329EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step329EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step329EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step329EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step329EarlyControlPositiveArena,[829],s2Step329EarlyControlEqualityArena,[877],⟨⟨794,false⟩,[⟨⟨829,false⟩,877⟩]⟩⟩

private def s2Step329EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step329EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step329EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step329EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<817) ∨ (818≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step329EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step329EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step329EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,779⟩,⟨⟨774,false⟩,836⟩,⟨⟨775,false⟩,806⟩,⟨⟨776,false⟩,782⟩,⟨⟨777,false⟩,834⟩]⟩

private def s2Step329EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step329EarlyControlZeroArena,s2Step329EarlyControlZeroPlan,s2Step329EarlyControlClassPlan,s2Step329EarlyControlFlagArena,s2Step329EarlyControlFittedArena,s2Step329EarlyControlHistoryArena,s2Step329EarlyControlSigmaArena,s2Step329EarlyControlOutputArena,s2Step329EarlyControlLog⟩

private def s2Step329CounterWork : List Wire := [877, 827, 784, 800]

private theorem s2Step329Counter_bounded : s2Step329CounterWork.toFinset⊆arenaWires := by norm_num [s2Step329CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step329HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step329CounterDuring : Arena := ⟨s2Step329HeadFvAfter.live∪s2Step329CounterWork.toFinset,Finset.union_subset s2Step329HeadFvAfter.bounded s2Step329Counter_bounded⟩

private def s2Step329EntryFFresh : List Wire := []

private def s2Step329EntryFvFresh : List Wire := []

private def s2Step329EntryGFresh : List Wire := []

private def s2Step329EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<817) ∨ (818≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step329EntryGvFresh : List Wire := [787]

private def s2Step329ExitFExtra : List Wire := [617, 834]

private def s2Step329ExitFvExtra : List Wire := [782]

private def s2Step329ExitGExtra : List Wire := [105, 829]

private def s2Step329ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<105) ∨ (106≤q ∧ q<617) ∨ (618≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step329ExitGvExtra : List Wire := [806]

private def s2Step329Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step329Add0Work : List Wire := [784, 800, 894, 896, 901, 903, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step329Add0_bounded : s2Step329Add0Work.toFinset⊆arenaWires := by
  have h : s2Step329Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step329Add0During : Arena := ⟨s2Step329Add0Arena.live∪s2Step329Add0Work.toFinset,Finset.union_subset s2Step329Add0Arena.bounded s2Step329Add0_bounded⟩

private def s2Step329Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step329Add1Work : List Wire := [784, 800, 894, 896, 901, 903, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step329Add1_bounded : s2Step329Add1Work.toFinset⊆arenaWires := by
  have h : s2Step329Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step329Add1During : Arena := ⟨s2Step329Add1Arena.live∪s2Step329Add1Work.toFinset,Finset.union_subset s2Step329Add1Arena.bounded s2Step329Add1_bounded⟩

private def s2Step329F4FlagArena : Arena := ⟨s2Step329HeadFvAfter.live∪{877},Finset.union_subset s2Step329HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step329F4Plan : HmrHybridF4Plan := ⟨s2Step329F4FlagArena,[877],s2Step329Add0Arena,[827],s2Step329Add0During,s2Step329Add0Work,s2Step329Add1During,s2Step329Add1Work⟩

private def s2Step329HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 834],768⟩

private def s2Step329HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782],770⟩

private def s2Step329HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 829],769⟩

private def s2Step329HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 806],771⟩

private def s2Step329FrontHead : WindowBank := ⟨s2Step329HeadFOut,s2Step329HeadGOut,s2Step329HeadFvOut,s2Step329HeadGvOut⟩

private def s2Step329EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617],768⟩

private def s2Step329EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807],770⟩

private def s2Step329EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105],769⟩

private def s2Step329EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787],771⟩

private def s2Step329FrontPair : WindowBank := ⟨s2Step329EntryFOut,s2Step329EntryGOut,s2Step329EntryFvOut,s2Step329EntryGvOut⟩

private def s2Step329FrontSigmaArena : Arena := ⟨s2Step329EntryGvAfter.live∪{794},Finset.union_subset s2Step329EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step329HeadFFresh : List Wire := [834]

private def s2Step329HeadFvFresh : List Wire := [782]

private def s2Step329HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step329HeadGFresh : List Wire := [829]

private def s2Step329HeadGvFresh : List Wire := [806]

private def s2Step329FrontPlan : HmrSourceFront := ⟨s2Step329EntryGvAfter,s2Step329FrontPair,(growRow 768 s2Step329EntryFFresh ++ (growRow 769 s2Step329EntryGFresh ++ (growRow 770 s2Step329EntryFvFresh ++ (growRow 771 s2Step329EntryGvFresh ++ [])))),s2Step329FrontSigmaArena,[794],s2Step329HeadGBefore,[817],
  s2Step329HeadFvAfter,s2Step329FrontHead,(growRow 769 s2Step329HeadGFresh ++ (growRow 768 s2Step329HeadFFresh ++ (growRow 771 s2Step329HeadGvFresh ++ (growRow 770 s2Step329HeadFvFresh ++ [])))),s2Step329F4Plan,s2Step329CounterDuring,s2Step329CounterWork,s2Step329ExitGvAfter,s2Step329FrontOut,(shrinkRow 769 s2Step329ExitGExtra ++ (shrinkRow 768 s2Step329ExitFExtra ++ (shrinkRow 770 s2Step329ExitFvExtra ++ (shrinkRow 771 s2Step329ExitGvExtra ++ []))))⟩

private def s2Step329CompletePlan : HmrEarlyStepPlan := ⟨s2Step329FrontPlan,s2Step329EarlyControlArena,s2Step329EarlyControlPlan,s2Step329CompleteMoves⟩

private theorem s2Step329Complete_apart : List.Disjoint (s2Step329CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [794, 817, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] := by
  have nd : ((s2Step329CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[794, 817, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step329Complete_owned : (s2Step329CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step329EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step329EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private def s2Step329CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,617),(618,782),(783,784),(785,800),(801,806),(807,827),(828,829),(830,834),(835,836),(837,877),(878,894),(895,896),(897,901),(902,903),(904,907),(908,913)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s2Step329CompleteRelocationMove0Borrowed : Arena := ⟨s2Step329ExitGvAfter.live∪{105},Finset.union_subset s2Step329ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step329CompleteRelocationMove1Borrowed : Arena := ⟨s2Step329CompleteRelocationMove0After.live∪{617},Finset.union_subset s2Step329CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s2Step329CompleteRelocation_move0_owned : 836∈s2Step329ExitGvAfter.live := by norm_num [s2Step329ExitGvAfter,arenaWires]

private theorem s2Step329CompleteRelocation_move0_reserve : s2Step329ExitGvAfter.reserve {105}=some s2Step329CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step329ExitGvAfter,arenaWires]
  · rfl

private theorem s2Step329CompleteRelocation_move0_retire : s2Step329CompleteRelocationMove0Borrowed.retireSet {836}=s2Step329CompleteRelocationMove0After := by
  unfold Arena.retireSet s2Step329CompleteRelocationMove0After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step329CompleteRelocationMove0Borrowed,s2Step329ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step329CompleteRelocation_move1_owned : 779∈s2Step329CompleteRelocationMove0After.live := by norm_num [s2Step329CompleteRelocationMove0After,arenaWires]

private theorem s2Step329CompleteRelocation_move1_reserve : s2Step329CompleteRelocationMove0After.reserve {617}=some s2Step329CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step329CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s2Step329CompleteRelocation_move1_retire : s2Step329CompleteRelocationMove1Borrowed.retireSet {779}=s2Step329EarlyControlArena := by
  unfold Arena.retireSet s2Step329EarlyControlArena
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step329CompleteRelocationMove1Borrowed,s2Step329CompleteRelocationMove0After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step329CompleteRelocation_checked : s2Step329ExitGvAfter.checkRepack [(836,105),(779,617)]=some s2Step329EarlyControlArena := by
  have tail2 : s2Step329EarlyControlArena.checkRepack []=some s2Step329EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s2Step329CompleteRelocationMove0After s2Step329CompleteRelocationMove1Borrowed s2Step329EarlyControlArena s2Step329EarlyControlArena 779 617 []
    s2Step329CompleteRelocation_move1_owned s2Step329CompleteRelocation_move1_reserve s2Step329CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s2Step329ExitGvAfter s2Step329CompleteRelocationMove0Borrowed s2Step329CompleteRelocationMove0After s2Step329EarlyControlArena 836 105 [(779,617)]
    s2Step329CompleteRelocation_move0_owned s2Step329CompleteRelocation_move0_reserve s2Step329CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s2Step329Complete_repack : s2Step329ExitGvAfter.checkRepack s2Step329CompleteMoves=some s2Step329EarlyControlArena := by
  simpa only [s2Step329CompleteMoves] using s2Step329CompleteRelocation_checked

private theorem s2Step329EarlyControl_branchOwned : ([817] : List Wire).toFinset⊆s2Step329EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step329EarlyControlSigmaArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step329EarlyControl_branch : compileHmrBranchRetirement s2Step329EarlyControlSigmaArena 817=some s2Step329EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step329EarlyControl_branchOwned
  · ext q
    simp [s2Step329EarlyControlOutputArena,s2Step329EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step329EarlyControl_classEqualityBorrow : s2Step329EarlyControlPositiveArena.checkBorrow (([794, 829] : List Wire).length-1) s2Step329EarlyControlLog.classWork=some s2Step329EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step329EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step329EarlyControlPositiveArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step329EarlyControlEqualityArena,s2Step329EarlyControlPositiveArena,s2Step329EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step329EarlyControl_classEqualityOwned : ([794, 829] : List Wire).toFinset⊆s2Step329EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step329EarlyControlPositiveArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step329EarlyControl_classEquality : compileHmrEqualityLog s2Step329EarlyControlPositiveArena [794, 829] 0 s2Step329EarlyControlLog.classWork=some (s2Step329EarlyControlEqualityArena,s2Step329EarlyControlLog.classWork,s2Step329EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step329EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step329EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step329EarlyControl_classOwned : ([777, 834, 794] : List Wire).toFinset⊆s2Step329EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step329EarlyControlZeroArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step329EarlyControl_positiveBorrow : s2Step329EarlyControlZeroArena.checkBorrow (1) s2Step329EarlyControlLog.positiveWork=some s2Step329EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step329EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step329EarlyControlZeroArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step329EarlyControlPositiveArena,s2Step329EarlyControlZeroArena,s2Step329EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step329EarlyControl_class : compileHmrSourceClassLog s2Step329EarlyControlZeroArena false 777 s2Step329EarlyControlZeroPlan.top 0 794 s2Step329EarlyControlLog.positiveWork s2Step329EarlyControlLog.classWork=some s2Step329EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step329EarlyControlClassPlan s2Step329EarlyControlZeroArena false 777 s2Step329EarlyControlZeroPlan.top 0 794
  constructor
  · decide +kernel
  · exact s2Step329EarlyControl_classOwned
  · exact s2Step329EarlyControl_positiveBorrow
  · exact s2Step329EarlyControl_classEquality

private theorem s2Step329EarlyControl_entryRecordOwned : ([817, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step329EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step329EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step329EarlyControl_entrySigmaOwned : ([794, 254] : List Wire).toFinset⊆s2Step329EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step329EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step329EarlyControl_fitBorrow : s2Step329EarlyControlFlagArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step329EarlyControlLog.recordFresh=some s2Step329EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step329EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step329EarlyControlFlagArena (fun q => (0≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step329EarlyControlFittedArena,s2Step329EarlyControlFlagArena,s2Step329EarlyControlLog,arenaWires]

private theorem s2Step329EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step329EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step329EarlyControlFlagArena (fun q => (0≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step329EarlyControl_fit : compileHmrRecordGrowLog s2Step329EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step329EarlyControlLog.recordFresh=some s2Step329EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step329EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step329EarlyControl_fitBorrow

private theorem s2Step329EarlyControl_flagsBorrow : s2Step329EarlyControlEqualityArena.checkBorrow (6) s2Step329EarlyControlLog.flagWork=some s2Step329EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step329EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step329EarlyControlEqualityArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step329EarlyControlFlagArena,s2Step329EarlyControlEqualityArena,s2Step329EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step329EarlyControl_flagsOwned : ([877, 253, 252, 251] : List Wire).toFinset⊆s2Step329EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step329EarlyControlEqualityArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step329EarlyControl_flags : compileHmrFlagsLog s2Step329EarlyControlClassPlan.equalityArena s2Step329EarlyControlClassPlan.equality.top 253 252 251 s2Step329EarlyControlLog.flagWork=some s2Step329EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step329EarlyControl_flagsOwned⟩
  · exact s2Step329EarlyControl_flagsBorrow

private theorem s2Step329EarlyControl_historyBorrow : s2Step329EarlyControlArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step329EarlyControlLog.recordFresh=some s2Step329EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step329EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step329EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step329EarlyControlHistoryArena,s2Step329EarlyControlArena,s2Step329EarlyControlLog,arenaWires]

private theorem s2Step329EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step329EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step329EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step329EarlyControl_history : compileHmrRecordGrowLog s2Step329EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step329EarlyControlLog.recordFresh=some s2Step329EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step329EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step329EarlyControl_historyBorrow

private theorem s2Step329EarlyControl_sigmaOwned : ([254, 794] : List Wire).toFinset⊆s2Step329EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step329EarlyControlHistoryArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step329EarlyControl_sigmaReleaseOwned : ([794] : List Wire).toFinset⊆s2Step329EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step329EarlyControlHistoryArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step329EarlyControl_sigmaRelease : s2Step329EarlyControlHistoryArena.release {794} (fun _ => false)=some s2Step329EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step329EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step329EarlyControlSigmaArena,s2Step329EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step329EarlyControl_sigma : compileHmrSigmaDropLog s2Step329EarlyControlHistoryArena false 0 0 254 794 []=some s2Step329EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step329EarlyControl_sigmaOwned⟩
  · exact s2Step329EarlyControl_sigmaRelease

private theorem s2Step329EarlyControl_zeroBorrow : s2Step329EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step329EarlyControlLog.zeroWork=some s2Step329EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step329EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step329EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step329EarlyControlZeroArena,s2Step329EarlyControlArena,s2Step329EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step329EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step329EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step329EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step329EarlyControl_zero : compileHmrEqualityLog s2Step329EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step329EarlyControlLog.zeroWork=some (s2Step329EarlyControlZeroArena,s2Step329EarlyControlLog.zeroWork,s2Step329EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step329EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step329EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step329EarlyControl_logged : s2Step329EarlyControlPlan.Logged s2Step329EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 794 254 253 252 251 817 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step329EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step329EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step329EarlyControl_zero
  · exact s2Step329EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step329EarlyControl_flags
  · exact s2Step329EarlyControl_fit
  · exact s2Step329EarlyControl_history
  · exact s2Step329EarlyControl_sigma
  · exact s2Step329EarlyControl_branch

private theorem s2Step329EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step329EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 794 254 253 252 251 817 60 s2Step329EarlyControlLog=some s2Step329EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step329EarlyControlPlan s2Step329EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 794 254 253 252 251 817 60 s2Step329EarlyControl_logged

private def s2Step329EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<817) ∨ (818≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step329EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617],768⟩

private def s2Step329EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807],770⟩

private def s2Step329EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105],769⟩

private def s2Step329EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830],771⟩

private def s2Step329FrontBank : WindowBank := ⟨s2Step329EntryFRow,s2Step329EntryGRow,s2Step329EntryFvRow,s2Step329EntryGvRow⟩

private def s2Step329Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 834, 768]

private def s2Step329Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 829, 769]

private def s2Step329Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 770]

private def s2Step329Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 806, 771]

private theorem s2Step329Counter_apart : Disjoint s2Step329HeadFvAfter.live s2Step329CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step329HeadFvAfter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step329Counter_borrowed : s2Step329HeadFvAfter.checkBorrow 4 s2Step329CounterWork=some s2Step329CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step329HeadFvAfter s2Step329CounterDuring s2Step329CounterWork.toFinset s2Step329Counter_bounded s2Step329Counter_apart rfl

private theorem s2Step329Counter_owned : (794::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step329HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step329HeadFvAfter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step329Counter_checked : compileHmrCounterStepLog s2Step329HeadFvAfter true 794 [772, 773, 774, 775, 776, 777] s2Step329CounterWork=some s2Step329CounterDuring := by
  have owned : ∀q∈794::[772, 773, 774, 775, 776, 777],q∈s2Step329HeadFvAfter.live := fun q hq => s2Step329Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step329Counter_borrowed

private def s2Step329EntryFAfter : Arena := s2Step329EntryFBefore

private theorem s2Step329EntryBank_incomingDistinct : ([s2Step329EntryFRow,s2Step329EntryGRow,s2Step329EntryFvRow,s2Step329EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step329EntryF_Incoming : rowsOwned s2Step329EntryFBefore [s2Step329EntryFRow,s2Step329EntryGRow,s2Step329EntryFvRow,s2Step329EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step329EntryFRow,s2Step329EntryGRow,s2Step329EntryFvRow,s2Step329EntryGvRow] 0 s2Step329EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step329EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<817) ∨ (818≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step329EntryBank_outgoingOwned : rowsOwned s2Step329EntryGvAfter [s2Step329EntryFOut,s2Step329EntryGOut,s2Step329EntryFvOut,s2Step329EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step329EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<817) ∨ (818≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step329EntryF_Outgoing : rowsOwned s2Step329EntryGvAfter [s2Step329EntryFOut,s2Step329EntryGOut,s2Step329EntryFvOut,s2Step329EntryGvOut] :=
  hmrRows_owned_drop s2Step329EntryGvAfter [s2Step329EntryFOut,s2Step329EntryGOut,s2Step329EntryFvOut,s2Step329EntryGvOut] 0 s2Step329EntryBank_outgoingOwned

private theorem s2Step329EntryF_distinct : (s2Step329EntryFRow.sign::s2Step329EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step329EntryF_owned : (s2Step329EntryFRow.sign::s2Step329EntryFRow.payload).toFinset⊆s2Step329EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step329EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<817) ∨ (818≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step329EntryF_reserved : s2Step329EntryFBefore.reserve s2Step329EntryFFresh.toFinset=some s2Step329EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step329EntryFFresh,arenaWires]
  · norm_num [s2Step329EntryFBefore,s2Step329EntryFFresh,arenaWires]
  · simp only [s2Step329EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step329EntryF_checked : planRowResizeLog s2Step329EntryFBefore s2Step329EntryFRow 106 s2Step329EntryFFresh=
    some (s2Step329EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617],768⟩,growRow 768 s2Step329EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step329EntryFBefore s2Step329EntryFAfter s2Step329EntryFRow 106 s2Step329EntryFFresh
    s2Step329EntryF_distinct s2Step329EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step329EntryF_reserved
  have rowEq : WindowRow.mk (s2Step329EntryFRow.payload++s2Step329EntryFFresh) s2Step329EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step329EntryFvAfter : Arena := s2Step329EntryFBefore

private def s2Step329EntryFvBefore : Arena := s2Step329EntryFBefore

private theorem s2Step329EntryFv_Incoming : rowsOwned s2Step329EntryFvBefore [s2Step329EntryFvRow,s2Step329EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step329EntryFRow,s2Step329EntryGRow,s2Step329EntryFvRow,s2Step329EntryGvRow] 2 s2Step329EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step329EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<817) ∨ (818≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step329EntryFv_Outgoing : rowsOwned s2Step329EntryGvAfter [s2Step329EntryFvOut,s2Step329EntryGvOut] :=
  hmrRows_owned_drop s2Step329EntryGvAfter [s2Step329EntryFOut,s2Step329EntryGOut,s2Step329EntryFvOut,s2Step329EntryGvOut] 2 s2Step329EntryBank_outgoingOwned

private theorem s2Step329EntryFv_distinct : (s2Step329EntryFvRow.sign::s2Step329EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step329EntryFv_owned : (s2Step329EntryFvRow.sign::s2Step329EntryFvRow.payload).toFinset⊆s2Step329EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step329EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<817) ∨ (818≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step329EntryFv_reserved : s2Step329EntryFvBefore.reserve s2Step329EntryFvFresh.toFinset=some s2Step329EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step329EntryFvFresh,arenaWires]
  · norm_num [s2Step329EntryFvBefore,s2Step329EntryFBefore,s2Step329EntryFvFresh,arenaWires]
  · simp only [s2Step329EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step329EntryFv_checked : planRowResizeLog s2Step329EntryFvBefore s2Step329EntryFvRow 180 s2Step329EntryFvFresh=
    some (s2Step329EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807],770⟩,growRow 770 s2Step329EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step329EntryFvBefore s2Step329EntryFvAfter s2Step329EntryFvRow 180 s2Step329EntryFvFresh
    s2Step329EntryFv_distinct s2Step329EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step329EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step329EntryFvRow.payload++s2Step329EntryFvFresh) s2Step329EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step329EntryGAfter : Arena := s2Step329EntryFBefore

private def s2Step329EntryGBefore : Arena := s2Step329EntryFBefore

private theorem s2Step329EntryG_Incoming : rowsOwned s2Step329EntryGBefore [s2Step329EntryGRow,s2Step329EntryFvRow,s2Step329EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step329EntryFRow,s2Step329EntryGRow,s2Step329EntryFvRow,s2Step329EntryGvRow] 1 s2Step329EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step329EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<817) ∨ (818≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step329EntryG_Outgoing : rowsOwned s2Step329EntryGvAfter [s2Step329EntryGOut,s2Step329EntryFvOut,s2Step329EntryGvOut] :=
  hmrRows_owned_drop s2Step329EntryGvAfter [s2Step329EntryFOut,s2Step329EntryGOut,s2Step329EntryFvOut,s2Step329EntryGvOut] 1 s2Step329EntryBank_outgoingOwned

private theorem s2Step329EntryG_distinct : (s2Step329EntryGRow.sign::s2Step329EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step329EntryG_owned : (s2Step329EntryGRow.sign::s2Step329EntryGRow.payload).toFinset⊆s2Step329EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step329EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<817) ∨ (818≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step329EntryG_reserved : s2Step329EntryGBefore.reserve s2Step329EntryGFresh.toFinset=some s2Step329EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step329EntryGFresh,arenaWires]
  · norm_num [s2Step329EntryGBefore,s2Step329EntryFBefore,s2Step329EntryGFresh,arenaWires]
  · simp only [s2Step329EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step329EntryG_checked : planRowResizeLog s2Step329EntryGBefore s2Step329EntryGRow 106 s2Step329EntryGFresh=
    some (s2Step329EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105],769⟩,growRow 769 s2Step329EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step329EntryGBefore s2Step329EntryGAfter s2Step329EntryGRow 106 s2Step329EntryGFresh
    s2Step329EntryG_distinct s2Step329EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step329EntryG_reserved
  have rowEq : WindowRow.mk (s2Step329EntryGRow.payload++s2Step329EntryGFresh) s2Step329EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step329EntryGvBefore : Arena := s2Step329EntryFBefore

private theorem s2Step329EntryGv_Incoming : rowsOwned s2Step329EntryGvBefore [s2Step329EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step329EntryFRow,s2Step329EntryGRow,s2Step329EntryFvRow,s2Step329EntryGvRow] 3 s2Step329EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step329EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<817) ∨ (818≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step329EntryGv_Outgoing : rowsOwned s2Step329EntryGvAfter [s2Step329EntryGvOut] :=
  hmrRows_owned_drop s2Step329EntryGvAfter [s2Step329EntryFOut,s2Step329EntryGOut,s2Step329EntryFvOut,s2Step329EntryGvOut] 3 s2Step329EntryBank_outgoingOwned

private theorem s2Step329EntryGv_distinct : (s2Step329EntryGvRow.sign::s2Step329EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step329EntryGv_owned : (s2Step329EntryGvRow.sign::s2Step329EntryGvRow.payload).toFinset⊆s2Step329EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step329EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<817) ∨ (818≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step329EntryGv_reserved : s2Step329EntryGvBefore.reserve s2Step329EntryGvFresh.toFinset=some s2Step329EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step329EntryGvFresh,arenaWires]
  · norm_num [s2Step329EntryGvBefore,s2Step329EntryFBefore,s2Step329EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step329EntryGvAfter,s2Step329EntryGvBefore,s2Step329EntryFBefore,s2Step329EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step329EntryGv_checked : planRowResizeLog s2Step329EntryGvBefore s2Step329EntryGvRow 180 s2Step329EntryGvFresh=
    some (s2Step329EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787],771⟩,growRow 771 s2Step329EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step329EntryGvBefore s2Step329EntryGvAfter s2Step329EntryGvRow 180 s2Step329EntryGvFresh
    s2Step329EntryGv_distinct s2Step329EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step329EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step329EntryGvRow.payload++s2Step329EntryGvFresh) s2Step329EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step329EntryBank_rows : planWindowRowsLog s2Step329EntryFBefore [(s2Step329EntryFRow,106),(s2Step329EntryGRow,106),(s2Step329EntryFvRow,180),(s2Step329EntryGvRow,180)] [s2Step329EntryFFresh,s2Step329EntryGFresh,s2Step329EntryFvFresh,s2Step329EntryGvFresh]=
    some (s2Step329EntryGvAfter,[s2Step329EntryFOut,s2Step329EntryGOut,s2Step329EntryFvOut,s2Step329EntryGvOut],(growRow 768 s2Step329EntryFFresh ++ (growRow 769 s2Step329EntryGFresh ++ (growRow 770 s2Step329EntryFvFresh ++ (growRow 771 s2Step329EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step329EntryGvAfter [] []=some (s2Step329EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step329EntryGvBefore s2Step329EntryGvAfter s2Step329EntryGvAfter
    s2Step329EntryGvRow s2Step329EntryGvOut 180 s2Step329EntryGvFresh [] [] []
    (growRow 771 s2Step329EntryGvFresh) ([]) s2Step329EntryGv_Incoming s2Step329EntryGv_checked h4 s2Step329EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step329EntryFvBefore s2Step329EntryFvAfter s2Step329EntryGvAfter
    s2Step329EntryFvRow s2Step329EntryFvOut 180 s2Step329EntryFvFresh [(s2Step329EntryGvRow,180)] [s2Step329EntryGvFresh] [s2Step329EntryGvOut]
    (growRow 770 s2Step329EntryFvFresh) ((growRow 771 s2Step329EntryGvFresh ++ [])) s2Step329EntryFv_Incoming s2Step329EntryFv_checked h3 s2Step329EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step329EntryGBefore s2Step329EntryGAfter s2Step329EntryGvAfter
    s2Step329EntryGRow s2Step329EntryGOut 106 s2Step329EntryGFresh [(s2Step329EntryFvRow,180),(s2Step329EntryGvRow,180)] [s2Step329EntryFvFresh,s2Step329EntryGvFresh] [s2Step329EntryFvOut,s2Step329EntryGvOut]
    (growRow 769 s2Step329EntryGFresh) ((growRow 770 s2Step329EntryFvFresh ++ (growRow 771 s2Step329EntryGvFresh ++ []))) s2Step329EntryG_Incoming s2Step329EntryG_checked h2 s2Step329EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step329EntryFBefore s2Step329EntryFAfter s2Step329EntryGvAfter
    s2Step329EntryFRow s2Step329EntryFOut 106 s2Step329EntryFFresh [(s2Step329EntryGRow,106),(s2Step329EntryFvRow,180),(s2Step329EntryGvRow,180)] [s2Step329EntryGFresh,s2Step329EntryFvFresh,s2Step329EntryGvFresh] [s2Step329EntryGOut,s2Step329EntryFvOut,s2Step329EntryGvOut]
    (growRow 768 s2Step329EntryFFresh) ((growRow 769 s2Step329EntryGFresh ++ (growRow 770 s2Step329EntryFvFresh ++ (growRow 771 s2Step329EntryGvFresh ++ [])))) s2Step329EntryF_Incoming s2Step329EntryF_checked h1 s2Step329EntryF_Outgoing
  exact h0

private theorem s2Step329EntryBank_checked : compileHmrBankResizeLog .entry s2Step329EntryFBefore ⟨s2Step329EntryFRow,s2Step329EntryGRow,s2Step329EntryFvRow,s2Step329EntryGvRow⟩ ⟨106,106,180,180⟩ [s2Step329EntryFFresh,s2Step329EntryGFresh,s2Step329EntryFvFresh,s2Step329EntryGvFresh]=
    some (s2Step329EntryGvAfter,⟨s2Step329EntryFOut,s2Step329EntryGOut,s2Step329EntryFvOut,s2Step329EntryGvOut⟩,(growRow 768 s2Step329EntryFFresh ++ (growRow 769 s2Step329EntryGFresh ++ (growRow 770 s2Step329EntryFvFresh ++ (growRow 771 s2Step329EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step329EntryBank_rows]
  rfl

private def s2Step329ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<105) ∨ (106≤q ∧ q<617) ∨ (618≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step329ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<105) ∨ (106≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step329ExitFBefore : Arena := s2Step329ExitGAfter

private def s2Step329ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 834],768⟩

private def s2Step329ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782],770⟩

private def s2Step329ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 829],769⟩

private def s2Step329ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 806],771⟩

private theorem s2Step329ExitBank_incomingDistinct : ([s2Step329ExitGRow,s2Step329ExitFRow,s2Step329ExitFvRow,s2Step329ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step329ExitF_Incoming : rowsOwned s2Step329ExitFBefore [s2Step329ExitFRow,s2Step329ExitFvRow,s2Step329ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step329ExitGRow,s2Step329ExitFRow,s2Step329ExitFvRow,s2Step329ExitGvRow] 1 s2Step329ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step329ExitFBefore (fun q => (0≤q ∧ q<105) ∨ (106≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step329ExitBank_outgoingOwned : rowsOwned s2Step329ExitGvAfter [s2Step329ExitGOut,s2Step329ExitFOut,s2Step329ExitFvOut,s2Step329ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step329ExitGvAfter (fun q => (0≤q ∧ q<105) ∨ (106≤q ∧ q<617) ∨ (618≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step329ExitF_Outgoing : rowsOwned s2Step329ExitGvAfter [s2Step329ExitFOut,s2Step329ExitFvOut,s2Step329ExitGvOut] :=
  hmrRows_owned_drop s2Step329ExitGvAfter [s2Step329ExitGOut,s2Step329ExitFOut,s2Step329ExitFvOut,s2Step329ExitGvOut] 1 s2Step329ExitBank_outgoingOwned

private theorem s2Step329ExitF_distinct : (s2Step329ExitFRow.sign::s2Step329ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step329ExitF_owned : (s2Step329ExitFRow.sign::s2Step329ExitFRow.payload).toFinset⊆s2Step329ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step329ExitFBefore (fun q => (0≤q ∧ q<105) ∨ (106≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step329ExitF_retired : s2Step329ExitFBefore.retireSet s2Step329ExitFExtra.toFinset=s2Step329ExitFAfter := by
  unfold Arena.retireSet s2Step329ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step329ExitFBefore,s2Step329ExitGAfter,s2Step329ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step329ExitF_checked : planRowResizeLog s2Step329ExitFBefore s2Step329ExitFRow 105 []=
    some (s2Step329ExitFAfter,s2Step329ExitFOut,shrinkRow 768 s2Step329ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step329ExitFBefore s2Step329ExitFRow 105 s2Step329ExitF_distinct s2Step329ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step329ExitFRow.payload.take 105) s2Step329ExitFRow.sign=s2Step329ExitFOut := by decide +kernel
  have hi : s2Step329ExitFRow.payload.drop 105=s2Step329ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step329ExitF_retired] at result
  exact result

private def s2Step329ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<105) ∨ (106≤q ∧ q<617) ∨ (618≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step329ExitFvBefore : Arena := s2Step329ExitFAfter

private theorem s2Step329ExitFv_Incoming : rowsOwned s2Step329ExitFvBefore [s2Step329ExitFvRow,s2Step329ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step329ExitGRow,s2Step329ExitFRow,s2Step329ExitFvRow,s2Step329ExitGvRow] 2 s2Step329ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step329ExitFvBefore (fun q => (0≤q ∧ q<105) ∨ (106≤q ∧ q<617) ∨ (618≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step329ExitFv_Outgoing : rowsOwned s2Step329ExitGvAfter [s2Step329ExitFvOut,s2Step329ExitGvOut] :=
  hmrRows_owned_drop s2Step329ExitGvAfter [s2Step329ExitGOut,s2Step329ExitFOut,s2Step329ExitFvOut,s2Step329ExitGvOut] 2 s2Step329ExitBank_outgoingOwned

private theorem s2Step329ExitFv_distinct : (s2Step329ExitFvRow.sign::s2Step329ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step329ExitFv_owned : (s2Step329ExitFvRow.sign::s2Step329ExitFvRow.payload).toFinset⊆s2Step329ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step329ExitFvBefore (fun q => (0≤q ∧ q<105) ∨ (106≤q ∧ q<617) ∨ (618≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step329ExitFv_retired : s2Step329ExitFvBefore.retireSet s2Step329ExitFvExtra.toFinset=s2Step329ExitFvAfter := by
  unfold Arena.retireSet s2Step329ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step329ExitFvBefore,s2Step329ExitFAfter,s2Step329ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step329ExitFv_checked : planRowResizeLog s2Step329ExitFvBefore s2Step329ExitFvRow 180 []=
    some (s2Step329ExitFvAfter,s2Step329ExitFvOut,shrinkRow 770 s2Step329ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step329ExitFvBefore s2Step329ExitFvRow 180 s2Step329ExitFv_distinct s2Step329ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step329ExitFvRow.payload.take 180) s2Step329ExitFvRow.sign=s2Step329ExitFvOut := by decide +kernel
  have hi : s2Step329ExitFvRow.payload.drop 180=s2Step329ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step329ExitFv_retired] at result
  exact result

private def s2Step329ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private theorem s2Step329ExitG_Incoming : rowsOwned s2Step329ExitGBefore [s2Step329ExitGRow,s2Step329ExitFRow,s2Step329ExitFvRow,s2Step329ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step329ExitGRow,s2Step329ExitFRow,s2Step329ExitFvRow,s2Step329ExitGvRow] 0 s2Step329ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step329ExitGBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step329ExitG_Outgoing : rowsOwned s2Step329ExitGvAfter [s2Step329ExitGOut,s2Step329ExitFOut,s2Step329ExitFvOut,s2Step329ExitGvOut] :=
  hmrRows_owned_drop s2Step329ExitGvAfter [s2Step329ExitGOut,s2Step329ExitFOut,s2Step329ExitFvOut,s2Step329ExitGvOut] 0 s2Step329ExitBank_outgoingOwned

private theorem s2Step329ExitG_distinct : (s2Step329ExitGRow.sign::s2Step329ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step329ExitG_owned : (s2Step329ExitGRow.sign::s2Step329ExitGRow.payload).toFinset⊆s2Step329ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step329ExitGBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step329ExitG_retired : s2Step329ExitGBefore.retireSet s2Step329ExitGExtra.toFinset=s2Step329ExitGAfter := by
  unfold Arena.retireSet s2Step329ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step329ExitGBefore,s2Step329ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step329ExitG_checked : planRowResizeLog s2Step329ExitGBefore s2Step329ExitGRow 105 []=
    some (s2Step329ExitGAfter,s2Step329ExitGOut,shrinkRow 769 s2Step329ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step329ExitGBefore s2Step329ExitGRow 105 s2Step329ExitG_distinct s2Step329ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step329ExitGRow.payload.take 105) s2Step329ExitGRow.sign=s2Step329ExitGOut := by decide +kernel
  have hi : s2Step329ExitGRow.payload.drop 105=s2Step329ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step329ExitG_retired] at result
  exact result

private def s2Step329ExitGvBefore : Arena := s2Step329ExitFvAfter

private theorem s2Step329ExitGv_Incoming : rowsOwned s2Step329ExitGvBefore [s2Step329ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step329ExitGRow,s2Step329ExitFRow,s2Step329ExitFvRow,s2Step329ExitGvRow] 3 s2Step329ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step329ExitGvBefore (fun q => (0≤q ∧ q<105) ∨ (106≤q ∧ q<617) ∨ (618≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step329ExitGv_Outgoing : rowsOwned s2Step329ExitGvAfter [s2Step329ExitGvOut] :=
  hmrRows_owned_drop s2Step329ExitGvAfter [s2Step329ExitGOut,s2Step329ExitFOut,s2Step329ExitFvOut,s2Step329ExitGvOut] 3 s2Step329ExitBank_outgoingOwned

private theorem s2Step329ExitGv_distinct : (s2Step329ExitGvRow.sign::s2Step329ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step329ExitGv_owned : (s2Step329ExitGvRow.sign::s2Step329ExitGvRow.payload).toFinset⊆s2Step329ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step329ExitGvBefore (fun q => (0≤q ∧ q<105) ∨ (106≤q ∧ q<617) ∨ (618≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step329ExitGv_retired : s2Step329ExitGvBefore.retireSet s2Step329ExitGvExtra.toFinset=s2Step329ExitGvAfter := by
  unfold Arena.retireSet s2Step329ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step329ExitGvBefore,s2Step329ExitFvAfter,s2Step329ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step329ExitGv_checked : planRowResizeLog s2Step329ExitGvBefore s2Step329ExitGvRow 180 []=
    some (s2Step329ExitGvAfter,s2Step329ExitGvOut,shrinkRow 771 s2Step329ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step329ExitGvBefore s2Step329ExitGvRow 180 s2Step329ExitGv_distinct s2Step329ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step329ExitGvRow.payload.take 180) s2Step329ExitGvRow.sign=s2Step329ExitGvOut := by decide +kernel
  have hi : s2Step329ExitGvRow.payload.drop 180=s2Step329ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step329ExitGv_retired] at result
  exact result

private theorem s2Step329ExitBank_rows : planWindowRowsLog s2Step329ExitGBefore [(s2Step329ExitGRow,105),(s2Step329ExitFRow,105),(s2Step329ExitFvRow,180),(s2Step329ExitGvRow,180)] [[],[],[],[]]=
    some (s2Step329ExitGvAfter,[s2Step329ExitGOut,s2Step329ExitFOut,s2Step329ExitFvOut,s2Step329ExitGvOut],(shrinkRow 769 s2Step329ExitGExtra ++ (shrinkRow 768 s2Step329ExitFExtra ++ (shrinkRow 770 s2Step329ExitFvExtra ++ (shrinkRow 771 s2Step329ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step329ExitGvAfter [] []=some (s2Step329ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step329ExitGvBefore s2Step329ExitGvAfter s2Step329ExitGvAfter
    s2Step329ExitGvRow s2Step329ExitGvOut 180 [] [] [] []
    (shrinkRow 771 s2Step329ExitGvExtra) ([]) s2Step329ExitGv_Incoming s2Step329ExitGv_checked h4 s2Step329ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step329ExitFvBefore s2Step329ExitFvAfter s2Step329ExitGvAfter
    s2Step329ExitFvRow s2Step329ExitFvOut 180 [] [(s2Step329ExitGvRow,180)] [[]] [s2Step329ExitGvOut]
    (shrinkRow 770 s2Step329ExitFvExtra) ((shrinkRow 771 s2Step329ExitGvExtra ++ [])) s2Step329ExitFv_Incoming s2Step329ExitFv_checked h3 s2Step329ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step329ExitFBefore s2Step329ExitFAfter s2Step329ExitGvAfter
    s2Step329ExitFRow s2Step329ExitFOut 105 [] [(s2Step329ExitFvRow,180),(s2Step329ExitGvRow,180)] [[],[]] [s2Step329ExitFvOut,s2Step329ExitGvOut]
    (shrinkRow 768 s2Step329ExitFExtra) ((shrinkRow 770 s2Step329ExitFvExtra ++ (shrinkRow 771 s2Step329ExitGvExtra ++ []))) s2Step329ExitF_Incoming s2Step329ExitF_checked h2 s2Step329ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step329ExitGBefore s2Step329ExitGAfter s2Step329ExitGvAfter
    s2Step329ExitGRow s2Step329ExitGOut 105 [] [(s2Step329ExitFRow,105),(s2Step329ExitFvRow,180),(s2Step329ExitGvRow,180)] [[],[],[]] [s2Step329ExitFOut,s2Step329ExitFvOut,s2Step329ExitGvOut]
    (shrinkRow 769 s2Step329ExitGExtra) ((shrinkRow 768 s2Step329ExitFExtra ++ (shrinkRow 770 s2Step329ExitFvExtra ++ (shrinkRow 771 s2Step329ExitGvExtra ++ [])))) s2Step329ExitG_Incoming s2Step329ExitG_checked h1 s2Step329ExitG_Outgoing
  exact h0

private theorem s2Step329ExitBank_checked : compileHmrBankResizeLog .exit s2Step329ExitGBefore ⟨s2Step329ExitFRow,s2Step329ExitGRow,s2Step329ExitFvRow,s2Step329ExitGvRow⟩ ⟨105,105,180,180⟩ [[],[],[],[]]=
    some (s2Step329ExitGvAfter,⟨s2Step329ExitFOut,s2Step329ExitGOut,s2Step329ExitFvOut,s2Step329ExitGvOut⟩,(shrinkRow 769 s2Step329ExitGExtra ++ (shrinkRow 768 s2Step329ExitFExtra ++ (shrinkRow 770 s2Step329ExitFvExtra ++ (shrinkRow 771 s2Step329ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step329ExitBank_rows]
  rfl

private theorem s2Step329Add0_apart : Disjoint s2Step329Add0Arena.live s2Step329Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step329Add0Arena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step329Add0_card : s2Step329Add0Arena.live.card=906 := by
  decide +kernel

private theorem s2Step329Add0_borrowed : s2Step329Add0Arena.checkBorrow (hmrHybridCount s2Step329Add0Arena s2Step329Add0B.length) s2Step329Add0Work=some s2Step329Add0During := by
  have len : s2Step329Add0Work.length=hmrHybridCount s2Step329Add0Arena s2Step329Add0B.length := by
    rw [hmrHybridCount,s2Step329Add0_card]
    decide +kernel
  have nd : s2Step329Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step329Add0Arena s2Step329Add0During s2Step329Add0Work.toFinset s2Step329Add0_bounded s2Step329Add0_apart rfl

private theorem s2Step329Add0_distinct : (877::817::827::(s2Step329Add0A++s2Step329Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step329Add0_owned : (877::817::827::(s2Step329Add0A++s2Step329Add0B)).toFinset⊆s2Step329Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step329Add0Arena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step329Add0_checked : compileHmrHybridCinLog s2Step329Add0Arena 817 877 827 s2Step329Add0A s2Step329Add0B s2Step329Add0Work=some s2Step329Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step329Add0Arena s2Step329Add0During 817 877 827 s2Step329Add0A s2Step329Add0B s2Step329Add0Work
    (by decide +kernel) (by decide +kernel) s2Step329Add0_distinct
    (fun q hq => s2Step329Add0_owned (List.mem_toFinset.mpr hq)) s2Step329Add0_borrowed

private theorem s2Step329Add1_apart : Disjoint s2Step329Add1Arena.live s2Step329Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step329Add1Arena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step329Add1_card : s2Step329Add1Arena.live.card=906 := by
  decide +kernel

private theorem s2Step329Add1_borrowed : s2Step329Add1Arena.checkBorrow (hmrHybridCount s2Step329Add1Arena s2Step329Add1B.length) s2Step329Add1Work=some s2Step329Add1During := by
  have len : s2Step329Add1Work.length=hmrHybridCount s2Step329Add1Arena s2Step329Add1B.length := by
    rw [hmrHybridCount,s2Step329Add1_card]
    decide +kernel
  have nd : s2Step329Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step329Add1Arena s2Step329Add1During s2Step329Add1Work.toFinset s2Step329Add1_bounded s2Step329Add1_apart rfl

private theorem s2Step329Add1_distinct : (877::817::827::(s2Step329Add1A++s2Step329Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step329Add1_owned : (877::817::827::(s2Step329Add1A++s2Step329Add1B)).toFinset⊆s2Step329Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step329Add1Arena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step329Add1_checked : compileHmrHybridCinLog s2Step329Add1Arena 817 877 827 s2Step329Add1A s2Step329Add1B s2Step329Add1Work=some s2Step329Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step329Add1Arena s2Step329Add1During 817 877 827 s2Step329Add1A s2Step329Add1B s2Step329Add1Work
    (by decide +kernel) (by decide +kernel) s2Step329Add1_distinct
    (fun q hq => s2Step329Add1_owned (List.mem_toFinset.mpr hq)) s2Step329Add1_borrowed

private theorem s2Step329F4_apart : Disjoint (s2Step329Add0A++s2Step329Add0B).toFinset (s2Step329Add1A++s2Step329Add1B).toFinset := by
  have nd : ((s2Step329Add0A++s2Step329Add0B)++(s2Step329Add1A++s2Step329Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step329F4_carry : s2Step329F4FlagArena.checkBorrow 1 [827]=some s2Step329Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step329F4FlagArena,s2Step329HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step329F4FlagArena,s2Step329HeadFvAfter,s2Step329Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step329F4_distinct : (794::817::877::827::((s2Step329Add0A++s2Step329Add1A)++(s2Step329Add0B++s2Step329Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step329F4_flag : s2Step329HeadFvAfter.checkBorrow 1 [877]=some s2Step329F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step329HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step329F4_owned : (794::817::((s2Step329Add0A++s2Step329Add1A)++(s2Step329Add0B++s2Step329Add1B))).toFinset⊆s2Step329HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step329HeadFvAfter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step329F4_checked : compileHmrHybridF4Log s2Step329HeadFvAfter 794 817 s2Step329Add0A s2Step329Add0B s2Step329Add1A s2Step329Add1B [877] [827] s2Step329Add0Work s2Step329Add1Work=some s2Step329F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step329HeadFvAfter s2Step329F4FlagArena s2Step329Add0Arena s2Step329Add0During s2Step329Add1During 794 817
    s2Step329Add0A s2Step329Add0B s2Step329Add1A s2Step329Add1B [877] [827] s2Step329Add0Work s2Step329Add1Work
    (fun q hq => s2Step329F4_owned (List.mem_toFinset.mpr hq)) s2Step329F4_flag s2Step329F4_carry
    s2Step329F4_distinct s2Step329F4_apart s2Step329Add0_checked s2Step329Add1_checked

private theorem s2Step329Front_branch : s2Step329FrontSigmaArena.checkBorrow 1 [817]=some s2Step329HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step329FrontSigmaArena,s2Step329EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step329FrontSigmaArena,s2Step329EntryGvAfter,s2Step329HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step329Front_entry : HmrFrontEntryValid s2Step329EntryFBefore s2Step329FrontBank 106 180 ⟨105,105,180,180⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step329FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step329EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step329EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<817) ∨ (818≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step329FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step329Front_sigma : s2Step329EntryGvAfter.checkBorrow 1 [794]=some s2Step329FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step329EntryGvAfter,arenaWires]
  · rfl

private def s2Step329HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step329HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step329HeadFBefore : Arena := s2Step329HeadGAfter

private def s2Step329HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617],768⟩

private def s2Step329HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807],770⟩

private def s2Step329HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105],769⟩

private def s2Step329HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787],771⟩

private theorem s2Step329HeadBank_incomingDistinct : ([s2Step329HeadGRow,s2Step329HeadFRow,s2Step329HeadGvRow,s2Step329HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step329HeadF_Incoming : rowsOwned s2Step329HeadFBefore [s2Step329HeadFRow,s2Step329HeadGvRow,s2Step329HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step329HeadGRow,s2Step329HeadFRow,s2Step329HeadGvRow,s2Step329HeadFvRow] 1 s2Step329HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step329HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step329HeadBank_outgoingOwned : rowsOwned s2Step329HeadFvAfter [s2Step329HeadGOut,s2Step329HeadFOut,s2Step329HeadGvOut,s2Step329HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step329HeadFvAfter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step329HeadF_Outgoing : rowsOwned s2Step329HeadFvAfter [s2Step329HeadFOut,s2Step329HeadGvOut,s2Step329HeadFvOut] :=
  hmrRows_owned_drop s2Step329HeadFvAfter [s2Step329HeadGOut,s2Step329HeadFOut,s2Step329HeadGvOut,s2Step329HeadFvOut] 1 s2Step329HeadBank_outgoingOwned

private theorem s2Step329HeadF_distinct : (s2Step329HeadFRow.sign::s2Step329HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step329HeadF_owned : (s2Step329HeadFRow.sign::s2Step329HeadFRow.payload).toFinset⊆s2Step329HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step329HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step329HeadF_reserved : s2Step329HeadFBefore.reserve s2Step329HeadFFresh.toFinset=some s2Step329HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step329HeadFFresh,arenaWires]
  · norm_num [s2Step329HeadFBefore,s2Step329HeadGAfter,s2Step329HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step329HeadFAfter,s2Step329HeadFBefore,s2Step329HeadGAfter,s2Step329HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step329HeadF_checked : planRowResizeLog s2Step329HeadFBefore s2Step329HeadFRow 107 s2Step329HeadFFresh=
    some (s2Step329HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 834],768⟩,growRow 768 s2Step329HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step329HeadFBefore s2Step329HeadFAfter s2Step329HeadFRow 107 s2Step329HeadFFresh
    s2Step329HeadF_distinct s2Step329HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step329HeadF_reserved
  have rowEq : WindowRow.mk (s2Step329HeadFRow.payload++s2Step329HeadFFresh) s2Step329HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 834],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step329HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step329HeadFvBefore : Arena := s2Step329HeadGvAfter

private theorem s2Step329HeadFv_Incoming : rowsOwned s2Step329HeadFvBefore [s2Step329HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step329HeadGRow,s2Step329HeadFRow,s2Step329HeadGvRow,s2Step329HeadFvRow] 3 s2Step329HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step329HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step329HeadFv_Outgoing : rowsOwned s2Step329HeadFvAfter [s2Step329HeadFvOut] :=
  hmrRows_owned_drop s2Step329HeadFvAfter [s2Step329HeadGOut,s2Step329HeadFOut,s2Step329HeadGvOut,s2Step329HeadFvOut] 3 s2Step329HeadBank_outgoingOwned

private theorem s2Step329HeadFv_distinct : (s2Step329HeadFvRow.sign::s2Step329HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step329HeadFv_owned : (s2Step329HeadFvRow.sign::s2Step329HeadFvRow.payload).toFinset⊆s2Step329HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step329HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step329HeadFv_reserved : s2Step329HeadFvBefore.reserve s2Step329HeadFvFresh.toFinset=some s2Step329HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step329HeadFvFresh,arenaWires]
  · norm_num [s2Step329HeadFvBefore,s2Step329HeadGvAfter,s2Step329HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step329HeadFvAfter,s2Step329HeadFvBefore,s2Step329HeadGvAfter,s2Step329HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step329HeadFv_checked : planRowResizeLog s2Step329HeadFvBefore s2Step329HeadFvRow 181 s2Step329HeadFvFresh=
    some (s2Step329HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782],770⟩,growRow 770 s2Step329HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step329HeadFvBefore s2Step329HeadFvAfter s2Step329HeadFvRow 181 s2Step329HeadFvFresh
    s2Step329HeadFv_distinct s2Step329HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step329HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step329HeadFvRow.payload++s2Step329HeadFvFresh) s2Step329HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step329HeadG_Incoming : rowsOwned s2Step329HeadGBefore [s2Step329HeadGRow,s2Step329HeadFRow,s2Step329HeadGvRow,s2Step329HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step329HeadGRow,s2Step329HeadFRow,s2Step329HeadGvRow,s2Step329HeadFvRow] 0 s2Step329HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step329HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step329HeadG_Outgoing : rowsOwned s2Step329HeadFvAfter [s2Step329HeadGOut,s2Step329HeadFOut,s2Step329HeadGvOut,s2Step329HeadFvOut] :=
  hmrRows_owned_drop s2Step329HeadFvAfter [s2Step329HeadGOut,s2Step329HeadFOut,s2Step329HeadGvOut,s2Step329HeadFvOut] 0 s2Step329HeadBank_outgoingOwned

private theorem s2Step329HeadG_distinct : (s2Step329HeadGRow.sign::s2Step329HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step329HeadG_owned : (s2Step329HeadGRow.sign::s2Step329HeadGRow.payload).toFinset⊆s2Step329HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step329HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step329HeadG_reserved : s2Step329HeadGBefore.reserve s2Step329HeadGFresh.toFinset=some s2Step329HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step329HeadGFresh,arenaWires]
  · norm_num [s2Step329HeadGBefore,s2Step329HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step329HeadGAfter,s2Step329HeadGBefore,s2Step329HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step329HeadG_checked : planRowResizeLog s2Step329HeadGBefore s2Step329HeadGRow 107 s2Step329HeadGFresh=
    some (s2Step329HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 829],769⟩,growRow 769 s2Step329HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step329HeadGBefore s2Step329HeadGAfter s2Step329HeadGRow 107 s2Step329HeadGFresh
    s2Step329HeadG_distinct s2Step329HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step329HeadG_reserved
  have rowEq : WindowRow.mk (s2Step329HeadGRow.payload++s2Step329HeadGFresh) s2Step329HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 829],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step329HeadGvBefore : Arena := s2Step329HeadFAfter

private theorem s2Step329HeadGv_Incoming : rowsOwned s2Step329HeadGvBefore [s2Step329HeadGvRow,s2Step329HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step329HeadGRow,s2Step329HeadFRow,s2Step329HeadGvRow,s2Step329HeadFvRow] 2 s2Step329HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step329HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step329HeadGv_Outgoing : rowsOwned s2Step329HeadFvAfter [s2Step329HeadGvOut,s2Step329HeadFvOut] :=
  hmrRows_owned_drop s2Step329HeadFvAfter [s2Step329HeadGOut,s2Step329HeadFOut,s2Step329HeadGvOut,s2Step329HeadFvOut] 2 s2Step329HeadBank_outgoingOwned

private theorem s2Step329HeadGv_distinct : (s2Step329HeadGvRow.sign::s2Step329HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step329HeadGv_owned : (s2Step329HeadGvRow.sign::s2Step329HeadGvRow.payload).toFinset⊆s2Step329HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step329HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step329HeadGv_reserved : s2Step329HeadGvBefore.reserve s2Step329HeadGvFresh.toFinset=some s2Step329HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step329HeadGvFresh,arenaWires]
  · norm_num [s2Step329HeadGvBefore,s2Step329HeadFAfter,s2Step329HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step329HeadGvAfter,s2Step329HeadGvBefore,s2Step329HeadFAfter,s2Step329HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step329HeadGv_checked : planRowResizeLog s2Step329HeadGvBefore s2Step329HeadGvRow 181 s2Step329HeadGvFresh=
    some (s2Step329HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 806],771⟩,growRow 771 s2Step329HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step329HeadGvBefore s2Step329HeadGvAfter s2Step329HeadGvRow 181 s2Step329HeadGvFresh
    s2Step329HeadGv_distinct s2Step329HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step329HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step329HeadGvRow.payload++s2Step329HeadGvFresh) s2Step329HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 806],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step329HeadBank_rows : planWindowRowsLog s2Step329HeadGBefore [(s2Step329HeadGRow,107),(s2Step329HeadFRow,107),(s2Step329HeadGvRow,181),(s2Step329HeadFvRow,181)] [s2Step329HeadGFresh,s2Step329HeadFFresh,s2Step329HeadGvFresh,s2Step329HeadFvFresh]=
    some (s2Step329HeadFvAfter,[s2Step329HeadGOut,s2Step329HeadFOut,s2Step329HeadGvOut,s2Step329HeadFvOut],(growRow 769 s2Step329HeadGFresh ++ (growRow 768 s2Step329HeadFFresh ++ (growRow 771 s2Step329HeadGvFresh ++ (growRow 770 s2Step329HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step329HeadFvAfter [] []=some (s2Step329HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step329HeadFvBefore s2Step329HeadFvAfter s2Step329HeadFvAfter
    s2Step329HeadFvRow s2Step329HeadFvOut 181 s2Step329HeadFvFresh [] [] []
    (growRow 770 s2Step329HeadFvFresh) ([]) s2Step329HeadFv_Incoming s2Step329HeadFv_checked h4 s2Step329HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step329HeadGvBefore s2Step329HeadGvAfter s2Step329HeadFvAfter
    s2Step329HeadGvRow s2Step329HeadGvOut 181 s2Step329HeadGvFresh [(s2Step329HeadFvRow,181)] [s2Step329HeadFvFresh] [s2Step329HeadFvOut]
    (growRow 771 s2Step329HeadGvFresh) ((growRow 770 s2Step329HeadFvFresh ++ [])) s2Step329HeadGv_Incoming s2Step329HeadGv_checked h3 s2Step329HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step329HeadFBefore s2Step329HeadFAfter s2Step329HeadFvAfter
    s2Step329HeadFRow s2Step329HeadFOut 107 s2Step329HeadFFresh [(s2Step329HeadGvRow,181),(s2Step329HeadFvRow,181)] [s2Step329HeadGvFresh,s2Step329HeadFvFresh] [s2Step329HeadGvOut,s2Step329HeadFvOut]
    (growRow 768 s2Step329HeadFFresh) ((growRow 771 s2Step329HeadGvFresh ++ (growRow 770 s2Step329HeadFvFresh ++ []))) s2Step329HeadF_Incoming s2Step329HeadF_checked h2 s2Step329HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step329HeadGBefore s2Step329HeadGAfter s2Step329HeadFvAfter
    s2Step329HeadGRow s2Step329HeadGOut 107 s2Step329HeadGFresh [(s2Step329HeadFRow,107),(s2Step329HeadGvRow,181),(s2Step329HeadFvRow,181)] [s2Step329HeadFFresh,s2Step329HeadGvFresh,s2Step329HeadFvFresh] [s2Step329HeadFOut,s2Step329HeadGvOut,s2Step329HeadFvOut]
    (growRow 769 s2Step329HeadGFresh) ((growRow 768 s2Step329HeadFFresh ++ (growRow 771 s2Step329HeadGvFresh ++ (growRow 770 s2Step329HeadFvFresh ++ [])))) s2Step329HeadG_Incoming s2Step329HeadG_checked h1 s2Step329HeadG_Outgoing
  exact h0

private theorem s2Step329HeadBank_checked : compileHmrBankResizeLog .headroom s2Step329HeadGBefore ⟨s2Step329HeadFRow,s2Step329HeadGRow,s2Step329HeadFvRow,s2Step329HeadGvRow⟩ ⟨107,107,181,181⟩ [s2Step329HeadGFresh,s2Step329HeadFFresh,s2Step329HeadGvFresh,s2Step329HeadFvFresh]=
    some (s2Step329HeadFvAfter,⟨s2Step329HeadFOut,s2Step329HeadGOut,s2Step329HeadFvOut,s2Step329HeadGvOut⟩,(growRow 769 s2Step329HeadGFresh ++ (growRow 768 s2Step329HeadFFresh ++ (growRow 771 s2Step329HeadGvFresh ++ (growRow 770 s2Step329HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step329HeadBank_rows]
  rfl

private theorem s2Step329Front_checked : compileHmrSourceFrontLog s2Step329EntryFBefore s2Step329FrontBank 106 180 ⟨105,105,180,180⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step329FrontLog=some s2Step329FrontPlan := by
  have pairEq : s2Step329FrontPair=⟨s2Step329HeadFRow,s2Step329HeadGRow,s2Step329HeadFvRow,s2Step329HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step329FrontHead=⟨s2Step329ExitFRow,s2Step329ExitGRow,s2Step329ExitFvRow,s2Step329ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step329Add0A=s2Step329FrontHead.f.wires := by decide +kernel
  have gEq : s2Step329Add0B=s2Step329FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step329Add1A=s2Step329FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step329Add1B=s2Step329FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step329EntryFBefore s2Step329FrontBank 106 180 ⟨105,105,180,180⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step329FrontLog s2Step329FrontPlan
  · exact s2Step329Front_entry
  · exact s2Step329EntryBank_checked
  · exact s2Step329Front_sigma
  · rfl
  · exact s2Step329Front_branch
  · rfl
  · simpa only [s2Step329FrontPlan,pairEq] using s2Step329HeadBank_checked
  · simpa only [s2Step329FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step329F4_checked
  · exact s2Step329Counter_checked
  · rfl
  · simpa only [s2Step329FrontPlan,headEq] using s2Step329ExitBank_checked

private theorem s2Step329Complete_explicit_checked : compileHmrEarlyStepLog s2Step329EntryFBefore s2Step329FrontBank 106 180 ⟨105,105,180,180⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step329CompleteLog=some s2Step329CompletePlan := by
  let Q := s2Step329EarlyControlPlan
  have hq := s2Step329EarlyControl_plan_checked
  have fv1 : s2Step329CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step329CompleteOut.fv.payload[2]?.getD s2Step329CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step329CompleteOut.fv.payload[3]?.getD s2Step329CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step329CompleteOut.fv.payload[4]?.getD s2Step329CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step329EntryFBefore s2Step329EarlyControlArena s2Step329FrontBank 106 180 ⟨105,105,180,180⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step329CompleteLog s2Step329FrontPlan Q
    s2Step329Front_checked s2Step329Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step329Complete_owned s2Step329Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step329EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 794 s2Step329CompleteOut.fv.second (s2Step329CompleteOut.fv.payload[2]?.getD s2Step329CompleteOut.fv.sign) (s2Step329CompleteOut.fv.payload[3]?.getD s2Step329CompleteOut.fv.sign) (s2Step329CompleteOut.fv.payload[4]?.getD s2Step329CompleteOut.fv.sign) 817 60 s2Step329EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep329Arena : Arena := s2Step329EntryFBefore
def s2PrivateStep329Bank : WindowBank := s2Step329FrontBank
def s2PrivateStep329Spec : HmrSourceWalkStepLog := ⟨106,180,⟨105,105,180,180⟩,60,.early s2Step329CompleteLog⟩
def s2PrivateStep329Plan : HmrSourceStepPlan := .early s2Step329CompletePlan
theorem s2PrivateStep329_source : s2PrivateStep329Spec=s2ObservedLogs320[9] := rfl
theorem s2PrivateStep329_checked : compileHmrSourceStepLog s2PrivateStep329Arena s2PrivateStep329Bank
    s2PrivateStep329Spec.fgWidth s2PrivateStep329Spec.vWidth s2PrivateStep329Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]
    6 498 329 s2PrivateStep329Spec.need none s2PrivateStep329Spec.log=some s2PrivateStep329Plan := by
  change compileHmrSourceStepLog s2Step329EntryFBefore s2Step329FrontBank 106 180 ⟨105,105,180,180⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 6 498 329 60 none (.early s2Step329CompleteLog)=some (.early s2Step329CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 329<498)]
  rw [s2Step329Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
