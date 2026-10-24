import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep338
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

private def s2Step340CompleteMoves : List (Wire × Wire) := [(839,100)]

private def s2Step340EarlyControlLog : HmrEarlyControlLog := ⟨[839, 827, 800, 877, 784],[806],[894],[896, 901, 903, 907, 913, 914],[]⟩

private def s2Step340FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [784], [], [794]],[[806], [877], [827], [800]],[[], [], [], []]⟩,[778],[789],[894],[896],[901, 903, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[901, 903, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[894, 896, 901, 903]⟩

private def s2Step340CompleteLog : HmrEarlyStepLog := ⟨s2Step340FrontLog,s2Step340CompleteMoves,s2Step340EarlyControlLog⟩

private def s2Step340ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613],768⟩

private def s2Step340ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851],770⟩

private def s2Step340ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99],769⟩

private def s2Step340ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794],771⟩

private def s2Step340FrontOut : WindowBank := ⟨s2Step340ExitFOut,s2Step340ExitGOut,s2Step340ExitFvOut,s2Step340ExitGvOut⟩

private def s2Step340CompleteOut : WindowBank := s2Step340FrontOut.repacked s2Step340CompleteMoves

private def s2Step340EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step340EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step340EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step340EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step340EarlyControlPositiveArena,[806],s2Step340EarlyControlEqualityArena,[894],⟨⟨778,false⟩,[⟨⟨806,false⟩,894⟩]⟩⟩

private def s2Step340EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<915)),Finset.filter_subset _ _⟩

private def s2Step340EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<915)),Finset.filter_subset _ _⟩

private def s2Step340EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step340EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<784) ∨ (785≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step340EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step340EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<806) ∨ (807≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step340EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,839⟩,⟨⟨774,false⟩,827⟩,⟨⟨775,false⟩,800⟩,⟨⟨776,false⟩,877⟩,⟨⟨777,false⟩,784⟩]⟩

private def s2Step340EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step340EarlyControlZeroArena,s2Step340EarlyControlZeroPlan,s2Step340EarlyControlClassPlan,s2Step340EarlyControlFlagArena,s2Step340EarlyControlFittedArena,s2Step340EarlyControlHistoryArena,s2Step340EarlyControlSigmaArena,s2Step340EarlyControlOutputArena,s2Step340EarlyControlLog⟩

private def s2Step340CounterWork : List Wire := [894, 896, 901, 903]

private theorem s2Step340Counter_bounded : s2Step340CounterWork.toFinset⊆arenaWires := by norm_num [s2Step340CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step340HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step340CounterDuring : Arena := ⟨s2Step340HeadFvAfter.live∪s2Step340CounterWork.toFinset,Finset.union_subset s2Step340HeadFvAfter.bounded s2Step340Counter_bounded⟩

private def s2Step340EntryFFresh : List Wire := []

private def s2Step340EntryFvFresh : List Wire := []

private def s2Step340EntryGFresh : List Wire := [784]

private def s2Step340EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step340EntryGvFresh : List Wire := [794]

private def s2Step340ExitFExtra : List Wire := [877]

private def s2Step340ExitFvExtra : List Wire := [800]

private def s2Step340ExitGExtra : List Wire := [100, 784, 806]

private def s2Step340ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<100) ∨ (101≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step340ExitGvExtra : List Wire := [827]

private def s2Step340Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step340Add0Work : List Wire := [901, 903, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step340Add0_bounded : s2Step340Add0Work.toFinset⊆arenaWires := by
  have h : s2Step340Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step340Add0During : Arena := ⟨s2Step340Add0Arena.live∪s2Step340Add0Work.toFinset,Finset.union_subset s2Step340Add0Arena.bounded s2Step340Add0_bounded⟩

private def s2Step340Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step340Add1Work : List Wire := [901, 903, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step340Add1_bounded : s2Step340Add1Work.toFinset⊆arenaWires := by
  have h : s2Step340Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step340Add1During : Arena := ⟨s2Step340Add1Arena.live∪s2Step340Add1Work.toFinset,Finset.union_subset s2Step340Add1Arena.bounded s2Step340Add1_bounded⟩

private def s2Step340F4FlagArena : Arena := ⟨s2Step340HeadFvAfter.live∪{894},Finset.union_subset s2Step340HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step340F4Plan : HmrHybridF4Plan := ⟨s2Step340F4FlagArena,[894],s2Step340Add0Arena,[896],s2Step340Add0During,s2Step340Add0Work,s2Step340Add1During,s2Step340Add1Work⟩

private def s2Step340HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 877],768⟩

private def s2Step340HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 800],770⟩

private def s2Step340HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 784, 806],769⟩

private def s2Step340HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 827],771⟩

private def s2Step340FrontHead : WindowBank := ⟨s2Step340HeadFOut,s2Step340HeadGOut,s2Step340HeadFvOut,s2Step340HeadGvOut⟩

private def s2Step340EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613],768⟩

private def s2Step340EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851],770⟩

private def s2Step340EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 784],769⟩

private def s2Step340EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794],771⟩

private def s2Step340FrontPair : WindowBank := ⟨s2Step340EntryFOut,s2Step340EntryGOut,s2Step340EntryFvOut,s2Step340EntryGvOut⟩

private def s2Step340FrontSigmaArena : Arena := ⟨s2Step340EntryGvAfter.live∪{778},Finset.union_subset s2Step340EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step340HeadFFresh : List Wire := [877]

private def s2Step340HeadFvFresh : List Wire := [800]

private def s2Step340HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step340HeadGFresh : List Wire := [806]

private def s2Step340HeadGvFresh : List Wire := [827]

private def s2Step340FrontPlan : HmrSourceFront := ⟨s2Step340EntryGvAfter,s2Step340FrontPair,(growRow 768 s2Step340EntryFFresh ++ (growRow 769 s2Step340EntryGFresh ++ (growRow 770 s2Step340EntryFvFresh ++ (growRow 771 s2Step340EntryGvFresh ++ [])))),s2Step340FrontSigmaArena,[778],s2Step340HeadGBefore,[789],
  s2Step340HeadFvAfter,s2Step340FrontHead,(growRow 769 s2Step340HeadGFresh ++ (growRow 768 s2Step340HeadFFresh ++ (growRow 771 s2Step340HeadGvFresh ++ (growRow 770 s2Step340HeadFvFresh ++ [])))),s2Step340F4Plan,s2Step340CounterDuring,s2Step340CounterWork,s2Step340ExitGvAfter,s2Step340FrontOut,(shrinkRow 769 s2Step340ExitGExtra ++ (shrinkRow 768 s2Step340ExitFExtra ++ (shrinkRow 770 s2Step340ExitFvExtra ++ (shrinkRow 771 s2Step340ExitGvExtra ++ []))))⟩

private def s2Step340CompletePlan : HmrEarlyStepPlan := ⟨s2Step340FrontPlan,s2Step340EarlyControlArena,s2Step340EarlyControlPlan,s2Step340CompleteMoves⟩

private theorem s2Step340Complete_apart : List.Disjoint (s2Step340CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [778, 789, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] := by
  have nd : ((s2Step340CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[778, 789, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step340Complete_owned : (s2Step340CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step340EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step340EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private def s2Step340CompleteMoveArena : Arena := ⟨s2Step340ExitGvAfter.live∪{100},Finset.union_subset s2Step340ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step340Complete_repack : s2Step340ExitGvAfter.checkRepack s2Step340CompleteMoves=some s2Step340EarlyControlArena := by
  have owned : 839∈s2Step340ExitGvAfter.live := by norm_num [s2Step340ExitGvAfter,arenaWires]
  have reserve : s2Step340ExitGvAfter.reserve {100}=some s2Step340CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step340ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step340CompleteMoveArena.retireSet {839}=s2Step340EarlyControlArena := by
    unfold Arena.retireSet s2Step340EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step340CompleteMoveArena,s2Step340ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step340CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step340CompleteMoveArena.retireSet {839}).checkRepack []=some s2Step340EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step340EarlyControl_branchOwned : ([789] : List Wire).toFinset⊆s2Step340EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step340EarlyControlSigmaArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step340EarlyControl_branch : compileHmrBranchRetirement s2Step340EarlyControlSigmaArena 789=some s2Step340EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step340EarlyControl_branchOwned
  · ext q
    simp [s2Step340EarlyControlOutputArena,s2Step340EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step340EarlyControl_classEqualityBorrow : s2Step340EarlyControlPositiveArena.checkBorrow (([778, 806] : List Wire).length-1) s2Step340EarlyControlLog.classWork=some s2Step340EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step340EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step340EarlyControlPositiveArena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step340EarlyControlEqualityArena,s2Step340EarlyControlPositiveArena,s2Step340EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step340EarlyControl_classEqualityOwned : ([778, 806] : List Wire).toFinset⊆s2Step340EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step340EarlyControlPositiveArena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step340EarlyControl_classEquality : compileHmrEqualityLog s2Step340EarlyControlPositiveArena [778, 806] 0 s2Step340EarlyControlLog.classWork=some (s2Step340EarlyControlEqualityArena,s2Step340EarlyControlLog.classWork,s2Step340EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step340EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step340EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step340EarlyControl_classOwned : ([777, 784, 778] : List Wire).toFinset⊆s2Step340EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step340EarlyControlZeroArena (fun q => (0≤q ∧ q<806) ∨ (807≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step340EarlyControl_positiveBorrow : s2Step340EarlyControlZeroArena.checkBorrow (1) s2Step340EarlyControlLog.positiveWork=some s2Step340EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step340EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step340EarlyControlZeroArena (fun q => (0≤q ∧ q<806) ∨ (807≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step340EarlyControlPositiveArena,s2Step340EarlyControlZeroArena,s2Step340EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step340EarlyControl_class : compileHmrSourceClassLog s2Step340EarlyControlZeroArena false 777 s2Step340EarlyControlZeroPlan.top 0 778 s2Step340EarlyControlLog.positiveWork s2Step340EarlyControlLog.classWork=some s2Step340EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step340EarlyControlClassPlan s2Step340EarlyControlZeroArena false 777 s2Step340EarlyControlZeroPlan.top 0 778
  constructor
  · decide +kernel
  · exact s2Step340EarlyControl_classOwned
  · exact s2Step340EarlyControl_positiveBorrow
  · exact s2Step340EarlyControl_classEquality

private theorem s2Step340EarlyControl_entryRecordOwned : ([789, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step340EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step340EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step340EarlyControl_entrySigmaOwned : ([778, 254] : List Wire).toFinset⊆s2Step340EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step340EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step340EarlyControl_fitBorrow : s2Step340EarlyControlFlagArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step340EarlyControlLog.recordFresh=some s2Step340EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step340EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step340EarlyControlFlagArena (fun q => (0≤q ∧ q<915)) rfl
      decide +kernel
    · ext q
      simp [s2Step340EarlyControlFittedArena,s2Step340EarlyControlFlagArena,s2Step340EarlyControlLog,arenaWires]

private theorem s2Step340EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step340EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step340EarlyControlFlagArena (fun q => (0≤q ∧ q<915)) rfl
  decide +kernel

private theorem s2Step340EarlyControl_fit : compileHmrRecordGrowLog s2Step340EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step340EarlyControlLog.recordFresh=some s2Step340EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step340EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step340EarlyControl_fitBorrow

private theorem s2Step340EarlyControl_flagsBorrow : s2Step340EarlyControlEqualityArena.checkBorrow (6) s2Step340EarlyControlLog.flagWork=some s2Step340EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step340EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step340EarlyControlEqualityArena (fun q => (0≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step340EarlyControlFlagArena,s2Step340EarlyControlEqualityArena,s2Step340EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step340EarlyControl_flagsOwned : ([894, 253, 252, 251] : List Wire).toFinset⊆s2Step340EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step340EarlyControlEqualityArena (fun q => (0≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step340EarlyControl_flags : compileHmrFlagsLog s2Step340EarlyControlClassPlan.equalityArena s2Step340EarlyControlClassPlan.equality.top 253 252 251 s2Step340EarlyControlLog.flagWork=some s2Step340EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step340EarlyControl_flagsOwned⟩
  · exact s2Step340EarlyControl_flagsBorrow

private theorem s2Step340EarlyControl_historyBorrow : s2Step340EarlyControlArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step340EarlyControlLog.recordFresh=some s2Step340EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step340EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step340EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step340EarlyControlHistoryArena,s2Step340EarlyControlArena,s2Step340EarlyControlLog,arenaWires]

private theorem s2Step340EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step340EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step340EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step340EarlyControl_history : compileHmrRecordGrowLog s2Step340EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step340EarlyControlLog.recordFresh=some s2Step340EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step340EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step340EarlyControl_historyBorrow

private theorem s2Step340EarlyControl_sigmaOwned : ([254, 778] : List Wire).toFinset⊆s2Step340EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step340EarlyControlHistoryArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step340EarlyControl_sigmaReleaseOwned : ([778] : List Wire).toFinset⊆s2Step340EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step340EarlyControlHistoryArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step340EarlyControl_sigmaRelease : s2Step340EarlyControlHistoryArena.release {778} (fun _ => false)=some s2Step340EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step340EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step340EarlyControlSigmaArena,s2Step340EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step340EarlyControl_sigma : compileHmrSigmaDropLog s2Step340EarlyControlHistoryArena false 0 0 254 778 []=some s2Step340EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step340EarlyControl_sigmaOwned⟩
  · exact s2Step340EarlyControl_sigmaRelease

private theorem s2Step340EarlyControl_zeroBorrow : s2Step340EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step340EarlyControlLog.zeroWork=some s2Step340EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step340EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step340EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step340EarlyControlZeroArena,s2Step340EarlyControlArena,s2Step340EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step340EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step340EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step340EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step340EarlyControl_zero : compileHmrEqualityLog s2Step340EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step340EarlyControlLog.zeroWork=some (s2Step340EarlyControlZeroArena,s2Step340EarlyControlLog.zeroWork,s2Step340EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step340EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step340EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step340EarlyControl_logged : s2Step340EarlyControlPlan.Logged s2Step340EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 778 254 253 252 251 789 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step340EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step340EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step340EarlyControl_zero
  · exact s2Step340EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step340EarlyControl_flags
  · exact s2Step340EarlyControl_fit
  · exact s2Step340EarlyControl_history
  · exact s2Step340EarlyControl_sigma
  · exact s2Step340EarlyControl_branch

private theorem s2Step340EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step340EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 778 254 253 252 251 789 60 s2Step340EarlyControlLog=some s2Step340EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step340EarlyControlPlan s2Step340EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 778 254 253 252 251 789 60 s2Step340EarlyControl_logged

private def s2Step340EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<784) ∨ (785≤q ∧ q<789) ∨ (790≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step340EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613],768⟩

private def s2Step340EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851],770⟩

private def s2Step340EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100],769⟩

private def s2Step340EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841],771⟩

private def s2Step340FrontBank : WindowBank := ⟨s2Step340EntryFRow,s2Step340EntryGRow,s2Step340EntryFvRow,s2Step340EntryGvRow⟩

private def s2Step340Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 877, 768]

private def s2Step340Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 784, 806, 769]

private def s2Step340Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 800, 770]

private def s2Step340Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 827, 771]

private theorem s2Step340Counter_apart : Disjoint s2Step340HeadFvAfter.live s2Step340CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step340HeadFvAfter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step340Counter_borrowed : s2Step340HeadFvAfter.checkBorrow 4 s2Step340CounterWork=some s2Step340CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step340HeadFvAfter s2Step340CounterDuring s2Step340CounterWork.toFinset s2Step340Counter_bounded s2Step340Counter_apart rfl

private theorem s2Step340Counter_owned : (778::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step340HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step340HeadFvAfter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step340Counter_checked : compileHmrCounterStepLog s2Step340HeadFvAfter true 778 [772, 773, 774, 775, 776, 777] s2Step340CounterWork=some s2Step340CounterDuring := by
  have owned : ∀q∈778::[772, 773, 774, 775, 776, 777],q∈s2Step340HeadFvAfter.live := fun q hq => s2Step340Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step340Counter_borrowed

private def s2Step340EntryFAfter : Arena := s2Step340EntryFBefore

private theorem s2Step340EntryBank_incomingDistinct : ([s2Step340EntryFRow,s2Step340EntryGRow,s2Step340EntryFvRow,s2Step340EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step340EntryF_Incoming : rowsOwned s2Step340EntryFBefore [s2Step340EntryFRow,s2Step340EntryGRow,s2Step340EntryFvRow,s2Step340EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step340EntryFRow,s2Step340EntryGRow,s2Step340EntryFvRow,s2Step340EntryGvRow] 0 s2Step340EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step340EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<784) ∨ (785≤q ∧ q<789) ∨ (790≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step340EntryBank_outgoingOwned : rowsOwned s2Step340EntryGvAfter [s2Step340EntryFOut,s2Step340EntryGOut,s2Step340EntryFvOut,s2Step340EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step340EntryGvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step340EntryF_Outgoing : rowsOwned s2Step340EntryGvAfter [s2Step340EntryFOut,s2Step340EntryGOut,s2Step340EntryFvOut,s2Step340EntryGvOut] :=
  hmrRows_owned_drop s2Step340EntryGvAfter [s2Step340EntryFOut,s2Step340EntryGOut,s2Step340EntryFvOut,s2Step340EntryGvOut] 0 s2Step340EntryBank_outgoingOwned

private theorem s2Step340EntryF_distinct : (s2Step340EntryFRow.sign::s2Step340EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step340EntryF_owned : (s2Step340EntryFRow.sign::s2Step340EntryFRow.payload).toFinset⊆s2Step340EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step340EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<784) ∨ (785≤q ∧ q<789) ∨ (790≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step340EntryF_reserved : s2Step340EntryFBefore.reserve s2Step340EntryFFresh.toFinset=some s2Step340EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step340EntryFFresh,arenaWires]
  · norm_num [s2Step340EntryFBefore,s2Step340EntryFFresh,arenaWires]
  · simp only [s2Step340EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step340EntryF_checked : planRowResizeLog s2Step340EntryFBefore s2Step340EntryFRow 102 s2Step340EntryFFresh=
    some (s2Step340EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613],768⟩,growRow 768 s2Step340EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step340EntryFBefore s2Step340EntryFAfter s2Step340EntryFRow 102 s2Step340EntryFFresh
    s2Step340EntryF_distinct s2Step340EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step340EntryF_reserved
  have rowEq : WindowRow.mk (s2Step340EntryFRow.payload++s2Step340EntryFFresh) s2Step340EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step340EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<789) ∨ (790≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step340EntryFvAfter : Arena := s2Step340EntryGAfter

private def s2Step340EntryFvBefore : Arena := s2Step340EntryGAfter

private theorem s2Step340EntryFv_Incoming : rowsOwned s2Step340EntryFvBefore [s2Step340EntryFvRow,s2Step340EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step340EntryFRow,s2Step340EntryGRow,s2Step340EntryFvRow,s2Step340EntryGvRow] 2 s2Step340EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step340EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<789) ∨ (790≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step340EntryFv_Outgoing : rowsOwned s2Step340EntryGvAfter [s2Step340EntryFvOut,s2Step340EntryGvOut] :=
  hmrRows_owned_drop s2Step340EntryGvAfter [s2Step340EntryFOut,s2Step340EntryGOut,s2Step340EntryFvOut,s2Step340EntryGvOut] 2 s2Step340EntryBank_outgoingOwned

private theorem s2Step340EntryFv_distinct : (s2Step340EntryFvRow.sign::s2Step340EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step340EntryFv_owned : (s2Step340EntryFvRow.sign::s2Step340EntryFvRow.payload).toFinset⊆s2Step340EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step340EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<789) ∨ (790≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step340EntryFv_reserved : s2Step340EntryFvBefore.reserve s2Step340EntryFvFresh.toFinset=some s2Step340EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step340EntryFvFresh,arenaWires]
  · norm_num [s2Step340EntryFvBefore,s2Step340EntryGAfter,s2Step340EntryFvFresh,arenaWires]
  · simp only [s2Step340EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step340EntryFv_checked : planRowResizeLog s2Step340EntryFvBefore s2Step340EntryFvRow 186 s2Step340EntryFvFresh=
    some (s2Step340EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851],770⟩,growRow 770 s2Step340EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step340EntryFvBefore s2Step340EntryFvAfter s2Step340EntryFvRow 186 s2Step340EntryFvFresh
    s2Step340EntryFv_distinct s2Step340EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step340EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step340EntryFvRow.payload++s2Step340EntryFvFresh) s2Step340EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step340EntryGBefore : Arena := s2Step340EntryFBefore

private theorem s2Step340EntryG_Incoming : rowsOwned s2Step340EntryGBefore [s2Step340EntryGRow,s2Step340EntryFvRow,s2Step340EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step340EntryFRow,s2Step340EntryGRow,s2Step340EntryFvRow,s2Step340EntryGvRow] 1 s2Step340EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step340EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<784) ∨ (785≤q ∧ q<789) ∨ (790≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step340EntryG_Outgoing : rowsOwned s2Step340EntryGvAfter [s2Step340EntryGOut,s2Step340EntryFvOut,s2Step340EntryGvOut] :=
  hmrRows_owned_drop s2Step340EntryGvAfter [s2Step340EntryFOut,s2Step340EntryGOut,s2Step340EntryFvOut,s2Step340EntryGvOut] 1 s2Step340EntryBank_outgoingOwned

private theorem s2Step340EntryG_distinct : (s2Step340EntryGRow.sign::s2Step340EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step340EntryG_owned : (s2Step340EntryGRow.sign::s2Step340EntryGRow.payload).toFinset⊆s2Step340EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step340EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<784) ∨ (785≤q ∧ q<789) ∨ (790≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step340EntryG_reserved : s2Step340EntryGBefore.reserve s2Step340EntryGFresh.toFinset=some s2Step340EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step340EntryGFresh,arenaWires]
  · norm_num [s2Step340EntryGBefore,s2Step340EntryFBefore,s2Step340EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step340EntryGAfter,s2Step340EntryGBefore,s2Step340EntryFBefore,s2Step340EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step340EntryG_checked : planRowResizeLog s2Step340EntryGBefore s2Step340EntryGRow 102 s2Step340EntryGFresh=
    some (s2Step340EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 784],769⟩,growRow 769 s2Step340EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step340EntryGBefore s2Step340EntryGAfter s2Step340EntryGRow 102 s2Step340EntryGFresh
    s2Step340EntryG_distinct s2Step340EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step340EntryG_reserved
  have rowEq : WindowRow.mk (s2Step340EntryGRow.payload++s2Step340EntryGFresh) s2Step340EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 784],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step340EntryGvBefore : Arena := s2Step340EntryGAfter

private theorem s2Step340EntryGv_Incoming : rowsOwned s2Step340EntryGvBefore [s2Step340EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step340EntryFRow,s2Step340EntryGRow,s2Step340EntryFvRow,s2Step340EntryGvRow] 3 s2Step340EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step340EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<789) ∨ (790≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step340EntryGv_Outgoing : rowsOwned s2Step340EntryGvAfter [s2Step340EntryGvOut] :=
  hmrRows_owned_drop s2Step340EntryGvAfter [s2Step340EntryFOut,s2Step340EntryGOut,s2Step340EntryFvOut,s2Step340EntryGvOut] 3 s2Step340EntryBank_outgoingOwned

private theorem s2Step340EntryGv_distinct : (s2Step340EntryGvRow.sign::s2Step340EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step340EntryGv_owned : (s2Step340EntryGvRow.sign::s2Step340EntryGvRow.payload).toFinset⊆s2Step340EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step340EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<789) ∨ (790≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step340EntryGv_reserved : s2Step340EntryGvBefore.reserve s2Step340EntryGvFresh.toFinset=some s2Step340EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step340EntryGvFresh,arenaWires]
  · norm_num [s2Step340EntryGvBefore,s2Step340EntryGAfter,s2Step340EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step340EntryGvAfter,s2Step340EntryGvBefore,s2Step340EntryGAfter,s2Step340EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step340EntryGv_checked : planRowResizeLog s2Step340EntryGvBefore s2Step340EntryGvRow 186 s2Step340EntryGvFresh=
    some (s2Step340EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794],771⟩,growRow 771 s2Step340EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step340EntryGvBefore s2Step340EntryGvAfter s2Step340EntryGvRow 186 s2Step340EntryGvFresh
    s2Step340EntryGv_distinct s2Step340EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step340EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step340EntryGvRow.payload++s2Step340EntryGvFresh) s2Step340EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step340EntryBank_rows : planWindowRowsLog s2Step340EntryFBefore [(s2Step340EntryFRow,102),(s2Step340EntryGRow,102),(s2Step340EntryFvRow,186),(s2Step340EntryGvRow,186)] [s2Step340EntryFFresh,s2Step340EntryGFresh,s2Step340EntryFvFresh,s2Step340EntryGvFresh]=
    some (s2Step340EntryGvAfter,[s2Step340EntryFOut,s2Step340EntryGOut,s2Step340EntryFvOut,s2Step340EntryGvOut],(growRow 768 s2Step340EntryFFresh ++ (growRow 769 s2Step340EntryGFresh ++ (growRow 770 s2Step340EntryFvFresh ++ (growRow 771 s2Step340EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step340EntryGvAfter [] []=some (s2Step340EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step340EntryGvBefore s2Step340EntryGvAfter s2Step340EntryGvAfter
    s2Step340EntryGvRow s2Step340EntryGvOut 186 s2Step340EntryGvFresh [] [] []
    (growRow 771 s2Step340EntryGvFresh) ([]) s2Step340EntryGv_Incoming s2Step340EntryGv_checked h4 s2Step340EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step340EntryFvBefore s2Step340EntryFvAfter s2Step340EntryGvAfter
    s2Step340EntryFvRow s2Step340EntryFvOut 186 s2Step340EntryFvFresh [(s2Step340EntryGvRow,186)] [s2Step340EntryGvFresh] [s2Step340EntryGvOut]
    (growRow 770 s2Step340EntryFvFresh) ((growRow 771 s2Step340EntryGvFresh ++ [])) s2Step340EntryFv_Incoming s2Step340EntryFv_checked h3 s2Step340EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step340EntryGBefore s2Step340EntryGAfter s2Step340EntryGvAfter
    s2Step340EntryGRow s2Step340EntryGOut 102 s2Step340EntryGFresh [(s2Step340EntryFvRow,186),(s2Step340EntryGvRow,186)] [s2Step340EntryFvFresh,s2Step340EntryGvFresh] [s2Step340EntryFvOut,s2Step340EntryGvOut]
    (growRow 769 s2Step340EntryGFresh) ((growRow 770 s2Step340EntryFvFresh ++ (growRow 771 s2Step340EntryGvFresh ++ []))) s2Step340EntryG_Incoming s2Step340EntryG_checked h2 s2Step340EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step340EntryFBefore s2Step340EntryFAfter s2Step340EntryGvAfter
    s2Step340EntryFRow s2Step340EntryFOut 102 s2Step340EntryFFresh [(s2Step340EntryGRow,102),(s2Step340EntryFvRow,186),(s2Step340EntryGvRow,186)] [s2Step340EntryGFresh,s2Step340EntryFvFresh,s2Step340EntryGvFresh] [s2Step340EntryGOut,s2Step340EntryFvOut,s2Step340EntryGvOut]
    (growRow 768 s2Step340EntryFFresh) ((growRow 769 s2Step340EntryGFresh ++ (growRow 770 s2Step340EntryFvFresh ++ (growRow 771 s2Step340EntryGvFresh ++ [])))) s2Step340EntryF_Incoming s2Step340EntryF_checked h1 s2Step340EntryF_Outgoing
  exact h0

private theorem s2Step340EntryBank_checked : compileHmrBankResizeLog .entry s2Step340EntryFBefore ⟨s2Step340EntryFRow,s2Step340EntryGRow,s2Step340EntryFvRow,s2Step340EntryGvRow⟩ ⟨102,102,186,186⟩ [s2Step340EntryFFresh,s2Step340EntryGFresh,s2Step340EntryFvFresh,s2Step340EntryGvFresh]=
    some (s2Step340EntryGvAfter,⟨s2Step340EntryFOut,s2Step340EntryGOut,s2Step340EntryFvOut,s2Step340EntryGvOut⟩,(growRow 768 s2Step340EntryFFresh ++ (growRow 769 s2Step340EntryGFresh ++ (growRow 770 s2Step340EntryFvFresh ++ (growRow 771 s2Step340EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step340EntryBank_rows]
  rfl

private def s2Step340ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<100) ∨ (101≤q ∧ q<784) ∨ (785≤q ∧ q<806) ∨ (807≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step340ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<100) ∨ (101≤q ∧ q<784) ∨ (785≤q ∧ q<806) ∨ (807≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step340ExitFBefore : Arena := s2Step340ExitGAfter

private def s2Step340ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 877],768⟩

private def s2Step340ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 800],770⟩

private def s2Step340ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 784, 806],769⟩

private def s2Step340ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 827],771⟩

private theorem s2Step340ExitBank_incomingDistinct : ([s2Step340ExitGRow,s2Step340ExitFRow,s2Step340ExitFvRow,s2Step340ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step340ExitF_Incoming : rowsOwned s2Step340ExitFBefore [s2Step340ExitFRow,s2Step340ExitFvRow,s2Step340ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step340ExitGRow,s2Step340ExitFRow,s2Step340ExitFvRow,s2Step340ExitGvRow] 1 s2Step340ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step340ExitFBefore (fun q => (0≤q ∧ q<100) ∨ (101≤q ∧ q<784) ∨ (785≤q ∧ q<806) ∨ (807≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step340ExitBank_outgoingOwned : rowsOwned s2Step340ExitGvAfter [s2Step340ExitGOut,s2Step340ExitFOut,s2Step340ExitFvOut,s2Step340ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step340ExitGvAfter (fun q => (0≤q ∧ q<100) ∨ (101≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step340ExitF_Outgoing : rowsOwned s2Step340ExitGvAfter [s2Step340ExitFOut,s2Step340ExitFvOut,s2Step340ExitGvOut] :=
  hmrRows_owned_drop s2Step340ExitGvAfter [s2Step340ExitGOut,s2Step340ExitFOut,s2Step340ExitFvOut,s2Step340ExitGvOut] 1 s2Step340ExitBank_outgoingOwned

private theorem s2Step340ExitF_distinct : (s2Step340ExitFRow.sign::s2Step340ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step340ExitF_owned : (s2Step340ExitFRow.sign::s2Step340ExitFRow.payload).toFinset⊆s2Step340ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step340ExitFBefore (fun q => (0≤q ∧ q<100) ∨ (101≤q ∧ q<784) ∨ (785≤q ∧ q<806) ∨ (807≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step340ExitF_retired : s2Step340ExitFBefore.retireSet s2Step340ExitFExtra.toFinset=s2Step340ExitFAfter := by
  unfold Arena.retireSet s2Step340ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step340ExitFBefore,s2Step340ExitGAfter,s2Step340ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step340ExitF_checked : planRowResizeLog s2Step340ExitFBefore s2Step340ExitFRow 102 []=
    some (s2Step340ExitFAfter,s2Step340ExitFOut,shrinkRow 768 s2Step340ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step340ExitFBefore s2Step340ExitFRow 102 s2Step340ExitF_distinct s2Step340ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step340ExitFRow.payload.take 102) s2Step340ExitFRow.sign=s2Step340ExitFOut := by decide +kernel
  have hi : s2Step340ExitFRow.payload.drop 102=s2Step340ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step340ExitF_retired] at result
  exact result

private def s2Step340ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<100) ∨ (101≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step340ExitFvBefore : Arena := s2Step340ExitFAfter

private theorem s2Step340ExitFv_Incoming : rowsOwned s2Step340ExitFvBefore [s2Step340ExitFvRow,s2Step340ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step340ExitGRow,s2Step340ExitFRow,s2Step340ExitFvRow,s2Step340ExitGvRow] 2 s2Step340ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step340ExitFvBefore (fun q => (0≤q ∧ q<100) ∨ (101≤q ∧ q<784) ∨ (785≤q ∧ q<806) ∨ (807≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step340ExitFv_Outgoing : rowsOwned s2Step340ExitGvAfter [s2Step340ExitFvOut,s2Step340ExitGvOut] :=
  hmrRows_owned_drop s2Step340ExitGvAfter [s2Step340ExitGOut,s2Step340ExitFOut,s2Step340ExitFvOut,s2Step340ExitGvOut] 2 s2Step340ExitBank_outgoingOwned

private theorem s2Step340ExitFv_distinct : (s2Step340ExitFvRow.sign::s2Step340ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step340ExitFv_owned : (s2Step340ExitFvRow.sign::s2Step340ExitFvRow.payload).toFinset⊆s2Step340ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step340ExitFvBefore (fun q => (0≤q ∧ q<100) ∨ (101≤q ∧ q<784) ∨ (785≤q ∧ q<806) ∨ (807≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step340ExitFv_retired : s2Step340ExitFvBefore.retireSet s2Step340ExitFvExtra.toFinset=s2Step340ExitFvAfter := by
  unfold Arena.retireSet s2Step340ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step340ExitFvBefore,s2Step340ExitFAfter,s2Step340ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step340ExitFv_checked : planRowResizeLog s2Step340ExitFvBefore s2Step340ExitFvRow 186 []=
    some (s2Step340ExitFvAfter,s2Step340ExitFvOut,shrinkRow 770 s2Step340ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step340ExitFvBefore s2Step340ExitFvRow 186 s2Step340ExitFv_distinct s2Step340ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step340ExitFvRow.payload.take 186) s2Step340ExitFvRow.sign=s2Step340ExitFvOut := by decide +kernel
  have hi : s2Step340ExitFvRow.payload.drop 186=s2Step340ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step340ExitFv_retired] at result
  exact result

private def s2Step340ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private theorem s2Step340ExitG_Incoming : rowsOwned s2Step340ExitGBefore [s2Step340ExitGRow,s2Step340ExitFRow,s2Step340ExitFvRow,s2Step340ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step340ExitGRow,s2Step340ExitFRow,s2Step340ExitFvRow,s2Step340ExitGvRow] 0 s2Step340ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step340ExitGBefore (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step340ExitG_Outgoing : rowsOwned s2Step340ExitGvAfter [s2Step340ExitGOut,s2Step340ExitFOut,s2Step340ExitFvOut,s2Step340ExitGvOut] :=
  hmrRows_owned_drop s2Step340ExitGvAfter [s2Step340ExitGOut,s2Step340ExitFOut,s2Step340ExitFvOut,s2Step340ExitGvOut] 0 s2Step340ExitBank_outgoingOwned

private theorem s2Step340ExitG_distinct : (s2Step340ExitGRow.sign::s2Step340ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step340ExitG_owned : (s2Step340ExitGRow.sign::s2Step340ExitGRow.payload).toFinset⊆s2Step340ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step340ExitGBefore (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step340ExitG_retired : s2Step340ExitGBefore.retireSet s2Step340ExitGExtra.toFinset=s2Step340ExitGAfter := by
  unfold Arena.retireSet s2Step340ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step340ExitGBefore,s2Step340ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step340ExitG_checked : planRowResizeLog s2Step340ExitGBefore s2Step340ExitGRow 100 []=
    some (s2Step340ExitGAfter,s2Step340ExitGOut,shrinkRow 769 s2Step340ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step340ExitGBefore s2Step340ExitGRow 100 s2Step340ExitG_distinct s2Step340ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step340ExitGRow.payload.take 100) s2Step340ExitGRow.sign=s2Step340ExitGOut := by decide +kernel
  have hi : s2Step340ExitGRow.payload.drop 100=s2Step340ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step340ExitG_retired] at result
  exact result

private def s2Step340ExitGvBefore : Arena := s2Step340ExitFvAfter

private theorem s2Step340ExitGv_Incoming : rowsOwned s2Step340ExitGvBefore [s2Step340ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step340ExitGRow,s2Step340ExitFRow,s2Step340ExitFvRow,s2Step340ExitGvRow] 3 s2Step340ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step340ExitGvBefore (fun q => (0≤q ∧ q<100) ∨ (101≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step340ExitGv_Outgoing : rowsOwned s2Step340ExitGvAfter [s2Step340ExitGvOut] :=
  hmrRows_owned_drop s2Step340ExitGvAfter [s2Step340ExitGOut,s2Step340ExitFOut,s2Step340ExitFvOut,s2Step340ExitGvOut] 3 s2Step340ExitBank_outgoingOwned

private theorem s2Step340ExitGv_distinct : (s2Step340ExitGvRow.sign::s2Step340ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step340ExitGv_owned : (s2Step340ExitGvRow.sign::s2Step340ExitGvRow.payload).toFinset⊆s2Step340ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step340ExitGvBefore (fun q => (0≤q ∧ q<100) ∨ (101≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step340ExitGv_retired : s2Step340ExitGvBefore.retireSet s2Step340ExitGvExtra.toFinset=s2Step340ExitGvAfter := by
  unfold Arena.retireSet s2Step340ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step340ExitGvBefore,s2Step340ExitFvAfter,s2Step340ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step340ExitGv_checked : planRowResizeLog s2Step340ExitGvBefore s2Step340ExitGvRow 186 []=
    some (s2Step340ExitGvAfter,s2Step340ExitGvOut,shrinkRow 771 s2Step340ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step340ExitGvBefore s2Step340ExitGvRow 186 s2Step340ExitGv_distinct s2Step340ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step340ExitGvRow.payload.take 186) s2Step340ExitGvRow.sign=s2Step340ExitGvOut := by decide +kernel
  have hi : s2Step340ExitGvRow.payload.drop 186=s2Step340ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step340ExitGv_retired] at result
  exact result

private theorem s2Step340ExitBank_rows : planWindowRowsLog s2Step340ExitGBefore [(s2Step340ExitGRow,100),(s2Step340ExitFRow,102),(s2Step340ExitFvRow,186),(s2Step340ExitGvRow,186)] [[],[],[],[]]=
    some (s2Step340ExitGvAfter,[s2Step340ExitGOut,s2Step340ExitFOut,s2Step340ExitFvOut,s2Step340ExitGvOut],(shrinkRow 769 s2Step340ExitGExtra ++ (shrinkRow 768 s2Step340ExitFExtra ++ (shrinkRow 770 s2Step340ExitFvExtra ++ (shrinkRow 771 s2Step340ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step340ExitGvAfter [] []=some (s2Step340ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step340ExitGvBefore s2Step340ExitGvAfter s2Step340ExitGvAfter
    s2Step340ExitGvRow s2Step340ExitGvOut 186 [] [] [] []
    (shrinkRow 771 s2Step340ExitGvExtra) ([]) s2Step340ExitGv_Incoming s2Step340ExitGv_checked h4 s2Step340ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step340ExitFvBefore s2Step340ExitFvAfter s2Step340ExitGvAfter
    s2Step340ExitFvRow s2Step340ExitFvOut 186 [] [(s2Step340ExitGvRow,186)] [[]] [s2Step340ExitGvOut]
    (shrinkRow 770 s2Step340ExitFvExtra) ((shrinkRow 771 s2Step340ExitGvExtra ++ [])) s2Step340ExitFv_Incoming s2Step340ExitFv_checked h3 s2Step340ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step340ExitFBefore s2Step340ExitFAfter s2Step340ExitGvAfter
    s2Step340ExitFRow s2Step340ExitFOut 102 [] [(s2Step340ExitFvRow,186),(s2Step340ExitGvRow,186)] [[],[]] [s2Step340ExitFvOut,s2Step340ExitGvOut]
    (shrinkRow 768 s2Step340ExitFExtra) ((shrinkRow 770 s2Step340ExitFvExtra ++ (shrinkRow 771 s2Step340ExitGvExtra ++ []))) s2Step340ExitF_Incoming s2Step340ExitF_checked h2 s2Step340ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step340ExitGBefore s2Step340ExitGAfter s2Step340ExitGvAfter
    s2Step340ExitGRow s2Step340ExitGOut 100 [] [(s2Step340ExitFRow,102),(s2Step340ExitFvRow,186),(s2Step340ExitGvRow,186)] [[],[],[]] [s2Step340ExitFOut,s2Step340ExitFvOut,s2Step340ExitGvOut]
    (shrinkRow 769 s2Step340ExitGExtra) ((shrinkRow 768 s2Step340ExitFExtra ++ (shrinkRow 770 s2Step340ExitFvExtra ++ (shrinkRow 771 s2Step340ExitGvExtra ++ [])))) s2Step340ExitG_Incoming s2Step340ExitG_checked h1 s2Step340ExitG_Outgoing
  exact h0

private theorem s2Step340ExitBank_checked : compileHmrBankResizeLog .exit s2Step340ExitGBefore ⟨s2Step340ExitFRow,s2Step340ExitGRow,s2Step340ExitFvRow,s2Step340ExitGvRow⟩ ⟨102,100,186,186⟩ [[],[],[],[]]=
    some (s2Step340ExitGvAfter,⟨s2Step340ExitFOut,s2Step340ExitGOut,s2Step340ExitFvOut,s2Step340ExitGvOut⟩,(shrinkRow 769 s2Step340ExitGExtra ++ (shrinkRow 768 s2Step340ExitFExtra ++ (shrinkRow 770 s2Step340ExitFvExtra ++ (shrinkRow 771 s2Step340ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step340ExitBank_rows]
  rfl

private theorem s2Step340Add0_apart : Disjoint s2Step340Add0Arena.live s2Step340Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step340Add0Arena (fun q => (0≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step340Add0_card : s2Step340Add0Arena.live.card=910 := by
  decide +kernel

private theorem s2Step340Add0_borrowed : s2Step340Add0Arena.checkBorrow (hmrHybridCount s2Step340Add0Arena s2Step340Add0B.length) s2Step340Add0Work=some s2Step340Add0During := by
  have len : s2Step340Add0Work.length=hmrHybridCount s2Step340Add0Arena s2Step340Add0B.length := by
    rw [hmrHybridCount,s2Step340Add0_card]
    decide +kernel
  have nd : s2Step340Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step340Add0Arena s2Step340Add0During s2Step340Add0Work.toFinset s2Step340Add0_bounded s2Step340Add0_apart rfl

private theorem s2Step340Add0_distinct : (894::789::896::(s2Step340Add0A++s2Step340Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step340Add0_owned : (894::789::896::(s2Step340Add0A++s2Step340Add0B)).toFinset⊆s2Step340Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step340Add0Arena (fun q => (0≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step340Add0_checked : compileHmrHybridCinLog s2Step340Add0Arena 789 894 896 s2Step340Add0A s2Step340Add0B s2Step340Add0Work=some s2Step340Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step340Add0Arena s2Step340Add0During 789 894 896 s2Step340Add0A s2Step340Add0B s2Step340Add0Work
    (by decide +kernel) (by decide +kernel) s2Step340Add0_distinct
    (fun q hq => s2Step340Add0_owned (List.mem_toFinset.mpr hq)) s2Step340Add0_borrowed

private theorem s2Step340Add1_apart : Disjoint s2Step340Add1Arena.live s2Step340Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step340Add1Arena (fun q => (0≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step340Add1_card : s2Step340Add1Arena.live.card=910 := by
  decide +kernel

private theorem s2Step340Add1_borrowed : s2Step340Add1Arena.checkBorrow (hmrHybridCount s2Step340Add1Arena s2Step340Add1B.length) s2Step340Add1Work=some s2Step340Add1During := by
  have len : s2Step340Add1Work.length=hmrHybridCount s2Step340Add1Arena s2Step340Add1B.length := by
    rw [hmrHybridCount,s2Step340Add1_card]
    decide +kernel
  have nd : s2Step340Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step340Add1Arena s2Step340Add1During s2Step340Add1Work.toFinset s2Step340Add1_bounded s2Step340Add1_apart rfl

private theorem s2Step340Add1_distinct : (894::789::896::(s2Step340Add1A++s2Step340Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step340Add1_owned : (894::789::896::(s2Step340Add1A++s2Step340Add1B)).toFinset⊆s2Step340Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step340Add1Arena (fun q => (0≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step340Add1_checked : compileHmrHybridCinLog s2Step340Add1Arena 789 894 896 s2Step340Add1A s2Step340Add1B s2Step340Add1Work=some s2Step340Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step340Add1Arena s2Step340Add1During 789 894 896 s2Step340Add1A s2Step340Add1B s2Step340Add1Work
    (by decide +kernel) (by decide +kernel) s2Step340Add1_distinct
    (fun q hq => s2Step340Add1_owned (List.mem_toFinset.mpr hq)) s2Step340Add1_borrowed

private theorem s2Step340F4_apart : Disjoint (s2Step340Add0A++s2Step340Add0B).toFinset (s2Step340Add1A++s2Step340Add1B).toFinset := by
  have nd : ((s2Step340Add0A++s2Step340Add0B)++(s2Step340Add1A++s2Step340Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step340F4_carry : s2Step340F4FlagArena.checkBorrow 1 [896]=some s2Step340Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step340F4FlagArena,s2Step340HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step340F4FlagArena,s2Step340HeadFvAfter,s2Step340Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step340F4_distinct : (778::789::894::896::((s2Step340Add0A++s2Step340Add1A)++(s2Step340Add0B++s2Step340Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step340F4_flag : s2Step340HeadFvAfter.checkBorrow 1 [894]=some s2Step340F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step340HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step340F4_owned : (778::789::((s2Step340Add0A++s2Step340Add1A)++(s2Step340Add0B++s2Step340Add1B))).toFinset⊆s2Step340HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step340HeadFvAfter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step340F4_checked : compileHmrHybridF4Log s2Step340HeadFvAfter 778 789 s2Step340Add0A s2Step340Add0B s2Step340Add1A s2Step340Add1B [894] [896] s2Step340Add0Work s2Step340Add1Work=some s2Step340F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step340HeadFvAfter s2Step340F4FlagArena s2Step340Add0Arena s2Step340Add0During s2Step340Add1During 778 789
    s2Step340Add0A s2Step340Add0B s2Step340Add1A s2Step340Add1B [894] [896] s2Step340Add0Work s2Step340Add1Work
    (fun q hq => s2Step340F4_owned (List.mem_toFinset.mpr hq)) s2Step340F4_flag s2Step340F4_carry
    s2Step340F4_distinct s2Step340F4_apart s2Step340Add0_checked s2Step340Add1_checked

private theorem s2Step340Front_branch : s2Step340FrontSigmaArena.checkBorrow 1 [789]=some s2Step340HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step340FrontSigmaArena,s2Step340EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step340FrontSigmaArena,s2Step340EntryGvAfter,s2Step340HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step340Front_entry : HmrFrontEntryValid s2Step340EntryFBefore s2Step340FrontBank 102 186 ⟨102,100,186,186⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step340FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step340EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step340EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<784) ∨ (785≤q ∧ q<789) ∨ (790≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step340FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step340Front_sigma : s2Step340EntryGvAfter.checkBorrow 1 [778]=some s2Step340FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step340EntryGvAfter,arenaWires]
  · rfl

private def s2Step340HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step340HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step340HeadFBefore : Arena := s2Step340HeadGAfter

private def s2Step340HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613],768⟩

private def s2Step340HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851],770⟩

private def s2Step340HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 784],769⟩

private def s2Step340HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794],771⟩

private theorem s2Step340HeadBank_incomingDistinct : ([s2Step340HeadGRow,s2Step340HeadFRow,s2Step340HeadGvRow,s2Step340HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step340HeadF_Incoming : rowsOwned s2Step340HeadFBefore [s2Step340HeadFRow,s2Step340HeadGvRow,s2Step340HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step340HeadGRow,s2Step340HeadFRow,s2Step340HeadGvRow,s2Step340HeadFvRow] 1 s2Step340HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step340HeadFBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step340HeadBank_outgoingOwned : rowsOwned s2Step340HeadFvAfter [s2Step340HeadGOut,s2Step340HeadFOut,s2Step340HeadGvOut,s2Step340HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step340HeadFvAfter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step340HeadF_Outgoing : rowsOwned s2Step340HeadFvAfter [s2Step340HeadFOut,s2Step340HeadGvOut,s2Step340HeadFvOut] :=
  hmrRows_owned_drop s2Step340HeadFvAfter [s2Step340HeadGOut,s2Step340HeadFOut,s2Step340HeadGvOut,s2Step340HeadFvOut] 1 s2Step340HeadBank_outgoingOwned

private theorem s2Step340HeadF_distinct : (s2Step340HeadFRow.sign::s2Step340HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step340HeadF_owned : (s2Step340HeadFRow.sign::s2Step340HeadFRow.payload).toFinset⊆s2Step340HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step340HeadFBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step340HeadF_reserved : s2Step340HeadFBefore.reserve s2Step340HeadFFresh.toFinset=some s2Step340HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step340HeadFFresh,arenaWires]
  · norm_num [s2Step340HeadFBefore,s2Step340HeadGAfter,s2Step340HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step340HeadFAfter,s2Step340HeadFBefore,s2Step340HeadGAfter,s2Step340HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step340HeadF_checked : planRowResizeLog s2Step340HeadFBefore s2Step340HeadFRow 103 s2Step340HeadFFresh=
    some (s2Step340HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 877],768⟩,growRow 768 s2Step340HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step340HeadFBefore s2Step340HeadFAfter s2Step340HeadFRow 103 s2Step340HeadFFresh
    s2Step340HeadF_distinct s2Step340HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step340HeadF_reserved
  have rowEq : WindowRow.mk (s2Step340HeadFRow.payload++s2Step340HeadFFresh) s2Step340HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 877],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step340HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step340HeadFvBefore : Arena := s2Step340HeadGvAfter

private theorem s2Step340HeadFv_Incoming : rowsOwned s2Step340HeadFvBefore [s2Step340HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step340HeadGRow,s2Step340HeadFRow,s2Step340HeadGvRow,s2Step340HeadFvRow] 3 s2Step340HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step340HeadFvBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step340HeadFv_Outgoing : rowsOwned s2Step340HeadFvAfter [s2Step340HeadFvOut] :=
  hmrRows_owned_drop s2Step340HeadFvAfter [s2Step340HeadGOut,s2Step340HeadFOut,s2Step340HeadGvOut,s2Step340HeadFvOut] 3 s2Step340HeadBank_outgoingOwned

private theorem s2Step340HeadFv_distinct : (s2Step340HeadFvRow.sign::s2Step340HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step340HeadFv_owned : (s2Step340HeadFvRow.sign::s2Step340HeadFvRow.payload).toFinset⊆s2Step340HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step340HeadFvBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step340HeadFv_reserved : s2Step340HeadFvBefore.reserve s2Step340HeadFvFresh.toFinset=some s2Step340HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step340HeadFvFresh,arenaWires]
  · norm_num [s2Step340HeadFvBefore,s2Step340HeadGvAfter,s2Step340HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step340HeadFvAfter,s2Step340HeadFvBefore,s2Step340HeadGvAfter,s2Step340HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step340HeadFv_checked : planRowResizeLog s2Step340HeadFvBefore s2Step340HeadFvRow 187 s2Step340HeadFvFresh=
    some (s2Step340HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 800],770⟩,growRow 770 s2Step340HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step340HeadFvBefore s2Step340HeadFvAfter s2Step340HeadFvRow 187 s2Step340HeadFvFresh
    s2Step340HeadFv_distinct s2Step340HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step340HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step340HeadFvRow.payload++s2Step340HeadFvFresh) s2Step340HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 800],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step340HeadG_Incoming : rowsOwned s2Step340HeadGBefore [s2Step340HeadGRow,s2Step340HeadFRow,s2Step340HeadGvRow,s2Step340HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step340HeadGRow,s2Step340HeadFRow,s2Step340HeadGvRow,s2Step340HeadFvRow] 0 s2Step340HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step340HeadGBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step340HeadG_Outgoing : rowsOwned s2Step340HeadFvAfter [s2Step340HeadGOut,s2Step340HeadFOut,s2Step340HeadGvOut,s2Step340HeadFvOut] :=
  hmrRows_owned_drop s2Step340HeadFvAfter [s2Step340HeadGOut,s2Step340HeadFOut,s2Step340HeadGvOut,s2Step340HeadFvOut] 0 s2Step340HeadBank_outgoingOwned

private theorem s2Step340HeadG_distinct : (s2Step340HeadGRow.sign::s2Step340HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step340HeadG_owned : (s2Step340HeadGRow.sign::s2Step340HeadGRow.payload).toFinset⊆s2Step340HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step340HeadGBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step340HeadG_reserved : s2Step340HeadGBefore.reserve s2Step340HeadGFresh.toFinset=some s2Step340HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step340HeadGFresh,arenaWires]
  · norm_num [s2Step340HeadGBefore,s2Step340HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step340HeadGAfter,s2Step340HeadGBefore,s2Step340HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step340HeadG_checked : planRowResizeLog s2Step340HeadGBefore s2Step340HeadGRow 103 s2Step340HeadGFresh=
    some (s2Step340HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 784, 806],769⟩,growRow 769 s2Step340HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step340HeadGBefore s2Step340HeadGAfter s2Step340HeadGRow 103 s2Step340HeadGFresh
    s2Step340HeadG_distinct s2Step340HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step340HeadG_reserved
  have rowEq : WindowRow.mk (s2Step340HeadGRow.payload++s2Step340HeadGFresh) s2Step340HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 784, 806],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step340HeadGvBefore : Arena := s2Step340HeadFAfter

private theorem s2Step340HeadGv_Incoming : rowsOwned s2Step340HeadGvBefore [s2Step340HeadGvRow,s2Step340HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step340HeadGRow,s2Step340HeadFRow,s2Step340HeadGvRow,s2Step340HeadFvRow] 2 s2Step340HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step340HeadGvBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step340HeadGv_Outgoing : rowsOwned s2Step340HeadFvAfter [s2Step340HeadGvOut,s2Step340HeadFvOut] :=
  hmrRows_owned_drop s2Step340HeadFvAfter [s2Step340HeadGOut,s2Step340HeadFOut,s2Step340HeadGvOut,s2Step340HeadFvOut] 2 s2Step340HeadBank_outgoingOwned

private theorem s2Step340HeadGv_distinct : (s2Step340HeadGvRow.sign::s2Step340HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step340HeadGv_owned : (s2Step340HeadGvRow.sign::s2Step340HeadGvRow.payload).toFinset⊆s2Step340HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step340HeadGvBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step340HeadGv_reserved : s2Step340HeadGvBefore.reserve s2Step340HeadGvFresh.toFinset=some s2Step340HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step340HeadGvFresh,arenaWires]
  · norm_num [s2Step340HeadGvBefore,s2Step340HeadFAfter,s2Step340HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step340HeadGvAfter,s2Step340HeadGvBefore,s2Step340HeadFAfter,s2Step340HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step340HeadGv_checked : planRowResizeLog s2Step340HeadGvBefore s2Step340HeadGvRow 187 s2Step340HeadGvFresh=
    some (s2Step340HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 827],771⟩,growRow 771 s2Step340HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step340HeadGvBefore s2Step340HeadGvAfter s2Step340HeadGvRow 187 s2Step340HeadGvFresh
    s2Step340HeadGv_distinct s2Step340HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step340HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step340HeadGvRow.payload++s2Step340HeadGvFresh) s2Step340HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 827],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step340HeadBank_rows : planWindowRowsLog s2Step340HeadGBefore [(s2Step340HeadGRow,103),(s2Step340HeadFRow,103),(s2Step340HeadGvRow,187),(s2Step340HeadFvRow,187)] [s2Step340HeadGFresh,s2Step340HeadFFresh,s2Step340HeadGvFresh,s2Step340HeadFvFresh]=
    some (s2Step340HeadFvAfter,[s2Step340HeadGOut,s2Step340HeadFOut,s2Step340HeadGvOut,s2Step340HeadFvOut],(growRow 769 s2Step340HeadGFresh ++ (growRow 768 s2Step340HeadFFresh ++ (growRow 771 s2Step340HeadGvFresh ++ (growRow 770 s2Step340HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step340HeadFvAfter [] []=some (s2Step340HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step340HeadFvBefore s2Step340HeadFvAfter s2Step340HeadFvAfter
    s2Step340HeadFvRow s2Step340HeadFvOut 187 s2Step340HeadFvFresh [] [] []
    (growRow 770 s2Step340HeadFvFresh) ([]) s2Step340HeadFv_Incoming s2Step340HeadFv_checked h4 s2Step340HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step340HeadGvBefore s2Step340HeadGvAfter s2Step340HeadFvAfter
    s2Step340HeadGvRow s2Step340HeadGvOut 187 s2Step340HeadGvFresh [(s2Step340HeadFvRow,187)] [s2Step340HeadFvFresh] [s2Step340HeadFvOut]
    (growRow 771 s2Step340HeadGvFresh) ((growRow 770 s2Step340HeadFvFresh ++ [])) s2Step340HeadGv_Incoming s2Step340HeadGv_checked h3 s2Step340HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step340HeadFBefore s2Step340HeadFAfter s2Step340HeadFvAfter
    s2Step340HeadFRow s2Step340HeadFOut 103 s2Step340HeadFFresh [(s2Step340HeadGvRow,187),(s2Step340HeadFvRow,187)] [s2Step340HeadGvFresh,s2Step340HeadFvFresh] [s2Step340HeadGvOut,s2Step340HeadFvOut]
    (growRow 768 s2Step340HeadFFresh) ((growRow 771 s2Step340HeadGvFresh ++ (growRow 770 s2Step340HeadFvFresh ++ []))) s2Step340HeadF_Incoming s2Step340HeadF_checked h2 s2Step340HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step340HeadGBefore s2Step340HeadGAfter s2Step340HeadFvAfter
    s2Step340HeadGRow s2Step340HeadGOut 103 s2Step340HeadGFresh [(s2Step340HeadFRow,103),(s2Step340HeadGvRow,187),(s2Step340HeadFvRow,187)] [s2Step340HeadFFresh,s2Step340HeadGvFresh,s2Step340HeadFvFresh] [s2Step340HeadFOut,s2Step340HeadGvOut,s2Step340HeadFvOut]
    (growRow 769 s2Step340HeadGFresh) ((growRow 768 s2Step340HeadFFresh ++ (growRow 771 s2Step340HeadGvFresh ++ (growRow 770 s2Step340HeadFvFresh ++ [])))) s2Step340HeadG_Incoming s2Step340HeadG_checked h1 s2Step340HeadG_Outgoing
  exact h0

private theorem s2Step340HeadBank_checked : compileHmrBankResizeLog .headroom s2Step340HeadGBefore ⟨s2Step340HeadFRow,s2Step340HeadGRow,s2Step340HeadFvRow,s2Step340HeadGvRow⟩ ⟨103,103,187,187⟩ [s2Step340HeadGFresh,s2Step340HeadFFresh,s2Step340HeadGvFresh,s2Step340HeadFvFresh]=
    some (s2Step340HeadFvAfter,⟨s2Step340HeadFOut,s2Step340HeadGOut,s2Step340HeadFvOut,s2Step340HeadGvOut⟩,(growRow 769 s2Step340HeadGFresh ++ (growRow 768 s2Step340HeadFFresh ++ (growRow 771 s2Step340HeadGvFresh ++ (growRow 770 s2Step340HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step340HeadBank_rows]
  rfl

private theorem s2Step340Front_checked : compileHmrSourceFrontLog s2Step340EntryFBefore s2Step340FrontBank 102 186 ⟨102,100,186,186⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step340FrontLog=some s2Step340FrontPlan := by
  have pairEq : s2Step340FrontPair=⟨s2Step340HeadFRow,s2Step340HeadGRow,s2Step340HeadFvRow,s2Step340HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step340FrontHead=⟨s2Step340ExitFRow,s2Step340ExitGRow,s2Step340ExitFvRow,s2Step340ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step340Add0A=s2Step340FrontHead.f.wires := by decide +kernel
  have gEq : s2Step340Add0B=s2Step340FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step340Add1A=s2Step340FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step340Add1B=s2Step340FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step340EntryFBefore s2Step340FrontBank 102 186 ⟨102,100,186,186⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step340FrontLog s2Step340FrontPlan
  · exact s2Step340Front_entry
  · exact s2Step340EntryBank_checked
  · exact s2Step340Front_sigma
  · rfl
  · exact s2Step340Front_branch
  · rfl
  · simpa only [s2Step340FrontPlan,pairEq] using s2Step340HeadBank_checked
  · simpa only [s2Step340FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step340F4_checked
  · exact s2Step340Counter_checked
  · rfl
  · simpa only [s2Step340FrontPlan,headEq] using s2Step340ExitBank_checked

private theorem s2Step340Complete_explicit_checked : compileHmrEarlyStepLog s2Step340EntryFBefore s2Step340FrontBank 102 186 ⟨102,100,186,186⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step340CompleteLog=some s2Step340CompletePlan := by
  let Q := s2Step340EarlyControlPlan
  have hq := s2Step340EarlyControl_plan_checked
  have fv1 : s2Step340CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step340CompleteOut.fv.payload[2]?.getD s2Step340CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step340CompleteOut.fv.payload[3]?.getD s2Step340CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step340CompleteOut.fv.payload[4]?.getD s2Step340CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step340EntryFBefore s2Step340EarlyControlArena s2Step340FrontBank 102 186 ⟨102,100,186,186⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step340CompleteLog s2Step340FrontPlan Q
    s2Step340Front_checked s2Step340Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step340Complete_owned s2Step340Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step340EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 778 s2Step340CompleteOut.fv.second (s2Step340CompleteOut.fv.payload[2]?.getD s2Step340CompleteOut.fv.sign) (s2Step340CompleteOut.fv.payload[3]?.getD s2Step340CompleteOut.fv.sign) (s2Step340CompleteOut.fv.payload[4]?.getD s2Step340CompleteOut.fv.sign) 789 60 s2Step340EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep340Arena : Arena := s2Step340EntryFBefore
def s2PrivateStep340Bank : WindowBank := s2Step340FrontBank
def s2PrivateStep340Spec : HmrSourceWalkStepLog := ⟨102,186,⟨102,100,186,186⟩,60,.early s2Step340CompleteLog⟩
def s2PrivateStep340Plan : HmrSourceStepPlan := .early s2Step340CompletePlan
theorem s2PrivateStep340_source : s2PrivateStep340Spec=s2ObservedLogs336[4] := rfl
theorem s2PrivateStep340_checked : compileHmrSourceStepLog s2PrivateStep340Arena s2PrivateStep340Bank
    s2PrivateStep340Spec.fgWidth s2PrivateStep340Spec.vWidth s2PrivateStep340Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]
    6 498 340 s2PrivateStep340Spec.need none s2PrivateStep340Spec.log=some s2PrivateStep340Plan := by
  change compileHmrSourceStepLog s2Step340EntryFBefore s2Step340FrontBank 102 186 ⟨102,100,186,186⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 6 498 340 60 none (.early s2Step340CompleteLog)=some (.early s2Step340CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 340<498)]
  rw [s2Step340Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
