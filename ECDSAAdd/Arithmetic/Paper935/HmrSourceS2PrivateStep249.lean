import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep247
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

private def s2Step249CompleteMoves : List (Wire × Wire) := [(784,144),(825,658)]

private def s2Step249EarlyControlLog : HmrEarlyControlLog := ⟨[825, 784, 803, 792, 800],[835],[810],[814, 809, 885, 891, 894, 896],[]⟩

private def s2Step249FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [810, 814], [], [803]],[[809], [835], [792], [800]],[[], [], [], []]⟩,[842],[830],[885],[891],[894, 896, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[894, 896, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[885, 891, 894, 896]⟩

private def s2Step249CompleteLog : HmrEarlyStepLog := ⟨s2Step249FrontLog,s2Step249CompleteMoves,s2Step249EarlyControlLog⟩

private def s2Step249ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657],768⟩

private def s2Step249ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834],770⟩

private def s2Step249ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143],769⟩

private def s2Step249ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799],771⟩

private def s2Step249FrontOut : WindowBank := ⟨s2Step249ExitFOut,s2Step249ExitGOut,s2Step249ExitFvOut,s2Step249ExitGvOut⟩

private def s2Step249CompleteOut : WindowBank := s2Step249FrontOut.repacked s2Step249CompleteMoves

private def s2Step249EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<825) ∨ (826≤q ∧ q<835) ∨ (836≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step249EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step249EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step249EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step249EarlyControlPositiveArena,[835],s2Step249EarlyControlEqualityArena,[810],⟨⟨842,false⟩,[⟨⟨835,false⟩,810⟩]⟩⟩

private def s2Step249EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step249EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step249EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<825) ∨ (826≤q ∧ q<835) ∨ (836≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step249EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step249EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<825) ∨ (826≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step249EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<835) ∨ (836≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step249EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,825⟩,⟨⟨774,false⟩,784⟩,⟨⟨775,false⟩,803⟩,⟨⟨776,false⟩,792⟩,⟨⟨777,false⟩,800⟩]⟩

private def s2Step249EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step249EarlyControlZeroArena,s2Step249EarlyControlZeroPlan,s2Step249EarlyControlClassPlan,s2Step249EarlyControlFlagArena,s2Step249EarlyControlFittedArena,s2Step249EarlyControlHistoryArena,s2Step249EarlyControlSigmaArena,s2Step249EarlyControlOutputArena,s2Step249EarlyControlLog⟩

private def s2Step249CounterWork : List Wire := [885, 891, 894, 896]

private theorem s2Step249Counter_bounded : s2Step249CounterWork.toFinset⊆arenaWires := by norm_num [s2Step249CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step249HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step249CounterDuring : Arena := ⟨s2Step249HeadFvAfter.live∪s2Step249CounterWork.toFinset,Finset.union_subset s2Step249HeadFvAfter.bounded s2Step249Counter_bounded⟩

private def s2Step249EntryFFresh : List Wire := []

private def s2Step249EntryFvFresh : List Wire := []

private def s2Step249EntryGFresh : List Wire := [810, 814]

private def s2Step249EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<830) ∨ (831≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step249EntryGvFresh : List Wire := [803]

private def s2Step249ExitFExtra : List Wire := [658, 835]

private def s2Step249ExitFvExtra : List Wire := [800]

private def s2Step249ExitGExtra : List Wire := [144, 810, 814, 809]

private def s2Step249ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<144) ∨ (145≤q ∧ q<658) ∨ (659≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<835) ∨ (836≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step249ExitGvExtra : List Wire := [803, 792]

private def s2Step249Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step249Add0Work : List Wire := [894, 896, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step249Add0_bounded : s2Step249Add0Work.toFinset⊆arenaWires := by
  have h : s2Step249Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step249Add0During : Arena := ⟨s2Step249Add0Arena.live∪s2Step249Add0Work.toFinset,Finset.union_subset s2Step249Add0Arena.bounded s2Step249Add0_bounded⟩

private def s2Step249Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step249Add1Work : List Wire := [894, 896, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step249Add1_bounded : s2Step249Add1Work.toFinset⊆arenaWires := by
  have h : s2Step249Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step249Add1During : Arena := ⟨s2Step249Add1Arena.live∪s2Step249Add1Work.toFinset,Finset.union_subset s2Step249Add1Arena.bounded s2Step249Add1_bounded⟩

private def s2Step249F4FlagArena : Arena := ⟨s2Step249HeadFvAfter.live∪{885},Finset.union_subset s2Step249HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step249F4Plan : HmrHybridF4Plan := ⟨s2Step249F4FlagArena,[885],s2Step249Add0Arena,[891],s2Step249Add0During,s2Step249Add0Work,s2Step249Add1During,s2Step249Add1Work⟩

private def s2Step249HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 835],768⟩

private def s2Step249HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 800],770⟩

private def s2Step249HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 810, 814, 809],769⟩

private def s2Step249HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 803, 792],771⟩

private def s2Step249FrontHead : WindowBank := ⟨s2Step249HeadFOut,s2Step249HeadGOut,s2Step249HeadFvOut,s2Step249HeadGvOut⟩

private def s2Step249EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658],768⟩

private def s2Step249EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834],770⟩

private def s2Step249EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 810, 814],769⟩

private def s2Step249EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 803],771⟩

private def s2Step249FrontPair : WindowBank := ⟨s2Step249EntryFOut,s2Step249EntryGOut,s2Step249EntryFvOut,s2Step249EntryGvOut⟩

private def s2Step249FrontSigmaArena : Arena := ⟨s2Step249EntryGvAfter.live∪{842},Finset.union_subset s2Step249EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step249HeadFFresh : List Wire := [835]

private def s2Step249HeadFvFresh : List Wire := [800]

private def s2Step249HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<835) ∨ (836≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step249HeadGFresh : List Wire := [809]

private def s2Step249HeadGvFresh : List Wire := [792]

private def s2Step249FrontPlan : HmrSourceFront := ⟨s2Step249EntryGvAfter,s2Step249FrontPair,(growRow 768 s2Step249EntryFFresh ++ (growRow 769 s2Step249EntryGFresh ++ (growRow 770 s2Step249EntryFvFresh ++ (growRow 771 s2Step249EntryGvFresh ++ [])))),s2Step249FrontSigmaArena,[842],s2Step249HeadGBefore,[830],
  s2Step249HeadFvAfter,s2Step249FrontHead,(growRow 769 s2Step249HeadGFresh ++ (growRow 768 s2Step249HeadFFresh ++ (growRow 771 s2Step249HeadGvFresh ++ (growRow 770 s2Step249HeadFvFresh ++ [])))),s2Step249F4Plan,s2Step249CounterDuring,s2Step249CounterWork,s2Step249ExitGvAfter,s2Step249FrontOut,(shrinkRow 769 s2Step249ExitGExtra ++ (shrinkRow 768 s2Step249ExitFExtra ++ (shrinkRow 770 s2Step249ExitFvExtra ++ (shrinkRow 771 s2Step249ExitGvExtra ++ []))))⟩

private def s2Step249CompletePlan : HmrEarlyStepPlan := ⟨s2Step249FrontPlan,s2Step249EarlyControlArena,s2Step249EarlyControlPlan,s2Step249CompleteMoves⟩

private theorem s2Step249Complete_apart : List.Disjoint (s2Step249CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [842, 830, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] := by
  have nd : ((s2Step249CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[842, 830, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step249Complete_owned : (s2Step249CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step249EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step249EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<825) ∨ (826≤q ∧ q<835) ∨ (836≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private def s2Step249CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,658),(659,784),(785,792),(793,800),(801,803),(804,809),(811,814),(815,835),(836,885),(886,891),(892,894),(895,896),(897,901)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s2Step249CompleteRelocationMove0Borrowed : Arena := ⟨s2Step249ExitGvAfter.live∪{144},Finset.union_subset s2Step249ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step249CompleteRelocationMove1Borrowed : Arena := ⟨s2Step249CompleteRelocationMove0After.live∪{658},Finset.union_subset s2Step249CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s2Step249CompleteRelocation_move0_owned : 784∈s2Step249ExitGvAfter.live := by norm_num [s2Step249ExitGvAfter,arenaWires]

private theorem s2Step249CompleteRelocation_move0_reserve : s2Step249ExitGvAfter.reserve {144}=some s2Step249CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step249ExitGvAfter,arenaWires]
  · rfl

private theorem s2Step249CompleteRelocation_move0_retire : s2Step249CompleteRelocationMove0Borrowed.retireSet {784}=s2Step249CompleteRelocationMove0After := by
  unfold Arena.retireSet s2Step249CompleteRelocationMove0After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step249CompleteRelocationMove0Borrowed,s2Step249ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step249CompleteRelocation_move1_owned : 825∈s2Step249CompleteRelocationMove0After.live := by norm_num [s2Step249CompleteRelocationMove0After,arenaWires]

private theorem s2Step249CompleteRelocation_move1_reserve : s2Step249CompleteRelocationMove0After.reserve {658}=some s2Step249CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step249CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s2Step249CompleteRelocation_move1_retire : s2Step249CompleteRelocationMove1Borrowed.retireSet {825}=s2Step249EarlyControlArena := by
  unfold Arena.retireSet s2Step249EarlyControlArena
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step249CompleteRelocationMove1Borrowed,s2Step249CompleteRelocationMove0After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step249CompleteRelocation_checked : s2Step249ExitGvAfter.checkRepack [(784,144),(825,658)]=some s2Step249EarlyControlArena := by
  have tail2 : s2Step249EarlyControlArena.checkRepack []=some s2Step249EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s2Step249CompleteRelocationMove0After s2Step249CompleteRelocationMove1Borrowed s2Step249EarlyControlArena s2Step249EarlyControlArena 825 658 []
    s2Step249CompleteRelocation_move1_owned s2Step249CompleteRelocation_move1_reserve s2Step249CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s2Step249ExitGvAfter s2Step249CompleteRelocationMove0Borrowed s2Step249CompleteRelocationMove0After s2Step249EarlyControlArena 784 144 [(825,658)]
    s2Step249CompleteRelocation_move0_owned s2Step249CompleteRelocation_move0_reserve s2Step249CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s2Step249Complete_repack : s2Step249ExitGvAfter.checkRepack s2Step249CompleteMoves=some s2Step249EarlyControlArena := by
  simpa only [s2Step249CompleteMoves] using s2Step249CompleteRelocation_checked

private theorem s2Step249EarlyControl_branchOwned : ([830] : List Wire).toFinset⊆s2Step249EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step249EarlyControlSigmaArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<825) ∨ (826≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step249EarlyControl_branch : compileHmrBranchRetirement s2Step249EarlyControlSigmaArena 830=some s2Step249EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step249EarlyControl_branchOwned
  · ext q
    simp [s2Step249EarlyControlOutputArena,s2Step249EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step249EarlyControl_classEqualityBorrow : s2Step249EarlyControlPositiveArena.checkBorrow (([842, 835] : List Wire).length-1) s2Step249EarlyControlLog.classWork=some s2Step249EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step249EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step249EarlyControlPositiveArena (fun q => (0≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
      decide +kernel
    · ext q
      simp [s2Step249EarlyControlEqualityArena,s2Step249EarlyControlPositiveArena,s2Step249EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step249EarlyControl_classEqualityOwned : ([842, 835] : List Wire).toFinset⊆s2Step249EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step249EarlyControlPositiveArena (fun q => (0≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step249EarlyControl_classEquality : compileHmrEqualityLog s2Step249EarlyControlPositiveArena [842, 835] 0 s2Step249EarlyControlLog.classWork=some (s2Step249EarlyControlEqualityArena,s2Step249EarlyControlLog.classWork,s2Step249EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step249EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step249EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step249EarlyControl_classOwned : ([777, 800, 842] : List Wire).toFinset⊆s2Step249EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step249EarlyControlZeroArena (fun q => (0≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<835) ∨ (836≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step249EarlyControl_positiveBorrow : s2Step249EarlyControlZeroArena.checkBorrow (1) s2Step249EarlyControlLog.positiveWork=some s2Step249EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step249EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step249EarlyControlZeroArena (fun q => (0≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<835) ∨ (836≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
      decide +kernel
    · ext q
      simp [s2Step249EarlyControlPositiveArena,s2Step249EarlyControlZeroArena,s2Step249EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step249EarlyControl_class : compileHmrSourceClassLog s2Step249EarlyControlZeroArena false 777 s2Step249EarlyControlZeroPlan.top 0 842 s2Step249EarlyControlLog.positiveWork s2Step249EarlyControlLog.classWork=some s2Step249EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step249EarlyControlClassPlan s2Step249EarlyControlZeroArena false 777 s2Step249EarlyControlZeroPlan.top 0 842
  constructor
  · decide +kernel
  · exact s2Step249EarlyControl_classOwned
  · exact s2Step249EarlyControl_positiveBorrow
  · exact s2Step249EarlyControl_classEquality

private theorem s2Step249EarlyControl_entryRecordOwned : ([830, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] : List Wire).toFinset⊆s2Step249EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step249EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<825) ∨ (826≤q ∧ q<835) ∨ (836≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step249EarlyControl_entrySigmaOwned : ([842, 254] : List Wire).toFinset⊆s2Step249EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step249EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<825) ∨ (826≤q ∧ q<835) ∨ (836≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step249EarlyControl_fitBorrow : s2Step249EarlyControlFlagArena.checkBorrow ((51-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] : List Wire).length)) s2Step249EarlyControlLog.recordFresh=some s2Step249EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step249EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step249EarlyControlFlagArena (fun q => (0≤q ∧ q<901)) rfl
      decide +kernel
    · ext q
      simp [s2Step249EarlyControlFittedArena,s2Step249EarlyControlFlagArena,s2Step249EarlyControlLog,arenaWires]

private theorem s2Step249EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] : List Wire).toFinset⊆s2Step249EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step249EarlyControlFlagArena (fun q => (0≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step249EarlyControl_fit : compileHmrRecordGrowLog s2Step249EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 51 s2Step249EarlyControlLog.recordFresh=some s2Step249EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step249EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step249EarlyControl_fitBorrow

private theorem s2Step249EarlyControl_flagsBorrow : s2Step249EarlyControlEqualityArena.checkBorrow (6) s2Step249EarlyControlLog.flagWork=some s2Step249EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step249EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step249EarlyControlEqualityArena (fun q => (0≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
      decide +kernel
    · ext q
      simp [s2Step249EarlyControlFlagArena,s2Step249EarlyControlEqualityArena,s2Step249EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step249EarlyControl_flagsOwned : ([810, 253, 252, 251] : List Wire).toFinset⊆s2Step249EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step249EarlyControlEqualityArena (fun q => (0≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step249EarlyControl_flags : compileHmrFlagsLog s2Step249EarlyControlClassPlan.equalityArena s2Step249EarlyControlClassPlan.equality.top 253 252 251 s2Step249EarlyControlLog.flagWork=some s2Step249EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step249EarlyControl_flagsOwned⟩
  · exact s2Step249EarlyControl_flagsBorrow

private theorem s2Step249EarlyControl_historyBorrow : s2Step249EarlyControlArena.checkBorrow ((51-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] : List Wire).length)) s2Step249EarlyControlLog.recordFresh=some s2Step249EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step249EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step249EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<825) ∨ (826≤q ∧ q<835) ∨ (836≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
      decide +kernel
    · ext q
      simp [s2Step249EarlyControlHistoryArena,s2Step249EarlyControlArena,s2Step249EarlyControlLog,arenaWires]

private theorem s2Step249EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] : List Wire).toFinset⊆s2Step249EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step249EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<825) ∨ (826≤q ∧ q<835) ∨ (836≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step249EarlyControl_history : compileHmrRecordGrowLog s2Step249EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 51 s2Step249EarlyControlLog.recordFresh=some s2Step249EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step249EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step249EarlyControl_historyBorrow

private theorem s2Step249EarlyControl_sigmaOwned : ([254, 842] : List Wire).toFinset⊆s2Step249EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step249EarlyControlHistoryArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<825) ∨ (826≤q ∧ q<835) ∨ (836≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step249EarlyControl_sigmaReleaseOwned : ([842] : List Wire).toFinset⊆s2Step249EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step249EarlyControlHistoryArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<825) ∨ (826≤q ∧ q<835) ∨ (836≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step249EarlyControl_sigmaRelease : s2Step249EarlyControlHistoryArena.release {842} (fun _ => false)=some s2Step249EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step249EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step249EarlyControlSigmaArena,s2Step249EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step249EarlyControl_sigma : compileHmrSigmaDropLog s2Step249EarlyControlHistoryArena false 0 0 254 842 []=some s2Step249EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step249EarlyControl_sigmaOwned⟩
  · exact s2Step249EarlyControl_sigmaRelease

private theorem s2Step249EarlyControl_zeroBorrow : s2Step249EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step249EarlyControlLog.zeroWork=some s2Step249EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step249EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step249EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<825) ∨ (826≤q ∧ q<835) ∨ (836≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
      decide +kernel
    · ext q
      simp [s2Step249EarlyControlZeroArena,s2Step249EarlyControlArena,s2Step249EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step249EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step249EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step249EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<825) ∨ (826≤q ∧ q<835) ∨ (836≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step249EarlyControl_zero : compileHmrEqualityLog s2Step249EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step249EarlyControlLog.zeroWork=some (s2Step249EarlyControlZeroArena,s2Step249EarlyControlLog.zeroWork,s2Step249EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step249EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step249EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step249EarlyControl_logged : s2Step249EarlyControlPlan.Logged s2Step249EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 777 842 254 253 252 251 830 51 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step249EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step249EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step249EarlyControl_zero
  · exact s2Step249EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step249EarlyControl_flags
  · exact s2Step249EarlyControl_fit
  · exact s2Step249EarlyControl_history
  · exact s2Step249EarlyControl_sigma
  · exact s2Step249EarlyControl_branch

private theorem s2Step249EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step249EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 777 842 254 253 252 251 830 51 s2Step249EarlyControlLog=some s2Step249EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step249EarlyControlPlan s2Step249EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 777 842 254 253 252 251 830 51 s2Step249EarlyControl_logged

private def s2Step249EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (831≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step249EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658],768⟩

private def s2Step249EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834],770⟩

private def s2Step249EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144],769⟩

private def s2Step249EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799],771⟩

private def s2Step249FrontBank : WindowBank := ⟨s2Step249EntryFRow,s2Step249EntryGRow,s2Step249EntryFvRow,s2Step249EntryGvRow⟩

private def s2Step249Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 835, 768]

private def s2Step249Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 810, 814, 809, 769]

private def s2Step249Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 800, 770]

private def s2Step249Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 803, 792, 771]

private theorem s2Step249Counter_apart : Disjoint s2Step249HeadFvAfter.live s2Step249CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step249HeadFvAfter (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step249Counter_borrowed : s2Step249HeadFvAfter.checkBorrow 4 s2Step249CounterWork=some s2Step249CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step249HeadFvAfter s2Step249CounterDuring s2Step249CounterWork.toFinset s2Step249Counter_bounded s2Step249Counter_apart rfl

private theorem s2Step249Counter_owned : (842::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step249HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step249HeadFvAfter (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step249Counter_checked : compileHmrCounterStepLog s2Step249HeadFvAfter true 842 [772, 773, 774, 775, 776, 777] s2Step249CounterWork=some s2Step249CounterDuring := by
  have owned : ∀q∈842::[772, 773, 774, 775, 776, 777],q∈s2Step249HeadFvAfter.live := fun q hq => s2Step249Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step249Counter_borrowed

private def s2Step249EntryFAfter : Arena := s2Step249EntryFBefore

private theorem s2Step249EntryBank_incomingDistinct : ([s2Step249EntryFRow,s2Step249EntryGRow,s2Step249EntryFvRow,s2Step249EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step249EntryF_Incoming : rowsOwned s2Step249EntryFBefore [s2Step249EntryFRow,s2Step249EntryGRow,s2Step249EntryFvRow,s2Step249EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step249EntryFRow,s2Step249EntryGRow,s2Step249EntryFvRow,s2Step249EntryGvRow] 0 s2Step249EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step249EntryFBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (831≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step249EntryBank_outgoingOwned : rowsOwned s2Step249EntryGvAfter [s2Step249EntryFOut,s2Step249EntryGOut,s2Step249EntryFvOut,s2Step249EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step249EntryGvAfter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<830) ∨ (831≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step249EntryF_Outgoing : rowsOwned s2Step249EntryGvAfter [s2Step249EntryFOut,s2Step249EntryGOut,s2Step249EntryFvOut,s2Step249EntryGvOut] :=
  hmrRows_owned_drop s2Step249EntryGvAfter [s2Step249EntryFOut,s2Step249EntryGOut,s2Step249EntryFvOut,s2Step249EntryGvOut] 0 s2Step249EntryBank_outgoingOwned

private theorem s2Step249EntryF_distinct : (s2Step249EntryFRow.sign::s2Step249EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step249EntryF_owned : (s2Step249EntryFRow.sign::s2Step249EntryFRow.payload).toFinset⊆s2Step249EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step249EntryFBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (831≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step249EntryF_reserved : s2Step249EntryFBefore.reserve s2Step249EntryFFresh.toFinset=some s2Step249EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step249EntryFFresh,arenaWires]
  · norm_num [s2Step249EntryFBefore,s2Step249EntryFFresh,arenaWires]
  · simp only [s2Step249EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step249EntryF_checked : planRowResizeLog s2Step249EntryFBefore s2Step249EntryFRow 147 s2Step249EntryFFresh=
    some (s2Step249EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658],768⟩,growRow 768 s2Step249EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step249EntryFBefore s2Step249EntryFAfter s2Step249EntryFRow 147 s2Step249EntryFFresh
    s2Step249EntryF_distinct s2Step249EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step249EntryF_reserved
  have rowEq : WindowRow.mk (s2Step249EntryFRow.payload++s2Step249EntryFFresh) s2Step249EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step249EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (810≤q ∧ q<830) ∨ (831≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step249EntryFvAfter : Arena := s2Step249EntryGAfter

private def s2Step249EntryFvBefore : Arena := s2Step249EntryGAfter

private theorem s2Step249EntryFv_Incoming : rowsOwned s2Step249EntryFvBefore [s2Step249EntryFvRow,s2Step249EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step249EntryFRow,s2Step249EntryGRow,s2Step249EntryFvRow,s2Step249EntryGvRow] 2 s2Step249EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step249EntryFvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (810≤q ∧ q<830) ∨ (831≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step249EntryFv_Outgoing : rowsOwned s2Step249EntryGvAfter [s2Step249EntryFvOut,s2Step249EntryGvOut] :=
  hmrRows_owned_drop s2Step249EntryGvAfter [s2Step249EntryFOut,s2Step249EntryGOut,s2Step249EntryFvOut,s2Step249EntryGvOut] 2 s2Step249EntryBank_outgoingOwned

private theorem s2Step249EntryFv_distinct : (s2Step249EntryFvRow.sign::s2Step249EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step249EntryFv_owned : (s2Step249EntryFvRow.sign::s2Step249EntryFvRow.payload).toFinset⊆s2Step249EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step249EntryFvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (810≤q ∧ q<830) ∨ (831≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step249EntryFv_reserved : s2Step249EntryFvBefore.reserve s2Step249EntryFvFresh.toFinset=some s2Step249EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step249EntryFvFresh,arenaWires]
  · norm_num [s2Step249EntryFvBefore,s2Step249EntryGAfter,s2Step249EntryFvFresh,arenaWires]
  · simp only [s2Step249EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step249EntryFv_checked : planRowResizeLog s2Step249EntryFvBefore s2Step249EntryFvRow 140 s2Step249EntryFvFresh=
    some (s2Step249EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834],770⟩,growRow 770 s2Step249EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step249EntryFvBefore s2Step249EntryFvAfter s2Step249EntryFvRow 140 s2Step249EntryFvFresh
    s2Step249EntryFv_distinct s2Step249EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step249EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step249EntryFvRow.payload++s2Step249EntryFvFresh) s2Step249EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step249EntryGBefore : Arena := s2Step249EntryFBefore

private theorem s2Step249EntryG_Incoming : rowsOwned s2Step249EntryGBefore [s2Step249EntryGRow,s2Step249EntryFvRow,s2Step249EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step249EntryFRow,s2Step249EntryGRow,s2Step249EntryFvRow,s2Step249EntryGvRow] 1 s2Step249EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step249EntryGBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (831≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step249EntryG_Outgoing : rowsOwned s2Step249EntryGvAfter [s2Step249EntryGOut,s2Step249EntryFvOut,s2Step249EntryGvOut] :=
  hmrRows_owned_drop s2Step249EntryGvAfter [s2Step249EntryFOut,s2Step249EntryGOut,s2Step249EntryFvOut,s2Step249EntryGvOut] 1 s2Step249EntryBank_outgoingOwned

private theorem s2Step249EntryG_distinct : (s2Step249EntryGRow.sign::s2Step249EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step249EntryG_owned : (s2Step249EntryGRow.sign::s2Step249EntryGRow.payload).toFinset⊆s2Step249EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step249EntryGBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (831≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step249EntryG_reserved : s2Step249EntryGBefore.reserve s2Step249EntryGFresh.toFinset=some s2Step249EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step249EntryGFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s2Step249EntryGBefore,s2Step249EntryFBefore,s2Step249EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step249EntryGAfter,s2Step249EntryGBefore,s2Step249EntryFBefore,s2Step249EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step249EntryG_checked : planRowResizeLog s2Step249EntryGBefore s2Step249EntryGRow 147 s2Step249EntryGFresh=
    some (s2Step249EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 810, 814],769⟩,growRow 769 s2Step249EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step249EntryGBefore s2Step249EntryGAfter s2Step249EntryGRow 147 s2Step249EntryGFresh
    s2Step249EntryG_distinct s2Step249EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step249EntryG_reserved
  have rowEq : WindowRow.mk (s2Step249EntryGRow.payload++s2Step249EntryGFresh) s2Step249EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 810, 814],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step249EntryGvBefore : Arena := s2Step249EntryGAfter

private theorem s2Step249EntryGv_Incoming : rowsOwned s2Step249EntryGvBefore [s2Step249EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step249EntryFRow,s2Step249EntryGRow,s2Step249EntryFvRow,s2Step249EntryGvRow] 3 s2Step249EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step249EntryGvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (810≤q ∧ q<830) ∨ (831≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step249EntryGv_Outgoing : rowsOwned s2Step249EntryGvAfter [s2Step249EntryGvOut] :=
  hmrRows_owned_drop s2Step249EntryGvAfter [s2Step249EntryFOut,s2Step249EntryGOut,s2Step249EntryFvOut,s2Step249EntryGvOut] 3 s2Step249EntryBank_outgoingOwned

private theorem s2Step249EntryGv_distinct : (s2Step249EntryGvRow.sign::s2Step249EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step249EntryGv_owned : (s2Step249EntryGvRow.sign::s2Step249EntryGvRow.payload).toFinset⊆s2Step249EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step249EntryGvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (810≤q ∧ q<830) ∨ (831≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step249EntryGv_reserved : s2Step249EntryGvBefore.reserve s2Step249EntryGvFresh.toFinset=some s2Step249EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step249EntryGvFresh,arenaWires]
  · norm_num [s2Step249EntryGvBefore,s2Step249EntryGAfter,s2Step249EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step249EntryGvAfter,s2Step249EntryGvBefore,s2Step249EntryGAfter,s2Step249EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step249EntryGv_checked : planRowResizeLog s2Step249EntryGvBefore s2Step249EntryGvRow 140 s2Step249EntryGvFresh=
    some (s2Step249EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 803],771⟩,growRow 771 s2Step249EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step249EntryGvBefore s2Step249EntryGvAfter s2Step249EntryGvRow 140 s2Step249EntryGvFresh
    s2Step249EntryGv_distinct s2Step249EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step249EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step249EntryGvRow.payload++s2Step249EntryGvFresh) s2Step249EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 803],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step249EntryBank_rows : planWindowRowsLog s2Step249EntryFBefore [(s2Step249EntryFRow,147),(s2Step249EntryGRow,147),(s2Step249EntryFvRow,140),(s2Step249EntryGvRow,140)] [s2Step249EntryFFresh,s2Step249EntryGFresh,s2Step249EntryFvFresh,s2Step249EntryGvFresh]=
    some (s2Step249EntryGvAfter,[s2Step249EntryFOut,s2Step249EntryGOut,s2Step249EntryFvOut,s2Step249EntryGvOut],(growRow 768 s2Step249EntryFFresh ++ (growRow 769 s2Step249EntryGFresh ++ (growRow 770 s2Step249EntryFvFresh ++ (growRow 771 s2Step249EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step249EntryGvAfter [] []=some (s2Step249EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step249EntryGvBefore s2Step249EntryGvAfter s2Step249EntryGvAfter
    s2Step249EntryGvRow s2Step249EntryGvOut 140 s2Step249EntryGvFresh [] [] []
    (growRow 771 s2Step249EntryGvFresh) ([]) s2Step249EntryGv_Incoming s2Step249EntryGv_checked h4 s2Step249EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step249EntryFvBefore s2Step249EntryFvAfter s2Step249EntryGvAfter
    s2Step249EntryFvRow s2Step249EntryFvOut 140 s2Step249EntryFvFresh [(s2Step249EntryGvRow,140)] [s2Step249EntryGvFresh] [s2Step249EntryGvOut]
    (growRow 770 s2Step249EntryFvFresh) ((growRow 771 s2Step249EntryGvFresh ++ [])) s2Step249EntryFv_Incoming s2Step249EntryFv_checked h3 s2Step249EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step249EntryGBefore s2Step249EntryGAfter s2Step249EntryGvAfter
    s2Step249EntryGRow s2Step249EntryGOut 147 s2Step249EntryGFresh [(s2Step249EntryFvRow,140),(s2Step249EntryGvRow,140)] [s2Step249EntryFvFresh,s2Step249EntryGvFresh] [s2Step249EntryFvOut,s2Step249EntryGvOut]
    (growRow 769 s2Step249EntryGFresh) ((growRow 770 s2Step249EntryFvFresh ++ (growRow 771 s2Step249EntryGvFresh ++ []))) s2Step249EntryG_Incoming s2Step249EntryG_checked h2 s2Step249EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step249EntryFBefore s2Step249EntryFAfter s2Step249EntryGvAfter
    s2Step249EntryFRow s2Step249EntryFOut 147 s2Step249EntryFFresh [(s2Step249EntryGRow,147),(s2Step249EntryFvRow,140),(s2Step249EntryGvRow,140)] [s2Step249EntryGFresh,s2Step249EntryFvFresh,s2Step249EntryGvFresh] [s2Step249EntryGOut,s2Step249EntryFvOut,s2Step249EntryGvOut]
    (growRow 768 s2Step249EntryFFresh) ((growRow 769 s2Step249EntryGFresh ++ (growRow 770 s2Step249EntryFvFresh ++ (growRow 771 s2Step249EntryGvFresh ++ [])))) s2Step249EntryF_Incoming s2Step249EntryF_checked h1 s2Step249EntryF_Outgoing
  exact h0

private theorem s2Step249EntryBank_checked : compileHmrBankResizeLog .entry s2Step249EntryFBefore ⟨s2Step249EntryFRow,s2Step249EntryGRow,s2Step249EntryFvRow,s2Step249EntryGvRow⟩ ⟨147,147,140,140⟩ [s2Step249EntryFFresh,s2Step249EntryGFresh,s2Step249EntryFvFresh,s2Step249EntryGvFresh]=
    some (s2Step249EntryGvAfter,⟨s2Step249EntryFOut,s2Step249EntryGOut,s2Step249EntryFvOut,s2Step249EntryGvOut⟩,(growRow 768 s2Step249EntryFFresh ++ (growRow 769 s2Step249EntryGFresh ++ (growRow 770 s2Step249EntryFvFresh ++ (growRow 771 s2Step249EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step249EntryBank_rows]
  rfl

private def s2Step249ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<144) ∨ (145≤q ∧ q<658) ∨ (659≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<835) ∨ (836≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step249ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<144) ∨ (145≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step249ExitFBefore : Arena := s2Step249ExitGAfter

private def s2Step249ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 835],768⟩

private def s2Step249ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 800],770⟩

private def s2Step249ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 810, 814, 809],769⟩

private def s2Step249ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 803, 792],771⟩

private theorem s2Step249ExitBank_incomingDistinct : ([s2Step249ExitGRow,s2Step249ExitFRow,s2Step249ExitFvRow,s2Step249ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step249ExitF_Incoming : rowsOwned s2Step249ExitFBefore [s2Step249ExitFRow,s2Step249ExitFvRow,s2Step249ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step249ExitGRow,s2Step249ExitFRow,s2Step249ExitFvRow,s2Step249ExitGvRow] 1 s2Step249ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step249ExitFBefore (fun q => (0≤q ∧ q<144) ∨ (145≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step249ExitBank_outgoingOwned : rowsOwned s2Step249ExitGvAfter [s2Step249ExitGOut,s2Step249ExitFOut,s2Step249ExitFvOut,s2Step249ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step249ExitGvAfter (fun q => (0≤q ∧ q<144) ∨ (145≤q ∧ q<658) ∨ (659≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<835) ∨ (836≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step249ExitF_Outgoing : rowsOwned s2Step249ExitGvAfter [s2Step249ExitFOut,s2Step249ExitFvOut,s2Step249ExitGvOut] :=
  hmrRows_owned_drop s2Step249ExitGvAfter [s2Step249ExitGOut,s2Step249ExitFOut,s2Step249ExitFvOut,s2Step249ExitGvOut] 1 s2Step249ExitBank_outgoingOwned

private theorem s2Step249ExitF_distinct : (s2Step249ExitFRow.sign::s2Step249ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step249ExitF_owned : (s2Step249ExitFRow.sign::s2Step249ExitFRow.payload).toFinset⊆s2Step249ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step249ExitFBefore (fun q => (0≤q ∧ q<144) ∨ (145≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step249ExitF_retired : s2Step249ExitFBefore.retireSet s2Step249ExitFExtra.toFinset=s2Step249ExitFAfter := by
  unfold Arena.retireSet s2Step249ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step249ExitFBefore,s2Step249ExitGAfter,s2Step249ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step249ExitF_checked : planRowResizeLog s2Step249ExitFBefore s2Step249ExitFRow 146 []=
    some (s2Step249ExitFAfter,s2Step249ExitFOut,shrinkRow 768 s2Step249ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step249ExitFBefore s2Step249ExitFRow 146 s2Step249ExitF_distinct s2Step249ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step249ExitFRow.payload.take 146) s2Step249ExitFRow.sign=s2Step249ExitFOut := by decide +kernel
  have hi : s2Step249ExitFRow.payload.drop 146=s2Step249ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step249ExitF_retired] at result
  exact result

private def s2Step249ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<144) ∨ (145≤q ∧ q<658) ∨ (659≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<835) ∨ (836≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step249ExitFvBefore : Arena := s2Step249ExitFAfter

private theorem s2Step249ExitFv_Incoming : rowsOwned s2Step249ExitFvBefore [s2Step249ExitFvRow,s2Step249ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step249ExitGRow,s2Step249ExitFRow,s2Step249ExitFvRow,s2Step249ExitGvRow] 2 s2Step249ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step249ExitFvBefore (fun q => (0≤q ∧ q<144) ∨ (145≤q ∧ q<658) ∨ (659≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<835) ∨ (836≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step249ExitFv_Outgoing : rowsOwned s2Step249ExitGvAfter [s2Step249ExitFvOut,s2Step249ExitGvOut] :=
  hmrRows_owned_drop s2Step249ExitGvAfter [s2Step249ExitGOut,s2Step249ExitFOut,s2Step249ExitFvOut,s2Step249ExitGvOut] 2 s2Step249ExitBank_outgoingOwned

private theorem s2Step249ExitFv_distinct : (s2Step249ExitFvRow.sign::s2Step249ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step249ExitFv_owned : (s2Step249ExitFvRow.sign::s2Step249ExitFvRow.payload).toFinset⊆s2Step249ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step249ExitFvBefore (fun q => (0≤q ∧ q<144) ∨ (145≤q ∧ q<658) ∨ (659≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<835) ∨ (836≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step249ExitFv_retired : s2Step249ExitFvBefore.retireSet s2Step249ExitFvExtra.toFinset=s2Step249ExitFvAfter := by
  unfold Arena.retireSet s2Step249ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step249ExitFvBefore,s2Step249ExitFAfter,s2Step249ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step249ExitFv_checked : planRowResizeLog s2Step249ExitFvBefore s2Step249ExitFvRow 140 []=
    some (s2Step249ExitFvAfter,s2Step249ExitFvOut,shrinkRow 770 s2Step249ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step249ExitFvBefore s2Step249ExitFvRow 140 s2Step249ExitFv_distinct s2Step249ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step249ExitFvRow.payload.take 140) s2Step249ExitFvRow.sign=s2Step249ExitFvOut := by decide +kernel
  have hi : s2Step249ExitFvRow.payload.drop 140=s2Step249ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step249ExitFv_retired] at result
  exact result

private def s2Step249ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private theorem s2Step249ExitG_Incoming : rowsOwned s2Step249ExitGBefore [s2Step249ExitGRow,s2Step249ExitFRow,s2Step249ExitFvRow,s2Step249ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step249ExitGRow,s2Step249ExitFRow,s2Step249ExitFvRow,s2Step249ExitGvRow] 0 s2Step249ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step249ExitGBefore (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step249ExitG_Outgoing : rowsOwned s2Step249ExitGvAfter [s2Step249ExitGOut,s2Step249ExitFOut,s2Step249ExitFvOut,s2Step249ExitGvOut] :=
  hmrRows_owned_drop s2Step249ExitGvAfter [s2Step249ExitGOut,s2Step249ExitFOut,s2Step249ExitFvOut,s2Step249ExitGvOut] 0 s2Step249ExitBank_outgoingOwned

private theorem s2Step249ExitG_distinct : (s2Step249ExitGRow.sign::s2Step249ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step249ExitG_owned : (s2Step249ExitGRow.sign::s2Step249ExitGRow.payload).toFinset⊆s2Step249ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step249ExitGBefore (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step249ExitG_retired : s2Step249ExitGBefore.retireSet s2Step249ExitGExtra.toFinset=s2Step249ExitGAfter := by
  unfold Arena.retireSet s2Step249ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step249ExitGBefore,s2Step249ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step249ExitG_checked : planRowResizeLog s2Step249ExitGBefore s2Step249ExitGRow 144 []=
    some (s2Step249ExitGAfter,s2Step249ExitGOut,shrinkRow 769 s2Step249ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step249ExitGBefore s2Step249ExitGRow 144 s2Step249ExitG_distinct s2Step249ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step249ExitGRow.payload.take 144) s2Step249ExitGRow.sign=s2Step249ExitGOut := by decide +kernel
  have hi : s2Step249ExitGRow.payload.drop 144=s2Step249ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step249ExitG_retired] at result
  exact result

private def s2Step249ExitGvBefore : Arena := s2Step249ExitFvAfter

private theorem s2Step249ExitGv_Incoming : rowsOwned s2Step249ExitGvBefore [s2Step249ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step249ExitGRow,s2Step249ExitFRow,s2Step249ExitFvRow,s2Step249ExitGvRow] 3 s2Step249ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step249ExitGvBefore (fun q => (0≤q ∧ q<144) ∨ (145≤q ∧ q<658) ∨ (659≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<835) ∨ (836≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step249ExitGv_Outgoing : rowsOwned s2Step249ExitGvAfter [s2Step249ExitGvOut] :=
  hmrRows_owned_drop s2Step249ExitGvAfter [s2Step249ExitGOut,s2Step249ExitFOut,s2Step249ExitFvOut,s2Step249ExitGvOut] 3 s2Step249ExitBank_outgoingOwned

private theorem s2Step249ExitGv_distinct : (s2Step249ExitGvRow.sign::s2Step249ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step249ExitGv_owned : (s2Step249ExitGvRow.sign::s2Step249ExitGvRow.payload).toFinset⊆s2Step249ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step249ExitGvBefore (fun q => (0≤q ∧ q<144) ∨ (145≤q ∧ q<658) ∨ (659≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<835) ∨ (836≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step249ExitGv_retired : s2Step249ExitGvBefore.retireSet s2Step249ExitGvExtra.toFinset=s2Step249ExitGvAfter := by
  unfold Arena.retireSet s2Step249ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step249ExitGvBefore,s2Step249ExitFvAfter,s2Step249ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step249ExitGv_checked : planRowResizeLog s2Step249ExitGvBefore s2Step249ExitGvRow 139 []=
    some (s2Step249ExitGvAfter,s2Step249ExitGvOut,shrinkRow 771 s2Step249ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step249ExitGvBefore s2Step249ExitGvRow 139 s2Step249ExitGv_distinct s2Step249ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step249ExitGvRow.payload.take 139) s2Step249ExitGvRow.sign=s2Step249ExitGvOut := by decide +kernel
  have hi : s2Step249ExitGvRow.payload.drop 139=s2Step249ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step249ExitGv_retired] at result
  exact result

private theorem s2Step249ExitBank_rows : planWindowRowsLog s2Step249ExitGBefore [(s2Step249ExitGRow,144),(s2Step249ExitFRow,146),(s2Step249ExitFvRow,140),(s2Step249ExitGvRow,139)] [[],[],[],[]]=
    some (s2Step249ExitGvAfter,[s2Step249ExitGOut,s2Step249ExitFOut,s2Step249ExitFvOut,s2Step249ExitGvOut],(shrinkRow 769 s2Step249ExitGExtra ++ (shrinkRow 768 s2Step249ExitFExtra ++ (shrinkRow 770 s2Step249ExitFvExtra ++ (shrinkRow 771 s2Step249ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step249ExitGvAfter [] []=some (s2Step249ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step249ExitGvBefore s2Step249ExitGvAfter s2Step249ExitGvAfter
    s2Step249ExitGvRow s2Step249ExitGvOut 139 [] [] [] []
    (shrinkRow 771 s2Step249ExitGvExtra) ([]) s2Step249ExitGv_Incoming s2Step249ExitGv_checked h4 s2Step249ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step249ExitFvBefore s2Step249ExitFvAfter s2Step249ExitGvAfter
    s2Step249ExitFvRow s2Step249ExitFvOut 140 [] [(s2Step249ExitGvRow,139)] [[]] [s2Step249ExitGvOut]
    (shrinkRow 770 s2Step249ExitFvExtra) ((shrinkRow 771 s2Step249ExitGvExtra ++ [])) s2Step249ExitFv_Incoming s2Step249ExitFv_checked h3 s2Step249ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step249ExitFBefore s2Step249ExitFAfter s2Step249ExitGvAfter
    s2Step249ExitFRow s2Step249ExitFOut 146 [] [(s2Step249ExitFvRow,140),(s2Step249ExitGvRow,139)] [[],[]] [s2Step249ExitFvOut,s2Step249ExitGvOut]
    (shrinkRow 768 s2Step249ExitFExtra) ((shrinkRow 770 s2Step249ExitFvExtra ++ (shrinkRow 771 s2Step249ExitGvExtra ++ []))) s2Step249ExitF_Incoming s2Step249ExitF_checked h2 s2Step249ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step249ExitGBefore s2Step249ExitGAfter s2Step249ExitGvAfter
    s2Step249ExitGRow s2Step249ExitGOut 144 [] [(s2Step249ExitFRow,146),(s2Step249ExitFvRow,140),(s2Step249ExitGvRow,139)] [[],[],[]] [s2Step249ExitFOut,s2Step249ExitFvOut,s2Step249ExitGvOut]
    (shrinkRow 769 s2Step249ExitGExtra) ((shrinkRow 768 s2Step249ExitFExtra ++ (shrinkRow 770 s2Step249ExitFvExtra ++ (shrinkRow 771 s2Step249ExitGvExtra ++ [])))) s2Step249ExitG_Incoming s2Step249ExitG_checked h1 s2Step249ExitG_Outgoing
  exact h0

private theorem s2Step249ExitBank_checked : compileHmrBankResizeLog .exit s2Step249ExitGBefore ⟨s2Step249ExitFRow,s2Step249ExitGRow,s2Step249ExitFvRow,s2Step249ExitGvRow⟩ ⟨146,144,140,139⟩ [[],[],[],[]]=
    some (s2Step249ExitGvAfter,⟨s2Step249ExitFOut,s2Step249ExitGOut,s2Step249ExitFvOut,s2Step249ExitGvOut⟩,(shrinkRow 769 s2Step249ExitGExtra ++ (shrinkRow 768 s2Step249ExitFExtra ++ (shrinkRow 770 s2Step249ExitFvExtra ++ (shrinkRow 771 s2Step249ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step249ExitBank_rows]
  rfl

private theorem s2Step249Add0_apart : Disjoint s2Step249Add0Arena.live s2Step249Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step249Add0Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step249Add0_card : s2Step249Add0Arena.live.card=899 := by
  decide +kernel

private theorem s2Step249Add0_borrowed : s2Step249Add0Arena.checkBorrow (hmrHybridCount s2Step249Add0Arena s2Step249Add0B.length) s2Step249Add0Work=some s2Step249Add0During := by
  have len : s2Step249Add0Work.length=hmrHybridCount s2Step249Add0Arena s2Step249Add0B.length := by
    rw [hmrHybridCount,s2Step249Add0_card]
    decide +kernel
  have nd : s2Step249Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step249Add0Arena s2Step249Add0During s2Step249Add0Work.toFinset s2Step249Add0_bounded s2Step249Add0_apart rfl

private theorem s2Step249Add0_distinct : (885::830::891::(s2Step249Add0A++s2Step249Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step249Add0_owned : (885::830::891::(s2Step249Add0A++s2Step249Add0B)).toFinset⊆s2Step249Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step249Add0Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step249Add0_checked : compileHmrHybridCinLog s2Step249Add0Arena 830 885 891 s2Step249Add0A s2Step249Add0B s2Step249Add0Work=some s2Step249Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step249Add0Arena s2Step249Add0During 830 885 891 s2Step249Add0A s2Step249Add0B s2Step249Add0Work
    (by decide +kernel) (by decide +kernel) s2Step249Add0_distinct
    (fun q hq => s2Step249Add0_owned (List.mem_toFinset.mpr hq)) s2Step249Add0_borrowed

private theorem s2Step249Add1_apart : Disjoint s2Step249Add1Arena.live s2Step249Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step249Add1Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step249Add1_card : s2Step249Add1Arena.live.card=899 := by
  decide +kernel

private theorem s2Step249Add1_borrowed : s2Step249Add1Arena.checkBorrow (hmrHybridCount s2Step249Add1Arena s2Step249Add1B.length) s2Step249Add1Work=some s2Step249Add1During := by
  have len : s2Step249Add1Work.length=hmrHybridCount s2Step249Add1Arena s2Step249Add1B.length := by
    rw [hmrHybridCount,s2Step249Add1_card]
    decide +kernel
  have nd : s2Step249Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step249Add1Arena s2Step249Add1During s2Step249Add1Work.toFinset s2Step249Add1_bounded s2Step249Add1_apart rfl

private theorem s2Step249Add1_distinct : (885::830::891::(s2Step249Add1A++s2Step249Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step249Add1_owned : (885::830::891::(s2Step249Add1A++s2Step249Add1B)).toFinset⊆s2Step249Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step249Add1Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step249Add1_checked : compileHmrHybridCinLog s2Step249Add1Arena 830 885 891 s2Step249Add1A s2Step249Add1B s2Step249Add1Work=some s2Step249Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step249Add1Arena s2Step249Add1During 830 885 891 s2Step249Add1A s2Step249Add1B s2Step249Add1Work
    (by decide +kernel) (by decide +kernel) s2Step249Add1_distinct
    (fun q hq => s2Step249Add1_owned (List.mem_toFinset.mpr hq)) s2Step249Add1_borrowed

private theorem s2Step249F4_apart : Disjoint (s2Step249Add0A++s2Step249Add0B).toFinset (s2Step249Add1A++s2Step249Add1B).toFinset := by
  have nd : ((s2Step249Add0A++s2Step249Add0B)++(s2Step249Add1A++s2Step249Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step249F4_carry : s2Step249F4FlagArena.checkBorrow 1 [891]=some s2Step249Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step249F4FlagArena,s2Step249HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step249F4FlagArena,s2Step249HeadFvAfter,s2Step249Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step249F4_distinct : (842::830::885::891::((s2Step249Add0A++s2Step249Add1A)++(s2Step249Add0B++s2Step249Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step249F4_flag : s2Step249HeadFvAfter.checkBorrow 1 [885]=some s2Step249F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step249HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step249F4_owned : (842::830::((s2Step249Add0A++s2Step249Add1A)++(s2Step249Add0B++s2Step249Add1B))).toFinset⊆s2Step249HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step249HeadFvAfter (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step249F4_checked : compileHmrHybridF4Log s2Step249HeadFvAfter 842 830 s2Step249Add0A s2Step249Add0B s2Step249Add1A s2Step249Add1B [885] [891] s2Step249Add0Work s2Step249Add1Work=some s2Step249F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step249HeadFvAfter s2Step249F4FlagArena s2Step249Add0Arena s2Step249Add0During s2Step249Add1During 842 830
    s2Step249Add0A s2Step249Add0B s2Step249Add1A s2Step249Add1B [885] [891] s2Step249Add0Work s2Step249Add1Work
    (fun q hq => s2Step249F4_owned (List.mem_toFinset.mpr hq)) s2Step249F4_flag s2Step249F4_carry
    s2Step249F4_distinct s2Step249F4_apart s2Step249Add0_checked s2Step249Add1_checked

private theorem s2Step249Front_branch : s2Step249FrontSigmaArena.checkBorrow 1 [830]=some s2Step249HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step249FrontSigmaArena,s2Step249EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step249FrontSigmaArena,s2Step249EntryGvAfter,s2Step249HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step249Front_entry : HmrFrontEntryValid s2Step249EntryFBefore s2Step249FrontBank 147 140 ⟨146,144,140,139⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step249FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step249EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step249EntryFBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (831≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step249FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step249Front_sigma : s2Step249EntryGvAfter.checkBorrow 1 [842]=some s2Step249FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step249EntryGvAfter,arenaWires]
  · rfl

private def s2Step249HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step249HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<835) ∨ (836≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step249HeadFBefore : Arena := s2Step249HeadGAfter

private def s2Step249HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658],768⟩

private def s2Step249HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834],770⟩

private def s2Step249HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 810, 814],769⟩

private def s2Step249HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 803],771⟩

private theorem s2Step249HeadBank_incomingDistinct : ([s2Step249HeadGRow,s2Step249HeadFRow,s2Step249HeadGvRow,s2Step249HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step249HeadF_Incoming : rowsOwned s2Step249HeadFBefore [s2Step249HeadFRow,s2Step249HeadGvRow,s2Step249HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step249HeadGRow,s2Step249HeadFRow,s2Step249HeadGvRow,s2Step249HeadFvRow] 1 s2Step249HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step249HeadFBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<835) ∨ (836≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step249HeadBank_outgoingOwned : rowsOwned s2Step249HeadFvAfter [s2Step249HeadGOut,s2Step249HeadFOut,s2Step249HeadGvOut,s2Step249HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step249HeadFvAfter (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step249HeadF_Outgoing : rowsOwned s2Step249HeadFvAfter [s2Step249HeadFOut,s2Step249HeadGvOut,s2Step249HeadFvOut] :=
  hmrRows_owned_drop s2Step249HeadFvAfter [s2Step249HeadGOut,s2Step249HeadFOut,s2Step249HeadGvOut,s2Step249HeadFvOut] 1 s2Step249HeadBank_outgoingOwned

private theorem s2Step249HeadF_distinct : (s2Step249HeadFRow.sign::s2Step249HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step249HeadF_owned : (s2Step249HeadFRow.sign::s2Step249HeadFRow.payload).toFinset⊆s2Step249HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step249HeadFBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<835) ∨ (836≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step249HeadF_reserved : s2Step249HeadFBefore.reserve s2Step249HeadFFresh.toFinset=some s2Step249HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step249HeadFFresh,arenaWires]
  · norm_num [s2Step249HeadFBefore,s2Step249HeadGAfter,s2Step249HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step249HeadFAfter,s2Step249HeadFBefore,s2Step249HeadGAfter,s2Step249HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step249HeadF_checked : planRowResizeLog s2Step249HeadFBefore s2Step249HeadFRow 148 s2Step249HeadFFresh=
    some (s2Step249HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 835],768⟩,growRow 768 s2Step249HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step249HeadFBefore s2Step249HeadFAfter s2Step249HeadFRow 148 s2Step249HeadFFresh
    s2Step249HeadF_distinct s2Step249HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step249HeadF_reserved
  have rowEq : WindowRow.mk (s2Step249HeadFRow.payload++s2Step249HeadFFresh) s2Step249HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 835],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step249HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step249HeadFvBefore : Arena := s2Step249HeadGvAfter

private theorem s2Step249HeadFv_Incoming : rowsOwned s2Step249HeadFvBefore [s2Step249HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step249HeadGRow,s2Step249HeadFRow,s2Step249HeadGvRow,s2Step249HeadFvRow] 3 s2Step249HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step249HeadFvBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step249HeadFv_Outgoing : rowsOwned s2Step249HeadFvAfter [s2Step249HeadFvOut] :=
  hmrRows_owned_drop s2Step249HeadFvAfter [s2Step249HeadGOut,s2Step249HeadFOut,s2Step249HeadGvOut,s2Step249HeadFvOut] 3 s2Step249HeadBank_outgoingOwned

private theorem s2Step249HeadFv_distinct : (s2Step249HeadFvRow.sign::s2Step249HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step249HeadFv_owned : (s2Step249HeadFvRow.sign::s2Step249HeadFvRow.payload).toFinset⊆s2Step249HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step249HeadFvBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step249HeadFv_reserved : s2Step249HeadFvBefore.reserve s2Step249HeadFvFresh.toFinset=some s2Step249HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step249HeadFvFresh,arenaWires]
  · norm_num [s2Step249HeadFvBefore,s2Step249HeadGvAfter,s2Step249HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step249HeadFvAfter,s2Step249HeadFvBefore,s2Step249HeadGvAfter,s2Step249HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step249HeadFv_checked : planRowResizeLog s2Step249HeadFvBefore s2Step249HeadFvRow 141 s2Step249HeadFvFresh=
    some (s2Step249HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 800],770⟩,growRow 770 s2Step249HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step249HeadFvBefore s2Step249HeadFvAfter s2Step249HeadFvRow 141 s2Step249HeadFvFresh
    s2Step249HeadFv_distinct s2Step249HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step249HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step249HeadFvRow.payload++s2Step249HeadFvFresh) s2Step249HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 800],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step249HeadG_Incoming : rowsOwned s2Step249HeadGBefore [s2Step249HeadGRow,s2Step249HeadFRow,s2Step249HeadGvRow,s2Step249HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step249HeadGRow,s2Step249HeadFRow,s2Step249HeadGvRow,s2Step249HeadFvRow] 0 s2Step249HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step249HeadGBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<835) ∨ (836≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step249HeadG_Outgoing : rowsOwned s2Step249HeadFvAfter [s2Step249HeadGOut,s2Step249HeadFOut,s2Step249HeadGvOut,s2Step249HeadFvOut] :=
  hmrRows_owned_drop s2Step249HeadFvAfter [s2Step249HeadGOut,s2Step249HeadFOut,s2Step249HeadGvOut,s2Step249HeadFvOut] 0 s2Step249HeadBank_outgoingOwned

private theorem s2Step249HeadG_distinct : (s2Step249HeadGRow.sign::s2Step249HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step249HeadG_owned : (s2Step249HeadGRow.sign::s2Step249HeadGRow.payload).toFinset⊆s2Step249HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step249HeadGBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<835) ∨ (836≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step249HeadG_reserved : s2Step249HeadGBefore.reserve s2Step249HeadGFresh.toFinset=some s2Step249HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step249HeadGFresh,arenaWires]
  · norm_num [s2Step249HeadGBefore,s2Step249HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step249HeadGAfter,s2Step249HeadGBefore,s2Step249HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step249HeadG_checked : planRowResizeLog s2Step249HeadGBefore s2Step249HeadGRow 148 s2Step249HeadGFresh=
    some (s2Step249HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 810, 814, 809],769⟩,growRow 769 s2Step249HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step249HeadGBefore s2Step249HeadGAfter s2Step249HeadGRow 148 s2Step249HeadGFresh
    s2Step249HeadG_distinct s2Step249HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step249HeadG_reserved
  have rowEq : WindowRow.mk (s2Step249HeadGRow.payload++s2Step249HeadGFresh) s2Step249HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 810, 814, 809],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step249HeadGvBefore : Arena := s2Step249HeadFAfter

private theorem s2Step249HeadGv_Incoming : rowsOwned s2Step249HeadGvBefore [s2Step249HeadGvRow,s2Step249HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step249HeadGRow,s2Step249HeadFRow,s2Step249HeadGvRow,s2Step249HeadFvRow] 2 s2Step249HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step249HeadGvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step249HeadGv_Outgoing : rowsOwned s2Step249HeadFvAfter [s2Step249HeadGvOut,s2Step249HeadFvOut] :=
  hmrRows_owned_drop s2Step249HeadFvAfter [s2Step249HeadGOut,s2Step249HeadFOut,s2Step249HeadGvOut,s2Step249HeadFvOut] 2 s2Step249HeadBank_outgoingOwned

private theorem s2Step249HeadGv_distinct : (s2Step249HeadGvRow.sign::s2Step249HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step249HeadGv_owned : (s2Step249HeadGvRow.sign::s2Step249HeadGvRow.payload).toFinset⊆s2Step249HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step249HeadGvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step249HeadGv_reserved : s2Step249HeadGvBefore.reserve s2Step249HeadGvFresh.toFinset=some s2Step249HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step249HeadGvFresh,arenaWires]
  · norm_num [s2Step249HeadGvBefore,s2Step249HeadFAfter,s2Step249HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step249HeadGvAfter,s2Step249HeadGvBefore,s2Step249HeadFAfter,s2Step249HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step249HeadGv_checked : planRowResizeLog s2Step249HeadGvBefore s2Step249HeadGvRow 141 s2Step249HeadGvFresh=
    some (s2Step249HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 803, 792],771⟩,growRow 771 s2Step249HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step249HeadGvBefore s2Step249HeadGvAfter s2Step249HeadGvRow 141 s2Step249HeadGvFresh
    s2Step249HeadGv_distinct s2Step249HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step249HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step249HeadGvRow.payload++s2Step249HeadGvFresh) s2Step249HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 803, 792],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step249HeadBank_rows : planWindowRowsLog s2Step249HeadGBefore [(s2Step249HeadGRow,148),(s2Step249HeadFRow,148),(s2Step249HeadGvRow,141),(s2Step249HeadFvRow,141)] [s2Step249HeadGFresh,s2Step249HeadFFresh,s2Step249HeadGvFresh,s2Step249HeadFvFresh]=
    some (s2Step249HeadFvAfter,[s2Step249HeadGOut,s2Step249HeadFOut,s2Step249HeadGvOut,s2Step249HeadFvOut],(growRow 769 s2Step249HeadGFresh ++ (growRow 768 s2Step249HeadFFresh ++ (growRow 771 s2Step249HeadGvFresh ++ (growRow 770 s2Step249HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step249HeadFvAfter [] []=some (s2Step249HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step249HeadFvBefore s2Step249HeadFvAfter s2Step249HeadFvAfter
    s2Step249HeadFvRow s2Step249HeadFvOut 141 s2Step249HeadFvFresh [] [] []
    (growRow 770 s2Step249HeadFvFresh) ([]) s2Step249HeadFv_Incoming s2Step249HeadFv_checked h4 s2Step249HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step249HeadGvBefore s2Step249HeadGvAfter s2Step249HeadFvAfter
    s2Step249HeadGvRow s2Step249HeadGvOut 141 s2Step249HeadGvFresh [(s2Step249HeadFvRow,141)] [s2Step249HeadFvFresh] [s2Step249HeadFvOut]
    (growRow 771 s2Step249HeadGvFresh) ((growRow 770 s2Step249HeadFvFresh ++ [])) s2Step249HeadGv_Incoming s2Step249HeadGv_checked h3 s2Step249HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step249HeadFBefore s2Step249HeadFAfter s2Step249HeadFvAfter
    s2Step249HeadFRow s2Step249HeadFOut 148 s2Step249HeadFFresh [(s2Step249HeadGvRow,141),(s2Step249HeadFvRow,141)] [s2Step249HeadGvFresh,s2Step249HeadFvFresh] [s2Step249HeadGvOut,s2Step249HeadFvOut]
    (growRow 768 s2Step249HeadFFresh) ((growRow 771 s2Step249HeadGvFresh ++ (growRow 770 s2Step249HeadFvFresh ++ []))) s2Step249HeadF_Incoming s2Step249HeadF_checked h2 s2Step249HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step249HeadGBefore s2Step249HeadGAfter s2Step249HeadFvAfter
    s2Step249HeadGRow s2Step249HeadGOut 148 s2Step249HeadGFresh [(s2Step249HeadFRow,148),(s2Step249HeadGvRow,141),(s2Step249HeadFvRow,141)] [s2Step249HeadFFresh,s2Step249HeadGvFresh,s2Step249HeadFvFresh] [s2Step249HeadFOut,s2Step249HeadGvOut,s2Step249HeadFvOut]
    (growRow 769 s2Step249HeadGFresh) ((growRow 768 s2Step249HeadFFresh ++ (growRow 771 s2Step249HeadGvFresh ++ (growRow 770 s2Step249HeadFvFresh ++ [])))) s2Step249HeadG_Incoming s2Step249HeadG_checked h1 s2Step249HeadG_Outgoing
  exact h0

private theorem s2Step249HeadBank_checked : compileHmrBankResizeLog .headroom s2Step249HeadGBefore ⟨s2Step249HeadFRow,s2Step249HeadGRow,s2Step249HeadFvRow,s2Step249HeadGvRow⟩ ⟨148,148,141,141⟩ [s2Step249HeadGFresh,s2Step249HeadFFresh,s2Step249HeadGvFresh,s2Step249HeadFvFresh]=
    some (s2Step249HeadFvAfter,⟨s2Step249HeadFOut,s2Step249HeadGOut,s2Step249HeadFvOut,s2Step249HeadGvOut⟩,(growRow 769 s2Step249HeadGFresh ++ (growRow 768 s2Step249HeadFFresh ++ (growRow 771 s2Step249HeadGvFresh ++ (growRow 770 s2Step249HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step249HeadBank_rows]
  rfl

private theorem s2Step249Front_checked : compileHmrSourceFrontLog s2Step249EntryFBefore s2Step249FrontBank 147 140 ⟨146,144,140,139⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step249FrontLog=some s2Step249FrontPlan := by
  have pairEq : s2Step249FrontPair=⟨s2Step249HeadFRow,s2Step249HeadGRow,s2Step249HeadFvRow,s2Step249HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step249FrontHead=⟨s2Step249ExitFRow,s2Step249ExitGRow,s2Step249ExitFvRow,s2Step249ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step249Add0A=s2Step249FrontHead.f.wires := by decide +kernel
  have gEq : s2Step249Add0B=s2Step249FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step249Add1A=s2Step249FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step249Add1B=s2Step249FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step249EntryFBefore s2Step249FrontBank 147 140 ⟨146,144,140,139⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step249FrontLog s2Step249FrontPlan
  · exact s2Step249Front_entry
  · exact s2Step249EntryBank_checked
  · exact s2Step249Front_sigma
  · rfl
  · exact s2Step249Front_branch
  · rfl
  · simpa only [s2Step249FrontPlan,pairEq] using s2Step249HeadBank_checked
  · simpa only [s2Step249FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step249F4_checked
  · exact s2Step249Counter_checked
  · rfl
  · simpa only [s2Step249FrontPlan,headEq] using s2Step249ExitBank_checked

private theorem s2Step249Complete_explicit_checked : compileHmrEarlyStepLog s2Step249EntryFBefore s2Step249FrontBank 147 140 ⟨146,144,140,139⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 51 s2Step249CompleteLog=some s2Step249CompletePlan := by
  let Q := s2Step249EarlyControlPlan
  have hq := s2Step249EarlyControl_plan_checked
  have fv1 : s2Step249CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step249CompleteOut.fv.payload[2]?.getD s2Step249CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step249CompleteOut.fv.payload[3]?.getD s2Step249CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step249CompleteOut.fv.payload[4]?.getD s2Step249CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step249EntryFBefore s2Step249EarlyControlArena s2Step249FrontBank 147 140 ⟨146,144,140,139⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 51 s2Step249CompleteLog s2Step249FrontPlan Q
    s2Step249Front_checked s2Step249Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step249Complete_owned s2Step249Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step249EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 777 842 s2Step249CompleteOut.fv.second (s2Step249CompleteOut.fv.payload[2]?.getD s2Step249CompleteOut.fv.sign) (s2Step249CompleteOut.fv.payload[3]?.getD s2Step249CompleteOut.fv.sign) (s2Step249CompleteOut.fv.payload[4]?.getD s2Step249CompleteOut.fv.sign) 830 51 s2Step249EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep249Arena : Arena := s2Step249EntryFBefore
def s2PrivateStep249Bank : WindowBank := s2Step249FrontBank
def s2PrivateStep249Spec : HmrSourceWalkStepLog := ⟨147,140,⟨146,144,140,139⟩,51,.early s2Step249CompleteLog⟩
def s2PrivateStep249Plan : HmrSourceStepPlan := .early s2Step249CompletePlan
theorem s2PrivateStep249_source : s2PrivateStep249Spec=s2ObservedLogs240[9] := rfl
theorem s2PrivateStep249_checked : compileHmrSourceStepLog s2PrivateStep249Arena s2PrivateStep249Bank
    s2PrivateStep249Spec.fgWidth s2PrivateStep249Spec.vWidth s2PrivateStep249Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900]
    6 498 249 s2PrivateStep249Spec.need none s2PrivateStep249Spec.log=some s2PrivateStep249Plan := by
  change compileHmrSourceStepLog s2Step249EntryFBefore s2Step249FrontBank 147 140 ⟨146,144,140,139⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 6 498 249 51 none (.early s2Step249CompleteLog)=some (.early s2Step249CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 249<498)]
  rw [s2Step249Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
