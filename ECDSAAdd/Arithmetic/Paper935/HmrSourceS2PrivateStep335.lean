import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep333
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

private def s2Step335CompleteMoves : List (Wire × Wire) := [(851,615)]

private def s2Step335EarlyControlLog : HmrEarlyControlLog := ⟨[851, 822, 794, 806, 827],[784],[800],[894, 896, 901, 903, 907, 913],[]⟩

private def s2Step335FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [806], [], [816]],[[827], [794], [822], [779]],[[], [], [], []]⟩,[786],[877],[784],[800],[894, 896, 901, 903, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[894, 896, 901, 903, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[784, 800, 894, 896]⟩

private def s2Step335CompleteLog : HmrEarlyStepLog := ⟨s2Step335FrontLog,s2Step335CompleteMoves,s2Step335EarlyControlLog⟩

private def s2Step335ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614],768⟩

private def s2Step335ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779],770⟩

private def s2Step335ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102],769⟩

private def s2Step335ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816],771⟩

private def s2Step335FrontOut : WindowBank := ⟨s2Step335ExitFOut,s2Step335ExitGOut,s2Step335ExitFvOut,s2Step335ExitGvOut⟩

private def s2Step335CompleteOut : WindowBank := s2Step335FrontOut.repacked s2Step335CompleteMoves

private def s2Step335EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<851) ∨ (852≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step335EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step335EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step335EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step335EarlyControlPositiveArena,[784],s2Step335EarlyControlEqualityArena,[800],⟨⟨786,false⟩,[⟨⟨784,false⟩,800⟩]⟩⟩

private def s2Step335EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<914)),Finset.filter_subset _ _⟩

private def s2Step335EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<914)),Finset.filter_subset _ _⟩

private def s2Step335EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<851) ∨ (852≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step335EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<851) ∨ (852≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step335EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<851) ∨ (852≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step335EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step335EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,851⟩,⟨⟨774,false⟩,822⟩,⟨⟨775,false⟩,794⟩,⟨⟨776,false⟩,806⟩,⟨⟨777,false⟩,827⟩]⟩

private def s2Step335EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step335EarlyControlZeroArena,s2Step335EarlyControlZeroPlan,s2Step335EarlyControlClassPlan,s2Step335EarlyControlFlagArena,s2Step335EarlyControlFittedArena,s2Step335EarlyControlHistoryArena,s2Step335EarlyControlSigmaArena,s2Step335EarlyControlOutputArena,s2Step335EarlyControlLog⟩

private def s2Step335CounterWork : List Wire := [784, 800, 894, 896]

private theorem s2Step335Counter_bounded : s2Step335CounterWork.toFinset⊆arenaWires := by norm_num [s2Step335CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step335HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step335CounterDuring : Arena := ⟨s2Step335HeadFvAfter.live∪s2Step335CounterWork.toFinset,Finset.union_subset s2Step335HeadFvAfter.bounded s2Step335Counter_bounded⟩

private def s2Step335EntryFFresh : List Wire := []

private def s2Step335EntryFvFresh : List Wire := []

private def s2Step335EntryGFresh : List Wire := [806]

private def s2Step335EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step335EntryGvFresh : List Wire := [816]

private def s2Step335ExitFExtra : List Wire := [615, 794]

private def s2Step335ExitGExtra : List Wire := [806, 827]

private def s2Step335ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<615) ∨ (616≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step335ExitGvExtra : List Wire := [822]

private def s2Step335Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step335Add0Work : List Wire := [894, 896, 901, 903, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step335Add0_bounded : s2Step335Add0Work.toFinset⊆arenaWires := by
  have h : s2Step335Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step335Add0During : Arena := ⟨s2Step335Add0Arena.live∪s2Step335Add0Work.toFinset,Finset.union_subset s2Step335Add0Arena.bounded s2Step335Add0_bounded⟩

private def s2Step335Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step335Add1Work : List Wire := [894, 896, 901, 903, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step335Add1_bounded : s2Step335Add1Work.toFinset⊆arenaWires := by
  have h : s2Step335Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step335Add1During : Arena := ⟨s2Step335Add1Arena.live∪s2Step335Add1Work.toFinset,Finset.union_subset s2Step335Add1Arena.bounded s2Step335Add1_bounded⟩

private def s2Step335F4FlagArena : Arena := ⟨s2Step335HeadFvAfter.live∪{784},Finset.union_subset s2Step335HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step335F4Plan : HmrHybridF4Plan := ⟨s2Step335F4FlagArena,[784],s2Step335Add0Arena,[800],s2Step335Add0During,s2Step335Add0Work,s2Step335Add1During,s2Step335Add1Work⟩

private def s2Step335HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 794],768⟩

private def s2Step335HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779],770⟩

private def s2Step335HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 806, 827],769⟩

private def s2Step335HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 822],771⟩

private def s2Step335FrontHead : WindowBank := ⟨s2Step335HeadFOut,s2Step335HeadGOut,s2Step335HeadFvOut,s2Step335HeadGvOut⟩

private def s2Step335EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615],768⟩

private def s2Step335EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829],770⟩

private def s2Step335EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 806],769⟩

private def s2Step335EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816],771⟩

private def s2Step335FrontPair : WindowBank := ⟨s2Step335EntryFOut,s2Step335EntryGOut,s2Step335EntryFvOut,s2Step335EntryGvOut⟩

private def s2Step335FrontSigmaArena : Arena := ⟨s2Step335EntryGvAfter.live∪{786},Finset.union_subset s2Step335EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step335HeadFFresh : List Wire := [794]

private def s2Step335HeadFvFresh : List Wire := [779]

private def s2Step335HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step335HeadGFresh : List Wire := [827]

private def s2Step335HeadGvFresh : List Wire := [822]

private def s2Step335FrontPlan : HmrSourceFront := ⟨s2Step335EntryGvAfter,s2Step335FrontPair,(growRow 768 s2Step335EntryFFresh ++ (growRow 769 s2Step335EntryGFresh ++ (growRow 770 s2Step335EntryFvFresh ++ (growRow 771 s2Step335EntryGvFresh ++ [])))),s2Step335FrontSigmaArena,[786],s2Step335HeadGBefore,[877],
  s2Step335HeadFvAfter,s2Step335FrontHead,(growRow 769 s2Step335HeadGFresh ++ (growRow 768 s2Step335HeadFFresh ++ (growRow 771 s2Step335HeadGvFresh ++ (growRow 770 s2Step335HeadFvFresh ++ [])))),s2Step335F4Plan,s2Step335CounterDuring,s2Step335CounterWork,s2Step335ExitGvAfter,s2Step335FrontOut,(shrinkRow 769 s2Step335ExitGExtra ++ (shrinkRow 768 s2Step335ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step335ExitGvExtra ++ []))))⟩

private def s2Step335CompletePlan : HmrEarlyStepPlan := ⟨s2Step335FrontPlan,s2Step335EarlyControlArena,s2Step335EarlyControlPlan,s2Step335CompleteMoves⟩

private theorem s2Step335Complete_apart : List.Disjoint (s2Step335CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [786, 877, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] := by
  have nd : ((s2Step335CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[786, 877, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step335Complete_owned : (s2Step335CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step335EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step335EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<851) ∨ (852≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private def s2Step335CompleteMoveArena : Arena := ⟨s2Step335ExitGvAfter.live∪{615},Finset.union_subset s2Step335ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step335Complete_repack : s2Step335ExitGvAfter.checkRepack s2Step335CompleteMoves=some s2Step335EarlyControlArena := by
  have owned : 851∈s2Step335ExitGvAfter.live := by norm_num [s2Step335ExitGvAfter,arenaWires]
  have reserve : s2Step335ExitGvAfter.reserve {615}=some s2Step335CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step335ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step335CompleteMoveArena.retireSet {851}=s2Step335EarlyControlArena := by
    unfold Arena.retireSet s2Step335EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step335CompleteMoveArena,s2Step335ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step335CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step335CompleteMoveArena.retireSet {851}).checkRepack []=some s2Step335EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step335EarlyControl_branchOwned : ([877] : List Wire).toFinset⊆s2Step335EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step335EarlyControlSigmaArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<851) ∨ (852≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step335EarlyControl_branch : compileHmrBranchRetirement s2Step335EarlyControlSigmaArena 877=some s2Step335EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step335EarlyControl_branchOwned
  · ext q
    simp [s2Step335EarlyControlOutputArena,s2Step335EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step335EarlyControl_classEqualityBorrow : s2Step335EarlyControlPositiveArena.checkBorrow (([786, 784] : List Wire).length-1) s2Step335EarlyControlLog.classWork=some s2Step335EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step335EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step335EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step335EarlyControlEqualityArena,s2Step335EarlyControlPositiveArena,s2Step335EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step335EarlyControl_classEqualityOwned : ([786, 784] : List Wire).toFinset⊆s2Step335EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step335EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step335EarlyControl_classEquality : compileHmrEqualityLog s2Step335EarlyControlPositiveArena [786, 784] 0 s2Step335EarlyControlLog.classWork=some (s2Step335EarlyControlEqualityArena,s2Step335EarlyControlLog.classWork,s2Step335EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step335EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step335EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step335EarlyControl_classOwned : ([777, 827, 786] : List Wire).toFinset⊆s2Step335EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step335EarlyControlZeroArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step335EarlyControl_positiveBorrow : s2Step335EarlyControlZeroArena.checkBorrow (1) s2Step335EarlyControlLog.positiveWork=some s2Step335EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step335EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step335EarlyControlZeroArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step335EarlyControlPositiveArena,s2Step335EarlyControlZeroArena,s2Step335EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step335EarlyControl_class : compileHmrSourceClassLog s2Step335EarlyControlZeroArena false 777 s2Step335EarlyControlZeroPlan.top 0 786 s2Step335EarlyControlLog.positiveWork s2Step335EarlyControlLog.classWork=some s2Step335EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step335EarlyControlClassPlan s2Step335EarlyControlZeroArena false 777 s2Step335EarlyControlZeroPlan.top 0 786
  constructor
  · decide +kernel
  · exact s2Step335EarlyControl_classOwned
  · exact s2Step335EarlyControl_positiveBorrow
  · exact s2Step335EarlyControl_classEquality

private theorem s2Step335EarlyControl_entryRecordOwned : ([877, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step335EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step335EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<851) ∨ (852≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step335EarlyControl_entrySigmaOwned : ([786, 254] : List Wire).toFinset⊆s2Step335EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step335EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<851) ∨ (852≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step335EarlyControl_fitBorrow : s2Step335EarlyControlFlagArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step335EarlyControlLog.recordFresh=some s2Step335EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step335EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step335EarlyControlFlagArena (fun q => (0≤q ∧ q<914)) rfl
      decide +kernel
    · ext q
      simp [s2Step335EarlyControlFittedArena,s2Step335EarlyControlFlagArena,s2Step335EarlyControlLog,arenaWires]

private theorem s2Step335EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step335EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step335EarlyControlFlagArena (fun q => (0≤q ∧ q<914)) rfl
  decide +kernel

private theorem s2Step335EarlyControl_fit : compileHmrRecordGrowLog s2Step335EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step335EarlyControlLog.recordFresh=some s2Step335EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step335EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step335EarlyControl_fitBorrow

private theorem s2Step335EarlyControl_flagsBorrow : s2Step335EarlyControlEqualityArena.checkBorrow (6) s2Step335EarlyControlLog.flagWork=some s2Step335EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step335EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step335EarlyControlEqualityArena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step335EarlyControlFlagArena,s2Step335EarlyControlEqualityArena,s2Step335EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step335EarlyControl_flagsOwned : ([800, 253, 252, 251] : List Wire).toFinset⊆s2Step335EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step335EarlyControlEqualityArena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step335EarlyControl_flags : compileHmrFlagsLog s2Step335EarlyControlClassPlan.equalityArena s2Step335EarlyControlClassPlan.equality.top 253 252 251 s2Step335EarlyControlLog.flagWork=some s2Step335EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step335EarlyControl_flagsOwned⟩
  · exact s2Step335EarlyControl_flagsBorrow

private theorem s2Step335EarlyControl_historyBorrow : s2Step335EarlyControlArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step335EarlyControlLog.recordFresh=some s2Step335EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step335EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step335EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<851) ∨ (852≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step335EarlyControlHistoryArena,s2Step335EarlyControlArena,s2Step335EarlyControlLog,arenaWires]

private theorem s2Step335EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step335EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step335EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<851) ∨ (852≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step335EarlyControl_history : compileHmrRecordGrowLog s2Step335EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step335EarlyControlLog.recordFresh=some s2Step335EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step335EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step335EarlyControl_historyBorrow

private theorem s2Step335EarlyControl_sigmaOwned : ([254, 786] : List Wire).toFinset⊆s2Step335EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step335EarlyControlHistoryArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<851) ∨ (852≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step335EarlyControl_sigmaReleaseOwned : ([786] : List Wire).toFinset⊆s2Step335EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step335EarlyControlHistoryArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<851) ∨ (852≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step335EarlyControl_sigmaRelease : s2Step335EarlyControlHistoryArena.release {786} (fun _ => false)=some s2Step335EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step335EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step335EarlyControlSigmaArena,s2Step335EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step335EarlyControl_sigma : compileHmrSigmaDropLog s2Step335EarlyControlHistoryArena false 0 0 254 786 []=some s2Step335EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step335EarlyControl_sigmaOwned⟩
  · exact s2Step335EarlyControl_sigmaRelease

private theorem s2Step335EarlyControl_zeroBorrow : s2Step335EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step335EarlyControlLog.zeroWork=some s2Step335EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step335EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step335EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<851) ∨ (852≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step335EarlyControlZeroArena,s2Step335EarlyControlArena,s2Step335EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step335EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step335EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step335EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<851) ∨ (852≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step335EarlyControl_zero : compileHmrEqualityLog s2Step335EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step335EarlyControlLog.zeroWork=some (s2Step335EarlyControlZeroArena,s2Step335EarlyControlLog.zeroWork,s2Step335EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step335EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step335EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step335EarlyControl_logged : s2Step335EarlyControlPlan.Logged s2Step335EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 786 254 253 252 251 877 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step335EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step335EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step335EarlyControl_zero
  · exact s2Step335EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step335EarlyControl_flags
  · exact s2Step335EarlyControl_fit
  · exact s2Step335EarlyControl_history
  · exact s2Step335EarlyControl_sigma
  · exact s2Step335EarlyControl_branch

private theorem s2Step335EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step335EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 786 254 253 252 251 877 60 s2Step335EarlyControlLog=some s2Step335EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step335EarlyControlPlan s2Step335EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 786 254 253 252 251 877 60 s2Step335EarlyControl_logged

private def s2Step335EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step335EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615],768⟩

private def s2Step335EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829],770⟩

private def s2Step335EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102],769⟩

private def s2Step335EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834],771⟩

private def s2Step335FrontBank : WindowBank := ⟨s2Step335EntryFRow,s2Step335EntryGRow,s2Step335EntryFvRow,s2Step335EntryGvRow⟩

private def s2Step335Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 794, 768]

private def s2Step335Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 806, 827, 769]

private def s2Step335Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 770]

private def s2Step335Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 822, 771]

private theorem s2Step335Counter_apart : Disjoint s2Step335HeadFvAfter.live s2Step335CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step335HeadFvAfter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step335Counter_borrowed : s2Step335HeadFvAfter.checkBorrow 4 s2Step335CounterWork=some s2Step335CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step335HeadFvAfter s2Step335CounterDuring s2Step335CounterWork.toFinset s2Step335Counter_bounded s2Step335Counter_apart rfl

private theorem s2Step335Counter_owned : (786::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step335HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step335HeadFvAfter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step335Counter_checked : compileHmrCounterStepLog s2Step335HeadFvAfter true 786 [772, 773, 774, 775, 776, 777] s2Step335CounterWork=some s2Step335CounterDuring := by
  have owned : ∀q∈786::[772, 773, 774, 775, 776, 777],q∈s2Step335HeadFvAfter.live := fun q hq => s2Step335Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step335Counter_borrowed

private def s2Step335EntryFAfter : Arena := s2Step335EntryFBefore

private theorem s2Step335EntryBank_incomingDistinct : ([s2Step335EntryFRow,s2Step335EntryGRow,s2Step335EntryFvRow,s2Step335EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step335EntryF_Incoming : rowsOwned s2Step335EntryFBefore [s2Step335EntryFRow,s2Step335EntryGRow,s2Step335EntryFvRow,s2Step335EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step335EntryFRow,s2Step335EntryGRow,s2Step335EntryFvRow,s2Step335EntryGvRow] 0 s2Step335EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step335EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step335EntryBank_outgoingOwned : rowsOwned s2Step335EntryGvAfter [s2Step335EntryFOut,s2Step335EntryGOut,s2Step335EntryFvOut,s2Step335EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step335EntryGvAfter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step335EntryF_Outgoing : rowsOwned s2Step335EntryGvAfter [s2Step335EntryFOut,s2Step335EntryGOut,s2Step335EntryFvOut,s2Step335EntryGvOut] :=
  hmrRows_owned_drop s2Step335EntryGvAfter [s2Step335EntryFOut,s2Step335EntryGOut,s2Step335EntryFvOut,s2Step335EntryGvOut] 0 s2Step335EntryBank_outgoingOwned

private theorem s2Step335EntryF_distinct : (s2Step335EntryFRow.sign::s2Step335EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step335EntryF_owned : (s2Step335EntryFRow.sign::s2Step335EntryFRow.payload).toFinset⊆s2Step335EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step335EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step335EntryF_reserved : s2Step335EntryFBefore.reserve s2Step335EntryFFresh.toFinset=some s2Step335EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step335EntryFFresh,arenaWires]
  · norm_num [s2Step335EntryFBefore,s2Step335EntryFFresh,arenaWires]
  · simp only [s2Step335EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step335EntryF_checked : planRowResizeLog s2Step335EntryFBefore s2Step335EntryFRow 104 s2Step335EntryFFresh=
    some (s2Step335EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615],768⟩,growRow 768 s2Step335EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step335EntryFBefore s2Step335EntryFAfter s2Step335EntryFRow 104 s2Step335EntryFFresh
    s2Step335EntryF_distinct s2Step335EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step335EntryF_reserved
  have rowEq : WindowRow.mk (s2Step335EntryFRow.payload++s2Step335EntryFFresh) s2Step335EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step335EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step335EntryFvAfter : Arena := s2Step335EntryGAfter

private def s2Step335EntryFvBefore : Arena := s2Step335EntryGAfter

private theorem s2Step335EntryFv_Incoming : rowsOwned s2Step335EntryFvBefore [s2Step335EntryFvRow,s2Step335EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step335EntryFRow,s2Step335EntryGRow,s2Step335EntryFvRow,s2Step335EntryGvRow] 2 s2Step335EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step335EntryFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step335EntryFv_Outgoing : rowsOwned s2Step335EntryGvAfter [s2Step335EntryFvOut,s2Step335EntryGvOut] :=
  hmrRows_owned_drop s2Step335EntryGvAfter [s2Step335EntryFOut,s2Step335EntryGOut,s2Step335EntryFvOut,s2Step335EntryGvOut] 2 s2Step335EntryBank_outgoingOwned

private theorem s2Step335EntryFv_distinct : (s2Step335EntryFvRow.sign::s2Step335EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step335EntryFv_owned : (s2Step335EntryFvRow.sign::s2Step335EntryFvRow.payload).toFinset⊆s2Step335EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step335EntryFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step335EntryFv_reserved : s2Step335EntryFvBefore.reserve s2Step335EntryFvFresh.toFinset=some s2Step335EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step335EntryFvFresh,arenaWires]
  · norm_num [s2Step335EntryFvBefore,s2Step335EntryGAfter,s2Step335EntryFvFresh,arenaWires]
  · simp only [s2Step335EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step335EntryFv_checked : planRowResizeLog s2Step335EntryFvBefore s2Step335EntryFvRow 183 s2Step335EntryFvFresh=
    some (s2Step335EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829],770⟩,growRow 770 s2Step335EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step335EntryFvBefore s2Step335EntryFvAfter s2Step335EntryFvRow 183 s2Step335EntryFvFresh
    s2Step335EntryFv_distinct s2Step335EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step335EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step335EntryFvRow.payload++s2Step335EntryFvFresh) s2Step335EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step335EntryGBefore : Arena := s2Step335EntryFBefore

private theorem s2Step335EntryG_Incoming : rowsOwned s2Step335EntryGBefore [s2Step335EntryGRow,s2Step335EntryFvRow,s2Step335EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step335EntryFRow,s2Step335EntryGRow,s2Step335EntryFvRow,s2Step335EntryGvRow] 1 s2Step335EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step335EntryGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step335EntryG_Outgoing : rowsOwned s2Step335EntryGvAfter [s2Step335EntryGOut,s2Step335EntryFvOut,s2Step335EntryGvOut] :=
  hmrRows_owned_drop s2Step335EntryGvAfter [s2Step335EntryFOut,s2Step335EntryGOut,s2Step335EntryFvOut,s2Step335EntryGvOut] 1 s2Step335EntryBank_outgoingOwned

private theorem s2Step335EntryG_distinct : (s2Step335EntryGRow.sign::s2Step335EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step335EntryG_owned : (s2Step335EntryGRow.sign::s2Step335EntryGRow.payload).toFinset⊆s2Step335EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step335EntryGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step335EntryG_reserved : s2Step335EntryGBefore.reserve s2Step335EntryGFresh.toFinset=some s2Step335EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step335EntryGFresh,arenaWires]
  · norm_num [s2Step335EntryGBefore,s2Step335EntryFBefore,s2Step335EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step335EntryGAfter,s2Step335EntryGBefore,s2Step335EntryFBefore,s2Step335EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step335EntryG_checked : planRowResizeLog s2Step335EntryGBefore s2Step335EntryGRow 104 s2Step335EntryGFresh=
    some (s2Step335EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 806],769⟩,growRow 769 s2Step335EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step335EntryGBefore s2Step335EntryGAfter s2Step335EntryGRow 104 s2Step335EntryGFresh
    s2Step335EntryG_distinct s2Step335EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step335EntryG_reserved
  have rowEq : WindowRow.mk (s2Step335EntryGRow.payload++s2Step335EntryGFresh) s2Step335EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 806],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step335EntryGvBefore : Arena := s2Step335EntryGAfter

private theorem s2Step335EntryGv_Incoming : rowsOwned s2Step335EntryGvBefore [s2Step335EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step335EntryFRow,s2Step335EntryGRow,s2Step335EntryFvRow,s2Step335EntryGvRow] 3 s2Step335EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step335EntryGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step335EntryGv_Outgoing : rowsOwned s2Step335EntryGvAfter [s2Step335EntryGvOut] :=
  hmrRows_owned_drop s2Step335EntryGvAfter [s2Step335EntryFOut,s2Step335EntryGOut,s2Step335EntryFvOut,s2Step335EntryGvOut] 3 s2Step335EntryBank_outgoingOwned

private theorem s2Step335EntryGv_distinct : (s2Step335EntryGvRow.sign::s2Step335EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step335EntryGv_owned : (s2Step335EntryGvRow.sign::s2Step335EntryGvRow.payload).toFinset⊆s2Step335EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step335EntryGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step335EntryGv_reserved : s2Step335EntryGvBefore.reserve s2Step335EntryGvFresh.toFinset=some s2Step335EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step335EntryGvFresh,arenaWires]
  · norm_num [s2Step335EntryGvBefore,s2Step335EntryGAfter,s2Step335EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step335EntryGvAfter,s2Step335EntryGvBefore,s2Step335EntryGAfter,s2Step335EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step335EntryGv_checked : planRowResizeLog s2Step335EntryGvBefore s2Step335EntryGvRow 183 s2Step335EntryGvFresh=
    some (s2Step335EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816],771⟩,growRow 771 s2Step335EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step335EntryGvBefore s2Step335EntryGvAfter s2Step335EntryGvRow 183 s2Step335EntryGvFresh
    s2Step335EntryGv_distinct s2Step335EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step335EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step335EntryGvRow.payload++s2Step335EntryGvFresh) s2Step335EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step335EntryBank_rows : planWindowRowsLog s2Step335EntryFBefore [(s2Step335EntryFRow,104),(s2Step335EntryGRow,104),(s2Step335EntryFvRow,183),(s2Step335EntryGvRow,183)] [s2Step335EntryFFresh,s2Step335EntryGFresh,s2Step335EntryFvFresh,s2Step335EntryGvFresh]=
    some (s2Step335EntryGvAfter,[s2Step335EntryFOut,s2Step335EntryGOut,s2Step335EntryFvOut,s2Step335EntryGvOut],(growRow 768 s2Step335EntryFFresh ++ (growRow 769 s2Step335EntryGFresh ++ (growRow 770 s2Step335EntryFvFresh ++ (growRow 771 s2Step335EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step335EntryGvAfter [] []=some (s2Step335EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step335EntryGvBefore s2Step335EntryGvAfter s2Step335EntryGvAfter
    s2Step335EntryGvRow s2Step335EntryGvOut 183 s2Step335EntryGvFresh [] [] []
    (growRow 771 s2Step335EntryGvFresh) ([]) s2Step335EntryGv_Incoming s2Step335EntryGv_checked h4 s2Step335EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step335EntryFvBefore s2Step335EntryFvAfter s2Step335EntryGvAfter
    s2Step335EntryFvRow s2Step335EntryFvOut 183 s2Step335EntryFvFresh [(s2Step335EntryGvRow,183)] [s2Step335EntryGvFresh] [s2Step335EntryGvOut]
    (growRow 770 s2Step335EntryFvFresh) ((growRow 771 s2Step335EntryGvFresh ++ [])) s2Step335EntryFv_Incoming s2Step335EntryFv_checked h3 s2Step335EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step335EntryGBefore s2Step335EntryGAfter s2Step335EntryGvAfter
    s2Step335EntryGRow s2Step335EntryGOut 104 s2Step335EntryGFresh [(s2Step335EntryFvRow,183),(s2Step335EntryGvRow,183)] [s2Step335EntryFvFresh,s2Step335EntryGvFresh] [s2Step335EntryFvOut,s2Step335EntryGvOut]
    (growRow 769 s2Step335EntryGFresh) ((growRow 770 s2Step335EntryFvFresh ++ (growRow 771 s2Step335EntryGvFresh ++ []))) s2Step335EntryG_Incoming s2Step335EntryG_checked h2 s2Step335EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step335EntryFBefore s2Step335EntryFAfter s2Step335EntryGvAfter
    s2Step335EntryFRow s2Step335EntryFOut 104 s2Step335EntryFFresh [(s2Step335EntryGRow,104),(s2Step335EntryFvRow,183),(s2Step335EntryGvRow,183)] [s2Step335EntryGFresh,s2Step335EntryFvFresh,s2Step335EntryGvFresh] [s2Step335EntryGOut,s2Step335EntryFvOut,s2Step335EntryGvOut]
    (growRow 768 s2Step335EntryFFresh) ((growRow 769 s2Step335EntryGFresh ++ (growRow 770 s2Step335EntryFvFresh ++ (growRow 771 s2Step335EntryGvFresh ++ [])))) s2Step335EntryF_Incoming s2Step335EntryF_checked h1 s2Step335EntryF_Outgoing
  exact h0

private theorem s2Step335EntryBank_checked : compileHmrBankResizeLog .entry s2Step335EntryFBefore ⟨s2Step335EntryFRow,s2Step335EntryGRow,s2Step335EntryFvRow,s2Step335EntryGvRow⟩ ⟨104,104,183,183⟩ [s2Step335EntryFFresh,s2Step335EntryGFresh,s2Step335EntryFvFresh,s2Step335EntryGvFresh]=
    some (s2Step335EntryGvAfter,⟨s2Step335EntryFOut,s2Step335EntryGOut,s2Step335EntryFvOut,s2Step335EntryGvOut⟩,(growRow 768 s2Step335EntryFFresh ++ (growRow 769 s2Step335EntryGFresh ++ (growRow 770 s2Step335EntryFvFresh ++ (growRow 771 s2Step335EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step335EntryBank_rows]
  rfl

private def s2Step335ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<615) ∨ (616≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step335ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step335ExitFBefore : Arena := s2Step335ExitGAfter

private def s2Step335ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 794],768⟩

private def s2Step335ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779],770⟩

private def s2Step335ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 806, 827],769⟩

private def s2Step335ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 822],771⟩

private theorem s2Step335ExitBank_incomingDistinct : ([s2Step335ExitGRow,s2Step335ExitFRow,s2Step335ExitFvRow,s2Step335ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step335ExitF_Incoming : rowsOwned s2Step335ExitFBefore [s2Step335ExitFRow,s2Step335ExitFvRow,s2Step335ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step335ExitGRow,s2Step335ExitFRow,s2Step335ExitFvRow,s2Step335ExitGvRow] 1 s2Step335ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step335ExitFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step335ExitBank_outgoingOwned : rowsOwned s2Step335ExitGvAfter [s2Step335ExitGOut,s2Step335ExitFOut,s2Step335ExitFvOut,s2Step335ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step335ExitGvAfter (fun q => (0≤q ∧ q<615) ∨ (616≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step335ExitF_Outgoing : rowsOwned s2Step335ExitGvAfter [s2Step335ExitFOut,s2Step335ExitFvOut,s2Step335ExitGvOut] :=
  hmrRows_owned_drop s2Step335ExitGvAfter [s2Step335ExitGOut,s2Step335ExitFOut,s2Step335ExitFvOut,s2Step335ExitGvOut] 1 s2Step335ExitBank_outgoingOwned

private theorem s2Step335ExitF_distinct : (s2Step335ExitFRow.sign::s2Step335ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step335ExitF_owned : (s2Step335ExitFRow.sign::s2Step335ExitFRow.payload).toFinset⊆s2Step335ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step335ExitFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step335ExitF_retired : s2Step335ExitFBefore.retireSet s2Step335ExitFExtra.toFinset=s2Step335ExitFAfter := by
  unfold Arena.retireSet s2Step335ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step335ExitFBefore,s2Step335ExitGAfter,s2Step335ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step335ExitF_checked : planRowResizeLog s2Step335ExitFBefore s2Step335ExitFRow 103 []=
    some (s2Step335ExitFAfter,s2Step335ExitFOut,shrinkRow 768 s2Step335ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step335ExitFBefore s2Step335ExitFRow 103 s2Step335ExitF_distinct s2Step335ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step335ExitFRow.payload.take 103) s2Step335ExitFRow.sign=s2Step335ExitFOut := by decide +kernel
  have hi : s2Step335ExitFRow.payload.drop 103=s2Step335ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step335ExitF_retired] at result
  exact result

private def s2Step335ExitFvAfter : Arena := s2Step335ExitFAfter

private def s2Step335ExitFvBefore : Arena := s2Step335ExitFAfter

private theorem s2Step335ExitFv_Incoming : rowsOwned s2Step335ExitFvBefore [s2Step335ExitFvRow,s2Step335ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step335ExitGRow,s2Step335ExitFRow,s2Step335ExitFvRow,s2Step335ExitGvRow] 2 s2Step335ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step335ExitFvBefore (fun q => (0≤q ∧ q<615) ∨ (616≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step335ExitFv_Outgoing : rowsOwned s2Step335ExitGvAfter [s2Step335ExitFvOut,s2Step335ExitGvOut] :=
  hmrRows_owned_drop s2Step335ExitGvAfter [s2Step335ExitGOut,s2Step335ExitFOut,s2Step335ExitFvOut,s2Step335ExitGvOut] 2 s2Step335ExitBank_outgoingOwned

private theorem s2Step335ExitFv_distinct : (s2Step335ExitFvRow.sign::s2Step335ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step335ExitFv_owned : (s2Step335ExitFvRow.sign::s2Step335ExitFvRow.payload).toFinset⊆s2Step335ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step335ExitFvBefore (fun q => (0≤q ∧ q<615) ∨ (616≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step335ExitFv_reserved : s2Step335ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step335ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step335ExitFv_checked : planRowResizeLog s2Step335ExitFvBefore s2Step335ExitFvRow 184 []=
    some (s2Step335ExitFvAfter,s2Step335ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step335ExitFvBefore s2Step335ExitFvAfter s2Step335ExitFvRow 184 []
    s2Step335ExitFv_distinct s2Step335ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step335ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step335ExitFvRow.payload++[]) s2Step335ExitFvRow.sign=s2Step335ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step335ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private theorem s2Step335ExitG_Incoming : rowsOwned s2Step335ExitGBefore [s2Step335ExitGRow,s2Step335ExitFRow,s2Step335ExitFvRow,s2Step335ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step335ExitGRow,s2Step335ExitFRow,s2Step335ExitFvRow,s2Step335ExitGvRow] 0 s2Step335ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step335ExitGBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step335ExitG_Outgoing : rowsOwned s2Step335ExitGvAfter [s2Step335ExitGOut,s2Step335ExitFOut,s2Step335ExitFvOut,s2Step335ExitGvOut] :=
  hmrRows_owned_drop s2Step335ExitGvAfter [s2Step335ExitGOut,s2Step335ExitFOut,s2Step335ExitFvOut,s2Step335ExitGvOut] 0 s2Step335ExitBank_outgoingOwned

private theorem s2Step335ExitG_distinct : (s2Step335ExitGRow.sign::s2Step335ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step335ExitG_owned : (s2Step335ExitGRow.sign::s2Step335ExitGRow.payload).toFinset⊆s2Step335ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step335ExitGBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step335ExitG_retired : s2Step335ExitGBefore.retireSet s2Step335ExitGExtra.toFinset=s2Step335ExitGAfter := by
  unfold Arena.retireSet s2Step335ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step335ExitGBefore,s2Step335ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step335ExitG_checked : planRowResizeLog s2Step335ExitGBefore s2Step335ExitGRow 103 []=
    some (s2Step335ExitGAfter,s2Step335ExitGOut,shrinkRow 769 s2Step335ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step335ExitGBefore s2Step335ExitGRow 103 s2Step335ExitG_distinct s2Step335ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step335ExitGRow.payload.take 103) s2Step335ExitGRow.sign=s2Step335ExitGOut := by decide +kernel
  have hi : s2Step335ExitGRow.payload.drop 103=s2Step335ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step335ExitG_retired] at result
  exact result

private def s2Step335ExitGvBefore : Arena := s2Step335ExitFAfter

private theorem s2Step335ExitGv_Incoming : rowsOwned s2Step335ExitGvBefore [s2Step335ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step335ExitGRow,s2Step335ExitFRow,s2Step335ExitFvRow,s2Step335ExitGvRow] 3 s2Step335ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step335ExitGvBefore (fun q => (0≤q ∧ q<615) ∨ (616≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step335ExitGv_Outgoing : rowsOwned s2Step335ExitGvAfter [s2Step335ExitGvOut] :=
  hmrRows_owned_drop s2Step335ExitGvAfter [s2Step335ExitGOut,s2Step335ExitFOut,s2Step335ExitFvOut,s2Step335ExitGvOut] 3 s2Step335ExitBank_outgoingOwned

private theorem s2Step335ExitGv_distinct : (s2Step335ExitGvRow.sign::s2Step335ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step335ExitGv_owned : (s2Step335ExitGvRow.sign::s2Step335ExitGvRow.payload).toFinset⊆s2Step335ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step335ExitGvBefore (fun q => (0≤q ∧ q<615) ∨ (616≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step335ExitGv_retired : s2Step335ExitGvBefore.retireSet s2Step335ExitGvExtra.toFinset=s2Step335ExitGvAfter := by
  unfold Arena.retireSet s2Step335ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step335ExitGvBefore,s2Step335ExitFAfter,s2Step335ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step335ExitGv_checked : planRowResizeLog s2Step335ExitGvBefore s2Step335ExitGvRow 183 []=
    some (s2Step335ExitGvAfter,s2Step335ExitGvOut,shrinkRow 771 s2Step335ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step335ExitGvBefore s2Step335ExitGvRow 183 s2Step335ExitGv_distinct s2Step335ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step335ExitGvRow.payload.take 183) s2Step335ExitGvRow.sign=s2Step335ExitGvOut := by decide +kernel
  have hi : s2Step335ExitGvRow.payload.drop 183=s2Step335ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step335ExitGv_retired] at result
  exact result

private theorem s2Step335ExitBank_rows : planWindowRowsLog s2Step335ExitGBefore [(s2Step335ExitGRow,103),(s2Step335ExitFRow,103),(s2Step335ExitFvRow,184),(s2Step335ExitGvRow,183)] [[],[],[],[]]=
    some (s2Step335ExitGvAfter,[s2Step335ExitGOut,s2Step335ExitFOut,s2Step335ExitFvOut,s2Step335ExitGvOut],(shrinkRow 769 s2Step335ExitGExtra ++ (shrinkRow 768 s2Step335ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step335ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step335ExitGvAfter [] []=some (s2Step335ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step335ExitGvBefore s2Step335ExitGvAfter s2Step335ExitGvAfter
    s2Step335ExitGvRow s2Step335ExitGvOut 183 [] [] [] []
    (shrinkRow 771 s2Step335ExitGvExtra) ([]) s2Step335ExitGv_Incoming s2Step335ExitGv_checked h4 s2Step335ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step335ExitFvBefore s2Step335ExitFvAfter s2Step335ExitGvAfter
    s2Step335ExitFvRow s2Step335ExitFvOut 184 [] [(s2Step335ExitGvRow,183)] [[]] [s2Step335ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step335ExitGvExtra ++ [])) s2Step335ExitFv_Incoming s2Step335ExitFv_checked h3 s2Step335ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step335ExitFBefore s2Step335ExitFAfter s2Step335ExitGvAfter
    s2Step335ExitFRow s2Step335ExitFOut 103 [] [(s2Step335ExitFvRow,184),(s2Step335ExitGvRow,183)] [[],[]] [s2Step335ExitFvOut,s2Step335ExitGvOut]
    (shrinkRow 768 s2Step335ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step335ExitGvExtra ++ []))) s2Step335ExitF_Incoming s2Step335ExitF_checked h2 s2Step335ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step335ExitGBefore s2Step335ExitGAfter s2Step335ExitGvAfter
    s2Step335ExitGRow s2Step335ExitGOut 103 [] [(s2Step335ExitFRow,103),(s2Step335ExitFvRow,184),(s2Step335ExitGvRow,183)] [[],[],[]] [s2Step335ExitFOut,s2Step335ExitFvOut,s2Step335ExitGvOut]
    (shrinkRow 769 s2Step335ExitGExtra) ((shrinkRow 768 s2Step335ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step335ExitGvExtra ++ [])))) s2Step335ExitG_Incoming s2Step335ExitG_checked h1 s2Step335ExitG_Outgoing
  exact h0

private theorem s2Step335ExitBank_checked : compileHmrBankResizeLog .exit s2Step335ExitGBefore ⟨s2Step335ExitFRow,s2Step335ExitGRow,s2Step335ExitFvRow,s2Step335ExitGvRow⟩ ⟨103,103,184,183⟩ [[],[],[],[]]=
    some (s2Step335ExitGvAfter,⟨s2Step335ExitFOut,s2Step335ExitGOut,s2Step335ExitFvOut,s2Step335ExitGvOut⟩,(shrinkRow 769 s2Step335ExitGExtra ++ (shrinkRow 768 s2Step335ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step335ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step335ExitBank_rows]
  rfl

private theorem s2Step335Add0_apart : Disjoint s2Step335Add0Arena.live s2Step335Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step335Add0Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step335Add0_card : s2Step335Add0Arena.live.card=908 := by
  decide +kernel

private theorem s2Step335Add0_borrowed : s2Step335Add0Arena.checkBorrow (hmrHybridCount s2Step335Add0Arena s2Step335Add0B.length) s2Step335Add0Work=some s2Step335Add0During := by
  have len : s2Step335Add0Work.length=hmrHybridCount s2Step335Add0Arena s2Step335Add0B.length := by
    rw [hmrHybridCount,s2Step335Add0_card]
    decide +kernel
  have nd : s2Step335Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step335Add0Arena s2Step335Add0During s2Step335Add0Work.toFinset s2Step335Add0_bounded s2Step335Add0_apart rfl

private theorem s2Step335Add0_distinct : (784::877::800::(s2Step335Add0A++s2Step335Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step335Add0_owned : (784::877::800::(s2Step335Add0A++s2Step335Add0B)).toFinset⊆s2Step335Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step335Add0Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step335Add0_checked : compileHmrHybridCinLog s2Step335Add0Arena 877 784 800 s2Step335Add0A s2Step335Add0B s2Step335Add0Work=some s2Step335Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step335Add0Arena s2Step335Add0During 877 784 800 s2Step335Add0A s2Step335Add0B s2Step335Add0Work
    (by decide +kernel) (by decide +kernel) s2Step335Add0_distinct
    (fun q hq => s2Step335Add0_owned (List.mem_toFinset.mpr hq)) s2Step335Add0_borrowed

private theorem s2Step335Add1_apart : Disjoint s2Step335Add1Arena.live s2Step335Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step335Add1Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step335Add1_card : s2Step335Add1Arena.live.card=908 := by
  decide +kernel

private theorem s2Step335Add1_borrowed : s2Step335Add1Arena.checkBorrow (hmrHybridCount s2Step335Add1Arena s2Step335Add1B.length) s2Step335Add1Work=some s2Step335Add1During := by
  have len : s2Step335Add1Work.length=hmrHybridCount s2Step335Add1Arena s2Step335Add1B.length := by
    rw [hmrHybridCount,s2Step335Add1_card]
    decide +kernel
  have nd : s2Step335Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step335Add1Arena s2Step335Add1During s2Step335Add1Work.toFinset s2Step335Add1_bounded s2Step335Add1_apart rfl

private theorem s2Step335Add1_distinct : (784::877::800::(s2Step335Add1A++s2Step335Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step335Add1_owned : (784::877::800::(s2Step335Add1A++s2Step335Add1B)).toFinset⊆s2Step335Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step335Add1Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step335Add1_checked : compileHmrHybridCinLog s2Step335Add1Arena 877 784 800 s2Step335Add1A s2Step335Add1B s2Step335Add1Work=some s2Step335Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step335Add1Arena s2Step335Add1During 877 784 800 s2Step335Add1A s2Step335Add1B s2Step335Add1Work
    (by decide +kernel) (by decide +kernel) s2Step335Add1_distinct
    (fun q hq => s2Step335Add1_owned (List.mem_toFinset.mpr hq)) s2Step335Add1_borrowed

private theorem s2Step335F4_apart : Disjoint (s2Step335Add0A++s2Step335Add0B).toFinset (s2Step335Add1A++s2Step335Add1B).toFinset := by
  have nd : ((s2Step335Add0A++s2Step335Add0B)++(s2Step335Add1A++s2Step335Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step335F4_carry : s2Step335F4FlagArena.checkBorrow 1 [800]=some s2Step335Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step335F4FlagArena,s2Step335HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step335F4FlagArena,s2Step335HeadFvAfter,s2Step335Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step335F4_distinct : (786::877::784::800::((s2Step335Add0A++s2Step335Add1A)++(s2Step335Add0B++s2Step335Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step335F4_flag : s2Step335HeadFvAfter.checkBorrow 1 [784]=some s2Step335F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step335HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step335F4_owned : (786::877::((s2Step335Add0A++s2Step335Add1A)++(s2Step335Add0B++s2Step335Add1B))).toFinset⊆s2Step335HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step335HeadFvAfter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step335F4_checked : compileHmrHybridF4Log s2Step335HeadFvAfter 786 877 s2Step335Add0A s2Step335Add0B s2Step335Add1A s2Step335Add1B [784] [800] s2Step335Add0Work s2Step335Add1Work=some s2Step335F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step335HeadFvAfter s2Step335F4FlagArena s2Step335Add0Arena s2Step335Add0During s2Step335Add1During 786 877
    s2Step335Add0A s2Step335Add0B s2Step335Add1A s2Step335Add1B [784] [800] s2Step335Add0Work s2Step335Add1Work
    (fun q hq => s2Step335F4_owned (List.mem_toFinset.mpr hq)) s2Step335F4_flag s2Step335F4_carry
    s2Step335F4_distinct s2Step335F4_apart s2Step335Add0_checked s2Step335Add1_checked

private theorem s2Step335Front_branch : s2Step335FrontSigmaArena.checkBorrow 1 [877]=some s2Step335HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step335FrontSigmaArena,s2Step335EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step335FrontSigmaArena,s2Step335EntryGvAfter,s2Step335HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step335Front_entry : HmrFrontEntryValid s2Step335EntryFBefore s2Step335FrontBank 104 183 ⟨103,103,184,183⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step335FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step335EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step335EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step335FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step335Front_sigma : s2Step335EntryGvAfter.checkBorrow 1 [786]=some s2Step335FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step335EntryGvAfter,arenaWires]
  · rfl

private def s2Step335HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<822) ∨ (823≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step335HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<822) ∨ (823≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step335HeadFBefore : Arena := s2Step335HeadGAfter

private def s2Step335HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615],768⟩

private def s2Step335HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829],770⟩

private def s2Step335HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 806],769⟩

private def s2Step335HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816],771⟩

private theorem s2Step335HeadBank_incomingDistinct : ([s2Step335HeadGRow,s2Step335HeadFRow,s2Step335HeadGvRow,s2Step335HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step335HeadF_Incoming : rowsOwned s2Step335HeadFBefore [s2Step335HeadFRow,s2Step335HeadGvRow,s2Step335HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step335HeadGRow,s2Step335HeadFRow,s2Step335HeadGvRow,s2Step335HeadFvRow] 1 s2Step335HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step335HeadFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<822) ∨ (823≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step335HeadBank_outgoingOwned : rowsOwned s2Step335HeadFvAfter [s2Step335HeadGOut,s2Step335HeadFOut,s2Step335HeadGvOut,s2Step335HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step335HeadFvAfter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step335HeadF_Outgoing : rowsOwned s2Step335HeadFvAfter [s2Step335HeadFOut,s2Step335HeadGvOut,s2Step335HeadFvOut] :=
  hmrRows_owned_drop s2Step335HeadFvAfter [s2Step335HeadGOut,s2Step335HeadFOut,s2Step335HeadGvOut,s2Step335HeadFvOut] 1 s2Step335HeadBank_outgoingOwned

private theorem s2Step335HeadF_distinct : (s2Step335HeadFRow.sign::s2Step335HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step335HeadF_owned : (s2Step335HeadFRow.sign::s2Step335HeadFRow.payload).toFinset⊆s2Step335HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step335HeadFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<822) ∨ (823≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step335HeadF_reserved : s2Step335HeadFBefore.reserve s2Step335HeadFFresh.toFinset=some s2Step335HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step335HeadFFresh,arenaWires]
  · norm_num [s2Step335HeadFBefore,s2Step335HeadGAfter,s2Step335HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step335HeadFAfter,s2Step335HeadFBefore,s2Step335HeadGAfter,s2Step335HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step335HeadF_checked : planRowResizeLog s2Step335HeadFBefore s2Step335HeadFRow 105 s2Step335HeadFFresh=
    some (s2Step335HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 794],768⟩,growRow 768 s2Step335HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step335HeadFBefore s2Step335HeadFAfter s2Step335HeadFRow 105 s2Step335HeadFFresh
    s2Step335HeadF_distinct s2Step335HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step335HeadF_reserved
  have rowEq : WindowRow.mk (s2Step335HeadFRow.payload++s2Step335HeadFFresh) s2Step335HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 794],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step335HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step335HeadFvBefore : Arena := s2Step335HeadGvAfter

private theorem s2Step335HeadFv_Incoming : rowsOwned s2Step335HeadFvBefore [s2Step335HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step335HeadGRow,s2Step335HeadFRow,s2Step335HeadGvRow,s2Step335HeadFvRow] 3 s2Step335HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step335HeadFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step335HeadFv_Outgoing : rowsOwned s2Step335HeadFvAfter [s2Step335HeadFvOut] :=
  hmrRows_owned_drop s2Step335HeadFvAfter [s2Step335HeadGOut,s2Step335HeadFOut,s2Step335HeadGvOut,s2Step335HeadFvOut] 3 s2Step335HeadBank_outgoingOwned

private theorem s2Step335HeadFv_distinct : (s2Step335HeadFvRow.sign::s2Step335HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step335HeadFv_owned : (s2Step335HeadFvRow.sign::s2Step335HeadFvRow.payload).toFinset⊆s2Step335HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step335HeadFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step335HeadFv_reserved : s2Step335HeadFvBefore.reserve s2Step335HeadFvFresh.toFinset=some s2Step335HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step335HeadFvFresh,arenaWires]
  · norm_num [s2Step335HeadFvBefore,s2Step335HeadGvAfter,s2Step335HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step335HeadFvAfter,s2Step335HeadFvBefore,s2Step335HeadGvAfter,s2Step335HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step335HeadFv_checked : planRowResizeLog s2Step335HeadFvBefore s2Step335HeadFvRow 184 s2Step335HeadFvFresh=
    some (s2Step335HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779],770⟩,growRow 770 s2Step335HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step335HeadFvBefore s2Step335HeadFvAfter s2Step335HeadFvRow 184 s2Step335HeadFvFresh
    s2Step335HeadFv_distinct s2Step335HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step335HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step335HeadFvRow.payload++s2Step335HeadFvFresh) s2Step335HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step335HeadG_Incoming : rowsOwned s2Step335HeadGBefore [s2Step335HeadGRow,s2Step335HeadFRow,s2Step335HeadGvRow,s2Step335HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step335HeadGRow,s2Step335HeadFRow,s2Step335HeadGvRow,s2Step335HeadFvRow] 0 s2Step335HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step335HeadGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step335HeadG_Outgoing : rowsOwned s2Step335HeadFvAfter [s2Step335HeadGOut,s2Step335HeadFOut,s2Step335HeadGvOut,s2Step335HeadFvOut] :=
  hmrRows_owned_drop s2Step335HeadFvAfter [s2Step335HeadGOut,s2Step335HeadFOut,s2Step335HeadGvOut,s2Step335HeadFvOut] 0 s2Step335HeadBank_outgoingOwned

private theorem s2Step335HeadG_distinct : (s2Step335HeadGRow.sign::s2Step335HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step335HeadG_owned : (s2Step335HeadGRow.sign::s2Step335HeadGRow.payload).toFinset⊆s2Step335HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step335HeadGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step335HeadG_reserved : s2Step335HeadGBefore.reserve s2Step335HeadGFresh.toFinset=some s2Step335HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step335HeadGFresh,arenaWires]
  · norm_num [s2Step335HeadGBefore,s2Step335HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step335HeadGAfter,s2Step335HeadGBefore,s2Step335HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step335HeadG_checked : planRowResizeLog s2Step335HeadGBefore s2Step335HeadGRow 105 s2Step335HeadGFresh=
    some (s2Step335HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 806, 827],769⟩,growRow 769 s2Step335HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step335HeadGBefore s2Step335HeadGAfter s2Step335HeadGRow 105 s2Step335HeadGFresh
    s2Step335HeadG_distinct s2Step335HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step335HeadG_reserved
  have rowEq : WindowRow.mk (s2Step335HeadGRow.payload++s2Step335HeadGFresh) s2Step335HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 806, 827],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step335HeadGvBefore : Arena := s2Step335HeadFAfter

private theorem s2Step335HeadGv_Incoming : rowsOwned s2Step335HeadGvBefore [s2Step335HeadGvRow,s2Step335HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step335HeadGRow,s2Step335HeadFRow,s2Step335HeadGvRow,s2Step335HeadFvRow] 2 s2Step335HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step335HeadGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<822) ∨ (823≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step335HeadGv_Outgoing : rowsOwned s2Step335HeadFvAfter [s2Step335HeadGvOut,s2Step335HeadFvOut] :=
  hmrRows_owned_drop s2Step335HeadFvAfter [s2Step335HeadGOut,s2Step335HeadFOut,s2Step335HeadGvOut,s2Step335HeadFvOut] 2 s2Step335HeadBank_outgoingOwned

private theorem s2Step335HeadGv_distinct : (s2Step335HeadGvRow.sign::s2Step335HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step335HeadGv_owned : (s2Step335HeadGvRow.sign::s2Step335HeadGvRow.payload).toFinset⊆s2Step335HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step335HeadGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<822) ∨ (823≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step335HeadGv_reserved : s2Step335HeadGvBefore.reserve s2Step335HeadGvFresh.toFinset=some s2Step335HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step335HeadGvFresh,arenaWires]
  · norm_num [s2Step335HeadGvBefore,s2Step335HeadFAfter,s2Step335HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step335HeadGvAfter,s2Step335HeadGvBefore,s2Step335HeadFAfter,s2Step335HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step335HeadGv_checked : planRowResizeLog s2Step335HeadGvBefore s2Step335HeadGvRow 184 s2Step335HeadGvFresh=
    some (s2Step335HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 822],771⟩,growRow 771 s2Step335HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step335HeadGvBefore s2Step335HeadGvAfter s2Step335HeadGvRow 184 s2Step335HeadGvFresh
    s2Step335HeadGv_distinct s2Step335HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step335HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step335HeadGvRow.payload++s2Step335HeadGvFresh) s2Step335HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 822],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step335HeadBank_rows : planWindowRowsLog s2Step335HeadGBefore [(s2Step335HeadGRow,105),(s2Step335HeadFRow,105),(s2Step335HeadGvRow,184),(s2Step335HeadFvRow,184)] [s2Step335HeadGFresh,s2Step335HeadFFresh,s2Step335HeadGvFresh,s2Step335HeadFvFresh]=
    some (s2Step335HeadFvAfter,[s2Step335HeadGOut,s2Step335HeadFOut,s2Step335HeadGvOut,s2Step335HeadFvOut],(growRow 769 s2Step335HeadGFresh ++ (growRow 768 s2Step335HeadFFresh ++ (growRow 771 s2Step335HeadGvFresh ++ (growRow 770 s2Step335HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step335HeadFvAfter [] []=some (s2Step335HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step335HeadFvBefore s2Step335HeadFvAfter s2Step335HeadFvAfter
    s2Step335HeadFvRow s2Step335HeadFvOut 184 s2Step335HeadFvFresh [] [] []
    (growRow 770 s2Step335HeadFvFresh) ([]) s2Step335HeadFv_Incoming s2Step335HeadFv_checked h4 s2Step335HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step335HeadGvBefore s2Step335HeadGvAfter s2Step335HeadFvAfter
    s2Step335HeadGvRow s2Step335HeadGvOut 184 s2Step335HeadGvFresh [(s2Step335HeadFvRow,184)] [s2Step335HeadFvFresh] [s2Step335HeadFvOut]
    (growRow 771 s2Step335HeadGvFresh) ((growRow 770 s2Step335HeadFvFresh ++ [])) s2Step335HeadGv_Incoming s2Step335HeadGv_checked h3 s2Step335HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step335HeadFBefore s2Step335HeadFAfter s2Step335HeadFvAfter
    s2Step335HeadFRow s2Step335HeadFOut 105 s2Step335HeadFFresh [(s2Step335HeadGvRow,184),(s2Step335HeadFvRow,184)] [s2Step335HeadGvFresh,s2Step335HeadFvFresh] [s2Step335HeadGvOut,s2Step335HeadFvOut]
    (growRow 768 s2Step335HeadFFresh) ((growRow 771 s2Step335HeadGvFresh ++ (growRow 770 s2Step335HeadFvFresh ++ []))) s2Step335HeadF_Incoming s2Step335HeadF_checked h2 s2Step335HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step335HeadGBefore s2Step335HeadGAfter s2Step335HeadFvAfter
    s2Step335HeadGRow s2Step335HeadGOut 105 s2Step335HeadGFresh [(s2Step335HeadFRow,105),(s2Step335HeadGvRow,184),(s2Step335HeadFvRow,184)] [s2Step335HeadFFresh,s2Step335HeadGvFresh,s2Step335HeadFvFresh] [s2Step335HeadFOut,s2Step335HeadGvOut,s2Step335HeadFvOut]
    (growRow 769 s2Step335HeadGFresh) ((growRow 768 s2Step335HeadFFresh ++ (growRow 771 s2Step335HeadGvFresh ++ (growRow 770 s2Step335HeadFvFresh ++ [])))) s2Step335HeadG_Incoming s2Step335HeadG_checked h1 s2Step335HeadG_Outgoing
  exact h0

private theorem s2Step335HeadBank_checked : compileHmrBankResizeLog .headroom s2Step335HeadGBefore ⟨s2Step335HeadFRow,s2Step335HeadGRow,s2Step335HeadFvRow,s2Step335HeadGvRow⟩ ⟨105,105,184,184⟩ [s2Step335HeadGFresh,s2Step335HeadFFresh,s2Step335HeadGvFresh,s2Step335HeadFvFresh]=
    some (s2Step335HeadFvAfter,⟨s2Step335HeadFOut,s2Step335HeadGOut,s2Step335HeadFvOut,s2Step335HeadGvOut⟩,(growRow 769 s2Step335HeadGFresh ++ (growRow 768 s2Step335HeadFFresh ++ (growRow 771 s2Step335HeadGvFresh ++ (growRow 770 s2Step335HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step335HeadBank_rows]
  rfl

private theorem s2Step335Front_checked : compileHmrSourceFrontLog s2Step335EntryFBefore s2Step335FrontBank 104 183 ⟨103,103,184,183⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step335FrontLog=some s2Step335FrontPlan := by
  have pairEq : s2Step335FrontPair=⟨s2Step335HeadFRow,s2Step335HeadGRow,s2Step335HeadFvRow,s2Step335HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step335FrontHead=⟨s2Step335ExitFRow,s2Step335ExitGRow,s2Step335ExitFvRow,s2Step335ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step335Add0A=s2Step335FrontHead.f.wires := by decide +kernel
  have gEq : s2Step335Add0B=s2Step335FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step335Add1A=s2Step335FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step335Add1B=s2Step335FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step335EntryFBefore s2Step335FrontBank 104 183 ⟨103,103,184,183⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step335FrontLog s2Step335FrontPlan
  · exact s2Step335Front_entry
  · exact s2Step335EntryBank_checked
  · exact s2Step335Front_sigma
  · rfl
  · exact s2Step335Front_branch
  · rfl
  · simpa only [s2Step335FrontPlan,pairEq] using s2Step335HeadBank_checked
  · simpa only [s2Step335FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step335F4_checked
  · exact s2Step335Counter_checked
  · rfl
  · simpa only [s2Step335FrontPlan,headEq] using s2Step335ExitBank_checked

private theorem s2Step335Complete_explicit_checked : compileHmrEarlyStepLog s2Step335EntryFBefore s2Step335FrontBank 104 183 ⟨103,103,184,183⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step335CompleteLog=some s2Step335CompletePlan := by
  let Q := s2Step335EarlyControlPlan
  have hq := s2Step335EarlyControl_plan_checked
  have fv1 : s2Step335CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step335CompleteOut.fv.payload[2]?.getD s2Step335CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step335CompleteOut.fv.payload[3]?.getD s2Step335CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step335CompleteOut.fv.payload[4]?.getD s2Step335CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step335EntryFBefore s2Step335EarlyControlArena s2Step335FrontBank 104 183 ⟨103,103,184,183⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step335CompleteLog s2Step335FrontPlan Q
    s2Step335Front_checked s2Step335Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step335Complete_owned s2Step335Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step335EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 786 s2Step335CompleteOut.fv.second (s2Step335CompleteOut.fv.payload[2]?.getD s2Step335CompleteOut.fv.sign) (s2Step335CompleteOut.fv.payload[3]?.getD s2Step335CompleteOut.fv.sign) (s2Step335CompleteOut.fv.payload[4]?.getD s2Step335CompleteOut.fv.sign) 877 60 s2Step335EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep335Arena : Arena := s2Step335EntryFBefore
def s2PrivateStep335Bank : WindowBank := s2Step335FrontBank
def s2PrivateStep335Spec : HmrSourceWalkStepLog := ⟨104,183,⟨103,103,184,183⟩,60,.early s2Step335CompleteLog⟩
def s2PrivateStep335Plan : HmrSourceStepPlan := .early s2Step335CompletePlan
theorem s2PrivateStep335_source : s2PrivateStep335Spec=s2ObservedLogs320[15] := rfl
theorem s2PrivateStep335_checked : compileHmrSourceStepLog s2PrivateStep335Arena s2PrivateStep335Bank
    s2PrivateStep335Spec.fgWidth s2PrivateStep335Spec.vWidth s2PrivateStep335Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]
    6 498 335 s2PrivateStep335Spec.need none s2PrivateStep335Spec.log=some s2PrivateStep335Plan := by
  change compileHmrSourceStepLog s2Step335EntryFBefore s2Step335FrontBank 104 183 ⟨103,103,184,183⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 6 498 335 60 none (.early s2Step335CompleteLog)=some (.early s2Step335CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 335<498)]
  rw [s2Step335Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
