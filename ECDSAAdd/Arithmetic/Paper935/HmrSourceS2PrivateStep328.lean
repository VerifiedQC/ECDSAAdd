import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep326
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

private def s2Step328CompleteMoves : List (Wire × Wire) := [(817,618)]

private def s2Step328EarlyControlLog : HmrEarlyControlLog := ⟨[817, 829, 834, 806, 782],[877],[827],[784, 800, 894, 896, 901, 903],[]⟩

private def s2Step328FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [877], [], [829]],[[827], [782], [834], [806]],[[], [], [], []]⟩,[794],[787],[784],[800],[894, 896, 901, 903, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[894, 896, 901, 903, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[784, 800, 894, 896]⟩

private def s2Step328CompleteLog : HmrEarlyStepLog := ⟨s2Step328FrontLog,s2Step328CompleteMoves,s2Step328EarlyControlLog⟩

private def s2Step328ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617],768⟩

private def s2Step328ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807],770⟩

private def s2Step328ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105],769⟩

private def s2Step328ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830],771⟩

private def s2Step328FrontOut : WindowBank := ⟨s2Step328ExitFOut,s2Step328ExitGOut,s2Step328ExitFvOut,s2Step328ExitGvOut⟩

private def s2Step328CompleteOut : WindowBank := s2Step328FrontOut.repacked s2Step328CompleteMoves

private def s2Step328EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<817) ∨ (818≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step328EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step328EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step328EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step328EarlyControlPositiveArena,[877],s2Step328EarlyControlEqualityArena,[827],⟨⟨794,false⟩,[⟨⟨877,false⟩,827⟩]⟩⟩

private def s2Step328EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step328EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step328EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<817) ∨ (818≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step328EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<817) ∨ (818≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step328EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<817) ∨ (818≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step328EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step328EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,817⟩,⟨⟨774,false⟩,829⟩,⟨⟨775,false⟩,834⟩,⟨⟨776,false⟩,806⟩,⟨⟨777,false⟩,782⟩]⟩

private def s2Step328EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step328EarlyControlZeroArena,s2Step328EarlyControlZeroPlan,s2Step328EarlyControlClassPlan,s2Step328EarlyControlFlagArena,s2Step328EarlyControlFittedArena,s2Step328EarlyControlHistoryArena,s2Step328EarlyControlSigmaArena,s2Step328EarlyControlOutputArena,s2Step328EarlyControlLog⟩

private def s2Step328CounterWork : List Wire := [784, 800, 894, 896]

private theorem s2Step328Counter_bounded : s2Step328CounterWork.toFinset⊆arenaWires := by norm_num [s2Step328CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step328HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step328CounterDuring : Arena := ⟨s2Step328HeadFvAfter.live∪s2Step328CounterWork.toFinset,Finset.union_subset s2Step328HeadFvAfter.bounded s2Step328Counter_bounded⟩

private def s2Step328EntryFFresh : List Wire := []

private def s2Step328EntryFvFresh : List Wire := []

private def s2Step328EntryGFresh : List Wire := [877]

private def s2Step328EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step328EntryGvFresh : List Wire := [829]

private def s2Step328ExitFExtra : List Wire := [618, 782]

private def s2Step328ExitFvExtra : List Wire := [806]

private def s2Step328ExitGExtra : List Wire := [877, 827]

private def s2Step328ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<618) ∨ (619≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step328ExitGvExtra : List Wire := [829, 834]

private def s2Step328Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step328Add0Work : List Wire := [894, 896, 901, 903, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step328Add0_bounded : s2Step328Add0Work.toFinset⊆arenaWires := by
  have h : s2Step328Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step328Add0During : Arena := ⟨s2Step328Add0Arena.live∪s2Step328Add0Work.toFinset,Finset.union_subset s2Step328Add0Arena.bounded s2Step328Add0_bounded⟩

private def s2Step328Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step328Add1Work : List Wire := [894, 896, 901, 903, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step328Add1_bounded : s2Step328Add1Work.toFinset⊆arenaWires := by
  have h : s2Step328Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step328Add1During : Arena := ⟨s2Step328Add1Arena.live∪s2Step328Add1Work.toFinset,Finset.union_subset s2Step328Add1Arena.bounded s2Step328Add1_bounded⟩

private def s2Step328F4FlagArena : Arena := ⟨s2Step328HeadFvAfter.live∪{784},Finset.union_subset s2Step328HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step328F4Plan : HmrHybridF4Plan := ⟨s2Step328F4FlagArena,[784],s2Step328Add0Arena,[800],s2Step328Add0During,s2Step328Add0Work,s2Step328Add1During,s2Step328Add1Work⟩

private def s2Step328HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 782],768⟩

private def s2Step328HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 806],770⟩

private def s2Step328HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 877, 827],769⟩

private def s2Step328HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 829, 834],771⟩

private def s2Step328FrontHead : WindowBank := ⟨s2Step328HeadFOut,s2Step328HeadGOut,s2Step328HeadFvOut,s2Step328HeadGvOut⟩

private def s2Step328EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618],768⟩

private def s2Step328EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807],770⟩

private def s2Step328EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 877],769⟩

private def s2Step328EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 829],771⟩

private def s2Step328FrontPair : WindowBank := ⟨s2Step328EntryFOut,s2Step328EntryGOut,s2Step328EntryFvOut,s2Step328EntryGvOut⟩

private def s2Step328FrontSigmaArena : Arena := ⟨s2Step328EntryGvAfter.live∪{794},Finset.union_subset s2Step328EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step328HeadFFresh : List Wire := [782]

private def s2Step328HeadFvFresh : List Wire := [806]

private def s2Step328HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step328HeadGFresh : List Wire := [827]

private def s2Step328HeadGvFresh : List Wire := [834]

private def s2Step328FrontPlan : HmrSourceFront := ⟨s2Step328EntryGvAfter,s2Step328FrontPair,(growRow 768 s2Step328EntryFFresh ++ (growRow 769 s2Step328EntryGFresh ++ (growRow 770 s2Step328EntryFvFresh ++ (growRow 771 s2Step328EntryGvFresh ++ [])))),s2Step328FrontSigmaArena,[794],s2Step328HeadGBefore,[787],
  s2Step328HeadFvAfter,s2Step328FrontHead,(growRow 769 s2Step328HeadGFresh ++ (growRow 768 s2Step328HeadFFresh ++ (growRow 771 s2Step328HeadGvFresh ++ (growRow 770 s2Step328HeadFvFresh ++ [])))),s2Step328F4Plan,s2Step328CounterDuring,s2Step328CounterWork,s2Step328ExitGvAfter,s2Step328FrontOut,(shrinkRow 769 s2Step328ExitGExtra ++ (shrinkRow 768 s2Step328ExitFExtra ++ (shrinkRow 770 s2Step328ExitFvExtra ++ (shrinkRow 771 s2Step328ExitGvExtra ++ []))))⟩

private def s2Step328CompletePlan : HmrEarlyStepPlan := ⟨s2Step328FrontPlan,s2Step328EarlyControlArena,s2Step328EarlyControlPlan,s2Step328CompleteMoves⟩

private theorem s2Step328Complete_apart : List.Disjoint (s2Step328CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [794, 787, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] := by
  have nd : ((s2Step328CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[794, 787, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step328Complete_owned : (s2Step328CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step328EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step328EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<817) ∨ (818≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private def s2Step328CompleteMoveArena : Arena := ⟨s2Step328ExitGvAfter.live∪{618},Finset.union_subset s2Step328ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step328Complete_repack : s2Step328ExitGvAfter.checkRepack s2Step328CompleteMoves=some s2Step328EarlyControlArena := by
  have owned : 817∈s2Step328ExitGvAfter.live := by norm_num [s2Step328ExitGvAfter,arenaWires]
  have reserve : s2Step328ExitGvAfter.reserve {618}=some s2Step328CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step328ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step328CompleteMoveArena.retireSet {817}=s2Step328EarlyControlArena := by
    unfold Arena.retireSet s2Step328EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step328CompleteMoveArena,s2Step328ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step328CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step328CompleteMoveArena.retireSet {817}).checkRepack []=some s2Step328EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step328EarlyControl_branchOwned : ([787] : List Wire).toFinset⊆s2Step328EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step328EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<817) ∨ (818≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step328EarlyControl_branch : compileHmrBranchRetirement s2Step328EarlyControlSigmaArena 787=some s2Step328EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step328EarlyControl_branchOwned
  · ext q
    simp [s2Step328EarlyControlOutputArena,s2Step328EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step328EarlyControl_classEqualityBorrow : s2Step328EarlyControlPositiveArena.checkBorrow (([794, 877] : List Wire).length-1) s2Step328EarlyControlLog.classWork=some s2Step328EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step328EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step328EarlyControlPositiveArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step328EarlyControlEqualityArena,s2Step328EarlyControlPositiveArena,s2Step328EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step328EarlyControl_classEqualityOwned : ([794, 877] : List Wire).toFinset⊆s2Step328EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step328EarlyControlPositiveArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step328EarlyControl_classEquality : compileHmrEqualityLog s2Step328EarlyControlPositiveArena [794, 877] 0 s2Step328EarlyControlLog.classWork=some (s2Step328EarlyControlEqualityArena,s2Step328EarlyControlLog.classWork,s2Step328EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step328EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step328EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step328EarlyControl_classOwned : ([777, 782, 794] : List Wire).toFinset⊆s2Step328EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step328EarlyControlZeroArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step328EarlyControl_positiveBorrow : s2Step328EarlyControlZeroArena.checkBorrow (1) s2Step328EarlyControlLog.positiveWork=some s2Step328EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step328EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step328EarlyControlZeroArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step328EarlyControlPositiveArena,s2Step328EarlyControlZeroArena,s2Step328EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step328EarlyControl_class : compileHmrSourceClassLog s2Step328EarlyControlZeroArena false 777 s2Step328EarlyControlZeroPlan.top 0 794 s2Step328EarlyControlLog.positiveWork s2Step328EarlyControlLog.classWork=some s2Step328EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step328EarlyControlClassPlan s2Step328EarlyControlZeroArena false 777 s2Step328EarlyControlZeroPlan.top 0 794
  constructor
  · decide +kernel
  · exact s2Step328EarlyControl_classOwned
  · exact s2Step328EarlyControl_positiveBorrow
  · exact s2Step328EarlyControl_classEquality

private theorem s2Step328EarlyControl_entryRecordOwned : ([787, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step328EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step328EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<817) ∨ (818≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step328EarlyControl_entrySigmaOwned : ([794, 254] : List Wire).toFinset⊆s2Step328EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step328EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<817) ∨ (818≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step328EarlyControl_fitBorrow : s2Step328EarlyControlFlagArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step328EarlyControlLog.recordFresh=some s2Step328EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step328EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step328EarlyControlFlagArena (fun q => (0≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step328EarlyControlFittedArena,s2Step328EarlyControlFlagArena,s2Step328EarlyControlLog,arenaWires]

private theorem s2Step328EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step328EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step328EarlyControlFlagArena (fun q => (0≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step328EarlyControl_fit : compileHmrRecordGrowLog s2Step328EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step328EarlyControlLog.recordFresh=some s2Step328EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step328EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step328EarlyControl_fitBorrow

private theorem s2Step328EarlyControl_flagsBorrow : s2Step328EarlyControlEqualityArena.checkBorrow (6) s2Step328EarlyControlLog.flagWork=some s2Step328EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step328EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step328EarlyControlEqualityArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step328EarlyControlFlagArena,s2Step328EarlyControlEqualityArena,s2Step328EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step328EarlyControl_flagsOwned : ([827, 253, 252, 251] : List Wire).toFinset⊆s2Step328EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step328EarlyControlEqualityArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step328EarlyControl_flags : compileHmrFlagsLog s2Step328EarlyControlClassPlan.equalityArena s2Step328EarlyControlClassPlan.equality.top 253 252 251 s2Step328EarlyControlLog.flagWork=some s2Step328EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step328EarlyControl_flagsOwned⟩
  · exact s2Step328EarlyControl_flagsBorrow

private theorem s2Step328EarlyControl_historyBorrow : s2Step328EarlyControlArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step328EarlyControlLog.recordFresh=some s2Step328EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step328EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step328EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<817) ∨ (818≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step328EarlyControlHistoryArena,s2Step328EarlyControlArena,s2Step328EarlyControlLog,arenaWires]

private theorem s2Step328EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step328EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step328EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<817) ∨ (818≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step328EarlyControl_history : compileHmrRecordGrowLog s2Step328EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step328EarlyControlLog.recordFresh=some s2Step328EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step328EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step328EarlyControl_historyBorrow

private theorem s2Step328EarlyControl_sigmaOwned : ([254, 794] : List Wire).toFinset⊆s2Step328EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step328EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<817) ∨ (818≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step328EarlyControl_sigmaReleaseOwned : ([794] : List Wire).toFinset⊆s2Step328EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step328EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<817) ∨ (818≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step328EarlyControl_sigmaRelease : s2Step328EarlyControlHistoryArena.release {794} (fun _ => false)=some s2Step328EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step328EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step328EarlyControlSigmaArena,s2Step328EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step328EarlyControl_sigma : compileHmrSigmaDropLog s2Step328EarlyControlHistoryArena false 0 0 254 794 []=some s2Step328EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step328EarlyControl_sigmaOwned⟩
  · exact s2Step328EarlyControl_sigmaRelease

private theorem s2Step328EarlyControl_zeroBorrow : s2Step328EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step328EarlyControlLog.zeroWork=some s2Step328EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step328EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step328EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<817) ∨ (818≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step328EarlyControlZeroArena,s2Step328EarlyControlArena,s2Step328EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step328EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step328EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step328EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<817) ∨ (818≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step328EarlyControl_zero : compileHmrEqualityLog s2Step328EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step328EarlyControlLog.zeroWork=some (s2Step328EarlyControlZeroArena,s2Step328EarlyControlLog.zeroWork,s2Step328EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step328EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step328EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step328EarlyControl_logged : s2Step328EarlyControlPlan.Logged s2Step328EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 794 254 253 252 251 787 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step328EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step328EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step328EarlyControl_zero
  · exact s2Step328EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step328EarlyControl_flags
  · exact s2Step328EarlyControl_fit
  · exact s2Step328EarlyControl_history
  · exact s2Step328EarlyControl_sigma
  · exact s2Step328EarlyControl_branch

private theorem s2Step328EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step328EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 794 254 253 252 251 787 60 s2Step328EarlyControlLog=some s2Step328EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step328EarlyControlPlan s2Step328EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 794 254 253 252 251 787 60 s2Step328EarlyControl_logged

private def s2Step328EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step328EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618],768⟩

private def s2Step328EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807],770⟩

private def s2Step328EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105],769⟩

private def s2Step328EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830],771⟩

private def s2Step328FrontBank : WindowBank := ⟨s2Step328EntryFRow,s2Step328EntryGRow,s2Step328EntryFvRow,s2Step328EntryGvRow⟩

private def s2Step328Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 782, 768]

private def s2Step328Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 877, 827, 769]

private def s2Step328Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 806, 770]

private def s2Step328Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 829, 834, 771]

private theorem s2Step328Counter_apart : Disjoint s2Step328HeadFvAfter.live s2Step328CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step328HeadFvAfter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step328Counter_borrowed : s2Step328HeadFvAfter.checkBorrow 4 s2Step328CounterWork=some s2Step328CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step328HeadFvAfter s2Step328CounterDuring s2Step328CounterWork.toFinset s2Step328Counter_bounded s2Step328Counter_apart rfl

private theorem s2Step328Counter_owned : (794::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step328HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step328HeadFvAfter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step328Counter_checked : compileHmrCounterStepLog s2Step328HeadFvAfter true 794 [772, 773, 774, 775, 776, 777] s2Step328CounterWork=some s2Step328CounterDuring := by
  have owned : ∀q∈794::[772, 773, 774, 775, 776, 777],q∈s2Step328HeadFvAfter.live := fun q hq => s2Step328Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step328Counter_borrowed

private def s2Step328EntryFAfter : Arena := s2Step328EntryFBefore

private theorem s2Step328EntryBank_incomingDistinct : ([s2Step328EntryFRow,s2Step328EntryGRow,s2Step328EntryFvRow,s2Step328EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step328EntryF_Incoming : rowsOwned s2Step328EntryFBefore [s2Step328EntryFRow,s2Step328EntryGRow,s2Step328EntryFvRow,s2Step328EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step328EntryFRow,s2Step328EntryGRow,s2Step328EntryFvRow,s2Step328EntryGvRow] 0 s2Step328EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step328EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step328EntryBank_outgoingOwned : rowsOwned s2Step328EntryGvAfter [s2Step328EntryFOut,s2Step328EntryGOut,s2Step328EntryFvOut,s2Step328EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step328EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step328EntryF_Outgoing : rowsOwned s2Step328EntryGvAfter [s2Step328EntryFOut,s2Step328EntryGOut,s2Step328EntryFvOut,s2Step328EntryGvOut] :=
  hmrRows_owned_drop s2Step328EntryGvAfter [s2Step328EntryFOut,s2Step328EntryGOut,s2Step328EntryFvOut,s2Step328EntryGvOut] 0 s2Step328EntryBank_outgoingOwned

private theorem s2Step328EntryF_distinct : (s2Step328EntryFRow.sign::s2Step328EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step328EntryF_owned : (s2Step328EntryFRow.sign::s2Step328EntryFRow.payload).toFinset⊆s2Step328EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step328EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step328EntryF_reserved : s2Step328EntryFBefore.reserve s2Step328EntryFFresh.toFinset=some s2Step328EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step328EntryFFresh,arenaWires]
  · norm_num [s2Step328EntryFBefore,s2Step328EntryFFresh,arenaWires]
  · simp only [s2Step328EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step328EntryF_checked : planRowResizeLog s2Step328EntryFBefore s2Step328EntryFRow 107 s2Step328EntryFFresh=
    some (s2Step328EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618],768⟩,growRow 768 s2Step328EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step328EntryFBefore s2Step328EntryFAfter s2Step328EntryFRow 107 s2Step328EntryFFresh
    s2Step328EntryF_distinct s2Step328EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step328EntryF_reserved
  have rowEq : WindowRow.mk (s2Step328EntryFRow.payload++s2Step328EntryFFresh) s2Step328EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step328EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step328EntryFvAfter : Arena := s2Step328EntryGAfter

private def s2Step328EntryFvBefore : Arena := s2Step328EntryGAfter

private theorem s2Step328EntryFv_Incoming : rowsOwned s2Step328EntryFvBefore [s2Step328EntryFvRow,s2Step328EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step328EntryFRow,s2Step328EntryGRow,s2Step328EntryFvRow,s2Step328EntryGvRow] 2 s2Step328EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step328EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step328EntryFv_Outgoing : rowsOwned s2Step328EntryGvAfter [s2Step328EntryFvOut,s2Step328EntryGvOut] :=
  hmrRows_owned_drop s2Step328EntryGvAfter [s2Step328EntryFOut,s2Step328EntryGOut,s2Step328EntryFvOut,s2Step328EntryGvOut] 2 s2Step328EntryBank_outgoingOwned

private theorem s2Step328EntryFv_distinct : (s2Step328EntryFvRow.sign::s2Step328EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step328EntryFv_owned : (s2Step328EntryFvRow.sign::s2Step328EntryFvRow.payload).toFinset⊆s2Step328EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step328EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step328EntryFv_reserved : s2Step328EntryFvBefore.reserve s2Step328EntryFvFresh.toFinset=some s2Step328EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step328EntryFvFresh,arenaWires]
  · norm_num [s2Step328EntryFvBefore,s2Step328EntryGAfter,s2Step328EntryFvFresh,arenaWires]
  · simp only [s2Step328EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step328EntryFv_checked : planRowResizeLog s2Step328EntryFvBefore s2Step328EntryFvRow 180 s2Step328EntryFvFresh=
    some (s2Step328EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807],770⟩,growRow 770 s2Step328EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step328EntryFvBefore s2Step328EntryFvAfter s2Step328EntryFvRow 180 s2Step328EntryFvFresh
    s2Step328EntryFv_distinct s2Step328EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step328EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step328EntryFvRow.payload++s2Step328EntryFvFresh) s2Step328EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step328EntryGBefore : Arena := s2Step328EntryFBefore

private theorem s2Step328EntryG_Incoming : rowsOwned s2Step328EntryGBefore [s2Step328EntryGRow,s2Step328EntryFvRow,s2Step328EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step328EntryFRow,s2Step328EntryGRow,s2Step328EntryFvRow,s2Step328EntryGvRow] 1 s2Step328EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step328EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step328EntryG_Outgoing : rowsOwned s2Step328EntryGvAfter [s2Step328EntryGOut,s2Step328EntryFvOut,s2Step328EntryGvOut] :=
  hmrRows_owned_drop s2Step328EntryGvAfter [s2Step328EntryFOut,s2Step328EntryGOut,s2Step328EntryFvOut,s2Step328EntryGvOut] 1 s2Step328EntryBank_outgoingOwned

private theorem s2Step328EntryG_distinct : (s2Step328EntryGRow.sign::s2Step328EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step328EntryG_owned : (s2Step328EntryGRow.sign::s2Step328EntryGRow.payload).toFinset⊆s2Step328EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step328EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step328EntryG_reserved : s2Step328EntryGBefore.reserve s2Step328EntryGFresh.toFinset=some s2Step328EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step328EntryGFresh,arenaWires]
  · norm_num [s2Step328EntryGBefore,s2Step328EntryFBefore,s2Step328EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step328EntryGAfter,s2Step328EntryGBefore,s2Step328EntryFBefore,s2Step328EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step328EntryG_checked : planRowResizeLog s2Step328EntryGBefore s2Step328EntryGRow 107 s2Step328EntryGFresh=
    some (s2Step328EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 877],769⟩,growRow 769 s2Step328EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step328EntryGBefore s2Step328EntryGAfter s2Step328EntryGRow 107 s2Step328EntryGFresh
    s2Step328EntryG_distinct s2Step328EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step328EntryG_reserved
  have rowEq : WindowRow.mk (s2Step328EntryGRow.payload++s2Step328EntryGFresh) s2Step328EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 877],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step328EntryGvBefore : Arena := s2Step328EntryGAfter

private theorem s2Step328EntryGv_Incoming : rowsOwned s2Step328EntryGvBefore [s2Step328EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step328EntryFRow,s2Step328EntryGRow,s2Step328EntryFvRow,s2Step328EntryGvRow] 3 s2Step328EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step328EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step328EntryGv_Outgoing : rowsOwned s2Step328EntryGvAfter [s2Step328EntryGvOut] :=
  hmrRows_owned_drop s2Step328EntryGvAfter [s2Step328EntryFOut,s2Step328EntryGOut,s2Step328EntryFvOut,s2Step328EntryGvOut] 3 s2Step328EntryBank_outgoingOwned

private theorem s2Step328EntryGv_distinct : (s2Step328EntryGvRow.sign::s2Step328EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step328EntryGv_owned : (s2Step328EntryGvRow.sign::s2Step328EntryGvRow.payload).toFinset⊆s2Step328EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step328EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step328EntryGv_reserved : s2Step328EntryGvBefore.reserve s2Step328EntryGvFresh.toFinset=some s2Step328EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step328EntryGvFresh,arenaWires]
  · norm_num [s2Step328EntryGvBefore,s2Step328EntryGAfter,s2Step328EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step328EntryGvAfter,s2Step328EntryGvBefore,s2Step328EntryGAfter,s2Step328EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step328EntryGv_checked : planRowResizeLog s2Step328EntryGvBefore s2Step328EntryGvRow 180 s2Step328EntryGvFresh=
    some (s2Step328EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 829],771⟩,growRow 771 s2Step328EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step328EntryGvBefore s2Step328EntryGvAfter s2Step328EntryGvRow 180 s2Step328EntryGvFresh
    s2Step328EntryGv_distinct s2Step328EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step328EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step328EntryGvRow.payload++s2Step328EntryGvFresh) s2Step328EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 829],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step328EntryBank_rows : planWindowRowsLog s2Step328EntryFBefore [(s2Step328EntryFRow,107),(s2Step328EntryGRow,107),(s2Step328EntryFvRow,180),(s2Step328EntryGvRow,180)] [s2Step328EntryFFresh,s2Step328EntryGFresh,s2Step328EntryFvFresh,s2Step328EntryGvFresh]=
    some (s2Step328EntryGvAfter,[s2Step328EntryFOut,s2Step328EntryGOut,s2Step328EntryFvOut,s2Step328EntryGvOut],(growRow 768 s2Step328EntryFFresh ++ (growRow 769 s2Step328EntryGFresh ++ (growRow 770 s2Step328EntryFvFresh ++ (growRow 771 s2Step328EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step328EntryGvAfter [] []=some (s2Step328EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step328EntryGvBefore s2Step328EntryGvAfter s2Step328EntryGvAfter
    s2Step328EntryGvRow s2Step328EntryGvOut 180 s2Step328EntryGvFresh [] [] []
    (growRow 771 s2Step328EntryGvFresh) ([]) s2Step328EntryGv_Incoming s2Step328EntryGv_checked h4 s2Step328EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step328EntryFvBefore s2Step328EntryFvAfter s2Step328EntryGvAfter
    s2Step328EntryFvRow s2Step328EntryFvOut 180 s2Step328EntryFvFresh [(s2Step328EntryGvRow,180)] [s2Step328EntryGvFresh] [s2Step328EntryGvOut]
    (growRow 770 s2Step328EntryFvFresh) ((growRow 771 s2Step328EntryGvFresh ++ [])) s2Step328EntryFv_Incoming s2Step328EntryFv_checked h3 s2Step328EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step328EntryGBefore s2Step328EntryGAfter s2Step328EntryGvAfter
    s2Step328EntryGRow s2Step328EntryGOut 107 s2Step328EntryGFresh [(s2Step328EntryFvRow,180),(s2Step328EntryGvRow,180)] [s2Step328EntryFvFresh,s2Step328EntryGvFresh] [s2Step328EntryFvOut,s2Step328EntryGvOut]
    (growRow 769 s2Step328EntryGFresh) ((growRow 770 s2Step328EntryFvFresh ++ (growRow 771 s2Step328EntryGvFresh ++ []))) s2Step328EntryG_Incoming s2Step328EntryG_checked h2 s2Step328EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step328EntryFBefore s2Step328EntryFAfter s2Step328EntryGvAfter
    s2Step328EntryFRow s2Step328EntryFOut 107 s2Step328EntryFFresh [(s2Step328EntryGRow,107),(s2Step328EntryFvRow,180),(s2Step328EntryGvRow,180)] [s2Step328EntryGFresh,s2Step328EntryFvFresh,s2Step328EntryGvFresh] [s2Step328EntryGOut,s2Step328EntryFvOut,s2Step328EntryGvOut]
    (growRow 768 s2Step328EntryFFresh) ((growRow 769 s2Step328EntryGFresh ++ (growRow 770 s2Step328EntryFvFresh ++ (growRow 771 s2Step328EntryGvFresh ++ [])))) s2Step328EntryF_Incoming s2Step328EntryF_checked h1 s2Step328EntryF_Outgoing
  exact h0

private theorem s2Step328EntryBank_checked : compileHmrBankResizeLog .entry s2Step328EntryFBefore ⟨s2Step328EntryFRow,s2Step328EntryGRow,s2Step328EntryFvRow,s2Step328EntryGvRow⟩ ⟨107,107,180,180⟩ [s2Step328EntryFFresh,s2Step328EntryGFresh,s2Step328EntryFvFresh,s2Step328EntryGvFresh]=
    some (s2Step328EntryGvAfter,⟨s2Step328EntryFOut,s2Step328EntryGOut,s2Step328EntryFvOut,s2Step328EntryGvOut⟩,(growRow 768 s2Step328EntryFFresh ++ (growRow 769 s2Step328EntryGFresh ++ (growRow 770 s2Step328EntryFvFresh ++ (growRow 771 s2Step328EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step328EntryBank_rows]
  rfl

private def s2Step328ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<618) ∨ (619≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step328ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step328ExitFBefore : Arena := s2Step328ExitGAfter

private def s2Step328ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 782],768⟩

private def s2Step328ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 806],770⟩

private def s2Step328ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 877, 827],769⟩

private def s2Step328ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 829, 834],771⟩

private theorem s2Step328ExitBank_incomingDistinct : ([s2Step328ExitGRow,s2Step328ExitFRow,s2Step328ExitFvRow,s2Step328ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step328ExitF_Incoming : rowsOwned s2Step328ExitFBefore [s2Step328ExitFRow,s2Step328ExitFvRow,s2Step328ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step328ExitGRow,s2Step328ExitFRow,s2Step328ExitFvRow,s2Step328ExitGvRow] 1 s2Step328ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step328ExitFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step328ExitBank_outgoingOwned : rowsOwned s2Step328ExitGvAfter [s2Step328ExitGOut,s2Step328ExitFOut,s2Step328ExitFvOut,s2Step328ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step328ExitGvAfter (fun q => (0≤q ∧ q<618) ∨ (619≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step328ExitF_Outgoing : rowsOwned s2Step328ExitGvAfter [s2Step328ExitFOut,s2Step328ExitFvOut,s2Step328ExitGvOut] :=
  hmrRows_owned_drop s2Step328ExitGvAfter [s2Step328ExitGOut,s2Step328ExitFOut,s2Step328ExitFvOut,s2Step328ExitGvOut] 1 s2Step328ExitBank_outgoingOwned

private theorem s2Step328ExitF_distinct : (s2Step328ExitFRow.sign::s2Step328ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step328ExitF_owned : (s2Step328ExitFRow.sign::s2Step328ExitFRow.payload).toFinset⊆s2Step328ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step328ExitFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step328ExitF_retired : s2Step328ExitFBefore.retireSet s2Step328ExitFExtra.toFinset=s2Step328ExitFAfter := by
  unfold Arena.retireSet s2Step328ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step328ExitFBefore,s2Step328ExitGAfter,s2Step328ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step328ExitF_checked : planRowResizeLog s2Step328ExitFBefore s2Step328ExitFRow 106 []=
    some (s2Step328ExitFAfter,s2Step328ExitFOut,shrinkRow 768 s2Step328ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step328ExitFBefore s2Step328ExitFRow 106 s2Step328ExitF_distinct s2Step328ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step328ExitFRow.payload.take 106) s2Step328ExitFRow.sign=s2Step328ExitFOut := by decide +kernel
  have hi : s2Step328ExitFRow.payload.drop 106=s2Step328ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step328ExitF_retired] at result
  exact result

private def s2Step328ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<618) ∨ (619≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step328ExitFvBefore : Arena := s2Step328ExitFAfter

private theorem s2Step328ExitFv_Incoming : rowsOwned s2Step328ExitFvBefore [s2Step328ExitFvRow,s2Step328ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step328ExitGRow,s2Step328ExitFRow,s2Step328ExitFvRow,s2Step328ExitGvRow] 2 s2Step328ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step328ExitFvBefore (fun q => (0≤q ∧ q<618) ∨ (619≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step328ExitFv_Outgoing : rowsOwned s2Step328ExitGvAfter [s2Step328ExitFvOut,s2Step328ExitGvOut] :=
  hmrRows_owned_drop s2Step328ExitGvAfter [s2Step328ExitGOut,s2Step328ExitFOut,s2Step328ExitFvOut,s2Step328ExitGvOut] 2 s2Step328ExitBank_outgoingOwned

private theorem s2Step328ExitFv_distinct : (s2Step328ExitFvRow.sign::s2Step328ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step328ExitFv_owned : (s2Step328ExitFvRow.sign::s2Step328ExitFvRow.payload).toFinset⊆s2Step328ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step328ExitFvBefore (fun q => (0≤q ∧ q<618) ∨ (619≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step328ExitFv_retired : s2Step328ExitFvBefore.retireSet s2Step328ExitFvExtra.toFinset=s2Step328ExitFvAfter := by
  unfold Arena.retireSet s2Step328ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step328ExitFvBefore,s2Step328ExitFAfter,s2Step328ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step328ExitFv_checked : planRowResizeLog s2Step328ExitFvBefore s2Step328ExitFvRow 180 []=
    some (s2Step328ExitFvAfter,s2Step328ExitFvOut,shrinkRow 770 s2Step328ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step328ExitFvBefore s2Step328ExitFvRow 180 s2Step328ExitFv_distinct s2Step328ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step328ExitFvRow.payload.take 180) s2Step328ExitFvRow.sign=s2Step328ExitFvOut := by decide +kernel
  have hi : s2Step328ExitFvRow.payload.drop 180=s2Step328ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step328ExitFv_retired] at result
  exact result

private def s2Step328ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private theorem s2Step328ExitG_Incoming : rowsOwned s2Step328ExitGBefore [s2Step328ExitGRow,s2Step328ExitFRow,s2Step328ExitFvRow,s2Step328ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step328ExitGRow,s2Step328ExitFRow,s2Step328ExitFvRow,s2Step328ExitGvRow] 0 s2Step328ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step328ExitGBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step328ExitG_Outgoing : rowsOwned s2Step328ExitGvAfter [s2Step328ExitGOut,s2Step328ExitFOut,s2Step328ExitFvOut,s2Step328ExitGvOut] :=
  hmrRows_owned_drop s2Step328ExitGvAfter [s2Step328ExitGOut,s2Step328ExitFOut,s2Step328ExitFvOut,s2Step328ExitGvOut] 0 s2Step328ExitBank_outgoingOwned

private theorem s2Step328ExitG_distinct : (s2Step328ExitGRow.sign::s2Step328ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step328ExitG_owned : (s2Step328ExitGRow.sign::s2Step328ExitGRow.payload).toFinset⊆s2Step328ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step328ExitGBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step328ExitG_retired : s2Step328ExitGBefore.retireSet s2Step328ExitGExtra.toFinset=s2Step328ExitGAfter := by
  unfold Arena.retireSet s2Step328ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step328ExitGBefore,s2Step328ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step328ExitG_checked : planRowResizeLog s2Step328ExitGBefore s2Step328ExitGRow 106 []=
    some (s2Step328ExitGAfter,s2Step328ExitGOut,shrinkRow 769 s2Step328ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step328ExitGBefore s2Step328ExitGRow 106 s2Step328ExitG_distinct s2Step328ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step328ExitGRow.payload.take 106) s2Step328ExitGRow.sign=s2Step328ExitGOut := by decide +kernel
  have hi : s2Step328ExitGRow.payload.drop 106=s2Step328ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step328ExitG_retired] at result
  exact result

private def s2Step328ExitGvBefore : Arena := s2Step328ExitFvAfter

private theorem s2Step328ExitGv_Incoming : rowsOwned s2Step328ExitGvBefore [s2Step328ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step328ExitGRow,s2Step328ExitFRow,s2Step328ExitFvRow,s2Step328ExitGvRow] 3 s2Step328ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step328ExitGvBefore (fun q => (0≤q ∧ q<618) ∨ (619≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step328ExitGv_Outgoing : rowsOwned s2Step328ExitGvAfter [s2Step328ExitGvOut] :=
  hmrRows_owned_drop s2Step328ExitGvAfter [s2Step328ExitGOut,s2Step328ExitFOut,s2Step328ExitFvOut,s2Step328ExitGvOut] 3 s2Step328ExitBank_outgoingOwned

private theorem s2Step328ExitGv_distinct : (s2Step328ExitGvRow.sign::s2Step328ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step328ExitGv_owned : (s2Step328ExitGvRow.sign::s2Step328ExitGvRow.payload).toFinset⊆s2Step328ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step328ExitGvBefore (fun q => (0≤q ∧ q<618) ∨ (619≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step328ExitGv_retired : s2Step328ExitGvBefore.retireSet s2Step328ExitGvExtra.toFinset=s2Step328ExitGvAfter := by
  unfold Arena.retireSet s2Step328ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step328ExitGvBefore,s2Step328ExitFvAfter,s2Step328ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step328ExitGv_checked : planRowResizeLog s2Step328ExitGvBefore s2Step328ExitGvRow 179 []=
    some (s2Step328ExitGvAfter,s2Step328ExitGvOut,shrinkRow 771 s2Step328ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step328ExitGvBefore s2Step328ExitGvRow 179 s2Step328ExitGv_distinct s2Step328ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step328ExitGvRow.payload.take 179) s2Step328ExitGvRow.sign=s2Step328ExitGvOut := by decide +kernel
  have hi : s2Step328ExitGvRow.payload.drop 179=s2Step328ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step328ExitGv_retired] at result
  exact result

private theorem s2Step328ExitBank_rows : planWindowRowsLog s2Step328ExitGBefore [(s2Step328ExitGRow,106),(s2Step328ExitFRow,106),(s2Step328ExitFvRow,180),(s2Step328ExitGvRow,179)] [[],[],[],[]]=
    some (s2Step328ExitGvAfter,[s2Step328ExitGOut,s2Step328ExitFOut,s2Step328ExitFvOut,s2Step328ExitGvOut],(shrinkRow 769 s2Step328ExitGExtra ++ (shrinkRow 768 s2Step328ExitFExtra ++ (shrinkRow 770 s2Step328ExitFvExtra ++ (shrinkRow 771 s2Step328ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step328ExitGvAfter [] []=some (s2Step328ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step328ExitGvBefore s2Step328ExitGvAfter s2Step328ExitGvAfter
    s2Step328ExitGvRow s2Step328ExitGvOut 179 [] [] [] []
    (shrinkRow 771 s2Step328ExitGvExtra) ([]) s2Step328ExitGv_Incoming s2Step328ExitGv_checked h4 s2Step328ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step328ExitFvBefore s2Step328ExitFvAfter s2Step328ExitGvAfter
    s2Step328ExitFvRow s2Step328ExitFvOut 180 [] [(s2Step328ExitGvRow,179)] [[]] [s2Step328ExitGvOut]
    (shrinkRow 770 s2Step328ExitFvExtra) ((shrinkRow 771 s2Step328ExitGvExtra ++ [])) s2Step328ExitFv_Incoming s2Step328ExitFv_checked h3 s2Step328ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step328ExitFBefore s2Step328ExitFAfter s2Step328ExitGvAfter
    s2Step328ExitFRow s2Step328ExitFOut 106 [] [(s2Step328ExitFvRow,180),(s2Step328ExitGvRow,179)] [[],[]] [s2Step328ExitFvOut,s2Step328ExitGvOut]
    (shrinkRow 768 s2Step328ExitFExtra) ((shrinkRow 770 s2Step328ExitFvExtra ++ (shrinkRow 771 s2Step328ExitGvExtra ++ []))) s2Step328ExitF_Incoming s2Step328ExitF_checked h2 s2Step328ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step328ExitGBefore s2Step328ExitGAfter s2Step328ExitGvAfter
    s2Step328ExitGRow s2Step328ExitGOut 106 [] [(s2Step328ExitFRow,106),(s2Step328ExitFvRow,180),(s2Step328ExitGvRow,179)] [[],[],[]] [s2Step328ExitFOut,s2Step328ExitFvOut,s2Step328ExitGvOut]
    (shrinkRow 769 s2Step328ExitGExtra) ((shrinkRow 768 s2Step328ExitFExtra ++ (shrinkRow 770 s2Step328ExitFvExtra ++ (shrinkRow 771 s2Step328ExitGvExtra ++ [])))) s2Step328ExitG_Incoming s2Step328ExitG_checked h1 s2Step328ExitG_Outgoing
  exact h0

private theorem s2Step328ExitBank_checked : compileHmrBankResizeLog .exit s2Step328ExitGBefore ⟨s2Step328ExitFRow,s2Step328ExitGRow,s2Step328ExitFvRow,s2Step328ExitGvRow⟩ ⟨106,106,180,179⟩ [[],[],[],[]]=
    some (s2Step328ExitGvAfter,⟨s2Step328ExitFOut,s2Step328ExitGOut,s2Step328ExitFvOut,s2Step328ExitGvOut⟩,(shrinkRow 769 s2Step328ExitGExtra ++ (shrinkRow 768 s2Step328ExitFExtra ++ (shrinkRow 770 s2Step328ExitFvExtra ++ (shrinkRow 771 s2Step328ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step328ExitBank_rows]
  rfl

private theorem s2Step328Add0_apart : Disjoint s2Step328Add0Arena.live s2Step328Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step328Add0Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step328Add0_card : s2Step328Add0Arena.live.card=908 := by
  decide +kernel

private theorem s2Step328Add0_borrowed : s2Step328Add0Arena.checkBorrow (hmrHybridCount s2Step328Add0Arena s2Step328Add0B.length) s2Step328Add0Work=some s2Step328Add0During := by
  have len : s2Step328Add0Work.length=hmrHybridCount s2Step328Add0Arena s2Step328Add0B.length := by
    rw [hmrHybridCount,s2Step328Add0_card]
    decide +kernel
  have nd : s2Step328Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step328Add0Arena s2Step328Add0During s2Step328Add0Work.toFinset s2Step328Add0_bounded s2Step328Add0_apart rfl

private theorem s2Step328Add0_distinct : (784::787::800::(s2Step328Add0A++s2Step328Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step328Add0_owned : (784::787::800::(s2Step328Add0A++s2Step328Add0B)).toFinset⊆s2Step328Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step328Add0Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step328Add0_checked : compileHmrHybridCinLog s2Step328Add0Arena 787 784 800 s2Step328Add0A s2Step328Add0B s2Step328Add0Work=some s2Step328Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step328Add0Arena s2Step328Add0During 787 784 800 s2Step328Add0A s2Step328Add0B s2Step328Add0Work
    (by decide +kernel) (by decide +kernel) s2Step328Add0_distinct
    (fun q hq => s2Step328Add0_owned (List.mem_toFinset.mpr hq)) s2Step328Add0_borrowed

private theorem s2Step328Add1_apart : Disjoint s2Step328Add1Arena.live s2Step328Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step328Add1Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step328Add1_card : s2Step328Add1Arena.live.card=908 := by
  decide +kernel

private theorem s2Step328Add1_borrowed : s2Step328Add1Arena.checkBorrow (hmrHybridCount s2Step328Add1Arena s2Step328Add1B.length) s2Step328Add1Work=some s2Step328Add1During := by
  have len : s2Step328Add1Work.length=hmrHybridCount s2Step328Add1Arena s2Step328Add1B.length := by
    rw [hmrHybridCount,s2Step328Add1_card]
    decide +kernel
  have nd : s2Step328Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step328Add1Arena s2Step328Add1During s2Step328Add1Work.toFinset s2Step328Add1_bounded s2Step328Add1_apart rfl

private theorem s2Step328Add1_distinct : (784::787::800::(s2Step328Add1A++s2Step328Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step328Add1_owned : (784::787::800::(s2Step328Add1A++s2Step328Add1B)).toFinset⊆s2Step328Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step328Add1Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step328Add1_checked : compileHmrHybridCinLog s2Step328Add1Arena 787 784 800 s2Step328Add1A s2Step328Add1B s2Step328Add1Work=some s2Step328Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step328Add1Arena s2Step328Add1During 787 784 800 s2Step328Add1A s2Step328Add1B s2Step328Add1Work
    (by decide +kernel) (by decide +kernel) s2Step328Add1_distinct
    (fun q hq => s2Step328Add1_owned (List.mem_toFinset.mpr hq)) s2Step328Add1_borrowed

private theorem s2Step328F4_apart : Disjoint (s2Step328Add0A++s2Step328Add0B).toFinset (s2Step328Add1A++s2Step328Add1B).toFinset := by
  have nd : ((s2Step328Add0A++s2Step328Add0B)++(s2Step328Add1A++s2Step328Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step328F4_carry : s2Step328F4FlagArena.checkBorrow 1 [800]=some s2Step328Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step328F4FlagArena,s2Step328HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step328F4FlagArena,s2Step328HeadFvAfter,s2Step328Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step328F4_distinct : (794::787::784::800::((s2Step328Add0A++s2Step328Add1A)++(s2Step328Add0B++s2Step328Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step328F4_flag : s2Step328HeadFvAfter.checkBorrow 1 [784]=some s2Step328F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step328HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step328F4_owned : (794::787::((s2Step328Add0A++s2Step328Add1A)++(s2Step328Add0B++s2Step328Add1B))).toFinset⊆s2Step328HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step328HeadFvAfter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step328F4_checked : compileHmrHybridF4Log s2Step328HeadFvAfter 794 787 s2Step328Add0A s2Step328Add0B s2Step328Add1A s2Step328Add1B [784] [800] s2Step328Add0Work s2Step328Add1Work=some s2Step328F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step328HeadFvAfter s2Step328F4FlagArena s2Step328Add0Arena s2Step328Add0During s2Step328Add1During 794 787
    s2Step328Add0A s2Step328Add0B s2Step328Add1A s2Step328Add1B [784] [800] s2Step328Add0Work s2Step328Add1Work
    (fun q hq => s2Step328F4_owned (List.mem_toFinset.mpr hq)) s2Step328F4_flag s2Step328F4_carry
    s2Step328F4_distinct s2Step328F4_apart s2Step328Add0_checked s2Step328Add1_checked

private theorem s2Step328Front_branch : s2Step328FrontSigmaArena.checkBorrow 1 [787]=some s2Step328HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step328FrontSigmaArena,s2Step328EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step328FrontSigmaArena,s2Step328EntryGvAfter,s2Step328HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step328Front_entry : HmrFrontEntryValid s2Step328EntryFBefore s2Step328FrontBank 107 180 ⟨106,106,180,179⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step328FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step328EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step328EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step328FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step328Front_sigma : s2Step328EntryGvAfter.checkBorrow 1 [794]=some s2Step328FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step328EntryGvAfter,arenaWires]
  · rfl

private def s2Step328HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step328HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step328HeadFBefore : Arena := s2Step328HeadGAfter

private def s2Step328HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618],768⟩

private def s2Step328HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807],770⟩

private def s2Step328HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 877],769⟩

private def s2Step328HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 829],771⟩

private theorem s2Step328HeadBank_incomingDistinct : ([s2Step328HeadGRow,s2Step328HeadFRow,s2Step328HeadGvRow,s2Step328HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step328HeadF_Incoming : rowsOwned s2Step328HeadFBefore [s2Step328HeadFRow,s2Step328HeadGvRow,s2Step328HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step328HeadGRow,s2Step328HeadFRow,s2Step328HeadGvRow,s2Step328HeadFvRow] 1 s2Step328HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step328HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step328HeadBank_outgoingOwned : rowsOwned s2Step328HeadFvAfter [s2Step328HeadGOut,s2Step328HeadFOut,s2Step328HeadGvOut,s2Step328HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step328HeadFvAfter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step328HeadF_Outgoing : rowsOwned s2Step328HeadFvAfter [s2Step328HeadFOut,s2Step328HeadGvOut,s2Step328HeadFvOut] :=
  hmrRows_owned_drop s2Step328HeadFvAfter [s2Step328HeadGOut,s2Step328HeadFOut,s2Step328HeadGvOut,s2Step328HeadFvOut] 1 s2Step328HeadBank_outgoingOwned

private theorem s2Step328HeadF_distinct : (s2Step328HeadFRow.sign::s2Step328HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step328HeadF_owned : (s2Step328HeadFRow.sign::s2Step328HeadFRow.payload).toFinset⊆s2Step328HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step328HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step328HeadF_reserved : s2Step328HeadFBefore.reserve s2Step328HeadFFresh.toFinset=some s2Step328HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step328HeadFFresh,arenaWires]
  · norm_num [s2Step328HeadFBefore,s2Step328HeadGAfter,s2Step328HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step328HeadFAfter,s2Step328HeadFBefore,s2Step328HeadGAfter,s2Step328HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step328HeadF_checked : planRowResizeLog s2Step328HeadFBefore s2Step328HeadFRow 108 s2Step328HeadFFresh=
    some (s2Step328HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 782],768⟩,growRow 768 s2Step328HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step328HeadFBefore s2Step328HeadFAfter s2Step328HeadFRow 108 s2Step328HeadFFresh
    s2Step328HeadF_distinct s2Step328HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step328HeadF_reserved
  have rowEq : WindowRow.mk (s2Step328HeadFRow.payload++s2Step328HeadFFresh) s2Step328HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 782],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step328HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step328HeadFvBefore : Arena := s2Step328HeadGvAfter

private theorem s2Step328HeadFv_Incoming : rowsOwned s2Step328HeadFvBefore [s2Step328HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step328HeadGRow,s2Step328HeadFRow,s2Step328HeadGvRow,s2Step328HeadFvRow] 3 s2Step328HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step328HeadFvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step328HeadFv_Outgoing : rowsOwned s2Step328HeadFvAfter [s2Step328HeadFvOut] :=
  hmrRows_owned_drop s2Step328HeadFvAfter [s2Step328HeadGOut,s2Step328HeadFOut,s2Step328HeadGvOut,s2Step328HeadFvOut] 3 s2Step328HeadBank_outgoingOwned

private theorem s2Step328HeadFv_distinct : (s2Step328HeadFvRow.sign::s2Step328HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step328HeadFv_owned : (s2Step328HeadFvRow.sign::s2Step328HeadFvRow.payload).toFinset⊆s2Step328HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step328HeadFvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step328HeadFv_reserved : s2Step328HeadFvBefore.reserve s2Step328HeadFvFresh.toFinset=some s2Step328HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step328HeadFvFresh,arenaWires]
  · norm_num [s2Step328HeadFvBefore,s2Step328HeadGvAfter,s2Step328HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step328HeadFvAfter,s2Step328HeadFvBefore,s2Step328HeadGvAfter,s2Step328HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step328HeadFv_checked : planRowResizeLog s2Step328HeadFvBefore s2Step328HeadFvRow 181 s2Step328HeadFvFresh=
    some (s2Step328HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 806],770⟩,growRow 770 s2Step328HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step328HeadFvBefore s2Step328HeadFvAfter s2Step328HeadFvRow 181 s2Step328HeadFvFresh
    s2Step328HeadFv_distinct s2Step328HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step328HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step328HeadFvRow.payload++s2Step328HeadFvFresh) s2Step328HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 806],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step328HeadG_Incoming : rowsOwned s2Step328HeadGBefore [s2Step328HeadGRow,s2Step328HeadFRow,s2Step328HeadGvRow,s2Step328HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step328HeadGRow,s2Step328HeadFRow,s2Step328HeadGvRow,s2Step328HeadFvRow] 0 s2Step328HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step328HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step328HeadG_Outgoing : rowsOwned s2Step328HeadFvAfter [s2Step328HeadGOut,s2Step328HeadFOut,s2Step328HeadGvOut,s2Step328HeadFvOut] :=
  hmrRows_owned_drop s2Step328HeadFvAfter [s2Step328HeadGOut,s2Step328HeadFOut,s2Step328HeadGvOut,s2Step328HeadFvOut] 0 s2Step328HeadBank_outgoingOwned

private theorem s2Step328HeadG_distinct : (s2Step328HeadGRow.sign::s2Step328HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step328HeadG_owned : (s2Step328HeadGRow.sign::s2Step328HeadGRow.payload).toFinset⊆s2Step328HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step328HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step328HeadG_reserved : s2Step328HeadGBefore.reserve s2Step328HeadGFresh.toFinset=some s2Step328HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step328HeadGFresh,arenaWires]
  · norm_num [s2Step328HeadGBefore,s2Step328HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step328HeadGAfter,s2Step328HeadGBefore,s2Step328HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step328HeadG_checked : planRowResizeLog s2Step328HeadGBefore s2Step328HeadGRow 108 s2Step328HeadGFresh=
    some (s2Step328HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 877, 827],769⟩,growRow 769 s2Step328HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step328HeadGBefore s2Step328HeadGAfter s2Step328HeadGRow 108 s2Step328HeadGFresh
    s2Step328HeadG_distinct s2Step328HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step328HeadG_reserved
  have rowEq : WindowRow.mk (s2Step328HeadGRow.payload++s2Step328HeadGFresh) s2Step328HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 877, 827],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step328HeadGvBefore : Arena := s2Step328HeadFAfter

private theorem s2Step328HeadGv_Incoming : rowsOwned s2Step328HeadGvBefore [s2Step328HeadGvRow,s2Step328HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step328HeadGRow,s2Step328HeadFRow,s2Step328HeadGvRow,s2Step328HeadFvRow] 2 s2Step328HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step328HeadGvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step328HeadGv_Outgoing : rowsOwned s2Step328HeadFvAfter [s2Step328HeadGvOut,s2Step328HeadFvOut] :=
  hmrRows_owned_drop s2Step328HeadFvAfter [s2Step328HeadGOut,s2Step328HeadFOut,s2Step328HeadGvOut,s2Step328HeadFvOut] 2 s2Step328HeadBank_outgoingOwned

private theorem s2Step328HeadGv_distinct : (s2Step328HeadGvRow.sign::s2Step328HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step328HeadGv_owned : (s2Step328HeadGvRow.sign::s2Step328HeadGvRow.payload).toFinset⊆s2Step328HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step328HeadGvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step328HeadGv_reserved : s2Step328HeadGvBefore.reserve s2Step328HeadGvFresh.toFinset=some s2Step328HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step328HeadGvFresh,arenaWires]
  · norm_num [s2Step328HeadGvBefore,s2Step328HeadFAfter,s2Step328HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step328HeadGvAfter,s2Step328HeadGvBefore,s2Step328HeadFAfter,s2Step328HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step328HeadGv_checked : planRowResizeLog s2Step328HeadGvBefore s2Step328HeadGvRow 181 s2Step328HeadGvFresh=
    some (s2Step328HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 829, 834],771⟩,growRow 771 s2Step328HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step328HeadGvBefore s2Step328HeadGvAfter s2Step328HeadGvRow 181 s2Step328HeadGvFresh
    s2Step328HeadGv_distinct s2Step328HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step328HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step328HeadGvRow.payload++s2Step328HeadGvFresh) s2Step328HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 829, 834],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step328HeadBank_rows : planWindowRowsLog s2Step328HeadGBefore [(s2Step328HeadGRow,108),(s2Step328HeadFRow,108),(s2Step328HeadGvRow,181),(s2Step328HeadFvRow,181)] [s2Step328HeadGFresh,s2Step328HeadFFresh,s2Step328HeadGvFresh,s2Step328HeadFvFresh]=
    some (s2Step328HeadFvAfter,[s2Step328HeadGOut,s2Step328HeadFOut,s2Step328HeadGvOut,s2Step328HeadFvOut],(growRow 769 s2Step328HeadGFresh ++ (growRow 768 s2Step328HeadFFresh ++ (growRow 771 s2Step328HeadGvFresh ++ (growRow 770 s2Step328HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step328HeadFvAfter [] []=some (s2Step328HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step328HeadFvBefore s2Step328HeadFvAfter s2Step328HeadFvAfter
    s2Step328HeadFvRow s2Step328HeadFvOut 181 s2Step328HeadFvFresh [] [] []
    (growRow 770 s2Step328HeadFvFresh) ([]) s2Step328HeadFv_Incoming s2Step328HeadFv_checked h4 s2Step328HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step328HeadGvBefore s2Step328HeadGvAfter s2Step328HeadFvAfter
    s2Step328HeadGvRow s2Step328HeadGvOut 181 s2Step328HeadGvFresh [(s2Step328HeadFvRow,181)] [s2Step328HeadFvFresh] [s2Step328HeadFvOut]
    (growRow 771 s2Step328HeadGvFresh) ((growRow 770 s2Step328HeadFvFresh ++ [])) s2Step328HeadGv_Incoming s2Step328HeadGv_checked h3 s2Step328HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step328HeadFBefore s2Step328HeadFAfter s2Step328HeadFvAfter
    s2Step328HeadFRow s2Step328HeadFOut 108 s2Step328HeadFFresh [(s2Step328HeadGvRow,181),(s2Step328HeadFvRow,181)] [s2Step328HeadGvFresh,s2Step328HeadFvFresh] [s2Step328HeadGvOut,s2Step328HeadFvOut]
    (growRow 768 s2Step328HeadFFresh) ((growRow 771 s2Step328HeadGvFresh ++ (growRow 770 s2Step328HeadFvFresh ++ []))) s2Step328HeadF_Incoming s2Step328HeadF_checked h2 s2Step328HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step328HeadGBefore s2Step328HeadGAfter s2Step328HeadFvAfter
    s2Step328HeadGRow s2Step328HeadGOut 108 s2Step328HeadGFresh [(s2Step328HeadFRow,108),(s2Step328HeadGvRow,181),(s2Step328HeadFvRow,181)] [s2Step328HeadFFresh,s2Step328HeadGvFresh,s2Step328HeadFvFresh] [s2Step328HeadFOut,s2Step328HeadGvOut,s2Step328HeadFvOut]
    (growRow 769 s2Step328HeadGFresh) ((growRow 768 s2Step328HeadFFresh ++ (growRow 771 s2Step328HeadGvFresh ++ (growRow 770 s2Step328HeadFvFresh ++ [])))) s2Step328HeadG_Incoming s2Step328HeadG_checked h1 s2Step328HeadG_Outgoing
  exact h0

private theorem s2Step328HeadBank_checked : compileHmrBankResizeLog .headroom s2Step328HeadGBefore ⟨s2Step328HeadFRow,s2Step328HeadGRow,s2Step328HeadFvRow,s2Step328HeadGvRow⟩ ⟨108,108,181,181⟩ [s2Step328HeadGFresh,s2Step328HeadFFresh,s2Step328HeadGvFresh,s2Step328HeadFvFresh]=
    some (s2Step328HeadFvAfter,⟨s2Step328HeadFOut,s2Step328HeadGOut,s2Step328HeadFvOut,s2Step328HeadGvOut⟩,(growRow 769 s2Step328HeadGFresh ++ (growRow 768 s2Step328HeadFFresh ++ (growRow 771 s2Step328HeadGvFresh ++ (growRow 770 s2Step328HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step328HeadBank_rows]
  rfl

private theorem s2Step328Front_checked : compileHmrSourceFrontLog s2Step328EntryFBefore s2Step328FrontBank 107 180 ⟨106,106,180,179⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step328FrontLog=some s2Step328FrontPlan := by
  have pairEq : s2Step328FrontPair=⟨s2Step328HeadFRow,s2Step328HeadGRow,s2Step328HeadFvRow,s2Step328HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step328FrontHead=⟨s2Step328ExitFRow,s2Step328ExitGRow,s2Step328ExitFvRow,s2Step328ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step328Add0A=s2Step328FrontHead.f.wires := by decide +kernel
  have gEq : s2Step328Add0B=s2Step328FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step328Add1A=s2Step328FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step328Add1B=s2Step328FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step328EntryFBefore s2Step328FrontBank 107 180 ⟨106,106,180,179⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step328FrontLog s2Step328FrontPlan
  · exact s2Step328Front_entry
  · exact s2Step328EntryBank_checked
  · exact s2Step328Front_sigma
  · rfl
  · exact s2Step328Front_branch
  · rfl
  · simpa only [s2Step328FrontPlan,pairEq] using s2Step328HeadBank_checked
  · simpa only [s2Step328FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step328F4_checked
  · exact s2Step328Counter_checked
  · rfl
  · simpa only [s2Step328FrontPlan,headEq] using s2Step328ExitBank_checked

private theorem s2Step328Complete_explicit_checked : compileHmrEarlyStepLog s2Step328EntryFBefore s2Step328FrontBank 107 180 ⟨106,106,180,179⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step328CompleteLog=some s2Step328CompletePlan := by
  let Q := s2Step328EarlyControlPlan
  have hq := s2Step328EarlyControl_plan_checked
  have fv1 : s2Step328CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step328CompleteOut.fv.payload[2]?.getD s2Step328CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step328CompleteOut.fv.payload[3]?.getD s2Step328CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step328CompleteOut.fv.payload[4]?.getD s2Step328CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step328EntryFBefore s2Step328EarlyControlArena s2Step328FrontBank 107 180 ⟨106,106,180,179⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step328CompleteLog s2Step328FrontPlan Q
    s2Step328Front_checked s2Step328Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step328Complete_owned s2Step328Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step328EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 794 s2Step328CompleteOut.fv.second (s2Step328CompleteOut.fv.payload[2]?.getD s2Step328CompleteOut.fv.sign) (s2Step328CompleteOut.fv.payload[3]?.getD s2Step328CompleteOut.fv.sign) (s2Step328CompleteOut.fv.payload[4]?.getD s2Step328CompleteOut.fv.sign) 787 60 s2Step328EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep328Arena : Arena := s2Step328EntryFBefore
def s2PrivateStep328Bank : WindowBank := s2Step328FrontBank
def s2PrivateStep328Spec : HmrSourceWalkStepLog := ⟨107,180,⟨106,106,180,179⟩,60,.early s2Step328CompleteLog⟩
def s2PrivateStep328Plan : HmrSourceStepPlan := .early s2Step328CompletePlan
theorem s2PrivateStep328_source : s2PrivateStep328Spec=s2ObservedLogs320[8] := rfl
theorem s2PrivateStep328_checked : compileHmrSourceStepLog s2PrivateStep328Arena s2PrivateStep328Bank
    s2PrivateStep328Spec.fgWidth s2PrivateStep328Spec.vWidth s2PrivateStep328Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]
    6 498 328 s2PrivateStep328Spec.need none s2PrivateStep328Spec.log=some s2PrivateStep328Plan := by
  change compileHmrSourceStepLog s2Step328EntryFBefore s2Step328FrontBank 107 180 ⟨106,106,180,179⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 6 498 328 60 none (.early s2Step328CompleteLog)=some (.early s2Step328CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 328<498)]
  rw [s2Step328Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
