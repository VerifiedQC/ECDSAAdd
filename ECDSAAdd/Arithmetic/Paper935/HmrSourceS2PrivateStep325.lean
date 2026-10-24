import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep323
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

private def s2Step325CompleteMoves : List (Wire × Wire) := []

private def s2Step325EarlyControlLog : HmrEarlyControlLog := ⟨[807, 787, 827, 867, 834],[806],[784],[800, 894, 896, 901, 903, 907],[]⟩

private def s2Step325FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [885]],[[867], [827], [807], [787]],[[], [], [], []]⟩,[830],[829],[834],[806],[784, 800, 894, 896, 901, 903, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[784, 800, 894, 896, 901, 903, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[834, 806, 784, 800]⟩

private def s2Step325CompleteLog : HmrEarlyStepLog := ⟨s2Step325FrontLog,s2Step325CompleteMoves,s2Step325EarlyControlLog⟩

private def s2Step325ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619],768⟩

private def s2Step325ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879],770⟩

private def s2Step325ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107],769⟩

private def s2Step325ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885],771⟩

private def s2Step325FrontOut : WindowBank := ⟨s2Step325ExitFOut,s2Step325ExitGOut,s2Step325ExitFvOut,s2Step325ExitGvOut⟩

private def s2Step325CompleteOut : WindowBank := s2Step325FrontOut.repacked s2Step325CompleteMoves

private def s2Step325EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step325EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step325EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step325EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step325EarlyControlPositiveArena,[806],s2Step325EarlyControlEqualityArena,[784],⟨⟨830,false⟩,[⟨⟨806,false⟩,784⟩]⟩⟩

private def s2Step325EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step325EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step325EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step325EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step325EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step325EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step325EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,807⟩,⟨⟨774,false⟩,787⟩,⟨⟨775,false⟩,827⟩,⟨⟨776,false⟩,867⟩,⟨⟨777,false⟩,834⟩]⟩

private def s2Step325EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step325EarlyControlZeroArena,s2Step325EarlyControlZeroPlan,s2Step325EarlyControlClassPlan,s2Step325EarlyControlFlagArena,s2Step325EarlyControlFittedArena,s2Step325EarlyControlHistoryArena,s2Step325EarlyControlSigmaArena,s2Step325EarlyControlOutputArena,s2Step325EarlyControlLog⟩

private def s2Step325CounterWork : List Wire := [834, 806, 784, 800]

private theorem s2Step325Counter_bounded : s2Step325CounterWork.toFinset⊆arenaWires := by norm_num [s2Step325CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step325HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step325CounterDuring : Arena := ⟨s2Step325HeadFvAfter.live∪s2Step325CounterWork.toFinset,Finset.union_subset s2Step325HeadFvAfter.bounded s2Step325Counter_bounded⟩

private def s2Step325EntryFFresh : List Wire := []

private def s2Step325EntryFvFresh : List Wire := []

private def s2Step325EntryGFresh : List Wire := []

private def s2Step325EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step325EntryGvFresh : List Wire := [885]

private def s2Step325ExitFExtra : List Wire := [827]

private def s2Step325ExitFvExtra : List Wire := [787]

private def s2Step325ExitGExtra : List Wire := [867]

private def s2Step325ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step325ExitGvExtra : List Wire := [807]

private def s2Step325Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step325Add0Work : List Wire := [784, 800, 894, 896, 901, 903, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step325Add0_bounded : s2Step325Add0Work.toFinset⊆arenaWires := by
  have h : s2Step325Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step325Add0During : Arena := ⟨s2Step325Add0Arena.live∪s2Step325Add0Work.toFinset,Finset.union_subset s2Step325Add0Arena.bounded s2Step325Add0_bounded⟩

private def s2Step325Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step325Add1Work : List Wire := [784, 800, 894, 896, 901, 903, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step325Add1_bounded : s2Step325Add1Work.toFinset⊆arenaWires := by
  have h : s2Step325Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step325Add1During : Arena := ⟨s2Step325Add1Arena.live∪s2Step325Add1Work.toFinset,Finset.union_subset s2Step325Add1Arena.bounded s2Step325Add1_bounded⟩

private def s2Step325F4FlagArena : Arena := ⟨s2Step325HeadFvAfter.live∪{834},Finset.union_subset s2Step325HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step325F4Plan : HmrHybridF4Plan := ⟨s2Step325F4FlagArena,[834],s2Step325Add0Arena,[806],s2Step325Add0During,s2Step325Add0Work,s2Step325Add1During,s2Step325Add1Work⟩

private def s2Step325HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 827],768⟩

private def s2Step325HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 787],770⟩

private def s2Step325HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 867],769⟩

private def s2Step325HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 807],771⟩

private def s2Step325FrontHead : WindowBank := ⟨s2Step325HeadFOut,s2Step325HeadGOut,s2Step325HeadFvOut,s2Step325HeadGvOut⟩

private def s2Step325EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619],768⟩

private def s2Step325EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879],770⟩

private def s2Step325EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107],769⟩

private def s2Step325EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885],771⟩

private def s2Step325FrontPair : WindowBank := ⟨s2Step325EntryFOut,s2Step325EntryGOut,s2Step325EntryFvOut,s2Step325EntryGvOut⟩

private def s2Step325FrontSigmaArena : Arena := ⟨s2Step325EntryGvAfter.live∪{830},Finset.union_subset s2Step325EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step325HeadFFresh : List Wire := [827]

private def s2Step325HeadFvFresh : List Wire := [787]

private def s2Step325HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step325HeadGFresh : List Wire := [867]

private def s2Step325HeadGvFresh : List Wire := [807]

private def s2Step325FrontPlan : HmrSourceFront := ⟨s2Step325EntryGvAfter,s2Step325FrontPair,(growRow 768 s2Step325EntryFFresh ++ (growRow 769 s2Step325EntryGFresh ++ (growRow 770 s2Step325EntryFvFresh ++ (growRow 771 s2Step325EntryGvFresh ++ [])))),s2Step325FrontSigmaArena,[830],s2Step325HeadGBefore,[829],
  s2Step325HeadFvAfter,s2Step325FrontHead,(growRow 769 s2Step325HeadGFresh ++ (growRow 768 s2Step325HeadFFresh ++ (growRow 771 s2Step325HeadGvFresh ++ (growRow 770 s2Step325HeadFvFresh ++ [])))),s2Step325F4Plan,s2Step325CounterDuring,s2Step325CounterWork,s2Step325ExitGvAfter,s2Step325FrontOut,(shrinkRow 769 s2Step325ExitGExtra ++ (shrinkRow 768 s2Step325ExitFExtra ++ (shrinkRow 770 s2Step325ExitFvExtra ++ (shrinkRow 771 s2Step325ExitGvExtra ++ []))))⟩

private def s2Step325CompletePlan : HmrEarlyStepPlan := ⟨s2Step325FrontPlan,s2Step325EarlyControlArena,s2Step325EarlyControlPlan,s2Step325CompleteMoves⟩

private theorem s2Step325Complete_apart : List.Disjoint (s2Step325CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [830, 829, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] := by
  have nd : ((s2Step325CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[830, 829, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step325Complete_owned : (s2Step325CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step325EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step325EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step325Complete_repack : s2Step325ExitGvAfter.checkRepack s2Step325CompleteMoves=some s2Step325EarlyControlArena := by rfl

private theorem s2Step325EarlyControl_branchOwned : ([829] : List Wire).toFinset⊆s2Step325EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step325EarlyControlSigmaArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step325EarlyControl_branch : compileHmrBranchRetirement s2Step325EarlyControlSigmaArena 829=some s2Step325EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step325EarlyControl_branchOwned
  · ext q
    simp [s2Step325EarlyControlOutputArena,s2Step325EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step325EarlyControl_classEqualityBorrow : s2Step325EarlyControlPositiveArena.checkBorrow (([830, 806] : List Wire).length-1) s2Step325EarlyControlLog.classWork=some s2Step325EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step325EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step325EarlyControlPositiveArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step325EarlyControlEqualityArena,s2Step325EarlyControlPositiveArena,s2Step325EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step325EarlyControl_classEqualityOwned : ([830, 806] : List Wire).toFinset⊆s2Step325EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step325EarlyControlPositiveArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step325EarlyControl_classEquality : compileHmrEqualityLog s2Step325EarlyControlPositiveArena [830, 806] 0 s2Step325EarlyControlLog.classWork=some (s2Step325EarlyControlEqualityArena,s2Step325EarlyControlLog.classWork,s2Step325EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step325EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step325EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step325EarlyControl_classOwned : ([777, 834, 830] : List Wire).toFinset⊆s2Step325EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step325EarlyControlZeroArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step325EarlyControl_positiveBorrow : s2Step325EarlyControlZeroArena.checkBorrow (1) s2Step325EarlyControlLog.positiveWork=some s2Step325EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step325EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step325EarlyControlZeroArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step325EarlyControlPositiveArena,s2Step325EarlyControlZeroArena,s2Step325EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step325EarlyControl_class : compileHmrSourceClassLog s2Step325EarlyControlZeroArena false 777 s2Step325EarlyControlZeroPlan.top 0 830 s2Step325EarlyControlLog.positiveWork s2Step325EarlyControlLog.classWork=some s2Step325EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step325EarlyControlClassPlan s2Step325EarlyControlZeroArena false 777 s2Step325EarlyControlZeroPlan.top 0 830
  constructor
  · decide +kernel
  · exact s2Step325EarlyControl_classOwned
  · exact s2Step325EarlyControl_positiveBorrow
  · exact s2Step325EarlyControl_classEquality

private theorem s2Step325EarlyControl_entryRecordOwned : ([829, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step325EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step325EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step325EarlyControl_entrySigmaOwned : ([830, 254] : List Wire).toFinset⊆s2Step325EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step325EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step325EarlyControl_fitBorrow : s2Step325EarlyControlFlagArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step325EarlyControlLog.recordFresh=some s2Step325EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step325EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step325EarlyControlFlagArena (fun q => (0≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step325EarlyControlFittedArena,s2Step325EarlyControlFlagArena,s2Step325EarlyControlLog,arenaWires]

private theorem s2Step325EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step325EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step325EarlyControlFlagArena (fun q => (0≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step325EarlyControl_fit : compileHmrRecordGrowLog s2Step325EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step325EarlyControlLog.recordFresh=some s2Step325EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step325EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step325EarlyControl_fitBorrow

private theorem s2Step325EarlyControl_flagsBorrow : s2Step325EarlyControlEqualityArena.checkBorrow (6) s2Step325EarlyControlLog.flagWork=some s2Step325EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step325EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step325EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step325EarlyControlFlagArena,s2Step325EarlyControlEqualityArena,s2Step325EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step325EarlyControl_flagsOwned : ([784, 253, 252, 251] : List Wire).toFinset⊆s2Step325EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step325EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step325EarlyControl_flags : compileHmrFlagsLog s2Step325EarlyControlClassPlan.equalityArena s2Step325EarlyControlClassPlan.equality.top 253 252 251 s2Step325EarlyControlLog.flagWork=some s2Step325EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step325EarlyControl_flagsOwned⟩
  · exact s2Step325EarlyControl_flagsBorrow

private theorem s2Step325EarlyControl_historyBorrow : s2Step325EarlyControlArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step325EarlyControlLog.recordFresh=some s2Step325EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step325EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step325EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step325EarlyControlHistoryArena,s2Step325EarlyControlArena,s2Step325EarlyControlLog,arenaWires]

private theorem s2Step325EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step325EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step325EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step325EarlyControl_history : compileHmrRecordGrowLog s2Step325EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step325EarlyControlLog.recordFresh=some s2Step325EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step325EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step325EarlyControl_historyBorrow

private theorem s2Step325EarlyControl_sigmaOwned : ([254, 830] : List Wire).toFinset⊆s2Step325EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step325EarlyControlHistoryArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step325EarlyControl_sigmaReleaseOwned : ([830] : List Wire).toFinset⊆s2Step325EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step325EarlyControlHistoryArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step325EarlyControl_sigmaRelease : s2Step325EarlyControlHistoryArena.release {830} (fun _ => false)=some s2Step325EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step325EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step325EarlyControlSigmaArena,s2Step325EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step325EarlyControl_sigma : compileHmrSigmaDropLog s2Step325EarlyControlHistoryArena false 0 0 254 830 []=some s2Step325EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step325EarlyControl_sigmaOwned⟩
  · exact s2Step325EarlyControl_sigmaRelease

private theorem s2Step325EarlyControl_zeroBorrow : s2Step325EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step325EarlyControlLog.zeroWork=some s2Step325EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step325EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step325EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step325EarlyControlZeroArena,s2Step325EarlyControlArena,s2Step325EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step325EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step325EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step325EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step325EarlyControl_zero : compileHmrEqualityLog s2Step325EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step325EarlyControlLog.zeroWork=some (s2Step325EarlyControlZeroArena,s2Step325EarlyControlLog.zeroWork,s2Step325EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step325EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step325EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step325EarlyControl_logged : s2Step325EarlyControlPlan.Logged s2Step325EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 830 254 253 252 251 829 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step325EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step325EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step325EarlyControl_zero
  · exact s2Step325EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step325EarlyControl_flags
  · exact s2Step325EarlyControl_fit
  · exact s2Step325EarlyControl_history
  · exact s2Step325EarlyControl_sigma
  · exact s2Step325EarlyControl_branch

private theorem s2Step325EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step325EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 830 254 253 252 251 829 60 s2Step325EarlyControlLog=some s2Step325EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step325EarlyControlPlan s2Step325EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 830 254 253 252 251 829 60 s2Step325EarlyControl_logged

private def s2Step325EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step325EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619],768⟩

private def s2Step325EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879],770⟩

private def s2Step325EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107],769⟩

private def s2Step325EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840],771⟩

private def s2Step325FrontBank : WindowBank := ⟨s2Step325EntryFRow,s2Step325EntryGRow,s2Step325EntryFvRow,s2Step325EntryGvRow⟩

private def s2Step325Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 827, 768]

private def s2Step325Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 867, 769]

private def s2Step325Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 787, 770]

private def s2Step325Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 807, 771]

private theorem s2Step325Counter_apart : Disjoint s2Step325HeadFvAfter.live s2Step325CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step325HeadFvAfter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step325Counter_borrowed : s2Step325HeadFvAfter.checkBorrow 4 s2Step325CounterWork=some s2Step325CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step325HeadFvAfter s2Step325CounterDuring s2Step325CounterWork.toFinset s2Step325Counter_bounded s2Step325Counter_apart rfl

private theorem s2Step325Counter_owned : (830::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step325HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step325HeadFvAfter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step325Counter_checked : compileHmrCounterStepLog s2Step325HeadFvAfter true 830 [772, 773, 774, 775, 776, 777] s2Step325CounterWork=some s2Step325CounterDuring := by
  have owned : ∀q∈830::[772, 773, 774, 775, 776, 777],q∈s2Step325HeadFvAfter.live := fun q hq => s2Step325Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step325Counter_borrowed

private def s2Step325EntryFAfter : Arena := s2Step325EntryFBefore

private theorem s2Step325EntryBank_incomingDistinct : ([s2Step325EntryFRow,s2Step325EntryGRow,s2Step325EntryFvRow,s2Step325EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step325EntryF_Incoming : rowsOwned s2Step325EntryFBefore [s2Step325EntryFRow,s2Step325EntryGRow,s2Step325EntryFvRow,s2Step325EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step325EntryFRow,s2Step325EntryGRow,s2Step325EntryFvRow,s2Step325EntryGvRow] 0 s2Step325EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step325EntryFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step325EntryBank_outgoingOwned : rowsOwned s2Step325EntryGvAfter [s2Step325EntryFOut,s2Step325EntryGOut,s2Step325EntryFvOut,s2Step325EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step325EntryGvAfter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step325EntryF_Outgoing : rowsOwned s2Step325EntryGvAfter [s2Step325EntryFOut,s2Step325EntryGOut,s2Step325EntryFvOut,s2Step325EntryGvOut] :=
  hmrRows_owned_drop s2Step325EntryGvAfter [s2Step325EntryFOut,s2Step325EntryGOut,s2Step325EntryFvOut,s2Step325EntryGvOut] 0 s2Step325EntryBank_outgoingOwned

private theorem s2Step325EntryF_distinct : (s2Step325EntryFRow.sign::s2Step325EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step325EntryF_owned : (s2Step325EntryFRow.sign::s2Step325EntryFRow.payload).toFinset⊆s2Step325EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step325EntryFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step325EntryF_reserved : s2Step325EntryFBefore.reserve s2Step325EntryFFresh.toFinset=some s2Step325EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step325EntryFFresh,arenaWires]
  · norm_num [s2Step325EntryFBefore,s2Step325EntryFFresh,arenaWires]
  · simp only [s2Step325EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step325EntryF_checked : planRowResizeLog s2Step325EntryFBefore s2Step325EntryFRow 108 s2Step325EntryFFresh=
    some (s2Step325EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619],768⟩,growRow 768 s2Step325EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step325EntryFBefore s2Step325EntryFAfter s2Step325EntryFRow 108 s2Step325EntryFFresh
    s2Step325EntryF_distinct s2Step325EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step325EntryF_reserved
  have rowEq : WindowRow.mk (s2Step325EntryFRow.payload++s2Step325EntryFFresh) s2Step325EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step325EntryFvAfter : Arena := s2Step325EntryFBefore

private def s2Step325EntryFvBefore : Arena := s2Step325EntryFBefore

private theorem s2Step325EntryFv_Incoming : rowsOwned s2Step325EntryFvBefore [s2Step325EntryFvRow,s2Step325EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step325EntryFRow,s2Step325EntryGRow,s2Step325EntryFvRow,s2Step325EntryGvRow] 2 s2Step325EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step325EntryFvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step325EntryFv_Outgoing : rowsOwned s2Step325EntryGvAfter [s2Step325EntryFvOut,s2Step325EntryGvOut] :=
  hmrRows_owned_drop s2Step325EntryGvAfter [s2Step325EntryFOut,s2Step325EntryGOut,s2Step325EntryFvOut,s2Step325EntryGvOut] 2 s2Step325EntryBank_outgoingOwned

private theorem s2Step325EntryFv_distinct : (s2Step325EntryFvRow.sign::s2Step325EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step325EntryFv_owned : (s2Step325EntryFvRow.sign::s2Step325EntryFvRow.payload).toFinset⊆s2Step325EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step325EntryFvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step325EntryFv_reserved : s2Step325EntryFvBefore.reserve s2Step325EntryFvFresh.toFinset=some s2Step325EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step325EntryFvFresh,arenaWires]
  · norm_num [s2Step325EntryFvBefore,s2Step325EntryFBefore,s2Step325EntryFvFresh,arenaWires]
  · simp only [s2Step325EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step325EntryFv_checked : planRowResizeLog s2Step325EntryFvBefore s2Step325EntryFvRow 178 s2Step325EntryFvFresh=
    some (s2Step325EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879],770⟩,growRow 770 s2Step325EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step325EntryFvBefore s2Step325EntryFvAfter s2Step325EntryFvRow 178 s2Step325EntryFvFresh
    s2Step325EntryFv_distinct s2Step325EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step325EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step325EntryFvRow.payload++s2Step325EntryFvFresh) s2Step325EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step325EntryGAfter : Arena := s2Step325EntryFBefore

private def s2Step325EntryGBefore : Arena := s2Step325EntryFBefore

private theorem s2Step325EntryG_Incoming : rowsOwned s2Step325EntryGBefore [s2Step325EntryGRow,s2Step325EntryFvRow,s2Step325EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step325EntryFRow,s2Step325EntryGRow,s2Step325EntryFvRow,s2Step325EntryGvRow] 1 s2Step325EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step325EntryGBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step325EntryG_Outgoing : rowsOwned s2Step325EntryGvAfter [s2Step325EntryGOut,s2Step325EntryFvOut,s2Step325EntryGvOut] :=
  hmrRows_owned_drop s2Step325EntryGvAfter [s2Step325EntryFOut,s2Step325EntryGOut,s2Step325EntryFvOut,s2Step325EntryGvOut] 1 s2Step325EntryBank_outgoingOwned

private theorem s2Step325EntryG_distinct : (s2Step325EntryGRow.sign::s2Step325EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step325EntryG_owned : (s2Step325EntryGRow.sign::s2Step325EntryGRow.payload).toFinset⊆s2Step325EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step325EntryGBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step325EntryG_reserved : s2Step325EntryGBefore.reserve s2Step325EntryGFresh.toFinset=some s2Step325EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step325EntryGFresh,arenaWires]
  · norm_num [s2Step325EntryGBefore,s2Step325EntryFBefore,s2Step325EntryGFresh,arenaWires]
  · simp only [s2Step325EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step325EntryG_checked : planRowResizeLog s2Step325EntryGBefore s2Step325EntryGRow 108 s2Step325EntryGFresh=
    some (s2Step325EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107],769⟩,growRow 769 s2Step325EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step325EntryGBefore s2Step325EntryGAfter s2Step325EntryGRow 108 s2Step325EntryGFresh
    s2Step325EntryG_distinct s2Step325EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step325EntryG_reserved
  have rowEq : WindowRow.mk (s2Step325EntryGRow.payload++s2Step325EntryGFresh) s2Step325EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step325EntryGvBefore : Arena := s2Step325EntryFBefore

private theorem s2Step325EntryGv_Incoming : rowsOwned s2Step325EntryGvBefore [s2Step325EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step325EntryFRow,s2Step325EntryGRow,s2Step325EntryFvRow,s2Step325EntryGvRow] 3 s2Step325EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step325EntryGvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step325EntryGv_Outgoing : rowsOwned s2Step325EntryGvAfter [s2Step325EntryGvOut] :=
  hmrRows_owned_drop s2Step325EntryGvAfter [s2Step325EntryFOut,s2Step325EntryGOut,s2Step325EntryFvOut,s2Step325EntryGvOut] 3 s2Step325EntryBank_outgoingOwned

private theorem s2Step325EntryGv_distinct : (s2Step325EntryGvRow.sign::s2Step325EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step325EntryGv_owned : (s2Step325EntryGvRow.sign::s2Step325EntryGvRow.payload).toFinset⊆s2Step325EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step325EntryGvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step325EntryGv_reserved : s2Step325EntryGvBefore.reserve s2Step325EntryGvFresh.toFinset=some s2Step325EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step325EntryGvFresh,arenaWires]
  · norm_num [s2Step325EntryGvBefore,s2Step325EntryFBefore,s2Step325EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step325EntryGvAfter,s2Step325EntryGvBefore,s2Step325EntryFBefore,s2Step325EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step325EntryGv_checked : planRowResizeLog s2Step325EntryGvBefore s2Step325EntryGvRow 178 s2Step325EntryGvFresh=
    some (s2Step325EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885],771⟩,growRow 771 s2Step325EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step325EntryGvBefore s2Step325EntryGvAfter s2Step325EntryGvRow 178 s2Step325EntryGvFresh
    s2Step325EntryGv_distinct s2Step325EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step325EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step325EntryGvRow.payload++s2Step325EntryGvFresh) s2Step325EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step325EntryBank_rows : planWindowRowsLog s2Step325EntryFBefore [(s2Step325EntryFRow,108),(s2Step325EntryGRow,108),(s2Step325EntryFvRow,178),(s2Step325EntryGvRow,178)] [s2Step325EntryFFresh,s2Step325EntryGFresh,s2Step325EntryFvFresh,s2Step325EntryGvFresh]=
    some (s2Step325EntryGvAfter,[s2Step325EntryFOut,s2Step325EntryGOut,s2Step325EntryFvOut,s2Step325EntryGvOut],(growRow 768 s2Step325EntryFFresh ++ (growRow 769 s2Step325EntryGFresh ++ (growRow 770 s2Step325EntryFvFresh ++ (growRow 771 s2Step325EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step325EntryGvAfter [] []=some (s2Step325EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step325EntryGvBefore s2Step325EntryGvAfter s2Step325EntryGvAfter
    s2Step325EntryGvRow s2Step325EntryGvOut 178 s2Step325EntryGvFresh [] [] []
    (growRow 771 s2Step325EntryGvFresh) ([]) s2Step325EntryGv_Incoming s2Step325EntryGv_checked h4 s2Step325EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step325EntryFvBefore s2Step325EntryFvAfter s2Step325EntryGvAfter
    s2Step325EntryFvRow s2Step325EntryFvOut 178 s2Step325EntryFvFresh [(s2Step325EntryGvRow,178)] [s2Step325EntryGvFresh] [s2Step325EntryGvOut]
    (growRow 770 s2Step325EntryFvFresh) ((growRow 771 s2Step325EntryGvFresh ++ [])) s2Step325EntryFv_Incoming s2Step325EntryFv_checked h3 s2Step325EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step325EntryGBefore s2Step325EntryGAfter s2Step325EntryGvAfter
    s2Step325EntryGRow s2Step325EntryGOut 108 s2Step325EntryGFresh [(s2Step325EntryFvRow,178),(s2Step325EntryGvRow,178)] [s2Step325EntryFvFresh,s2Step325EntryGvFresh] [s2Step325EntryFvOut,s2Step325EntryGvOut]
    (growRow 769 s2Step325EntryGFresh) ((growRow 770 s2Step325EntryFvFresh ++ (growRow 771 s2Step325EntryGvFresh ++ []))) s2Step325EntryG_Incoming s2Step325EntryG_checked h2 s2Step325EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step325EntryFBefore s2Step325EntryFAfter s2Step325EntryGvAfter
    s2Step325EntryFRow s2Step325EntryFOut 108 s2Step325EntryFFresh [(s2Step325EntryGRow,108),(s2Step325EntryFvRow,178),(s2Step325EntryGvRow,178)] [s2Step325EntryGFresh,s2Step325EntryFvFresh,s2Step325EntryGvFresh] [s2Step325EntryGOut,s2Step325EntryFvOut,s2Step325EntryGvOut]
    (growRow 768 s2Step325EntryFFresh) ((growRow 769 s2Step325EntryGFresh ++ (growRow 770 s2Step325EntryFvFresh ++ (growRow 771 s2Step325EntryGvFresh ++ [])))) s2Step325EntryF_Incoming s2Step325EntryF_checked h1 s2Step325EntryF_Outgoing
  exact h0

private theorem s2Step325EntryBank_checked : compileHmrBankResizeLog .entry s2Step325EntryFBefore ⟨s2Step325EntryFRow,s2Step325EntryGRow,s2Step325EntryFvRow,s2Step325EntryGvRow⟩ ⟨108,108,178,178⟩ [s2Step325EntryFFresh,s2Step325EntryGFresh,s2Step325EntryFvFresh,s2Step325EntryGvFresh]=
    some (s2Step325EntryGvAfter,⟨s2Step325EntryFOut,s2Step325EntryGOut,s2Step325EntryFvOut,s2Step325EntryGvOut⟩,(growRow 768 s2Step325EntryFFresh ++ (growRow 769 s2Step325EntryGFresh ++ (growRow 770 s2Step325EntryFvFresh ++ (growRow 771 s2Step325EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step325EntryBank_rows]
  rfl

private def s2Step325ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step325ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step325ExitFBefore : Arena := s2Step325ExitGAfter

private def s2Step325ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 827],768⟩

private def s2Step325ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 787],770⟩

private def s2Step325ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 867],769⟩

private def s2Step325ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 807],771⟩

private theorem s2Step325ExitBank_incomingDistinct : ([s2Step325ExitGRow,s2Step325ExitFRow,s2Step325ExitFvRow,s2Step325ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step325ExitF_Incoming : rowsOwned s2Step325ExitFBefore [s2Step325ExitFRow,s2Step325ExitFvRow,s2Step325ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step325ExitGRow,s2Step325ExitFRow,s2Step325ExitFvRow,s2Step325ExitGvRow] 1 s2Step325ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step325ExitFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step325ExitBank_outgoingOwned : rowsOwned s2Step325ExitGvAfter [s2Step325ExitGOut,s2Step325ExitFOut,s2Step325ExitFvOut,s2Step325ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step325ExitGvAfter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step325ExitF_Outgoing : rowsOwned s2Step325ExitGvAfter [s2Step325ExitFOut,s2Step325ExitFvOut,s2Step325ExitGvOut] :=
  hmrRows_owned_drop s2Step325ExitGvAfter [s2Step325ExitGOut,s2Step325ExitFOut,s2Step325ExitFvOut,s2Step325ExitGvOut] 1 s2Step325ExitBank_outgoingOwned

private theorem s2Step325ExitF_distinct : (s2Step325ExitFRow.sign::s2Step325ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step325ExitF_owned : (s2Step325ExitFRow.sign::s2Step325ExitFRow.payload).toFinset⊆s2Step325ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step325ExitFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step325ExitF_retired : s2Step325ExitFBefore.retireSet s2Step325ExitFExtra.toFinset=s2Step325ExitFAfter := by
  unfold Arena.retireSet s2Step325ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step325ExitFBefore,s2Step325ExitGAfter,s2Step325ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step325ExitF_checked : planRowResizeLog s2Step325ExitFBefore s2Step325ExitFRow 108 []=
    some (s2Step325ExitFAfter,s2Step325ExitFOut,shrinkRow 768 s2Step325ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step325ExitFBefore s2Step325ExitFRow 108 s2Step325ExitF_distinct s2Step325ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step325ExitFRow.payload.take 108) s2Step325ExitFRow.sign=s2Step325ExitFOut := by decide +kernel
  have hi : s2Step325ExitFRow.payload.drop 108=s2Step325ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step325ExitF_retired] at result
  exact result

private def s2Step325ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step325ExitFvBefore : Arena := s2Step325ExitFAfter

private theorem s2Step325ExitFv_Incoming : rowsOwned s2Step325ExitFvBefore [s2Step325ExitFvRow,s2Step325ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step325ExitGRow,s2Step325ExitFRow,s2Step325ExitFvRow,s2Step325ExitGvRow] 2 s2Step325ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step325ExitFvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step325ExitFv_Outgoing : rowsOwned s2Step325ExitGvAfter [s2Step325ExitFvOut,s2Step325ExitGvOut] :=
  hmrRows_owned_drop s2Step325ExitGvAfter [s2Step325ExitGOut,s2Step325ExitFOut,s2Step325ExitFvOut,s2Step325ExitGvOut] 2 s2Step325ExitBank_outgoingOwned

private theorem s2Step325ExitFv_distinct : (s2Step325ExitFvRow.sign::s2Step325ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step325ExitFv_owned : (s2Step325ExitFvRow.sign::s2Step325ExitFvRow.payload).toFinset⊆s2Step325ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step325ExitFvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step325ExitFv_retired : s2Step325ExitFvBefore.retireSet s2Step325ExitFvExtra.toFinset=s2Step325ExitFvAfter := by
  unfold Arena.retireSet s2Step325ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step325ExitFvBefore,s2Step325ExitFAfter,s2Step325ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step325ExitFv_checked : planRowResizeLog s2Step325ExitFvBefore s2Step325ExitFvRow 178 []=
    some (s2Step325ExitFvAfter,s2Step325ExitFvOut,shrinkRow 770 s2Step325ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step325ExitFvBefore s2Step325ExitFvRow 178 s2Step325ExitFv_distinct s2Step325ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step325ExitFvRow.payload.take 178) s2Step325ExitFvRow.sign=s2Step325ExitFvOut := by decide +kernel
  have hi : s2Step325ExitFvRow.payload.drop 178=s2Step325ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step325ExitFv_retired] at result
  exact result

private def s2Step325ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private theorem s2Step325ExitG_Incoming : rowsOwned s2Step325ExitGBefore [s2Step325ExitGRow,s2Step325ExitFRow,s2Step325ExitFvRow,s2Step325ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step325ExitGRow,s2Step325ExitFRow,s2Step325ExitFvRow,s2Step325ExitGvRow] 0 s2Step325ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step325ExitGBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step325ExitG_Outgoing : rowsOwned s2Step325ExitGvAfter [s2Step325ExitGOut,s2Step325ExitFOut,s2Step325ExitFvOut,s2Step325ExitGvOut] :=
  hmrRows_owned_drop s2Step325ExitGvAfter [s2Step325ExitGOut,s2Step325ExitFOut,s2Step325ExitFvOut,s2Step325ExitGvOut] 0 s2Step325ExitBank_outgoingOwned

private theorem s2Step325ExitG_distinct : (s2Step325ExitGRow.sign::s2Step325ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step325ExitG_owned : (s2Step325ExitGRow.sign::s2Step325ExitGRow.payload).toFinset⊆s2Step325ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step325ExitGBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step325ExitG_retired : s2Step325ExitGBefore.retireSet s2Step325ExitGExtra.toFinset=s2Step325ExitGAfter := by
  unfold Arena.retireSet s2Step325ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step325ExitGBefore,s2Step325ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step325ExitG_checked : planRowResizeLog s2Step325ExitGBefore s2Step325ExitGRow 108 []=
    some (s2Step325ExitGAfter,s2Step325ExitGOut,shrinkRow 769 s2Step325ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step325ExitGBefore s2Step325ExitGRow 108 s2Step325ExitG_distinct s2Step325ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step325ExitGRow.payload.take 108) s2Step325ExitGRow.sign=s2Step325ExitGOut := by decide +kernel
  have hi : s2Step325ExitGRow.payload.drop 108=s2Step325ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step325ExitG_retired] at result
  exact result

private def s2Step325ExitGvBefore : Arena := s2Step325ExitFvAfter

private theorem s2Step325ExitGv_Incoming : rowsOwned s2Step325ExitGvBefore [s2Step325ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step325ExitGRow,s2Step325ExitFRow,s2Step325ExitFvRow,s2Step325ExitGvRow] 3 s2Step325ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step325ExitGvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step325ExitGv_Outgoing : rowsOwned s2Step325ExitGvAfter [s2Step325ExitGvOut] :=
  hmrRows_owned_drop s2Step325ExitGvAfter [s2Step325ExitGOut,s2Step325ExitFOut,s2Step325ExitFvOut,s2Step325ExitGvOut] 3 s2Step325ExitBank_outgoingOwned

private theorem s2Step325ExitGv_distinct : (s2Step325ExitGvRow.sign::s2Step325ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step325ExitGv_owned : (s2Step325ExitGvRow.sign::s2Step325ExitGvRow.payload).toFinset⊆s2Step325ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step325ExitGvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step325ExitGv_retired : s2Step325ExitGvBefore.retireSet s2Step325ExitGvExtra.toFinset=s2Step325ExitGvAfter := by
  unfold Arena.retireSet s2Step325ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step325ExitGvBefore,s2Step325ExitFvAfter,s2Step325ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step325ExitGv_checked : planRowResizeLog s2Step325ExitGvBefore s2Step325ExitGvRow 178 []=
    some (s2Step325ExitGvAfter,s2Step325ExitGvOut,shrinkRow 771 s2Step325ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step325ExitGvBefore s2Step325ExitGvRow 178 s2Step325ExitGv_distinct s2Step325ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step325ExitGvRow.payload.take 178) s2Step325ExitGvRow.sign=s2Step325ExitGvOut := by decide +kernel
  have hi : s2Step325ExitGvRow.payload.drop 178=s2Step325ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step325ExitGv_retired] at result
  exact result

private theorem s2Step325ExitBank_rows : planWindowRowsLog s2Step325ExitGBefore [(s2Step325ExitGRow,108),(s2Step325ExitFRow,108),(s2Step325ExitFvRow,178),(s2Step325ExitGvRow,178)] [[],[],[],[]]=
    some (s2Step325ExitGvAfter,[s2Step325ExitGOut,s2Step325ExitFOut,s2Step325ExitFvOut,s2Step325ExitGvOut],(shrinkRow 769 s2Step325ExitGExtra ++ (shrinkRow 768 s2Step325ExitFExtra ++ (shrinkRow 770 s2Step325ExitFvExtra ++ (shrinkRow 771 s2Step325ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step325ExitGvAfter [] []=some (s2Step325ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step325ExitGvBefore s2Step325ExitGvAfter s2Step325ExitGvAfter
    s2Step325ExitGvRow s2Step325ExitGvOut 178 [] [] [] []
    (shrinkRow 771 s2Step325ExitGvExtra) ([]) s2Step325ExitGv_Incoming s2Step325ExitGv_checked h4 s2Step325ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step325ExitFvBefore s2Step325ExitFvAfter s2Step325ExitGvAfter
    s2Step325ExitFvRow s2Step325ExitFvOut 178 [] [(s2Step325ExitGvRow,178)] [[]] [s2Step325ExitGvOut]
    (shrinkRow 770 s2Step325ExitFvExtra) ((shrinkRow 771 s2Step325ExitGvExtra ++ [])) s2Step325ExitFv_Incoming s2Step325ExitFv_checked h3 s2Step325ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step325ExitFBefore s2Step325ExitFAfter s2Step325ExitGvAfter
    s2Step325ExitFRow s2Step325ExitFOut 108 [] [(s2Step325ExitFvRow,178),(s2Step325ExitGvRow,178)] [[],[]] [s2Step325ExitFvOut,s2Step325ExitGvOut]
    (shrinkRow 768 s2Step325ExitFExtra) ((shrinkRow 770 s2Step325ExitFvExtra ++ (shrinkRow 771 s2Step325ExitGvExtra ++ []))) s2Step325ExitF_Incoming s2Step325ExitF_checked h2 s2Step325ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step325ExitGBefore s2Step325ExitGAfter s2Step325ExitGvAfter
    s2Step325ExitGRow s2Step325ExitGOut 108 [] [(s2Step325ExitFRow,108),(s2Step325ExitFvRow,178),(s2Step325ExitGvRow,178)] [[],[],[]] [s2Step325ExitFOut,s2Step325ExitFvOut,s2Step325ExitGvOut]
    (shrinkRow 769 s2Step325ExitGExtra) ((shrinkRow 768 s2Step325ExitFExtra ++ (shrinkRow 770 s2Step325ExitFvExtra ++ (shrinkRow 771 s2Step325ExitGvExtra ++ [])))) s2Step325ExitG_Incoming s2Step325ExitG_checked h1 s2Step325ExitG_Outgoing
  exact h0

private theorem s2Step325ExitBank_checked : compileHmrBankResizeLog .exit s2Step325ExitGBefore ⟨s2Step325ExitFRow,s2Step325ExitGRow,s2Step325ExitFvRow,s2Step325ExitGvRow⟩ ⟨108,108,178,178⟩ [[],[],[],[]]=
    some (s2Step325ExitGvAfter,⟨s2Step325ExitFOut,s2Step325ExitGOut,s2Step325ExitFvOut,s2Step325ExitGvOut⟩,(shrinkRow 769 s2Step325ExitGExtra ++ (shrinkRow 768 s2Step325ExitFExtra ++ (shrinkRow 770 s2Step325ExitFvExtra ++ (shrinkRow 771 s2Step325ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step325ExitBank_rows]
  rfl

private theorem s2Step325Add0_apart : Disjoint s2Step325Add0Arena.live s2Step325Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step325Add0Arena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step325Add0_card : s2Step325Add0Arena.live.card=906 := by
  decide +kernel

private theorem s2Step325Add0_borrowed : s2Step325Add0Arena.checkBorrow (hmrHybridCount s2Step325Add0Arena s2Step325Add0B.length) s2Step325Add0Work=some s2Step325Add0During := by
  have len : s2Step325Add0Work.length=hmrHybridCount s2Step325Add0Arena s2Step325Add0B.length := by
    rw [hmrHybridCount,s2Step325Add0_card]
    decide +kernel
  have nd : s2Step325Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step325Add0Arena s2Step325Add0During s2Step325Add0Work.toFinset s2Step325Add0_bounded s2Step325Add0_apart rfl

private theorem s2Step325Add0_distinct : (834::829::806::(s2Step325Add0A++s2Step325Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step325Add0_owned : (834::829::806::(s2Step325Add0A++s2Step325Add0B)).toFinset⊆s2Step325Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step325Add0Arena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step325Add0_checked : compileHmrHybridCinLog s2Step325Add0Arena 829 834 806 s2Step325Add0A s2Step325Add0B s2Step325Add0Work=some s2Step325Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step325Add0Arena s2Step325Add0During 829 834 806 s2Step325Add0A s2Step325Add0B s2Step325Add0Work
    (by decide +kernel) (by decide +kernel) s2Step325Add0_distinct
    (fun q hq => s2Step325Add0_owned (List.mem_toFinset.mpr hq)) s2Step325Add0_borrowed

private theorem s2Step325Add1_apart : Disjoint s2Step325Add1Arena.live s2Step325Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step325Add1Arena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step325Add1_card : s2Step325Add1Arena.live.card=906 := by
  decide +kernel

private theorem s2Step325Add1_borrowed : s2Step325Add1Arena.checkBorrow (hmrHybridCount s2Step325Add1Arena s2Step325Add1B.length) s2Step325Add1Work=some s2Step325Add1During := by
  have len : s2Step325Add1Work.length=hmrHybridCount s2Step325Add1Arena s2Step325Add1B.length := by
    rw [hmrHybridCount,s2Step325Add1_card]
    decide +kernel
  have nd : s2Step325Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step325Add1Arena s2Step325Add1During s2Step325Add1Work.toFinset s2Step325Add1_bounded s2Step325Add1_apart rfl

private theorem s2Step325Add1_distinct : (834::829::806::(s2Step325Add1A++s2Step325Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step325Add1_owned : (834::829::806::(s2Step325Add1A++s2Step325Add1B)).toFinset⊆s2Step325Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step325Add1Arena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step325Add1_checked : compileHmrHybridCinLog s2Step325Add1Arena 829 834 806 s2Step325Add1A s2Step325Add1B s2Step325Add1Work=some s2Step325Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step325Add1Arena s2Step325Add1During 829 834 806 s2Step325Add1A s2Step325Add1B s2Step325Add1Work
    (by decide +kernel) (by decide +kernel) s2Step325Add1_distinct
    (fun q hq => s2Step325Add1_owned (List.mem_toFinset.mpr hq)) s2Step325Add1_borrowed

private theorem s2Step325F4_apart : Disjoint (s2Step325Add0A++s2Step325Add0B).toFinset (s2Step325Add1A++s2Step325Add1B).toFinset := by
  have nd : ((s2Step325Add0A++s2Step325Add0B)++(s2Step325Add1A++s2Step325Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step325F4_carry : s2Step325F4FlagArena.checkBorrow 1 [806]=some s2Step325Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step325F4FlagArena,s2Step325HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step325F4FlagArena,s2Step325HeadFvAfter,s2Step325Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step325F4_distinct : (830::829::834::806::((s2Step325Add0A++s2Step325Add1A)++(s2Step325Add0B++s2Step325Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step325F4_flag : s2Step325HeadFvAfter.checkBorrow 1 [834]=some s2Step325F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step325HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step325F4_owned : (830::829::((s2Step325Add0A++s2Step325Add1A)++(s2Step325Add0B++s2Step325Add1B))).toFinset⊆s2Step325HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step325HeadFvAfter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step325F4_checked : compileHmrHybridF4Log s2Step325HeadFvAfter 830 829 s2Step325Add0A s2Step325Add0B s2Step325Add1A s2Step325Add1B [834] [806] s2Step325Add0Work s2Step325Add1Work=some s2Step325F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step325HeadFvAfter s2Step325F4FlagArena s2Step325Add0Arena s2Step325Add0During s2Step325Add1During 830 829
    s2Step325Add0A s2Step325Add0B s2Step325Add1A s2Step325Add1B [834] [806] s2Step325Add0Work s2Step325Add1Work
    (fun q hq => s2Step325F4_owned (List.mem_toFinset.mpr hq)) s2Step325F4_flag s2Step325F4_carry
    s2Step325F4_distinct s2Step325F4_apart s2Step325Add0_checked s2Step325Add1_checked

private theorem s2Step325Front_branch : s2Step325FrontSigmaArena.checkBorrow 1 [829]=some s2Step325HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step325FrontSigmaArena,s2Step325EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step325FrontSigmaArena,s2Step325EntryGvAfter,s2Step325HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step325Front_entry : HmrFrontEntryValid s2Step325EntryFBefore s2Step325FrontBank 108 178 ⟨108,108,178,178⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step325FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step325EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step325EntryFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step325FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step325Front_sigma : s2Step325EntryGvAfter.checkBorrow 1 [830]=some s2Step325FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step325EntryGvAfter,arenaWires]
  · rfl

private def s2Step325HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step325HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step325HeadFBefore : Arena := s2Step325HeadGAfter

private def s2Step325HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619],768⟩

private def s2Step325HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879],770⟩

private def s2Step325HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107],769⟩

private def s2Step325HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885],771⟩

private theorem s2Step325HeadBank_incomingDistinct : ([s2Step325HeadGRow,s2Step325HeadFRow,s2Step325HeadGvRow,s2Step325HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step325HeadF_Incoming : rowsOwned s2Step325HeadFBefore [s2Step325HeadFRow,s2Step325HeadGvRow,s2Step325HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step325HeadGRow,s2Step325HeadFRow,s2Step325HeadGvRow,s2Step325HeadFvRow] 1 s2Step325HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step325HeadFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step325HeadBank_outgoingOwned : rowsOwned s2Step325HeadFvAfter [s2Step325HeadGOut,s2Step325HeadFOut,s2Step325HeadGvOut,s2Step325HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step325HeadFvAfter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step325HeadF_Outgoing : rowsOwned s2Step325HeadFvAfter [s2Step325HeadFOut,s2Step325HeadGvOut,s2Step325HeadFvOut] :=
  hmrRows_owned_drop s2Step325HeadFvAfter [s2Step325HeadGOut,s2Step325HeadFOut,s2Step325HeadGvOut,s2Step325HeadFvOut] 1 s2Step325HeadBank_outgoingOwned

private theorem s2Step325HeadF_distinct : (s2Step325HeadFRow.sign::s2Step325HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step325HeadF_owned : (s2Step325HeadFRow.sign::s2Step325HeadFRow.payload).toFinset⊆s2Step325HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step325HeadFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step325HeadF_reserved : s2Step325HeadFBefore.reserve s2Step325HeadFFresh.toFinset=some s2Step325HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step325HeadFFresh,arenaWires]
  · norm_num [s2Step325HeadFBefore,s2Step325HeadGAfter,s2Step325HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step325HeadFAfter,s2Step325HeadFBefore,s2Step325HeadGAfter,s2Step325HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step325HeadF_checked : planRowResizeLog s2Step325HeadFBefore s2Step325HeadFRow 109 s2Step325HeadFFresh=
    some (s2Step325HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 827],768⟩,growRow 768 s2Step325HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step325HeadFBefore s2Step325HeadFAfter s2Step325HeadFRow 109 s2Step325HeadFFresh
    s2Step325HeadF_distinct s2Step325HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step325HeadF_reserved
  have rowEq : WindowRow.mk (s2Step325HeadFRow.payload++s2Step325HeadFFresh) s2Step325HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 827],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step325HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step325HeadFvBefore : Arena := s2Step325HeadGvAfter

private theorem s2Step325HeadFv_Incoming : rowsOwned s2Step325HeadFvBefore [s2Step325HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step325HeadGRow,s2Step325HeadFRow,s2Step325HeadGvRow,s2Step325HeadFvRow] 3 s2Step325HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step325HeadFvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step325HeadFv_Outgoing : rowsOwned s2Step325HeadFvAfter [s2Step325HeadFvOut] :=
  hmrRows_owned_drop s2Step325HeadFvAfter [s2Step325HeadGOut,s2Step325HeadFOut,s2Step325HeadGvOut,s2Step325HeadFvOut] 3 s2Step325HeadBank_outgoingOwned

private theorem s2Step325HeadFv_distinct : (s2Step325HeadFvRow.sign::s2Step325HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step325HeadFv_owned : (s2Step325HeadFvRow.sign::s2Step325HeadFvRow.payload).toFinset⊆s2Step325HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step325HeadFvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step325HeadFv_reserved : s2Step325HeadFvBefore.reserve s2Step325HeadFvFresh.toFinset=some s2Step325HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step325HeadFvFresh,arenaWires]
  · norm_num [s2Step325HeadFvBefore,s2Step325HeadGvAfter,s2Step325HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step325HeadFvAfter,s2Step325HeadFvBefore,s2Step325HeadGvAfter,s2Step325HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step325HeadFv_checked : planRowResizeLog s2Step325HeadFvBefore s2Step325HeadFvRow 179 s2Step325HeadFvFresh=
    some (s2Step325HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 787],770⟩,growRow 770 s2Step325HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step325HeadFvBefore s2Step325HeadFvAfter s2Step325HeadFvRow 179 s2Step325HeadFvFresh
    s2Step325HeadFv_distinct s2Step325HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step325HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step325HeadFvRow.payload++s2Step325HeadFvFresh) s2Step325HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 787],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step325HeadG_Incoming : rowsOwned s2Step325HeadGBefore [s2Step325HeadGRow,s2Step325HeadFRow,s2Step325HeadGvRow,s2Step325HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step325HeadGRow,s2Step325HeadFRow,s2Step325HeadGvRow,s2Step325HeadFvRow] 0 s2Step325HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step325HeadGBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step325HeadG_Outgoing : rowsOwned s2Step325HeadFvAfter [s2Step325HeadGOut,s2Step325HeadFOut,s2Step325HeadGvOut,s2Step325HeadFvOut] :=
  hmrRows_owned_drop s2Step325HeadFvAfter [s2Step325HeadGOut,s2Step325HeadFOut,s2Step325HeadGvOut,s2Step325HeadFvOut] 0 s2Step325HeadBank_outgoingOwned

private theorem s2Step325HeadG_distinct : (s2Step325HeadGRow.sign::s2Step325HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step325HeadG_owned : (s2Step325HeadGRow.sign::s2Step325HeadGRow.payload).toFinset⊆s2Step325HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step325HeadGBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step325HeadG_reserved : s2Step325HeadGBefore.reserve s2Step325HeadGFresh.toFinset=some s2Step325HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step325HeadGFresh,arenaWires]
  · norm_num [s2Step325HeadGBefore,s2Step325HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step325HeadGAfter,s2Step325HeadGBefore,s2Step325HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step325HeadG_checked : planRowResizeLog s2Step325HeadGBefore s2Step325HeadGRow 109 s2Step325HeadGFresh=
    some (s2Step325HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 867],769⟩,growRow 769 s2Step325HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step325HeadGBefore s2Step325HeadGAfter s2Step325HeadGRow 109 s2Step325HeadGFresh
    s2Step325HeadG_distinct s2Step325HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step325HeadG_reserved
  have rowEq : WindowRow.mk (s2Step325HeadGRow.payload++s2Step325HeadGFresh) s2Step325HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 867],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step325HeadGvBefore : Arena := s2Step325HeadFAfter

private theorem s2Step325HeadGv_Incoming : rowsOwned s2Step325HeadGvBefore [s2Step325HeadGvRow,s2Step325HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step325HeadGRow,s2Step325HeadFRow,s2Step325HeadGvRow,s2Step325HeadFvRow] 2 s2Step325HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step325HeadGvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step325HeadGv_Outgoing : rowsOwned s2Step325HeadFvAfter [s2Step325HeadGvOut,s2Step325HeadFvOut] :=
  hmrRows_owned_drop s2Step325HeadFvAfter [s2Step325HeadGOut,s2Step325HeadFOut,s2Step325HeadGvOut,s2Step325HeadFvOut] 2 s2Step325HeadBank_outgoingOwned

private theorem s2Step325HeadGv_distinct : (s2Step325HeadGvRow.sign::s2Step325HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step325HeadGv_owned : (s2Step325HeadGvRow.sign::s2Step325HeadGvRow.payload).toFinset⊆s2Step325HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step325HeadGvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step325HeadGv_reserved : s2Step325HeadGvBefore.reserve s2Step325HeadGvFresh.toFinset=some s2Step325HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step325HeadGvFresh,arenaWires]
  · norm_num [s2Step325HeadGvBefore,s2Step325HeadFAfter,s2Step325HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step325HeadGvAfter,s2Step325HeadGvBefore,s2Step325HeadFAfter,s2Step325HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step325HeadGv_checked : planRowResizeLog s2Step325HeadGvBefore s2Step325HeadGvRow 179 s2Step325HeadGvFresh=
    some (s2Step325HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 807],771⟩,growRow 771 s2Step325HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step325HeadGvBefore s2Step325HeadGvAfter s2Step325HeadGvRow 179 s2Step325HeadGvFresh
    s2Step325HeadGv_distinct s2Step325HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step325HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step325HeadGvRow.payload++s2Step325HeadGvFresh) s2Step325HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 807],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step325HeadBank_rows : planWindowRowsLog s2Step325HeadGBefore [(s2Step325HeadGRow,109),(s2Step325HeadFRow,109),(s2Step325HeadGvRow,179),(s2Step325HeadFvRow,179)] [s2Step325HeadGFresh,s2Step325HeadFFresh,s2Step325HeadGvFresh,s2Step325HeadFvFresh]=
    some (s2Step325HeadFvAfter,[s2Step325HeadGOut,s2Step325HeadFOut,s2Step325HeadGvOut,s2Step325HeadFvOut],(growRow 769 s2Step325HeadGFresh ++ (growRow 768 s2Step325HeadFFresh ++ (growRow 771 s2Step325HeadGvFresh ++ (growRow 770 s2Step325HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step325HeadFvAfter [] []=some (s2Step325HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step325HeadFvBefore s2Step325HeadFvAfter s2Step325HeadFvAfter
    s2Step325HeadFvRow s2Step325HeadFvOut 179 s2Step325HeadFvFresh [] [] []
    (growRow 770 s2Step325HeadFvFresh) ([]) s2Step325HeadFv_Incoming s2Step325HeadFv_checked h4 s2Step325HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step325HeadGvBefore s2Step325HeadGvAfter s2Step325HeadFvAfter
    s2Step325HeadGvRow s2Step325HeadGvOut 179 s2Step325HeadGvFresh [(s2Step325HeadFvRow,179)] [s2Step325HeadFvFresh] [s2Step325HeadFvOut]
    (growRow 771 s2Step325HeadGvFresh) ((growRow 770 s2Step325HeadFvFresh ++ [])) s2Step325HeadGv_Incoming s2Step325HeadGv_checked h3 s2Step325HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step325HeadFBefore s2Step325HeadFAfter s2Step325HeadFvAfter
    s2Step325HeadFRow s2Step325HeadFOut 109 s2Step325HeadFFresh [(s2Step325HeadGvRow,179),(s2Step325HeadFvRow,179)] [s2Step325HeadGvFresh,s2Step325HeadFvFresh] [s2Step325HeadGvOut,s2Step325HeadFvOut]
    (growRow 768 s2Step325HeadFFresh) ((growRow 771 s2Step325HeadGvFresh ++ (growRow 770 s2Step325HeadFvFresh ++ []))) s2Step325HeadF_Incoming s2Step325HeadF_checked h2 s2Step325HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step325HeadGBefore s2Step325HeadGAfter s2Step325HeadFvAfter
    s2Step325HeadGRow s2Step325HeadGOut 109 s2Step325HeadGFresh [(s2Step325HeadFRow,109),(s2Step325HeadGvRow,179),(s2Step325HeadFvRow,179)] [s2Step325HeadFFresh,s2Step325HeadGvFresh,s2Step325HeadFvFresh] [s2Step325HeadFOut,s2Step325HeadGvOut,s2Step325HeadFvOut]
    (growRow 769 s2Step325HeadGFresh) ((growRow 768 s2Step325HeadFFresh ++ (growRow 771 s2Step325HeadGvFresh ++ (growRow 770 s2Step325HeadFvFresh ++ [])))) s2Step325HeadG_Incoming s2Step325HeadG_checked h1 s2Step325HeadG_Outgoing
  exact h0

private theorem s2Step325HeadBank_checked : compileHmrBankResizeLog .headroom s2Step325HeadGBefore ⟨s2Step325HeadFRow,s2Step325HeadGRow,s2Step325HeadFvRow,s2Step325HeadGvRow⟩ ⟨109,109,179,179⟩ [s2Step325HeadGFresh,s2Step325HeadFFresh,s2Step325HeadGvFresh,s2Step325HeadFvFresh]=
    some (s2Step325HeadFvAfter,⟨s2Step325HeadFOut,s2Step325HeadGOut,s2Step325HeadFvOut,s2Step325HeadGvOut⟩,(growRow 769 s2Step325HeadGFresh ++ (growRow 768 s2Step325HeadFFresh ++ (growRow 771 s2Step325HeadGvFresh ++ (growRow 770 s2Step325HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step325HeadBank_rows]
  rfl

private theorem s2Step325Front_checked : compileHmrSourceFrontLog s2Step325EntryFBefore s2Step325FrontBank 108 178 ⟨108,108,178,178⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step325FrontLog=some s2Step325FrontPlan := by
  have pairEq : s2Step325FrontPair=⟨s2Step325HeadFRow,s2Step325HeadGRow,s2Step325HeadFvRow,s2Step325HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step325FrontHead=⟨s2Step325ExitFRow,s2Step325ExitGRow,s2Step325ExitFvRow,s2Step325ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step325Add0A=s2Step325FrontHead.f.wires := by decide +kernel
  have gEq : s2Step325Add0B=s2Step325FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step325Add1A=s2Step325FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step325Add1B=s2Step325FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step325EntryFBefore s2Step325FrontBank 108 178 ⟨108,108,178,178⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step325FrontLog s2Step325FrontPlan
  · exact s2Step325Front_entry
  · exact s2Step325EntryBank_checked
  · exact s2Step325Front_sigma
  · rfl
  · exact s2Step325Front_branch
  · rfl
  · simpa only [s2Step325FrontPlan,pairEq] using s2Step325HeadBank_checked
  · simpa only [s2Step325FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step325F4_checked
  · exact s2Step325Counter_checked
  · rfl
  · simpa only [s2Step325FrontPlan,headEq] using s2Step325ExitBank_checked

private theorem s2Step325Complete_explicit_checked : compileHmrEarlyStepLog s2Step325EntryFBefore s2Step325FrontBank 108 178 ⟨108,108,178,178⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step325CompleteLog=some s2Step325CompletePlan := by
  let Q := s2Step325EarlyControlPlan
  have hq := s2Step325EarlyControl_plan_checked
  have fv1 : s2Step325CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step325CompleteOut.fv.payload[2]?.getD s2Step325CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step325CompleteOut.fv.payload[3]?.getD s2Step325CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step325CompleteOut.fv.payload[4]?.getD s2Step325CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step325EntryFBefore s2Step325EarlyControlArena s2Step325FrontBank 108 178 ⟨108,108,178,178⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step325CompleteLog s2Step325FrontPlan Q
    s2Step325Front_checked s2Step325Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step325Complete_owned s2Step325Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step325EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 830 s2Step325CompleteOut.fv.second (s2Step325CompleteOut.fv.payload[2]?.getD s2Step325CompleteOut.fv.sign) (s2Step325CompleteOut.fv.payload[3]?.getD s2Step325CompleteOut.fv.sign) (s2Step325CompleteOut.fv.payload[4]?.getD s2Step325CompleteOut.fv.sign) 829 60 s2Step325EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep325Arena : Arena := s2Step325EntryFBefore
def s2PrivateStep325Bank : WindowBank := s2Step325FrontBank
def s2PrivateStep325Spec : HmrSourceWalkStepLog := ⟨108,178,⟨108,108,178,178⟩,60,.early s2Step325CompleteLog⟩
def s2PrivateStep325Plan : HmrSourceStepPlan := .early s2Step325CompletePlan
theorem s2PrivateStep325_source : s2PrivateStep325Spec=s2ObservedLogs320[5] := rfl
theorem s2PrivateStep325_checked : compileHmrSourceStepLog s2PrivateStep325Arena s2PrivateStep325Bank
    s2PrivateStep325Spec.fgWidth s2PrivateStep325Spec.vWidth s2PrivateStep325Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]
    6 498 325 s2PrivateStep325Spec.need none s2PrivateStep325Spec.log=some s2PrivateStep325Plan := by
  change compileHmrSourceStepLog s2Step325EntryFBefore s2Step325FrontBank 108 178 ⟨108,108,178,178⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 6 498 325 60 none (.early s2Step325CompleteLog)=some (.early s2Step325CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 325<498)]
  rw [s2Step325Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
