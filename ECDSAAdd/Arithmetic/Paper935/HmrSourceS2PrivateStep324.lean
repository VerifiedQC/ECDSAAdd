import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep322
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

private def s2Step324CompleteMoves : List (Wire × Wire) := [(829,620)]

private def s2Step324EarlyControlLog : HmrEarlyControlLog := ⟨[829, 867, 827, 807, 787],[834],[806],[784, 800, 894, 896, 901, 903],[]⟩

private def s2Step324FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [807], [], []],[[787], [827], [867], [879]],[[], [], [], []]⟩,[830],[885],[834],[806],[784, 800, 894, 896, 901, 903, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[784, 800, 894, 896, 901, 903, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[834, 806, 784, 800]⟩

private def s2Step324CompleteLog : HmrEarlyStepLog := ⟨s2Step324FrontLog,s2Step324CompleteMoves,s2Step324EarlyControlLog⟩

private def s2Step324ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619],768⟩

private def s2Step324ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879],770⟩

private def s2Step324ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107],769⟩

private def s2Step324ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840],771⟩

private def s2Step324FrontOut : WindowBank := ⟨s2Step324ExitFOut,s2Step324ExitGOut,s2Step324ExitFvOut,s2Step324ExitGvOut⟩

private def s2Step324CompleteOut : WindowBank := s2Step324FrontOut.repacked s2Step324CompleteMoves

private def s2Step324EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step324EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step324EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step324EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step324EarlyControlPositiveArena,[834],s2Step324EarlyControlEqualityArena,[806],⟨⟨830,false⟩,[⟨⟨834,false⟩,806⟩]⟩⟩

private def s2Step324EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step324EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step324EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step324EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step324EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step324EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step324EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,829⟩,⟨⟨774,false⟩,867⟩,⟨⟨775,false⟩,827⟩,⟨⟨776,false⟩,807⟩,⟨⟨777,false⟩,787⟩]⟩

private def s2Step324EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step324EarlyControlZeroArena,s2Step324EarlyControlZeroPlan,s2Step324EarlyControlClassPlan,s2Step324EarlyControlFlagArena,s2Step324EarlyControlFittedArena,s2Step324EarlyControlHistoryArena,s2Step324EarlyControlSigmaArena,s2Step324EarlyControlOutputArena,s2Step324EarlyControlLog⟩

private def s2Step324CounterWork : List Wire := [834, 806, 784, 800]

private theorem s2Step324Counter_bounded : s2Step324CounterWork.toFinset⊆arenaWires := by norm_num [s2Step324CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step324HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step324CounterDuring : Arena := ⟨s2Step324HeadFvAfter.live∪s2Step324CounterWork.toFinset,Finset.union_subset s2Step324HeadFvAfter.bounded s2Step324Counter_bounded⟩

private def s2Step324EntryFFresh : List Wire := []

private def s2Step324EntryFvFresh : List Wire := []

private def s2Step324EntryGFresh : List Wire := [807]

private def s2Step324EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<879) ∨ (880≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step324EntryGvAfter : Arena := s2Step324EntryGAfter

private def s2Step324EntryGvFresh : List Wire := []

private def s2Step324ExitFExtra : List Wire := [620, 827]

private def s2Step324ExitGExtra : List Wire := [807, 787]

private def s2Step324ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<620) ∨ (621≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step324ExitGvExtra : List Wire := [867]

private def s2Step324Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step324Add0Work : List Wire := [784, 800, 894, 896, 901, 903, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step324Add0_bounded : s2Step324Add0Work.toFinset⊆arenaWires := by
  have h : s2Step324Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step324Add0During : Arena := ⟨s2Step324Add0Arena.live∪s2Step324Add0Work.toFinset,Finset.union_subset s2Step324Add0Arena.bounded s2Step324Add0_bounded⟩

private def s2Step324Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step324Add1Work : List Wire := [784, 800, 894, 896, 901, 903, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step324Add1_bounded : s2Step324Add1Work.toFinset⊆arenaWires := by
  have h : s2Step324Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step324Add1During : Arena := ⟨s2Step324Add1Arena.live∪s2Step324Add1Work.toFinset,Finset.union_subset s2Step324Add1Arena.bounded s2Step324Add1_bounded⟩

private def s2Step324F4FlagArena : Arena := ⟨s2Step324HeadFvAfter.live∪{834},Finset.union_subset s2Step324HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step324F4Plan : HmrHybridF4Plan := ⟨s2Step324F4FlagArena,[834],s2Step324Add0Arena,[806],s2Step324Add0During,s2Step324Add0Work,s2Step324Add1During,s2Step324Add1Work⟩

private def s2Step324HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 827],768⟩

private def s2Step324HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879],770⟩

private def s2Step324HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 807, 787],769⟩

private def s2Step324HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 867],771⟩

private def s2Step324FrontHead : WindowBank := ⟨s2Step324HeadFOut,s2Step324HeadGOut,s2Step324HeadFvOut,s2Step324HeadGvOut⟩

private def s2Step324EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620],768⟩

private def s2Step324EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814],770⟩

private def s2Step324EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 807],769⟩

private def s2Step324EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840],771⟩

private def s2Step324FrontPair : WindowBank := ⟨s2Step324EntryFOut,s2Step324EntryGOut,s2Step324EntryFvOut,s2Step324EntryGvOut⟩

private def s2Step324FrontSigmaArena : Arena := ⟨s2Step324EntryGvAfter.live∪{830},Finset.union_subset s2Step324EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step324HeadFFresh : List Wire := [827]

private def s2Step324HeadFvFresh : List Wire := [879]

private def s2Step324HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<879) ∨ (880≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step324HeadGFresh : List Wire := [787]

private def s2Step324HeadGvFresh : List Wire := [867]

private def s2Step324FrontPlan : HmrSourceFront := ⟨s2Step324EntryGvAfter,s2Step324FrontPair,(growRow 768 s2Step324EntryFFresh ++ (growRow 769 s2Step324EntryGFresh ++ (growRow 770 s2Step324EntryFvFresh ++ (growRow 771 s2Step324EntryGvFresh ++ [])))),s2Step324FrontSigmaArena,[830],s2Step324HeadGBefore,[885],
  s2Step324HeadFvAfter,s2Step324FrontHead,(growRow 769 s2Step324HeadGFresh ++ (growRow 768 s2Step324HeadFFresh ++ (growRow 771 s2Step324HeadGvFresh ++ (growRow 770 s2Step324HeadFvFresh ++ [])))),s2Step324F4Plan,s2Step324CounterDuring,s2Step324CounterWork,s2Step324ExitGvAfter,s2Step324FrontOut,(shrinkRow 769 s2Step324ExitGExtra ++ (shrinkRow 768 s2Step324ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step324ExitGvExtra ++ []))))⟩

private def s2Step324CompletePlan : HmrEarlyStepPlan := ⟨s2Step324FrontPlan,s2Step324EarlyControlArena,s2Step324EarlyControlPlan,s2Step324CompleteMoves⟩

private theorem s2Step324Complete_apart : List.Disjoint (s2Step324CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [830, 885, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] := by
  have nd : ((s2Step324CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[830, 885, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step324Complete_owned : (s2Step324CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step324EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step324EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private def s2Step324CompleteMoveArena : Arena := ⟨s2Step324ExitGvAfter.live∪{620},Finset.union_subset s2Step324ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step324Complete_repack : s2Step324ExitGvAfter.checkRepack s2Step324CompleteMoves=some s2Step324EarlyControlArena := by
  have owned : 829∈s2Step324ExitGvAfter.live := by norm_num [s2Step324ExitGvAfter,arenaWires]
  have reserve : s2Step324ExitGvAfter.reserve {620}=some s2Step324CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step324ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step324CompleteMoveArena.retireSet {829}=s2Step324EarlyControlArena := by
    unfold Arena.retireSet s2Step324EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step324CompleteMoveArena,s2Step324ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step324CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step324CompleteMoveArena.retireSet {829}).checkRepack []=some s2Step324EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step324EarlyControl_branchOwned : ([885] : List Wire).toFinset⊆s2Step324EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step324EarlyControlSigmaArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step324EarlyControl_branch : compileHmrBranchRetirement s2Step324EarlyControlSigmaArena 885=some s2Step324EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step324EarlyControl_branchOwned
  · ext q
    simp [s2Step324EarlyControlOutputArena,s2Step324EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step324EarlyControl_classEqualityBorrow : s2Step324EarlyControlPositiveArena.checkBorrow (([830, 834] : List Wire).length-1) s2Step324EarlyControlLog.classWork=some s2Step324EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step324EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step324EarlyControlPositiveArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step324EarlyControlEqualityArena,s2Step324EarlyControlPositiveArena,s2Step324EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step324EarlyControl_classEqualityOwned : ([830, 834] : List Wire).toFinset⊆s2Step324EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step324EarlyControlPositiveArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step324EarlyControl_classEquality : compileHmrEqualityLog s2Step324EarlyControlPositiveArena [830, 834] 0 s2Step324EarlyControlLog.classWork=some (s2Step324EarlyControlEqualityArena,s2Step324EarlyControlLog.classWork,s2Step324EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step324EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step324EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step324EarlyControl_classOwned : ([777, 787, 830] : List Wire).toFinset⊆s2Step324EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step324EarlyControlZeroArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step324EarlyControl_positiveBorrow : s2Step324EarlyControlZeroArena.checkBorrow (1) s2Step324EarlyControlLog.positiveWork=some s2Step324EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step324EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step324EarlyControlZeroArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step324EarlyControlPositiveArena,s2Step324EarlyControlZeroArena,s2Step324EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step324EarlyControl_class : compileHmrSourceClassLog s2Step324EarlyControlZeroArena false 777 s2Step324EarlyControlZeroPlan.top 0 830 s2Step324EarlyControlLog.positiveWork s2Step324EarlyControlLog.classWork=some s2Step324EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step324EarlyControlClassPlan s2Step324EarlyControlZeroArena false 777 s2Step324EarlyControlZeroPlan.top 0 830
  constructor
  · decide +kernel
  · exact s2Step324EarlyControl_classOwned
  · exact s2Step324EarlyControl_positiveBorrow
  · exact s2Step324EarlyControl_classEquality

private theorem s2Step324EarlyControl_entryRecordOwned : ([885, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step324EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step324EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step324EarlyControl_entrySigmaOwned : ([830, 254] : List Wire).toFinset⊆s2Step324EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step324EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step324EarlyControl_fitBorrow : s2Step324EarlyControlFlagArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step324EarlyControlLog.recordFresh=some s2Step324EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step324EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step324EarlyControlFlagArena (fun q => (0≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step324EarlyControlFittedArena,s2Step324EarlyControlFlagArena,s2Step324EarlyControlLog,arenaWires]

private theorem s2Step324EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step324EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step324EarlyControlFlagArena (fun q => (0≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step324EarlyControl_fit : compileHmrRecordGrowLog s2Step324EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step324EarlyControlLog.recordFresh=some s2Step324EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step324EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step324EarlyControl_fitBorrow

private theorem s2Step324EarlyControl_flagsBorrow : s2Step324EarlyControlEqualityArena.checkBorrow (6) s2Step324EarlyControlLog.flagWork=some s2Step324EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step324EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step324EarlyControlEqualityArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step324EarlyControlFlagArena,s2Step324EarlyControlEqualityArena,s2Step324EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step324EarlyControl_flagsOwned : ([806, 253, 252, 251] : List Wire).toFinset⊆s2Step324EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step324EarlyControlEqualityArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step324EarlyControl_flags : compileHmrFlagsLog s2Step324EarlyControlClassPlan.equalityArena s2Step324EarlyControlClassPlan.equality.top 253 252 251 s2Step324EarlyControlLog.flagWork=some s2Step324EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step324EarlyControl_flagsOwned⟩
  · exact s2Step324EarlyControl_flagsBorrow

private theorem s2Step324EarlyControl_historyBorrow : s2Step324EarlyControlArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step324EarlyControlLog.recordFresh=some s2Step324EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step324EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step324EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step324EarlyControlHistoryArena,s2Step324EarlyControlArena,s2Step324EarlyControlLog,arenaWires]

private theorem s2Step324EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step324EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step324EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step324EarlyControl_history : compileHmrRecordGrowLog s2Step324EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step324EarlyControlLog.recordFresh=some s2Step324EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step324EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step324EarlyControl_historyBorrow

private theorem s2Step324EarlyControl_sigmaOwned : ([254, 830] : List Wire).toFinset⊆s2Step324EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step324EarlyControlHistoryArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step324EarlyControl_sigmaReleaseOwned : ([830] : List Wire).toFinset⊆s2Step324EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step324EarlyControlHistoryArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step324EarlyControl_sigmaRelease : s2Step324EarlyControlHistoryArena.release {830} (fun _ => false)=some s2Step324EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step324EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step324EarlyControlSigmaArena,s2Step324EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step324EarlyControl_sigma : compileHmrSigmaDropLog s2Step324EarlyControlHistoryArena false 0 0 254 830 []=some s2Step324EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step324EarlyControl_sigmaOwned⟩
  · exact s2Step324EarlyControl_sigmaRelease

private theorem s2Step324EarlyControl_zeroBorrow : s2Step324EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step324EarlyControlLog.zeroWork=some s2Step324EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step324EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step324EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step324EarlyControlZeroArena,s2Step324EarlyControlArena,s2Step324EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step324EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step324EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step324EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step324EarlyControl_zero : compileHmrEqualityLog s2Step324EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step324EarlyControlLog.zeroWork=some (s2Step324EarlyControlZeroArena,s2Step324EarlyControlLog.zeroWork,s2Step324EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step324EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step324EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step324EarlyControl_logged : s2Step324EarlyControlPlan.Logged s2Step324EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 830 254 253 252 251 885 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step324EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step324EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step324EarlyControl_zero
  · exact s2Step324EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step324EarlyControl_flags
  · exact s2Step324EarlyControl_fit
  · exact s2Step324EarlyControl_history
  · exact s2Step324EarlyControl_sigma
  · exact s2Step324EarlyControl_branch

private theorem s2Step324EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step324EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 830 254 253 252 251 885 60 s2Step324EarlyControlLog=some s2Step324EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step324EarlyControlPlan s2Step324EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 830 254 253 252 251 885 60 s2Step324EarlyControl_logged

private def s2Step324EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<879) ∨ (880≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step324EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620],768⟩

private def s2Step324EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814],770⟩

private def s2Step324EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107],769⟩

private def s2Step324EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840],771⟩

private def s2Step324FrontBank : WindowBank := ⟨s2Step324EntryFRow,s2Step324EntryGRow,s2Step324EntryFvRow,s2Step324EntryGvRow⟩

private def s2Step324Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 827, 768]

private def s2Step324Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 807, 787, 769]

private def s2Step324Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 770]

private def s2Step324Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 867, 771]

private theorem s2Step324Counter_apart : Disjoint s2Step324HeadFvAfter.live s2Step324CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step324HeadFvAfter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step324Counter_borrowed : s2Step324HeadFvAfter.checkBorrow 4 s2Step324CounterWork=some s2Step324CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step324HeadFvAfter s2Step324CounterDuring s2Step324CounterWork.toFinset s2Step324Counter_bounded s2Step324Counter_apart rfl

private theorem s2Step324Counter_owned : (830::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step324HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step324HeadFvAfter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step324Counter_checked : compileHmrCounterStepLog s2Step324HeadFvAfter true 830 [772, 773, 774, 775, 776, 777] s2Step324CounterWork=some s2Step324CounterDuring := by
  have owned : ∀q∈830::[772, 773, 774, 775, 776, 777],q∈s2Step324HeadFvAfter.live := fun q hq => s2Step324Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step324Counter_borrowed

private def s2Step324EntryFAfter : Arena := s2Step324EntryFBefore

private theorem s2Step324EntryBank_incomingDistinct : ([s2Step324EntryFRow,s2Step324EntryGRow,s2Step324EntryFvRow,s2Step324EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step324EntryF_Incoming : rowsOwned s2Step324EntryFBefore [s2Step324EntryFRow,s2Step324EntryGRow,s2Step324EntryFvRow,s2Step324EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step324EntryFRow,s2Step324EntryGRow,s2Step324EntryFvRow,s2Step324EntryGvRow] 0 s2Step324EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step324EntryFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<879) ∨ (880≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step324EntryBank_outgoingOwned : rowsOwned s2Step324EntryGvAfter [s2Step324EntryFOut,s2Step324EntryGOut,s2Step324EntryFvOut,s2Step324EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step324EntryGvAfter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<879) ∨ (880≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step324EntryF_Outgoing : rowsOwned s2Step324EntryGvAfter [s2Step324EntryFOut,s2Step324EntryGOut,s2Step324EntryFvOut,s2Step324EntryGvOut] :=
  hmrRows_owned_drop s2Step324EntryGvAfter [s2Step324EntryFOut,s2Step324EntryGOut,s2Step324EntryFvOut,s2Step324EntryGvOut] 0 s2Step324EntryBank_outgoingOwned

private theorem s2Step324EntryF_distinct : (s2Step324EntryFRow.sign::s2Step324EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step324EntryF_owned : (s2Step324EntryFRow.sign::s2Step324EntryFRow.payload).toFinset⊆s2Step324EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step324EntryFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<879) ∨ (880≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step324EntryF_reserved : s2Step324EntryFBefore.reserve s2Step324EntryFFresh.toFinset=some s2Step324EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step324EntryFFresh,arenaWires]
  · norm_num [s2Step324EntryFBefore,s2Step324EntryFFresh,arenaWires]
  · simp only [s2Step324EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step324EntryF_checked : planRowResizeLog s2Step324EntryFBefore s2Step324EntryFRow 109 s2Step324EntryFFresh=
    some (s2Step324EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620],768⟩,growRow 768 s2Step324EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step324EntryFBefore s2Step324EntryFAfter s2Step324EntryFRow 109 s2Step324EntryFFresh
    s2Step324EntryF_distinct s2Step324EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step324EntryF_reserved
  have rowEq : WindowRow.mk (s2Step324EntryFRow.payload++s2Step324EntryFFresh) s2Step324EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step324EntryFvAfter : Arena := s2Step324EntryGAfter

private def s2Step324EntryFvBefore : Arena := s2Step324EntryGAfter

private theorem s2Step324EntryFv_Incoming : rowsOwned s2Step324EntryFvBefore [s2Step324EntryFvRow,s2Step324EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step324EntryFRow,s2Step324EntryGRow,s2Step324EntryFvRow,s2Step324EntryGvRow] 2 s2Step324EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step324EntryFvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<879) ∨ (880≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step324EntryFv_Outgoing : rowsOwned s2Step324EntryGvAfter [s2Step324EntryFvOut,s2Step324EntryGvOut] :=
  hmrRows_owned_drop s2Step324EntryGvAfter [s2Step324EntryFOut,s2Step324EntryGOut,s2Step324EntryFvOut,s2Step324EntryGvOut] 2 s2Step324EntryBank_outgoingOwned

private theorem s2Step324EntryFv_distinct : (s2Step324EntryFvRow.sign::s2Step324EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step324EntryFv_owned : (s2Step324EntryFvRow.sign::s2Step324EntryFvRow.payload).toFinset⊆s2Step324EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step324EntryFvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<879) ∨ (880≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step324EntryFv_reserved : s2Step324EntryFvBefore.reserve s2Step324EntryFvFresh.toFinset=some s2Step324EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step324EntryFvFresh,arenaWires]
  · norm_num [s2Step324EntryFvBefore,s2Step324EntryGAfter,s2Step324EntryFvFresh,arenaWires]
  · simp only [s2Step324EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step324EntryFv_checked : planRowResizeLog s2Step324EntryFvBefore s2Step324EntryFvRow 177 s2Step324EntryFvFresh=
    some (s2Step324EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814],770⟩,growRow 770 s2Step324EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step324EntryFvBefore s2Step324EntryFvAfter s2Step324EntryFvRow 177 s2Step324EntryFvFresh
    s2Step324EntryFv_distinct s2Step324EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step324EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step324EntryFvRow.payload++s2Step324EntryFvFresh) s2Step324EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step324EntryGBefore : Arena := s2Step324EntryFBefore

private theorem s2Step324EntryG_Incoming : rowsOwned s2Step324EntryGBefore [s2Step324EntryGRow,s2Step324EntryFvRow,s2Step324EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step324EntryFRow,s2Step324EntryGRow,s2Step324EntryFvRow,s2Step324EntryGvRow] 1 s2Step324EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step324EntryGBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<879) ∨ (880≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step324EntryG_Outgoing : rowsOwned s2Step324EntryGvAfter [s2Step324EntryGOut,s2Step324EntryFvOut,s2Step324EntryGvOut] :=
  hmrRows_owned_drop s2Step324EntryGvAfter [s2Step324EntryFOut,s2Step324EntryGOut,s2Step324EntryFvOut,s2Step324EntryGvOut] 1 s2Step324EntryBank_outgoingOwned

private theorem s2Step324EntryG_distinct : (s2Step324EntryGRow.sign::s2Step324EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step324EntryG_owned : (s2Step324EntryGRow.sign::s2Step324EntryGRow.payload).toFinset⊆s2Step324EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step324EntryGBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<879) ∨ (880≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step324EntryG_reserved : s2Step324EntryGBefore.reserve s2Step324EntryGFresh.toFinset=some s2Step324EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step324EntryGFresh,arenaWires]
  · norm_num [s2Step324EntryGBefore,s2Step324EntryFBefore,s2Step324EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step324EntryGAfter,s2Step324EntryGBefore,s2Step324EntryFBefore,s2Step324EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step324EntryG_checked : planRowResizeLog s2Step324EntryGBefore s2Step324EntryGRow 109 s2Step324EntryGFresh=
    some (s2Step324EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 807],769⟩,growRow 769 s2Step324EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step324EntryGBefore s2Step324EntryGAfter s2Step324EntryGRow 109 s2Step324EntryGFresh
    s2Step324EntryG_distinct s2Step324EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step324EntryG_reserved
  have rowEq : WindowRow.mk (s2Step324EntryGRow.payload++s2Step324EntryGFresh) s2Step324EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 807],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step324EntryGvBefore : Arena := s2Step324EntryGAfter

private theorem s2Step324EntryGv_Incoming : rowsOwned s2Step324EntryGvBefore [s2Step324EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step324EntryFRow,s2Step324EntryGRow,s2Step324EntryFvRow,s2Step324EntryGvRow] 3 s2Step324EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step324EntryGvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<879) ∨ (880≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step324EntryGv_Outgoing : rowsOwned s2Step324EntryGvAfter [s2Step324EntryGvOut] :=
  hmrRows_owned_drop s2Step324EntryGvAfter [s2Step324EntryFOut,s2Step324EntryGOut,s2Step324EntryFvOut,s2Step324EntryGvOut] 3 s2Step324EntryBank_outgoingOwned

private theorem s2Step324EntryGv_distinct : (s2Step324EntryGvRow.sign::s2Step324EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step324EntryGv_owned : (s2Step324EntryGvRow.sign::s2Step324EntryGvRow.payload).toFinset⊆s2Step324EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step324EntryGvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<879) ∨ (880≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step324EntryGv_reserved : s2Step324EntryGvBefore.reserve s2Step324EntryGvFresh.toFinset=some s2Step324EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step324EntryGvFresh,arenaWires]
  · norm_num [s2Step324EntryGvBefore,s2Step324EntryGAfter,s2Step324EntryGvFresh,arenaWires]
  · simp only [s2Step324EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step324EntryGv_checked : planRowResizeLog s2Step324EntryGvBefore s2Step324EntryGvRow 177 s2Step324EntryGvFresh=
    some (s2Step324EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840],771⟩,growRow 771 s2Step324EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step324EntryGvBefore s2Step324EntryGvAfter s2Step324EntryGvRow 177 s2Step324EntryGvFresh
    s2Step324EntryGv_distinct s2Step324EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step324EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step324EntryGvRow.payload++s2Step324EntryGvFresh) s2Step324EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step324EntryBank_rows : planWindowRowsLog s2Step324EntryFBefore [(s2Step324EntryFRow,109),(s2Step324EntryGRow,109),(s2Step324EntryFvRow,177),(s2Step324EntryGvRow,177)] [s2Step324EntryFFresh,s2Step324EntryGFresh,s2Step324EntryFvFresh,s2Step324EntryGvFresh]=
    some (s2Step324EntryGvAfter,[s2Step324EntryFOut,s2Step324EntryGOut,s2Step324EntryFvOut,s2Step324EntryGvOut],(growRow 768 s2Step324EntryFFresh ++ (growRow 769 s2Step324EntryGFresh ++ (growRow 770 s2Step324EntryFvFresh ++ (growRow 771 s2Step324EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step324EntryGvAfter [] []=some (s2Step324EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step324EntryGvBefore s2Step324EntryGvAfter s2Step324EntryGvAfter
    s2Step324EntryGvRow s2Step324EntryGvOut 177 s2Step324EntryGvFresh [] [] []
    (growRow 771 s2Step324EntryGvFresh) ([]) s2Step324EntryGv_Incoming s2Step324EntryGv_checked h4 s2Step324EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step324EntryFvBefore s2Step324EntryFvAfter s2Step324EntryGvAfter
    s2Step324EntryFvRow s2Step324EntryFvOut 177 s2Step324EntryFvFresh [(s2Step324EntryGvRow,177)] [s2Step324EntryGvFresh] [s2Step324EntryGvOut]
    (growRow 770 s2Step324EntryFvFresh) ((growRow 771 s2Step324EntryGvFresh ++ [])) s2Step324EntryFv_Incoming s2Step324EntryFv_checked h3 s2Step324EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step324EntryGBefore s2Step324EntryGAfter s2Step324EntryGvAfter
    s2Step324EntryGRow s2Step324EntryGOut 109 s2Step324EntryGFresh [(s2Step324EntryFvRow,177),(s2Step324EntryGvRow,177)] [s2Step324EntryFvFresh,s2Step324EntryGvFresh] [s2Step324EntryFvOut,s2Step324EntryGvOut]
    (growRow 769 s2Step324EntryGFresh) ((growRow 770 s2Step324EntryFvFresh ++ (growRow 771 s2Step324EntryGvFresh ++ []))) s2Step324EntryG_Incoming s2Step324EntryG_checked h2 s2Step324EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step324EntryFBefore s2Step324EntryFAfter s2Step324EntryGvAfter
    s2Step324EntryFRow s2Step324EntryFOut 109 s2Step324EntryFFresh [(s2Step324EntryGRow,109),(s2Step324EntryFvRow,177),(s2Step324EntryGvRow,177)] [s2Step324EntryGFresh,s2Step324EntryFvFresh,s2Step324EntryGvFresh] [s2Step324EntryGOut,s2Step324EntryFvOut,s2Step324EntryGvOut]
    (growRow 768 s2Step324EntryFFresh) ((growRow 769 s2Step324EntryGFresh ++ (growRow 770 s2Step324EntryFvFresh ++ (growRow 771 s2Step324EntryGvFresh ++ [])))) s2Step324EntryF_Incoming s2Step324EntryF_checked h1 s2Step324EntryF_Outgoing
  exact h0

private theorem s2Step324EntryBank_checked : compileHmrBankResizeLog .entry s2Step324EntryFBefore ⟨s2Step324EntryFRow,s2Step324EntryGRow,s2Step324EntryFvRow,s2Step324EntryGvRow⟩ ⟨109,109,177,177⟩ [s2Step324EntryFFresh,s2Step324EntryGFresh,s2Step324EntryFvFresh,s2Step324EntryGvFresh]=
    some (s2Step324EntryGvAfter,⟨s2Step324EntryFOut,s2Step324EntryGOut,s2Step324EntryFvOut,s2Step324EntryGvOut⟩,(growRow 768 s2Step324EntryFFresh ++ (growRow 769 s2Step324EntryGFresh ++ (growRow 770 s2Step324EntryFvFresh ++ (growRow 771 s2Step324EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step324EntryBank_rows]
  rfl

private def s2Step324ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<620) ∨ (621≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step324ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step324ExitFBefore : Arena := s2Step324ExitGAfter

private def s2Step324ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 827],768⟩

private def s2Step324ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879],770⟩

private def s2Step324ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 807, 787],769⟩

private def s2Step324ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 867],771⟩

private theorem s2Step324ExitBank_incomingDistinct : ([s2Step324ExitGRow,s2Step324ExitFRow,s2Step324ExitFvRow,s2Step324ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step324ExitF_Incoming : rowsOwned s2Step324ExitFBefore [s2Step324ExitFRow,s2Step324ExitFvRow,s2Step324ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step324ExitGRow,s2Step324ExitFRow,s2Step324ExitFvRow,s2Step324ExitGvRow] 1 s2Step324ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step324ExitFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step324ExitBank_outgoingOwned : rowsOwned s2Step324ExitGvAfter [s2Step324ExitGOut,s2Step324ExitFOut,s2Step324ExitFvOut,s2Step324ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step324ExitGvAfter (fun q => (0≤q ∧ q<620) ∨ (621≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step324ExitF_Outgoing : rowsOwned s2Step324ExitGvAfter [s2Step324ExitFOut,s2Step324ExitFvOut,s2Step324ExitGvOut] :=
  hmrRows_owned_drop s2Step324ExitGvAfter [s2Step324ExitGOut,s2Step324ExitFOut,s2Step324ExitFvOut,s2Step324ExitGvOut] 1 s2Step324ExitBank_outgoingOwned

private theorem s2Step324ExitF_distinct : (s2Step324ExitFRow.sign::s2Step324ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step324ExitF_owned : (s2Step324ExitFRow.sign::s2Step324ExitFRow.payload).toFinset⊆s2Step324ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step324ExitFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step324ExitF_retired : s2Step324ExitFBefore.retireSet s2Step324ExitFExtra.toFinset=s2Step324ExitFAfter := by
  unfold Arena.retireSet s2Step324ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step324ExitFBefore,s2Step324ExitGAfter,s2Step324ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step324ExitF_checked : planRowResizeLog s2Step324ExitFBefore s2Step324ExitFRow 108 []=
    some (s2Step324ExitFAfter,s2Step324ExitFOut,shrinkRow 768 s2Step324ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step324ExitFBefore s2Step324ExitFRow 108 s2Step324ExitF_distinct s2Step324ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step324ExitFRow.payload.take 108) s2Step324ExitFRow.sign=s2Step324ExitFOut := by decide +kernel
  have hi : s2Step324ExitFRow.payload.drop 108=s2Step324ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step324ExitF_retired] at result
  exact result

private def s2Step324ExitFvAfter : Arena := s2Step324ExitFAfter

private def s2Step324ExitFvBefore : Arena := s2Step324ExitFAfter

private theorem s2Step324ExitFv_Incoming : rowsOwned s2Step324ExitFvBefore [s2Step324ExitFvRow,s2Step324ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step324ExitGRow,s2Step324ExitFRow,s2Step324ExitFvRow,s2Step324ExitGvRow] 2 s2Step324ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step324ExitFvBefore (fun q => (0≤q ∧ q<620) ∨ (621≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step324ExitFv_Outgoing : rowsOwned s2Step324ExitGvAfter [s2Step324ExitFvOut,s2Step324ExitGvOut] :=
  hmrRows_owned_drop s2Step324ExitGvAfter [s2Step324ExitGOut,s2Step324ExitFOut,s2Step324ExitFvOut,s2Step324ExitGvOut] 2 s2Step324ExitBank_outgoingOwned

private theorem s2Step324ExitFv_distinct : (s2Step324ExitFvRow.sign::s2Step324ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step324ExitFv_owned : (s2Step324ExitFvRow.sign::s2Step324ExitFvRow.payload).toFinset⊆s2Step324ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step324ExitFvBefore (fun q => (0≤q ∧ q<620) ∨ (621≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step324ExitFv_reserved : s2Step324ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step324ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step324ExitFv_checked : planRowResizeLog s2Step324ExitFvBefore s2Step324ExitFvRow 178 []=
    some (s2Step324ExitFvAfter,s2Step324ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step324ExitFvBefore s2Step324ExitFvAfter s2Step324ExitFvRow 178 []
    s2Step324ExitFv_distinct s2Step324ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step324ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step324ExitFvRow.payload++[]) s2Step324ExitFvRow.sign=s2Step324ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step324ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private theorem s2Step324ExitG_Incoming : rowsOwned s2Step324ExitGBefore [s2Step324ExitGRow,s2Step324ExitFRow,s2Step324ExitFvRow,s2Step324ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step324ExitGRow,s2Step324ExitFRow,s2Step324ExitFvRow,s2Step324ExitGvRow] 0 s2Step324ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step324ExitGBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step324ExitG_Outgoing : rowsOwned s2Step324ExitGvAfter [s2Step324ExitGOut,s2Step324ExitFOut,s2Step324ExitFvOut,s2Step324ExitGvOut] :=
  hmrRows_owned_drop s2Step324ExitGvAfter [s2Step324ExitGOut,s2Step324ExitFOut,s2Step324ExitFvOut,s2Step324ExitGvOut] 0 s2Step324ExitBank_outgoingOwned

private theorem s2Step324ExitG_distinct : (s2Step324ExitGRow.sign::s2Step324ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step324ExitG_owned : (s2Step324ExitGRow.sign::s2Step324ExitGRow.payload).toFinset⊆s2Step324ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step324ExitGBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step324ExitG_retired : s2Step324ExitGBefore.retireSet s2Step324ExitGExtra.toFinset=s2Step324ExitGAfter := by
  unfold Arena.retireSet s2Step324ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step324ExitGBefore,s2Step324ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step324ExitG_checked : planRowResizeLog s2Step324ExitGBefore s2Step324ExitGRow 108 []=
    some (s2Step324ExitGAfter,s2Step324ExitGOut,shrinkRow 769 s2Step324ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step324ExitGBefore s2Step324ExitGRow 108 s2Step324ExitG_distinct s2Step324ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step324ExitGRow.payload.take 108) s2Step324ExitGRow.sign=s2Step324ExitGOut := by decide +kernel
  have hi : s2Step324ExitGRow.payload.drop 108=s2Step324ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step324ExitG_retired] at result
  exact result

private def s2Step324ExitGvBefore : Arena := s2Step324ExitFAfter

private theorem s2Step324ExitGv_Incoming : rowsOwned s2Step324ExitGvBefore [s2Step324ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step324ExitGRow,s2Step324ExitFRow,s2Step324ExitFvRow,s2Step324ExitGvRow] 3 s2Step324ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step324ExitGvBefore (fun q => (0≤q ∧ q<620) ∨ (621≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step324ExitGv_Outgoing : rowsOwned s2Step324ExitGvAfter [s2Step324ExitGvOut] :=
  hmrRows_owned_drop s2Step324ExitGvAfter [s2Step324ExitGOut,s2Step324ExitFOut,s2Step324ExitFvOut,s2Step324ExitGvOut] 3 s2Step324ExitBank_outgoingOwned

private theorem s2Step324ExitGv_distinct : (s2Step324ExitGvRow.sign::s2Step324ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step324ExitGv_owned : (s2Step324ExitGvRow.sign::s2Step324ExitGvRow.payload).toFinset⊆s2Step324ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step324ExitGvBefore (fun q => (0≤q ∧ q<620) ∨ (621≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step324ExitGv_retired : s2Step324ExitGvBefore.retireSet s2Step324ExitGvExtra.toFinset=s2Step324ExitGvAfter := by
  unfold Arena.retireSet s2Step324ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step324ExitGvBefore,s2Step324ExitFAfter,s2Step324ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step324ExitGv_checked : planRowResizeLog s2Step324ExitGvBefore s2Step324ExitGvRow 177 []=
    some (s2Step324ExitGvAfter,s2Step324ExitGvOut,shrinkRow 771 s2Step324ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step324ExitGvBefore s2Step324ExitGvRow 177 s2Step324ExitGv_distinct s2Step324ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step324ExitGvRow.payload.take 177) s2Step324ExitGvRow.sign=s2Step324ExitGvOut := by decide +kernel
  have hi : s2Step324ExitGvRow.payload.drop 177=s2Step324ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step324ExitGv_retired] at result
  exact result

private theorem s2Step324ExitBank_rows : planWindowRowsLog s2Step324ExitGBefore [(s2Step324ExitGRow,108),(s2Step324ExitFRow,108),(s2Step324ExitFvRow,178),(s2Step324ExitGvRow,177)] [[],[],[],[]]=
    some (s2Step324ExitGvAfter,[s2Step324ExitGOut,s2Step324ExitFOut,s2Step324ExitFvOut,s2Step324ExitGvOut],(shrinkRow 769 s2Step324ExitGExtra ++ (shrinkRow 768 s2Step324ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step324ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step324ExitGvAfter [] []=some (s2Step324ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step324ExitGvBefore s2Step324ExitGvAfter s2Step324ExitGvAfter
    s2Step324ExitGvRow s2Step324ExitGvOut 177 [] [] [] []
    (shrinkRow 771 s2Step324ExitGvExtra) ([]) s2Step324ExitGv_Incoming s2Step324ExitGv_checked h4 s2Step324ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step324ExitFvBefore s2Step324ExitFvAfter s2Step324ExitGvAfter
    s2Step324ExitFvRow s2Step324ExitFvOut 178 [] [(s2Step324ExitGvRow,177)] [[]] [s2Step324ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step324ExitGvExtra ++ [])) s2Step324ExitFv_Incoming s2Step324ExitFv_checked h3 s2Step324ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step324ExitFBefore s2Step324ExitFAfter s2Step324ExitGvAfter
    s2Step324ExitFRow s2Step324ExitFOut 108 [] [(s2Step324ExitFvRow,178),(s2Step324ExitGvRow,177)] [[],[]] [s2Step324ExitFvOut,s2Step324ExitGvOut]
    (shrinkRow 768 s2Step324ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step324ExitGvExtra ++ []))) s2Step324ExitF_Incoming s2Step324ExitF_checked h2 s2Step324ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step324ExitGBefore s2Step324ExitGAfter s2Step324ExitGvAfter
    s2Step324ExitGRow s2Step324ExitGOut 108 [] [(s2Step324ExitFRow,108),(s2Step324ExitFvRow,178),(s2Step324ExitGvRow,177)] [[],[],[]] [s2Step324ExitFOut,s2Step324ExitFvOut,s2Step324ExitGvOut]
    (shrinkRow 769 s2Step324ExitGExtra) ((shrinkRow 768 s2Step324ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step324ExitGvExtra ++ [])))) s2Step324ExitG_Incoming s2Step324ExitG_checked h1 s2Step324ExitG_Outgoing
  exact h0

private theorem s2Step324ExitBank_checked : compileHmrBankResizeLog .exit s2Step324ExitGBefore ⟨s2Step324ExitFRow,s2Step324ExitGRow,s2Step324ExitFvRow,s2Step324ExitGvRow⟩ ⟨108,108,178,177⟩ [[],[],[],[]]=
    some (s2Step324ExitGvAfter,⟨s2Step324ExitFOut,s2Step324ExitGOut,s2Step324ExitFvOut,s2Step324ExitGvOut⟩,(shrinkRow 769 s2Step324ExitGExtra ++ (shrinkRow 768 s2Step324ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step324ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step324ExitBank_rows]
  rfl

private theorem s2Step324Add0_apart : Disjoint s2Step324Add0Arena.live s2Step324Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step324Add0Arena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step324Add0_card : s2Step324Add0Arena.live.card=906 := by
  decide +kernel

private theorem s2Step324Add0_borrowed : s2Step324Add0Arena.checkBorrow (hmrHybridCount s2Step324Add0Arena s2Step324Add0B.length) s2Step324Add0Work=some s2Step324Add0During := by
  have len : s2Step324Add0Work.length=hmrHybridCount s2Step324Add0Arena s2Step324Add0B.length := by
    rw [hmrHybridCount,s2Step324Add0_card]
    decide +kernel
  have nd : s2Step324Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step324Add0Arena s2Step324Add0During s2Step324Add0Work.toFinset s2Step324Add0_bounded s2Step324Add0_apart rfl

private theorem s2Step324Add0_distinct : (834::885::806::(s2Step324Add0A++s2Step324Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step324Add0_owned : (834::885::806::(s2Step324Add0A++s2Step324Add0B)).toFinset⊆s2Step324Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step324Add0Arena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step324Add0_checked : compileHmrHybridCinLog s2Step324Add0Arena 885 834 806 s2Step324Add0A s2Step324Add0B s2Step324Add0Work=some s2Step324Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step324Add0Arena s2Step324Add0During 885 834 806 s2Step324Add0A s2Step324Add0B s2Step324Add0Work
    (by decide +kernel) (by decide +kernel) s2Step324Add0_distinct
    (fun q hq => s2Step324Add0_owned (List.mem_toFinset.mpr hq)) s2Step324Add0_borrowed

private theorem s2Step324Add1_apart : Disjoint s2Step324Add1Arena.live s2Step324Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step324Add1Arena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step324Add1_card : s2Step324Add1Arena.live.card=906 := by
  decide +kernel

private theorem s2Step324Add1_borrowed : s2Step324Add1Arena.checkBorrow (hmrHybridCount s2Step324Add1Arena s2Step324Add1B.length) s2Step324Add1Work=some s2Step324Add1During := by
  have len : s2Step324Add1Work.length=hmrHybridCount s2Step324Add1Arena s2Step324Add1B.length := by
    rw [hmrHybridCount,s2Step324Add1_card]
    decide +kernel
  have nd : s2Step324Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step324Add1Arena s2Step324Add1During s2Step324Add1Work.toFinset s2Step324Add1_bounded s2Step324Add1_apart rfl

private theorem s2Step324Add1_distinct : (834::885::806::(s2Step324Add1A++s2Step324Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step324Add1_owned : (834::885::806::(s2Step324Add1A++s2Step324Add1B)).toFinset⊆s2Step324Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step324Add1Arena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step324Add1_checked : compileHmrHybridCinLog s2Step324Add1Arena 885 834 806 s2Step324Add1A s2Step324Add1B s2Step324Add1Work=some s2Step324Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step324Add1Arena s2Step324Add1During 885 834 806 s2Step324Add1A s2Step324Add1B s2Step324Add1Work
    (by decide +kernel) (by decide +kernel) s2Step324Add1_distinct
    (fun q hq => s2Step324Add1_owned (List.mem_toFinset.mpr hq)) s2Step324Add1_borrowed

private theorem s2Step324F4_apart : Disjoint (s2Step324Add0A++s2Step324Add0B).toFinset (s2Step324Add1A++s2Step324Add1B).toFinset := by
  have nd : ((s2Step324Add0A++s2Step324Add0B)++(s2Step324Add1A++s2Step324Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step324F4_carry : s2Step324F4FlagArena.checkBorrow 1 [806]=some s2Step324Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step324F4FlagArena,s2Step324HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step324F4FlagArena,s2Step324HeadFvAfter,s2Step324Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step324F4_distinct : (830::885::834::806::((s2Step324Add0A++s2Step324Add1A)++(s2Step324Add0B++s2Step324Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step324F4_flag : s2Step324HeadFvAfter.checkBorrow 1 [834]=some s2Step324F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step324HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step324F4_owned : (830::885::((s2Step324Add0A++s2Step324Add1A)++(s2Step324Add0B++s2Step324Add1B))).toFinset⊆s2Step324HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step324HeadFvAfter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step324F4_checked : compileHmrHybridF4Log s2Step324HeadFvAfter 830 885 s2Step324Add0A s2Step324Add0B s2Step324Add1A s2Step324Add1B [834] [806] s2Step324Add0Work s2Step324Add1Work=some s2Step324F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step324HeadFvAfter s2Step324F4FlagArena s2Step324Add0Arena s2Step324Add0During s2Step324Add1During 830 885
    s2Step324Add0A s2Step324Add0B s2Step324Add1A s2Step324Add1B [834] [806] s2Step324Add0Work s2Step324Add1Work
    (fun q hq => s2Step324F4_owned (List.mem_toFinset.mpr hq)) s2Step324F4_flag s2Step324F4_carry
    s2Step324F4_distinct s2Step324F4_apart s2Step324Add0_checked s2Step324Add1_checked

private theorem s2Step324Front_branch : s2Step324FrontSigmaArena.checkBorrow 1 [885]=some s2Step324HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step324FrontSigmaArena,s2Step324EntryGvAfter,s2Step324EntryGAfter,arenaWires]
  · ext q
    simp only [s2Step324FrontSigmaArena,s2Step324EntryGvAfter,s2Step324EntryGAfter,s2Step324HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step324Front_entry : HmrFrontEntryValid s2Step324EntryFBefore s2Step324FrontBank 109 177 ⟨108,108,178,177⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step324FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step324EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step324EntryFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<879) ∨ (880≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step324FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step324Front_sigma : s2Step324EntryGvAfter.checkBorrow 1 [830]=some s2Step324FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step324EntryGvAfter,s2Step324EntryGAfter,arenaWires]
  · rfl

private def s2Step324HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<879) ∨ (880≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step324HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<879) ∨ (880≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step324HeadFBefore : Arena := s2Step324HeadGAfter

private def s2Step324HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620],768⟩

private def s2Step324HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814],770⟩

private def s2Step324HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 807],769⟩

private def s2Step324HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840],771⟩

private theorem s2Step324HeadBank_incomingDistinct : ([s2Step324HeadGRow,s2Step324HeadFRow,s2Step324HeadGvRow,s2Step324HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step324HeadF_Incoming : rowsOwned s2Step324HeadFBefore [s2Step324HeadFRow,s2Step324HeadGvRow,s2Step324HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step324HeadGRow,s2Step324HeadFRow,s2Step324HeadGvRow,s2Step324HeadFvRow] 1 s2Step324HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step324HeadFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<879) ∨ (880≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step324HeadBank_outgoingOwned : rowsOwned s2Step324HeadFvAfter [s2Step324HeadGOut,s2Step324HeadFOut,s2Step324HeadGvOut,s2Step324HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step324HeadFvAfter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step324HeadF_Outgoing : rowsOwned s2Step324HeadFvAfter [s2Step324HeadFOut,s2Step324HeadGvOut,s2Step324HeadFvOut] :=
  hmrRows_owned_drop s2Step324HeadFvAfter [s2Step324HeadGOut,s2Step324HeadFOut,s2Step324HeadGvOut,s2Step324HeadFvOut] 1 s2Step324HeadBank_outgoingOwned

private theorem s2Step324HeadF_distinct : (s2Step324HeadFRow.sign::s2Step324HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step324HeadF_owned : (s2Step324HeadFRow.sign::s2Step324HeadFRow.payload).toFinset⊆s2Step324HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step324HeadFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<879) ∨ (880≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step324HeadF_reserved : s2Step324HeadFBefore.reserve s2Step324HeadFFresh.toFinset=some s2Step324HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step324HeadFFresh,arenaWires]
  · norm_num [s2Step324HeadFBefore,s2Step324HeadGAfter,s2Step324HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step324HeadFAfter,s2Step324HeadFBefore,s2Step324HeadGAfter,s2Step324HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step324HeadF_checked : planRowResizeLog s2Step324HeadFBefore s2Step324HeadFRow 110 s2Step324HeadFFresh=
    some (s2Step324HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 827],768⟩,growRow 768 s2Step324HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step324HeadFBefore s2Step324HeadFAfter s2Step324HeadFRow 110 s2Step324HeadFFresh
    s2Step324HeadF_distinct s2Step324HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step324HeadF_reserved
  have rowEq : WindowRow.mk (s2Step324HeadFRow.payload++s2Step324HeadFFresh) s2Step324HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 827],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step324HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<879) ∨ (880≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step324HeadFvBefore : Arena := s2Step324HeadGvAfter

private theorem s2Step324HeadFv_Incoming : rowsOwned s2Step324HeadFvBefore [s2Step324HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step324HeadGRow,s2Step324HeadFRow,s2Step324HeadGvRow,s2Step324HeadFvRow] 3 s2Step324HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step324HeadFvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<879) ∨ (880≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step324HeadFv_Outgoing : rowsOwned s2Step324HeadFvAfter [s2Step324HeadFvOut] :=
  hmrRows_owned_drop s2Step324HeadFvAfter [s2Step324HeadGOut,s2Step324HeadFOut,s2Step324HeadGvOut,s2Step324HeadFvOut] 3 s2Step324HeadBank_outgoingOwned

private theorem s2Step324HeadFv_distinct : (s2Step324HeadFvRow.sign::s2Step324HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step324HeadFv_owned : (s2Step324HeadFvRow.sign::s2Step324HeadFvRow.payload).toFinset⊆s2Step324HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step324HeadFvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<879) ∨ (880≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step324HeadFv_reserved : s2Step324HeadFvBefore.reserve s2Step324HeadFvFresh.toFinset=some s2Step324HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step324HeadFvFresh,arenaWires]
  · norm_num [s2Step324HeadFvBefore,s2Step324HeadGvAfter,s2Step324HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step324HeadFvAfter,s2Step324HeadFvBefore,s2Step324HeadGvAfter,s2Step324HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step324HeadFv_checked : planRowResizeLog s2Step324HeadFvBefore s2Step324HeadFvRow 178 s2Step324HeadFvFresh=
    some (s2Step324HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879],770⟩,growRow 770 s2Step324HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step324HeadFvBefore s2Step324HeadFvAfter s2Step324HeadFvRow 178 s2Step324HeadFvFresh
    s2Step324HeadFv_distinct s2Step324HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step324HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step324HeadFvRow.payload++s2Step324HeadFvFresh) s2Step324HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step324HeadG_Incoming : rowsOwned s2Step324HeadGBefore [s2Step324HeadGRow,s2Step324HeadFRow,s2Step324HeadGvRow,s2Step324HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step324HeadGRow,s2Step324HeadFRow,s2Step324HeadGvRow,s2Step324HeadFvRow] 0 s2Step324HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step324HeadGBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<879) ∨ (880≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step324HeadG_Outgoing : rowsOwned s2Step324HeadFvAfter [s2Step324HeadGOut,s2Step324HeadFOut,s2Step324HeadGvOut,s2Step324HeadFvOut] :=
  hmrRows_owned_drop s2Step324HeadFvAfter [s2Step324HeadGOut,s2Step324HeadFOut,s2Step324HeadGvOut,s2Step324HeadFvOut] 0 s2Step324HeadBank_outgoingOwned

private theorem s2Step324HeadG_distinct : (s2Step324HeadGRow.sign::s2Step324HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step324HeadG_owned : (s2Step324HeadGRow.sign::s2Step324HeadGRow.payload).toFinset⊆s2Step324HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step324HeadGBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<879) ∨ (880≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step324HeadG_reserved : s2Step324HeadGBefore.reserve s2Step324HeadGFresh.toFinset=some s2Step324HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step324HeadGFresh,arenaWires]
  · norm_num [s2Step324HeadGBefore,s2Step324HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step324HeadGAfter,s2Step324HeadGBefore,s2Step324HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step324HeadG_checked : planRowResizeLog s2Step324HeadGBefore s2Step324HeadGRow 110 s2Step324HeadGFresh=
    some (s2Step324HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 807, 787],769⟩,growRow 769 s2Step324HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step324HeadGBefore s2Step324HeadGAfter s2Step324HeadGRow 110 s2Step324HeadGFresh
    s2Step324HeadG_distinct s2Step324HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step324HeadG_reserved
  have rowEq : WindowRow.mk (s2Step324HeadGRow.payload++s2Step324HeadGFresh) s2Step324HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 807, 787],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step324HeadGvBefore : Arena := s2Step324HeadFAfter

private theorem s2Step324HeadGv_Incoming : rowsOwned s2Step324HeadGvBefore [s2Step324HeadGvRow,s2Step324HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step324HeadGRow,s2Step324HeadFRow,s2Step324HeadGvRow,s2Step324HeadFvRow] 2 s2Step324HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step324HeadGvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<879) ∨ (880≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step324HeadGv_Outgoing : rowsOwned s2Step324HeadFvAfter [s2Step324HeadGvOut,s2Step324HeadFvOut] :=
  hmrRows_owned_drop s2Step324HeadFvAfter [s2Step324HeadGOut,s2Step324HeadFOut,s2Step324HeadGvOut,s2Step324HeadFvOut] 2 s2Step324HeadBank_outgoingOwned

private theorem s2Step324HeadGv_distinct : (s2Step324HeadGvRow.sign::s2Step324HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step324HeadGv_owned : (s2Step324HeadGvRow.sign::s2Step324HeadGvRow.payload).toFinset⊆s2Step324HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step324HeadGvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<867) ∨ (868≤q ∧ q<879) ∨ (880≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step324HeadGv_reserved : s2Step324HeadGvBefore.reserve s2Step324HeadGvFresh.toFinset=some s2Step324HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step324HeadGvFresh,arenaWires]
  · norm_num [s2Step324HeadGvBefore,s2Step324HeadFAfter,s2Step324HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step324HeadGvAfter,s2Step324HeadGvBefore,s2Step324HeadFAfter,s2Step324HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step324HeadGv_checked : planRowResizeLog s2Step324HeadGvBefore s2Step324HeadGvRow 178 s2Step324HeadGvFresh=
    some (s2Step324HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 867],771⟩,growRow 771 s2Step324HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step324HeadGvBefore s2Step324HeadGvAfter s2Step324HeadGvRow 178 s2Step324HeadGvFresh
    s2Step324HeadGv_distinct s2Step324HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step324HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step324HeadGvRow.payload++s2Step324HeadGvFresh) s2Step324HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 867],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step324HeadBank_rows : planWindowRowsLog s2Step324HeadGBefore [(s2Step324HeadGRow,110),(s2Step324HeadFRow,110),(s2Step324HeadGvRow,178),(s2Step324HeadFvRow,178)] [s2Step324HeadGFresh,s2Step324HeadFFresh,s2Step324HeadGvFresh,s2Step324HeadFvFresh]=
    some (s2Step324HeadFvAfter,[s2Step324HeadGOut,s2Step324HeadFOut,s2Step324HeadGvOut,s2Step324HeadFvOut],(growRow 769 s2Step324HeadGFresh ++ (growRow 768 s2Step324HeadFFresh ++ (growRow 771 s2Step324HeadGvFresh ++ (growRow 770 s2Step324HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step324HeadFvAfter [] []=some (s2Step324HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step324HeadFvBefore s2Step324HeadFvAfter s2Step324HeadFvAfter
    s2Step324HeadFvRow s2Step324HeadFvOut 178 s2Step324HeadFvFresh [] [] []
    (growRow 770 s2Step324HeadFvFresh) ([]) s2Step324HeadFv_Incoming s2Step324HeadFv_checked h4 s2Step324HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step324HeadGvBefore s2Step324HeadGvAfter s2Step324HeadFvAfter
    s2Step324HeadGvRow s2Step324HeadGvOut 178 s2Step324HeadGvFresh [(s2Step324HeadFvRow,178)] [s2Step324HeadFvFresh] [s2Step324HeadFvOut]
    (growRow 771 s2Step324HeadGvFresh) ((growRow 770 s2Step324HeadFvFresh ++ [])) s2Step324HeadGv_Incoming s2Step324HeadGv_checked h3 s2Step324HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step324HeadFBefore s2Step324HeadFAfter s2Step324HeadFvAfter
    s2Step324HeadFRow s2Step324HeadFOut 110 s2Step324HeadFFresh [(s2Step324HeadGvRow,178),(s2Step324HeadFvRow,178)] [s2Step324HeadGvFresh,s2Step324HeadFvFresh] [s2Step324HeadGvOut,s2Step324HeadFvOut]
    (growRow 768 s2Step324HeadFFresh) ((growRow 771 s2Step324HeadGvFresh ++ (growRow 770 s2Step324HeadFvFresh ++ []))) s2Step324HeadF_Incoming s2Step324HeadF_checked h2 s2Step324HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step324HeadGBefore s2Step324HeadGAfter s2Step324HeadFvAfter
    s2Step324HeadGRow s2Step324HeadGOut 110 s2Step324HeadGFresh [(s2Step324HeadFRow,110),(s2Step324HeadGvRow,178),(s2Step324HeadFvRow,178)] [s2Step324HeadFFresh,s2Step324HeadGvFresh,s2Step324HeadFvFresh] [s2Step324HeadFOut,s2Step324HeadGvOut,s2Step324HeadFvOut]
    (growRow 769 s2Step324HeadGFresh) ((growRow 768 s2Step324HeadFFresh ++ (growRow 771 s2Step324HeadGvFresh ++ (growRow 770 s2Step324HeadFvFresh ++ [])))) s2Step324HeadG_Incoming s2Step324HeadG_checked h1 s2Step324HeadG_Outgoing
  exact h0

private theorem s2Step324HeadBank_checked : compileHmrBankResizeLog .headroom s2Step324HeadGBefore ⟨s2Step324HeadFRow,s2Step324HeadGRow,s2Step324HeadFvRow,s2Step324HeadGvRow⟩ ⟨110,110,178,178⟩ [s2Step324HeadGFresh,s2Step324HeadFFresh,s2Step324HeadGvFresh,s2Step324HeadFvFresh]=
    some (s2Step324HeadFvAfter,⟨s2Step324HeadFOut,s2Step324HeadGOut,s2Step324HeadFvOut,s2Step324HeadGvOut⟩,(growRow 769 s2Step324HeadGFresh ++ (growRow 768 s2Step324HeadFFresh ++ (growRow 771 s2Step324HeadGvFresh ++ (growRow 770 s2Step324HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step324HeadBank_rows]
  rfl

private theorem s2Step324Front_checked : compileHmrSourceFrontLog s2Step324EntryFBefore s2Step324FrontBank 109 177 ⟨108,108,178,177⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step324FrontLog=some s2Step324FrontPlan := by
  have pairEq : s2Step324FrontPair=⟨s2Step324HeadFRow,s2Step324HeadGRow,s2Step324HeadFvRow,s2Step324HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step324FrontHead=⟨s2Step324ExitFRow,s2Step324ExitGRow,s2Step324ExitFvRow,s2Step324ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step324Add0A=s2Step324FrontHead.f.wires := by decide +kernel
  have gEq : s2Step324Add0B=s2Step324FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step324Add1A=s2Step324FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step324Add1B=s2Step324FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step324EntryFBefore s2Step324FrontBank 109 177 ⟨108,108,178,177⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step324FrontLog s2Step324FrontPlan
  · exact s2Step324Front_entry
  · exact s2Step324EntryBank_checked
  · exact s2Step324Front_sigma
  · rfl
  · exact s2Step324Front_branch
  · rfl
  · simpa only [s2Step324FrontPlan,pairEq] using s2Step324HeadBank_checked
  · simpa only [s2Step324FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step324F4_checked
  · exact s2Step324Counter_checked
  · rfl
  · simpa only [s2Step324FrontPlan,headEq] using s2Step324ExitBank_checked

private theorem s2Step324Complete_explicit_checked : compileHmrEarlyStepLog s2Step324EntryFBefore s2Step324FrontBank 109 177 ⟨108,108,178,177⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step324CompleteLog=some s2Step324CompletePlan := by
  let Q := s2Step324EarlyControlPlan
  have hq := s2Step324EarlyControl_plan_checked
  have fv1 : s2Step324CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step324CompleteOut.fv.payload[2]?.getD s2Step324CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step324CompleteOut.fv.payload[3]?.getD s2Step324CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step324CompleteOut.fv.payload[4]?.getD s2Step324CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step324EntryFBefore s2Step324EarlyControlArena s2Step324FrontBank 109 177 ⟨108,108,178,177⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step324CompleteLog s2Step324FrontPlan Q
    s2Step324Front_checked s2Step324Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step324Complete_owned s2Step324Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step324EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 830 s2Step324CompleteOut.fv.second (s2Step324CompleteOut.fv.payload[2]?.getD s2Step324CompleteOut.fv.sign) (s2Step324CompleteOut.fv.payload[3]?.getD s2Step324CompleteOut.fv.sign) (s2Step324CompleteOut.fv.payload[4]?.getD s2Step324CompleteOut.fv.sign) 885 60 s2Step324EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep324Arena : Arena := s2Step324EntryFBefore
def s2PrivateStep324Bank : WindowBank := s2Step324FrontBank
def s2PrivateStep324Spec : HmrSourceWalkStepLog := ⟨109,177,⟨108,108,178,177⟩,60,.early s2Step324CompleteLog⟩
def s2PrivateStep324Plan : HmrSourceStepPlan := .early s2Step324CompletePlan
theorem s2PrivateStep324_source : s2PrivateStep324Spec=s2ObservedLogs320[4] := rfl
theorem s2PrivateStep324_checked : compileHmrSourceStepLog s2PrivateStep324Arena s2PrivateStep324Bank
    s2PrivateStep324Spec.fgWidth s2PrivateStep324Spec.vWidth s2PrivateStep324Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]
    6 498 324 s2PrivateStep324Spec.need none s2PrivateStep324Spec.log=some s2PrivateStep324Plan := by
  change compileHmrSourceStepLog s2Step324EntryFBefore s2Step324FrontBank 109 177 ⟨108,108,178,177⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 6 498 324 60 none (.early s2Step324CompleteLog)=some (.early s2Step324CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 324<498)]
  rw [s2Step324Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
