import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep339
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

private def s2Step341CompleteMoves : List (Wire × Wire) := []

private def s2Step341EarlyControlLog : HmrEarlyControlLog := ⟨[784, 877, 789, 778, 800],[894],[896],[901, 903, 907, 913, 914, 915],[]⟩

private def s2Step341FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [789, 778], [], []],[[800], [877], [784], [806]],[[], [], [], []]⟩,[839],[827],[894],[896],[901, 903, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[901, 903, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[894, 896, 901, 903]⟩

private def s2Step341CompleteLog : HmrEarlyStepLog := ⟨s2Step341FrontLog,s2Step341CompleteMoves,s2Step341EarlyControlLog⟩

private def s2Step341ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613],768⟩

private def s2Step341ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806],770⟩

private def s2Step341ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99],769⟩

private def s2Step341ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794],771⟩

private def s2Step341FrontOut : WindowBank := ⟨s2Step341ExitFOut,s2Step341ExitGOut,s2Step341ExitFvOut,s2Step341ExitGvOut⟩

private def s2Step341CompleteOut : WindowBank := s2Step341FrontOut.repacked s2Step341CompleteMoves

private def s2Step341EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<784) ∨ (785≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step341EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step341EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step341EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step341EarlyControlPositiveArena,[894],s2Step341EarlyControlEqualityArena,[896],⟨⟨839,false⟩,[⟨⟨894,false⟩,896⟩]⟩⟩

private def s2Step341EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<916)),Finset.filter_subset _ _⟩

private def s2Step341EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<916)),Finset.filter_subset _ _⟩

private def s2Step341EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<784) ∨ (785≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step341EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<784) ∨ (785≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step341EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<784) ∨ (785≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<839) ∨ (840≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step341EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step341EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,784⟩,⟨⟨774,false⟩,877⟩,⟨⟨775,false⟩,789⟩,⟨⟨776,false⟩,778⟩,⟨⟨777,false⟩,800⟩]⟩

private def s2Step341EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step341EarlyControlZeroArena,s2Step341EarlyControlZeroPlan,s2Step341EarlyControlClassPlan,s2Step341EarlyControlFlagArena,s2Step341EarlyControlFittedArena,s2Step341EarlyControlHistoryArena,s2Step341EarlyControlSigmaArena,s2Step341EarlyControlOutputArena,s2Step341EarlyControlLog⟩

private def s2Step341CounterWork : List Wire := [894, 896, 901, 903]

private theorem s2Step341Counter_bounded : s2Step341CounterWork.toFinset⊆arenaWires := by norm_num [s2Step341CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step341HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step341CounterDuring : Arena := ⟨s2Step341HeadFvAfter.live∪s2Step341CounterWork.toFinset,Finset.union_subset s2Step341HeadFvAfter.bounded s2Step341Counter_bounded⟩

private def s2Step341EntryFFresh : List Wire := []

private def s2Step341EntryFvFresh : List Wire := []

private def s2Step341EntryGFresh : List Wire := [789, 778]

private def s2Step341EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step341EntryGvAfter : Arena := s2Step341EntryGAfter

private def s2Step341EntryGvFresh : List Wire := []

private def s2Step341ExitFExtra : List Wire := [877]

private def s2Step341ExitGExtra : List Wire := [789, 778, 800]

private def s2Step341ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<784) ∨ (785≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step341ExitGvExtra : List Wire := [784]

private def s2Step341Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step341Add0Work : List Wire := [901, 903, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step341Add0_bounded : s2Step341Add0Work.toFinset⊆arenaWires := by
  have h : s2Step341Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step341Add0During : Arena := ⟨s2Step341Add0Arena.live∪s2Step341Add0Work.toFinset,Finset.union_subset s2Step341Add0Arena.bounded s2Step341Add0_bounded⟩

private def s2Step341Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step341Add1Work : List Wire := [901, 903, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step341Add1_bounded : s2Step341Add1Work.toFinset⊆arenaWires := by
  have h : s2Step341Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step341Add1During : Arena := ⟨s2Step341Add1Arena.live∪s2Step341Add1Work.toFinset,Finset.union_subset s2Step341Add1Arena.bounded s2Step341Add1_bounded⟩

private def s2Step341F4FlagArena : Arena := ⟨s2Step341HeadFvAfter.live∪{894},Finset.union_subset s2Step341HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step341F4Plan : HmrHybridF4Plan := ⟨s2Step341F4FlagArena,[894],s2Step341Add0Arena,[896],s2Step341Add0During,s2Step341Add0Work,s2Step341Add1During,s2Step341Add1Work⟩

private def s2Step341HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 877],768⟩

private def s2Step341HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806],770⟩

private def s2Step341HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 789, 778, 800],769⟩

private def s2Step341HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784],771⟩

private def s2Step341FrontHead : WindowBank := ⟨s2Step341HeadFOut,s2Step341HeadGOut,s2Step341HeadFvOut,s2Step341HeadGvOut⟩

private def s2Step341EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613],768⟩

private def s2Step341EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851],770⟩

private def s2Step341EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 789, 778],769⟩

private def s2Step341EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794],771⟩

private def s2Step341FrontPair : WindowBank := ⟨s2Step341EntryFOut,s2Step341EntryGOut,s2Step341EntryFvOut,s2Step341EntryGvOut⟩

private def s2Step341FrontSigmaArena : Arena := ⟨s2Step341EntryGvAfter.live∪{839},Finset.union_subset s2Step341EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step341HeadFFresh : List Wire := [877]

private def s2Step341HeadFvFresh : List Wire := [806]

private def s2Step341HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step341HeadGFresh : List Wire := [800]

private def s2Step341HeadGvFresh : List Wire := [784]

private def s2Step341FrontPlan : HmrSourceFront := ⟨s2Step341EntryGvAfter,s2Step341FrontPair,(growRow 768 s2Step341EntryFFresh ++ (growRow 769 s2Step341EntryGFresh ++ (growRow 770 s2Step341EntryFvFresh ++ (growRow 771 s2Step341EntryGvFresh ++ [])))),s2Step341FrontSigmaArena,[839],s2Step341HeadGBefore,[827],
  s2Step341HeadFvAfter,s2Step341FrontHead,(growRow 769 s2Step341HeadGFresh ++ (growRow 768 s2Step341HeadFFresh ++ (growRow 771 s2Step341HeadGvFresh ++ (growRow 770 s2Step341HeadFvFresh ++ [])))),s2Step341F4Plan,s2Step341CounterDuring,s2Step341CounterWork,s2Step341ExitGvAfter,s2Step341FrontOut,(shrinkRow 769 s2Step341ExitGExtra ++ (shrinkRow 768 s2Step341ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step341ExitGvExtra ++ []))))⟩

private def s2Step341CompletePlan : HmrEarlyStepPlan := ⟨s2Step341FrontPlan,s2Step341EarlyControlArena,s2Step341EarlyControlPlan,s2Step341CompleteMoves⟩

private theorem s2Step341Complete_apart : List.Disjoint (s2Step341CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [839, 827, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] := by
  have nd : ((s2Step341CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[839, 827, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step341Complete_owned : (s2Step341CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step341EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step341EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<784) ∨ (785≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step341Complete_repack : s2Step341ExitGvAfter.checkRepack s2Step341CompleteMoves=some s2Step341EarlyControlArena := by rfl

private theorem s2Step341EarlyControl_branchOwned : ([827] : List Wire).toFinset⊆s2Step341EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step341EarlyControlSigmaArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<784) ∨ (785≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<839) ∨ (840≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step341EarlyControl_branch : compileHmrBranchRetirement s2Step341EarlyControlSigmaArena 827=some s2Step341EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step341EarlyControl_branchOwned
  · ext q
    simp [s2Step341EarlyControlOutputArena,s2Step341EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step341EarlyControl_classEqualityBorrow : s2Step341EarlyControlPositiveArena.checkBorrow (([839, 894] : List Wire).length-1) s2Step341EarlyControlLog.classWork=some s2Step341EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step341EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step341EarlyControlPositiveArena (fun q => (0≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step341EarlyControlEqualityArena,s2Step341EarlyControlPositiveArena,s2Step341EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step341EarlyControl_classEqualityOwned : ([839, 894] : List Wire).toFinset⊆s2Step341EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step341EarlyControlPositiveArena (fun q => (0≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step341EarlyControl_classEquality : compileHmrEqualityLog s2Step341EarlyControlPositiveArena [839, 894] 0 s2Step341EarlyControlLog.classWork=some (s2Step341EarlyControlEqualityArena,s2Step341EarlyControlLog.classWork,s2Step341EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step341EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step341EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step341EarlyControl_classOwned : ([777, 800, 839] : List Wire).toFinset⊆s2Step341EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step341EarlyControlZeroArena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step341EarlyControl_positiveBorrow : s2Step341EarlyControlZeroArena.checkBorrow (1) s2Step341EarlyControlLog.positiveWork=some s2Step341EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step341EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step341EarlyControlZeroArena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step341EarlyControlPositiveArena,s2Step341EarlyControlZeroArena,s2Step341EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step341EarlyControl_class : compileHmrSourceClassLog s2Step341EarlyControlZeroArena false 777 s2Step341EarlyControlZeroPlan.top 0 839 s2Step341EarlyControlLog.positiveWork s2Step341EarlyControlLog.classWork=some s2Step341EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step341EarlyControlClassPlan s2Step341EarlyControlZeroArena false 777 s2Step341EarlyControlZeroPlan.top 0 839
  constructor
  · decide +kernel
  · exact s2Step341EarlyControl_classOwned
  · exact s2Step341EarlyControl_positiveBorrow
  · exact s2Step341EarlyControl_classEquality

private theorem s2Step341EarlyControl_entryRecordOwned : ([827, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step341EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step341EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<784) ∨ (785≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step341EarlyControl_entrySigmaOwned : ([839, 254] : List Wire).toFinset⊆s2Step341EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step341EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<784) ∨ (785≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step341EarlyControl_fitBorrow : s2Step341EarlyControlFlagArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step341EarlyControlLog.recordFresh=some s2Step341EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step341EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step341EarlyControlFlagArena (fun q => (0≤q ∧ q<916)) rfl
      decide +kernel
    · ext q
      simp [s2Step341EarlyControlFittedArena,s2Step341EarlyControlFlagArena,s2Step341EarlyControlLog,arenaWires]

private theorem s2Step341EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step341EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step341EarlyControlFlagArena (fun q => (0≤q ∧ q<916)) rfl
  decide +kernel

private theorem s2Step341EarlyControl_fit : compileHmrRecordGrowLog s2Step341EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step341EarlyControlLog.recordFresh=some s2Step341EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step341EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step341EarlyControl_fitBorrow

private theorem s2Step341EarlyControl_flagsBorrow : s2Step341EarlyControlEqualityArena.checkBorrow (6) s2Step341EarlyControlLog.flagWork=some s2Step341EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step341EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step341EarlyControlEqualityArena (fun q => (0≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step341EarlyControlFlagArena,s2Step341EarlyControlEqualityArena,s2Step341EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step341EarlyControl_flagsOwned : ([896, 253, 252, 251] : List Wire).toFinset⊆s2Step341EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step341EarlyControlEqualityArena (fun q => (0≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step341EarlyControl_flags : compileHmrFlagsLog s2Step341EarlyControlClassPlan.equalityArena s2Step341EarlyControlClassPlan.equality.top 253 252 251 s2Step341EarlyControlLog.flagWork=some s2Step341EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step341EarlyControl_flagsOwned⟩
  · exact s2Step341EarlyControl_flagsBorrow

private theorem s2Step341EarlyControl_historyBorrow : s2Step341EarlyControlArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step341EarlyControlLog.recordFresh=some s2Step341EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step341EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step341EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<784) ∨ (785≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step341EarlyControlHistoryArena,s2Step341EarlyControlArena,s2Step341EarlyControlLog,arenaWires]

private theorem s2Step341EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step341EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step341EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<784) ∨ (785≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step341EarlyControl_history : compileHmrRecordGrowLog s2Step341EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step341EarlyControlLog.recordFresh=some s2Step341EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step341EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step341EarlyControl_historyBorrow

private theorem s2Step341EarlyControl_sigmaOwned : ([254, 839] : List Wire).toFinset⊆s2Step341EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step341EarlyControlHistoryArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<784) ∨ (785≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step341EarlyControl_sigmaReleaseOwned : ([839] : List Wire).toFinset⊆s2Step341EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step341EarlyControlHistoryArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<784) ∨ (785≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step341EarlyControl_sigmaRelease : s2Step341EarlyControlHistoryArena.release {839} (fun _ => false)=some s2Step341EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step341EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step341EarlyControlSigmaArena,s2Step341EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step341EarlyControl_sigma : compileHmrSigmaDropLog s2Step341EarlyControlHistoryArena false 0 0 254 839 []=some s2Step341EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step341EarlyControl_sigmaOwned⟩
  · exact s2Step341EarlyControl_sigmaRelease

private theorem s2Step341EarlyControl_zeroBorrow : s2Step341EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step341EarlyControlLog.zeroWork=some s2Step341EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step341EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step341EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<784) ∨ (785≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step341EarlyControlZeroArena,s2Step341EarlyControlArena,s2Step341EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step341EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step341EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step341EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<784) ∨ (785≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step341EarlyControl_zero : compileHmrEqualityLog s2Step341EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step341EarlyControlLog.zeroWork=some (s2Step341EarlyControlZeroArena,s2Step341EarlyControlLog.zeroWork,s2Step341EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step341EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step341EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step341EarlyControl_logged : s2Step341EarlyControlPlan.Logged s2Step341EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 839 254 253 252 251 827 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step341EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step341EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step341EarlyControl_zero
  · exact s2Step341EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step341EarlyControl_flags
  · exact s2Step341EarlyControl_fit
  · exact s2Step341EarlyControl_history
  · exact s2Step341EarlyControl_sigma
  · exact s2Step341EarlyControl_branch

private theorem s2Step341EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step341EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 839 254 253 252 251 827 60 s2Step341EarlyControlLog=some s2Step341EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step341EarlyControlPlan s2Step341EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 839 254 253 252 251 827 60 s2Step341EarlyControl_logged

private def s2Step341EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<784) ∨ (785≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step341EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613],768⟩

private def s2Step341EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851],770⟩

private def s2Step341EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99],769⟩

private def s2Step341EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794],771⟩

private def s2Step341FrontBank : WindowBank := ⟨s2Step341EntryFRow,s2Step341EntryGRow,s2Step341EntryFvRow,s2Step341EntryGvRow⟩

private def s2Step341Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 877, 768]

private def s2Step341Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 789, 778, 800, 769]

private def s2Step341Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 770]

private def s2Step341Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 771]

private theorem s2Step341Counter_apart : Disjoint s2Step341HeadFvAfter.live s2Step341CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step341HeadFvAfter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step341Counter_borrowed : s2Step341HeadFvAfter.checkBorrow 4 s2Step341CounterWork=some s2Step341CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step341HeadFvAfter s2Step341CounterDuring s2Step341CounterWork.toFinset s2Step341Counter_bounded s2Step341Counter_apart rfl

private theorem s2Step341Counter_owned : (839::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step341HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step341HeadFvAfter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step341Counter_checked : compileHmrCounterStepLog s2Step341HeadFvAfter true 839 [772, 773, 774, 775, 776, 777] s2Step341CounterWork=some s2Step341CounterDuring := by
  have owned : ∀q∈839::[772, 773, 774, 775, 776, 777],q∈s2Step341HeadFvAfter.live := fun q hq => s2Step341Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step341Counter_borrowed

private def s2Step341EntryFAfter : Arena := s2Step341EntryFBefore

private theorem s2Step341EntryBank_incomingDistinct : ([s2Step341EntryFRow,s2Step341EntryGRow,s2Step341EntryFvRow,s2Step341EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step341EntryF_Incoming : rowsOwned s2Step341EntryFBefore [s2Step341EntryFRow,s2Step341EntryGRow,s2Step341EntryFvRow,s2Step341EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step341EntryFRow,s2Step341EntryGRow,s2Step341EntryFvRow,s2Step341EntryGvRow] 0 s2Step341EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step341EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<784) ∨ (785≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step341EntryBank_outgoingOwned : rowsOwned s2Step341EntryGvAfter [s2Step341EntryFOut,s2Step341EntryGOut,s2Step341EntryFvOut,s2Step341EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step341EntryGvAfter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step341EntryF_Outgoing : rowsOwned s2Step341EntryGvAfter [s2Step341EntryFOut,s2Step341EntryGOut,s2Step341EntryFvOut,s2Step341EntryGvOut] :=
  hmrRows_owned_drop s2Step341EntryGvAfter [s2Step341EntryFOut,s2Step341EntryGOut,s2Step341EntryFvOut,s2Step341EntryGvOut] 0 s2Step341EntryBank_outgoingOwned

private theorem s2Step341EntryF_distinct : (s2Step341EntryFRow.sign::s2Step341EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step341EntryF_owned : (s2Step341EntryFRow.sign::s2Step341EntryFRow.payload).toFinset⊆s2Step341EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step341EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<784) ∨ (785≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step341EntryF_reserved : s2Step341EntryFBefore.reserve s2Step341EntryFFresh.toFinset=some s2Step341EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step341EntryFFresh,arenaWires]
  · norm_num [s2Step341EntryFBefore,s2Step341EntryFFresh,arenaWires]
  · simp only [s2Step341EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step341EntryF_checked : planRowResizeLog s2Step341EntryFBefore s2Step341EntryFRow 102 s2Step341EntryFFresh=
    some (s2Step341EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613],768⟩,growRow 768 s2Step341EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step341EntryFBefore s2Step341EntryFAfter s2Step341EntryFRow 102 s2Step341EntryFFresh
    s2Step341EntryF_distinct s2Step341EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step341EntryF_reserved
  have rowEq : WindowRow.mk (s2Step341EntryFRow.payload++s2Step341EntryFFresh) s2Step341EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step341EntryFvAfter : Arena := s2Step341EntryGAfter

private def s2Step341EntryFvBefore : Arena := s2Step341EntryGAfter

private theorem s2Step341EntryFv_Incoming : rowsOwned s2Step341EntryFvBefore [s2Step341EntryFvRow,s2Step341EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step341EntryFRow,s2Step341EntryGRow,s2Step341EntryFvRow,s2Step341EntryGvRow] 2 s2Step341EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step341EntryFvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step341EntryFv_Outgoing : rowsOwned s2Step341EntryGvAfter [s2Step341EntryFvOut,s2Step341EntryGvOut] :=
  hmrRows_owned_drop s2Step341EntryGvAfter [s2Step341EntryFOut,s2Step341EntryGOut,s2Step341EntryFvOut,s2Step341EntryGvOut] 2 s2Step341EntryBank_outgoingOwned

private theorem s2Step341EntryFv_distinct : (s2Step341EntryFvRow.sign::s2Step341EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step341EntryFv_owned : (s2Step341EntryFvRow.sign::s2Step341EntryFvRow.payload).toFinset⊆s2Step341EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step341EntryFvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step341EntryFv_reserved : s2Step341EntryFvBefore.reserve s2Step341EntryFvFresh.toFinset=some s2Step341EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step341EntryFvFresh,arenaWires]
  · norm_num [s2Step341EntryFvBefore,s2Step341EntryGAfter,s2Step341EntryFvFresh,arenaWires]
  · simp only [s2Step341EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step341EntryFv_checked : planRowResizeLog s2Step341EntryFvBefore s2Step341EntryFvRow 186 s2Step341EntryFvFresh=
    some (s2Step341EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851],770⟩,growRow 770 s2Step341EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step341EntryFvBefore s2Step341EntryFvAfter s2Step341EntryFvRow 186 s2Step341EntryFvFresh
    s2Step341EntryFv_distinct s2Step341EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step341EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step341EntryFvRow.payload++s2Step341EntryFvFresh) s2Step341EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step341EntryGBefore : Arena := s2Step341EntryFBefore

private theorem s2Step341EntryG_Incoming : rowsOwned s2Step341EntryGBefore [s2Step341EntryGRow,s2Step341EntryFvRow,s2Step341EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step341EntryFRow,s2Step341EntryGRow,s2Step341EntryFvRow,s2Step341EntryGvRow] 1 s2Step341EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step341EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<784) ∨ (785≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step341EntryG_Outgoing : rowsOwned s2Step341EntryGvAfter [s2Step341EntryGOut,s2Step341EntryFvOut,s2Step341EntryGvOut] :=
  hmrRows_owned_drop s2Step341EntryGvAfter [s2Step341EntryFOut,s2Step341EntryGOut,s2Step341EntryFvOut,s2Step341EntryGvOut] 1 s2Step341EntryBank_outgoingOwned

private theorem s2Step341EntryG_distinct : (s2Step341EntryGRow.sign::s2Step341EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step341EntryG_owned : (s2Step341EntryGRow.sign::s2Step341EntryGRow.payload).toFinset⊆s2Step341EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step341EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<784) ∨ (785≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step341EntryG_reserved : s2Step341EntryGBefore.reserve s2Step341EntryGFresh.toFinset=some s2Step341EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step341EntryGFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s2Step341EntryGBefore,s2Step341EntryFBefore,s2Step341EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step341EntryGAfter,s2Step341EntryGBefore,s2Step341EntryFBefore,s2Step341EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step341EntryG_checked : planRowResizeLog s2Step341EntryGBefore s2Step341EntryGRow 102 s2Step341EntryGFresh=
    some (s2Step341EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 789, 778],769⟩,growRow 769 s2Step341EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step341EntryGBefore s2Step341EntryGAfter s2Step341EntryGRow 102 s2Step341EntryGFresh
    s2Step341EntryG_distinct s2Step341EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step341EntryG_reserved
  have rowEq : WindowRow.mk (s2Step341EntryGRow.payload++s2Step341EntryGFresh) s2Step341EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 789, 778],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step341EntryGvBefore : Arena := s2Step341EntryGAfter

private theorem s2Step341EntryGv_Incoming : rowsOwned s2Step341EntryGvBefore [s2Step341EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step341EntryFRow,s2Step341EntryGRow,s2Step341EntryFvRow,s2Step341EntryGvRow] 3 s2Step341EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step341EntryGvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step341EntryGv_Outgoing : rowsOwned s2Step341EntryGvAfter [s2Step341EntryGvOut] :=
  hmrRows_owned_drop s2Step341EntryGvAfter [s2Step341EntryFOut,s2Step341EntryGOut,s2Step341EntryFvOut,s2Step341EntryGvOut] 3 s2Step341EntryBank_outgoingOwned

private theorem s2Step341EntryGv_distinct : (s2Step341EntryGvRow.sign::s2Step341EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step341EntryGv_owned : (s2Step341EntryGvRow.sign::s2Step341EntryGvRow.payload).toFinset⊆s2Step341EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step341EntryGvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step341EntryGv_reserved : s2Step341EntryGvBefore.reserve s2Step341EntryGvFresh.toFinset=some s2Step341EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step341EntryGvFresh,arenaWires]
  · norm_num [s2Step341EntryGvBefore,s2Step341EntryGAfter,s2Step341EntryGvFresh,arenaWires]
  · simp only [s2Step341EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step341EntryGv_checked : planRowResizeLog s2Step341EntryGvBefore s2Step341EntryGvRow 186 s2Step341EntryGvFresh=
    some (s2Step341EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794],771⟩,growRow 771 s2Step341EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step341EntryGvBefore s2Step341EntryGvAfter s2Step341EntryGvRow 186 s2Step341EntryGvFresh
    s2Step341EntryGv_distinct s2Step341EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step341EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step341EntryGvRow.payload++s2Step341EntryGvFresh) s2Step341EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step341EntryBank_rows : planWindowRowsLog s2Step341EntryFBefore [(s2Step341EntryFRow,102),(s2Step341EntryGRow,102),(s2Step341EntryFvRow,186),(s2Step341EntryGvRow,186)] [s2Step341EntryFFresh,s2Step341EntryGFresh,s2Step341EntryFvFresh,s2Step341EntryGvFresh]=
    some (s2Step341EntryGvAfter,[s2Step341EntryFOut,s2Step341EntryGOut,s2Step341EntryFvOut,s2Step341EntryGvOut],(growRow 768 s2Step341EntryFFresh ++ (growRow 769 s2Step341EntryGFresh ++ (growRow 770 s2Step341EntryFvFresh ++ (growRow 771 s2Step341EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step341EntryGvAfter [] []=some (s2Step341EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step341EntryGvBefore s2Step341EntryGvAfter s2Step341EntryGvAfter
    s2Step341EntryGvRow s2Step341EntryGvOut 186 s2Step341EntryGvFresh [] [] []
    (growRow 771 s2Step341EntryGvFresh) ([]) s2Step341EntryGv_Incoming s2Step341EntryGv_checked h4 s2Step341EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step341EntryFvBefore s2Step341EntryFvAfter s2Step341EntryGvAfter
    s2Step341EntryFvRow s2Step341EntryFvOut 186 s2Step341EntryFvFresh [(s2Step341EntryGvRow,186)] [s2Step341EntryGvFresh] [s2Step341EntryGvOut]
    (growRow 770 s2Step341EntryFvFresh) ((growRow 771 s2Step341EntryGvFresh ++ [])) s2Step341EntryFv_Incoming s2Step341EntryFv_checked h3 s2Step341EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step341EntryGBefore s2Step341EntryGAfter s2Step341EntryGvAfter
    s2Step341EntryGRow s2Step341EntryGOut 102 s2Step341EntryGFresh [(s2Step341EntryFvRow,186),(s2Step341EntryGvRow,186)] [s2Step341EntryFvFresh,s2Step341EntryGvFresh] [s2Step341EntryFvOut,s2Step341EntryGvOut]
    (growRow 769 s2Step341EntryGFresh) ((growRow 770 s2Step341EntryFvFresh ++ (growRow 771 s2Step341EntryGvFresh ++ []))) s2Step341EntryG_Incoming s2Step341EntryG_checked h2 s2Step341EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step341EntryFBefore s2Step341EntryFAfter s2Step341EntryGvAfter
    s2Step341EntryFRow s2Step341EntryFOut 102 s2Step341EntryFFresh [(s2Step341EntryGRow,102),(s2Step341EntryFvRow,186),(s2Step341EntryGvRow,186)] [s2Step341EntryGFresh,s2Step341EntryFvFresh,s2Step341EntryGvFresh] [s2Step341EntryGOut,s2Step341EntryFvOut,s2Step341EntryGvOut]
    (growRow 768 s2Step341EntryFFresh) ((growRow 769 s2Step341EntryGFresh ++ (growRow 770 s2Step341EntryFvFresh ++ (growRow 771 s2Step341EntryGvFresh ++ [])))) s2Step341EntryF_Incoming s2Step341EntryF_checked h1 s2Step341EntryF_Outgoing
  exact h0

private theorem s2Step341EntryBank_checked : compileHmrBankResizeLog .entry s2Step341EntryFBefore ⟨s2Step341EntryFRow,s2Step341EntryGRow,s2Step341EntryFvRow,s2Step341EntryGvRow⟩ ⟨102,102,186,186⟩ [s2Step341EntryFFresh,s2Step341EntryGFresh,s2Step341EntryFvFresh,s2Step341EntryGvFresh]=
    some (s2Step341EntryGvAfter,⟨s2Step341EntryFOut,s2Step341EntryGOut,s2Step341EntryFvOut,s2Step341EntryGvOut⟩,(growRow 768 s2Step341EntryFFresh ++ (growRow 769 s2Step341EntryGFresh ++ (growRow 770 s2Step341EntryFvFresh ++ (growRow 771 s2Step341EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step341EntryBank_rows]
  rfl

private def s2Step341ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step341ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step341ExitFBefore : Arena := s2Step341ExitGAfter

private def s2Step341ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 877],768⟩

private def s2Step341ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806],770⟩

private def s2Step341ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 789, 778, 800],769⟩

private def s2Step341ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784],771⟩

private theorem s2Step341ExitBank_incomingDistinct : ([s2Step341ExitGRow,s2Step341ExitFRow,s2Step341ExitFvRow,s2Step341ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step341ExitF_Incoming : rowsOwned s2Step341ExitFBefore [s2Step341ExitFRow,s2Step341ExitFvRow,s2Step341ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step341ExitGRow,s2Step341ExitFRow,s2Step341ExitFvRow,s2Step341ExitGvRow] 1 s2Step341ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step341ExitFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step341ExitBank_outgoingOwned : rowsOwned s2Step341ExitGvAfter [s2Step341ExitGOut,s2Step341ExitFOut,s2Step341ExitFvOut,s2Step341ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step341ExitGvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<784) ∨ (785≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step341ExitF_Outgoing : rowsOwned s2Step341ExitGvAfter [s2Step341ExitFOut,s2Step341ExitFvOut,s2Step341ExitGvOut] :=
  hmrRows_owned_drop s2Step341ExitGvAfter [s2Step341ExitGOut,s2Step341ExitFOut,s2Step341ExitFvOut,s2Step341ExitGvOut] 1 s2Step341ExitBank_outgoingOwned

private theorem s2Step341ExitF_distinct : (s2Step341ExitFRow.sign::s2Step341ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step341ExitF_owned : (s2Step341ExitFRow.sign::s2Step341ExitFRow.payload).toFinset⊆s2Step341ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step341ExitFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step341ExitF_retired : s2Step341ExitFBefore.retireSet s2Step341ExitFExtra.toFinset=s2Step341ExitFAfter := by
  unfold Arena.retireSet s2Step341ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step341ExitFBefore,s2Step341ExitGAfter,s2Step341ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step341ExitF_checked : planRowResizeLog s2Step341ExitFBefore s2Step341ExitFRow 102 []=
    some (s2Step341ExitFAfter,s2Step341ExitFOut,shrinkRow 768 s2Step341ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step341ExitFBefore s2Step341ExitFRow 102 s2Step341ExitF_distinct s2Step341ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step341ExitFRow.payload.take 102) s2Step341ExitFRow.sign=s2Step341ExitFOut := by decide +kernel
  have hi : s2Step341ExitFRow.payload.drop 102=s2Step341ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step341ExitF_retired] at result
  exact result

private def s2Step341ExitFvAfter : Arena := s2Step341ExitFAfter

private def s2Step341ExitFvBefore : Arena := s2Step341ExitFAfter

private theorem s2Step341ExitFv_Incoming : rowsOwned s2Step341ExitFvBefore [s2Step341ExitFvRow,s2Step341ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step341ExitGRow,s2Step341ExitFRow,s2Step341ExitFvRow,s2Step341ExitGvRow] 2 s2Step341ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step341ExitFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step341ExitFv_Outgoing : rowsOwned s2Step341ExitGvAfter [s2Step341ExitFvOut,s2Step341ExitGvOut] :=
  hmrRows_owned_drop s2Step341ExitGvAfter [s2Step341ExitGOut,s2Step341ExitFOut,s2Step341ExitFvOut,s2Step341ExitGvOut] 2 s2Step341ExitBank_outgoingOwned

private theorem s2Step341ExitFv_distinct : (s2Step341ExitFvRow.sign::s2Step341ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step341ExitFv_owned : (s2Step341ExitFvRow.sign::s2Step341ExitFvRow.payload).toFinset⊆s2Step341ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step341ExitFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step341ExitFv_reserved : s2Step341ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step341ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step341ExitFv_checked : planRowResizeLog s2Step341ExitFvBefore s2Step341ExitFvRow 187 []=
    some (s2Step341ExitFvAfter,s2Step341ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step341ExitFvBefore s2Step341ExitFvAfter s2Step341ExitFvRow 187 []
    s2Step341ExitFv_distinct s2Step341ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step341ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step341ExitFvRow.payload++[]) s2Step341ExitFvRow.sign=s2Step341ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step341ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private theorem s2Step341ExitG_Incoming : rowsOwned s2Step341ExitGBefore [s2Step341ExitGRow,s2Step341ExitFRow,s2Step341ExitFvRow,s2Step341ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step341ExitGRow,s2Step341ExitFRow,s2Step341ExitFvRow,s2Step341ExitGvRow] 0 s2Step341ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step341ExitGBefore (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step341ExitG_Outgoing : rowsOwned s2Step341ExitGvAfter [s2Step341ExitGOut,s2Step341ExitFOut,s2Step341ExitFvOut,s2Step341ExitGvOut] :=
  hmrRows_owned_drop s2Step341ExitGvAfter [s2Step341ExitGOut,s2Step341ExitFOut,s2Step341ExitFvOut,s2Step341ExitGvOut] 0 s2Step341ExitBank_outgoingOwned

private theorem s2Step341ExitG_distinct : (s2Step341ExitGRow.sign::s2Step341ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step341ExitG_owned : (s2Step341ExitGRow.sign::s2Step341ExitGRow.payload).toFinset⊆s2Step341ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step341ExitGBefore (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step341ExitG_retired : s2Step341ExitGBefore.retireSet s2Step341ExitGExtra.toFinset=s2Step341ExitGAfter := by
  unfold Arena.retireSet s2Step341ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step341ExitGBefore,s2Step341ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step341ExitG_checked : planRowResizeLog s2Step341ExitGBefore s2Step341ExitGRow 100 []=
    some (s2Step341ExitGAfter,s2Step341ExitGOut,shrinkRow 769 s2Step341ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step341ExitGBefore s2Step341ExitGRow 100 s2Step341ExitG_distinct s2Step341ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step341ExitGRow.payload.take 100) s2Step341ExitGRow.sign=s2Step341ExitGOut := by decide +kernel
  have hi : s2Step341ExitGRow.payload.drop 100=s2Step341ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step341ExitG_retired] at result
  exact result

private def s2Step341ExitGvBefore : Arena := s2Step341ExitFAfter

private theorem s2Step341ExitGv_Incoming : rowsOwned s2Step341ExitGvBefore [s2Step341ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step341ExitGRow,s2Step341ExitFRow,s2Step341ExitFvRow,s2Step341ExitGvRow] 3 s2Step341ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step341ExitGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step341ExitGv_Outgoing : rowsOwned s2Step341ExitGvAfter [s2Step341ExitGvOut] :=
  hmrRows_owned_drop s2Step341ExitGvAfter [s2Step341ExitGOut,s2Step341ExitFOut,s2Step341ExitFvOut,s2Step341ExitGvOut] 3 s2Step341ExitBank_outgoingOwned

private theorem s2Step341ExitGv_distinct : (s2Step341ExitGvRow.sign::s2Step341ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step341ExitGv_owned : (s2Step341ExitGvRow.sign::s2Step341ExitGvRow.payload).toFinset⊆s2Step341ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step341ExitGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step341ExitGv_retired : s2Step341ExitGvBefore.retireSet s2Step341ExitGvExtra.toFinset=s2Step341ExitGvAfter := by
  unfold Arena.retireSet s2Step341ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step341ExitGvBefore,s2Step341ExitFAfter,s2Step341ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step341ExitGv_checked : planRowResizeLog s2Step341ExitGvBefore s2Step341ExitGvRow 186 []=
    some (s2Step341ExitGvAfter,s2Step341ExitGvOut,shrinkRow 771 s2Step341ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step341ExitGvBefore s2Step341ExitGvRow 186 s2Step341ExitGv_distinct s2Step341ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step341ExitGvRow.payload.take 186) s2Step341ExitGvRow.sign=s2Step341ExitGvOut := by decide +kernel
  have hi : s2Step341ExitGvRow.payload.drop 186=s2Step341ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step341ExitGv_retired] at result
  exact result

private theorem s2Step341ExitBank_rows : planWindowRowsLog s2Step341ExitGBefore [(s2Step341ExitGRow,100),(s2Step341ExitFRow,102),(s2Step341ExitFvRow,187),(s2Step341ExitGvRow,186)] [[],[],[],[]]=
    some (s2Step341ExitGvAfter,[s2Step341ExitGOut,s2Step341ExitFOut,s2Step341ExitFvOut,s2Step341ExitGvOut],(shrinkRow 769 s2Step341ExitGExtra ++ (shrinkRow 768 s2Step341ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step341ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step341ExitGvAfter [] []=some (s2Step341ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step341ExitGvBefore s2Step341ExitGvAfter s2Step341ExitGvAfter
    s2Step341ExitGvRow s2Step341ExitGvOut 186 [] [] [] []
    (shrinkRow 771 s2Step341ExitGvExtra) ([]) s2Step341ExitGv_Incoming s2Step341ExitGv_checked h4 s2Step341ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step341ExitFvBefore s2Step341ExitFvAfter s2Step341ExitGvAfter
    s2Step341ExitFvRow s2Step341ExitFvOut 187 [] [(s2Step341ExitGvRow,186)] [[]] [s2Step341ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step341ExitGvExtra ++ [])) s2Step341ExitFv_Incoming s2Step341ExitFv_checked h3 s2Step341ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step341ExitFBefore s2Step341ExitFAfter s2Step341ExitGvAfter
    s2Step341ExitFRow s2Step341ExitFOut 102 [] [(s2Step341ExitFvRow,187),(s2Step341ExitGvRow,186)] [[],[]] [s2Step341ExitFvOut,s2Step341ExitGvOut]
    (shrinkRow 768 s2Step341ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step341ExitGvExtra ++ []))) s2Step341ExitF_Incoming s2Step341ExitF_checked h2 s2Step341ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step341ExitGBefore s2Step341ExitGAfter s2Step341ExitGvAfter
    s2Step341ExitGRow s2Step341ExitGOut 100 [] [(s2Step341ExitFRow,102),(s2Step341ExitFvRow,187),(s2Step341ExitGvRow,186)] [[],[],[]] [s2Step341ExitFOut,s2Step341ExitFvOut,s2Step341ExitGvOut]
    (shrinkRow 769 s2Step341ExitGExtra) ((shrinkRow 768 s2Step341ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step341ExitGvExtra ++ [])))) s2Step341ExitG_Incoming s2Step341ExitG_checked h1 s2Step341ExitG_Outgoing
  exact h0

private theorem s2Step341ExitBank_checked : compileHmrBankResizeLog .exit s2Step341ExitGBefore ⟨s2Step341ExitFRow,s2Step341ExitGRow,s2Step341ExitFvRow,s2Step341ExitGvRow⟩ ⟨102,100,187,186⟩ [[],[],[],[]]=
    some (s2Step341ExitGvAfter,⟨s2Step341ExitFOut,s2Step341ExitGOut,s2Step341ExitFvOut,s2Step341ExitGvOut⟩,(shrinkRow 769 s2Step341ExitGExtra ++ (shrinkRow 768 s2Step341ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step341ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step341ExitBank_rows]
  rfl

private theorem s2Step341Add0_apart : Disjoint s2Step341Add0Arena.live s2Step341Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step341Add0Arena (fun q => (0≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step341Add0_card : s2Step341Add0Arena.live.card=910 := by
  decide +kernel

private theorem s2Step341Add0_borrowed : s2Step341Add0Arena.checkBorrow (hmrHybridCount s2Step341Add0Arena s2Step341Add0B.length) s2Step341Add0Work=some s2Step341Add0During := by
  have len : s2Step341Add0Work.length=hmrHybridCount s2Step341Add0Arena s2Step341Add0B.length := by
    rw [hmrHybridCount,s2Step341Add0_card]
    decide +kernel
  have nd : s2Step341Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step341Add0Arena s2Step341Add0During s2Step341Add0Work.toFinset s2Step341Add0_bounded s2Step341Add0_apart rfl

private theorem s2Step341Add0_distinct : (894::827::896::(s2Step341Add0A++s2Step341Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step341Add0_owned : (894::827::896::(s2Step341Add0A++s2Step341Add0B)).toFinset⊆s2Step341Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step341Add0Arena (fun q => (0≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step341Add0_checked : compileHmrHybridCinLog s2Step341Add0Arena 827 894 896 s2Step341Add0A s2Step341Add0B s2Step341Add0Work=some s2Step341Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step341Add0Arena s2Step341Add0During 827 894 896 s2Step341Add0A s2Step341Add0B s2Step341Add0Work
    (by decide +kernel) (by decide +kernel) s2Step341Add0_distinct
    (fun q hq => s2Step341Add0_owned (List.mem_toFinset.mpr hq)) s2Step341Add0_borrowed

private theorem s2Step341Add1_apart : Disjoint s2Step341Add1Arena.live s2Step341Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step341Add1Arena (fun q => (0≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step341Add1_card : s2Step341Add1Arena.live.card=910 := by
  decide +kernel

private theorem s2Step341Add1_borrowed : s2Step341Add1Arena.checkBorrow (hmrHybridCount s2Step341Add1Arena s2Step341Add1B.length) s2Step341Add1Work=some s2Step341Add1During := by
  have len : s2Step341Add1Work.length=hmrHybridCount s2Step341Add1Arena s2Step341Add1B.length := by
    rw [hmrHybridCount,s2Step341Add1_card]
    decide +kernel
  have nd : s2Step341Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step341Add1Arena s2Step341Add1During s2Step341Add1Work.toFinset s2Step341Add1_bounded s2Step341Add1_apart rfl

private theorem s2Step341Add1_distinct : (894::827::896::(s2Step341Add1A++s2Step341Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step341Add1_owned : (894::827::896::(s2Step341Add1A++s2Step341Add1B)).toFinset⊆s2Step341Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step341Add1Arena (fun q => (0≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step341Add1_checked : compileHmrHybridCinLog s2Step341Add1Arena 827 894 896 s2Step341Add1A s2Step341Add1B s2Step341Add1Work=some s2Step341Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step341Add1Arena s2Step341Add1During 827 894 896 s2Step341Add1A s2Step341Add1B s2Step341Add1Work
    (by decide +kernel) (by decide +kernel) s2Step341Add1_distinct
    (fun q hq => s2Step341Add1_owned (List.mem_toFinset.mpr hq)) s2Step341Add1_borrowed

private theorem s2Step341F4_apart : Disjoint (s2Step341Add0A++s2Step341Add0B).toFinset (s2Step341Add1A++s2Step341Add1B).toFinset := by
  have nd : ((s2Step341Add0A++s2Step341Add0B)++(s2Step341Add1A++s2Step341Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step341F4_carry : s2Step341F4FlagArena.checkBorrow 1 [896]=some s2Step341Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step341F4FlagArena,s2Step341HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step341F4FlagArena,s2Step341HeadFvAfter,s2Step341Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step341F4_distinct : (839::827::894::896::((s2Step341Add0A++s2Step341Add1A)++(s2Step341Add0B++s2Step341Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step341F4_flag : s2Step341HeadFvAfter.checkBorrow 1 [894]=some s2Step341F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step341HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step341F4_owned : (839::827::((s2Step341Add0A++s2Step341Add1A)++(s2Step341Add0B++s2Step341Add1B))).toFinset⊆s2Step341HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step341HeadFvAfter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step341F4_checked : compileHmrHybridF4Log s2Step341HeadFvAfter 839 827 s2Step341Add0A s2Step341Add0B s2Step341Add1A s2Step341Add1B [894] [896] s2Step341Add0Work s2Step341Add1Work=some s2Step341F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step341HeadFvAfter s2Step341F4FlagArena s2Step341Add0Arena s2Step341Add0During s2Step341Add1During 839 827
    s2Step341Add0A s2Step341Add0B s2Step341Add1A s2Step341Add1B [894] [896] s2Step341Add0Work s2Step341Add1Work
    (fun q hq => s2Step341F4_owned (List.mem_toFinset.mpr hq)) s2Step341F4_flag s2Step341F4_carry
    s2Step341F4_distinct s2Step341F4_apart s2Step341Add0_checked s2Step341Add1_checked

private theorem s2Step341Front_branch : s2Step341FrontSigmaArena.checkBorrow 1 [827]=some s2Step341HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step341FrontSigmaArena,s2Step341EntryGvAfter,s2Step341EntryGAfter,arenaWires]
  · ext q
    simp only [s2Step341FrontSigmaArena,s2Step341EntryGvAfter,s2Step341EntryGAfter,s2Step341HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step341Front_entry : HmrFrontEntryValid s2Step341EntryFBefore s2Step341FrontBank 102 186 ⟨102,100,187,186⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step341FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step341EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step341EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<784) ∨ (785≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step341FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step341Front_sigma : s2Step341EntryGvAfter.checkBorrow 1 [839]=some s2Step341FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step341EntryGvAfter,s2Step341EntryGAfter,arenaWires]
  · rfl

private def s2Step341HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<806) ∨ (807≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step341HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<806) ∨ (807≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step341HeadFBefore : Arena := s2Step341HeadGAfter

private def s2Step341HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613],768⟩

private def s2Step341HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851],770⟩

private def s2Step341HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 789, 778],769⟩

private def s2Step341HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794],771⟩

private theorem s2Step341HeadBank_incomingDistinct : ([s2Step341HeadGRow,s2Step341HeadFRow,s2Step341HeadGvRow,s2Step341HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step341HeadF_Incoming : rowsOwned s2Step341HeadFBefore [s2Step341HeadFRow,s2Step341HeadGvRow,s2Step341HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step341HeadGRow,s2Step341HeadFRow,s2Step341HeadGvRow,s2Step341HeadFvRow] 1 s2Step341HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step341HeadFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<806) ∨ (807≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step341HeadBank_outgoingOwned : rowsOwned s2Step341HeadFvAfter [s2Step341HeadGOut,s2Step341HeadFOut,s2Step341HeadGvOut,s2Step341HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step341HeadFvAfter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step341HeadF_Outgoing : rowsOwned s2Step341HeadFvAfter [s2Step341HeadFOut,s2Step341HeadGvOut,s2Step341HeadFvOut] :=
  hmrRows_owned_drop s2Step341HeadFvAfter [s2Step341HeadGOut,s2Step341HeadFOut,s2Step341HeadGvOut,s2Step341HeadFvOut] 1 s2Step341HeadBank_outgoingOwned

private theorem s2Step341HeadF_distinct : (s2Step341HeadFRow.sign::s2Step341HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step341HeadF_owned : (s2Step341HeadFRow.sign::s2Step341HeadFRow.payload).toFinset⊆s2Step341HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step341HeadFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<806) ∨ (807≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step341HeadF_reserved : s2Step341HeadFBefore.reserve s2Step341HeadFFresh.toFinset=some s2Step341HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step341HeadFFresh,arenaWires]
  · norm_num [s2Step341HeadFBefore,s2Step341HeadGAfter,s2Step341HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step341HeadFAfter,s2Step341HeadFBefore,s2Step341HeadGAfter,s2Step341HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step341HeadF_checked : planRowResizeLog s2Step341HeadFBefore s2Step341HeadFRow 103 s2Step341HeadFFresh=
    some (s2Step341HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 877],768⟩,growRow 768 s2Step341HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step341HeadFBefore s2Step341HeadFAfter s2Step341HeadFRow 103 s2Step341HeadFFresh
    s2Step341HeadF_distinct s2Step341HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step341HeadF_reserved
  have rowEq : WindowRow.mk (s2Step341HeadFRow.payload++s2Step341HeadFFresh) s2Step341HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 877],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step341HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<806) ∨ (807≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step341HeadFvBefore : Arena := s2Step341HeadGvAfter

private theorem s2Step341HeadFv_Incoming : rowsOwned s2Step341HeadFvBefore [s2Step341HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step341HeadGRow,s2Step341HeadFRow,s2Step341HeadGvRow,s2Step341HeadFvRow] 3 s2Step341HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step341HeadFvBefore (fun q => (0≤q ∧ q<806) ∨ (807≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step341HeadFv_Outgoing : rowsOwned s2Step341HeadFvAfter [s2Step341HeadFvOut] :=
  hmrRows_owned_drop s2Step341HeadFvAfter [s2Step341HeadGOut,s2Step341HeadFOut,s2Step341HeadGvOut,s2Step341HeadFvOut] 3 s2Step341HeadBank_outgoingOwned

private theorem s2Step341HeadFv_distinct : (s2Step341HeadFvRow.sign::s2Step341HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step341HeadFv_owned : (s2Step341HeadFvRow.sign::s2Step341HeadFvRow.payload).toFinset⊆s2Step341HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step341HeadFvBefore (fun q => (0≤q ∧ q<806) ∨ (807≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step341HeadFv_reserved : s2Step341HeadFvBefore.reserve s2Step341HeadFvFresh.toFinset=some s2Step341HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step341HeadFvFresh,arenaWires]
  · norm_num [s2Step341HeadFvBefore,s2Step341HeadGvAfter,s2Step341HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step341HeadFvAfter,s2Step341HeadFvBefore,s2Step341HeadGvAfter,s2Step341HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step341HeadFv_checked : planRowResizeLog s2Step341HeadFvBefore s2Step341HeadFvRow 187 s2Step341HeadFvFresh=
    some (s2Step341HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806],770⟩,growRow 770 s2Step341HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step341HeadFvBefore s2Step341HeadFvAfter s2Step341HeadFvRow 187 s2Step341HeadFvFresh
    s2Step341HeadFv_distinct s2Step341HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step341HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step341HeadFvRow.payload++s2Step341HeadFvFresh) s2Step341HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step341HeadG_Incoming : rowsOwned s2Step341HeadGBefore [s2Step341HeadGRow,s2Step341HeadFRow,s2Step341HeadGvRow,s2Step341HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step341HeadGRow,s2Step341HeadFRow,s2Step341HeadGvRow,s2Step341HeadFvRow] 0 s2Step341HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step341HeadGBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step341HeadG_Outgoing : rowsOwned s2Step341HeadFvAfter [s2Step341HeadGOut,s2Step341HeadFOut,s2Step341HeadGvOut,s2Step341HeadFvOut] :=
  hmrRows_owned_drop s2Step341HeadFvAfter [s2Step341HeadGOut,s2Step341HeadFOut,s2Step341HeadGvOut,s2Step341HeadFvOut] 0 s2Step341HeadBank_outgoingOwned

private theorem s2Step341HeadG_distinct : (s2Step341HeadGRow.sign::s2Step341HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step341HeadG_owned : (s2Step341HeadGRow.sign::s2Step341HeadGRow.payload).toFinset⊆s2Step341HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step341HeadGBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step341HeadG_reserved : s2Step341HeadGBefore.reserve s2Step341HeadGFresh.toFinset=some s2Step341HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step341HeadGFresh,arenaWires]
  · norm_num [s2Step341HeadGBefore,s2Step341HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step341HeadGAfter,s2Step341HeadGBefore,s2Step341HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step341HeadG_checked : planRowResizeLog s2Step341HeadGBefore s2Step341HeadGRow 103 s2Step341HeadGFresh=
    some (s2Step341HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 789, 778, 800],769⟩,growRow 769 s2Step341HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step341HeadGBefore s2Step341HeadGAfter s2Step341HeadGRow 103 s2Step341HeadGFresh
    s2Step341HeadG_distinct s2Step341HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step341HeadG_reserved
  have rowEq : WindowRow.mk (s2Step341HeadGRow.payload++s2Step341HeadGFresh) s2Step341HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 789, 778, 800],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step341HeadGvBefore : Arena := s2Step341HeadFAfter

private theorem s2Step341HeadGv_Incoming : rowsOwned s2Step341HeadGvBefore [s2Step341HeadGvRow,s2Step341HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step341HeadGRow,s2Step341HeadFRow,s2Step341HeadGvRow,s2Step341HeadFvRow] 2 s2Step341HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step341HeadGvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<806) ∨ (807≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step341HeadGv_Outgoing : rowsOwned s2Step341HeadFvAfter [s2Step341HeadGvOut,s2Step341HeadFvOut] :=
  hmrRows_owned_drop s2Step341HeadFvAfter [s2Step341HeadGOut,s2Step341HeadFOut,s2Step341HeadGvOut,s2Step341HeadFvOut] 2 s2Step341HeadBank_outgoingOwned

private theorem s2Step341HeadGv_distinct : (s2Step341HeadGvRow.sign::s2Step341HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step341HeadGv_owned : (s2Step341HeadGvRow.sign::s2Step341HeadGvRow.payload).toFinset⊆s2Step341HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step341HeadGvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<806) ∨ (807≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step341HeadGv_reserved : s2Step341HeadGvBefore.reserve s2Step341HeadGvFresh.toFinset=some s2Step341HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step341HeadGvFresh,arenaWires]
  · norm_num [s2Step341HeadGvBefore,s2Step341HeadFAfter,s2Step341HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step341HeadGvAfter,s2Step341HeadGvBefore,s2Step341HeadFAfter,s2Step341HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step341HeadGv_checked : planRowResizeLog s2Step341HeadGvBefore s2Step341HeadGvRow 187 s2Step341HeadGvFresh=
    some (s2Step341HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784],771⟩,growRow 771 s2Step341HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step341HeadGvBefore s2Step341HeadGvAfter s2Step341HeadGvRow 187 s2Step341HeadGvFresh
    s2Step341HeadGv_distinct s2Step341HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step341HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step341HeadGvRow.payload++s2Step341HeadGvFresh) s2Step341HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step341HeadBank_rows : planWindowRowsLog s2Step341HeadGBefore [(s2Step341HeadGRow,103),(s2Step341HeadFRow,103),(s2Step341HeadGvRow,187),(s2Step341HeadFvRow,187)] [s2Step341HeadGFresh,s2Step341HeadFFresh,s2Step341HeadGvFresh,s2Step341HeadFvFresh]=
    some (s2Step341HeadFvAfter,[s2Step341HeadGOut,s2Step341HeadFOut,s2Step341HeadGvOut,s2Step341HeadFvOut],(growRow 769 s2Step341HeadGFresh ++ (growRow 768 s2Step341HeadFFresh ++ (growRow 771 s2Step341HeadGvFresh ++ (growRow 770 s2Step341HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step341HeadFvAfter [] []=some (s2Step341HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step341HeadFvBefore s2Step341HeadFvAfter s2Step341HeadFvAfter
    s2Step341HeadFvRow s2Step341HeadFvOut 187 s2Step341HeadFvFresh [] [] []
    (growRow 770 s2Step341HeadFvFresh) ([]) s2Step341HeadFv_Incoming s2Step341HeadFv_checked h4 s2Step341HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step341HeadGvBefore s2Step341HeadGvAfter s2Step341HeadFvAfter
    s2Step341HeadGvRow s2Step341HeadGvOut 187 s2Step341HeadGvFresh [(s2Step341HeadFvRow,187)] [s2Step341HeadFvFresh] [s2Step341HeadFvOut]
    (growRow 771 s2Step341HeadGvFresh) ((growRow 770 s2Step341HeadFvFresh ++ [])) s2Step341HeadGv_Incoming s2Step341HeadGv_checked h3 s2Step341HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step341HeadFBefore s2Step341HeadFAfter s2Step341HeadFvAfter
    s2Step341HeadFRow s2Step341HeadFOut 103 s2Step341HeadFFresh [(s2Step341HeadGvRow,187),(s2Step341HeadFvRow,187)] [s2Step341HeadGvFresh,s2Step341HeadFvFresh] [s2Step341HeadGvOut,s2Step341HeadFvOut]
    (growRow 768 s2Step341HeadFFresh) ((growRow 771 s2Step341HeadGvFresh ++ (growRow 770 s2Step341HeadFvFresh ++ []))) s2Step341HeadF_Incoming s2Step341HeadF_checked h2 s2Step341HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step341HeadGBefore s2Step341HeadGAfter s2Step341HeadFvAfter
    s2Step341HeadGRow s2Step341HeadGOut 103 s2Step341HeadGFresh [(s2Step341HeadFRow,103),(s2Step341HeadGvRow,187),(s2Step341HeadFvRow,187)] [s2Step341HeadFFresh,s2Step341HeadGvFresh,s2Step341HeadFvFresh] [s2Step341HeadFOut,s2Step341HeadGvOut,s2Step341HeadFvOut]
    (growRow 769 s2Step341HeadGFresh) ((growRow 768 s2Step341HeadFFresh ++ (growRow 771 s2Step341HeadGvFresh ++ (growRow 770 s2Step341HeadFvFresh ++ [])))) s2Step341HeadG_Incoming s2Step341HeadG_checked h1 s2Step341HeadG_Outgoing
  exact h0

private theorem s2Step341HeadBank_checked : compileHmrBankResizeLog .headroom s2Step341HeadGBefore ⟨s2Step341HeadFRow,s2Step341HeadGRow,s2Step341HeadFvRow,s2Step341HeadGvRow⟩ ⟨103,103,187,187⟩ [s2Step341HeadGFresh,s2Step341HeadFFresh,s2Step341HeadGvFresh,s2Step341HeadFvFresh]=
    some (s2Step341HeadFvAfter,⟨s2Step341HeadFOut,s2Step341HeadGOut,s2Step341HeadFvOut,s2Step341HeadGvOut⟩,(growRow 769 s2Step341HeadGFresh ++ (growRow 768 s2Step341HeadFFresh ++ (growRow 771 s2Step341HeadGvFresh ++ (growRow 770 s2Step341HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step341HeadBank_rows]
  rfl

private theorem s2Step341Front_checked : compileHmrSourceFrontLog s2Step341EntryFBefore s2Step341FrontBank 102 186 ⟨102,100,187,186⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step341FrontLog=some s2Step341FrontPlan := by
  have pairEq : s2Step341FrontPair=⟨s2Step341HeadFRow,s2Step341HeadGRow,s2Step341HeadFvRow,s2Step341HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step341FrontHead=⟨s2Step341ExitFRow,s2Step341ExitGRow,s2Step341ExitFvRow,s2Step341ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step341Add0A=s2Step341FrontHead.f.wires := by decide +kernel
  have gEq : s2Step341Add0B=s2Step341FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step341Add1A=s2Step341FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step341Add1B=s2Step341FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step341EntryFBefore s2Step341FrontBank 102 186 ⟨102,100,187,186⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step341FrontLog s2Step341FrontPlan
  · exact s2Step341Front_entry
  · exact s2Step341EntryBank_checked
  · exact s2Step341Front_sigma
  · rfl
  · exact s2Step341Front_branch
  · rfl
  · simpa only [s2Step341FrontPlan,pairEq] using s2Step341HeadBank_checked
  · simpa only [s2Step341FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step341F4_checked
  · exact s2Step341Counter_checked
  · rfl
  · simpa only [s2Step341FrontPlan,headEq] using s2Step341ExitBank_checked

private theorem s2Step341Complete_explicit_checked : compileHmrEarlyStepLog s2Step341EntryFBefore s2Step341FrontBank 102 186 ⟨102,100,187,186⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step341CompleteLog=some s2Step341CompletePlan := by
  let Q := s2Step341EarlyControlPlan
  have hq := s2Step341EarlyControl_plan_checked
  have fv1 : s2Step341CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step341CompleteOut.fv.payload[2]?.getD s2Step341CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step341CompleteOut.fv.payload[3]?.getD s2Step341CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step341CompleteOut.fv.payload[4]?.getD s2Step341CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step341EntryFBefore s2Step341EarlyControlArena s2Step341FrontBank 102 186 ⟨102,100,187,186⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step341CompleteLog s2Step341FrontPlan Q
    s2Step341Front_checked s2Step341Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step341Complete_owned s2Step341Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step341EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 839 s2Step341CompleteOut.fv.second (s2Step341CompleteOut.fv.payload[2]?.getD s2Step341CompleteOut.fv.sign) (s2Step341CompleteOut.fv.payload[3]?.getD s2Step341CompleteOut.fv.sign) (s2Step341CompleteOut.fv.payload[4]?.getD s2Step341CompleteOut.fv.sign) 827 60 s2Step341EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep341Arena : Arena := s2Step341EntryFBefore
def s2PrivateStep341Bank : WindowBank := s2Step341FrontBank
def s2PrivateStep341Spec : HmrSourceWalkStepLog := ⟨102,186,⟨102,100,187,186⟩,60,.early s2Step341CompleteLog⟩
def s2PrivateStep341Plan : HmrSourceStepPlan := .early s2Step341CompletePlan
theorem s2PrivateStep341_source : s2PrivateStep341Spec=s2ObservedLogs336[5] := rfl
theorem s2PrivateStep341_checked : compileHmrSourceStepLog s2PrivateStep341Arena s2PrivateStep341Bank
    s2PrivateStep341Spec.fgWidth s2PrivateStep341Spec.vWidth s2PrivateStep341Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]
    6 498 341 s2PrivateStep341Spec.need none s2PrivateStep341Spec.log=some s2PrivateStep341Plan := by
  change compileHmrSourceStepLog s2Step341EntryFBefore s2Step341FrontBank 102 186 ⟨102,100,187,186⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 6 498 341 60 none (.early s2Step341CompleteLog)=some (.early s2Step341CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 341<498)]
  rw [s2Step341Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
