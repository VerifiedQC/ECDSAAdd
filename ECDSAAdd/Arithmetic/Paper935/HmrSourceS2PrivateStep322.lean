import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep320
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

private def s2Step322CompleteMoves : List (Wire × Wire) := [(867,109),(879,621)]

private def s2Step322EarlyControlLog : HmrEarlyControlLog := ⟨[879, 867, 787, 827, 834],[806],[784],[800, 894, 896, 901, 903, 907],[912]⟩

private def s2Step322FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[827], [787], [840], [814]],[[], [], [], []]⟩,[807],[830],[834],[806],[784, 800, 894, 896, 901, 903, 907, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[784, 800, 894, 896, 901, 903, 907, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[834, 806, 784, 800]⟩

private def s2Step322CompleteLog : HmrEarlyStepLog := ⟨s2Step322FrontLog,s2Step322CompleteMoves,s2Step322EarlyControlLog⟩

private def s2Step322ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620],768⟩

private def s2Step322ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814],770⟩

private def s2Step322ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108],769⟩

private def s2Step322ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840],771⟩

private def s2Step322FrontOut : WindowBank := ⟨s2Step322ExitFOut,s2Step322ExitGOut,s2Step322ExitFvOut,s2Step322ExitGvOut⟩

private def s2Step322CompleteOut : WindowBank := s2Step322FrontOut.repacked s2Step322CompleteMoves

private def s2Step322EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<879) ∨ (880≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<912)),Finset.filter_subset _ _⟩

private def s2Step322EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<912)),Finset.filter_subset _ _⟩

private def s2Step322EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<912)),Finset.filter_subset _ _⟩

private def s2Step322EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step322EarlyControlPositiveArena,[806],s2Step322EarlyControlEqualityArena,[784],⟨⟨807,false⟩,[⟨⟨806,false⟩,784⟩]⟩⟩

private def s2Step322EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step322EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<912)),Finset.filter_subset _ _⟩

private def s2Step322EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<879) ∨ (880≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step322EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<879) ∨ (880≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step322EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<879) ∨ (880≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step322EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<912)),Finset.filter_subset _ _⟩

private def s2Step322EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,879⟩,⟨⟨774,false⟩,867⟩,⟨⟨775,false⟩,787⟩,⟨⟨776,false⟩,827⟩,⟨⟨777,false⟩,834⟩]⟩

private def s2Step322EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step322EarlyControlZeroArena,s2Step322EarlyControlZeroPlan,s2Step322EarlyControlClassPlan,s2Step322EarlyControlFlagArena,s2Step322EarlyControlFittedArena,s2Step322EarlyControlHistoryArena,s2Step322EarlyControlSigmaArena,s2Step322EarlyControlOutputArena,s2Step322EarlyControlLog⟩

private def s2Step322CounterWork : List Wire := [834, 806, 784, 800]

private theorem s2Step322Counter_bounded : s2Step322CounterWork.toFinset⊆arenaWires := by norm_num [s2Step322CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step322HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<912)),Finset.filter_subset _ _⟩

private def s2Step322CounterDuring : Arena := ⟨s2Step322HeadFvAfter.live∪s2Step322CounterWork.toFinset,Finset.union_subset s2Step322HeadFvAfter.bounded s2Step322Counter_bounded⟩

private def s2Step322EntryFFresh : List Wire := []

private def s2Step322EntryFvFresh : List Wire := []

private def s2Step322EntryGFresh : List Wire := []

private def s2Step322EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<840) ∨ (841≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<912)),Finset.filter_subset _ _⟩

private def s2Step322EntryGvAfter : Arena := s2Step322EntryFBefore

private def s2Step322EntryGvFresh : List Wire := []

private def s2Step322ExitFExtra : List Wire := [621, 787]

private def s2Step322ExitGExtra : List Wire := [109, 827]

private def s2Step322ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<109) ∨ (110≤q ∧ q<621) ∨ (622≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<912)),Finset.filter_subset _ _⟩

private def s2Step322ExitGvAfter : Arena := s2Step322ExitFAfter

private def s2Step322Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<912)),Finset.filter_subset _ _⟩

private def s2Step322Add0Work : List Wire := [784, 800, 894, 896, 901, 903, 907, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step322Add0_bounded : s2Step322Add0Work.toFinset⊆arenaWires := by
  have h : s2Step322Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step322Add0During : Arena := ⟨s2Step322Add0Arena.live∪s2Step322Add0Work.toFinset,Finset.union_subset s2Step322Add0Arena.bounded s2Step322Add0_bounded⟩

private def s2Step322Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<912)),Finset.filter_subset _ _⟩

private def s2Step322Add1Work : List Wire := [784, 800, 894, 896, 901, 903, 907, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step322Add1_bounded : s2Step322Add1Work.toFinset⊆arenaWires := by
  have h : s2Step322Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step322Add1During : Arena := ⟨s2Step322Add1Arena.live∪s2Step322Add1Work.toFinset,Finset.union_subset s2Step322Add1Arena.bounded s2Step322Add1_bounded⟩

private def s2Step322F4FlagArena : Arena := ⟨s2Step322HeadFvAfter.live∪{834},Finset.union_subset s2Step322HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step322F4Plan : HmrHybridF4Plan := ⟨s2Step322F4FlagArena,[834],s2Step322Add0Arena,[806],s2Step322Add0During,s2Step322Add0Work,s2Step322Add1During,s2Step322Add1Work⟩

private def s2Step322HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 787],768⟩

private def s2Step322HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814],770⟩

private def s2Step322HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 827],769⟩

private def s2Step322HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840],771⟩

private def s2Step322FrontHead : WindowBank := ⟨s2Step322HeadFOut,s2Step322HeadGOut,s2Step322HeadFvOut,s2Step322HeadGvOut⟩

private def s2Step322EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621],768⟩

private def s2Step322EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846],770⟩

private def s2Step322EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109],769⟩

private def s2Step322EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792],771⟩

private def s2Step322FrontPair : WindowBank := ⟨s2Step322EntryFOut,s2Step322EntryGOut,s2Step322EntryFvOut,s2Step322EntryGvOut⟩

private def s2Step322FrontSigmaArena : Arena := ⟨s2Step322EntryGvAfter.live∪{807},Finset.union_subset s2Step322EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step322HeadFFresh : List Wire := [787]

private def s2Step322HeadFvFresh : List Wire := [814]

private def s2Step322HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<840) ∨ (841≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<912)),Finset.filter_subset _ _⟩

private def s2Step322HeadGFresh : List Wire := [827]

private def s2Step322HeadGvFresh : List Wire := [840]

private def s2Step322FrontPlan : HmrSourceFront := ⟨s2Step322EntryGvAfter,s2Step322FrontPair,(growRow 768 s2Step322EntryFFresh ++ (growRow 769 s2Step322EntryGFresh ++ (growRow 770 s2Step322EntryFvFresh ++ (growRow 771 s2Step322EntryGvFresh ++ [])))),s2Step322FrontSigmaArena,[807],s2Step322HeadGBefore,[830],
  s2Step322HeadFvAfter,s2Step322FrontHead,(growRow 769 s2Step322HeadGFresh ++ (growRow 768 s2Step322HeadFFresh ++ (growRow 771 s2Step322HeadGvFresh ++ (growRow 770 s2Step322HeadFvFresh ++ [])))),s2Step322F4Plan,s2Step322CounterDuring,s2Step322CounterWork,s2Step322ExitGvAfter,s2Step322FrontOut,(shrinkRow 769 s2Step322ExitGExtra ++ (shrinkRow 768 s2Step322ExitFExtra ++ (growRow 770 [] ++ (growRow 771 [] ++ []))))⟩

private def s2Step322CompletePlan : HmrEarlyStepPlan := ⟨s2Step322FrontPlan,s2Step322EarlyControlArena,s2Step322EarlyControlPlan,s2Step322CompleteMoves⟩

private theorem s2Step322Complete_apart : List.Disjoint (s2Step322CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [807, 830, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911] := by
  have nd : ((s2Step322CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[807, 830, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step322Complete_owned : (s2Step322CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step322EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step322EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<879) ∨ (880≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<912)) rfl
  decide +kernel

private def s2Step322CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,621),(622,784),(785,787),(788,800),(801,806),(807,827),(828,834),(835,867),(868,894),(895,896),(897,901),(902,903),(904,907),(908,912)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s2Step322CompleteRelocationMove0Borrowed : Arena := ⟨s2Step322ExitGvAfter.live∪{109},Finset.union_subset s2Step322ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step322CompleteRelocationMove1Borrowed : Arena := ⟨s2Step322CompleteRelocationMove0After.live∪{621},Finset.union_subset s2Step322CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s2Step322CompleteRelocation_move0_owned : 867∈s2Step322ExitGvAfter.live := by norm_num [s2Step322ExitGvAfter,s2Step322ExitFAfter,arenaWires]

private theorem s2Step322CompleteRelocation_move0_reserve : s2Step322ExitGvAfter.reserve {109}=some s2Step322CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step322ExitGvAfter,s2Step322ExitFAfter,arenaWires]
  · rfl

private theorem s2Step322CompleteRelocation_move0_retire : s2Step322CompleteRelocationMove0Borrowed.retireSet {867}=s2Step322CompleteRelocationMove0After := by
  unfold Arena.retireSet s2Step322CompleteRelocationMove0After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step322CompleteRelocationMove0Borrowed,s2Step322ExitGvAfter,s2Step322ExitFAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step322CompleteRelocation_move1_owned : 879∈s2Step322CompleteRelocationMove0After.live := by norm_num [s2Step322CompleteRelocationMove0After,arenaWires]

private theorem s2Step322CompleteRelocation_move1_reserve : s2Step322CompleteRelocationMove0After.reserve {621}=some s2Step322CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step322CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s2Step322CompleteRelocation_move1_retire : s2Step322CompleteRelocationMove1Borrowed.retireSet {879}=s2Step322EarlyControlArena := by
  unfold Arena.retireSet s2Step322EarlyControlArena
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step322CompleteRelocationMove1Borrowed,s2Step322CompleteRelocationMove0After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step322CompleteRelocation_checked : s2Step322ExitGvAfter.checkRepack [(867,109),(879,621)]=some s2Step322EarlyControlArena := by
  have tail2 : s2Step322EarlyControlArena.checkRepack []=some s2Step322EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s2Step322CompleteRelocationMove0After s2Step322CompleteRelocationMove1Borrowed s2Step322EarlyControlArena s2Step322EarlyControlArena 879 621 []
    s2Step322CompleteRelocation_move1_owned s2Step322CompleteRelocation_move1_reserve s2Step322CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s2Step322ExitGvAfter s2Step322CompleteRelocationMove0Borrowed s2Step322CompleteRelocationMove0After s2Step322EarlyControlArena 867 109 [(879,621)]
    s2Step322CompleteRelocation_move0_owned s2Step322CompleteRelocation_move0_reserve s2Step322CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s2Step322Complete_repack : s2Step322ExitGvAfter.checkRepack s2Step322CompleteMoves=some s2Step322EarlyControlArena := by
  simpa only [s2Step322CompleteMoves] using s2Step322CompleteRelocation_checked

private theorem s2Step322EarlyControl_branchOwned : ([830] : List Wire).toFinset⊆s2Step322EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step322EarlyControlSigmaArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<879) ∨ (880≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step322EarlyControl_branch : compileHmrBranchRetirement s2Step322EarlyControlSigmaArena 830=some s2Step322EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step322EarlyControl_branchOwned
  · ext q
    simp [s2Step322EarlyControlOutputArena,s2Step322EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step322EarlyControl_classEqualityBorrow : s2Step322EarlyControlPositiveArena.checkBorrow (([807, 806] : List Wire).length-1) s2Step322EarlyControlLog.classWork=some s2Step322EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step322EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step322EarlyControlPositiveArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<912)) rfl
      decide +kernel
    · ext q
      simp [s2Step322EarlyControlEqualityArena,s2Step322EarlyControlPositiveArena,s2Step322EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step322EarlyControl_classEqualityOwned : ([807, 806] : List Wire).toFinset⊆s2Step322EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step322EarlyControlPositiveArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<912)) rfl
  decide +kernel

private theorem s2Step322EarlyControl_classEquality : compileHmrEqualityLog s2Step322EarlyControlPositiveArena [807, 806] 0 s2Step322EarlyControlLog.classWork=some (s2Step322EarlyControlEqualityArena,s2Step322EarlyControlLog.classWork,s2Step322EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step322EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step322EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step322EarlyControl_classOwned : ([777, 834, 807] : List Wire).toFinset⊆s2Step322EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step322EarlyControlZeroArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<912)) rfl
  decide +kernel

private theorem s2Step322EarlyControl_positiveBorrow : s2Step322EarlyControlZeroArena.checkBorrow (1) s2Step322EarlyControlLog.positiveWork=some s2Step322EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step322EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step322EarlyControlZeroArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<912)) rfl
      decide +kernel
    · ext q
      simp [s2Step322EarlyControlPositiveArena,s2Step322EarlyControlZeroArena,s2Step322EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step322EarlyControl_class : compileHmrSourceClassLog s2Step322EarlyControlZeroArena false 777 s2Step322EarlyControlZeroPlan.top 0 807 s2Step322EarlyControlLog.positiveWork s2Step322EarlyControlLog.classWork=some s2Step322EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step322EarlyControlClassPlan s2Step322EarlyControlZeroArena false 777 s2Step322EarlyControlZeroPlan.top 0 807
  constructor
  · decide +kernel
  · exact s2Step322EarlyControl_classOwned
  · exact s2Step322EarlyControl_positiveBorrow
  · exact s2Step322EarlyControl_classEquality

private theorem s2Step322EarlyControl_entryRecordOwned : ([830, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911] : List Wire).toFinset⊆s2Step322EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step322EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<879) ∨ (880≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<912)) rfl
  decide +kernel

private theorem s2Step322EarlyControl_entrySigmaOwned : ([807, 254] : List Wire).toFinset⊆s2Step322EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step322EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<879) ∨ (880≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<912)) rfl
  decide +kernel

private theorem s2Step322EarlyControl_fitBorrow : s2Step322EarlyControlFlagArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911] : List Wire).length)) s2Step322EarlyControlLog.recordFresh=some s2Step322EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step322EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step322EarlyControlFlagArena (fun q => (0≤q ∧ q<912)) rfl
      decide +kernel
    · ext q
      simp [s2Step322EarlyControlFittedArena,s2Step322EarlyControlFlagArena,s2Step322EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step322EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911] : List Wire).toFinset⊆s2Step322EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step322EarlyControlFlagArena (fun q => (0≤q ∧ q<912)) rfl
  decide +kernel

private theorem s2Step322EarlyControl_fit : compileHmrRecordGrowLog s2Step322EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911] 60 s2Step322EarlyControlLog.recordFresh=some s2Step322EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step322EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step322EarlyControl_fitBorrow

private theorem s2Step322EarlyControl_flagsBorrow : s2Step322EarlyControlEqualityArena.checkBorrow (6) s2Step322EarlyControlLog.flagWork=some s2Step322EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step322EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step322EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<912)) rfl
      decide +kernel
    · ext q
      simp [s2Step322EarlyControlFlagArena,s2Step322EarlyControlEqualityArena,s2Step322EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step322EarlyControl_flagsOwned : ([784, 253, 252, 251] : List Wire).toFinset⊆s2Step322EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step322EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<912)) rfl
  decide +kernel

private theorem s2Step322EarlyControl_flags : compileHmrFlagsLog s2Step322EarlyControlClassPlan.equalityArena s2Step322EarlyControlClassPlan.equality.top 253 252 251 s2Step322EarlyControlLog.flagWork=some s2Step322EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step322EarlyControl_flagsOwned⟩
  · exact s2Step322EarlyControl_flagsBorrow

private theorem s2Step322EarlyControl_historyBorrow : s2Step322EarlyControlArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911] : List Wire).length)) s2Step322EarlyControlLog.recordFresh=some s2Step322EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step322EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step322EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<879) ∨ (880≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<912)) rfl
      decide +kernel
    · ext q
      simp [s2Step322EarlyControlHistoryArena,s2Step322EarlyControlArena,s2Step322EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step322EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911] : List Wire).toFinset⊆s2Step322EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step322EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<879) ∨ (880≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<912)) rfl
  decide +kernel

private theorem s2Step322EarlyControl_history : compileHmrRecordGrowLog s2Step322EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911] 60 s2Step322EarlyControlLog.recordFresh=some s2Step322EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step322EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step322EarlyControl_historyBorrow

private theorem s2Step322EarlyControl_sigmaOwned : ([254, 807] : List Wire).toFinset⊆s2Step322EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step322EarlyControlHistoryArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<879) ∨ (880≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step322EarlyControl_sigmaReleaseOwned : ([807] : List Wire).toFinset⊆s2Step322EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step322EarlyControlHistoryArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<879) ∨ (880≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step322EarlyControl_sigmaRelease : s2Step322EarlyControlHistoryArena.release {807} (fun _ => false)=some s2Step322EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step322EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step322EarlyControlSigmaArena,s2Step322EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step322EarlyControl_sigma : compileHmrSigmaDropLog s2Step322EarlyControlHistoryArena false 0 0 254 807 []=some s2Step322EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step322EarlyControl_sigmaOwned⟩
  · exact s2Step322EarlyControl_sigmaRelease

private theorem s2Step322EarlyControl_zeroBorrow : s2Step322EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step322EarlyControlLog.zeroWork=some s2Step322EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step322EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step322EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<879) ∨ (880≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<912)) rfl
      decide +kernel
    · ext q
      simp [s2Step322EarlyControlZeroArena,s2Step322EarlyControlArena,s2Step322EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step322EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step322EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step322EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<879) ∨ (880≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<912)) rfl
  decide +kernel

private theorem s2Step322EarlyControl_zero : compileHmrEqualityLog s2Step322EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step322EarlyControlLog.zeroWork=some (s2Step322EarlyControlZeroArena,s2Step322EarlyControlLog.zeroWork,s2Step322EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step322EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step322EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step322EarlyControl_logged : s2Step322EarlyControlPlan.Logged s2Step322EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911] 777 807 254 253 252 251 830 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step322EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step322EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step322EarlyControl_zero
  · exact s2Step322EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step322EarlyControl_flags
  · exact s2Step322EarlyControl_fit
  · exact s2Step322EarlyControl_history
  · exact s2Step322EarlyControl_sigma
  · exact s2Step322EarlyControl_branch

private theorem s2Step322EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step322EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911] 777 807 254 253 252 251 830 60 s2Step322EarlyControlLog=some s2Step322EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step322EarlyControlPlan s2Step322EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911] 777 807 254 253 252 251 830 60 s2Step322EarlyControl_logged

private def s2Step322EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621],768⟩

private def s2Step322EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846],770⟩

private def s2Step322EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109],769⟩

private def s2Step322EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792],771⟩

private def s2Step322FrontBank : WindowBank := ⟨s2Step322EntryFRow,s2Step322EntryGRow,s2Step322EntryFvRow,s2Step322EntryGvRow⟩

private def s2Step322Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 787, 768]

private def s2Step322Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 827, 769]

private def s2Step322Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 770]

private def s2Step322Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 771]

private theorem s2Step322Counter_apart : Disjoint s2Step322HeadFvAfter.live s2Step322CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step322HeadFvAfter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<912)) rfl
  decide +kernel

private theorem s2Step322Counter_borrowed : s2Step322HeadFvAfter.checkBorrow 4 s2Step322CounterWork=some s2Step322CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step322HeadFvAfter s2Step322CounterDuring s2Step322CounterWork.toFinset s2Step322Counter_bounded s2Step322Counter_apart rfl

private theorem s2Step322Counter_owned : (807::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step322HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step322HeadFvAfter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<912)) rfl
  decide +kernel

private theorem s2Step322Counter_checked : compileHmrCounterStepLog s2Step322HeadFvAfter true 807 [772, 773, 774, 775, 776, 777] s2Step322CounterWork=some s2Step322CounterDuring := by
  have owned : ∀q∈807::[772, 773, 774, 775, 776, 777],q∈s2Step322HeadFvAfter.live := fun q hq => s2Step322Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step322Counter_borrowed

private def s2Step322EntryFAfter : Arena := s2Step322EntryFBefore

private theorem s2Step322EntryBank_incomingDistinct : ([s2Step322EntryFRow,s2Step322EntryGRow,s2Step322EntryFvRow,s2Step322EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step322EntryF_Incoming : rowsOwned s2Step322EntryFBefore [s2Step322EntryFRow,s2Step322EntryGRow,s2Step322EntryFvRow,s2Step322EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step322EntryFRow,s2Step322EntryGRow,s2Step322EntryFvRow,s2Step322EntryGvRow] 0 s2Step322EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step322EntryFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<840) ∨ (841≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<912)) rfl
    decide +kernel

private theorem s2Step322EntryBank_outgoingOwned : rowsOwned s2Step322EntryGvAfter [s2Step322EntryFOut,s2Step322EntryGOut,s2Step322EntryFvOut,s2Step322EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step322EntryGvAfter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<840) ∨ (841≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<912)) rfl
    decide +kernel

private theorem s2Step322EntryF_Outgoing : rowsOwned s2Step322EntryGvAfter [s2Step322EntryFOut,s2Step322EntryGOut,s2Step322EntryFvOut,s2Step322EntryGvOut] :=
  hmrRows_owned_drop s2Step322EntryGvAfter [s2Step322EntryFOut,s2Step322EntryGOut,s2Step322EntryFvOut,s2Step322EntryGvOut] 0 s2Step322EntryBank_outgoingOwned

private theorem s2Step322EntryF_distinct : (s2Step322EntryFRow.sign::s2Step322EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step322EntryF_owned : (s2Step322EntryFRow.sign::s2Step322EntryFRow.payload).toFinset⊆s2Step322EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step322EntryFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<840) ∨ (841≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<912)) rfl
  decide +kernel

private theorem s2Step322EntryF_reserved : s2Step322EntryFBefore.reserve s2Step322EntryFFresh.toFinset=some s2Step322EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step322EntryFFresh,arenaWires]
  · norm_num [s2Step322EntryFBefore,s2Step322EntryFFresh,arenaWires]
  · simp only [s2Step322EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step322EntryF_checked : planRowResizeLog s2Step322EntryFBefore s2Step322EntryFRow 110 s2Step322EntryFFresh=
    some (s2Step322EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621],768⟩,growRow 768 s2Step322EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step322EntryFBefore s2Step322EntryFAfter s2Step322EntryFRow 110 s2Step322EntryFFresh
    s2Step322EntryF_distinct s2Step322EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step322EntryF_reserved
  have rowEq : WindowRow.mk (s2Step322EntryFRow.payload++s2Step322EntryFFresh) s2Step322EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step322EntryFvAfter : Arena := s2Step322EntryFBefore

private def s2Step322EntryFvBefore : Arena := s2Step322EntryFBefore

private theorem s2Step322EntryFv_Incoming : rowsOwned s2Step322EntryFvBefore [s2Step322EntryFvRow,s2Step322EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step322EntryFRow,s2Step322EntryGRow,s2Step322EntryFvRow,s2Step322EntryGvRow] 2 s2Step322EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step322EntryFvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<840) ∨ (841≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<912)) rfl
    decide +kernel

private theorem s2Step322EntryFv_Outgoing : rowsOwned s2Step322EntryGvAfter [s2Step322EntryFvOut,s2Step322EntryGvOut] :=
  hmrRows_owned_drop s2Step322EntryGvAfter [s2Step322EntryFOut,s2Step322EntryGOut,s2Step322EntryFvOut,s2Step322EntryGvOut] 2 s2Step322EntryBank_outgoingOwned

private theorem s2Step322EntryFv_distinct : (s2Step322EntryFvRow.sign::s2Step322EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step322EntryFv_owned : (s2Step322EntryFvRow.sign::s2Step322EntryFvRow.payload).toFinset⊆s2Step322EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step322EntryFvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<840) ∨ (841≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<912)) rfl
  decide +kernel

private theorem s2Step322EntryFv_reserved : s2Step322EntryFvBefore.reserve s2Step322EntryFvFresh.toFinset=some s2Step322EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step322EntryFvFresh,arenaWires]
  · norm_num [s2Step322EntryFvBefore,s2Step322EntryFBefore,s2Step322EntryFvFresh,arenaWires]
  · simp only [s2Step322EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step322EntryFv_checked : planRowResizeLog s2Step322EntryFvBefore s2Step322EntryFvRow 176 s2Step322EntryFvFresh=
    some (s2Step322EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846],770⟩,growRow 770 s2Step322EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step322EntryFvBefore s2Step322EntryFvAfter s2Step322EntryFvRow 176 s2Step322EntryFvFresh
    s2Step322EntryFv_distinct s2Step322EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step322EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step322EntryFvRow.payload++s2Step322EntryFvFresh) s2Step322EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step322EntryGAfter : Arena := s2Step322EntryFBefore

private def s2Step322EntryGBefore : Arena := s2Step322EntryFBefore

private theorem s2Step322EntryG_Incoming : rowsOwned s2Step322EntryGBefore [s2Step322EntryGRow,s2Step322EntryFvRow,s2Step322EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step322EntryFRow,s2Step322EntryGRow,s2Step322EntryFvRow,s2Step322EntryGvRow] 1 s2Step322EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step322EntryGBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<840) ∨ (841≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<912)) rfl
    decide +kernel

private theorem s2Step322EntryG_Outgoing : rowsOwned s2Step322EntryGvAfter [s2Step322EntryGOut,s2Step322EntryFvOut,s2Step322EntryGvOut] :=
  hmrRows_owned_drop s2Step322EntryGvAfter [s2Step322EntryFOut,s2Step322EntryGOut,s2Step322EntryFvOut,s2Step322EntryGvOut] 1 s2Step322EntryBank_outgoingOwned

private theorem s2Step322EntryG_distinct : (s2Step322EntryGRow.sign::s2Step322EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step322EntryG_owned : (s2Step322EntryGRow.sign::s2Step322EntryGRow.payload).toFinset⊆s2Step322EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step322EntryGBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<840) ∨ (841≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<912)) rfl
  decide +kernel

private theorem s2Step322EntryG_reserved : s2Step322EntryGBefore.reserve s2Step322EntryGFresh.toFinset=some s2Step322EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step322EntryGFresh,arenaWires]
  · norm_num [s2Step322EntryGBefore,s2Step322EntryFBefore,s2Step322EntryGFresh,arenaWires]
  · simp only [s2Step322EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step322EntryG_checked : planRowResizeLog s2Step322EntryGBefore s2Step322EntryGRow 110 s2Step322EntryGFresh=
    some (s2Step322EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109],769⟩,growRow 769 s2Step322EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step322EntryGBefore s2Step322EntryGAfter s2Step322EntryGRow 110 s2Step322EntryGFresh
    s2Step322EntryG_distinct s2Step322EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step322EntryG_reserved
  have rowEq : WindowRow.mk (s2Step322EntryGRow.payload++s2Step322EntryGFresh) s2Step322EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step322EntryGvBefore : Arena := s2Step322EntryFBefore

private theorem s2Step322EntryGv_Incoming : rowsOwned s2Step322EntryGvBefore [s2Step322EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step322EntryFRow,s2Step322EntryGRow,s2Step322EntryFvRow,s2Step322EntryGvRow] 3 s2Step322EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step322EntryGvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<840) ∨ (841≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<912)) rfl
    decide +kernel

private theorem s2Step322EntryGv_Outgoing : rowsOwned s2Step322EntryGvAfter [s2Step322EntryGvOut] :=
  hmrRows_owned_drop s2Step322EntryGvAfter [s2Step322EntryFOut,s2Step322EntryGOut,s2Step322EntryFvOut,s2Step322EntryGvOut] 3 s2Step322EntryBank_outgoingOwned

private theorem s2Step322EntryGv_distinct : (s2Step322EntryGvRow.sign::s2Step322EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step322EntryGv_owned : (s2Step322EntryGvRow.sign::s2Step322EntryGvRow.payload).toFinset⊆s2Step322EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step322EntryGvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<840) ∨ (841≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<912)) rfl
  decide +kernel

private theorem s2Step322EntryGv_reserved : s2Step322EntryGvBefore.reserve s2Step322EntryGvFresh.toFinset=some s2Step322EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step322EntryGvFresh,arenaWires]
  · norm_num [s2Step322EntryGvBefore,s2Step322EntryFBefore,s2Step322EntryGvFresh,arenaWires]
  · simp only [s2Step322EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step322EntryGv_checked : planRowResizeLog s2Step322EntryGvBefore s2Step322EntryGvRow 176 s2Step322EntryGvFresh=
    some (s2Step322EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792],771⟩,growRow 771 s2Step322EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step322EntryGvBefore s2Step322EntryGvAfter s2Step322EntryGvRow 176 s2Step322EntryGvFresh
    s2Step322EntryGv_distinct s2Step322EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step322EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step322EntryGvRow.payload++s2Step322EntryGvFresh) s2Step322EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step322EntryBank_rows : planWindowRowsLog s2Step322EntryFBefore [(s2Step322EntryFRow,110),(s2Step322EntryGRow,110),(s2Step322EntryFvRow,176),(s2Step322EntryGvRow,176)] [s2Step322EntryFFresh,s2Step322EntryGFresh,s2Step322EntryFvFresh,s2Step322EntryGvFresh]=
    some (s2Step322EntryGvAfter,[s2Step322EntryFOut,s2Step322EntryGOut,s2Step322EntryFvOut,s2Step322EntryGvOut],(growRow 768 s2Step322EntryFFresh ++ (growRow 769 s2Step322EntryGFresh ++ (growRow 770 s2Step322EntryFvFresh ++ (growRow 771 s2Step322EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step322EntryGvAfter [] []=some (s2Step322EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step322EntryGvBefore s2Step322EntryGvAfter s2Step322EntryGvAfter
    s2Step322EntryGvRow s2Step322EntryGvOut 176 s2Step322EntryGvFresh [] [] []
    (growRow 771 s2Step322EntryGvFresh) ([]) s2Step322EntryGv_Incoming s2Step322EntryGv_checked h4 s2Step322EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step322EntryFvBefore s2Step322EntryFvAfter s2Step322EntryGvAfter
    s2Step322EntryFvRow s2Step322EntryFvOut 176 s2Step322EntryFvFresh [(s2Step322EntryGvRow,176)] [s2Step322EntryGvFresh] [s2Step322EntryGvOut]
    (growRow 770 s2Step322EntryFvFresh) ((growRow 771 s2Step322EntryGvFresh ++ [])) s2Step322EntryFv_Incoming s2Step322EntryFv_checked h3 s2Step322EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step322EntryGBefore s2Step322EntryGAfter s2Step322EntryGvAfter
    s2Step322EntryGRow s2Step322EntryGOut 110 s2Step322EntryGFresh [(s2Step322EntryFvRow,176),(s2Step322EntryGvRow,176)] [s2Step322EntryFvFresh,s2Step322EntryGvFresh] [s2Step322EntryFvOut,s2Step322EntryGvOut]
    (growRow 769 s2Step322EntryGFresh) ((growRow 770 s2Step322EntryFvFresh ++ (growRow 771 s2Step322EntryGvFresh ++ []))) s2Step322EntryG_Incoming s2Step322EntryG_checked h2 s2Step322EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step322EntryFBefore s2Step322EntryFAfter s2Step322EntryGvAfter
    s2Step322EntryFRow s2Step322EntryFOut 110 s2Step322EntryFFresh [(s2Step322EntryGRow,110),(s2Step322EntryFvRow,176),(s2Step322EntryGvRow,176)] [s2Step322EntryGFresh,s2Step322EntryFvFresh,s2Step322EntryGvFresh] [s2Step322EntryGOut,s2Step322EntryFvOut,s2Step322EntryGvOut]
    (growRow 768 s2Step322EntryFFresh) ((growRow 769 s2Step322EntryGFresh ++ (growRow 770 s2Step322EntryFvFresh ++ (growRow 771 s2Step322EntryGvFresh ++ [])))) s2Step322EntryF_Incoming s2Step322EntryF_checked h1 s2Step322EntryF_Outgoing
  exact h0

private theorem s2Step322EntryBank_checked : compileHmrBankResizeLog .entry s2Step322EntryFBefore ⟨s2Step322EntryFRow,s2Step322EntryGRow,s2Step322EntryFvRow,s2Step322EntryGvRow⟩ ⟨110,110,176,176⟩ [s2Step322EntryFFresh,s2Step322EntryGFresh,s2Step322EntryFvFresh,s2Step322EntryGvFresh]=
    some (s2Step322EntryGvAfter,⟨s2Step322EntryFOut,s2Step322EntryGOut,s2Step322EntryFvOut,s2Step322EntryGvOut⟩,(growRow 768 s2Step322EntryFFresh ++ (growRow 769 s2Step322EntryGFresh ++ (growRow 770 s2Step322EntryFvFresh ++ (growRow 771 s2Step322EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step322EntryBank_rows]
  rfl

private def s2Step322ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<109) ∨ (110≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<912)),Finset.filter_subset _ _⟩

private def s2Step322ExitFBefore : Arena := s2Step322ExitGAfter

private def s2Step322ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 787],768⟩

private def s2Step322ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814],770⟩

private def s2Step322ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 827],769⟩

private def s2Step322ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840],771⟩

private theorem s2Step322ExitBank_incomingDistinct : ([s2Step322ExitGRow,s2Step322ExitFRow,s2Step322ExitFvRow,s2Step322ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step322ExitF_Incoming : rowsOwned s2Step322ExitFBefore [s2Step322ExitFRow,s2Step322ExitFvRow,s2Step322ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step322ExitGRow,s2Step322ExitFRow,s2Step322ExitFvRow,s2Step322ExitGvRow] 1 s2Step322ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step322ExitFBefore (fun q => (0≤q ∧ q<109) ∨ (110≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<912)) rfl
    decide +kernel

private theorem s2Step322ExitBank_outgoingOwned : rowsOwned s2Step322ExitGvAfter [s2Step322ExitGOut,s2Step322ExitFOut,s2Step322ExitFvOut,s2Step322ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step322ExitGvAfter (fun q => (0≤q ∧ q<109) ∨ (110≤q ∧ q<621) ∨ (622≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<912)) rfl
    decide +kernel

private theorem s2Step322ExitF_Outgoing : rowsOwned s2Step322ExitGvAfter [s2Step322ExitFOut,s2Step322ExitFvOut,s2Step322ExitGvOut] :=
  hmrRows_owned_drop s2Step322ExitGvAfter [s2Step322ExitGOut,s2Step322ExitFOut,s2Step322ExitFvOut,s2Step322ExitGvOut] 1 s2Step322ExitBank_outgoingOwned

private theorem s2Step322ExitF_distinct : (s2Step322ExitFRow.sign::s2Step322ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step322ExitF_owned : (s2Step322ExitFRow.sign::s2Step322ExitFRow.payload).toFinset⊆s2Step322ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step322ExitFBefore (fun q => (0≤q ∧ q<109) ∨ (110≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<912)) rfl
  decide +kernel

private theorem s2Step322ExitF_retired : s2Step322ExitFBefore.retireSet s2Step322ExitFExtra.toFinset=s2Step322ExitFAfter := by
  unfold Arena.retireSet s2Step322ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step322ExitFBefore,s2Step322ExitGAfter,s2Step322ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step322ExitF_checked : planRowResizeLog s2Step322ExitFBefore s2Step322ExitFRow 109 []=
    some (s2Step322ExitFAfter,s2Step322ExitFOut,shrinkRow 768 s2Step322ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step322ExitFBefore s2Step322ExitFRow 109 s2Step322ExitF_distinct s2Step322ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step322ExitFRow.payload.take 109) s2Step322ExitFRow.sign=s2Step322ExitFOut := by decide +kernel
  have hi : s2Step322ExitFRow.payload.drop 109=s2Step322ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step322ExitF_retired] at result
  exact result

private def s2Step322ExitFvAfter : Arena := s2Step322ExitFAfter

private def s2Step322ExitFvBefore : Arena := s2Step322ExitFAfter

private theorem s2Step322ExitFv_Incoming : rowsOwned s2Step322ExitFvBefore [s2Step322ExitFvRow,s2Step322ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step322ExitGRow,s2Step322ExitFRow,s2Step322ExitFvRow,s2Step322ExitGvRow] 2 s2Step322ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step322ExitFvBefore (fun q => (0≤q ∧ q<109) ∨ (110≤q ∧ q<621) ∨ (622≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<912)) rfl
    decide +kernel

private theorem s2Step322ExitFv_Outgoing : rowsOwned s2Step322ExitGvAfter [s2Step322ExitFvOut,s2Step322ExitGvOut] :=
  hmrRows_owned_drop s2Step322ExitGvAfter [s2Step322ExitGOut,s2Step322ExitFOut,s2Step322ExitFvOut,s2Step322ExitGvOut] 2 s2Step322ExitBank_outgoingOwned

private theorem s2Step322ExitFv_distinct : (s2Step322ExitFvRow.sign::s2Step322ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step322ExitFv_owned : (s2Step322ExitFvRow.sign::s2Step322ExitFvRow.payload).toFinset⊆s2Step322ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step322ExitFvBefore (fun q => (0≤q ∧ q<109) ∨ (110≤q ∧ q<621) ∨ (622≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<912)) rfl
  decide +kernel

private theorem s2Step322ExitFv_reserved : s2Step322ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step322ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step322ExitFv_checked : planRowResizeLog s2Step322ExitFvBefore s2Step322ExitFvRow 177 []=
    some (s2Step322ExitFvAfter,s2Step322ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step322ExitFvBefore s2Step322ExitFvAfter s2Step322ExitFvRow 177 []
    s2Step322ExitFv_distinct s2Step322ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step322ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step322ExitFvRow.payload++[]) s2Step322ExitFvRow.sign=s2Step322ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step322ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<912)),Finset.filter_subset _ _⟩

private theorem s2Step322ExitG_Incoming : rowsOwned s2Step322ExitGBefore [s2Step322ExitGRow,s2Step322ExitFRow,s2Step322ExitFvRow,s2Step322ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step322ExitGRow,s2Step322ExitFRow,s2Step322ExitFvRow,s2Step322ExitGvRow] 0 s2Step322ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step322ExitGBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<912)) rfl
    decide +kernel

private theorem s2Step322ExitG_Outgoing : rowsOwned s2Step322ExitGvAfter [s2Step322ExitGOut,s2Step322ExitFOut,s2Step322ExitFvOut,s2Step322ExitGvOut] :=
  hmrRows_owned_drop s2Step322ExitGvAfter [s2Step322ExitGOut,s2Step322ExitFOut,s2Step322ExitFvOut,s2Step322ExitGvOut] 0 s2Step322ExitBank_outgoingOwned

private theorem s2Step322ExitG_distinct : (s2Step322ExitGRow.sign::s2Step322ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step322ExitG_owned : (s2Step322ExitGRow.sign::s2Step322ExitGRow.payload).toFinset⊆s2Step322ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step322ExitGBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<912)) rfl
  decide +kernel

private theorem s2Step322ExitG_retired : s2Step322ExitGBefore.retireSet s2Step322ExitGExtra.toFinset=s2Step322ExitGAfter := by
  unfold Arena.retireSet s2Step322ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step322ExitGBefore,s2Step322ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step322ExitG_checked : planRowResizeLog s2Step322ExitGBefore s2Step322ExitGRow 109 []=
    some (s2Step322ExitGAfter,s2Step322ExitGOut,shrinkRow 769 s2Step322ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step322ExitGBefore s2Step322ExitGRow 109 s2Step322ExitG_distinct s2Step322ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step322ExitGRow.payload.take 109) s2Step322ExitGRow.sign=s2Step322ExitGOut := by decide +kernel
  have hi : s2Step322ExitGRow.payload.drop 109=s2Step322ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step322ExitG_retired] at result
  exact result

private def s2Step322ExitGvBefore : Arena := s2Step322ExitFAfter

private theorem s2Step322ExitGv_Incoming : rowsOwned s2Step322ExitGvBefore [s2Step322ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step322ExitGRow,s2Step322ExitFRow,s2Step322ExitFvRow,s2Step322ExitGvRow] 3 s2Step322ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step322ExitGvBefore (fun q => (0≤q ∧ q<109) ∨ (110≤q ∧ q<621) ∨ (622≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<912)) rfl
    decide +kernel

private theorem s2Step322ExitGv_Outgoing : rowsOwned s2Step322ExitGvAfter [s2Step322ExitGvOut] :=
  hmrRows_owned_drop s2Step322ExitGvAfter [s2Step322ExitGOut,s2Step322ExitFOut,s2Step322ExitFvOut,s2Step322ExitGvOut] 3 s2Step322ExitBank_outgoingOwned

private theorem s2Step322ExitGv_distinct : (s2Step322ExitGvRow.sign::s2Step322ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step322ExitGv_owned : (s2Step322ExitGvRow.sign::s2Step322ExitGvRow.payload).toFinset⊆s2Step322ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step322ExitGvBefore (fun q => (0≤q ∧ q<109) ∨ (110≤q ∧ q<621) ∨ (622≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<912)) rfl
  decide +kernel

private theorem s2Step322ExitGv_reserved : s2Step322ExitGvBefore.reserve (∅ : Finset Wire)=some s2Step322ExitGvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step322ExitGv_checked : planRowResizeLog s2Step322ExitGvBefore s2Step322ExitGvRow 177 []=
    some (s2Step322ExitGvAfter,s2Step322ExitGvOut,growRow 771 []) := by
  have result := planRowResizeLog_of_growth s2Step322ExitGvBefore s2Step322ExitGvAfter s2Step322ExitGvRow 177 []
    s2Step322ExitGv_distinct s2Step322ExitGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step322ExitGv_reserved
  have rowEq : WindowRow.mk (s2Step322ExitGvRow.payload++[]) s2Step322ExitGvRow.sign=s2Step322ExitGvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step322ExitBank_rows : planWindowRowsLog s2Step322ExitGBefore [(s2Step322ExitGRow,109),(s2Step322ExitFRow,109),(s2Step322ExitFvRow,177),(s2Step322ExitGvRow,177)] [[],[],[],[]]=
    some (s2Step322ExitGvAfter,[s2Step322ExitGOut,s2Step322ExitFOut,s2Step322ExitFvOut,s2Step322ExitGvOut],(shrinkRow 769 s2Step322ExitGExtra ++ (shrinkRow 768 s2Step322ExitFExtra ++ (growRow 770 [] ++ (growRow 771 [] ++ []))))) := by
  have h4 : planWindowRowsLog s2Step322ExitGvAfter [] []=some (s2Step322ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step322ExitGvBefore s2Step322ExitGvAfter s2Step322ExitGvAfter
    s2Step322ExitGvRow s2Step322ExitGvOut 177 [] [] [] []
    (growRow 771 []) ([]) s2Step322ExitGv_Incoming s2Step322ExitGv_checked h4 s2Step322ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step322ExitFvBefore s2Step322ExitFvAfter s2Step322ExitGvAfter
    s2Step322ExitFvRow s2Step322ExitFvOut 177 [] [(s2Step322ExitGvRow,177)] [[]] [s2Step322ExitGvOut]
    (growRow 770 []) ((growRow 771 [] ++ [])) s2Step322ExitFv_Incoming s2Step322ExitFv_checked h3 s2Step322ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step322ExitFBefore s2Step322ExitFAfter s2Step322ExitGvAfter
    s2Step322ExitFRow s2Step322ExitFOut 109 [] [(s2Step322ExitFvRow,177),(s2Step322ExitGvRow,177)] [[],[]] [s2Step322ExitFvOut,s2Step322ExitGvOut]
    (shrinkRow 768 s2Step322ExitFExtra) ((growRow 770 [] ++ (growRow 771 [] ++ []))) s2Step322ExitF_Incoming s2Step322ExitF_checked h2 s2Step322ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step322ExitGBefore s2Step322ExitGAfter s2Step322ExitGvAfter
    s2Step322ExitGRow s2Step322ExitGOut 109 [] [(s2Step322ExitFRow,109),(s2Step322ExitFvRow,177),(s2Step322ExitGvRow,177)] [[],[],[]] [s2Step322ExitFOut,s2Step322ExitFvOut,s2Step322ExitGvOut]
    (shrinkRow 769 s2Step322ExitGExtra) ((shrinkRow 768 s2Step322ExitFExtra ++ (growRow 770 [] ++ (growRow 771 [] ++ [])))) s2Step322ExitG_Incoming s2Step322ExitG_checked h1 s2Step322ExitG_Outgoing
  exact h0

private theorem s2Step322ExitBank_checked : compileHmrBankResizeLog .exit s2Step322ExitGBefore ⟨s2Step322ExitFRow,s2Step322ExitGRow,s2Step322ExitFvRow,s2Step322ExitGvRow⟩ ⟨109,109,177,177⟩ [[],[],[],[]]=
    some (s2Step322ExitGvAfter,⟨s2Step322ExitFOut,s2Step322ExitGOut,s2Step322ExitFvOut,s2Step322ExitGvOut⟩,(shrinkRow 769 s2Step322ExitGExtra ++ (shrinkRow 768 s2Step322ExitFExtra ++ (growRow 770 [] ++ (growRow 771 [] ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step322ExitBank_rows]
  rfl

private theorem s2Step322Add0_apart : Disjoint s2Step322Add0Arena.live s2Step322Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step322Add0Arena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<912)) rfl
  decide +kernel

private theorem s2Step322Add0_card : s2Step322Add0Arena.live.card=905 := by
  decide +kernel

private theorem s2Step322Add0_borrowed : s2Step322Add0Arena.checkBorrow (hmrHybridCount s2Step322Add0Arena s2Step322Add0B.length) s2Step322Add0Work=some s2Step322Add0During := by
  have len : s2Step322Add0Work.length=hmrHybridCount s2Step322Add0Arena s2Step322Add0B.length := by
    rw [hmrHybridCount,s2Step322Add0_card]
    decide +kernel
  have nd : s2Step322Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step322Add0Arena s2Step322Add0During s2Step322Add0Work.toFinset s2Step322Add0_bounded s2Step322Add0_apart rfl

private theorem s2Step322Add0_distinct : (834::830::806::(s2Step322Add0A++s2Step322Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step322Add0_owned : (834::830::806::(s2Step322Add0A++s2Step322Add0B)).toFinset⊆s2Step322Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step322Add0Arena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<912)) rfl
  decide +kernel

private theorem s2Step322Add0_checked : compileHmrHybridCinLog s2Step322Add0Arena 830 834 806 s2Step322Add0A s2Step322Add0B s2Step322Add0Work=some s2Step322Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step322Add0Arena s2Step322Add0During 830 834 806 s2Step322Add0A s2Step322Add0B s2Step322Add0Work
    (by decide +kernel) (by decide +kernel) s2Step322Add0_distinct
    (fun q hq => s2Step322Add0_owned (List.mem_toFinset.mpr hq)) s2Step322Add0_borrowed

private theorem s2Step322Add1_apart : Disjoint s2Step322Add1Arena.live s2Step322Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step322Add1Arena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<912)) rfl
  decide +kernel

private theorem s2Step322Add1_card : s2Step322Add1Arena.live.card=905 := by
  decide +kernel

private theorem s2Step322Add1_borrowed : s2Step322Add1Arena.checkBorrow (hmrHybridCount s2Step322Add1Arena s2Step322Add1B.length) s2Step322Add1Work=some s2Step322Add1During := by
  have len : s2Step322Add1Work.length=hmrHybridCount s2Step322Add1Arena s2Step322Add1B.length := by
    rw [hmrHybridCount,s2Step322Add1_card]
    decide +kernel
  have nd : s2Step322Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step322Add1Arena s2Step322Add1During s2Step322Add1Work.toFinset s2Step322Add1_bounded s2Step322Add1_apart rfl

private theorem s2Step322Add1_distinct : (834::830::806::(s2Step322Add1A++s2Step322Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step322Add1_owned : (834::830::806::(s2Step322Add1A++s2Step322Add1B)).toFinset⊆s2Step322Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step322Add1Arena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<912)) rfl
  decide +kernel

private theorem s2Step322Add1_checked : compileHmrHybridCinLog s2Step322Add1Arena 830 834 806 s2Step322Add1A s2Step322Add1B s2Step322Add1Work=some s2Step322Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step322Add1Arena s2Step322Add1During 830 834 806 s2Step322Add1A s2Step322Add1B s2Step322Add1Work
    (by decide +kernel) (by decide +kernel) s2Step322Add1_distinct
    (fun q hq => s2Step322Add1_owned (List.mem_toFinset.mpr hq)) s2Step322Add1_borrowed

private theorem s2Step322F4_apart : Disjoint (s2Step322Add0A++s2Step322Add0B).toFinset (s2Step322Add1A++s2Step322Add1B).toFinset := by
  have nd : ((s2Step322Add0A++s2Step322Add0B)++(s2Step322Add1A++s2Step322Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step322F4_carry : s2Step322F4FlagArena.checkBorrow 1 [806]=some s2Step322Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step322F4FlagArena,s2Step322HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step322F4FlagArena,s2Step322HeadFvAfter,s2Step322Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step322F4_distinct : (807::830::834::806::((s2Step322Add0A++s2Step322Add1A)++(s2Step322Add0B++s2Step322Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step322F4_flag : s2Step322HeadFvAfter.checkBorrow 1 [834]=some s2Step322F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step322HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step322F4_owned : (807::830::((s2Step322Add0A++s2Step322Add1A)++(s2Step322Add0B++s2Step322Add1B))).toFinset⊆s2Step322HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step322HeadFvAfter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<912)) rfl
  decide +kernel

private theorem s2Step322F4_checked : compileHmrHybridF4Log s2Step322HeadFvAfter 807 830 s2Step322Add0A s2Step322Add0B s2Step322Add1A s2Step322Add1B [834] [806] s2Step322Add0Work s2Step322Add1Work=some s2Step322F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step322HeadFvAfter s2Step322F4FlagArena s2Step322Add0Arena s2Step322Add0During s2Step322Add1During 807 830
    s2Step322Add0A s2Step322Add0B s2Step322Add1A s2Step322Add1B [834] [806] s2Step322Add0Work s2Step322Add1Work
    (fun q hq => s2Step322F4_owned (List.mem_toFinset.mpr hq)) s2Step322F4_flag s2Step322F4_carry
    s2Step322F4_distinct s2Step322F4_apart s2Step322Add0_checked s2Step322Add1_checked

private theorem s2Step322Front_branch : s2Step322FrontSigmaArena.checkBorrow 1 [830]=some s2Step322HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step322FrontSigmaArena,s2Step322EntryGvAfter,s2Step322EntryFBefore,arenaWires]
  · ext q
    simp only [s2Step322FrontSigmaArena,s2Step322EntryGvAfter,s2Step322EntryFBefore,s2Step322HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step322Front_entry : HmrFrontEntryValid s2Step322EntryFBefore s2Step322FrontBank 110 176 ⟨109,109,177,177⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step322FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step322EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step322EntryFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<840) ∨ (841≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<912)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step322FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step322Front_sigma : s2Step322EntryGvAfter.checkBorrow 1 [807]=some s2Step322FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step322EntryGvAfter,s2Step322EntryFBefore,arenaWires]
  · rfl

private def s2Step322HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<814) ∨ (815≤q ∧ q<834) ∨ (835≤q ∧ q<840) ∨ (841≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<912)),Finset.filter_subset _ _⟩

private def s2Step322HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<814) ∨ (815≤q ∧ q<834) ∨ (835≤q ∧ q<840) ∨ (841≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<912)),Finset.filter_subset _ _⟩

private def s2Step322HeadFBefore : Arena := s2Step322HeadGAfter

private def s2Step322HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621],768⟩

private def s2Step322HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846],770⟩

private def s2Step322HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109],769⟩

private def s2Step322HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792],771⟩

private theorem s2Step322HeadBank_incomingDistinct : ([s2Step322HeadGRow,s2Step322HeadFRow,s2Step322HeadGvRow,s2Step322HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step322HeadF_Incoming : rowsOwned s2Step322HeadFBefore [s2Step322HeadFRow,s2Step322HeadGvRow,s2Step322HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step322HeadGRow,s2Step322HeadFRow,s2Step322HeadGvRow,s2Step322HeadFvRow] 1 s2Step322HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step322HeadFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<814) ∨ (815≤q ∧ q<834) ∨ (835≤q ∧ q<840) ∨ (841≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<912)) rfl
    decide +kernel

private theorem s2Step322HeadBank_outgoingOwned : rowsOwned s2Step322HeadFvAfter [s2Step322HeadGOut,s2Step322HeadFOut,s2Step322HeadGvOut,s2Step322HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step322HeadFvAfter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<912)) rfl
    decide +kernel

private theorem s2Step322HeadF_Outgoing : rowsOwned s2Step322HeadFvAfter [s2Step322HeadFOut,s2Step322HeadGvOut,s2Step322HeadFvOut] :=
  hmrRows_owned_drop s2Step322HeadFvAfter [s2Step322HeadGOut,s2Step322HeadFOut,s2Step322HeadGvOut,s2Step322HeadFvOut] 1 s2Step322HeadBank_outgoingOwned

private theorem s2Step322HeadF_distinct : (s2Step322HeadFRow.sign::s2Step322HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step322HeadF_owned : (s2Step322HeadFRow.sign::s2Step322HeadFRow.payload).toFinset⊆s2Step322HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step322HeadFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<814) ∨ (815≤q ∧ q<834) ∨ (835≤q ∧ q<840) ∨ (841≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<912)) rfl
  decide +kernel

private theorem s2Step322HeadF_reserved : s2Step322HeadFBefore.reserve s2Step322HeadFFresh.toFinset=some s2Step322HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step322HeadFFresh,arenaWires]
  · norm_num [s2Step322HeadFBefore,s2Step322HeadGAfter,s2Step322HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step322HeadFAfter,s2Step322HeadFBefore,s2Step322HeadGAfter,s2Step322HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step322HeadF_checked : planRowResizeLog s2Step322HeadFBefore s2Step322HeadFRow 111 s2Step322HeadFFresh=
    some (s2Step322HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 787],768⟩,growRow 768 s2Step322HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step322HeadFBefore s2Step322HeadFAfter s2Step322HeadFRow 111 s2Step322HeadFFresh
    s2Step322HeadF_distinct s2Step322HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step322HeadF_reserved
  have rowEq : WindowRow.mk (s2Step322HeadFRow.payload++s2Step322HeadFFresh) s2Step322HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 787],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step322HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<814) ∨ (815≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<912)),Finset.filter_subset _ _⟩

private def s2Step322HeadFvBefore : Arena := s2Step322HeadGvAfter

private theorem s2Step322HeadFv_Incoming : rowsOwned s2Step322HeadFvBefore [s2Step322HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step322HeadGRow,s2Step322HeadFRow,s2Step322HeadGvRow,s2Step322HeadFvRow] 3 s2Step322HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step322HeadFvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<814) ∨ (815≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<912)) rfl
    decide +kernel

private theorem s2Step322HeadFv_Outgoing : rowsOwned s2Step322HeadFvAfter [s2Step322HeadFvOut] :=
  hmrRows_owned_drop s2Step322HeadFvAfter [s2Step322HeadGOut,s2Step322HeadFOut,s2Step322HeadGvOut,s2Step322HeadFvOut] 3 s2Step322HeadBank_outgoingOwned

private theorem s2Step322HeadFv_distinct : (s2Step322HeadFvRow.sign::s2Step322HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step322HeadFv_owned : (s2Step322HeadFvRow.sign::s2Step322HeadFvRow.payload).toFinset⊆s2Step322HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step322HeadFvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<814) ∨ (815≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<912)) rfl
  decide +kernel

private theorem s2Step322HeadFv_reserved : s2Step322HeadFvBefore.reserve s2Step322HeadFvFresh.toFinset=some s2Step322HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step322HeadFvFresh,arenaWires]
  · norm_num [s2Step322HeadFvBefore,s2Step322HeadGvAfter,s2Step322HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step322HeadFvAfter,s2Step322HeadFvBefore,s2Step322HeadGvAfter,s2Step322HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step322HeadFv_checked : planRowResizeLog s2Step322HeadFvBefore s2Step322HeadFvRow 177 s2Step322HeadFvFresh=
    some (s2Step322HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814],770⟩,growRow 770 s2Step322HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step322HeadFvBefore s2Step322HeadFvAfter s2Step322HeadFvRow 177 s2Step322HeadFvFresh
    s2Step322HeadFv_distinct s2Step322HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step322HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step322HeadFvRow.payload++s2Step322HeadFvFresh) s2Step322HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step322HeadG_Incoming : rowsOwned s2Step322HeadGBefore [s2Step322HeadGRow,s2Step322HeadFRow,s2Step322HeadGvRow,s2Step322HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step322HeadGRow,s2Step322HeadFRow,s2Step322HeadGvRow,s2Step322HeadFvRow] 0 s2Step322HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step322HeadGBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<840) ∨ (841≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<912)) rfl
    decide +kernel

private theorem s2Step322HeadG_Outgoing : rowsOwned s2Step322HeadFvAfter [s2Step322HeadGOut,s2Step322HeadFOut,s2Step322HeadGvOut,s2Step322HeadFvOut] :=
  hmrRows_owned_drop s2Step322HeadFvAfter [s2Step322HeadGOut,s2Step322HeadFOut,s2Step322HeadGvOut,s2Step322HeadFvOut] 0 s2Step322HeadBank_outgoingOwned

private theorem s2Step322HeadG_distinct : (s2Step322HeadGRow.sign::s2Step322HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step322HeadG_owned : (s2Step322HeadGRow.sign::s2Step322HeadGRow.payload).toFinset⊆s2Step322HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step322HeadGBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<840) ∨ (841≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<912)) rfl
  decide +kernel

private theorem s2Step322HeadG_reserved : s2Step322HeadGBefore.reserve s2Step322HeadGFresh.toFinset=some s2Step322HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step322HeadGFresh,arenaWires]
  · norm_num [s2Step322HeadGBefore,s2Step322HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step322HeadGAfter,s2Step322HeadGBefore,s2Step322HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step322HeadG_checked : planRowResizeLog s2Step322HeadGBefore s2Step322HeadGRow 111 s2Step322HeadGFresh=
    some (s2Step322HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 827],769⟩,growRow 769 s2Step322HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step322HeadGBefore s2Step322HeadGAfter s2Step322HeadGRow 111 s2Step322HeadGFresh
    s2Step322HeadG_distinct s2Step322HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step322HeadG_reserved
  have rowEq : WindowRow.mk (s2Step322HeadGRow.payload++s2Step322HeadGFresh) s2Step322HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 827],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step322HeadGvBefore : Arena := s2Step322HeadFAfter

private theorem s2Step322HeadGv_Incoming : rowsOwned s2Step322HeadGvBefore [s2Step322HeadGvRow,s2Step322HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step322HeadGRow,s2Step322HeadFRow,s2Step322HeadGvRow,s2Step322HeadFvRow] 2 s2Step322HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step322HeadGvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<814) ∨ (815≤q ∧ q<834) ∨ (835≤q ∧ q<840) ∨ (841≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<912)) rfl
    decide +kernel

private theorem s2Step322HeadGv_Outgoing : rowsOwned s2Step322HeadFvAfter [s2Step322HeadGvOut,s2Step322HeadFvOut] :=
  hmrRows_owned_drop s2Step322HeadFvAfter [s2Step322HeadGOut,s2Step322HeadFOut,s2Step322HeadGvOut,s2Step322HeadFvOut] 2 s2Step322HeadBank_outgoingOwned

private theorem s2Step322HeadGv_distinct : (s2Step322HeadGvRow.sign::s2Step322HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step322HeadGv_owned : (s2Step322HeadGvRow.sign::s2Step322HeadGvRow.payload).toFinset⊆s2Step322HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step322HeadGvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<814) ∨ (815≤q ∧ q<834) ∨ (835≤q ∧ q<840) ∨ (841≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<912)) rfl
  decide +kernel

private theorem s2Step322HeadGv_reserved : s2Step322HeadGvBefore.reserve s2Step322HeadGvFresh.toFinset=some s2Step322HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step322HeadGvFresh,arenaWires]
  · norm_num [s2Step322HeadGvBefore,s2Step322HeadFAfter,s2Step322HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step322HeadGvAfter,s2Step322HeadGvBefore,s2Step322HeadFAfter,s2Step322HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step322HeadGv_checked : planRowResizeLog s2Step322HeadGvBefore s2Step322HeadGvRow 177 s2Step322HeadGvFresh=
    some (s2Step322HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840],771⟩,growRow 771 s2Step322HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step322HeadGvBefore s2Step322HeadGvAfter s2Step322HeadGvRow 177 s2Step322HeadGvFresh
    s2Step322HeadGv_distinct s2Step322HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step322HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step322HeadGvRow.payload++s2Step322HeadGvFresh) s2Step322HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step322HeadBank_rows : planWindowRowsLog s2Step322HeadGBefore [(s2Step322HeadGRow,111),(s2Step322HeadFRow,111),(s2Step322HeadGvRow,177),(s2Step322HeadFvRow,177)] [s2Step322HeadGFresh,s2Step322HeadFFresh,s2Step322HeadGvFresh,s2Step322HeadFvFresh]=
    some (s2Step322HeadFvAfter,[s2Step322HeadGOut,s2Step322HeadFOut,s2Step322HeadGvOut,s2Step322HeadFvOut],(growRow 769 s2Step322HeadGFresh ++ (growRow 768 s2Step322HeadFFresh ++ (growRow 771 s2Step322HeadGvFresh ++ (growRow 770 s2Step322HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step322HeadFvAfter [] []=some (s2Step322HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step322HeadFvBefore s2Step322HeadFvAfter s2Step322HeadFvAfter
    s2Step322HeadFvRow s2Step322HeadFvOut 177 s2Step322HeadFvFresh [] [] []
    (growRow 770 s2Step322HeadFvFresh) ([]) s2Step322HeadFv_Incoming s2Step322HeadFv_checked h4 s2Step322HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step322HeadGvBefore s2Step322HeadGvAfter s2Step322HeadFvAfter
    s2Step322HeadGvRow s2Step322HeadGvOut 177 s2Step322HeadGvFresh [(s2Step322HeadFvRow,177)] [s2Step322HeadFvFresh] [s2Step322HeadFvOut]
    (growRow 771 s2Step322HeadGvFresh) ((growRow 770 s2Step322HeadFvFresh ++ [])) s2Step322HeadGv_Incoming s2Step322HeadGv_checked h3 s2Step322HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step322HeadFBefore s2Step322HeadFAfter s2Step322HeadFvAfter
    s2Step322HeadFRow s2Step322HeadFOut 111 s2Step322HeadFFresh [(s2Step322HeadGvRow,177),(s2Step322HeadFvRow,177)] [s2Step322HeadGvFresh,s2Step322HeadFvFresh] [s2Step322HeadGvOut,s2Step322HeadFvOut]
    (growRow 768 s2Step322HeadFFresh) ((growRow 771 s2Step322HeadGvFresh ++ (growRow 770 s2Step322HeadFvFresh ++ []))) s2Step322HeadF_Incoming s2Step322HeadF_checked h2 s2Step322HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step322HeadGBefore s2Step322HeadGAfter s2Step322HeadFvAfter
    s2Step322HeadGRow s2Step322HeadGOut 111 s2Step322HeadGFresh [(s2Step322HeadFRow,111),(s2Step322HeadGvRow,177),(s2Step322HeadFvRow,177)] [s2Step322HeadFFresh,s2Step322HeadGvFresh,s2Step322HeadFvFresh] [s2Step322HeadFOut,s2Step322HeadGvOut,s2Step322HeadFvOut]
    (growRow 769 s2Step322HeadGFresh) ((growRow 768 s2Step322HeadFFresh ++ (growRow 771 s2Step322HeadGvFresh ++ (growRow 770 s2Step322HeadFvFresh ++ [])))) s2Step322HeadG_Incoming s2Step322HeadG_checked h1 s2Step322HeadG_Outgoing
  exact h0

private theorem s2Step322HeadBank_checked : compileHmrBankResizeLog .headroom s2Step322HeadGBefore ⟨s2Step322HeadFRow,s2Step322HeadGRow,s2Step322HeadFvRow,s2Step322HeadGvRow⟩ ⟨111,111,177,177⟩ [s2Step322HeadGFresh,s2Step322HeadFFresh,s2Step322HeadGvFresh,s2Step322HeadFvFresh]=
    some (s2Step322HeadFvAfter,⟨s2Step322HeadFOut,s2Step322HeadGOut,s2Step322HeadFvOut,s2Step322HeadGvOut⟩,(growRow 769 s2Step322HeadGFresh ++ (growRow 768 s2Step322HeadFFresh ++ (growRow 771 s2Step322HeadGvFresh ++ (growRow 770 s2Step322HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step322HeadBank_rows]
  rfl

private theorem s2Step322Front_checked : compileHmrSourceFrontLog s2Step322EntryFBefore s2Step322FrontBank 110 176 ⟨109,109,177,177⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step322FrontLog=some s2Step322FrontPlan := by
  have pairEq : s2Step322FrontPair=⟨s2Step322HeadFRow,s2Step322HeadGRow,s2Step322HeadFvRow,s2Step322HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step322FrontHead=⟨s2Step322ExitFRow,s2Step322ExitGRow,s2Step322ExitFvRow,s2Step322ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step322Add0A=s2Step322FrontHead.f.wires := by decide +kernel
  have gEq : s2Step322Add0B=s2Step322FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step322Add1A=s2Step322FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step322Add1B=s2Step322FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step322EntryFBefore s2Step322FrontBank 110 176 ⟨109,109,177,177⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step322FrontLog s2Step322FrontPlan
  · exact s2Step322Front_entry
  · exact s2Step322EntryBank_checked
  · exact s2Step322Front_sigma
  · rfl
  · exact s2Step322Front_branch
  · rfl
  · simpa only [s2Step322FrontPlan,pairEq] using s2Step322HeadBank_checked
  · simpa only [s2Step322FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step322F4_checked
  · exact s2Step322Counter_checked
  · rfl
  · simpa only [s2Step322FrontPlan,headEq] using s2Step322ExitBank_checked

private theorem s2Step322Complete_explicit_checked : compileHmrEarlyStepLog s2Step322EntryFBefore s2Step322FrontBank 110 176 ⟨109,109,177,177⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911] 60 s2Step322CompleteLog=some s2Step322CompletePlan := by
  let Q := s2Step322EarlyControlPlan
  have hq := s2Step322EarlyControl_plan_checked
  have fv1 : s2Step322CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step322CompleteOut.fv.payload[2]?.getD s2Step322CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step322CompleteOut.fv.payload[3]?.getD s2Step322CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step322CompleteOut.fv.payload[4]?.getD s2Step322CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step322EntryFBefore s2Step322EarlyControlArena s2Step322FrontBank 110 176 ⟨109,109,177,177⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911] 60 s2Step322CompleteLog s2Step322FrontPlan Q
    s2Step322Front_checked s2Step322Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step322Complete_owned s2Step322Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step322EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911] 777 807 s2Step322CompleteOut.fv.second (s2Step322CompleteOut.fv.payload[2]?.getD s2Step322CompleteOut.fv.sign) (s2Step322CompleteOut.fv.payload[3]?.getD s2Step322CompleteOut.fv.sign) (s2Step322CompleteOut.fv.payload[4]?.getD s2Step322CompleteOut.fv.sign) 830 60 s2Step322EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep322Arena : Arena := s2Step322EntryFBefore
def s2PrivateStep322Bank : WindowBank := s2Step322FrontBank
def s2PrivateStep322Spec : HmrSourceWalkStepLog := ⟨110,176,⟨109,109,177,177⟩,60,.early s2Step322CompleteLog⟩
def s2PrivateStep322Plan : HmrSourceStepPlan := .early s2Step322CompletePlan
theorem s2PrivateStep322_source : s2PrivateStep322Spec=s2ObservedLogs320[2] := rfl
theorem s2PrivateStep322_checked : compileHmrSourceStepLog s2PrivateStep322Arena s2PrivateStep322Bank
    s2PrivateStep322Spec.fgWidth s2PrivateStep322Spec.vWidth s2PrivateStep322Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911]
    6 498 322 s2PrivateStep322Spec.need none s2PrivateStep322Spec.log=some s2PrivateStep322Plan := by
  change compileHmrSourceStepLog s2Step322EntryFBefore s2Step322FrontBank 110 176 ⟨109,109,177,177⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911] 6 498 322 60 none (.early s2Step322CompleteLog)=some (.early s2Step322CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 322<498)]
  rw [s2Step322Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
