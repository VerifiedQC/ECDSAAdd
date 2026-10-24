import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep324
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

private def s2Step326CompleteMoves : List (Wire × Wire) := [(782,107),(877,619)]

private def s2Step326EarlyControlLog : HmrEarlyControlLog := ⟨[877, 782, 827, 787, 807],[834],[806],[784, 800, 894, 896, 901, 903],[]⟩

private def s2Step326FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[807], [787], [827], [867]],[[], [], [], []]⟩,[829],[830],[834],[806],[784, 800, 894, 896, 901, 903, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[784, 800, 894, 896, 901, 903, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[834, 806, 784, 800]⟩

private def s2Step326CompleteLog : HmrEarlyStepLog := ⟨s2Step326FrontLog,s2Step326CompleteMoves,s2Step326EarlyControlLog⟩

private def s2Step326ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618],768⟩

private def s2Step326ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867],770⟩

private def s2Step326ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106],769⟩

private def s2Step326ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885],771⟩

private def s2Step326FrontOut : WindowBank := ⟨s2Step326ExitFOut,s2Step326ExitGOut,s2Step326ExitFvOut,s2Step326ExitGvOut⟩

private def s2Step326CompleteOut : WindowBank := s2Step326FrontOut.repacked s2Step326CompleteMoves

private def s2Step326EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step326EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step326EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step326EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step326EarlyControlPositiveArena,[834],s2Step326EarlyControlEqualityArena,[806],⟨⟨829,false⟩,[⟨⟨834,false⟩,806⟩]⟩⟩

private def s2Step326EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step326EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step326EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step326EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step326EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step326EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step326EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,877⟩,⟨⟨774,false⟩,782⟩,⟨⟨775,false⟩,827⟩,⟨⟨776,false⟩,787⟩,⟨⟨777,false⟩,807⟩]⟩

private def s2Step326EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step326EarlyControlZeroArena,s2Step326EarlyControlZeroPlan,s2Step326EarlyControlClassPlan,s2Step326EarlyControlFlagArena,s2Step326EarlyControlFittedArena,s2Step326EarlyControlHistoryArena,s2Step326EarlyControlSigmaArena,s2Step326EarlyControlOutputArena,s2Step326EarlyControlLog⟩

private def s2Step326CounterWork : List Wire := [834, 806, 784, 800]

private theorem s2Step326Counter_bounded : s2Step326CounterWork.toFinset⊆arenaWires := by norm_num [s2Step326CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step326HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step326CounterDuring : Arena := ⟨s2Step326HeadFvAfter.live∪s2Step326CounterWork.toFinset,Finset.union_subset s2Step326HeadFvAfter.bounded s2Step326Counter_bounded⟩

private def s2Step326EntryFFresh : List Wire := []

private def s2Step326EntryFvFresh : List Wire := []

private def s2Step326EntryGFresh : List Wire := []

private def s2Step326EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step326EntryGvAfter : Arena := s2Step326EntryFBefore

private def s2Step326EntryGvFresh : List Wire := []

private def s2Step326ExitFExtra : List Wire := [619, 787]

private def s2Step326ExitGExtra : List Wire := [107, 807]

private def s2Step326ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<107) ∨ (108≤q ∧ q<619) ∨ (620≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step326ExitGvExtra : List Wire := [827]

private def s2Step326Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step326Add0Work : List Wire := [784, 800, 894, 896, 901, 903, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step326Add0_bounded : s2Step326Add0Work.toFinset⊆arenaWires := by
  have h : s2Step326Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step326Add0During : Arena := ⟨s2Step326Add0Arena.live∪s2Step326Add0Work.toFinset,Finset.union_subset s2Step326Add0Arena.bounded s2Step326Add0_bounded⟩

private def s2Step326Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step326Add1Work : List Wire := [784, 800, 894, 896, 901, 903, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step326Add1_bounded : s2Step326Add1Work.toFinset⊆arenaWires := by
  have h : s2Step326Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step326Add1During : Arena := ⟨s2Step326Add1Arena.live∪s2Step326Add1Work.toFinset,Finset.union_subset s2Step326Add1Arena.bounded s2Step326Add1_bounded⟩

private def s2Step326F4FlagArena : Arena := ⟨s2Step326HeadFvAfter.live∪{834},Finset.union_subset s2Step326HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step326F4Plan : HmrHybridF4Plan := ⟨s2Step326F4FlagArena,[834],s2Step326Add0Arena,[806],s2Step326Add0During,s2Step326Add0Work,s2Step326Add1During,s2Step326Add1Work⟩

private def s2Step326HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 787],768⟩

private def s2Step326HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867],770⟩

private def s2Step326HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 807],769⟩

private def s2Step326HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 827],771⟩

private def s2Step326FrontHead : WindowBank := ⟨s2Step326HeadFOut,s2Step326HeadGOut,s2Step326HeadFvOut,s2Step326HeadGvOut⟩

private def s2Step326EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619],768⟩

private def s2Step326EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879],770⟩

private def s2Step326EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107],769⟩

private def s2Step326EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885],771⟩

private def s2Step326FrontPair : WindowBank := ⟨s2Step326EntryFOut,s2Step326EntryGOut,s2Step326EntryFvOut,s2Step326EntryGvOut⟩

private def s2Step326FrontSigmaArena : Arena := ⟨s2Step326EntryGvAfter.live∪{829},Finset.union_subset s2Step326EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step326HeadFFresh : List Wire := [787]

private def s2Step326HeadFvFresh : List Wire := [867]

private def s2Step326HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step326HeadGFresh : List Wire := [807]

private def s2Step326HeadGvFresh : List Wire := [827]

private def s2Step326FrontPlan : HmrSourceFront := ⟨s2Step326EntryGvAfter,s2Step326FrontPair,(growRow 768 s2Step326EntryFFresh ++ (growRow 769 s2Step326EntryGFresh ++ (growRow 770 s2Step326EntryFvFresh ++ (growRow 771 s2Step326EntryGvFresh ++ [])))),s2Step326FrontSigmaArena,[829],s2Step326HeadGBefore,[830],
  s2Step326HeadFvAfter,s2Step326FrontHead,(growRow 769 s2Step326HeadGFresh ++ (growRow 768 s2Step326HeadFFresh ++ (growRow 771 s2Step326HeadGvFresh ++ (growRow 770 s2Step326HeadFvFresh ++ [])))),s2Step326F4Plan,s2Step326CounterDuring,s2Step326CounterWork,s2Step326ExitGvAfter,s2Step326FrontOut,(shrinkRow 769 s2Step326ExitGExtra ++ (shrinkRow 768 s2Step326ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step326ExitGvExtra ++ []))))⟩

private def s2Step326CompletePlan : HmrEarlyStepPlan := ⟨s2Step326FrontPlan,s2Step326EarlyControlArena,s2Step326EarlyControlPlan,s2Step326CompleteMoves⟩

private theorem s2Step326Complete_apart : List.Disjoint (s2Step326CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [829, 830, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] := by
  have nd : ((s2Step326CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[829, 830, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step326Complete_owned : (s2Step326CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step326EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step326EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private def s2Step326CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,619),(620,782),(783,784),(785,787),(788,800),(801,806),(808,827),(828,834),(835,894),(895,896),(897,901),(902,903),(904,907),(908,913)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s2Step326CompleteRelocationMove0Borrowed : Arena := ⟨s2Step326ExitGvAfter.live∪{107},Finset.union_subset s2Step326ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step326CompleteRelocationMove1Borrowed : Arena := ⟨s2Step326CompleteRelocationMove0After.live∪{619},Finset.union_subset s2Step326CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s2Step326CompleteRelocation_move0_owned : 782∈s2Step326ExitGvAfter.live := by norm_num [s2Step326ExitGvAfter,arenaWires]

private theorem s2Step326CompleteRelocation_move0_reserve : s2Step326ExitGvAfter.reserve {107}=some s2Step326CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step326ExitGvAfter,arenaWires]
  · rfl

private theorem s2Step326CompleteRelocation_move0_retire : s2Step326CompleteRelocationMove0Borrowed.retireSet {782}=s2Step326CompleteRelocationMove0After := by
  unfold Arena.retireSet s2Step326CompleteRelocationMove0After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step326CompleteRelocationMove0Borrowed,s2Step326ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step326CompleteRelocation_move1_owned : 877∈s2Step326CompleteRelocationMove0After.live := by norm_num [s2Step326CompleteRelocationMove0After,arenaWires]

private theorem s2Step326CompleteRelocation_move1_reserve : s2Step326CompleteRelocationMove0After.reserve {619}=some s2Step326CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step326CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s2Step326CompleteRelocation_move1_retire : s2Step326CompleteRelocationMove1Borrowed.retireSet {877}=s2Step326EarlyControlArena := by
  unfold Arena.retireSet s2Step326EarlyControlArena
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step326CompleteRelocationMove1Borrowed,s2Step326CompleteRelocationMove0After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step326CompleteRelocation_checked : s2Step326ExitGvAfter.checkRepack [(782,107),(877,619)]=some s2Step326EarlyControlArena := by
  have tail2 : s2Step326EarlyControlArena.checkRepack []=some s2Step326EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s2Step326CompleteRelocationMove0After s2Step326CompleteRelocationMove1Borrowed s2Step326EarlyControlArena s2Step326EarlyControlArena 877 619 []
    s2Step326CompleteRelocation_move1_owned s2Step326CompleteRelocation_move1_reserve s2Step326CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s2Step326ExitGvAfter s2Step326CompleteRelocationMove0Borrowed s2Step326CompleteRelocationMove0After s2Step326EarlyControlArena 782 107 [(877,619)]
    s2Step326CompleteRelocation_move0_owned s2Step326CompleteRelocation_move0_reserve s2Step326CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s2Step326Complete_repack : s2Step326ExitGvAfter.checkRepack s2Step326CompleteMoves=some s2Step326EarlyControlArena := by
  simpa only [s2Step326CompleteMoves] using s2Step326CompleteRelocation_checked

private theorem s2Step326EarlyControl_branchOwned : ([830] : List Wire).toFinset⊆s2Step326EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step326EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step326EarlyControl_branch : compileHmrBranchRetirement s2Step326EarlyControlSigmaArena 830=some s2Step326EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step326EarlyControl_branchOwned
  · ext q
    simp [s2Step326EarlyControlOutputArena,s2Step326EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step326EarlyControl_classEqualityBorrow : s2Step326EarlyControlPositiveArena.checkBorrow (([829, 834] : List Wire).length-1) s2Step326EarlyControlLog.classWork=some s2Step326EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step326EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step326EarlyControlPositiveArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step326EarlyControlEqualityArena,s2Step326EarlyControlPositiveArena,s2Step326EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step326EarlyControl_classEqualityOwned : ([829, 834] : List Wire).toFinset⊆s2Step326EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step326EarlyControlPositiveArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step326EarlyControl_classEquality : compileHmrEqualityLog s2Step326EarlyControlPositiveArena [829, 834] 0 s2Step326EarlyControlLog.classWork=some (s2Step326EarlyControlEqualityArena,s2Step326EarlyControlLog.classWork,s2Step326EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step326EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step326EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step326EarlyControl_classOwned : ([777, 807, 829] : List Wire).toFinset⊆s2Step326EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step326EarlyControlZeroArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step326EarlyControl_positiveBorrow : s2Step326EarlyControlZeroArena.checkBorrow (1) s2Step326EarlyControlLog.positiveWork=some s2Step326EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step326EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step326EarlyControlZeroArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step326EarlyControlPositiveArena,s2Step326EarlyControlZeroArena,s2Step326EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step326EarlyControl_class : compileHmrSourceClassLog s2Step326EarlyControlZeroArena false 777 s2Step326EarlyControlZeroPlan.top 0 829 s2Step326EarlyControlLog.positiveWork s2Step326EarlyControlLog.classWork=some s2Step326EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step326EarlyControlClassPlan s2Step326EarlyControlZeroArena false 777 s2Step326EarlyControlZeroPlan.top 0 829
  constructor
  · decide +kernel
  · exact s2Step326EarlyControl_classOwned
  · exact s2Step326EarlyControl_positiveBorrow
  · exact s2Step326EarlyControl_classEquality

private theorem s2Step326EarlyControl_entryRecordOwned : ([830, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step326EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step326EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step326EarlyControl_entrySigmaOwned : ([829, 254] : List Wire).toFinset⊆s2Step326EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step326EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step326EarlyControl_fitBorrow : s2Step326EarlyControlFlagArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step326EarlyControlLog.recordFresh=some s2Step326EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step326EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step326EarlyControlFlagArena (fun q => (0≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step326EarlyControlFittedArena,s2Step326EarlyControlFlagArena,s2Step326EarlyControlLog,arenaWires]

private theorem s2Step326EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step326EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step326EarlyControlFlagArena (fun q => (0≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step326EarlyControl_fit : compileHmrRecordGrowLog s2Step326EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step326EarlyControlLog.recordFresh=some s2Step326EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step326EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step326EarlyControl_fitBorrow

private theorem s2Step326EarlyControl_flagsBorrow : s2Step326EarlyControlEqualityArena.checkBorrow (6) s2Step326EarlyControlLog.flagWork=some s2Step326EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step326EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step326EarlyControlEqualityArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step326EarlyControlFlagArena,s2Step326EarlyControlEqualityArena,s2Step326EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step326EarlyControl_flagsOwned : ([806, 253, 252, 251] : List Wire).toFinset⊆s2Step326EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step326EarlyControlEqualityArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step326EarlyControl_flags : compileHmrFlagsLog s2Step326EarlyControlClassPlan.equalityArena s2Step326EarlyControlClassPlan.equality.top 253 252 251 s2Step326EarlyControlLog.flagWork=some s2Step326EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step326EarlyControl_flagsOwned⟩
  · exact s2Step326EarlyControl_flagsBorrow

private theorem s2Step326EarlyControl_historyBorrow : s2Step326EarlyControlArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step326EarlyControlLog.recordFresh=some s2Step326EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step326EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step326EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step326EarlyControlHistoryArena,s2Step326EarlyControlArena,s2Step326EarlyControlLog,arenaWires]

private theorem s2Step326EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step326EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step326EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step326EarlyControl_history : compileHmrRecordGrowLog s2Step326EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step326EarlyControlLog.recordFresh=some s2Step326EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step326EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step326EarlyControl_historyBorrow

private theorem s2Step326EarlyControl_sigmaOwned : ([254, 829] : List Wire).toFinset⊆s2Step326EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step326EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step326EarlyControl_sigmaReleaseOwned : ([829] : List Wire).toFinset⊆s2Step326EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step326EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step326EarlyControl_sigmaRelease : s2Step326EarlyControlHistoryArena.release {829} (fun _ => false)=some s2Step326EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step326EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step326EarlyControlSigmaArena,s2Step326EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step326EarlyControl_sigma : compileHmrSigmaDropLog s2Step326EarlyControlHistoryArena false 0 0 254 829 []=some s2Step326EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step326EarlyControl_sigmaOwned⟩
  · exact s2Step326EarlyControl_sigmaRelease

private theorem s2Step326EarlyControl_zeroBorrow : s2Step326EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step326EarlyControlLog.zeroWork=some s2Step326EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step326EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step326EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step326EarlyControlZeroArena,s2Step326EarlyControlArena,s2Step326EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step326EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step326EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step326EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step326EarlyControl_zero : compileHmrEqualityLog s2Step326EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step326EarlyControlLog.zeroWork=some (s2Step326EarlyControlZeroArena,s2Step326EarlyControlLog.zeroWork,s2Step326EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step326EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step326EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step326EarlyControl_logged : s2Step326EarlyControlPlan.Logged s2Step326EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 829 254 253 252 251 830 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step326EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step326EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step326EarlyControl_zero
  · exact s2Step326EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step326EarlyControl_flags
  · exact s2Step326EarlyControl_fit
  · exact s2Step326EarlyControl_history
  · exact s2Step326EarlyControl_sigma
  · exact s2Step326EarlyControl_branch

private theorem s2Step326EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step326EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 829 254 253 252 251 830 60 s2Step326EarlyControlLog=some s2Step326EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step326EarlyControlPlan s2Step326EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 829 254 253 252 251 830 60 s2Step326EarlyControl_logged

private def s2Step326EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619],768⟩

private def s2Step326EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879],770⟩

private def s2Step326EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107],769⟩

private def s2Step326EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885],771⟩

private def s2Step326FrontBank : WindowBank := ⟨s2Step326EntryFRow,s2Step326EntryGRow,s2Step326EntryFvRow,s2Step326EntryGvRow⟩

private def s2Step326Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 787, 768]

private def s2Step326Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 807, 769]

private def s2Step326Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 770]

private def s2Step326Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 827, 771]

private theorem s2Step326Counter_apart : Disjoint s2Step326HeadFvAfter.live s2Step326CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step326HeadFvAfter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step326Counter_borrowed : s2Step326HeadFvAfter.checkBorrow 4 s2Step326CounterWork=some s2Step326CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step326HeadFvAfter s2Step326CounterDuring s2Step326CounterWork.toFinset s2Step326Counter_bounded s2Step326Counter_apart rfl

private theorem s2Step326Counter_owned : (829::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step326HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step326HeadFvAfter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step326Counter_checked : compileHmrCounterStepLog s2Step326HeadFvAfter true 829 [772, 773, 774, 775, 776, 777] s2Step326CounterWork=some s2Step326CounterDuring := by
  have owned : ∀q∈829::[772, 773, 774, 775, 776, 777],q∈s2Step326HeadFvAfter.live := fun q hq => s2Step326Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step326Counter_borrowed

private def s2Step326EntryFAfter : Arena := s2Step326EntryFBefore

private theorem s2Step326EntryBank_incomingDistinct : ([s2Step326EntryFRow,s2Step326EntryGRow,s2Step326EntryFvRow,s2Step326EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step326EntryF_Incoming : rowsOwned s2Step326EntryFBefore [s2Step326EntryFRow,s2Step326EntryGRow,s2Step326EntryFvRow,s2Step326EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step326EntryFRow,s2Step326EntryGRow,s2Step326EntryFvRow,s2Step326EntryGvRow] 0 s2Step326EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step326EntryFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step326EntryBank_outgoingOwned : rowsOwned s2Step326EntryGvAfter [s2Step326EntryFOut,s2Step326EntryGOut,s2Step326EntryFvOut,s2Step326EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step326EntryGvAfter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step326EntryF_Outgoing : rowsOwned s2Step326EntryGvAfter [s2Step326EntryFOut,s2Step326EntryGOut,s2Step326EntryFvOut,s2Step326EntryGvOut] :=
  hmrRows_owned_drop s2Step326EntryGvAfter [s2Step326EntryFOut,s2Step326EntryGOut,s2Step326EntryFvOut,s2Step326EntryGvOut] 0 s2Step326EntryBank_outgoingOwned

private theorem s2Step326EntryF_distinct : (s2Step326EntryFRow.sign::s2Step326EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step326EntryF_owned : (s2Step326EntryFRow.sign::s2Step326EntryFRow.payload).toFinset⊆s2Step326EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step326EntryFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step326EntryF_reserved : s2Step326EntryFBefore.reserve s2Step326EntryFFresh.toFinset=some s2Step326EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step326EntryFFresh,arenaWires]
  · norm_num [s2Step326EntryFBefore,s2Step326EntryFFresh,arenaWires]
  · simp only [s2Step326EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step326EntryF_checked : planRowResizeLog s2Step326EntryFBefore s2Step326EntryFRow 108 s2Step326EntryFFresh=
    some (s2Step326EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619],768⟩,growRow 768 s2Step326EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step326EntryFBefore s2Step326EntryFAfter s2Step326EntryFRow 108 s2Step326EntryFFresh
    s2Step326EntryF_distinct s2Step326EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step326EntryF_reserved
  have rowEq : WindowRow.mk (s2Step326EntryFRow.payload++s2Step326EntryFFresh) s2Step326EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step326EntryFvAfter : Arena := s2Step326EntryFBefore

private def s2Step326EntryFvBefore : Arena := s2Step326EntryFBefore

private theorem s2Step326EntryFv_Incoming : rowsOwned s2Step326EntryFvBefore [s2Step326EntryFvRow,s2Step326EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step326EntryFRow,s2Step326EntryGRow,s2Step326EntryFvRow,s2Step326EntryGvRow] 2 s2Step326EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step326EntryFvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step326EntryFv_Outgoing : rowsOwned s2Step326EntryGvAfter [s2Step326EntryFvOut,s2Step326EntryGvOut] :=
  hmrRows_owned_drop s2Step326EntryGvAfter [s2Step326EntryFOut,s2Step326EntryGOut,s2Step326EntryFvOut,s2Step326EntryGvOut] 2 s2Step326EntryBank_outgoingOwned

private theorem s2Step326EntryFv_distinct : (s2Step326EntryFvRow.sign::s2Step326EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step326EntryFv_owned : (s2Step326EntryFvRow.sign::s2Step326EntryFvRow.payload).toFinset⊆s2Step326EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step326EntryFvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step326EntryFv_reserved : s2Step326EntryFvBefore.reserve s2Step326EntryFvFresh.toFinset=some s2Step326EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step326EntryFvFresh,arenaWires]
  · norm_num [s2Step326EntryFvBefore,s2Step326EntryFBefore,s2Step326EntryFvFresh,arenaWires]
  · simp only [s2Step326EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step326EntryFv_checked : planRowResizeLog s2Step326EntryFvBefore s2Step326EntryFvRow 178 s2Step326EntryFvFresh=
    some (s2Step326EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879],770⟩,growRow 770 s2Step326EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step326EntryFvBefore s2Step326EntryFvAfter s2Step326EntryFvRow 178 s2Step326EntryFvFresh
    s2Step326EntryFv_distinct s2Step326EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step326EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step326EntryFvRow.payload++s2Step326EntryFvFresh) s2Step326EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step326EntryGAfter : Arena := s2Step326EntryFBefore

private def s2Step326EntryGBefore : Arena := s2Step326EntryFBefore

private theorem s2Step326EntryG_Incoming : rowsOwned s2Step326EntryGBefore [s2Step326EntryGRow,s2Step326EntryFvRow,s2Step326EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step326EntryFRow,s2Step326EntryGRow,s2Step326EntryFvRow,s2Step326EntryGvRow] 1 s2Step326EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step326EntryGBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step326EntryG_Outgoing : rowsOwned s2Step326EntryGvAfter [s2Step326EntryGOut,s2Step326EntryFvOut,s2Step326EntryGvOut] :=
  hmrRows_owned_drop s2Step326EntryGvAfter [s2Step326EntryFOut,s2Step326EntryGOut,s2Step326EntryFvOut,s2Step326EntryGvOut] 1 s2Step326EntryBank_outgoingOwned

private theorem s2Step326EntryG_distinct : (s2Step326EntryGRow.sign::s2Step326EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step326EntryG_owned : (s2Step326EntryGRow.sign::s2Step326EntryGRow.payload).toFinset⊆s2Step326EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step326EntryGBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step326EntryG_reserved : s2Step326EntryGBefore.reserve s2Step326EntryGFresh.toFinset=some s2Step326EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step326EntryGFresh,arenaWires]
  · norm_num [s2Step326EntryGBefore,s2Step326EntryFBefore,s2Step326EntryGFresh,arenaWires]
  · simp only [s2Step326EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step326EntryG_checked : planRowResizeLog s2Step326EntryGBefore s2Step326EntryGRow 108 s2Step326EntryGFresh=
    some (s2Step326EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107],769⟩,growRow 769 s2Step326EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step326EntryGBefore s2Step326EntryGAfter s2Step326EntryGRow 108 s2Step326EntryGFresh
    s2Step326EntryG_distinct s2Step326EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step326EntryG_reserved
  have rowEq : WindowRow.mk (s2Step326EntryGRow.payload++s2Step326EntryGFresh) s2Step326EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step326EntryGvBefore : Arena := s2Step326EntryFBefore

private theorem s2Step326EntryGv_Incoming : rowsOwned s2Step326EntryGvBefore [s2Step326EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step326EntryFRow,s2Step326EntryGRow,s2Step326EntryFvRow,s2Step326EntryGvRow] 3 s2Step326EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step326EntryGvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step326EntryGv_Outgoing : rowsOwned s2Step326EntryGvAfter [s2Step326EntryGvOut] :=
  hmrRows_owned_drop s2Step326EntryGvAfter [s2Step326EntryFOut,s2Step326EntryGOut,s2Step326EntryFvOut,s2Step326EntryGvOut] 3 s2Step326EntryBank_outgoingOwned

private theorem s2Step326EntryGv_distinct : (s2Step326EntryGvRow.sign::s2Step326EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step326EntryGv_owned : (s2Step326EntryGvRow.sign::s2Step326EntryGvRow.payload).toFinset⊆s2Step326EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step326EntryGvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step326EntryGv_reserved : s2Step326EntryGvBefore.reserve s2Step326EntryGvFresh.toFinset=some s2Step326EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step326EntryGvFresh,arenaWires]
  · norm_num [s2Step326EntryGvBefore,s2Step326EntryFBefore,s2Step326EntryGvFresh,arenaWires]
  · simp only [s2Step326EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step326EntryGv_checked : planRowResizeLog s2Step326EntryGvBefore s2Step326EntryGvRow 178 s2Step326EntryGvFresh=
    some (s2Step326EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885],771⟩,growRow 771 s2Step326EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step326EntryGvBefore s2Step326EntryGvAfter s2Step326EntryGvRow 178 s2Step326EntryGvFresh
    s2Step326EntryGv_distinct s2Step326EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step326EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step326EntryGvRow.payload++s2Step326EntryGvFresh) s2Step326EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step326EntryBank_rows : planWindowRowsLog s2Step326EntryFBefore [(s2Step326EntryFRow,108),(s2Step326EntryGRow,108),(s2Step326EntryFvRow,178),(s2Step326EntryGvRow,178)] [s2Step326EntryFFresh,s2Step326EntryGFresh,s2Step326EntryFvFresh,s2Step326EntryGvFresh]=
    some (s2Step326EntryGvAfter,[s2Step326EntryFOut,s2Step326EntryGOut,s2Step326EntryFvOut,s2Step326EntryGvOut],(growRow 768 s2Step326EntryFFresh ++ (growRow 769 s2Step326EntryGFresh ++ (growRow 770 s2Step326EntryFvFresh ++ (growRow 771 s2Step326EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step326EntryGvAfter [] []=some (s2Step326EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step326EntryGvBefore s2Step326EntryGvAfter s2Step326EntryGvAfter
    s2Step326EntryGvRow s2Step326EntryGvOut 178 s2Step326EntryGvFresh [] [] []
    (growRow 771 s2Step326EntryGvFresh) ([]) s2Step326EntryGv_Incoming s2Step326EntryGv_checked h4 s2Step326EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step326EntryFvBefore s2Step326EntryFvAfter s2Step326EntryGvAfter
    s2Step326EntryFvRow s2Step326EntryFvOut 178 s2Step326EntryFvFresh [(s2Step326EntryGvRow,178)] [s2Step326EntryGvFresh] [s2Step326EntryGvOut]
    (growRow 770 s2Step326EntryFvFresh) ((growRow 771 s2Step326EntryGvFresh ++ [])) s2Step326EntryFv_Incoming s2Step326EntryFv_checked h3 s2Step326EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step326EntryGBefore s2Step326EntryGAfter s2Step326EntryGvAfter
    s2Step326EntryGRow s2Step326EntryGOut 108 s2Step326EntryGFresh [(s2Step326EntryFvRow,178),(s2Step326EntryGvRow,178)] [s2Step326EntryFvFresh,s2Step326EntryGvFresh] [s2Step326EntryFvOut,s2Step326EntryGvOut]
    (growRow 769 s2Step326EntryGFresh) ((growRow 770 s2Step326EntryFvFresh ++ (growRow 771 s2Step326EntryGvFresh ++ []))) s2Step326EntryG_Incoming s2Step326EntryG_checked h2 s2Step326EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step326EntryFBefore s2Step326EntryFAfter s2Step326EntryGvAfter
    s2Step326EntryFRow s2Step326EntryFOut 108 s2Step326EntryFFresh [(s2Step326EntryGRow,108),(s2Step326EntryFvRow,178),(s2Step326EntryGvRow,178)] [s2Step326EntryGFresh,s2Step326EntryFvFresh,s2Step326EntryGvFresh] [s2Step326EntryGOut,s2Step326EntryFvOut,s2Step326EntryGvOut]
    (growRow 768 s2Step326EntryFFresh) ((growRow 769 s2Step326EntryGFresh ++ (growRow 770 s2Step326EntryFvFresh ++ (growRow 771 s2Step326EntryGvFresh ++ [])))) s2Step326EntryF_Incoming s2Step326EntryF_checked h1 s2Step326EntryF_Outgoing
  exact h0

private theorem s2Step326EntryBank_checked : compileHmrBankResizeLog .entry s2Step326EntryFBefore ⟨s2Step326EntryFRow,s2Step326EntryGRow,s2Step326EntryFvRow,s2Step326EntryGvRow⟩ ⟨108,108,178,178⟩ [s2Step326EntryFFresh,s2Step326EntryGFresh,s2Step326EntryFvFresh,s2Step326EntryGvFresh]=
    some (s2Step326EntryGvAfter,⟨s2Step326EntryFOut,s2Step326EntryGOut,s2Step326EntryFvOut,s2Step326EntryGvOut⟩,(growRow 768 s2Step326EntryFFresh ++ (growRow 769 s2Step326EntryGFresh ++ (growRow 770 s2Step326EntryFvFresh ++ (growRow 771 s2Step326EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step326EntryBank_rows]
  rfl

private def s2Step326ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<107) ∨ (108≤q ∧ q<619) ∨ (620≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step326ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<107) ∨ (108≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step326ExitFBefore : Arena := s2Step326ExitGAfter

private def s2Step326ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 787],768⟩

private def s2Step326ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867],770⟩

private def s2Step326ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 807],769⟩

private def s2Step326ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 827],771⟩

private theorem s2Step326ExitBank_incomingDistinct : ([s2Step326ExitGRow,s2Step326ExitFRow,s2Step326ExitFvRow,s2Step326ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step326ExitF_Incoming : rowsOwned s2Step326ExitFBefore [s2Step326ExitFRow,s2Step326ExitFvRow,s2Step326ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step326ExitGRow,s2Step326ExitFRow,s2Step326ExitFvRow,s2Step326ExitGvRow] 1 s2Step326ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step326ExitFBefore (fun q => (0≤q ∧ q<107) ∨ (108≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step326ExitBank_outgoingOwned : rowsOwned s2Step326ExitGvAfter [s2Step326ExitGOut,s2Step326ExitFOut,s2Step326ExitFvOut,s2Step326ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step326ExitGvAfter (fun q => (0≤q ∧ q<107) ∨ (108≤q ∧ q<619) ∨ (620≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step326ExitF_Outgoing : rowsOwned s2Step326ExitGvAfter [s2Step326ExitFOut,s2Step326ExitFvOut,s2Step326ExitGvOut] :=
  hmrRows_owned_drop s2Step326ExitGvAfter [s2Step326ExitGOut,s2Step326ExitFOut,s2Step326ExitFvOut,s2Step326ExitGvOut] 1 s2Step326ExitBank_outgoingOwned

private theorem s2Step326ExitF_distinct : (s2Step326ExitFRow.sign::s2Step326ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step326ExitF_owned : (s2Step326ExitFRow.sign::s2Step326ExitFRow.payload).toFinset⊆s2Step326ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step326ExitFBefore (fun q => (0≤q ∧ q<107) ∨ (108≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step326ExitF_retired : s2Step326ExitFBefore.retireSet s2Step326ExitFExtra.toFinset=s2Step326ExitFAfter := by
  unfold Arena.retireSet s2Step326ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step326ExitFBefore,s2Step326ExitGAfter,s2Step326ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step326ExitF_checked : planRowResizeLog s2Step326ExitFBefore s2Step326ExitFRow 107 []=
    some (s2Step326ExitFAfter,s2Step326ExitFOut,shrinkRow 768 s2Step326ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step326ExitFBefore s2Step326ExitFRow 107 s2Step326ExitF_distinct s2Step326ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step326ExitFRow.payload.take 107) s2Step326ExitFRow.sign=s2Step326ExitFOut := by decide +kernel
  have hi : s2Step326ExitFRow.payload.drop 107=s2Step326ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step326ExitF_retired] at result
  exact result

private def s2Step326ExitFvAfter : Arena := s2Step326ExitFAfter

private def s2Step326ExitFvBefore : Arena := s2Step326ExitFAfter

private theorem s2Step326ExitFv_Incoming : rowsOwned s2Step326ExitFvBefore [s2Step326ExitFvRow,s2Step326ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step326ExitGRow,s2Step326ExitFRow,s2Step326ExitFvRow,s2Step326ExitGvRow] 2 s2Step326ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step326ExitFvBefore (fun q => (0≤q ∧ q<107) ∨ (108≤q ∧ q<619) ∨ (620≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step326ExitFv_Outgoing : rowsOwned s2Step326ExitGvAfter [s2Step326ExitFvOut,s2Step326ExitGvOut] :=
  hmrRows_owned_drop s2Step326ExitGvAfter [s2Step326ExitGOut,s2Step326ExitFOut,s2Step326ExitFvOut,s2Step326ExitGvOut] 2 s2Step326ExitBank_outgoingOwned

private theorem s2Step326ExitFv_distinct : (s2Step326ExitFvRow.sign::s2Step326ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step326ExitFv_owned : (s2Step326ExitFvRow.sign::s2Step326ExitFvRow.payload).toFinset⊆s2Step326ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step326ExitFvBefore (fun q => (0≤q ∧ q<107) ∨ (108≤q ∧ q<619) ∨ (620≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step326ExitFv_reserved : s2Step326ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step326ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step326ExitFv_checked : planRowResizeLog s2Step326ExitFvBefore s2Step326ExitFvRow 179 []=
    some (s2Step326ExitFvAfter,s2Step326ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step326ExitFvBefore s2Step326ExitFvAfter s2Step326ExitFvRow 179 []
    s2Step326ExitFv_distinct s2Step326ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step326ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step326ExitFvRow.payload++[]) s2Step326ExitFvRow.sign=s2Step326ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step326ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private theorem s2Step326ExitG_Incoming : rowsOwned s2Step326ExitGBefore [s2Step326ExitGRow,s2Step326ExitFRow,s2Step326ExitFvRow,s2Step326ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step326ExitGRow,s2Step326ExitFRow,s2Step326ExitFvRow,s2Step326ExitGvRow] 0 s2Step326ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step326ExitGBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step326ExitG_Outgoing : rowsOwned s2Step326ExitGvAfter [s2Step326ExitGOut,s2Step326ExitFOut,s2Step326ExitFvOut,s2Step326ExitGvOut] :=
  hmrRows_owned_drop s2Step326ExitGvAfter [s2Step326ExitGOut,s2Step326ExitFOut,s2Step326ExitFvOut,s2Step326ExitGvOut] 0 s2Step326ExitBank_outgoingOwned

private theorem s2Step326ExitG_distinct : (s2Step326ExitGRow.sign::s2Step326ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step326ExitG_owned : (s2Step326ExitGRow.sign::s2Step326ExitGRow.payload).toFinset⊆s2Step326ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step326ExitGBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step326ExitG_retired : s2Step326ExitGBefore.retireSet s2Step326ExitGExtra.toFinset=s2Step326ExitGAfter := by
  unfold Arena.retireSet s2Step326ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step326ExitGBefore,s2Step326ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step326ExitG_checked : planRowResizeLog s2Step326ExitGBefore s2Step326ExitGRow 107 []=
    some (s2Step326ExitGAfter,s2Step326ExitGOut,shrinkRow 769 s2Step326ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step326ExitGBefore s2Step326ExitGRow 107 s2Step326ExitG_distinct s2Step326ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step326ExitGRow.payload.take 107) s2Step326ExitGRow.sign=s2Step326ExitGOut := by decide +kernel
  have hi : s2Step326ExitGRow.payload.drop 107=s2Step326ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step326ExitG_retired] at result
  exact result

private def s2Step326ExitGvBefore : Arena := s2Step326ExitFAfter

private theorem s2Step326ExitGv_Incoming : rowsOwned s2Step326ExitGvBefore [s2Step326ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step326ExitGRow,s2Step326ExitFRow,s2Step326ExitFvRow,s2Step326ExitGvRow] 3 s2Step326ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step326ExitGvBefore (fun q => (0≤q ∧ q<107) ∨ (108≤q ∧ q<619) ∨ (620≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step326ExitGv_Outgoing : rowsOwned s2Step326ExitGvAfter [s2Step326ExitGvOut] :=
  hmrRows_owned_drop s2Step326ExitGvAfter [s2Step326ExitGOut,s2Step326ExitFOut,s2Step326ExitFvOut,s2Step326ExitGvOut] 3 s2Step326ExitBank_outgoingOwned

private theorem s2Step326ExitGv_distinct : (s2Step326ExitGvRow.sign::s2Step326ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step326ExitGv_owned : (s2Step326ExitGvRow.sign::s2Step326ExitGvRow.payload).toFinset⊆s2Step326ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step326ExitGvBefore (fun q => (0≤q ∧ q<107) ∨ (108≤q ∧ q<619) ∨ (620≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step326ExitGv_retired : s2Step326ExitGvBefore.retireSet s2Step326ExitGvExtra.toFinset=s2Step326ExitGvAfter := by
  unfold Arena.retireSet s2Step326ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step326ExitGvBefore,s2Step326ExitFAfter,s2Step326ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step326ExitGv_checked : planRowResizeLog s2Step326ExitGvBefore s2Step326ExitGvRow 178 []=
    some (s2Step326ExitGvAfter,s2Step326ExitGvOut,shrinkRow 771 s2Step326ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step326ExitGvBefore s2Step326ExitGvRow 178 s2Step326ExitGv_distinct s2Step326ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step326ExitGvRow.payload.take 178) s2Step326ExitGvRow.sign=s2Step326ExitGvOut := by decide +kernel
  have hi : s2Step326ExitGvRow.payload.drop 178=s2Step326ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step326ExitGv_retired] at result
  exact result

private theorem s2Step326ExitBank_rows : planWindowRowsLog s2Step326ExitGBefore [(s2Step326ExitGRow,107),(s2Step326ExitFRow,107),(s2Step326ExitFvRow,179),(s2Step326ExitGvRow,178)] [[],[],[],[]]=
    some (s2Step326ExitGvAfter,[s2Step326ExitGOut,s2Step326ExitFOut,s2Step326ExitFvOut,s2Step326ExitGvOut],(shrinkRow 769 s2Step326ExitGExtra ++ (shrinkRow 768 s2Step326ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step326ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step326ExitGvAfter [] []=some (s2Step326ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step326ExitGvBefore s2Step326ExitGvAfter s2Step326ExitGvAfter
    s2Step326ExitGvRow s2Step326ExitGvOut 178 [] [] [] []
    (shrinkRow 771 s2Step326ExitGvExtra) ([]) s2Step326ExitGv_Incoming s2Step326ExitGv_checked h4 s2Step326ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step326ExitFvBefore s2Step326ExitFvAfter s2Step326ExitGvAfter
    s2Step326ExitFvRow s2Step326ExitFvOut 179 [] [(s2Step326ExitGvRow,178)] [[]] [s2Step326ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step326ExitGvExtra ++ [])) s2Step326ExitFv_Incoming s2Step326ExitFv_checked h3 s2Step326ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step326ExitFBefore s2Step326ExitFAfter s2Step326ExitGvAfter
    s2Step326ExitFRow s2Step326ExitFOut 107 [] [(s2Step326ExitFvRow,179),(s2Step326ExitGvRow,178)] [[],[]] [s2Step326ExitFvOut,s2Step326ExitGvOut]
    (shrinkRow 768 s2Step326ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step326ExitGvExtra ++ []))) s2Step326ExitF_Incoming s2Step326ExitF_checked h2 s2Step326ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step326ExitGBefore s2Step326ExitGAfter s2Step326ExitGvAfter
    s2Step326ExitGRow s2Step326ExitGOut 107 [] [(s2Step326ExitFRow,107),(s2Step326ExitFvRow,179),(s2Step326ExitGvRow,178)] [[],[],[]] [s2Step326ExitFOut,s2Step326ExitFvOut,s2Step326ExitGvOut]
    (shrinkRow 769 s2Step326ExitGExtra) ((shrinkRow 768 s2Step326ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step326ExitGvExtra ++ [])))) s2Step326ExitG_Incoming s2Step326ExitG_checked h1 s2Step326ExitG_Outgoing
  exact h0

private theorem s2Step326ExitBank_checked : compileHmrBankResizeLog .exit s2Step326ExitGBefore ⟨s2Step326ExitFRow,s2Step326ExitGRow,s2Step326ExitFvRow,s2Step326ExitGvRow⟩ ⟨107,107,179,178⟩ [[],[],[],[]]=
    some (s2Step326ExitGvAfter,⟨s2Step326ExitFOut,s2Step326ExitGOut,s2Step326ExitFvOut,s2Step326ExitGvOut⟩,(shrinkRow 769 s2Step326ExitGExtra ++ (shrinkRow 768 s2Step326ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step326ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step326ExitBank_rows]
  rfl

private theorem s2Step326Add0_apart : Disjoint s2Step326Add0Arena.live s2Step326Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step326Add0Arena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step326Add0_card : s2Step326Add0Arena.live.card=906 := by
  decide +kernel

private theorem s2Step326Add0_borrowed : s2Step326Add0Arena.checkBorrow (hmrHybridCount s2Step326Add0Arena s2Step326Add0B.length) s2Step326Add0Work=some s2Step326Add0During := by
  have len : s2Step326Add0Work.length=hmrHybridCount s2Step326Add0Arena s2Step326Add0B.length := by
    rw [hmrHybridCount,s2Step326Add0_card]
    decide +kernel
  have nd : s2Step326Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step326Add0Arena s2Step326Add0During s2Step326Add0Work.toFinset s2Step326Add0_bounded s2Step326Add0_apart rfl

private theorem s2Step326Add0_distinct : (834::830::806::(s2Step326Add0A++s2Step326Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step326Add0_owned : (834::830::806::(s2Step326Add0A++s2Step326Add0B)).toFinset⊆s2Step326Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step326Add0Arena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step326Add0_checked : compileHmrHybridCinLog s2Step326Add0Arena 830 834 806 s2Step326Add0A s2Step326Add0B s2Step326Add0Work=some s2Step326Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step326Add0Arena s2Step326Add0During 830 834 806 s2Step326Add0A s2Step326Add0B s2Step326Add0Work
    (by decide +kernel) (by decide +kernel) s2Step326Add0_distinct
    (fun q hq => s2Step326Add0_owned (List.mem_toFinset.mpr hq)) s2Step326Add0_borrowed

private theorem s2Step326Add1_apart : Disjoint s2Step326Add1Arena.live s2Step326Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step326Add1Arena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step326Add1_card : s2Step326Add1Arena.live.card=906 := by
  decide +kernel

private theorem s2Step326Add1_borrowed : s2Step326Add1Arena.checkBorrow (hmrHybridCount s2Step326Add1Arena s2Step326Add1B.length) s2Step326Add1Work=some s2Step326Add1During := by
  have len : s2Step326Add1Work.length=hmrHybridCount s2Step326Add1Arena s2Step326Add1B.length := by
    rw [hmrHybridCount,s2Step326Add1_card]
    decide +kernel
  have nd : s2Step326Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step326Add1Arena s2Step326Add1During s2Step326Add1Work.toFinset s2Step326Add1_bounded s2Step326Add1_apart rfl

private theorem s2Step326Add1_distinct : (834::830::806::(s2Step326Add1A++s2Step326Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step326Add1_owned : (834::830::806::(s2Step326Add1A++s2Step326Add1B)).toFinset⊆s2Step326Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step326Add1Arena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step326Add1_checked : compileHmrHybridCinLog s2Step326Add1Arena 830 834 806 s2Step326Add1A s2Step326Add1B s2Step326Add1Work=some s2Step326Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step326Add1Arena s2Step326Add1During 830 834 806 s2Step326Add1A s2Step326Add1B s2Step326Add1Work
    (by decide +kernel) (by decide +kernel) s2Step326Add1_distinct
    (fun q hq => s2Step326Add1_owned (List.mem_toFinset.mpr hq)) s2Step326Add1_borrowed

private theorem s2Step326F4_apart : Disjoint (s2Step326Add0A++s2Step326Add0B).toFinset (s2Step326Add1A++s2Step326Add1B).toFinset := by
  have nd : ((s2Step326Add0A++s2Step326Add0B)++(s2Step326Add1A++s2Step326Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step326F4_carry : s2Step326F4FlagArena.checkBorrow 1 [806]=some s2Step326Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step326F4FlagArena,s2Step326HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step326F4FlagArena,s2Step326HeadFvAfter,s2Step326Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step326F4_distinct : (829::830::834::806::((s2Step326Add0A++s2Step326Add1A)++(s2Step326Add0B++s2Step326Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step326F4_flag : s2Step326HeadFvAfter.checkBorrow 1 [834]=some s2Step326F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step326HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step326F4_owned : (829::830::((s2Step326Add0A++s2Step326Add1A)++(s2Step326Add0B++s2Step326Add1B))).toFinset⊆s2Step326HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step326HeadFvAfter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step326F4_checked : compileHmrHybridF4Log s2Step326HeadFvAfter 829 830 s2Step326Add0A s2Step326Add0B s2Step326Add1A s2Step326Add1B [834] [806] s2Step326Add0Work s2Step326Add1Work=some s2Step326F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step326HeadFvAfter s2Step326F4FlagArena s2Step326Add0Arena s2Step326Add0During s2Step326Add1During 829 830
    s2Step326Add0A s2Step326Add0B s2Step326Add1A s2Step326Add1B [834] [806] s2Step326Add0Work s2Step326Add1Work
    (fun q hq => s2Step326F4_owned (List.mem_toFinset.mpr hq)) s2Step326F4_flag s2Step326F4_carry
    s2Step326F4_distinct s2Step326F4_apart s2Step326Add0_checked s2Step326Add1_checked

private theorem s2Step326Front_branch : s2Step326FrontSigmaArena.checkBorrow 1 [830]=some s2Step326HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step326FrontSigmaArena,s2Step326EntryGvAfter,s2Step326EntryFBefore,arenaWires]
  · ext q
    simp only [s2Step326FrontSigmaArena,s2Step326EntryGvAfter,s2Step326EntryFBefore,s2Step326HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step326Front_entry : HmrFrontEntryValid s2Step326EntryFBefore s2Step326FrontBank 108 178 ⟨107,107,179,178⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step326FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step326EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step326EntryFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step326FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step326Front_sigma : s2Step326EntryGvAfter.checkBorrow 1 [829]=some s2Step326FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step326EntryGvAfter,s2Step326EntryFBefore,arenaWires]
  · rfl

private def s2Step326HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step326HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step326HeadFBefore : Arena := s2Step326HeadGAfter

private def s2Step326HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619],768⟩

private def s2Step326HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879],770⟩

private def s2Step326HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107],769⟩

private def s2Step326HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885],771⟩

private theorem s2Step326HeadBank_incomingDistinct : ([s2Step326HeadGRow,s2Step326HeadFRow,s2Step326HeadGvRow,s2Step326HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step326HeadF_Incoming : rowsOwned s2Step326HeadFBefore [s2Step326HeadFRow,s2Step326HeadGvRow,s2Step326HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step326HeadGRow,s2Step326HeadFRow,s2Step326HeadGvRow,s2Step326HeadFvRow] 1 s2Step326HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step326HeadFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step326HeadBank_outgoingOwned : rowsOwned s2Step326HeadFvAfter [s2Step326HeadGOut,s2Step326HeadFOut,s2Step326HeadGvOut,s2Step326HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step326HeadFvAfter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step326HeadF_Outgoing : rowsOwned s2Step326HeadFvAfter [s2Step326HeadFOut,s2Step326HeadGvOut,s2Step326HeadFvOut] :=
  hmrRows_owned_drop s2Step326HeadFvAfter [s2Step326HeadGOut,s2Step326HeadFOut,s2Step326HeadGvOut,s2Step326HeadFvOut] 1 s2Step326HeadBank_outgoingOwned

private theorem s2Step326HeadF_distinct : (s2Step326HeadFRow.sign::s2Step326HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step326HeadF_owned : (s2Step326HeadFRow.sign::s2Step326HeadFRow.payload).toFinset⊆s2Step326HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step326HeadFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step326HeadF_reserved : s2Step326HeadFBefore.reserve s2Step326HeadFFresh.toFinset=some s2Step326HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step326HeadFFresh,arenaWires]
  · norm_num [s2Step326HeadFBefore,s2Step326HeadGAfter,s2Step326HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step326HeadFAfter,s2Step326HeadFBefore,s2Step326HeadGAfter,s2Step326HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step326HeadF_checked : planRowResizeLog s2Step326HeadFBefore s2Step326HeadFRow 109 s2Step326HeadFFresh=
    some (s2Step326HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 787],768⟩,growRow 768 s2Step326HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step326HeadFBefore s2Step326HeadFAfter s2Step326HeadFRow 109 s2Step326HeadFFresh
    s2Step326HeadF_distinct s2Step326HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step326HeadF_reserved
  have rowEq : WindowRow.mk (s2Step326HeadFRow.payload++s2Step326HeadFFresh) s2Step326HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 787],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step326HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step326HeadFvBefore : Arena := s2Step326HeadGvAfter

private theorem s2Step326HeadFv_Incoming : rowsOwned s2Step326HeadFvBefore [s2Step326HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step326HeadGRow,s2Step326HeadFRow,s2Step326HeadGvRow,s2Step326HeadFvRow] 3 s2Step326HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step326HeadFvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step326HeadFv_Outgoing : rowsOwned s2Step326HeadFvAfter [s2Step326HeadFvOut] :=
  hmrRows_owned_drop s2Step326HeadFvAfter [s2Step326HeadGOut,s2Step326HeadFOut,s2Step326HeadGvOut,s2Step326HeadFvOut] 3 s2Step326HeadBank_outgoingOwned

private theorem s2Step326HeadFv_distinct : (s2Step326HeadFvRow.sign::s2Step326HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step326HeadFv_owned : (s2Step326HeadFvRow.sign::s2Step326HeadFvRow.payload).toFinset⊆s2Step326HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step326HeadFvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step326HeadFv_reserved : s2Step326HeadFvBefore.reserve s2Step326HeadFvFresh.toFinset=some s2Step326HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step326HeadFvFresh,arenaWires]
  · norm_num [s2Step326HeadFvBefore,s2Step326HeadGvAfter,s2Step326HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step326HeadFvAfter,s2Step326HeadFvBefore,s2Step326HeadGvAfter,s2Step326HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step326HeadFv_checked : planRowResizeLog s2Step326HeadFvBefore s2Step326HeadFvRow 179 s2Step326HeadFvFresh=
    some (s2Step326HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867],770⟩,growRow 770 s2Step326HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step326HeadFvBefore s2Step326HeadFvAfter s2Step326HeadFvRow 179 s2Step326HeadFvFresh
    s2Step326HeadFv_distinct s2Step326HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step326HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step326HeadFvRow.payload++s2Step326HeadFvFresh) s2Step326HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step326HeadG_Incoming : rowsOwned s2Step326HeadGBefore [s2Step326HeadGRow,s2Step326HeadFRow,s2Step326HeadGvRow,s2Step326HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step326HeadGRow,s2Step326HeadFRow,s2Step326HeadGvRow,s2Step326HeadFvRow] 0 s2Step326HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step326HeadGBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step326HeadG_Outgoing : rowsOwned s2Step326HeadFvAfter [s2Step326HeadGOut,s2Step326HeadFOut,s2Step326HeadGvOut,s2Step326HeadFvOut] :=
  hmrRows_owned_drop s2Step326HeadFvAfter [s2Step326HeadGOut,s2Step326HeadFOut,s2Step326HeadGvOut,s2Step326HeadFvOut] 0 s2Step326HeadBank_outgoingOwned

private theorem s2Step326HeadG_distinct : (s2Step326HeadGRow.sign::s2Step326HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step326HeadG_owned : (s2Step326HeadGRow.sign::s2Step326HeadGRow.payload).toFinset⊆s2Step326HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step326HeadGBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step326HeadG_reserved : s2Step326HeadGBefore.reserve s2Step326HeadGFresh.toFinset=some s2Step326HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step326HeadGFresh,arenaWires]
  · norm_num [s2Step326HeadGBefore,s2Step326HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step326HeadGAfter,s2Step326HeadGBefore,s2Step326HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step326HeadG_checked : planRowResizeLog s2Step326HeadGBefore s2Step326HeadGRow 109 s2Step326HeadGFresh=
    some (s2Step326HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 807],769⟩,growRow 769 s2Step326HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step326HeadGBefore s2Step326HeadGAfter s2Step326HeadGRow 109 s2Step326HeadGFresh
    s2Step326HeadG_distinct s2Step326HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step326HeadG_reserved
  have rowEq : WindowRow.mk (s2Step326HeadGRow.payload++s2Step326HeadGFresh) s2Step326HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 807],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step326HeadGvBefore : Arena := s2Step326HeadFAfter

private theorem s2Step326HeadGv_Incoming : rowsOwned s2Step326HeadGvBefore [s2Step326HeadGvRow,s2Step326HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step326HeadGRow,s2Step326HeadFRow,s2Step326HeadGvRow,s2Step326HeadFvRow] 2 s2Step326HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step326HeadGvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step326HeadGv_Outgoing : rowsOwned s2Step326HeadFvAfter [s2Step326HeadGvOut,s2Step326HeadFvOut] :=
  hmrRows_owned_drop s2Step326HeadFvAfter [s2Step326HeadGOut,s2Step326HeadFOut,s2Step326HeadGvOut,s2Step326HeadFvOut] 2 s2Step326HeadBank_outgoingOwned

private theorem s2Step326HeadGv_distinct : (s2Step326HeadGvRow.sign::s2Step326HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step326HeadGv_owned : (s2Step326HeadGvRow.sign::s2Step326HeadGvRow.payload).toFinset⊆s2Step326HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step326HeadGvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step326HeadGv_reserved : s2Step326HeadGvBefore.reserve s2Step326HeadGvFresh.toFinset=some s2Step326HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step326HeadGvFresh,arenaWires]
  · norm_num [s2Step326HeadGvBefore,s2Step326HeadFAfter,s2Step326HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step326HeadGvAfter,s2Step326HeadGvBefore,s2Step326HeadFAfter,s2Step326HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step326HeadGv_checked : planRowResizeLog s2Step326HeadGvBefore s2Step326HeadGvRow 179 s2Step326HeadGvFresh=
    some (s2Step326HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 827],771⟩,growRow 771 s2Step326HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step326HeadGvBefore s2Step326HeadGvAfter s2Step326HeadGvRow 179 s2Step326HeadGvFresh
    s2Step326HeadGv_distinct s2Step326HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step326HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step326HeadGvRow.payload++s2Step326HeadGvFresh) s2Step326HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 827],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step326HeadBank_rows : planWindowRowsLog s2Step326HeadGBefore [(s2Step326HeadGRow,109),(s2Step326HeadFRow,109),(s2Step326HeadGvRow,179),(s2Step326HeadFvRow,179)] [s2Step326HeadGFresh,s2Step326HeadFFresh,s2Step326HeadGvFresh,s2Step326HeadFvFresh]=
    some (s2Step326HeadFvAfter,[s2Step326HeadGOut,s2Step326HeadFOut,s2Step326HeadGvOut,s2Step326HeadFvOut],(growRow 769 s2Step326HeadGFresh ++ (growRow 768 s2Step326HeadFFresh ++ (growRow 771 s2Step326HeadGvFresh ++ (growRow 770 s2Step326HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step326HeadFvAfter [] []=some (s2Step326HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step326HeadFvBefore s2Step326HeadFvAfter s2Step326HeadFvAfter
    s2Step326HeadFvRow s2Step326HeadFvOut 179 s2Step326HeadFvFresh [] [] []
    (growRow 770 s2Step326HeadFvFresh) ([]) s2Step326HeadFv_Incoming s2Step326HeadFv_checked h4 s2Step326HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step326HeadGvBefore s2Step326HeadGvAfter s2Step326HeadFvAfter
    s2Step326HeadGvRow s2Step326HeadGvOut 179 s2Step326HeadGvFresh [(s2Step326HeadFvRow,179)] [s2Step326HeadFvFresh] [s2Step326HeadFvOut]
    (growRow 771 s2Step326HeadGvFresh) ((growRow 770 s2Step326HeadFvFresh ++ [])) s2Step326HeadGv_Incoming s2Step326HeadGv_checked h3 s2Step326HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step326HeadFBefore s2Step326HeadFAfter s2Step326HeadFvAfter
    s2Step326HeadFRow s2Step326HeadFOut 109 s2Step326HeadFFresh [(s2Step326HeadGvRow,179),(s2Step326HeadFvRow,179)] [s2Step326HeadGvFresh,s2Step326HeadFvFresh] [s2Step326HeadGvOut,s2Step326HeadFvOut]
    (growRow 768 s2Step326HeadFFresh) ((growRow 771 s2Step326HeadGvFresh ++ (growRow 770 s2Step326HeadFvFresh ++ []))) s2Step326HeadF_Incoming s2Step326HeadF_checked h2 s2Step326HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step326HeadGBefore s2Step326HeadGAfter s2Step326HeadFvAfter
    s2Step326HeadGRow s2Step326HeadGOut 109 s2Step326HeadGFresh [(s2Step326HeadFRow,109),(s2Step326HeadGvRow,179),(s2Step326HeadFvRow,179)] [s2Step326HeadFFresh,s2Step326HeadGvFresh,s2Step326HeadFvFresh] [s2Step326HeadFOut,s2Step326HeadGvOut,s2Step326HeadFvOut]
    (growRow 769 s2Step326HeadGFresh) ((growRow 768 s2Step326HeadFFresh ++ (growRow 771 s2Step326HeadGvFresh ++ (growRow 770 s2Step326HeadFvFresh ++ [])))) s2Step326HeadG_Incoming s2Step326HeadG_checked h1 s2Step326HeadG_Outgoing
  exact h0

private theorem s2Step326HeadBank_checked : compileHmrBankResizeLog .headroom s2Step326HeadGBefore ⟨s2Step326HeadFRow,s2Step326HeadGRow,s2Step326HeadFvRow,s2Step326HeadGvRow⟩ ⟨109,109,179,179⟩ [s2Step326HeadGFresh,s2Step326HeadFFresh,s2Step326HeadGvFresh,s2Step326HeadFvFresh]=
    some (s2Step326HeadFvAfter,⟨s2Step326HeadFOut,s2Step326HeadGOut,s2Step326HeadFvOut,s2Step326HeadGvOut⟩,(growRow 769 s2Step326HeadGFresh ++ (growRow 768 s2Step326HeadFFresh ++ (growRow 771 s2Step326HeadGvFresh ++ (growRow 770 s2Step326HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step326HeadBank_rows]
  rfl

private theorem s2Step326Front_checked : compileHmrSourceFrontLog s2Step326EntryFBefore s2Step326FrontBank 108 178 ⟨107,107,179,178⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step326FrontLog=some s2Step326FrontPlan := by
  have pairEq : s2Step326FrontPair=⟨s2Step326HeadFRow,s2Step326HeadGRow,s2Step326HeadFvRow,s2Step326HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step326FrontHead=⟨s2Step326ExitFRow,s2Step326ExitGRow,s2Step326ExitFvRow,s2Step326ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step326Add0A=s2Step326FrontHead.f.wires := by decide +kernel
  have gEq : s2Step326Add0B=s2Step326FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step326Add1A=s2Step326FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step326Add1B=s2Step326FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step326EntryFBefore s2Step326FrontBank 108 178 ⟨107,107,179,178⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step326FrontLog s2Step326FrontPlan
  · exact s2Step326Front_entry
  · exact s2Step326EntryBank_checked
  · exact s2Step326Front_sigma
  · rfl
  · exact s2Step326Front_branch
  · rfl
  · simpa only [s2Step326FrontPlan,pairEq] using s2Step326HeadBank_checked
  · simpa only [s2Step326FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step326F4_checked
  · exact s2Step326Counter_checked
  · rfl
  · simpa only [s2Step326FrontPlan,headEq] using s2Step326ExitBank_checked

private theorem s2Step326Complete_explicit_checked : compileHmrEarlyStepLog s2Step326EntryFBefore s2Step326FrontBank 108 178 ⟨107,107,179,178⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step326CompleteLog=some s2Step326CompletePlan := by
  let Q := s2Step326EarlyControlPlan
  have hq := s2Step326EarlyControl_plan_checked
  have fv1 : s2Step326CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step326CompleteOut.fv.payload[2]?.getD s2Step326CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step326CompleteOut.fv.payload[3]?.getD s2Step326CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step326CompleteOut.fv.payload[4]?.getD s2Step326CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step326EntryFBefore s2Step326EarlyControlArena s2Step326FrontBank 108 178 ⟨107,107,179,178⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step326CompleteLog s2Step326FrontPlan Q
    s2Step326Front_checked s2Step326Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step326Complete_owned s2Step326Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step326EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 829 s2Step326CompleteOut.fv.second (s2Step326CompleteOut.fv.payload[2]?.getD s2Step326CompleteOut.fv.sign) (s2Step326CompleteOut.fv.payload[3]?.getD s2Step326CompleteOut.fv.sign) (s2Step326CompleteOut.fv.payload[4]?.getD s2Step326CompleteOut.fv.sign) 830 60 s2Step326EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep326Arena : Arena := s2Step326EntryFBefore
def s2PrivateStep326Bank : WindowBank := s2Step326FrontBank
def s2PrivateStep326Spec : HmrSourceWalkStepLog := ⟨108,178,⟨107,107,179,178⟩,60,.early s2Step326CompleteLog⟩
def s2PrivateStep326Plan : HmrSourceStepPlan := .early s2Step326CompletePlan
theorem s2PrivateStep326_source : s2PrivateStep326Spec=s2ObservedLogs320[6] := rfl
theorem s2PrivateStep326_checked : compileHmrSourceStepLog s2PrivateStep326Arena s2PrivateStep326Bank
    s2PrivateStep326Spec.fgWidth s2PrivateStep326Spec.vWidth s2PrivateStep326Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]
    6 498 326 s2PrivateStep326Spec.need none s2PrivateStep326Spec.log=some s2PrivateStep326Plan := by
  change compileHmrSourceStepLog s2Step326EntryFBefore s2Step326FrontBank 108 178 ⟨107,107,179,178⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 6 498 326 60 none (.early s2Step326CompleteLog)=some (.early s2Step326CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 326<498)]
  rw [s2Step326Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
