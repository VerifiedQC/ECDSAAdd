import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep332
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

private def s2Step334CompleteMoves : List (Wire × Wire) := []

private def s2Step334EarlyControlLog : HmrEarlyControlLog := ⟨[786, 877, 827, 794, 822],[779],[784],[800, 894, 896, 901, 903, 907],[]⟩

private def s2Step334FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [822], [], [786]],[[779], [794], [877], [827]],[[], [], [], []]⟩,[816],[806],[784],[800],[894, 896, 901, 903, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[894, 896, 901, 903, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[784, 800, 894, 896]⟩

private def s2Step334CompleteLog : HmrEarlyStepLog := ⟨s2Step334FrontLog,s2Step334CompleteMoves,s2Step334EarlyControlLog⟩

private def s2Step334ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615],768⟩

private def s2Step334ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829],770⟩

private def s2Step334ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102],769⟩

private def s2Step334ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834],771⟩

private def s2Step334FrontOut : WindowBank := ⟨s2Step334ExitFOut,s2Step334ExitGOut,s2Step334ExitFvOut,s2Step334ExitGvOut⟩

private def s2Step334CompleteOut : WindowBank := s2Step334FrontOut.repacked s2Step334CompleteMoves

private def s2Step334EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step334EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step334EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step334EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step334EarlyControlPositiveArena,[779],s2Step334EarlyControlEqualityArena,[784],⟨⟨816,false⟩,[⟨⟨779,false⟩,784⟩]⟩⟩

private def s2Step334EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step334EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step334EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step334EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step334EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step334EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step334EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,786⟩,⟨⟨774,false⟩,877⟩,⟨⟨775,false⟩,827⟩,⟨⟨776,false⟩,794⟩,⟨⟨777,false⟩,822⟩]⟩

private def s2Step334EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step334EarlyControlZeroArena,s2Step334EarlyControlZeroPlan,s2Step334EarlyControlClassPlan,s2Step334EarlyControlFlagArena,s2Step334EarlyControlFittedArena,s2Step334EarlyControlHistoryArena,s2Step334EarlyControlSigmaArena,s2Step334EarlyControlOutputArena,s2Step334EarlyControlLog⟩

private def s2Step334CounterWork : List Wire := [784, 800, 894, 896]

private theorem s2Step334Counter_bounded : s2Step334CounterWork.toFinset⊆arenaWires := by norm_num [s2Step334CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step334HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step334CounterDuring : Arena := ⟨s2Step334HeadFvAfter.live∪s2Step334CounterWork.toFinset,Finset.union_subset s2Step334HeadFvAfter.bounded s2Step334Counter_bounded⟩

private def s2Step334EntryFFresh : List Wire := []

private def s2Step334EntryFvFresh : List Wire := []

private def s2Step334EntryGFresh : List Wire := [822]

private def s2Step334EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<816) ∨ (817≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step334EntryGvFresh : List Wire := [786]

private def s2Step334ExitFExtra : List Wire := [794]

private def s2Step334ExitFvExtra : List Wire := [827]

private def s2Step334ExitGExtra : List Wire := [822, 779]

private def s2Step334ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step334ExitGvExtra : List Wire := [786, 877]

private def s2Step334Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step334Add0Work : List Wire := [894, 896, 901, 903, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step334Add0_bounded : s2Step334Add0Work.toFinset⊆arenaWires := by
  have h : s2Step334Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step334Add0During : Arena := ⟨s2Step334Add0Arena.live∪s2Step334Add0Work.toFinset,Finset.union_subset s2Step334Add0Arena.bounded s2Step334Add0_bounded⟩

private def s2Step334Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step334Add1Work : List Wire := [894, 896, 901, 903, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step334Add1_bounded : s2Step334Add1Work.toFinset⊆arenaWires := by
  have h : s2Step334Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step334Add1During : Arena := ⟨s2Step334Add1Arena.live∪s2Step334Add1Work.toFinset,Finset.union_subset s2Step334Add1Arena.bounded s2Step334Add1_bounded⟩

private def s2Step334F4FlagArena : Arena := ⟨s2Step334HeadFvAfter.live∪{784},Finset.union_subset s2Step334HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step334F4Plan : HmrHybridF4Plan := ⟨s2Step334F4FlagArena,[784],s2Step334Add0Arena,[800],s2Step334Add0During,s2Step334Add0Work,s2Step334Add1During,s2Step334Add1Work⟩

private def s2Step334HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 794],768⟩

private def s2Step334HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 827],770⟩

private def s2Step334HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 822, 779],769⟩

private def s2Step334HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 786, 877],771⟩

private def s2Step334FrontHead : WindowBank := ⟨s2Step334HeadFOut,s2Step334HeadGOut,s2Step334HeadFvOut,s2Step334HeadGvOut⟩

private def s2Step334EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615],768⟩

private def s2Step334EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829],770⟩

private def s2Step334EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 822],769⟩

private def s2Step334EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 786],771⟩

private def s2Step334FrontPair : WindowBank := ⟨s2Step334EntryFOut,s2Step334EntryGOut,s2Step334EntryFvOut,s2Step334EntryGvOut⟩

private def s2Step334FrontSigmaArena : Arena := ⟨s2Step334EntryGvAfter.live∪{816},Finset.union_subset s2Step334EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step334HeadFFresh : List Wire := [794]

private def s2Step334HeadFvFresh : List Wire := [827]

private def s2Step334HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step334HeadGFresh : List Wire := [779]

private def s2Step334HeadGvFresh : List Wire := [877]

private def s2Step334FrontPlan : HmrSourceFront := ⟨s2Step334EntryGvAfter,s2Step334FrontPair,(growRow 768 s2Step334EntryFFresh ++ (growRow 769 s2Step334EntryGFresh ++ (growRow 770 s2Step334EntryFvFresh ++ (growRow 771 s2Step334EntryGvFresh ++ [])))),s2Step334FrontSigmaArena,[816],s2Step334HeadGBefore,[806],
  s2Step334HeadFvAfter,s2Step334FrontHead,(growRow 769 s2Step334HeadGFresh ++ (growRow 768 s2Step334HeadFFresh ++ (growRow 771 s2Step334HeadGvFresh ++ (growRow 770 s2Step334HeadFvFresh ++ [])))),s2Step334F4Plan,s2Step334CounterDuring,s2Step334CounterWork,s2Step334ExitGvAfter,s2Step334FrontOut,(shrinkRow 769 s2Step334ExitGExtra ++ (shrinkRow 768 s2Step334ExitFExtra ++ (shrinkRow 770 s2Step334ExitFvExtra ++ (shrinkRow 771 s2Step334ExitGvExtra ++ []))))⟩

private def s2Step334CompletePlan : HmrEarlyStepPlan := ⟨s2Step334FrontPlan,s2Step334EarlyControlArena,s2Step334EarlyControlPlan,s2Step334CompleteMoves⟩

private theorem s2Step334Complete_apart : List.Disjoint (s2Step334CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [816, 806, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] := by
  have nd : ((s2Step334CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[816, 806, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step334Complete_owned : (s2Step334CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step334EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step334EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step334Complete_repack : s2Step334ExitGvAfter.checkRepack s2Step334CompleteMoves=some s2Step334EarlyControlArena := by rfl

private theorem s2Step334EarlyControl_branchOwned : ([806] : List Wire).toFinset⊆s2Step334EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step334EarlyControlSigmaArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step334EarlyControl_branch : compileHmrBranchRetirement s2Step334EarlyControlSigmaArena 806=some s2Step334EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step334EarlyControl_branchOwned
  · ext q
    simp [s2Step334EarlyControlOutputArena,s2Step334EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step334EarlyControl_classEqualityBorrow : s2Step334EarlyControlPositiveArena.checkBorrow (([816, 779] : List Wire).length-1) s2Step334EarlyControlLog.classWork=some s2Step334EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step334EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step334EarlyControlPositiveArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step334EarlyControlEqualityArena,s2Step334EarlyControlPositiveArena,s2Step334EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step334EarlyControl_classEqualityOwned : ([816, 779] : List Wire).toFinset⊆s2Step334EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step334EarlyControlPositiveArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step334EarlyControl_classEquality : compileHmrEqualityLog s2Step334EarlyControlPositiveArena [816, 779] 0 s2Step334EarlyControlLog.classWork=some (s2Step334EarlyControlEqualityArena,s2Step334EarlyControlLog.classWork,s2Step334EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step334EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step334EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step334EarlyControl_classOwned : ([777, 822, 816] : List Wire).toFinset⊆s2Step334EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step334EarlyControlZeroArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step334EarlyControl_positiveBorrow : s2Step334EarlyControlZeroArena.checkBorrow (1) s2Step334EarlyControlLog.positiveWork=some s2Step334EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step334EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step334EarlyControlZeroArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step334EarlyControlPositiveArena,s2Step334EarlyControlZeroArena,s2Step334EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step334EarlyControl_class : compileHmrSourceClassLog s2Step334EarlyControlZeroArena false 777 s2Step334EarlyControlZeroPlan.top 0 816 s2Step334EarlyControlLog.positiveWork s2Step334EarlyControlLog.classWork=some s2Step334EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step334EarlyControlClassPlan s2Step334EarlyControlZeroArena false 777 s2Step334EarlyControlZeroPlan.top 0 816
  constructor
  · decide +kernel
  · exact s2Step334EarlyControl_classOwned
  · exact s2Step334EarlyControl_positiveBorrow
  · exact s2Step334EarlyControl_classEquality

private theorem s2Step334EarlyControl_entryRecordOwned : ([806, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step334EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step334EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step334EarlyControl_entrySigmaOwned : ([816, 254] : List Wire).toFinset⊆s2Step334EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step334EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step334EarlyControl_fitBorrow : s2Step334EarlyControlFlagArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step334EarlyControlLog.recordFresh=some s2Step334EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step334EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step334EarlyControlFlagArena (fun q => (0≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step334EarlyControlFittedArena,s2Step334EarlyControlFlagArena,s2Step334EarlyControlLog,arenaWires]

private theorem s2Step334EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step334EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step334EarlyControlFlagArena (fun q => (0≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step334EarlyControl_fit : compileHmrRecordGrowLog s2Step334EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step334EarlyControlLog.recordFresh=some s2Step334EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step334EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step334EarlyControl_fitBorrow

private theorem s2Step334EarlyControl_flagsBorrow : s2Step334EarlyControlEqualityArena.checkBorrow (6) s2Step334EarlyControlLog.flagWork=some s2Step334EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step334EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step334EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step334EarlyControlFlagArena,s2Step334EarlyControlEqualityArena,s2Step334EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step334EarlyControl_flagsOwned : ([784, 253, 252, 251] : List Wire).toFinset⊆s2Step334EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step334EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step334EarlyControl_flags : compileHmrFlagsLog s2Step334EarlyControlClassPlan.equalityArena s2Step334EarlyControlClassPlan.equality.top 253 252 251 s2Step334EarlyControlLog.flagWork=some s2Step334EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step334EarlyControl_flagsOwned⟩
  · exact s2Step334EarlyControl_flagsBorrow

private theorem s2Step334EarlyControl_historyBorrow : s2Step334EarlyControlArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step334EarlyControlLog.recordFresh=some s2Step334EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step334EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step334EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step334EarlyControlHistoryArena,s2Step334EarlyControlArena,s2Step334EarlyControlLog,arenaWires]

private theorem s2Step334EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step334EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step334EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step334EarlyControl_history : compileHmrRecordGrowLog s2Step334EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step334EarlyControlLog.recordFresh=some s2Step334EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step334EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step334EarlyControl_historyBorrow

private theorem s2Step334EarlyControl_sigmaOwned : ([254, 816] : List Wire).toFinset⊆s2Step334EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step334EarlyControlHistoryArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step334EarlyControl_sigmaReleaseOwned : ([816] : List Wire).toFinset⊆s2Step334EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step334EarlyControlHistoryArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step334EarlyControl_sigmaRelease : s2Step334EarlyControlHistoryArena.release {816} (fun _ => false)=some s2Step334EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step334EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step334EarlyControlSigmaArena,s2Step334EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step334EarlyControl_sigma : compileHmrSigmaDropLog s2Step334EarlyControlHistoryArena false 0 0 254 816 []=some s2Step334EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step334EarlyControl_sigmaOwned⟩
  · exact s2Step334EarlyControl_sigmaRelease

private theorem s2Step334EarlyControl_zeroBorrow : s2Step334EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step334EarlyControlLog.zeroWork=some s2Step334EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step334EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step334EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step334EarlyControlZeroArena,s2Step334EarlyControlArena,s2Step334EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step334EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step334EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step334EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step334EarlyControl_zero : compileHmrEqualityLog s2Step334EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step334EarlyControlLog.zeroWork=some (s2Step334EarlyControlZeroArena,s2Step334EarlyControlLog.zeroWork,s2Step334EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step334EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step334EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step334EarlyControl_logged : s2Step334EarlyControlPlan.Logged s2Step334EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 816 254 253 252 251 806 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step334EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step334EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step334EarlyControl_zero
  · exact s2Step334EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step334EarlyControl_flags
  · exact s2Step334EarlyControl_fit
  · exact s2Step334EarlyControl_history
  · exact s2Step334EarlyControl_sigma
  · exact s2Step334EarlyControl_branch

private theorem s2Step334EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step334EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 816 254 253 252 251 806 60 s2Step334EarlyControlLog=some s2Step334EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step334EarlyControlPlan s2Step334EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 816 254 253 252 251 806 60 s2Step334EarlyControl_logged

private def s2Step334EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step334EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615],768⟩

private def s2Step334EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829],770⟩

private def s2Step334EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102],769⟩

private def s2Step334EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834],771⟩

private def s2Step334FrontBank : WindowBank := ⟨s2Step334EntryFRow,s2Step334EntryGRow,s2Step334EntryFvRow,s2Step334EntryGvRow⟩

private def s2Step334Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 794, 768]

private def s2Step334Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 822, 779, 769]

private def s2Step334Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 827, 770]

private def s2Step334Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 786, 877, 771]

private theorem s2Step334Counter_apart : Disjoint s2Step334HeadFvAfter.live s2Step334CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step334HeadFvAfter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step334Counter_borrowed : s2Step334HeadFvAfter.checkBorrow 4 s2Step334CounterWork=some s2Step334CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step334HeadFvAfter s2Step334CounterDuring s2Step334CounterWork.toFinset s2Step334Counter_bounded s2Step334Counter_apart rfl

private theorem s2Step334Counter_owned : (816::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step334HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step334HeadFvAfter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step334Counter_checked : compileHmrCounterStepLog s2Step334HeadFvAfter true 816 [772, 773, 774, 775, 776, 777] s2Step334CounterWork=some s2Step334CounterDuring := by
  have owned : ∀q∈816::[772, 773, 774, 775, 776, 777],q∈s2Step334HeadFvAfter.live := fun q hq => s2Step334Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step334Counter_borrowed

private def s2Step334EntryFAfter : Arena := s2Step334EntryFBefore

private theorem s2Step334EntryBank_incomingDistinct : ([s2Step334EntryFRow,s2Step334EntryGRow,s2Step334EntryFvRow,s2Step334EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step334EntryF_Incoming : rowsOwned s2Step334EntryFBefore [s2Step334EntryFRow,s2Step334EntryGRow,s2Step334EntryFvRow,s2Step334EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step334EntryFRow,s2Step334EntryGRow,s2Step334EntryFvRow,s2Step334EntryGvRow] 0 s2Step334EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step334EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step334EntryBank_outgoingOwned : rowsOwned s2Step334EntryGvAfter [s2Step334EntryFOut,s2Step334EntryGOut,s2Step334EntryFvOut,s2Step334EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step334EntryGvAfter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<816) ∨ (817≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step334EntryF_Outgoing : rowsOwned s2Step334EntryGvAfter [s2Step334EntryFOut,s2Step334EntryGOut,s2Step334EntryFvOut,s2Step334EntryGvOut] :=
  hmrRows_owned_drop s2Step334EntryGvAfter [s2Step334EntryFOut,s2Step334EntryGOut,s2Step334EntryFvOut,s2Step334EntryGvOut] 0 s2Step334EntryBank_outgoingOwned

private theorem s2Step334EntryF_distinct : (s2Step334EntryFRow.sign::s2Step334EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step334EntryF_owned : (s2Step334EntryFRow.sign::s2Step334EntryFRow.payload).toFinset⊆s2Step334EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step334EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step334EntryF_reserved : s2Step334EntryFBefore.reserve s2Step334EntryFFresh.toFinset=some s2Step334EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step334EntryFFresh,arenaWires]
  · norm_num [s2Step334EntryFBefore,s2Step334EntryFFresh,arenaWires]
  · simp only [s2Step334EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step334EntryF_checked : planRowResizeLog s2Step334EntryFBefore s2Step334EntryFRow 104 s2Step334EntryFFresh=
    some (s2Step334EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615],768⟩,growRow 768 s2Step334EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step334EntryFBefore s2Step334EntryFAfter s2Step334EntryFRow 104 s2Step334EntryFFresh
    s2Step334EntryF_distinct s2Step334EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step334EntryF_reserved
  have rowEq : WindowRow.mk (s2Step334EntryFRow.payload++s2Step334EntryFFresh) s2Step334EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step334EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<816) ∨ (817≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step334EntryFvAfter : Arena := s2Step334EntryGAfter

private def s2Step334EntryFvBefore : Arena := s2Step334EntryGAfter

private theorem s2Step334EntryFv_Incoming : rowsOwned s2Step334EntryFvBefore [s2Step334EntryFvRow,s2Step334EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step334EntryFRow,s2Step334EntryGRow,s2Step334EntryFvRow,s2Step334EntryGvRow] 2 s2Step334EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step334EntryFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<816) ∨ (817≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step334EntryFv_Outgoing : rowsOwned s2Step334EntryGvAfter [s2Step334EntryFvOut,s2Step334EntryGvOut] :=
  hmrRows_owned_drop s2Step334EntryGvAfter [s2Step334EntryFOut,s2Step334EntryGOut,s2Step334EntryFvOut,s2Step334EntryGvOut] 2 s2Step334EntryBank_outgoingOwned

private theorem s2Step334EntryFv_distinct : (s2Step334EntryFvRow.sign::s2Step334EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step334EntryFv_owned : (s2Step334EntryFvRow.sign::s2Step334EntryFvRow.payload).toFinset⊆s2Step334EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step334EntryFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<816) ∨ (817≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step334EntryFv_reserved : s2Step334EntryFvBefore.reserve s2Step334EntryFvFresh.toFinset=some s2Step334EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step334EntryFvFresh,arenaWires]
  · norm_num [s2Step334EntryFvBefore,s2Step334EntryGAfter,s2Step334EntryFvFresh,arenaWires]
  · simp only [s2Step334EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step334EntryFv_checked : planRowResizeLog s2Step334EntryFvBefore s2Step334EntryFvRow 183 s2Step334EntryFvFresh=
    some (s2Step334EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829],770⟩,growRow 770 s2Step334EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step334EntryFvBefore s2Step334EntryFvAfter s2Step334EntryFvRow 183 s2Step334EntryFvFresh
    s2Step334EntryFv_distinct s2Step334EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step334EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step334EntryFvRow.payload++s2Step334EntryFvFresh) s2Step334EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step334EntryGBefore : Arena := s2Step334EntryFBefore

private theorem s2Step334EntryG_Incoming : rowsOwned s2Step334EntryGBefore [s2Step334EntryGRow,s2Step334EntryFvRow,s2Step334EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step334EntryFRow,s2Step334EntryGRow,s2Step334EntryFvRow,s2Step334EntryGvRow] 1 s2Step334EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step334EntryGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step334EntryG_Outgoing : rowsOwned s2Step334EntryGvAfter [s2Step334EntryGOut,s2Step334EntryFvOut,s2Step334EntryGvOut] :=
  hmrRows_owned_drop s2Step334EntryGvAfter [s2Step334EntryFOut,s2Step334EntryGOut,s2Step334EntryFvOut,s2Step334EntryGvOut] 1 s2Step334EntryBank_outgoingOwned

private theorem s2Step334EntryG_distinct : (s2Step334EntryGRow.sign::s2Step334EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step334EntryG_owned : (s2Step334EntryGRow.sign::s2Step334EntryGRow.payload).toFinset⊆s2Step334EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step334EntryGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step334EntryG_reserved : s2Step334EntryGBefore.reserve s2Step334EntryGFresh.toFinset=some s2Step334EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step334EntryGFresh,arenaWires]
  · norm_num [s2Step334EntryGBefore,s2Step334EntryFBefore,s2Step334EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step334EntryGAfter,s2Step334EntryGBefore,s2Step334EntryFBefore,s2Step334EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step334EntryG_checked : planRowResizeLog s2Step334EntryGBefore s2Step334EntryGRow 104 s2Step334EntryGFresh=
    some (s2Step334EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 822],769⟩,growRow 769 s2Step334EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step334EntryGBefore s2Step334EntryGAfter s2Step334EntryGRow 104 s2Step334EntryGFresh
    s2Step334EntryG_distinct s2Step334EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step334EntryG_reserved
  have rowEq : WindowRow.mk (s2Step334EntryGRow.payload++s2Step334EntryGFresh) s2Step334EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 822],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step334EntryGvBefore : Arena := s2Step334EntryGAfter

private theorem s2Step334EntryGv_Incoming : rowsOwned s2Step334EntryGvBefore [s2Step334EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step334EntryFRow,s2Step334EntryGRow,s2Step334EntryFvRow,s2Step334EntryGvRow] 3 s2Step334EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step334EntryGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<816) ∨ (817≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step334EntryGv_Outgoing : rowsOwned s2Step334EntryGvAfter [s2Step334EntryGvOut] :=
  hmrRows_owned_drop s2Step334EntryGvAfter [s2Step334EntryFOut,s2Step334EntryGOut,s2Step334EntryFvOut,s2Step334EntryGvOut] 3 s2Step334EntryBank_outgoingOwned

private theorem s2Step334EntryGv_distinct : (s2Step334EntryGvRow.sign::s2Step334EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step334EntryGv_owned : (s2Step334EntryGvRow.sign::s2Step334EntryGvRow.payload).toFinset⊆s2Step334EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step334EntryGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<816) ∨ (817≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step334EntryGv_reserved : s2Step334EntryGvBefore.reserve s2Step334EntryGvFresh.toFinset=some s2Step334EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step334EntryGvFresh,arenaWires]
  · norm_num [s2Step334EntryGvBefore,s2Step334EntryGAfter,s2Step334EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step334EntryGvAfter,s2Step334EntryGvBefore,s2Step334EntryGAfter,s2Step334EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step334EntryGv_checked : planRowResizeLog s2Step334EntryGvBefore s2Step334EntryGvRow 183 s2Step334EntryGvFresh=
    some (s2Step334EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 786],771⟩,growRow 771 s2Step334EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step334EntryGvBefore s2Step334EntryGvAfter s2Step334EntryGvRow 183 s2Step334EntryGvFresh
    s2Step334EntryGv_distinct s2Step334EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step334EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step334EntryGvRow.payload++s2Step334EntryGvFresh) s2Step334EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 786],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step334EntryBank_rows : planWindowRowsLog s2Step334EntryFBefore [(s2Step334EntryFRow,104),(s2Step334EntryGRow,104),(s2Step334EntryFvRow,183),(s2Step334EntryGvRow,183)] [s2Step334EntryFFresh,s2Step334EntryGFresh,s2Step334EntryFvFresh,s2Step334EntryGvFresh]=
    some (s2Step334EntryGvAfter,[s2Step334EntryFOut,s2Step334EntryGOut,s2Step334EntryFvOut,s2Step334EntryGvOut],(growRow 768 s2Step334EntryFFresh ++ (growRow 769 s2Step334EntryGFresh ++ (growRow 770 s2Step334EntryFvFresh ++ (growRow 771 s2Step334EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step334EntryGvAfter [] []=some (s2Step334EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step334EntryGvBefore s2Step334EntryGvAfter s2Step334EntryGvAfter
    s2Step334EntryGvRow s2Step334EntryGvOut 183 s2Step334EntryGvFresh [] [] []
    (growRow 771 s2Step334EntryGvFresh) ([]) s2Step334EntryGv_Incoming s2Step334EntryGv_checked h4 s2Step334EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step334EntryFvBefore s2Step334EntryFvAfter s2Step334EntryGvAfter
    s2Step334EntryFvRow s2Step334EntryFvOut 183 s2Step334EntryFvFresh [(s2Step334EntryGvRow,183)] [s2Step334EntryGvFresh] [s2Step334EntryGvOut]
    (growRow 770 s2Step334EntryFvFresh) ((growRow 771 s2Step334EntryGvFresh ++ [])) s2Step334EntryFv_Incoming s2Step334EntryFv_checked h3 s2Step334EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step334EntryGBefore s2Step334EntryGAfter s2Step334EntryGvAfter
    s2Step334EntryGRow s2Step334EntryGOut 104 s2Step334EntryGFresh [(s2Step334EntryFvRow,183),(s2Step334EntryGvRow,183)] [s2Step334EntryFvFresh,s2Step334EntryGvFresh] [s2Step334EntryFvOut,s2Step334EntryGvOut]
    (growRow 769 s2Step334EntryGFresh) ((growRow 770 s2Step334EntryFvFresh ++ (growRow 771 s2Step334EntryGvFresh ++ []))) s2Step334EntryG_Incoming s2Step334EntryG_checked h2 s2Step334EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step334EntryFBefore s2Step334EntryFAfter s2Step334EntryGvAfter
    s2Step334EntryFRow s2Step334EntryFOut 104 s2Step334EntryFFresh [(s2Step334EntryGRow,104),(s2Step334EntryFvRow,183),(s2Step334EntryGvRow,183)] [s2Step334EntryGFresh,s2Step334EntryFvFresh,s2Step334EntryGvFresh] [s2Step334EntryGOut,s2Step334EntryFvOut,s2Step334EntryGvOut]
    (growRow 768 s2Step334EntryFFresh) ((growRow 769 s2Step334EntryGFresh ++ (growRow 770 s2Step334EntryFvFresh ++ (growRow 771 s2Step334EntryGvFresh ++ [])))) s2Step334EntryF_Incoming s2Step334EntryF_checked h1 s2Step334EntryF_Outgoing
  exact h0

private theorem s2Step334EntryBank_checked : compileHmrBankResizeLog .entry s2Step334EntryFBefore ⟨s2Step334EntryFRow,s2Step334EntryGRow,s2Step334EntryFvRow,s2Step334EntryGvRow⟩ ⟨104,104,183,183⟩ [s2Step334EntryFFresh,s2Step334EntryGFresh,s2Step334EntryFvFresh,s2Step334EntryGvFresh]=
    some (s2Step334EntryGvAfter,⟨s2Step334EntryFOut,s2Step334EntryGOut,s2Step334EntryFvOut,s2Step334EntryGvOut⟩,(growRow 768 s2Step334EntryFFresh ++ (growRow 769 s2Step334EntryGFresh ++ (growRow 770 s2Step334EntryFvFresh ++ (growRow 771 s2Step334EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step334EntryBank_rows]
  rfl

private def s2Step334ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<822) ∨ (823≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step334ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<822) ∨ (823≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step334ExitFBefore : Arena := s2Step334ExitGAfter

private def s2Step334ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 794],768⟩

private def s2Step334ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 827],770⟩

private def s2Step334ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 822, 779],769⟩

private def s2Step334ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 786, 877],771⟩

private theorem s2Step334ExitBank_incomingDistinct : ([s2Step334ExitGRow,s2Step334ExitFRow,s2Step334ExitFvRow,s2Step334ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step334ExitF_Incoming : rowsOwned s2Step334ExitFBefore [s2Step334ExitFRow,s2Step334ExitFvRow,s2Step334ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step334ExitGRow,s2Step334ExitFRow,s2Step334ExitFvRow,s2Step334ExitGvRow] 1 s2Step334ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step334ExitFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<822) ∨ (823≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step334ExitBank_outgoingOwned : rowsOwned s2Step334ExitGvAfter [s2Step334ExitGOut,s2Step334ExitFOut,s2Step334ExitFvOut,s2Step334ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step334ExitGvAfter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step334ExitF_Outgoing : rowsOwned s2Step334ExitGvAfter [s2Step334ExitFOut,s2Step334ExitFvOut,s2Step334ExitGvOut] :=
  hmrRows_owned_drop s2Step334ExitGvAfter [s2Step334ExitGOut,s2Step334ExitFOut,s2Step334ExitFvOut,s2Step334ExitGvOut] 1 s2Step334ExitBank_outgoingOwned

private theorem s2Step334ExitF_distinct : (s2Step334ExitFRow.sign::s2Step334ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step334ExitF_owned : (s2Step334ExitFRow.sign::s2Step334ExitFRow.payload).toFinset⊆s2Step334ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step334ExitFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<822) ∨ (823≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step334ExitF_retired : s2Step334ExitFBefore.retireSet s2Step334ExitFExtra.toFinset=s2Step334ExitFAfter := by
  unfold Arena.retireSet s2Step334ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step334ExitFBefore,s2Step334ExitGAfter,s2Step334ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step334ExitF_checked : planRowResizeLog s2Step334ExitFBefore s2Step334ExitFRow 104 []=
    some (s2Step334ExitFAfter,s2Step334ExitFOut,shrinkRow 768 s2Step334ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step334ExitFBefore s2Step334ExitFRow 104 s2Step334ExitF_distinct s2Step334ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step334ExitFRow.payload.take 104) s2Step334ExitFRow.sign=s2Step334ExitFOut := by decide +kernel
  have hi : s2Step334ExitFRow.payload.drop 104=s2Step334ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step334ExitF_retired] at result
  exact result

private def s2Step334ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step334ExitFvBefore : Arena := s2Step334ExitFAfter

private theorem s2Step334ExitFv_Incoming : rowsOwned s2Step334ExitFvBefore [s2Step334ExitFvRow,s2Step334ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step334ExitGRow,s2Step334ExitFRow,s2Step334ExitFvRow,s2Step334ExitGvRow] 2 s2Step334ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step334ExitFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<822) ∨ (823≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step334ExitFv_Outgoing : rowsOwned s2Step334ExitGvAfter [s2Step334ExitFvOut,s2Step334ExitGvOut] :=
  hmrRows_owned_drop s2Step334ExitGvAfter [s2Step334ExitGOut,s2Step334ExitFOut,s2Step334ExitFvOut,s2Step334ExitGvOut] 2 s2Step334ExitBank_outgoingOwned

private theorem s2Step334ExitFv_distinct : (s2Step334ExitFvRow.sign::s2Step334ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step334ExitFv_owned : (s2Step334ExitFvRow.sign::s2Step334ExitFvRow.payload).toFinset⊆s2Step334ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step334ExitFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<822) ∨ (823≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step334ExitFv_retired : s2Step334ExitFvBefore.retireSet s2Step334ExitFvExtra.toFinset=s2Step334ExitFvAfter := by
  unfold Arena.retireSet s2Step334ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step334ExitFvBefore,s2Step334ExitFAfter,s2Step334ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step334ExitFv_checked : planRowResizeLog s2Step334ExitFvBefore s2Step334ExitFvRow 183 []=
    some (s2Step334ExitFvAfter,s2Step334ExitFvOut,shrinkRow 770 s2Step334ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step334ExitFvBefore s2Step334ExitFvRow 183 s2Step334ExitFv_distinct s2Step334ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step334ExitFvRow.payload.take 183) s2Step334ExitFvRow.sign=s2Step334ExitFvOut := by decide +kernel
  have hi : s2Step334ExitFvRow.payload.drop 183=s2Step334ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step334ExitFv_retired] at result
  exact result

private def s2Step334ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private theorem s2Step334ExitG_Incoming : rowsOwned s2Step334ExitGBefore [s2Step334ExitGRow,s2Step334ExitFRow,s2Step334ExitFvRow,s2Step334ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step334ExitGRow,s2Step334ExitFRow,s2Step334ExitFvRow,s2Step334ExitGvRow] 0 s2Step334ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step334ExitGBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step334ExitG_Outgoing : rowsOwned s2Step334ExitGvAfter [s2Step334ExitGOut,s2Step334ExitFOut,s2Step334ExitFvOut,s2Step334ExitGvOut] :=
  hmrRows_owned_drop s2Step334ExitGvAfter [s2Step334ExitGOut,s2Step334ExitFOut,s2Step334ExitFvOut,s2Step334ExitGvOut] 0 s2Step334ExitBank_outgoingOwned

private theorem s2Step334ExitG_distinct : (s2Step334ExitGRow.sign::s2Step334ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step334ExitG_owned : (s2Step334ExitGRow.sign::s2Step334ExitGRow.payload).toFinset⊆s2Step334ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step334ExitGBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step334ExitG_retired : s2Step334ExitGBefore.retireSet s2Step334ExitGExtra.toFinset=s2Step334ExitGAfter := by
  unfold Arena.retireSet s2Step334ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step334ExitGBefore,s2Step334ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step334ExitG_checked : planRowResizeLog s2Step334ExitGBefore s2Step334ExitGRow 103 []=
    some (s2Step334ExitGAfter,s2Step334ExitGOut,shrinkRow 769 s2Step334ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step334ExitGBefore s2Step334ExitGRow 103 s2Step334ExitG_distinct s2Step334ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step334ExitGRow.payload.take 103) s2Step334ExitGRow.sign=s2Step334ExitGOut := by decide +kernel
  have hi : s2Step334ExitGRow.payload.drop 103=s2Step334ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step334ExitG_retired] at result
  exact result

private def s2Step334ExitGvBefore : Arena := s2Step334ExitFvAfter

private theorem s2Step334ExitGv_Incoming : rowsOwned s2Step334ExitGvBefore [s2Step334ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step334ExitGRow,s2Step334ExitFRow,s2Step334ExitFvRow,s2Step334ExitGvRow] 3 s2Step334ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step334ExitGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step334ExitGv_Outgoing : rowsOwned s2Step334ExitGvAfter [s2Step334ExitGvOut] :=
  hmrRows_owned_drop s2Step334ExitGvAfter [s2Step334ExitGOut,s2Step334ExitFOut,s2Step334ExitFvOut,s2Step334ExitGvOut] 3 s2Step334ExitBank_outgoingOwned

private theorem s2Step334ExitGv_distinct : (s2Step334ExitGvRow.sign::s2Step334ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step334ExitGv_owned : (s2Step334ExitGvRow.sign::s2Step334ExitGvRow.payload).toFinset⊆s2Step334ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step334ExitGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step334ExitGv_retired : s2Step334ExitGvBefore.retireSet s2Step334ExitGvExtra.toFinset=s2Step334ExitGvAfter := by
  unfold Arena.retireSet s2Step334ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step334ExitGvBefore,s2Step334ExitFvAfter,s2Step334ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step334ExitGv_checked : planRowResizeLog s2Step334ExitGvBefore s2Step334ExitGvRow 182 []=
    some (s2Step334ExitGvAfter,s2Step334ExitGvOut,shrinkRow 771 s2Step334ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step334ExitGvBefore s2Step334ExitGvRow 182 s2Step334ExitGv_distinct s2Step334ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step334ExitGvRow.payload.take 182) s2Step334ExitGvRow.sign=s2Step334ExitGvOut := by decide +kernel
  have hi : s2Step334ExitGvRow.payload.drop 182=s2Step334ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step334ExitGv_retired] at result
  exact result

private theorem s2Step334ExitBank_rows : planWindowRowsLog s2Step334ExitGBefore [(s2Step334ExitGRow,103),(s2Step334ExitFRow,104),(s2Step334ExitFvRow,183),(s2Step334ExitGvRow,182)] [[],[],[],[]]=
    some (s2Step334ExitGvAfter,[s2Step334ExitGOut,s2Step334ExitFOut,s2Step334ExitFvOut,s2Step334ExitGvOut],(shrinkRow 769 s2Step334ExitGExtra ++ (shrinkRow 768 s2Step334ExitFExtra ++ (shrinkRow 770 s2Step334ExitFvExtra ++ (shrinkRow 771 s2Step334ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step334ExitGvAfter [] []=some (s2Step334ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step334ExitGvBefore s2Step334ExitGvAfter s2Step334ExitGvAfter
    s2Step334ExitGvRow s2Step334ExitGvOut 182 [] [] [] []
    (shrinkRow 771 s2Step334ExitGvExtra) ([]) s2Step334ExitGv_Incoming s2Step334ExitGv_checked h4 s2Step334ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step334ExitFvBefore s2Step334ExitFvAfter s2Step334ExitGvAfter
    s2Step334ExitFvRow s2Step334ExitFvOut 183 [] [(s2Step334ExitGvRow,182)] [[]] [s2Step334ExitGvOut]
    (shrinkRow 770 s2Step334ExitFvExtra) ((shrinkRow 771 s2Step334ExitGvExtra ++ [])) s2Step334ExitFv_Incoming s2Step334ExitFv_checked h3 s2Step334ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step334ExitFBefore s2Step334ExitFAfter s2Step334ExitGvAfter
    s2Step334ExitFRow s2Step334ExitFOut 104 [] [(s2Step334ExitFvRow,183),(s2Step334ExitGvRow,182)] [[],[]] [s2Step334ExitFvOut,s2Step334ExitGvOut]
    (shrinkRow 768 s2Step334ExitFExtra) ((shrinkRow 770 s2Step334ExitFvExtra ++ (shrinkRow 771 s2Step334ExitGvExtra ++ []))) s2Step334ExitF_Incoming s2Step334ExitF_checked h2 s2Step334ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step334ExitGBefore s2Step334ExitGAfter s2Step334ExitGvAfter
    s2Step334ExitGRow s2Step334ExitGOut 103 [] [(s2Step334ExitFRow,104),(s2Step334ExitFvRow,183),(s2Step334ExitGvRow,182)] [[],[],[]] [s2Step334ExitFOut,s2Step334ExitFvOut,s2Step334ExitGvOut]
    (shrinkRow 769 s2Step334ExitGExtra) ((shrinkRow 768 s2Step334ExitFExtra ++ (shrinkRow 770 s2Step334ExitFvExtra ++ (shrinkRow 771 s2Step334ExitGvExtra ++ [])))) s2Step334ExitG_Incoming s2Step334ExitG_checked h1 s2Step334ExitG_Outgoing
  exact h0

private theorem s2Step334ExitBank_checked : compileHmrBankResizeLog .exit s2Step334ExitGBefore ⟨s2Step334ExitFRow,s2Step334ExitGRow,s2Step334ExitFvRow,s2Step334ExitGvRow⟩ ⟨104,103,183,182⟩ [[],[],[],[]]=
    some (s2Step334ExitGvAfter,⟨s2Step334ExitFOut,s2Step334ExitGOut,s2Step334ExitFvOut,s2Step334ExitGvOut⟩,(shrinkRow 769 s2Step334ExitGExtra ++ (shrinkRow 768 s2Step334ExitFExtra ++ (shrinkRow 770 s2Step334ExitFvExtra ++ (shrinkRow 771 s2Step334ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step334ExitBank_rows]
  rfl

private theorem s2Step334Add0_apart : Disjoint s2Step334Add0Arena.live s2Step334Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step334Add0Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step334Add0_card : s2Step334Add0Arena.live.card=908 := by
  decide +kernel

private theorem s2Step334Add0_borrowed : s2Step334Add0Arena.checkBorrow (hmrHybridCount s2Step334Add0Arena s2Step334Add0B.length) s2Step334Add0Work=some s2Step334Add0During := by
  have len : s2Step334Add0Work.length=hmrHybridCount s2Step334Add0Arena s2Step334Add0B.length := by
    rw [hmrHybridCount,s2Step334Add0_card]
    decide +kernel
  have nd : s2Step334Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step334Add0Arena s2Step334Add0During s2Step334Add0Work.toFinset s2Step334Add0_bounded s2Step334Add0_apart rfl

private theorem s2Step334Add0_distinct : (784::806::800::(s2Step334Add0A++s2Step334Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step334Add0_owned : (784::806::800::(s2Step334Add0A++s2Step334Add0B)).toFinset⊆s2Step334Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step334Add0Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step334Add0_checked : compileHmrHybridCinLog s2Step334Add0Arena 806 784 800 s2Step334Add0A s2Step334Add0B s2Step334Add0Work=some s2Step334Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step334Add0Arena s2Step334Add0During 806 784 800 s2Step334Add0A s2Step334Add0B s2Step334Add0Work
    (by decide +kernel) (by decide +kernel) s2Step334Add0_distinct
    (fun q hq => s2Step334Add0_owned (List.mem_toFinset.mpr hq)) s2Step334Add0_borrowed

private theorem s2Step334Add1_apart : Disjoint s2Step334Add1Arena.live s2Step334Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step334Add1Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step334Add1_card : s2Step334Add1Arena.live.card=908 := by
  decide +kernel

private theorem s2Step334Add1_borrowed : s2Step334Add1Arena.checkBorrow (hmrHybridCount s2Step334Add1Arena s2Step334Add1B.length) s2Step334Add1Work=some s2Step334Add1During := by
  have len : s2Step334Add1Work.length=hmrHybridCount s2Step334Add1Arena s2Step334Add1B.length := by
    rw [hmrHybridCount,s2Step334Add1_card]
    decide +kernel
  have nd : s2Step334Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step334Add1Arena s2Step334Add1During s2Step334Add1Work.toFinset s2Step334Add1_bounded s2Step334Add1_apart rfl

private theorem s2Step334Add1_distinct : (784::806::800::(s2Step334Add1A++s2Step334Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step334Add1_owned : (784::806::800::(s2Step334Add1A++s2Step334Add1B)).toFinset⊆s2Step334Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step334Add1Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step334Add1_checked : compileHmrHybridCinLog s2Step334Add1Arena 806 784 800 s2Step334Add1A s2Step334Add1B s2Step334Add1Work=some s2Step334Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step334Add1Arena s2Step334Add1During 806 784 800 s2Step334Add1A s2Step334Add1B s2Step334Add1Work
    (by decide +kernel) (by decide +kernel) s2Step334Add1_distinct
    (fun q hq => s2Step334Add1_owned (List.mem_toFinset.mpr hq)) s2Step334Add1_borrowed

private theorem s2Step334F4_apart : Disjoint (s2Step334Add0A++s2Step334Add0B).toFinset (s2Step334Add1A++s2Step334Add1B).toFinset := by
  have nd : ((s2Step334Add0A++s2Step334Add0B)++(s2Step334Add1A++s2Step334Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step334F4_carry : s2Step334F4FlagArena.checkBorrow 1 [800]=some s2Step334Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step334F4FlagArena,s2Step334HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step334F4FlagArena,s2Step334HeadFvAfter,s2Step334Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step334F4_distinct : (816::806::784::800::((s2Step334Add0A++s2Step334Add1A)++(s2Step334Add0B++s2Step334Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step334F4_flag : s2Step334HeadFvAfter.checkBorrow 1 [784]=some s2Step334F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step334HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step334F4_owned : (816::806::((s2Step334Add0A++s2Step334Add1A)++(s2Step334Add0B++s2Step334Add1B))).toFinset⊆s2Step334HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step334HeadFvAfter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step334F4_checked : compileHmrHybridF4Log s2Step334HeadFvAfter 816 806 s2Step334Add0A s2Step334Add0B s2Step334Add1A s2Step334Add1B [784] [800] s2Step334Add0Work s2Step334Add1Work=some s2Step334F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step334HeadFvAfter s2Step334F4FlagArena s2Step334Add0Arena s2Step334Add0During s2Step334Add1During 816 806
    s2Step334Add0A s2Step334Add0B s2Step334Add1A s2Step334Add1B [784] [800] s2Step334Add0Work s2Step334Add1Work
    (fun q hq => s2Step334F4_owned (List.mem_toFinset.mpr hq)) s2Step334F4_flag s2Step334F4_carry
    s2Step334F4_distinct s2Step334F4_apart s2Step334Add0_checked s2Step334Add1_checked

private theorem s2Step334Front_branch : s2Step334FrontSigmaArena.checkBorrow 1 [806]=some s2Step334HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step334FrontSigmaArena,s2Step334EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step334FrontSigmaArena,s2Step334EntryGvAfter,s2Step334HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step334Front_entry : HmrFrontEntryValid s2Step334EntryFBefore s2Step334FrontBank 104 183 ⟨104,103,183,182⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step334FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step334EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step334EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step334FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step334Front_sigma : s2Step334EntryGvAfter.checkBorrow 1 [816]=some s2Step334FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step334EntryGvAfter,arenaWires]
  · rfl

private def s2Step334HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step334HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step334HeadFBefore : Arena := s2Step334HeadGAfter

private def s2Step334HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615],768⟩

private def s2Step334HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829],770⟩

private def s2Step334HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 822],769⟩

private def s2Step334HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 786],771⟩

private theorem s2Step334HeadBank_incomingDistinct : ([s2Step334HeadGRow,s2Step334HeadFRow,s2Step334HeadGvRow,s2Step334HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step334HeadF_Incoming : rowsOwned s2Step334HeadFBefore [s2Step334HeadFRow,s2Step334HeadGvRow,s2Step334HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step334HeadGRow,s2Step334HeadFRow,s2Step334HeadGvRow,s2Step334HeadFvRow] 1 s2Step334HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step334HeadFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step334HeadBank_outgoingOwned : rowsOwned s2Step334HeadFvAfter [s2Step334HeadGOut,s2Step334HeadFOut,s2Step334HeadGvOut,s2Step334HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step334HeadFvAfter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step334HeadF_Outgoing : rowsOwned s2Step334HeadFvAfter [s2Step334HeadFOut,s2Step334HeadGvOut,s2Step334HeadFvOut] :=
  hmrRows_owned_drop s2Step334HeadFvAfter [s2Step334HeadGOut,s2Step334HeadFOut,s2Step334HeadGvOut,s2Step334HeadFvOut] 1 s2Step334HeadBank_outgoingOwned

private theorem s2Step334HeadF_distinct : (s2Step334HeadFRow.sign::s2Step334HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step334HeadF_owned : (s2Step334HeadFRow.sign::s2Step334HeadFRow.payload).toFinset⊆s2Step334HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step334HeadFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step334HeadF_reserved : s2Step334HeadFBefore.reserve s2Step334HeadFFresh.toFinset=some s2Step334HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step334HeadFFresh,arenaWires]
  · norm_num [s2Step334HeadFBefore,s2Step334HeadGAfter,s2Step334HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step334HeadFAfter,s2Step334HeadFBefore,s2Step334HeadGAfter,s2Step334HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step334HeadF_checked : planRowResizeLog s2Step334HeadFBefore s2Step334HeadFRow 105 s2Step334HeadFFresh=
    some (s2Step334HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 794],768⟩,growRow 768 s2Step334HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step334HeadFBefore s2Step334HeadFAfter s2Step334HeadFRow 105 s2Step334HeadFFresh
    s2Step334HeadF_distinct s2Step334HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step334HeadF_reserved
  have rowEq : WindowRow.mk (s2Step334HeadFRow.payload++s2Step334HeadFFresh) s2Step334HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 794],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step334HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step334HeadFvBefore : Arena := s2Step334HeadGvAfter

private theorem s2Step334HeadFv_Incoming : rowsOwned s2Step334HeadFvBefore [s2Step334HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step334HeadGRow,s2Step334HeadFRow,s2Step334HeadGvRow,s2Step334HeadFvRow] 3 s2Step334HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step334HeadFvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step334HeadFv_Outgoing : rowsOwned s2Step334HeadFvAfter [s2Step334HeadFvOut] :=
  hmrRows_owned_drop s2Step334HeadFvAfter [s2Step334HeadGOut,s2Step334HeadFOut,s2Step334HeadGvOut,s2Step334HeadFvOut] 3 s2Step334HeadBank_outgoingOwned

private theorem s2Step334HeadFv_distinct : (s2Step334HeadFvRow.sign::s2Step334HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step334HeadFv_owned : (s2Step334HeadFvRow.sign::s2Step334HeadFvRow.payload).toFinset⊆s2Step334HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step334HeadFvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step334HeadFv_reserved : s2Step334HeadFvBefore.reserve s2Step334HeadFvFresh.toFinset=some s2Step334HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step334HeadFvFresh,arenaWires]
  · norm_num [s2Step334HeadFvBefore,s2Step334HeadGvAfter,s2Step334HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step334HeadFvAfter,s2Step334HeadFvBefore,s2Step334HeadGvAfter,s2Step334HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step334HeadFv_checked : planRowResizeLog s2Step334HeadFvBefore s2Step334HeadFvRow 184 s2Step334HeadFvFresh=
    some (s2Step334HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 827],770⟩,growRow 770 s2Step334HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step334HeadFvBefore s2Step334HeadFvAfter s2Step334HeadFvRow 184 s2Step334HeadFvFresh
    s2Step334HeadFv_distinct s2Step334HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step334HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step334HeadFvRow.payload++s2Step334HeadFvFresh) s2Step334HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 827],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step334HeadG_Incoming : rowsOwned s2Step334HeadGBefore [s2Step334HeadGRow,s2Step334HeadFRow,s2Step334HeadGvRow,s2Step334HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step334HeadGRow,s2Step334HeadFRow,s2Step334HeadGvRow,s2Step334HeadFvRow] 0 s2Step334HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step334HeadGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step334HeadG_Outgoing : rowsOwned s2Step334HeadFvAfter [s2Step334HeadGOut,s2Step334HeadFOut,s2Step334HeadGvOut,s2Step334HeadFvOut] :=
  hmrRows_owned_drop s2Step334HeadFvAfter [s2Step334HeadGOut,s2Step334HeadFOut,s2Step334HeadGvOut,s2Step334HeadFvOut] 0 s2Step334HeadBank_outgoingOwned

private theorem s2Step334HeadG_distinct : (s2Step334HeadGRow.sign::s2Step334HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step334HeadG_owned : (s2Step334HeadGRow.sign::s2Step334HeadGRow.payload).toFinset⊆s2Step334HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step334HeadGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step334HeadG_reserved : s2Step334HeadGBefore.reserve s2Step334HeadGFresh.toFinset=some s2Step334HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step334HeadGFresh,arenaWires]
  · norm_num [s2Step334HeadGBefore,s2Step334HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step334HeadGAfter,s2Step334HeadGBefore,s2Step334HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step334HeadG_checked : planRowResizeLog s2Step334HeadGBefore s2Step334HeadGRow 105 s2Step334HeadGFresh=
    some (s2Step334HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 822, 779],769⟩,growRow 769 s2Step334HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step334HeadGBefore s2Step334HeadGAfter s2Step334HeadGRow 105 s2Step334HeadGFresh
    s2Step334HeadG_distinct s2Step334HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step334HeadG_reserved
  have rowEq : WindowRow.mk (s2Step334HeadGRow.payload++s2Step334HeadGFresh) s2Step334HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 822, 779],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step334HeadGvBefore : Arena := s2Step334HeadFAfter

private theorem s2Step334HeadGv_Incoming : rowsOwned s2Step334HeadGvBefore [s2Step334HeadGvRow,s2Step334HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step334HeadGRow,s2Step334HeadFRow,s2Step334HeadGvRow,s2Step334HeadFvRow] 2 s2Step334HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step334HeadGvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step334HeadGv_Outgoing : rowsOwned s2Step334HeadFvAfter [s2Step334HeadGvOut,s2Step334HeadFvOut] :=
  hmrRows_owned_drop s2Step334HeadFvAfter [s2Step334HeadGOut,s2Step334HeadFOut,s2Step334HeadGvOut,s2Step334HeadFvOut] 2 s2Step334HeadBank_outgoingOwned

private theorem s2Step334HeadGv_distinct : (s2Step334HeadGvRow.sign::s2Step334HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step334HeadGv_owned : (s2Step334HeadGvRow.sign::s2Step334HeadGvRow.payload).toFinset⊆s2Step334HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step334HeadGvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step334HeadGv_reserved : s2Step334HeadGvBefore.reserve s2Step334HeadGvFresh.toFinset=some s2Step334HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step334HeadGvFresh,arenaWires]
  · norm_num [s2Step334HeadGvBefore,s2Step334HeadFAfter,s2Step334HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step334HeadGvAfter,s2Step334HeadGvBefore,s2Step334HeadFAfter,s2Step334HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step334HeadGv_checked : planRowResizeLog s2Step334HeadGvBefore s2Step334HeadGvRow 184 s2Step334HeadGvFresh=
    some (s2Step334HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 786, 877],771⟩,growRow 771 s2Step334HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step334HeadGvBefore s2Step334HeadGvAfter s2Step334HeadGvRow 184 s2Step334HeadGvFresh
    s2Step334HeadGv_distinct s2Step334HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step334HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step334HeadGvRow.payload++s2Step334HeadGvFresh) s2Step334HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 786, 877],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step334HeadBank_rows : planWindowRowsLog s2Step334HeadGBefore [(s2Step334HeadGRow,105),(s2Step334HeadFRow,105),(s2Step334HeadGvRow,184),(s2Step334HeadFvRow,184)] [s2Step334HeadGFresh,s2Step334HeadFFresh,s2Step334HeadGvFresh,s2Step334HeadFvFresh]=
    some (s2Step334HeadFvAfter,[s2Step334HeadGOut,s2Step334HeadFOut,s2Step334HeadGvOut,s2Step334HeadFvOut],(growRow 769 s2Step334HeadGFresh ++ (growRow 768 s2Step334HeadFFresh ++ (growRow 771 s2Step334HeadGvFresh ++ (growRow 770 s2Step334HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step334HeadFvAfter [] []=some (s2Step334HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step334HeadFvBefore s2Step334HeadFvAfter s2Step334HeadFvAfter
    s2Step334HeadFvRow s2Step334HeadFvOut 184 s2Step334HeadFvFresh [] [] []
    (growRow 770 s2Step334HeadFvFresh) ([]) s2Step334HeadFv_Incoming s2Step334HeadFv_checked h4 s2Step334HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step334HeadGvBefore s2Step334HeadGvAfter s2Step334HeadFvAfter
    s2Step334HeadGvRow s2Step334HeadGvOut 184 s2Step334HeadGvFresh [(s2Step334HeadFvRow,184)] [s2Step334HeadFvFresh] [s2Step334HeadFvOut]
    (growRow 771 s2Step334HeadGvFresh) ((growRow 770 s2Step334HeadFvFresh ++ [])) s2Step334HeadGv_Incoming s2Step334HeadGv_checked h3 s2Step334HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step334HeadFBefore s2Step334HeadFAfter s2Step334HeadFvAfter
    s2Step334HeadFRow s2Step334HeadFOut 105 s2Step334HeadFFresh [(s2Step334HeadGvRow,184),(s2Step334HeadFvRow,184)] [s2Step334HeadGvFresh,s2Step334HeadFvFresh] [s2Step334HeadGvOut,s2Step334HeadFvOut]
    (growRow 768 s2Step334HeadFFresh) ((growRow 771 s2Step334HeadGvFresh ++ (growRow 770 s2Step334HeadFvFresh ++ []))) s2Step334HeadF_Incoming s2Step334HeadF_checked h2 s2Step334HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step334HeadGBefore s2Step334HeadGAfter s2Step334HeadFvAfter
    s2Step334HeadGRow s2Step334HeadGOut 105 s2Step334HeadGFresh [(s2Step334HeadFRow,105),(s2Step334HeadGvRow,184),(s2Step334HeadFvRow,184)] [s2Step334HeadFFresh,s2Step334HeadGvFresh,s2Step334HeadFvFresh] [s2Step334HeadFOut,s2Step334HeadGvOut,s2Step334HeadFvOut]
    (growRow 769 s2Step334HeadGFresh) ((growRow 768 s2Step334HeadFFresh ++ (growRow 771 s2Step334HeadGvFresh ++ (growRow 770 s2Step334HeadFvFresh ++ [])))) s2Step334HeadG_Incoming s2Step334HeadG_checked h1 s2Step334HeadG_Outgoing
  exact h0

private theorem s2Step334HeadBank_checked : compileHmrBankResizeLog .headroom s2Step334HeadGBefore ⟨s2Step334HeadFRow,s2Step334HeadGRow,s2Step334HeadFvRow,s2Step334HeadGvRow⟩ ⟨105,105,184,184⟩ [s2Step334HeadGFresh,s2Step334HeadFFresh,s2Step334HeadGvFresh,s2Step334HeadFvFresh]=
    some (s2Step334HeadFvAfter,⟨s2Step334HeadFOut,s2Step334HeadGOut,s2Step334HeadFvOut,s2Step334HeadGvOut⟩,(growRow 769 s2Step334HeadGFresh ++ (growRow 768 s2Step334HeadFFresh ++ (growRow 771 s2Step334HeadGvFresh ++ (growRow 770 s2Step334HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step334HeadBank_rows]
  rfl

private theorem s2Step334Front_checked : compileHmrSourceFrontLog s2Step334EntryFBefore s2Step334FrontBank 104 183 ⟨104,103,183,182⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step334FrontLog=some s2Step334FrontPlan := by
  have pairEq : s2Step334FrontPair=⟨s2Step334HeadFRow,s2Step334HeadGRow,s2Step334HeadFvRow,s2Step334HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step334FrontHead=⟨s2Step334ExitFRow,s2Step334ExitGRow,s2Step334ExitFvRow,s2Step334ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step334Add0A=s2Step334FrontHead.f.wires := by decide +kernel
  have gEq : s2Step334Add0B=s2Step334FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step334Add1A=s2Step334FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step334Add1B=s2Step334FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step334EntryFBefore s2Step334FrontBank 104 183 ⟨104,103,183,182⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step334FrontLog s2Step334FrontPlan
  · exact s2Step334Front_entry
  · exact s2Step334EntryBank_checked
  · exact s2Step334Front_sigma
  · rfl
  · exact s2Step334Front_branch
  · rfl
  · simpa only [s2Step334FrontPlan,pairEq] using s2Step334HeadBank_checked
  · simpa only [s2Step334FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step334F4_checked
  · exact s2Step334Counter_checked
  · rfl
  · simpa only [s2Step334FrontPlan,headEq] using s2Step334ExitBank_checked

private theorem s2Step334Complete_explicit_checked : compileHmrEarlyStepLog s2Step334EntryFBefore s2Step334FrontBank 104 183 ⟨104,103,183,182⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step334CompleteLog=some s2Step334CompletePlan := by
  let Q := s2Step334EarlyControlPlan
  have hq := s2Step334EarlyControl_plan_checked
  have fv1 : s2Step334CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step334CompleteOut.fv.payload[2]?.getD s2Step334CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step334CompleteOut.fv.payload[3]?.getD s2Step334CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step334CompleteOut.fv.payload[4]?.getD s2Step334CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step334EntryFBefore s2Step334EarlyControlArena s2Step334FrontBank 104 183 ⟨104,103,183,182⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step334CompleteLog s2Step334FrontPlan Q
    s2Step334Front_checked s2Step334Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step334Complete_owned s2Step334Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step334EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 816 s2Step334CompleteOut.fv.second (s2Step334CompleteOut.fv.payload[2]?.getD s2Step334CompleteOut.fv.sign) (s2Step334CompleteOut.fv.payload[3]?.getD s2Step334CompleteOut.fv.sign) (s2Step334CompleteOut.fv.payload[4]?.getD s2Step334CompleteOut.fv.sign) 806 60 s2Step334EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep334Arena : Arena := s2Step334EntryFBefore
def s2PrivateStep334Bank : WindowBank := s2Step334FrontBank
def s2PrivateStep334Spec : HmrSourceWalkStepLog := ⟨104,183,⟨104,103,183,182⟩,60,.early s2Step334CompleteLog⟩
def s2PrivateStep334Plan : HmrSourceStepPlan := .early s2Step334CompletePlan
theorem s2PrivateStep334_source : s2PrivateStep334Spec=s2ObservedLogs320[14] := rfl
theorem s2PrivateStep334_checked : compileHmrSourceStepLog s2PrivateStep334Arena s2PrivateStep334Bank
    s2PrivateStep334Spec.fgWidth s2PrivateStep334Spec.vWidth s2PrivateStep334Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]
    6 498 334 s2PrivateStep334Spec.need none s2PrivateStep334Spec.log=some s2PrivateStep334Plan := by
  change compileHmrSourceStepLog s2Step334EntryFBefore s2Step334FrontBank 104 183 ⟨104,103,183,182⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 6 498 334 60 none (.early s2Step334CompleteLog)=some (.early s2Step334CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 334<498)]
  rw [s2Step334Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
