import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep336
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

private def s2Step338CompleteMoves : List (Wire × Wire) := []

private def s2Step338EarlyControlLog : HmrEarlyControlLog := ⟨[784, 800, 806, 789, 851],[894],[896],[901, 903, 907, 913, 914, 915],[]⟩

private def s2Step338FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [877, 789], [], [841]],[[851], [806], [784], [800]],[[], [], [], []]⟩,[794],[827],[894],[896],[901, 903, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[901, 903, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[894, 896, 901, 903]⟩

private def s2Step338CompleteLog : HmrEarlyStepLog := ⟨s2Step338FrontLog,s2Step338CompleteMoves,s2Step338EarlyControlLog⟩

private def s2Step338ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614],768⟩

private def s2Step338ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822],770⟩

private def s2Step338ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 877],769⟩

private def s2Step338ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841],771⟩

private def s2Step338FrontOut : WindowBank := ⟨s2Step338ExitFOut,s2Step338ExitGOut,s2Step338ExitFvOut,s2Step338ExitGvOut⟩

private def s2Step338CompleteOut : WindowBank := s2Step338FrontOut.repacked s2Step338CompleteMoves

private def s2Step338EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<851) ∨ (852≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step338EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step338EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step338EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step338EarlyControlPositiveArena,[894],s2Step338EarlyControlEqualityArena,[896],⟨⟨794,false⟩,[⟨⟨894,false⟩,896⟩]⟩⟩

private def s2Step338EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<916)),Finset.filter_subset _ _⟩

private def s2Step338EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<916)),Finset.filter_subset _ _⟩

private def s2Step338EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<851) ∨ (852≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step338EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<789) ∨ (790≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<851) ∨ (852≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step338EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<789) ∨ (790≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<851) ∨ (852≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step338EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step338EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,784⟩,⟨⟨774,false⟩,800⟩,⟨⟨775,false⟩,806⟩,⟨⟨776,false⟩,789⟩,⟨⟨777,false⟩,851⟩]⟩

private def s2Step338EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step338EarlyControlZeroArena,s2Step338EarlyControlZeroPlan,s2Step338EarlyControlClassPlan,s2Step338EarlyControlFlagArena,s2Step338EarlyControlFittedArena,s2Step338EarlyControlHistoryArena,s2Step338EarlyControlSigmaArena,s2Step338EarlyControlOutputArena,s2Step338EarlyControlLog⟩

private def s2Step338CounterWork : List Wire := [894, 896, 901, 903]

private theorem s2Step338Counter_bounded : s2Step338CounterWork.toFinset⊆arenaWires := by norm_num [s2Step338CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step338HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step338CounterDuring : Arena := ⟨s2Step338HeadFvAfter.live∪s2Step338CounterWork.toFinset,Finset.union_subset s2Step338HeadFvAfter.bounded s2Step338Counter_bounded⟩

private def s2Step338EntryFFresh : List Wire := []

private def s2Step338EntryFvFresh : List Wire := []

private def s2Step338EntryGFresh : List Wire := [877, 789]

private def s2Step338EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<851) ∨ (852≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step338EntryGvFresh : List Wire := [841]

private def s2Step338ExitFExtra : List Wire := [806]

private def s2Step338ExitFvExtra : List Wire := [800]

private def s2Step338ExitGExtra : List Wire := [789, 851]

private def s2Step338ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<851) ∨ (852≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step338ExitGvExtra : List Wire := [784]

private def s2Step338Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step338Add0Work : List Wire := [901, 903, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step338Add0_bounded : s2Step338Add0Work.toFinset⊆arenaWires := by
  have h : s2Step338Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step338Add0During : Arena := ⟨s2Step338Add0Arena.live∪s2Step338Add0Work.toFinset,Finset.union_subset s2Step338Add0Arena.bounded s2Step338Add0_bounded⟩

private def s2Step338Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step338Add1Work : List Wire := [901, 903, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step338Add1_bounded : s2Step338Add1Work.toFinset⊆arenaWires := by
  have h : s2Step338Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step338Add1During : Arena := ⟨s2Step338Add1Arena.live∪s2Step338Add1Work.toFinset,Finset.union_subset s2Step338Add1Arena.bounded s2Step338Add1_bounded⟩

private def s2Step338F4FlagArena : Arena := ⟨s2Step338HeadFvAfter.live∪{894},Finset.union_subset s2Step338HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step338F4Plan : HmrHybridF4Plan := ⟨s2Step338F4FlagArena,[894],s2Step338Add0Arena,[896],s2Step338Add0During,s2Step338Add0Work,s2Step338Add1During,s2Step338Add1Work⟩

private def s2Step338HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 806],768⟩

private def s2Step338HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 800],770⟩

private def s2Step338HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 877, 789, 851],769⟩

private def s2Step338HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 784],771⟩

private def s2Step338FrontHead : WindowBank := ⟨s2Step338HeadFOut,s2Step338HeadGOut,s2Step338HeadFvOut,s2Step338HeadGvOut⟩

private def s2Step338EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614],768⟩

private def s2Step338EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822],770⟩

private def s2Step338EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 877, 789],769⟩

private def s2Step338EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841],771⟩

private def s2Step338FrontPair : WindowBank := ⟨s2Step338EntryFOut,s2Step338EntryGOut,s2Step338EntryFvOut,s2Step338EntryGvOut⟩

private def s2Step338FrontSigmaArena : Arena := ⟨s2Step338EntryGvAfter.live∪{794},Finset.union_subset s2Step338EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step338HeadFFresh : List Wire := [806]

private def s2Step338HeadFvFresh : List Wire := [800]

private def s2Step338HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<851) ∨ (852≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step338HeadGFresh : List Wire := [851]

private def s2Step338HeadGvFresh : List Wire := [784]

private def s2Step338FrontPlan : HmrSourceFront := ⟨s2Step338EntryGvAfter,s2Step338FrontPair,(growRow 768 s2Step338EntryFFresh ++ (growRow 769 s2Step338EntryGFresh ++ (growRow 770 s2Step338EntryFvFresh ++ (growRow 771 s2Step338EntryGvFresh ++ [])))),s2Step338FrontSigmaArena,[794],s2Step338HeadGBefore,[827],
  s2Step338HeadFvAfter,s2Step338FrontHead,(growRow 769 s2Step338HeadGFresh ++ (growRow 768 s2Step338HeadFFresh ++ (growRow 771 s2Step338HeadGvFresh ++ (growRow 770 s2Step338HeadFvFresh ++ [])))),s2Step338F4Plan,s2Step338CounterDuring,s2Step338CounterWork,s2Step338ExitGvAfter,s2Step338FrontOut,(shrinkRow 769 s2Step338ExitGExtra ++ (shrinkRow 768 s2Step338ExitFExtra ++ (shrinkRow 770 s2Step338ExitFvExtra ++ (shrinkRow 771 s2Step338ExitGvExtra ++ []))))⟩

private def s2Step338CompletePlan : HmrEarlyStepPlan := ⟨s2Step338FrontPlan,s2Step338EarlyControlArena,s2Step338EarlyControlPlan,s2Step338CompleteMoves⟩

private theorem s2Step338Complete_apart : List.Disjoint (s2Step338CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [794, 827, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] := by
  have nd : ((s2Step338CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[794, 827, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step338Complete_owned : (s2Step338CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step338EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step338EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<851) ∨ (852≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step338Complete_repack : s2Step338ExitGvAfter.checkRepack s2Step338CompleteMoves=some s2Step338EarlyControlArena := by rfl

private theorem s2Step338EarlyControl_branchOwned : ([827] : List Wire).toFinset⊆s2Step338EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step338EarlyControlSigmaArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<789) ∨ (790≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<851) ∨ (852≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step338EarlyControl_branch : compileHmrBranchRetirement s2Step338EarlyControlSigmaArena 827=some s2Step338EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step338EarlyControl_branchOwned
  · ext q
    simp [s2Step338EarlyControlOutputArena,s2Step338EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step338EarlyControl_classEqualityBorrow : s2Step338EarlyControlPositiveArena.checkBorrow (([794, 894] : List Wire).length-1) s2Step338EarlyControlLog.classWork=some s2Step338EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step338EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step338EarlyControlPositiveArena (fun q => (0≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step338EarlyControlEqualityArena,s2Step338EarlyControlPositiveArena,s2Step338EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step338EarlyControl_classEqualityOwned : ([794, 894] : List Wire).toFinset⊆s2Step338EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step338EarlyControlPositiveArena (fun q => (0≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step338EarlyControl_classEquality : compileHmrEqualityLog s2Step338EarlyControlPositiveArena [794, 894] 0 s2Step338EarlyControlLog.classWork=some (s2Step338EarlyControlEqualityArena,s2Step338EarlyControlLog.classWork,s2Step338EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step338EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step338EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step338EarlyControl_classOwned : ([777, 851, 794] : List Wire).toFinset⊆s2Step338EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step338EarlyControlZeroArena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step338EarlyControl_positiveBorrow : s2Step338EarlyControlZeroArena.checkBorrow (1) s2Step338EarlyControlLog.positiveWork=some s2Step338EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step338EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step338EarlyControlZeroArena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step338EarlyControlPositiveArena,s2Step338EarlyControlZeroArena,s2Step338EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step338EarlyControl_class : compileHmrSourceClassLog s2Step338EarlyControlZeroArena false 777 s2Step338EarlyControlZeroPlan.top 0 794 s2Step338EarlyControlLog.positiveWork s2Step338EarlyControlLog.classWork=some s2Step338EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step338EarlyControlClassPlan s2Step338EarlyControlZeroArena false 777 s2Step338EarlyControlZeroPlan.top 0 794
  constructor
  · decide +kernel
  · exact s2Step338EarlyControl_classOwned
  · exact s2Step338EarlyControl_positiveBorrow
  · exact s2Step338EarlyControl_classEquality

private theorem s2Step338EarlyControl_entryRecordOwned : ([827, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step338EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step338EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<851) ∨ (852≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step338EarlyControl_entrySigmaOwned : ([794, 254] : List Wire).toFinset⊆s2Step338EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step338EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<851) ∨ (852≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step338EarlyControl_fitBorrow : s2Step338EarlyControlFlagArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step338EarlyControlLog.recordFresh=some s2Step338EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step338EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step338EarlyControlFlagArena (fun q => (0≤q ∧ q<916)) rfl
      decide +kernel
    · ext q
      simp [s2Step338EarlyControlFittedArena,s2Step338EarlyControlFlagArena,s2Step338EarlyControlLog,arenaWires]

private theorem s2Step338EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step338EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step338EarlyControlFlagArena (fun q => (0≤q ∧ q<916)) rfl
  decide +kernel

private theorem s2Step338EarlyControl_fit : compileHmrRecordGrowLog s2Step338EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step338EarlyControlLog.recordFresh=some s2Step338EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step338EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step338EarlyControl_fitBorrow

private theorem s2Step338EarlyControl_flagsBorrow : s2Step338EarlyControlEqualityArena.checkBorrow (6) s2Step338EarlyControlLog.flagWork=some s2Step338EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step338EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step338EarlyControlEqualityArena (fun q => (0≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step338EarlyControlFlagArena,s2Step338EarlyControlEqualityArena,s2Step338EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step338EarlyControl_flagsOwned : ([896, 253, 252, 251] : List Wire).toFinset⊆s2Step338EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step338EarlyControlEqualityArena (fun q => (0≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step338EarlyControl_flags : compileHmrFlagsLog s2Step338EarlyControlClassPlan.equalityArena s2Step338EarlyControlClassPlan.equality.top 253 252 251 s2Step338EarlyControlLog.flagWork=some s2Step338EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step338EarlyControl_flagsOwned⟩
  · exact s2Step338EarlyControl_flagsBorrow

private theorem s2Step338EarlyControl_historyBorrow : s2Step338EarlyControlArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step338EarlyControlLog.recordFresh=some s2Step338EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step338EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step338EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<851) ∨ (852≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step338EarlyControlHistoryArena,s2Step338EarlyControlArena,s2Step338EarlyControlLog,arenaWires]

private theorem s2Step338EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step338EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step338EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<851) ∨ (852≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step338EarlyControl_history : compileHmrRecordGrowLog s2Step338EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step338EarlyControlLog.recordFresh=some s2Step338EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step338EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step338EarlyControl_historyBorrow

private theorem s2Step338EarlyControl_sigmaOwned : ([254, 794] : List Wire).toFinset⊆s2Step338EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step338EarlyControlHistoryArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<851) ∨ (852≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step338EarlyControl_sigmaReleaseOwned : ([794] : List Wire).toFinset⊆s2Step338EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step338EarlyControlHistoryArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<851) ∨ (852≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step338EarlyControl_sigmaRelease : s2Step338EarlyControlHistoryArena.release {794} (fun _ => false)=some s2Step338EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step338EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step338EarlyControlSigmaArena,s2Step338EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step338EarlyControl_sigma : compileHmrSigmaDropLog s2Step338EarlyControlHistoryArena false 0 0 254 794 []=some s2Step338EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step338EarlyControl_sigmaOwned⟩
  · exact s2Step338EarlyControl_sigmaRelease

private theorem s2Step338EarlyControl_zeroBorrow : s2Step338EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step338EarlyControlLog.zeroWork=some s2Step338EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step338EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step338EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<851) ∨ (852≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step338EarlyControlZeroArena,s2Step338EarlyControlArena,s2Step338EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step338EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step338EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step338EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<851) ∨ (852≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step338EarlyControl_zero : compileHmrEqualityLog s2Step338EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step338EarlyControlLog.zeroWork=some (s2Step338EarlyControlZeroArena,s2Step338EarlyControlLog.zeroWork,s2Step338EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step338EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step338EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step338EarlyControl_logged : s2Step338EarlyControlPlan.Logged s2Step338EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 794 254 253 252 251 827 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step338EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step338EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step338EarlyControl_zero
  · exact s2Step338EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step338EarlyControl_flags
  · exact s2Step338EarlyControl_fit
  · exact s2Step338EarlyControl_history
  · exact s2Step338EarlyControl_sigma
  · exact s2Step338EarlyControl_branch

private theorem s2Step338EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step338EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 794 254 253 252 251 827 60 s2Step338EarlyControlLog=some s2Step338EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step338EarlyControlPlan s2Step338EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 794 254 253 252 251 827 60 s2Step338EarlyControl_logged

private def s2Step338EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<789) ∨ (790≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<841) ∨ (842≤q ∧ q<851) ∨ (852≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step338EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614],768⟩

private def s2Step338EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822],770⟩

private def s2Step338EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100],769⟩

private def s2Step338EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786],771⟩

private def s2Step338FrontBank : WindowBank := ⟨s2Step338EntryFRow,s2Step338EntryGRow,s2Step338EntryFvRow,s2Step338EntryGvRow⟩

private def s2Step338Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 806, 768]

private def s2Step338Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 877, 789, 851, 769]

private def s2Step338Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 800, 770]

private def s2Step338Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 784, 771]

private theorem s2Step338Counter_apart : Disjoint s2Step338HeadFvAfter.live s2Step338CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step338HeadFvAfter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step338Counter_borrowed : s2Step338HeadFvAfter.checkBorrow 4 s2Step338CounterWork=some s2Step338CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step338HeadFvAfter s2Step338CounterDuring s2Step338CounterWork.toFinset s2Step338Counter_bounded s2Step338Counter_apart rfl

private theorem s2Step338Counter_owned : (794::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step338HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step338HeadFvAfter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step338Counter_checked : compileHmrCounterStepLog s2Step338HeadFvAfter true 794 [772, 773, 774, 775, 776, 777] s2Step338CounterWork=some s2Step338CounterDuring := by
  have owned : ∀q∈794::[772, 773, 774, 775, 776, 777],q∈s2Step338HeadFvAfter.live := fun q hq => s2Step338Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step338Counter_borrowed

private def s2Step338EntryFAfter : Arena := s2Step338EntryFBefore

private theorem s2Step338EntryBank_incomingDistinct : ([s2Step338EntryFRow,s2Step338EntryGRow,s2Step338EntryFvRow,s2Step338EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step338EntryF_Incoming : rowsOwned s2Step338EntryFBefore [s2Step338EntryFRow,s2Step338EntryGRow,s2Step338EntryFvRow,s2Step338EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step338EntryFRow,s2Step338EntryGRow,s2Step338EntryFvRow,s2Step338EntryGvRow] 0 s2Step338EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step338EntryFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<789) ∨ (790≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<841) ∨ (842≤q ∧ q<851) ∨ (852≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step338EntryBank_outgoingOwned : rowsOwned s2Step338EntryGvAfter [s2Step338EntryFOut,s2Step338EntryGOut,s2Step338EntryFvOut,s2Step338EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step338EntryGvAfter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<851) ∨ (852≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step338EntryF_Outgoing : rowsOwned s2Step338EntryGvAfter [s2Step338EntryFOut,s2Step338EntryGOut,s2Step338EntryFvOut,s2Step338EntryGvOut] :=
  hmrRows_owned_drop s2Step338EntryGvAfter [s2Step338EntryFOut,s2Step338EntryGOut,s2Step338EntryFvOut,s2Step338EntryGvOut] 0 s2Step338EntryBank_outgoingOwned

private theorem s2Step338EntryF_distinct : (s2Step338EntryFRow.sign::s2Step338EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step338EntryF_owned : (s2Step338EntryFRow.sign::s2Step338EntryFRow.payload).toFinset⊆s2Step338EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step338EntryFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<789) ∨ (790≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<841) ∨ (842≤q ∧ q<851) ∨ (852≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step338EntryF_reserved : s2Step338EntryFBefore.reserve s2Step338EntryFFresh.toFinset=some s2Step338EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step338EntryFFresh,arenaWires]
  · norm_num [s2Step338EntryFBefore,s2Step338EntryFFresh,arenaWires]
  · simp only [s2Step338EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step338EntryF_checked : planRowResizeLog s2Step338EntryFBefore s2Step338EntryFRow 103 s2Step338EntryFFresh=
    some (s2Step338EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614],768⟩,growRow 768 s2Step338EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step338EntryFBefore s2Step338EntryFAfter s2Step338EntryFRow 103 s2Step338EntryFFresh
    s2Step338EntryF_distinct s2Step338EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step338EntryF_reserved
  have rowEq : WindowRow.mk (s2Step338EntryFRow.payload++s2Step338EntryFFresh) s2Step338EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step338EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<841) ∨ (842≤q ∧ q<851) ∨ (852≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step338EntryFvAfter : Arena := s2Step338EntryGAfter

private def s2Step338EntryFvBefore : Arena := s2Step338EntryGAfter

private theorem s2Step338EntryFv_Incoming : rowsOwned s2Step338EntryFvBefore [s2Step338EntryFvRow,s2Step338EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step338EntryFRow,s2Step338EntryGRow,s2Step338EntryFvRow,s2Step338EntryGvRow] 2 s2Step338EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step338EntryFvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<841) ∨ (842≤q ∧ q<851) ∨ (852≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step338EntryFv_Outgoing : rowsOwned s2Step338EntryGvAfter [s2Step338EntryFvOut,s2Step338EntryGvOut] :=
  hmrRows_owned_drop s2Step338EntryGvAfter [s2Step338EntryFOut,s2Step338EntryGOut,s2Step338EntryFvOut,s2Step338EntryGvOut] 2 s2Step338EntryBank_outgoingOwned

private theorem s2Step338EntryFv_distinct : (s2Step338EntryFvRow.sign::s2Step338EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step338EntryFv_owned : (s2Step338EntryFvRow.sign::s2Step338EntryFvRow.payload).toFinset⊆s2Step338EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step338EntryFvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<841) ∨ (842≤q ∧ q<851) ∨ (852≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step338EntryFv_reserved : s2Step338EntryFvBefore.reserve s2Step338EntryFvFresh.toFinset=some s2Step338EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step338EntryFvFresh,arenaWires]
  · norm_num [s2Step338EntryFvBefore,s2Step338EntryGAfter,s2Step338EntryFvFresh,arenaWires]
  · simp only [s2Step338EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step338EntryFv_checked : planRowResizeLog s2Step338EntryFvBefore s2Step338EntryFvRow 185 s2Step338EntryFvFresh=
    some (s2Step338EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822],770⟩,growRow 770 s2Step338EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step338EntryFvBefore s2Step338EntryFvAfter s2Step338EntryFvRow 185 s2Step338EntryFvFresh
    s2Step338EntryFv_distinct s2Step338EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step338EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step338EntryFvRow.payload++s2Step338EntryFvFresh) s2Step338EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step338EntryGBefore : Arena := s2Step338EntryFBefore

private theorem s2Step338EntryG_Incoming : rowsOwned s2Step338EntryGBefore [s2Step338EntryGRow,s2Step338EntryFvRow,s2Step338EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step338EntryFRow,s2Step338EntryGRow,s2Step338EntryFvRow,s2Step338EntryGvRow] 1 s2Step338EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step338EntryGBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<789) ∨ (790≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<841) ∨ (842≤q ∧ q<851) ∨ (852≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step338EntryG_Outgoing : rowsOwned s2Step338EntryGvAfter [s2Step338EntryGOut,s2Step338EntryFvOut,s2Step338EntryGvOut] :=
  hmrRows_owned_drop s2Step338EntryGvAfter [s2Step338EntryFOut,s2Step338EntryGOut,s2Step338EntryFvOut,s2Step338EntryGvOut] 1 s2Step338EntryBank_outgoingOwned

private theorem s2Step338EntryG_distinct : (s2Step338EntryGRow.sign::s2Step338EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step338EntryG_owned : (s2Step338EntryGRow.sign::s2Step338EntryGRow.payload).toFinset⊆s2Step338EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step338EntryGBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<789) ∨ (790≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<841) ∨ (842≤q ∧ q<851) ∨ (852≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step338EntryG_reserved : s2Step338EntryGBefore.reserve s2Step338EntryGFresh.toFinset=some s2Step338EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step338EntryGFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s2Step338EntryGBefore,s2Step338EntryFBefore,s2Step338EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step338EntryGAfter,s2Step338EntryGBefore,s2Step338EntryFBefore,s2Step338EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step338EntryG_checked : planRowResizeLog s2Step338EntryGBefore s2Step338EntryGRow 103 s2Step338EntryGFresh=
    some (s2Step338EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 877, 789],769⟩,growRow 769 s2Step338EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step338EntryGBefore s2Step338EntryGAfter s2Step338EntryGRow 103 s2Step338EntryGFresh
    s2Step338EntryG_distinct s2Step338EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step338EntryG_reserved
  have rowEq : WindowRow.mk (s2Step338EntryGRow.payload++s2Step338EntryGFresh) s2Step338EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 877, 789],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step338EntryGvBefore : Arena := s2Step338EntryGAfter

private theorem s2Step338EntryGv_Incoming : rowsOwned s2Step338EntryGvBefore [s2Step338EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step338EntryFRow,s2Step338EntryGRow,s2Step338EntryFvRow,s2Step338EntryGvRow] 3 s2Step338EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step338EntryGvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<841) ∨ (842≤q ∧ q<851) ∨ (852≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step338EntryGv_Outgoing : rowsOwned s2Step338EntryGvAfter [s2Step338EntryGvOut] :=
  hmrRows_owned_drop s2Step338EntryGvAfter [s2Step338EntryFOut,s2Step338EntryGOut,s2Step338EntryFvOut,s2Step338EntryGvOut] 3 s2Step338EntryBank_outgoingOwned

private theorem s2Step338EntryGv_distinct : (s2Step338EntryGvRow.sign::s2Step338EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step338EntryGv_owned : (s2Step338EntryGvRow.sign::s2Step338EntryGvRow.payload).toFinset⊆s2Step338EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step338EntryGvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<841) ∨ (842≤q ∧ q<851) ∨ (852≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step338EntryGv_reserved : s2Step338EntryGvBefore.reserve s2Step338EntryGvFresh.toFinset=some s2Step338EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step338EntryGvFresh,arenaWires]
  · norm_num [s2Step338EntryGvBefore,s2Step338EntryGAfter,s2Step338EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step338EntryGvAfter,s2Step338EntryGvBefore,s2Step338EntryGAfter,s2Step338EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step338EntryGv_checked : planRowResizeLog s2Step338EntryGvBefore s2Step338EntryGvRow 185 s2Step338EntryGvFresh=
    some (s2Step338EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841],771⟩,growRow 771 s2Step338EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step338EntryGvBefore s2Step338EntryGvAfter s2Step338EntryGvRow 185 s2Step338EntryGvFresh
    s2Step338EntryGv_distinct s2Step338EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step338EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step338EntryGvRow.payload++s2Step338EntryGvFresh) s2Step338EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step338EntryBank_rows : planWindowRowsLog s2Step338EntryFBefore [(s2Step338EntryFRow,103),(s2Step338EntryGRow,103),(s2Step338EntryFvRow,185),(s2Step338EntryGvRow,185)] [s2Step338EntryFFresh,s2Step338EntryGFresh,s2Step338EntryFvFresh,s2Step338EntryGvFresh]=
    some (s2Step338EntryGvAfter,[s2Step338EntryFOut,s2Step338EntryGOut,s2Step338EntryFvOut,s2Step338EntryGvOut],(growRow 768 s2Step338EntryFFresh ++ (growRow 769 s2Step338EntryGFresh ++ (growRow 770 s2Step338EntryFvFresh ++ (growRow 771 s2Step338EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step338EntryGvAfter [] []=some (s2Step338EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step338EntryGvBefore s2Step338EntryGvAfter s2Step338EntryGvAfter
    s2Step338EntryGvRow s2Step338EntryGvOut 185 s2Step338EntryGvFresh [] [] []
    (growRow 771 s2Step338EntryGvFresh) ([]) s2Step338EntryGv_Incoming s2Step338EntryGv_checked h4 s2Step338EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step338EntryFvBefore s2Step338EntryFvAfter s2Step338EntryGvAfter
    s2Step338EntryFvRow s2Step338EntryFvOut 185 s2Step338EntryFvFresh [(s2Step338EntryGvRow,185)] [s2Step338EntryGvFresh] [s2Step338EntryGvOut]
    (growRow 770 s2Step338EntryFvFresh) ((growRow 771 s2Step338EntryGvFresh ++ [])) s2Step338EntryFv_Incoming s2Step338EntryFv_checked h3 s2Step338EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step338EntryGBefore s2Step338EntryGAfter s2Step338EntryGvAfter
    s2Step338EntryGRow s2Step338EntryGOut 103 s2Step338EntryGFresh [(s2Step338EntryFvRow,185),(s2Step338EntryGvRow,185)] [s2Step338EntryFvFresh,s2Step338EntryGvFresh] [s2Step338EntryFvOut,s2Step338EntryGvOut]
    (growRow 769 s2Step338EntryGFresh) ((growRow 770 s2Step338EntryFvFresh ++ (growRow 771 s2Step338EntryGvFresh ++ []))) s2Step338EntryG_Incoming s2Step338EntryG_checked h2 s2Step338EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step338EntryFBefore s2Step338EntryFAfter s2Step338EntryGvAfter
    s2Step338EntryFRow s2Step338EntryFOut 103 s2Step338EntryFFresh [(s2Step338EntryGRow,103),(s2Step338EntryFvRow,185),(s2Step338EntryGvRow,185)] [s2Step338EntryGFresh,s2Step338EntryFvFresh,s2Step338EntryGvFresh] [s2Step338EntryGOut,s2Step338EntryFvOut,s2Step338EntryGvOut]
    (growRow 768 s2Step338EntryFFresh) ((growRow 769 s2Step338EntryGFresh ++ (growRow 770 s2Step338EntryFvFresh ++ (growRow 771 s2Step338EntryGvFresh ++ [])))) s2Step338EntryF_Incoming s2Step338EntryF_checked h1 s2Step338EntryF_Outgoing
  exact h0

private theorem s2Step338EntryBank_checked : compileHmrBankResizeLog .entry s2Step338EntryFBefore ⟨s2Step338EntryFRow,s2Step338EntryGRow,s2Step338EntryFvRow,s2Step338EntryGvRow⟩ ⟨103,103,185,185⟩ [s2Step338EntryFFresh,s2Step338EntryGFresh,s2Step338EntryFvFresh,s2Step338EntryGvFresh]=
    some (s2Step338EntryGvAfter,⟨s2Step338EntryFOut,s2Step338EntryGOut,s2Step338EntryFvOut,s2Step338EntryGvOut⟩,(growRow 768 s2Step338EntryFFresh ++ (growRow 769 s2Step338EntryGFresh ++ (growRow 770 s2Step338EntryFvFresh ++ (growRow 771 s2Step338EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step338EntryBank_rows]
  rfl

private def s2Step338ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<806) ∨ (807≤q ∧ q<851) ∨ (852≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step338ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<851) ∨ (852≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step338ExitFBefore : Arena := s2Step338ExitGAfter

private def s2Step338ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 806],768⟩

private def s2Step338ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 800],770⟩

private def s2Step338ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 877, 789, 851],769⟩

private def s2Step338ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 784],771⟩

private theorem s2Step338ExitBank_incomingDistinct : ([s2Step338ExitGRow,s2Step338ExitFRow,s2Step338ExitFvRow,s2Step338ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step338ExitF_Incoming : rowsOwned s2Step338ExitFBefore [s2Step338ExitFRow,s2Step338ExitFvRow,s2Step338ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step338ExitGRow,s2Step338ExitFRow,s2Step338ExitFvRow,s2Step338ExitGvRow] 1 s2Step338ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step338ExitFBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<851) ∨ (852≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step338ExitBank_outgoingOwned : rowsOwned s2Step338ExitGvAfter [s2Step338ExitGOut,s2Step338ExitFOut,s2Step338ExitFvOut,s2Step338ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step338ExitGvAfter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<851) ∨ (852≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step338ExitF_Outgoing : rowsOwned s2Step338ExitGvAfter [s2Step338ExitFOut,s2Step338ExitFvOut,s2Step338ExitGvOut] :=
  hmrRows_owned_drop s2Step338ExitGvAfter [s2Step338ExitGOut,s2Step338ExitFOut,s2Step338ExitFvOut,s2Step338ExitGvOut] 1 s2Step338ExitBank_outgoingOwned

private theorem s2Step338ExitF_distinct : (s2Step338ExitFRow.sign::s2Step338ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step338ExitF_owned : (s2Step338ExitFRow.sign::s2Step338ExitFRow.payload).toFinset⊆s2Step338ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step338ExitFBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<851) ∨ (852≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step338ExitF_retired : s2Step338ExitFBefore.retireSet s2Step338ExitFExtra.toFinset=s2Step338ExitFAfter := by
  unfold Arena.retireSet s2Step338ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step338ExitFBefore,s2Step338ExitGAfter,s2Step338ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step338ExitF_checked : planRowResizeLog s2Step338ExitFBefore s2Step338ExitFRow 103 []=
    some (s2Step338ExitFAfter,s2Step338ExitFOut,shrinkRow 768 s2Step338ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step338ExitFBefore s2Step338ExitFRow 103 s2Step338ExitF_distinct s2Step338ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step338ExitFRow.payload.take 103) s2Step338ExitFRow.sign=s2Step338ExitFOut := by decide +kernel
  have hi : s2Step338ExitFRow.payload.drop 103=s2Step338ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step338ExitF_retired] at result
  exact result

private def s2Step338ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<851) ∨ (852≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step338ExitFvBefore : Arena := s2Step338ExitFAfter

private theorem s2Step338ExitFv_Incoming : rowsOwned s2Step338ExitFvBefore [s2Step338ExitFvRow,s2Step338ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step338ExitGRow,s2Step338ExitFRow,s2Step338ExitFvRow,s2Step338ExitGvRow] 2 s2Step338ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step338ExitFvBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<806) ∨ (807≤q ∧ q<851) ∨ (852≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step338ExitFv_Outgoing : rowsOwned s2Step338ExitGvAfter [s2Step338ExitFvOut,s2Step338ExitGvOut] :=
  hmrRows_owned_drop s2Step338ExitGvAfter [s2Step338ExitGOut,s2Step338ExitFOut,s2Step338ExitFvOut,s2Step338ExitGvOut] 2 s2Step338ExitBank_outgoingOwned

private theorem s2Step338ExitFv_distinct : (s2Step338ExitFvRow.sign::s2Step338ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step338ExitFv_owned : (s2Step338ExitFvRow.sign::s2Step338ExitFvRow.payload).toFinset⊆s2Step338ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step338ExitFvBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<806) ∨ (807≤q ∧ q<851) ∨ (852≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step338ExitFv_retired : s2Step338ExitFvBefore.retireSet s2Step338ExitFvExtra.toFinset=s2Step338ExitFvAfter := by
  unfold Arena.retireSet s2Step338ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step338ExitFvBefore,s2Step338ExitFAfter,s2Step338ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step338ExitFv_checked : planRowResizeLog s2Step338ExitFvBefore s2Step338ExitFvRow 185 []=
    some (s2Step338ExitFvAfter,s2Step338ExitFvOut,shrinkRow 770 s2Step338ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step338ExitFvBefore s2Step338ExitFvRow 185 s2Step338ExitFv_distinct s2Step338ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step338ExitFvRow.payload.take 185) s2Step338ExitFvRow.sign=s2Step338ExitFvOut := by decide +kernel
  have hi : s2Step338ExitFvRow.payload.drop 185=s2Step338ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step338ExitFv_retired] at result
  exact result

private def s2Step338ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private theorem s2Step338ExitG_Incoming : rowsOwned s2Step338ExitGBefore [s2Step338ExitGRow,s2Step338ExitFRow,s2Step338ExitFvRow,s2Step338ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step338ExitGRow,s2Step338ExitFRow,s2Step338ExitFvRow,s2Step338ExitGvRow] 0 s2Step338ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step338ExitGBefore (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step338ExitG_Outgoing : rowsOwned s2Step338ExitGvAfter [s2Step338ExitGOut,s2Step338ExitFOut,s2Step338ExitFvOut,s2Step338ExitGvOut] :=
  hmrRows_owned_drop s2Step338ExitGvAfter [s2Step338ExitGOut,s2Step338ExitFOut,s2Step338ExitFvOut,s2Step338ExitGvOut] 0 s2Step338ExitBank_outgoingOwned

private theorem s2Step338ExitG_distinct : (s2Step338ExitGRow.sign::s2Step338ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step338ExitG_owned : (s2Step338ExitGRow.sign::s2Step338ExitGRow.payload).toFinset⊆s2Step338ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step338ExitGBefore (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step338ExitG_retired : s2Step338ExitGBefore.retireSet s2Step338ExitGExtra.toFinset=s2Step338ExitGAfter := by
  unfold Arena.retireSet s2Step338ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step338ExitGBefore,s2Step338ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step338ExitG_checked : planRowResizeLog s2Step338ExitGBefore s2Step338ExitGRow 102 []=
    some (s2Step338ExitGAfter,s2Step338ExitGOut,shrinkRow 769 s2Step338ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step338ExitGBefore s2Step338ExitGRow 102 s2Step338ExitG_distinct s2Step338ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step338ExitGRow.payload.take 102) s2Step338ExitGRow.sign=s2Step338ExitGOut := by decide +kernel
  have hi : s2Step338ExitGRow.payload.drop 102=s2Step338ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step338ExitG_retired] at result
  exact result

private def s2Step338ExitGvBefore : Arena := s2Step338ExitFvAfter

private theorem s2Step338ExitGv_Incoming : rowsOwned s2Step338ExitGvBefore [s2Step338ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step338ExitGRow,s2Step338ExitFRow,s2Step338ExitFvRow,s2Step338ExitGvRow] 3 s2Step338ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step338ExitGvBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<851) ∨ (852≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step338ExitGv_Outgoing : rowsOwned s2Step338ExitGvAfter [s2Step338ExitGvOut] :=
  hmrRows_owned_drop s2Step338ExitGvAfter [s2Step338ExitGOut,s2Step338ExitFOut,s2Step338ExitFvOut,s2Step338ExitGvOut] 3 s2Step338ExitBank_outgoingOwned

private theorem s2Step338ExitGv_distinct : (s2Step338ExitGvRow.sign::s2Step338ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step338ExitGv_owned : (s2Step338ExitGvRow.sign::s2Step338ExitGvRow.payload).toFinset⊆s2Step338ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step338ExitGvBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<851) ∨ (852≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step338ExitGv_retired : s2Step338ExitGvBefore.retireSet s2Step338ExitGvExtra.toFinset=s2Step338ExitGvAfter := by
  unfold Arena.retireSet s2Step338ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step338ExitGvBefore,s2Step338ExitFvAfter,s2Step338ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step338ExitGv_checked : planRowResizeLog s2Step338ExitGvBefore s2Step338ExitGvRow 185 []=
    some (s2Step338ExitGvAfter,s2Step338ExitGvOut,shrinkRow 771 s2Step338ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step338ExitGvBefore s2Step338ExitGvRow 185 s2Step338ExitGv_distinct s2Step338ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step338ExitGvRow.payload.take 185) s2Step338ExitGvRow.sign=s2Step338ExitGvOut := by decide +kernel
  have hi : s2Step338ExitGvRow.payload.drop 185=s2Step338ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step338ExitGv_retired] at result
  exact result

private theorem s2Step338ExitBank_rows : planWindowRowsLog s2Step338ExitGBefore [(s2Step338ExitGRow,102),(s2Step338ExitFRow,103),(s2Step338ExitFvRow,185),(s2Step338ExitGvRow,185)] [[],[],[],[]]=
    some (s2Step338ExitGvAfter,[s2Step338ExitGOut,s2Step338ExitFOut,s2Step338ExitFvOut,s2Step338ExitGvOut],(shrinkRow 769 s2Step338ExitGExtra ++ (shrinkRow 768 s2Step338ExitFExtra ++ (shrinkRow 770 s2Step338ExitFvExtra ++ (shrinkRow 771 s2Step338ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step338ExitGvAfter [] []=some (s2Step338ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step338ExitGvBefore s2Step338ExitGvAfter s2Step338ExitGvAfter
    s2Step338ExitGvRow s2Step338ExitGvOut 185 [] [] [] []
    (shrinkRow 771 s2Step338ExitGvExtra) ([]) s2Step338ExitGv_Incoming s2Step338ExitGv_checked h4 s2Step338ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step338ExitFvBefore s2Step338ExitFvAfter s2Step338ExitGvAfter
    s2Step338ExitFvRow s2Step338ExitFvOut 185 [] [(s2Step338ExitGvRow,185)] [[]] [s2Step338ExitGvOut]
    (shrinkRow 770 s2Step338ExitFvExtra) ((shrinkRow 771 s2Step338ExitGvExtra ++ [])) s2Step338ExitFv_Incoming s2Step338ExitFv_checked h3 s2Step338ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step338ExitFBefore s2Step338ExitFAfter s2Step338ExitGvAfter
    s2Step338ExitFRow s2Step338ExitFOut 103 [] [(s2Step338ExitFvRow,185),(s2Step338ExitGvRow,185)] [[],[]] [s2Step338ExitFvOut,s2Step338ExitGvOut]
    (shrinkRow 768 s2Step338ExitFExtra) ((shrinkRow 770 s2Step338ExitFvExtra ++ (shrinkRow 771 s2Step338ExitGvExtra ++ []))) s2Step338ExitF_Incoming s2Step338ExitF_checked h2 s2Step338ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step338ExitGBefore s2Step338ExitGAfter s2Step338ExitGvAfter
    s2Step338ExitGRow s2Step338ExitGOut 102 [] [(s2Step338ExitFRow,103),(s2Step338ExitFvRow,185),(s2Step338ExitGvRow,185)] [[],[],[]] [s2Step338ExitFOut,s2Step338ExitFvOut,s2Step338ExitGvOut]
    (shrinkRow 769 s2Step338ExitGExtra) ((shrinkRow 768 s2Step338ExitFExtra ++ (shrinkRow 770 s2Step338ExitFvExtra ++ (shrinkRow 771 s2Step338ExitGvExtra ++ [])))) s2Step338ExitG_Incoming s2Step338ExitG_checked h1 s2Step338ExitG_Outgoing
  exact h0

private theorem s2Step338ExitBank_checked : compileHmrBankResizeLog .exit s2Step338ExitGBefore ⟨s2Step338ExitFRow,s2Step338ExitGRow,s2Step338ExitFvRow,s2Step338ExitGvRow⟩ ⟨103,102,185,185⟩ [[],[],[],[]]=
    some (s2Step338ExitGvAfter,⟨s2Step338ExitFOut,s2Step338ExitGOut,s2Step338ExitFvOut,s2Step338ExitGvOut⟩,(shrinkRow 769 s2Step338ExitGExtra ++ (shrinkRow 768 s2Step338ExitFExtra ++ (shrinkRow 770 s2Step338ExitFvExtra ++ (shrinkRow 771 s2Step338ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step338ExitBank_rows]
  rfl

private theorem s2Step338Add0_apart : Disjoint s2Step338Add0Arena.live s2Step338Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step338Add0Arena (fun q => (0≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step338Add0_card : s2Step338Add0Arena.live.card=910 := by
  decide +kernel

private theorem s2Step338Add0_borrowed : s2Step338Add0Arena.checkBorrow (hmrHybridCount s2Step338Add0Arena s2Step338Add0B.length) s2Step338Add0Work=some s2Step338Add0During := by
  have len : s2Step338Add0Work.length=hmrHybridCount s2Step338Add0Arena s2Step338Add0B.length := by
    rw [hmrHybridCount,s2Step338Add0_card]
    decide +kernel
  have nd : s2Step338Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step338Add0Arena s2Step338Add0During s2Step338Add0Work.toFinset s2Step338Add0_bounded s2Step338Add0_apart rfl

private theorem s2Step338Add0_distinct : (894::827::896::(s2Step338Add0A++s2Step338Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step338Add0_owned : (894::827::896::(s2Step338Add0A++s2Step338Add0B)).toFinset⊆s2Step338Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step338Add0Arena (fun q => (0≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step338Add0_checked : compileHmrHybridCinLog s2Step338Add0Arena 827 894 896 s2Step338Add0A s2Step338Add0B s2Step338Add0Work=some s2Step338Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step338Add0Arena s2Step338Add0During 827 894 896 s2Step338Add0A s2Step338Add0B s2Step338Add0Work
    (by decide +kernel) (by decide +kernel) s2Step338Add0_distinct
    (fun q hq => s2Step338Add0_owned (List.mem_toFinset.mpr hq)) s2Step338Add0_borrowed

private theorem s2Step338Add1_apart : Disjoint s2Step338Add1Arena.live s2Step338Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step338Add1Arena (fun q => (0≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step338Add1_card : s2Step338Add1Arena.live.card=910 := by
  decide +kernel

private theorem s2Step338Add1_borrowed : s2Step338Add1Arena.checkBorrow (hmrHybridCount s2Step338Add1Arena s2Step338Add1B.length) s2Step338Add1Work=some s2Step338Add1During := by
  have len : s2Step338Add1Work.length=hmrHybridCount s2Step338Add1Arena s2Step338Add1B.length := by
    rw [hmrHybridCount,s2Step338Add1_card]
    decide +kernel
  have nd : s2Step338Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step338Add1Arena s2Step338Add1During s2Step338Add1Work.toFinset s2Step338Add1_bounded s2Step338Add1_apart rfl

private theorem s2Step338Add1_distinct : (894::827::896::(s2Step338Add1A++s2Step338Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step338Add1_owned : (894::827::896::(s2Step338Add1A++s2Step338Add1B)).toFinset⊆s2Step338Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step338Add1Arena (fun q => (0≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step338Add1_checked : compileHmrHybridCinLog s2Step338Add1Arena 827 894 896 s2Step338Add1A s2Step338Add1B s2Step338Add1Work=some s2Step338Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step338Add1Arena s2Step338Add1During 827 894 896 s2Step338Add1A s2Step338Add1B s2Step338Add1Work
    (by decide +kernel) (by decide +kernel) s2Step338Add1_distinct
    (fun q hq => s2Step338Add1_owned (List.mem_toFinset.mpr hq)) s2Step338Add1_borrowed

private theorem s2Step338F4_apart : Disjoint (s2Step338Add0A++s2Step338Add0B).toFinset (s2Step338Add1A++s2Step338Add1B).toFinset := by
  have nd : ((s2Step338Add0A++s2Step338Add0B)++(s2Step338Add1A++s2Step338Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step338F4_carry : s2Step338F4FlagArena.checkBorrow 1 [896]=some s2Step338Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step338F4FlagArena,s2Step338HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step338F4FlagArena,s2Step338HeadFvAfter,s2Step338Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step338F4_distinct : (794::827::894::896::((s2Step338Add0A++s2Step338Add1A)++(s2Step338Add0B++s2Step338Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step338F4_flag : s2Step338HeadFvAfter.checkBorrow 1 [894]=some s2Step338F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step338HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step338F4_owned : (794::827::((s2Step338Add0A++s2Step338Add1A)++(s2Step338Add0B++s2Step338Add1B))).toFinset⊆s2Step338HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step338HeadFvAfter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step338F4_checked : compileHmrHybridF4Log s2Step338HeadFvAfter 794 827 s2Step338Add0A s2Step338Add0B s2Step338Add1A s2Step338Add1B [894] [896] s2Step338Add0Work s2Step338Add1Work=some s2Step338F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step338HeadFvAfter s2Step338F4FlagArena s2Step338Add0Arena s2Step338Add0During s2Step338Add1During 794 827
    s2Step338Add0A s2Step338Add0B s2Step338Add1A s2Step338Add1B [894] [896] s2Step338Add0Work s2Step338Add1Work
    (fun q hq => s2Step338F4_owned (List.mem_toFinset.mpr hq)) s2Step338F4_flag s2Step338F4_carry
    s2Step338F4_distinct s2Step338F4_apart s2Step338Add0_checked s2Step338Add1_checked

private theorem s2Step338Front_branch : s2Step338FrontSigmaArena.checkBorrow 1 [827]=some s2Step338HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step338FrontSigmaArena,s2Step338EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step338FrontSigmaArena,s2Step338EntryGvAfter,s2Step338HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step338Front_entry : HmrFrontEntryValid s2Step338EntryFBefore s2Step338FrontBank 103 185 ⟨103,102,185,185⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step338FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step338EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step338EntryFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<789) ∨ (790≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<841) ∨ (842≤q ∧ q<851) ∨ (852≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step338FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step338Front_sigma : s2Step338EntryGvAfter.checkBorrow 1 [794]=some s2Step338FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step338EntryGvAfter,arenaWires]
  · rfl

private def s2Step338HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step338HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step338HeadFBefore : Arena := s2Step338HeadGAfter

private def s2Step338HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614],768⟩

private def s2Step338HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822],770⟩

private def s2Step338HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 877, 789],769⟩

private def s2Step338HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841],771⟩

private theorem s2Step338HeadBank_incomingDistinct : ([s2Step338HeadGRow,s2Step338HeadFRow,s2Step338HeadGvRow,s2Step338HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step338HeadF_Incoming : rowsOwned s2Step338HeadFBefore [s2Step338HeadFRow,s2Step338HeadGvRow,s2Step338HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step338HeadGRow,s2Step338HeadFRow,s2Step338HeadGvRow,s2Step338HeadFvRow] 1 s2Step338HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step338HeadFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step338HeadBank_outgoingOwned : rowsOwned s2Step338HeadFvAfter [s2Step338HeadGOut,s2Step338HeadFOut,s2Step338HeadGvOut,s2Step338HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step338HeadFvAfter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step338HeadF_Outgoing : rowsOwned s2Step338HeadFvAfter [s2Step338HeadFOut,s2Step338HeadGvOut,s2Step338HeadFvOut] :=
  hmrRows_owned_drop s2Step338HeadFvAfter [s2Step338HeadGOut,s2Step338HeadFOut,s2Step338HeadGvOut,s2Step338HeadFvOut] 1 s2Step338HeadBank_outgoingOwned

private theorem s2Step338HeadF_distinct : (s2Step338HeadFRow.sign::s2Step338HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step338HeadF_owned : (s2Step338HeadFRow.sign::s2Step338HeadFRow.payload).toFinset⊆s2Step338HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step338HeadFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step338HeadF_reserved : s2Step338HeadFBefore.reserve s2Step338HeadFFresh.toFinset=some s2Step338HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step338HeadFFresh,arenaWires]
  · norm_num [s2Step338HeadFBefore,s2Step338HeadGAfter,s2Step338HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step338HeadFAfter,s2Step338HeadFBefore,s2Step338HeadGAfter,s2Step338HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step338HeadF_checked : planRowResizeLog s2Step338HeadFBefore s2Step338HeadFRow 104 s2Step338HeadFFresh=
    some (s2Step338HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 806],768⟩,growRow 768 s2Step338HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step338HeadFBefore s2Step338HeadFAfter s2Step338HeadFRow 104 s2Step338HeadFFresh
    s2Step338HeadF_distinct s2Step338HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step338HeadF_reserved
  have rowEq : WindowRow.mk (s2Step338HeadFRow.payload++s2Step338HeadFFresh) s2Step338HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 806],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step338HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step338HeadFvBefore : Arena := s2Step338HeadGvAfter

private theorem s2Step338HeadFv_Incoming : rowsOwned s2Step338HeadFvBefore [s2Step338HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step338HeadGRow,s2Step338HeadFRow,s2Step338HeadGvRow,s2Step338HeadFvRow] 3 s2Step338HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step338HeadFvBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step338HeadFv_Outgoing : rowsOwned s2Step338HeadFvAfter [s2Step338HeadFvOut] :=
  hmrRows_owned_drop s2Step338HeadFvAfter [s2Step338HeadGOut,s2Step338HeadFOut,s2Step338HeadGvOut,s2Step338HeadFvOut] 3 s2Step338HeadBank_outgoingOwned

private theorem s2Step338HeadFv_distinct : (s2Step338HeadFvRow.sign::s2Step338HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step338HeadFv_owned : (s2Step338HeadFvRow.sign::s2Step338HeadFvRow.payload).toFinset⊆s2Step338HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step338HeadFvBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step338HeadFv_reserved : s2Step338HeadFvBefore.reserve s2Step338HeadFvFresh.toFinset=some s2Step338HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step338HeadFvFresh,arenaWires]
  · norm_num [s2Step338HeadFvBefore,s2Step338HeadGvAfter,s2Step338HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step338HeadFvAfter,s2Step338HeadFvBefore,s2Step338HeadGvAfter,s2Step338HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step338HeadFv_checked : planRowResizeLog s2Step338HeadFvBefore s2Step338HeadFvRow 186 s2Step338HeadFvFresh=
    some (s2Step338HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 800],770⟩,growRow 770 s2Step338HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step338HeadFvBefore s2Step338HeadFvAfter s2Step338HeadFvRow 186 s2Step338HeadFvFresh
    s2Step338HeadFv_distinct s2Step338HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step338HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step338HeadFvRow.payload++s2Step338HeadFvFresh) s2Step338HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 800],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step338HeadG_Incoming : rowsOwned s2Step338HeadGBefore [s2Step338HeadGRow,s2Step338HeadFRow,s2Step338HeadGvRow,s2Step338HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step338HeadGRow,s2Step338HeadFRow,s2Step338HeadGvRow,s2Step338HeadFvRow] 0 s2Step338HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step338HeadGBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<851) ∨ (852≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step338HeadG_Outgoing : rowsOwned s2Step338HeadFvAfter [s2Step338HeadGOut,s2Step338HeadFOut,s2Step338HeadGvOut,s2Step338HeadFvOut] :=
  hmrRows_owned_drop s2Step338HeadFvAfter [s2Step338HeadGOut,s2Step338HeadFOut,s2Step338HeadGvOut,s2Step338HeadFvOut] 0 s2Step338HeadBank_outgoingOwned

private theorem s2Step338HeadG_distinct : (s2Step338HeadGRow.sign::s2Step338HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step338HeadG_owned : (s2Step338HeadGRow.sign::s2Step338HeadGRow.payload).toFinset⊆s2Step338HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step338HeadGBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<851) ∨ (852≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step338HeadG_reserved : s2Step338HeadGBefore.reserve s2Step338HeadGFresh.toFinset=some s2Step338HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step338HeadGFresh,arenaWires]
  · norm_num [s2Step338HeadGBefore,s2Step338HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step338HeadGAfter,s2Step338HeadGBefore,s2Step338HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step338HeadG_checked : planRowResizeLog s2Step338HeadGBefore s2Step338HeadGRow 104 s2Step338HeadGFresh=
    some (s2Step338HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 877, 789, 851],769⟩,growRow 769 s2Step338HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step338HeadGBefore s2Step338HeadGAfter s2Step338HeadGRow 104 s2Step338HeadGFresh
    s2Step338HeadG_distinct s2Step338HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step338HeadG_reserved
  have rowEq : WindowRow.mk (s2Step338HeadGRow.payload++s2Step338HeadGFresh) s2Step338HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 877, 789, 851],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step338HeadGvBefore : Arena := s2Step338HeadFAfter

private theorem s2Step338HeadGv_Incoming : rowsOwned s2Step338HeadGvBefore [s2Step338HeadGvRow,s2Step338HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step338HeadGRow,s2Step338HeadFRow,s2Step338HeadGvRow,s2Step338HeadFvRow] 2 s2Step338HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step338HeadGvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step338HeadGv_Outgoing : rowsOwned s2Step338HeadFvAfter [s2Step338HeadGvOut,s2Step338HeadFvOut] :=
  hmrRows_owned_drop s2Step338HeadFvAfter [s2Step338HeadGOut,s2Step338HeadFOut,s2Step338HeadGvOut,s2Step338HeadFvOut] 2 s2Step338HeadBank_outgoingOwned

private theorem s2Step338HeadGv_distinct : (s2Step338HeadGvRow.sign::s2Step338HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step338HeadGv_owned : (s2Step338HeadGvRow.sign::s2Step338HeadGvRow.payload).toFinset⊆s2Step338HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step338HeadGvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step338HeadGv_reserved : s2Step338HeadGvBefore.reserve s2Step338HeadGvFresh.toFinset=some s2Step338HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step338HeadGvFresh,arenaWires]
  · norm_num [s2Step338HeadGvBefore,s2Step338HeadFAfter,s2Step338HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step338HeadGvAfter,s2Step338HeadGvBefore,s2Step338HeadFAfter,s2Step338HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step338HeadGv_checked : planRowResizeLog s2Step338HeadGvBefore s2Step338HeadGvRow 186 s2Step338HeadGvFresh=
    some (s2Step338HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 784],771⟩,growRow 771 s2Step338HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step338HeadGvBefore s2Step338HeadGvAfter s2Step338HeadGvRow 186 s2Step338HeadGvFresh
    s2Step338HeadGv_distinct s2Step338HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step338HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step338HeadGvRow.payload++s2Step338HeadGvFresh) s2Step338HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 784],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step338HeadBank_rows : planWindowRowsLog s2Step338HeadGBefore [(s2Step338HeadGRow,104),(s2Step338HeadFRow,104),(s2Step338HeadGvRow,186),(s2Step338HeadFvRow,186)] [s2Step338HeadGFresh,s2Step338HeadFFresh,s2Step338HeadGvFresh,s2Step338HeadFvFresh]=
    some (s2Step338HeadFvAfter,[s2Step338HeadGOut,s2Step338HeadFOut,s2Step338HeadGvOut,s2Step338HeadFvOut],(growRow 769 s2Step338HeadGFresh ++ (growRow 768 s2Step338HeadFFresh ++ (growRow 771 s2Step338HeadGvFresh ++ (growRow 770 s2Step338HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step338HeadFvAfter [] []=some (s2Step338HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step338HeadFvBefore s2Step338HeadFvAfter s2Step338HeadFvAfter
    s2Step338HeadFvRow s2Step338HeadFvOut 186 s2Step338HeadFvFresh [] [] []
    (growRow 770 s2Step338HeadFvFresh) ([]) s2Step338HeadFv_Incoming s2Step338HeadFv_checked h4 s2Step338HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step338HeadGvBefore s2Step338HeadGvAfter s2Step338HeadFvAfter
    s2Step338HeadGvRow s2Step338HeadGvOut 186 s2Step338HeadGvFresh [(s2Step338HeadFvRow,186)] [s2Step338HeadFvFresh] [s2Step338HeadFvOut]
    (growRow 771 s2Step338HeadGvFresh) ((growRow 770 s2Step338HeadFvFresh ++ [])) s2Step338HeadGv_Incoming s2Step338HeadGv_checked h3 s2Step338HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step338HeadFBefore s2Step338HeadFAfter s2Step338HeadFvAfter
    s2Step338HeadFRow s2Step338HeadFOut 104 s2Step338HeadFFresh [(s2Step338HeadGvRow,186),(s2Step338HeadFvRow,186)] [s2Step338HeadGvFresh,s2Step338HeadFvFresh] [s2Step338HeadGvOut,s2Step338HeadFvOut]
    (growRow 768 s2Step338HeadFFresh) ((growRow 771 s2Step338HeadGvFresh ++ (growRow 770 s2Step338HeadFvFresh ++ []))) s2Step338HeadF_Incoming s2Step338HeadF_checked h2 s2Step338HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step338HeadGBefore s2Step338HeadGAfter s2Step338HeadFvAfter
    s2Step338HeadGRow s2Step338HeadGOut 104 s2Step338HeadGFresh [(s2Step338HeadFRow,104),(s2Step338HeadGvRow,186),(s2Step338HeadFvRow,186)] [s2Step338HeadFFresh,s2Step338HeadGvFresh,s2Step338HeadFvFresh] [s2Step338HeadFOut,s2Step338HeadGvOut,s2Step338HeadFvOut]
    (growRow 769 s2Step338HeadGFresh) ((growRow 768 s2Step338HeadFFresh ++ (growRow 771 s2Step338HeadGvFresh ++ (growRow 770 s2Step338HeadFvFresh ++ [])))) s2Step338HeadG_Incoming s2Step338HeadG_checked h1 s2Step338HeadG_Outgoing
  exact h0

private theorem s2Step338HeadBank_checked : compileHmrBankResizeLog .headroom s2Step338HeadGBefore ⟨s2Step338HeadFRow,s2Step338HeadGRow,s2Step338HeadFvRow,s2Step338HeadGvRow⟩ ⟨104,104,186,186⟩ [s2Step338HeadGFresh,s2Step338HeadFFresh,s2Step338HeadGvFresh,s2Step338HeadFvFresh]=
    some (s2Step338HeadFvAfter,⟨s2Step338HeadFOut,s2Step338HeadGOut,s2Step338HeadFvOut,s2Step338HeadGvOut⟩,(growRow 769 s2Step338HeadGFresh ++ (growRow 768 s2Step338HeadFFresh ++ (growRow 771 s2Step338HeadGvFresh ++ (growRow 770 s2Step338HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step338HeadBank_rows]
  rfl

private theorem s2Step338Front_checked : compileHmrSourceFrontLog s2Step338EntryFBefore s2Step338FrontBank 103 185 ⟨103,102,185,185⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step338FrontLog=some s2Step338FrontPlan := by
  have pairEq : s2Step338FrontPair=⟨s2Step338HeadFRow,s2Step338HeadGRow,s2Step338HeadFvRow,s2Step338HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step338FrontHead=⟨s2Step338ExitFRow,s2Step338ExitGRow,s2Step338ExitFvRow,s2Step338ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step338Add0A=s2Step338FrontHead.f.wires := by decide +kernel
  have gEq : s2Step338Add0B=s2Step338FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step338Add1A=s2Step338FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step338Add1B=s2Step338FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step338EntryFBefore s2Step338FrontBank 103 185 ⟨103,102,185,185⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step338FrontLog s2Step338FrontPlan
  · exact s2Step338Front_entry
  · exact s2Step338EntryBank_checked
  · exact s2Step338Front_sigma
  · rfl
  · exact s2Step338Front_branch
  · rfl
  · simpa only [s2Step338FrontPlan,pairEq] using s2Step338HeadBank_checked
  · simpa only [s2Step338FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step338F4_checked
  · exact s2Step338Counter_checked
  · rfl
  · simpa only [s2Step338FrontPlan,headEq] using s2Step338ExitBank_checked

private theorem s2Step338Complete_explicit_checked : compileHmrEarlyStepLog s2Step338EntryFBefore s2Step338FrontBank 103 185 ⟨103,102,185,185⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step338CompleteLog=some s2Step338CompletePlan := by
  let Q := s2Step338EarlyControlPlan
  have hq := s2Step338EarlyControl_plan_checked
  have fv1 : s2Step338CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step338CompleteOut.fv.payload[2]?.getD s2Step338CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step338CompleteOut.fv.payload[3]?.getD s2Step338CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step338CompleteOut.fv.payload[4]?.getD s2Step338CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step338EntryFBefore s2Step338EarlyControlArena s2Step338FrontBank 103 185 ⟨103,102,185,185⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step338CompleteLog s2Step338FrontPlan Q
    s2Step338Front_checked s2Step338Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step338Complete_owned s2Step338Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step338EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 794 s2Step338CompleteOut.fv.second (s2Step338CompleteOut.fv.payload[2]?.getD s2Step338CompleteOut.fv.sign) (s2Step338CompleteOut.fv.payload[3]?.getD s2Step338CompleteOut.fv.sign) (s2Step338CompleteOut.fv.payload[4]?.getD s2Step338CompleteOut.fv.sign) 827 60 s2Step338EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep338Arena : Arena := s2Step338EntryFBefore
def s2PrivateStep338Bank : WindowBank := s2Step338FrontBank
def s2PrivateStep338Spec : HmrSourceWalkStepLog := ⟨103,185,⟨103,102,185,185⟩,60,.early s2Step338CompleteLog⟩
def s2PrivateStep338Plan : HmrSourceStepPlan := .early s2Step338CompletePlan
theorem s2PrivateStep338_source : s2PrivateStep338Spec=s2ObservedLogs336[2] := rfl
theorem s2PrivateStep338_checked : compileHmrSourceStepLog s2PrivateStep338Arena s2PrivateStep338Bank
    s2PrivateStep338Spec.fgWidth s2PrivateStep338Spec.vWidth s2PrivateStep338Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]
    6 498 338 s2PrivateStep338Spec.need none s2PrivateStep338Spec.log=some s2PrivateStep338Plan := by
  change compileHmrSourceStepLog s2Step338EntryFBefore s2Step338FrontBank 103 185 ⟨103,102,185,185⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 6 498 338 60 none (.early s2Step338CompleteLog)=some (.early s2Step338CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 338<498)]
  rw [s2Step338Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
