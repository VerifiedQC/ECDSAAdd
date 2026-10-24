import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep329
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

private def s2Step331CompleteMoves : List (Wire × Wire) := []

private def s2Step331EarlyControlLog : HmrEarlyControlLog := ⟨[834, 829, 779, 794, 836],[877],[827],[784, 800, 894, 896, 901, 903],[]⟩

private def s2Step331FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [794], [], [817]],[[836], [779], [834], [829]],[[], [], [], []]⟩,[786],[806],[877],[827],[784, 800, 894, 896, 901, 903, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[784, 800, 894, 896, 901, 903, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[877, 827, 784, 800]⟩

private def s2Step331CompleteLog : HmrEarlyStepLog := ⟨s2Step331FrontLog,s2Step331CompleteMoves,s2Step331EarlyControlLog⟩

private def s2Step331ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616],768⟩

private def s2Step331ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782],770⟩

private def s2Step331ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103],769⟩

private def s2Step331ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817],771⟩

private def s2Step331FrontOut : WindowBank := ⟨s2Step331ExitFOut,s2Step331ExitGOut,s2Step331ExitFvOut,s2Step331ExitGvOut⟩

private def s2Step331CompleteOut : WindowBank := s2Step331FrontOut.repacked s2Step331CompleteMoves

private def s2Step331EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step331EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step331EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step331EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step331EarlyControlPositiveArena,[877],s2Step331EarlyControlEqualityArena,[827],⟨⟨786,false⟩,[⟨⟨877,false⟩,827⟩]⟩⟩

private def s2Step331EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step331EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step331EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step331EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step331EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step331EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step331EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,834⟩,⟨⟨774,false⟩,829⟩,⟨⟨775,false⟩,779⟩,⟨⟨776,false⟩,794⟩,⟨⟨777,false⟩,836⟩]⟩

private def s2Step331EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step331EarlyControlZeroArena,s2Step331EarlyControlZeroPlan,s2Step331EarlyControlClassPlan,s2Step331EarlyControlFlagArena,s2Step331EarlyControlFittedArena,s2Step331EarlyControlHistoryArena,s2Step331EarlyControlSigmaArena,s2Step331EarlyControlOutputArena,s2Step331EarlyControlLog⟩

private def s2Step331CounterWork : List Wire := [877, 827, 784, 800]

private theorem s2Step331Counter_bounded : s2Step331CounterWork.toFinset⊆arenaWires := by norm_num [s2Step331CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step331HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step331CounterDuring : Arena := ⟨s2Step331HeadFvAfter.live∪s2Step331CounterWork.toFinset,Finset.union_subset s2Step331HeadFvAfter.bounded s2Step331Counter_bounded⟩

private def s2Step331EntryFFresh : List Wire := []

private def s2Step331EntryFvFresh : List Wire := []

private def s2Step331EntryGFresh : List Wire := [794]

private def s2Step331EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step331EntryGvFresh : List Wire := [817]

private def s2Step331ExitFExtra : List Wire := [779]

private def s2Step331ExitFvExtra : List Wire := [829]

private def s2Step331ExitGExtra : List Wire := [794, 836]

private def s2Step331ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step331ExitGvExtra : List Wire := [834]

private def s2Step331Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step331Add0Work : List Wire := [784, 800, 894, 896, 901, 903, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step331Add0_bounded : s2Step331Add0Work.toFinset⊆arenaWires := by
  have h : s2Step331Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step331Add0During : Arena := ⟨s2Step331Add0Arena.live∪s2Step331Add0Work.toFinset,Finset.union_subset s2Step331Add0Arena.bounded s2Step331Add0_bounded⟩

private def s2Step331Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step331Add1Work : List Wire := [784, 800, 894, 896, 901, 903, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step331Add1_bounded : s2Step331Add1Work.toFinset⊆arenaWires := by
  have h : s2Step331Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step331Add1During : Arena := ⟨s2Step331Add1Arena.live∪s2Step331Add1Work.toFinset,Finset.union_subset s2Step331Add1Arena.bounded s2Step331Add1_bounded⟩

private def s2Step331F4FlagArena : Arena := ⟨s2Step331HeadFvAfter.live∪{877},Finset.union_subset s2Step331HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step331F4Plan : HmrHybridF4Plan := ⟨s2Step331F4FlagArena,[877],s2Step331Add0Arena,[827],s2Step331Add0During,s2Step331Add0Work,s2Step331Add1During,s2Step331Add1Work⟩

private def s2Step331HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 779],768⟩

private def s2Step331HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 829],770⟩

private def s2Step331HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 794, 836],769⟩

private def s2Step331HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834],771⟩

private def s2Step331FrontHead : WindowBank := ⟨s2Step331HeadFOut,s2Step331HeadGOut,s2Step331HeadFvOut,s2Step331HeadGvOut⟩

private def s2Step331EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616],768⟩

private def s2Step331EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782],770⟩

private def s2Step331EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 794],769⟩

private def s2Step331EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817],771⟩

private def s2Step331FrontPair : WindowBank := ⟨s2Step331EntryFOut,s2Step331EntryGOut,s2Step331EntryFvOut,s2Step331EntryGvOut⟩

private def s2Step331FrontSigmaArena : Arena := ⟨s2Step331EntryGvAfter.live∪{786},Finset.union_subset s2Step331EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step331HeadFFresh : List Wire := [779]

private def s2Step331HeadFvFresh : List Wire := [829]

private def s2Step331HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step331HeadGFresh : List Wire := [836]

private def s2Step331HeadGvFresh : List Wire := [834]

private def s2Step331FrontPlan : HmrSourceFront := ⟨s2Step331EntryGvAfter,s2Step331FrontPair,(growRow 768 s2Step331EntryFFresh ++ (growRow 769 s2Step331EntryGFresh ++ (growRow 770 s2Step331EntryFvFresh ++ (growRow 771 s2Step331EntryGvFresh ++ [])))),s2Step331FrontSigmaArena,[786],s2Step331HeadGBefore,[806],
  s2Step331HeadFvAfter,s2Step331FrontHead,(growRow 769 s2Step331HeadGFresh ++ (growRow 768 s2Step331HeadFFresh ++ (growRow 771 s2Step331HeadGvFresh ++ (growRow 770 s2Step331HeadFvFresh ++ [])))),s2Step331F4Plan,s2Step331CounterDuring,s2Step331CounterWork,s2Step331ExitGvAfter,s2Step331FrontOut,(shrinkRow 769 s2Step331ExitGExtra ++ (shrinkRow 768 s2Step331ExitFExtra ++ (shrinkRow 770 s2Step331ExitFvExtra ++ (shrinkRow 771 s2Step331ExitGvExtra ++ []))))⟩

private def s2Step331CompletePlan : HmrEarlyStepPlan := ⟨s2Step331FrontPlan,s2Step331EarlyControlArena,s2Step331EarlyControlPlan,s2Step331CompleteMoves⟩

private theorem s2Step331Complete_apart : List.Disjoint (s2Step331CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [786, 806, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] := by
  have nd : ((s2Step331CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[786, 806, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step331Complete_owned : (s2Step331CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step331EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step331EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step331Complete_repack : s2Step331ExitGvAfter.checkRepack s2Step331CompleteMoves=some s2Step331EarlyControlArena := by rfl

private theorem s2Step331EarlyControl_branchOwned : ([806] : List Wire).toFinset⊆s2Step331EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step331EarlyControlSigmaArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step331EarlyControl_branch : compileHmrBranchRetirement s2Step331EarlyControlSigmaArena 806=some s2Step331EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step331EarlyControl_branchOwned
  · ext q
    simp [s2Step331EarlyControlOutputArena,s2Step331EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step331EarlyControl_classEqualityBorrow : s2Step331EarlyControlPositiveArena.checkBorrow (([786, 877] : List Wire).length-1) s2Step331EarlyControlLog.classWork=some s2Step331EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step331EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step331EarlyControlPositiveArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step331EarlyControlEqualityArena,s2Step331EarlyControlPositiveArena,s2Step331EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step331EarlyControl_classEqualityOwned : ([786, 877] : List Wire).toFinset⊆s2Step331EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step331EarlyControlPositiveArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step331EarlyControl_classEquality : compileHmrEqualityLog s2Step331EarlyControlPositiveArena [786, 877] 0 s2Step331EarlyControlLog.classWork=some (s2Step331EarlyControlEqualityArena,s2Step331EarlyControlLog.classWork,s2Step331EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step331EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step331EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step331EarlyControl_classOwned : ([777, 836, 786] : List Wire).toFinset⊆s2Step331EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step331EarlyControlZeroArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step331EarlyControl_positiveBorrow : s2Step331EarlyControlZeroArena.checkBorrow (1) s2Step331EarlyControlLog.positiveWork=some s2Step331EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step331EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step331EarlyControlZeroArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step331EarlyControlPositiveArena,s2Step331EarlyControlZeroArena,s2Step331EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step331EarlyControl_class : compileHmrSourceClassLog s2Step331EarlyControlZeroArena false 777 s2Step331EarlyControlZeroPlan.top 0 786 s2Step331EarlyControlLog.positiveWork s2Step331EarlyControlLog.classWork=some s2Step331EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step331EarlyControlClassPlan s2Step331EarlyControlZeroArena false 777 s2Step331EarlyControlZeroPlan.top 0 786
  constructor
  · decide +kernel
  · exact s2Step331EarlyControl_classOwned
  · exact s2Step331EarlyControl_positiveBorrow
  · exact s2Step331EarlyControl_classEquality

private theorem s2Step331EarlyControl_entryRecordOwned : ([806, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step331EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step331EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step331EarlyControl_entrySigmaOwned : ([786, 254] : List Wire).toFinset⊆s2Step331EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step331EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step331EarlyControl_fitBorrow : s2Step331EarlyControlFlagArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step331EarlyControlLog.recordFresh=some s2Step331EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step331EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step331EarlyControlFlagArena (fun q => (0≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step331EarlyControlFittedArena,s2Step331EarlyControlFlagArena,s2Step331EarlyControlLog,arenaWires]

private theorem s2Step331EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step331EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step331EarlyControlFlagArena (fun q => (0≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step331EarlyControl_fit : compileHmrRecordGrowLog s2Step331EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step331EarlyControlLog.recordFresh=some s2Step331EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step331EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step331EarlyControl_fitBorrow

private theorem s2Step331EarlyControl_flagsBorrow : s2Step331EarlyControlEqualityArena.checkBorrow (6) s2Step331EarlyControlLog.flagWork=some s2Step331EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step331EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step331EarlyControlEqualityArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step331EarlyControlFlagArena,s2Step331EarlyControlEqualityArena,s2Step331EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step331EarlyControl_flagsOwned : ([827, 253, 252, 251] : List Wire).toFinset⊆s2Step331EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step331EarlyControlEqualityArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step331EarlyControl_flags : compileHmrFlagsLog s2Step331EarlyControlClassPlan.equalityArena s2Step331EarlyControlClassPlan.equality.top 253 252 251 s2Step331EarlyControlLog.flagWork=some s2Step331EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step331EarlyControl_flagsOwned⟩
  · exact s2Step331EarlyControl_flagsBorrow

private theorem s2Step331EarlyControl_historyBorrow : s2Step331EarlyControlArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step331EarlyControlLog.recordFresh=some s2Step331EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step331EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step331EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step331EarlyControlHistoryArena,s2Step331EarlyControlArena,s2Step331EarlyControlLog,arenaWires]

private theorem s2Step331EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step331EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step331EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step331EarlyControl_history : compileHmrRecordGrowLog s2Step331EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step331EarlyControlLog.recordFresh=some s2Step331EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step331EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step331EarlyControl_historyBorrow

private theorem s2Step331EarlyControl_sigmaOwned : ([254, 786] : List Wire).toFinset⊆s2Step331EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step331EarlyControlHistoryArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step331EarlyControl_sigmaReleaseOwned : ([786] : List Wire).toFinset⊆s2Step331EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step331EarlyControlHistoryArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step331EarlyControl_sigmaRelease : s2Step331EarlyControlHistoryArena.release {786} (fun _ => false)=some s2Step331EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step331EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step331EarlyControlSigmaArena,s2Step331EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step331EarlyControl_sigma : compileHmrSigmaDropLog s2Step331EarlyControlHistoryArena false 0 0 254 786 []=some s2Step331EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step331EarlyControl_sigmaOwned⟩
  · exact s2Step331EarlyControl_sigmaRelease

private theorem s2Step331EarlyControl_zeroBorrow : s2Step331EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step331EarlyControlLog.zeroWork=some s2Step331EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step331EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step331EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step331EarlyControlZeroArena,s2Step331EarlyControlArena,s2Step331EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step331EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step331EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step331EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step331EarlyControl_zero : compileHmrEqualityLog s2Step331EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step331EarlyControlLog.zeroWork=some (s2Step331EarlyControlZeroArena,s2Step331EarlyControlLog.zeroWork,s2Step331EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step331EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step331EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step331EarlyControl_logged : s2Step331EarlyControlPlan.Logged s2Step331EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 786 254 253 252 251 806 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step331EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step331EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step331EarlyControl_zero
  · exact s2Step331EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step331EarlyControl_flags
  · exact s2Step331EarlyControl_fit
  · exact s2Step331EarlyControl_history
  · exact s2Step331EarlyControl_sigma
  · exact s2Step331EarlyControl_branch

private theorem s2Step331EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step331EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 786 254 253 252 251 806 60 s2Step331EarlyControlLog=some s2Step331EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step331EarlyControlPlan s2Step331EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 786 254 253 252 251 806 60 s2Step331EarlyControl_logged

private def s2Step331EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<817) ∨ (818≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step331EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616],768⟩

private def s2Step331EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782],770⟩

private def s2Step331EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103],769⟩

private def s2Step331EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787],771⟩

private def s2Step331FrontBank : WindowBank := ⟨s2Step331EntryFRow,s2Step331EntryGRow,s2Step331EntryFvRow,s2Step331EntryGvRow⟩

private def s2Step331Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 779, 768]

private def s2Step331Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 794, 836, 769]

private def s2Step331Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 829, 770]

private def s2Step331Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 771]

private theorem s2Step331Counter_apart : Disjoint s2Step331HeadFvAfter.live s2Step331CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step331HeadFvAfter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step331Counter_borrowed : s2Step331HeadFvAfter.checkBorrow 4 s2Step331CounterWork=some s2Step331CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step331HeadFvAfter s2Step331CounterDuring s2Step331CounterWork.toFinset s2Step331Counter_bounded s2Step331Counter_apart rfl

private theorem s2Step331Counter_owned : (786::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step331HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step331HeadFvAfter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step331Counter_checked : compileHmrCounterStepLog s2Step331HeadFvAfter true 786 [772, 773, 774, 775, 776, 777] s2Step331CounterWork=some s2Step331CounterDuring := by
  have owned : ∀q∈786::[772, 773, 774, 775, 776, 777],q∈s2Step331HeadFvAfter.live := fun q hq => s2Step331Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step331Counter_borrowed

private def s2Step331EntryFAfter : Arena := s2Step331EntryFBefore

private theorem s2Step331EntryBank_incomingDistinct : ([s2Step331EntryFRow,s2Step331EntryGRow,s2Step331EntryFvRow,s2Step331EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step331EntryF_Incoming : rowsOwned s2Step331EntryFBefore [s2Step331EntryFRow,s2Step331EntryGRow,s2Step331EntryFvRow,s2Step331EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step331EntryFRow,s2Step331EntryGRow,s2Step331EntryFvRow,s2Step331EntryGvRow] 0 s2Step331EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step331EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<817) ∨ (818≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step331EntryBank_outgoingOwned : rowsOwned s2Step331EntryGvAfter [s2Step331EntryFOut,s2Step331EntryGOut,s2Step331EntryFvOut,s2Step331EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step331EntryGvAfter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step331EntryF_Outgoing : rowsOwned s2Step331EntryGvAfter [s2Step331EntryFOut,s2Step331EntryGOut,s2Step331EntryFvOut,s2Step331EntryGvOut] :=
  hmrRows_owned_drop s2Step331EntryGvAfter [s2Step331EntryFOut,s2Step331EntryGOut,s2Step331EntryFvOut,s2Step331EntryGvOut] 0 s2Step331EntryBank_outgoingOwned

private theorem s2Step331EntryF_distinct : (s2Step331EntryFRow.sign::s2Step331EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step331EntryF_owned : (s2Step331EntryFRow.sign::s2Step331EntryFRow.payload).toFinset⊆s2Step331EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step331EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<817) ∨ (818≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step331EntryF_reserved : s2Step331EntryFBefore.reserve s2Step331EntryFFresh.toFinset=some s2Step331EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step331EntryFFresh,arenaWires]
  · norm_num [s2Step331EntryFBefore,s2Step331EntryFFresh,arenaWires]
  · simp only [s2Step331EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step331EntryF_checked : planRowResizeLog s2Step331EntryFBefore s2Step331EntryFRow 105 s2Step331EntryFFresh=
    some (s2Step331EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616],768⟩,growRow 768 s2Step331EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step331EntryFBefore s2Step331EntryFAfter s2Step331EntryFRow 105 s2Step331EntryFFresh
    s2Step331EntryF_distinct s2Step331EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step331EntryF_reserved
  have rowEq : WindowRow.mk (s2Step331EntryFRow.payload++s2Step331EntryFFresh) s2Step331EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step331EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<817) ∨ (818≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step331EntryFvAfter : Arena := s2Step331EntryGAfter

private def s2Step331EntryFvBefore : Arena := s2Step331EntryGAfter

private theorem s2Step331EntryFv_Incoming : rowsOwned s2Step331EntryFvBefore [s2Step331EntryFvRow,s2Step331EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step331EntryFRow,s2Step331EntryGRow,s2Step331EntryFvRow,s2Step331EntryGvRow] 2 s2Step331EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step331EntryFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<817) ∨ (818≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step331EntryFv_Outgoing : rowsOwned s2Step331EntryGvAfter [s2Step331EntryFvOut,s2Step331EntryGvOut] :=
  hmrRows_owned_drop s2Step331EntryGvAfter [s2Step331EntryFOut,s2Step331EntryGOut,s2Step331EntryFvOut,s2Step331EntryGvOut] 2 s2Step331EntryBank_outgoingOwned

private theorem s2Step331EntryFv_distinct : (s2Step331EntryFvRow.sign::s2Step331EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step331EntryFv_owned : (s2Step331EntryFvRow.sign::s2Step331EntryFvRow.payload).toFinset⊆s2Step331EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step331EntryFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<817) ∨ (818≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step331EntryFv_reserved : s2Step331EntryFvBefore.reserve s2Step331EntryFvFresh.toFinset=some s2Step331EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step331EntryFvFresh,arenaWires]
  · norm_num [s2Step331EntryFvBefore,s2Step331EntryGAfter,s2Step331EntryFvFresh,arenaWires]
  · simp only [s2Step331EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step331EntryFv_checked : planRowResizeLog s2Step331EntryFvBefore s2Step331EntryFvRow 181 s2Step331EntryFvFresh=
    some (s2Step331EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782],770⟩,growRow 770 s2Step331EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step331EntryFvBefore s2Step331EntryFvAfter s2Step331EntryFvRow 181 s2Step331EntryFvFresh
    s2Step331EntryFv_distinct s2Step331EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step331EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step331EntryFvRow.payload++s2Step331EntryFvFresh) s2Step331EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step331EntryGBefore : Arena := s2Step331EntryFBefore

private theorem s2Step331EntryG_Incoming : rowsOwned s2Step331EntryGBefore [s2Step331EntryGRow,s2Step331EntryFvRow,s2Step331EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step331EntryFRow,s2Step331EntryGRow,s2Step331EntryFvRow,s2Step331EntryGvRow] 1 s2Step331EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step331EntryGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<817) ∨ (818≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step331EntryG_Outgoing : rowsOwned s2Step331EntryGvAfter [s2Step331EntryGOut,s2Step331EntryFvOut,s2Step331EntryGvOut] :=
  hmrRows_owned_drop s2Step331EntryGvAfter [s2Step331EntryFOut,s2Step331EntryGOut,s2Step331EntryFvOut,s2Step331EntryGvOut] 1 s2Step331EntryBank_outgoingOwned

private theorem s2Step331EntryG_distinct : (s2Step331EntryGRow.sign::s2Step331EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step331EntryG_owned : (s2Step331EntryGRow.sign::s2Step331EntryGRow.payload).toFinset⊆s2Step331EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step331EntryGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<817) ∨ (818≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step331EntryG_reserved : s2Step331EntryGBefore.reserve s2Step331EntryGFresh.toFinset=some s2Step331EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step331EntryGFresh,arenaWires]
  · norm_num [s2Step331EntryGBefore,s2Step331EntryFBefore,s2Step331EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step331EntryGAfter,s2Step331EntryGBefore,s2Step331EntryFBefore,s2Step331EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step331EntryG_checked : planRowResizeLog s2Step331EntryGBefore s2Step331EntryGRow 105 s2Step331EntryGFresh=
    some (s2Step331EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 794],769⟩,growRow 769 s2Step331EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step331EntryGBefore s2Step331EntryGAfter s2Step331EntryGRow 105 s2Step331EntryGFresh
    s2Step331EntryG_distinct s2Step331EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step331EntryG_reserved
  have rowEq : WindowRow.mk (s2Step331EntryGRow.payload++s2Step331EntryGFresh) s2Step331EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 794],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step331EntryGvBefore : Arena := s2Step331EntryGAfter

private theorem s2Step331EntryGv_Incoming : rowsOwned s2Step331EntryGvBefore [s2Step331EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step331EntryFRow,s2Step331EntryGRow,s2Step331EntryFvRow,s2Step331EntryGvRow] 3 s2Step331EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step331EntryGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<817) ∨ (818≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step331EntryGv_Outgoing : rowsOwned s2Step331EntryGvAfter [s2Step331EntryGvOut] :=
  hmrRows_owned_drop s2Step331EntryGvAfter [s2Step331EntryFOut,s2Step331EntryGOut,s2Step331EntryFvOut,s2Step331EntryGvOut] 3 s2Step331EntryBank_outgoingOwned

private theorem s2Step331EntryGv_distinct : (s2Step331EntryGvRow.sign::s2Step331EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step331EntryGv_owned : (s2Step331EntryGvRow.sign::s2Step331EntryGvRow.payload).toFinset⊆s2Step331EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step331EntryGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<817) ∨ (818≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step331EntryGv_reserved : s2Step331EntryGvBefore.reserve s2Step331EntryGvFresh.toFinset=some s2Step331EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step331EntryGvFresh,arenaWires]
  · norm_num [s2Step331EntryGvBefore,s2Step331EntryGAfter,s2Step331EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step331EntryGvAfter,s2Step331EntryGvBefore,s2Step331EntryGAfter,s2Step331EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step331EntryGv_checked : planRowResizeLog s2Step331EntryGvBefore s2Step331EntryGvRow 181 s2Step331EntryGvFresh=
    some (s2Step331EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817],771⟩,growRow 771 s2Step331EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step331EntryGvBefore s2Step331EntryGvAfter s2Step331EntryGvRow 181 s2Step331EntryGvFresh
    s2Step331EntryGv_distinct s2Step331EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step331EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step331EntryGvRow.payload++s2Step331EntryGvFresh) s2Step331EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step331EntryBank_rows : planWindowRowsLog s2Step331EntryFBefore [(s2Step331EntryFRow,105),(s2Step331EntryGRow,105),(s2Step331EntryFvRow,181),(s2Step331EntryGvRow,181)] [s2Step331EntryFFresh,s2Step331EntryGFresh,s2Step331EntryFvFresh,s2Step331EntryGvFresh]=
    some (s2Step331EntryGvAfter,[s2Step331EntryFOut,s2Step331EntryGOut,s2Step331EntryFvOut,s2Step331EntryGvOut],(growRow 768 s2Step331EntryFFresh ++ (growRow 769 s2Step331EntryGFresh ++ (growRow 770 s2Step331EntryFvFresh ++ (growRow 771 s2Step331EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step331EntryGvAfter [] []=some (s2Step331EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step331EntryGvBefore s2Step331EntryGvAfter s2Step331EntryGvAfter
    s2Step331EntryGvRow s2Step331EntryGvOut 181 s2Step331EntryGvFresh [] [] []
    (growRow 771 s2Step331EntryGvFresh) ([]) s2Step331EntryGv_Incoming s2Step331EntryGv_checked h4 s2Step331EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step331EntryFvBefore s2Step331EntryFvAfter s2Step331EntryGvAfter
    s2Step331EntryFvRow s2Step331EntryFvOut 181 s2Step331EntryFvFresh [(s2Step331EntryGvRow,181)] [s2Step331EntryGvFresh] [s2Step331EntryGvOut]
    (growRow 770 s2Step331EntryFvFresh) ((growRow 771 s2Step331EntryGvFresh ++ [])) s2Step331EntryFv_Incoming s2Step331EntryFv_checked h3 s2Step331EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step331EntryGBefore s2Step331EntryGAfter s2Step331EntryGvAfter
    s2Step331EntryGRow s2Step331EntryGOut 105 s2Step331EntryGFresh [(s2Step331EntryFvRow,181),(s2Step331EntryGvRow,181)] [s2Step331EntryFvFresh,s2Step331EntryGvFresh] [s2Step331EntryFvOut,s2Step331EntryGvOut]
    (growRow 769 s2Step331EntryGFresh) ((growRow 770 s2Step331EntryFvFresh ++ (growRow 771 s2Step331EntryGvFresh ++ []))) s2Step331EntryG_Incoming s2Step331EntryG_checked h2 s2Step331EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step331EntryFBefore s2Step331EntryFAfter s2Step331EntryGvAfter
    s2Step331EntryFRow s2Step331EntryFOut 105 s2Step331EntryFFresh [(s2Step331EntryGRow,105),(s2Step331EntryFvRow,181),(s2Step331EntryGvRow,181)] [s2Step331EntryGFresh,s2Step331EntryFvFresh,s2Step331EntryGvFresh] [s2Step331EntryGOut,s2Step331EntryFvOut,s2Step331EntryGvOut]
    (growRow 768 s2Step331EntryFFresh) ((growRow 769 s2Step331EntryGFresh ++ (growRow 770 s2Step331EntryFvFresh ++ (growRow 771 s2Step331EntryGvFresh ++ [])))) s2Step331EntryF_Incoming s2Step331EntryF_checked h1 s2Step331EntryF_Outgoing
  exact h0

private theorem s2Step331EntryBank_checked : compileHmrBankResizeLog .entry s2Step331EntryFBefore ⟨s2Step331EntryFRow,s2Step331EntryGRow,s2Step331EntryFvRow,s2Step331EntryGvRow⟩ ⟨105,105,181,181⟩ [s2Step331EntryFFresh,s2Step331EntryGFresh,s2Step331EntryFvFresh,s2Step331EntryGvFresh]=
    some (s2Step331EntryGvAfter,⟨s2Step331EntryFOut,s2Step331EntryGOut,s2Step331EntryFvOut,s2Step331EntryGvOut⟩,(growRow 768 s2Step331EntryFFresh ++ (growRow 769 s2Step331EntryGFresh ++ (growRow 770 s2Step331EntryFvFresh ++ (growRow 771 s2Step331EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step331EntryBank_rows]
  rfl

private def s2Step331ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step331ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step331ExitFBefore : Arena := s2Step331ExitGAfter

private def s2Step331ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 779],768⟩

private def s2Step331ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 829],770⟩

private def s2Step331ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 794, 836],769⟩

private def s2Step331ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834],771⟩

private theorem s2Step331ExitBank_incomingDistinct : ([s2Step331ExitGRow,s2Step331ExitFRow,s2Step331ExitFvRow,s2Step331ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step331ExitF_Incoming : rowsOwned s2Step331ExitFBefore [s2Step331ExitFRow,s2Step331ExitFvRow,s2Step331ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step331ExitGRow,s2Step331ExitFRow,s2Step331ExitFvRow,s2Step331ExitGvRow] 1 s2Step331ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step331ExitFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step331ExitBank_outgoingOwned : rowsOwned s2Step331ExitGvAfter [s2Step331ExitGOut,s2Step331ExitFOut,s2Step331ExitFvOut,s2Step331ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step331ExitGvAfter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step331ExitF_Outgoing : rowsOwned s2Step331ExitGvAfter [s2Step331ExitFOut,s2Step331ExitFvOut,s2Step331ExitGvOut] :=
  hmrRows_owned_drop s2Step331ExitGvAfter [s2Step331ExitGOut,s2Step331ExitFOut,s2Step331ExitFvOut,s2Step331ExitGvOut] 1 s2Step331ExitBank_outgoingOwned

private theorem s2Step331ExitF_distinct : (s2Step331ExitFRow.sign::s2Step331ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step331ExitF_owned : (s2Step331ExitFRow.sign::s2Step331ExitFRow.payload).toFinset⊆s2Step331ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step331ExitFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step331ExitF_retired : s2Step331ExitFBefore.retireSet s2Step331ExitFExtra.toFinset=s2Step331ExitFAfter := by
  unfold Arena.retireSet s2Step331ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step331ExitFBefore,s2Step331ExitGAfter,s2Step331ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step331ExitF_checked : planRowResizeLog s2Step331ExitFBefore s2Step331ExitFRow 105 []=
    some (s2Step331ExitFAfter,s2Step331ExitFOut,shrinkRow 768 s2Step331ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step331ExitFBefore s2Step331ExitFRow 105 s2Step331ExitF_distinct s2Step331ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step331ExitFRow.payload.take 105) s2Step331ExitFRow.sign=s2Step331ExitFOut := by decide +kernel
  have hi : s2Step331ExitFRow.payload.drop 105=s2Step331ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step331ExitF_retired] at result
  exact result

private def s2Step331ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step331ExitFvBefore : Arena := s2Step331ExitFAfter

private theorem s2Step331ExitFv_Incoming : rowsOwned s2Step331ExitFvBefore [s2Step331ExitFvRow,s2Step331ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step331ExitGRow,s2Step331ExitFRow,s2Step331ExitFvRow,s2Step331ExitGvRow] 2 s2Step331ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step331ExitFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step331ExitFv_Outgoing : rowsOwned s2Step331ExitGvAfter [s2Step331ExitFvOut,s2Step331ExitGvOut] :=
  hmrRows_owned_drop s2Step331ExitGvAfter [s2Step331ExitGOut,s2Step331ExitFOut,s2Step331ExitFvOut,s2Step331ExitGvOut] 2 s2Step331ExitBank_outgoingOwned

private theorem s2Step331ExitFv_distinct : (s2Step331ExitFvRow.sign::s2Step331ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step331ExitFv_owned : (s2Step331ExitFvRow.sign::s2Step331ExitFvRow.payload).toFinset⊆s2Step331ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step331ExitFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step331ExitFv_retired : s2Step331ExitFvBefore.retireSet s2Step331ExitFvExtra.toFinset=s2Step331ExitFvAfter := by
  unfold Arena.retireSet s2Step331ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step331ExitFvBefore,s2Step331ExitFAfter,s2Step331ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step331ExitFv_checked : planRowResizeLog s2Step331ExitFvBefore s2Step331ExitFvRow 181 []=
    some (s2Step331ExitFvAfter,s2Step331ExitFvOut,shrinkRow 770 s2Step331ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step331ExitFvBefore s2Step331ExitFvRow 181 s2Step331ExitFv_distinct s2Step331ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step331ExitFvRow.payload.take 181) s2Step331ExitFvRow.sign=s2Step331ExitFvOut := by decide +kernel
  have hi : s2Step331ExitFvRow.payload.drop 181=s2Step331ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step331ExitFv_retired] at result
  exact result

private def s2Step331ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private theorem s2Step331ExitG_Incoming : rowsOwned s2Step331ExitGBefore [s2Step331ExitGRow,s2Step331ExitFRow,s2Step331ExitFvRow,s2Step331ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step331ExitGRow,s2Step331ExitFRow,s2Step331ExitFvRow,s2Step331ExitGvRow] 0 s2Step331ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step331ExitGBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step331ExitG_Outgoing : rowsOwned s2Step331ExitGvAfter [s2Step331ExitGOut,s2Step331ExitFOut,s2Step331ExitFvOut,s2Step331ExitGvOut] :=
  hmrRows_owned_drop s2Step331ExitGvAfter [s2Step331ExitGOut,s2Step331ExitFOut,s2Step331ExitFvOut,s2Step331ExitGvOut] 0 s2Step331ExitBank_outgoingOwned

private theorem s2Step331ExitG_distinct : (s2Step331ExitGRow.sign::s2Step331ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step331ExitG_owned : (s2Step331ExitGRow.sign::s2Step331ExitGRow.payload).toFinset⊆s2Step331ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step331ExitGBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step331ExitG_retired : s2Step331ExitGBefore.retireSet s2Step331ExitGExtra.toFinset=s2Step331ExitGAfter := by
  unfold Arena.retireSet s2Step331ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step331ExitGBefore,s2Step331ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step331ExitG_checked : planRowResizeLog s2Step331ExitGBefore s2Step331ExitGRow 104 []=
    some (s2Step331ExitGAfter,s2Step331ExitGOut,shrinkRow 769 s2Step331ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step331ExitGBefore s2Step331ExitGRow 104 s2Step331ExitG_distinct s2Step331ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step331ExitGRow.payload.take 104) s2Step331ExitGRow.sign=s2Step331ExitGOut := by decide +kernel
  have hi : s2Step331ExitGRow.payload.drop 104=s2Step331ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step331ExitG_retired] at result
  exact result

private def s2Step331ExitGvBefore : Arena := s2Step331ExitFvAfter

private theorem s2Step331ExitGv_Incoming : rowsOwned s2Step331ExitGvBefore [s2Step331ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step331ExitGRow,s2Step331ExitFRow,s2Step331ExitFvRow,s2Step331ExitGvRow] 3 s2Step331ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step331ExitGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step331ExitGv_Outgoing : rowsOwned s2Step331ExitGvAfter [s2Step331ExitGvOut] :=
  hmrRows_owned_drop s2Step331ExitGvAfter [s2Step331ExitGOut,s2Step331ExitFOut,s2Step331ExitFvOut,s2Step331ExitGvOut] 3 s2Step331ExitBank_outgoingOwned

private theorem s2Step331ExitGv_distinct : (s2Step331ExitGvRow.sign::s2Step331ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step331ExitGv_owned : (s2Step331ExitGvRow.sign::s2Step331ExitGvRow.payload).toFinset⊆s2Step331ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step331ExitGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step331ExitGv_retired : s2Step331ExitGvBefore.retireSet s2Step331ExitGvExtra.toFinset=s2Step331ExitGvAfter := by
  unfold Arena.retireSet s2Step331ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step331ExitGvBefore,s2Step331ExitFvAfter,s2Step331ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step331ExitGv_checked : planRowResizeLog s2Step331ExitGvBefore s2Step331ExitGvRow 181 []=
    some (s2Step331ExitGvAfter,s2Step331ExitGvOut,shrinkRow 771 s2Step331ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step331ExitGvBefore s2Step331ExitGvRow 181 s2Step331ExitGv_distinct s2Step331ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step331ExitGvRow.payload.take 181) s2Step331ExitGvRow.sign=s2Step331ExitGvOut := by decide +kernel
  have hi : s2Step331ExitGvRow.payload.drop 181=s2Step331ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step331ExitGv_retired] at result
  exact result

private theorem s2Step331ExitBank_rows : planWindowRowsLog s2Step331ExitGBefore [(s2Step331ExitGRow,104),(s2Step331ExitFRow,105),(s2Step331ExitFvRow,181),(s2Step331ExitGvRow,181)] [[],[],[],[]]=
    some (s2Step331ExitGvAfter,[s2Step331ExitGOut,s2Step331ExitFOut,s2Step331ExitFvOut,s2Step331ExitGvOut],(shrinkRow 769 s2Step331ExitGExtra ++ (shrinkRow 768 s2Step331ExitFExtra ++ (shrinkRow 770 s2Step331ExitFvExtra ++ (shrinkRow 771 s2Step331ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step331ExitGvAfter [] []=some (s2Step331ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step331ExitGvBefore s2Step331ExitGvAfter s2Step331ExitGvAfter
    s2Step331ExitGvRow s2Step331ExitGvOut 181 [] [] [] []
    (shrinkRow 771 s2Step331ExitGvExtra) ([]) s2Step331ExitGv_Incoming s2Step331ExitGv_checked h4 s2Step331ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step331ExitFvBefore s2Step331ExitFvAfter s2Step331ExitGvAfter
    s2Step331ExitFvRow s2Step331ExitFvOut 181 [] [(s2Step331ExitGvRow,181)] [[]] [s2Step331ExitGvOut]
    (shrinkRow 770 s2Step331ExitFvExtra) ((shrinkRow 771 s2Step331ExitGvExtra ++ [])) s2Step331ExitFv_Incoming s2Step331ExitFv_checked h3 s2Step331ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step331ExitFBefore s2Step331ExitFAfter s2Step331ExitGvAfter
    s2Step331ExitFRow s2Step331ExitFOut 105 [] [(s2Step331ExitFvRow,181),(s2Step331ExitGvRow,181)] [[],[]] [s2Step331ExitFvOut,s2Step331ExitGvOut]
    (shrinkRow 768 s2Step331ExitFExtra) ((shrinkRow 770 s2Step331ExitFvExtra ++ (shrinkRow 771 s2Step331ExitGvExtra ++ []))) s2Step331ExitF_Incoming s2Step331ExitF_checked h2 s2Step331ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step331ExitGBefore s2Step331ExitGAfter s2Step331ExitGvAfter
    s2Step331ExitGRow s2Step331ExitGOut 104 [] [(s2Step331ExitFRow,105),(s2Step331ExitFvRow,181),(s2Step331ExitGvRow,181)] [[],[],[]] [s2Step331ExitFOut,s2Step331ExitFvOut,s2Step331ExitGvOut]
    (shrinkRow 769 s2Step331ExitGExtra) ((shrinkRow 768 s2Step331ExitFExtra ++ (shrinkRow 770 s2Step331ExitFvExtra ++ (shrinkRow 771 s2Step331ExitGvExtra ++ [])))) s2Step331ExitG_Incoming s2Step331ExitG_checked h1 s2Step331ExitG_Outgoing
  exact h0

private theorem s2Step331ExitBank_checked : compileHmrBankResizeLog .exit s2Step331ExitGBefore ⟨s2Step331ExitFRow,s2Step331ExitGRow,s2Step331ExitFvRow,s2Step331ExitGvRow⟩ ⟨105,104,181,181⟩ [[],[],[],[]]=
    some (s2Step331ExitGvAfter,⟨s2Step331ExitFOut,s2Step331ExitGOut,s2Step331ExitFvOut,s2Step331ExitGvOut⟩,(shrinkRow 769 s2Step331ExitGExtra ++ (shrinkRow 768 s2Step331ExitFExtra ++ (shrinkRow 770 s2Step331ExitFvExtra ++ (shrinkRow 771 s2Step331ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step331ExitBank_rows]
  rfl

private theorem s2Step331Add0_apart : Disjoint s2Step331Add0Arena.live s2Step331Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step331Add0Arena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step331Add0_card : s2Step331Add0Arena.live.card=906 := by
  decide +kernel

private theorem s2Step331Add0_borrowed : s2Step331Add0Arena.checkBorrow (hmrHybridCount s2Step331Add0Arena s2Step331Add0B.length) s2Step331Add0Work=some s2Step331Add0During := by
  have len : s2Step331Add0Work.length=hmrHybridCount s2Step331Add0Arena s2Step331Add0B.length := by
    rw [hmrHybridCount,s2Step331Add0_card]
    decide +kernel
  have nd : s2Step331Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step331Add0Arena s2Step331Add0During s2Step331Add0Work.toFinset s2Step331Add0_bounded s2Step331Add0_apart rfl

private theorem s2Step331Add0_distinct : (877::806::827::(s2Step331Add0A++s2Step331Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step331Add0_owned : (877::806::827::(s2Step331Add0A++s2Step331Add0B)).toFinset⊆s2Step331Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step331Add0Arena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step331Add0_checked : compileHmrHybridCinLog s2Step331Add0Arena 806 877 827 s2Step331Add0A s2Step331Add0B s2Step331Add0Work=some s2Step331Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step331Add0Arena s2Step331Add0During 806 877 827 s2Step331Add0A s2Step331Add0B s2Step331Add0Work
    (by decide +kernel) (by decide +kernel) s2Step331Add0_distinct
    (fun q hq => s2Step331Add0_owned (List.mem_toFinset.mpr hq)) s2Step331Add0_borrowed

private theorem s2Step331Add1_apart : Disjoint s2Step331Add1Arena.live s2Step331Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step331Add1Arena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step331Add1_card : s2Step331Add1Arena.live.card=906 := by
  decide +kernel

private theorem s2Step331Add1_borrowed : s2Step331Add1Arena.checkBorrow (hmrHybridCount s2Step331Add1Arena s2Step331Add1B.length) s2Step331Add1Work=some s2Step331Add1During := by
  have len : s2Step331Add1Work.length=hmrHybridCount s2Step331Add1Arena s2Step331Add1B.length := by
    rw [hmrHybridCount,s2Step331Add1_card]
    decide +kernel
  have nd : s2Step331Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step331Add1Arena s2Step331Add1During s2Step331Add1Work.toFinset s2Step331Add1_bounded s2Step331Add1_apart rfl

private theorem s2Step331Add1_distinct : (877::806::827::(s2Step331Add1A++s2Step331Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step331Add1_owned : (877::806::827::(s2Step331Add1A++s2Step331Add1B)).toFinset⊆s2Step331Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step331Add1Arena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step331Add1_checked : compileHmrHybridCinLog s2Step331Add1Arena 806 877 827 s2Step331Add1A s2Step331Add1B s2Step331Add1Work=some s2Step331Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step331Add1Arena s2Step331Add1During 806 877 827 s2Step331Add1A s2Step331Add1B s2Step331Add1Work
    (by decide +kernel) (by decide +kernel) s2Step331Add1_distinct
    (fun q hq => s2Step331Add1_owned (List.mem_toFinset.mpr hq)) s2Step331Add1_borrowed

private theorem s2Step331F4_apart : Disjoint (s2Step331Add0A++s2Step331Add0B).toFinset (s2Step331Add1A++s2Step331Add1B).toFinset := by
  have nd : ((s2Step331Add0A++s2Step331Add0B)++(s2Step331Add1A++s2Step331Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step331F4_carry : s2Step331F4FlagArena.checkBorrow 1 [827]=some s2Step331Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step331F4FlagArena,s2Step331HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step331F4FlagArena,s2Step331HeadFvAfter,s2Step331Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step331F4_distinct : (786::806::877::827::((s2Step331Add0A++s2Step331Add1A)++(s2Step331Add0B++s2Step331Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step331F4_flag : s2Step331HeadFvAfter.checkBorrow 1 [877]=some s2Step331F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step331HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step331F4_owned : (786::806::((s2Step331Add0A++s2Step331Add1A)++(s2Step331Add0B++s2Step331Add1B))).toFinset⊆s2Step331HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step331HeadFvAfter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step331F4_checked : compileHmrHybridF4Log s2Step331HeadFvAfter 786 806 s2Step331Add0A s2Step331Add0B s2Step331Add1A s2Step331Add1B [877] [827] s2Step331Add0Work s2Step331Add1Work=some s2Step331F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step331HeadFvAfter s2Step331F4FlagArena s2Step331Add0Arena s2Step331Add0During s2Step331Add1During 786 806
    s2Step331Add0A s2Step331Add0B s2Step331Add1A s2Step331Add1B [877] [827] s2Step331Add0Work s2Step331Add1Work
    (fun q hq => s2Step331F4_owned (List.mem_toFinset.mpr hq)) s2Step331F4_flag s2Step331F4_carry
    s2Step331F4_distinct s2Step331F4_apart s2Step331Add0_checked s2Step331Add1_checked

private theorem s2Step331Front_branch : s2Step331FrontSigmaArena.checkBorrow 1 [806]=some s2Step331HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step331FrontSigmaArena,s2Step331EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step331FrontSigmaArena,s2Step331EntryGvAfter,s2Step331HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step331Front_entry : HmrFrontEntryValid s2Step331EntryFBefore s2Step331FrontBank 105 181 ⟨105,104,181,181⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step331FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step331EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step331EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<817) ∨ (818≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step331FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step331Front_sigma : s2Step331EntryGvAfter.checkBorrow 1 [786]=some s2Step331FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step331EntryGvAfter,arenaWires]
  · rfl

private def s2Step331HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step331HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step331HeadFBefore : Arena := s2Step331HeadGAfter

private def s2Step331HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616],768⟩

private def s2Step331HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782],770⟩

private def s2Step331HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 794],769⟩

private def s2Step331HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817],771⟩

private theorem s2Step331HeadBank_incomingDistinct : ([s2Step331HeadGRow,s2Step331HeadFRow,s2Step331HeadGvRow,s2Step331HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step331HeadF_Incoming : rowsOwned s2Step331HeadFBefore [s2Step331HeadFRow,s2Step331HeadGvRow,s2Step331HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step331HeadGRow,s2Step331HeadFRow,s2Step331HeadGvRow,s2Step331HeadFvRow] 1 s2Step331HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step331HeadFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step331HeadBank_outgoingOwned : rowsOwned s2Step331HeadFvAfter [s2Step331HeadGOut,s2Step331HeadFOut,s2Step331HeadGvOut,s2Step331HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step331HeadFvAfter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step331HeadF_Outgoing : rowsOwned s2Step331HeadFvAfter [s2Step331HeadFOut,s2Step331HeadGvOut,s2Step331HeadFvOut] :=
  hmrRows_owned_drop s2Step331HeadFvAfter [s2Step331HeadGOut,s2Step331HeadFOut,s2Step331HeadGvOut,s2Step331HeadFvOut] 1 s2Step331HeadBank_outgoingOwned

private theorem s2Step331HeadF_distinct : (s2Step331HeadFRow.sign::s2Step331HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step331HeadF_owned : (s2Step331HeadFRow.sign::s2Step331HeadFRow.payload).toFinset⊆s2Step331HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step331HeadFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step331HeadF_reserved : s2Step331HeadFBefore.reserve s2Step331HeadFFresh.toFinset=some s2Step331HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step331HeadFFresh,arenaWires]
  · norm_num [s2Step331HeadFBefore,s2Step331HeadGAfter,s2Step331HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step331HeadFAfter,s2Step331HeadFBefore,s2Step331HeadGAfter,s2Step331HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step331HeadF_checked : planRowResizeLog s2Step331HeadFBefore s2Step331HeadFRow 106 s2Step331HeadFFresh=
    some (s2Step331HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 779],768⟩,growRow 768 s2Step331HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step331HeadFBefore s2Step331HeadFAfter s2Step331HeadFRow 106 s2Step331HeadFFresh
    s2Step331HeadF_distinct s2Step331HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step331HeadF_reserved
  have rowEq : WindowRow.mk (s2Step331HeadFRow.payload++s2Step331HeadFFresh) s2Step331HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 779],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step331HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step331HeadFvBefore : Arena := s2Step331HeadGvAfter

private theorem s2Step331HeadFv_Incoming : rowsOwned s2Step331HeadFvBefore [s2Step331HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step331HeadGRow,s2Step331HeadFRow,s2Step331HeadGvRow,s2Step331HeadFvRow] 3 s2Step331HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step331HeadFvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step331HeadFv_Outgoing : rowsOwned s2Step331HeadFvAfter [s2Step331HeadFvOut] :=
  hmrRows_owned_drop s2Step331HeadFvAfter [s2Step331HeadGOut,s2Step331HeadFOut,s2Step331HeadGvOut,s2Step331HeadFvOut] 3 s2Step331HeadBank_outgoingOwned

private theorem s2Step331HeadFv_distinct : (s2Step331HeadFvRow.sign::s2Step331HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step331HeadFv_owned : (s2Step331HeadFvRow.sign::s2Step331HeadFvRow.payload).toFinset⊆s2Step331HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step331HeadFvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step331HeadFv_reserved : s2Step331HeadFvBefore.reserve s2Step331HeadFvFresh.toFinset=some s2Step331HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step331HeadFvFresh,arenaWires]
  · norm_num [s2Step331HeadFvBefore,s2Step331HeadGvAfter,s2Step331HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step331HeadFvAfter,s2Step331HeadFvBefore,s2Step331HeadGvAfter,s2Step331HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step331HeadFv_checked : planRowResizeLog s2Step331HeadFvBefore s2Step331HeadFvRow 182 s2Step331HeadFvFresh=
    some (s2Step331HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 829],770⟩,growRow 770 s2Step331HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step331HeadFvBefore s2Step331HeadFvAfter s2Step331HeadFvRow 182 s2Step331HeadFvFresh
    s2Step331HeadFv_distinct s2Step331HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step331HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step331HeadFvRow.payload++s2Step331HeadFvFresh) s2Step331HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 829],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step331HeadG_Incoming : rowsOwned s2Step331HeadGBefore [s2Step331HeadGRow,s2Step331HeadFRow,s2Step331HeadGvRow,s2Step331HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step331HeadGRow,s2Step331HeadFRow,s2Step331HeadGvRow,s2Step331HeadFvRow] 0 s2Step331HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step331HeadGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step331HeadG_Outgoing : rowsOwned s2Step331HeadFvAfter [s2Step331HeadGOut,s2Step331HeadFOut,s2Step331HeadGvOut,s2Step331HeadFvOut] :=
  hmrRows_owned_drop s2Step331HeadFvAfter [s2Step331HeadGOut,s2Step331HeadFOut,s2Step331HeadGvOut,s2Step331HeadFvOut] 0 s2Step331HeadBank_outgoingOwned

private theorem s2Step331HeadG_distinct : (s2Step331HeadGRow.sign::s2Step331HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step331HeadG_owned : (s2Step331HeadGRow.sign::s2Step331HeadGRow.payload).toFinset⊆s2Step331HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step331HeadGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step331HeadG_reserved : s2Step331HeadGBefore.reserve s2Step331HeadGFresh.toFinset=some s2Step331HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step331HeadGFresh,arenaWires]
  · norm_num [s2Step331HeadGBefore,s2Step331HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step331HeadGAfter,s2Step331HeadGBefore,s2Step331HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step331HeadG_checked : planRowResizeLog s2Step331HeadGBefore s2Step331HeadGRow 106 s2Step331HeadGFresh=
    some (s2Step331HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 794, 836],769⟩,growRow 769 s2Step331HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step331HeadGBefore s2Step331HeadGAfter s2Step331HeadGRow 106 s2Step331HeadGFresh
    s2Step331HeadG_distinct s2Step331HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step331HeadG_reserved
  have rowEq : WindowRow.mk (s2Step331HeadGRow.payload++s2Step331HeadGFresh) s2Step331HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 794, 836],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step331HeadGvBefore : Arena := s2Step331HeadFAfter

private theorem s2Step331HeadGv_Incoming : rowsOwned s2Step331HeadGvBefore [s2Step331HeadGvRow,s2Step331HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step331HeadGRow,s2Step331HeadFRow,s2Step331HeadGvRow,s2Step331HeadFvRow] 2 s2Step331HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step331HeadGvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step331HeadGv_Outgoing : rowsOwned s2Step331HeadFvAfter [s2Step331HeadGvOut,s2Step331HeadFvOut] :=
  hmrRows_owned_drop s2Step331HeadFvAfter [s2Step331HeadGOut,s2Step331HeadFOut,s2Step331HeadGvOut,s2Step331HeadFvOut] 2 s2Step331HeadBank_outgoingOwned

private theorem s2Step331HeadGv_distinct : (s2Step331HeadGvRow.sign::s2Step331HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step331HeadGv_owned : (s2Step331HeadGvRow.sign::s2Step331HeadGvRow.payload).toFinset⊆s2Step331HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step331HeadGvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step331HeadGv_reserved : s2Step331HeadGvBefore.reserve s2Step331HeadGvFresh.toFinset=some s2Step331HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step331HeadGvFresh,arenaWires]
  · norm_num [s2Step331HeadGvBefore,s2Step331HeadFAfter,s2Step331HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step331HeadGvAfter,s2Step331HeadGvBefore,s2Step331HeadFAfter,s2Step331HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step331HeadGv_checked : planRowResizeLog s2Step331HeadGvBefore s2Step331HeadGvRow 182 s2Step331HeadGvFresh=
    some (s2Step331HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834],771⟩,growRow 771 s2Step331HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step331HeadGvBefore s2Step331HeadGvAfter s2Step331HeadGvRow 182 s2Step331HeadGvFresh
    s2Step331HeadGv_distinct s2Step331HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step331HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step331HeadGvRow.payload++s2Step331HeadGvFresh) s2Step331HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step331HeadBank_rows : planWindowRowsLog s2Step331HeadGBefore [(s2Step331HeadGRow,106),(s2Step331HeadFRow,106),(s2Step331HeadGvRow,182),(s2Step331HeadFvRow,182)] [s2Step331HeadGFresh,s2Step331HeadFFresh,s2Step331HeadGvFresh,s2Step331HeadFvFresh]=
    some (s2Step331HeadFvAfter,[s2Step331HeadGOut,s2Step331HeadFOut,s2Step331HeadGvOut,s2Step331HeadFvOut],(growRow 769 s2Step331HeadGFresh ++ (growRow 768 s2Step331HeadFFresh ++ (growRow 771 s2Step331HeadGvFresh ++ (growRow 770 s2Step331HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step331HeadFvAfter [] []=some (s2Step331HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step331HeadFvBefore s2Step331HeadFvAfter s2Step331HeadFvAfter
    s2Step331HeadFvRow s2Step331HeadFvOut 182 s2Step331HeadFvFresh [] [] []
    (growRow 770 s2Step331HeadFvFresh) ([]) s2Step331HeadFv_Incoming s2Step331HeadFv_checked h4 s2Step331HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step331HeadGvBefore s2Step331HeadGvAfter s2Step331HeadFvAfter
    s2Step331HeadGvRow s2Step331HeadGvOut 182 s2Step331HeadGvFresh [(s2Step331HeadFvRow,182)] [s2Step331HeadFvFresh] [s2Step331HeadFvOut]
    (growRow 771 s2Step331HeadGvFresh) ((growRow 770 s2Step331HeadFvFresh ++ [])) s2Step331HeadGv_Incoming s2Step331HeadGv_checked h3 s2Step331HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step331HeadFBefore s2Step331HeadFAfter s2Step331HeadFvAfter
    s2Step331HeadFRow s2Step331HeadFOut 106 s2Step331HeadFFresh [(s2Step331HeadGvRow,182),(s2Step331HeadFvRow,182)] [s2Step331HeadGvFresh,s2Step331HeadFvFresh] [s2Step331HeadGvOut,s2Step331HeadFvOut]
    (growRow 768 s2Step331HeadFFresh) ((growRow 771 s2Step331HeadGvFresh ++ (growRow 770 s2Step331HeadFvFresh ++ []))) s2Step331HeadF_Incoming s2Step331HeadF_checked h2 s2Step331HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step331HeadGBefore s2Step331HeadGAfter s2Step331HeadFvAfter
    s2Step331HeadGRow s2Step331HeadGOut 106 s2Step331HeadGFresh [(s2Step331HeadFRow,106),(s2Step331HeadGvRow,182),(s2Step331HeadFvRow,182)] [s2Step331HeadFFresh,s2Step331HeadGvFresh,s2Step331HeadFvFresh] [s2Step331HeadFOut,s2Step331HeadGvOut,s2Step331HeadFvOut]
    (growRow 769 s2Step331HeadGFresh) ((growRow 768 s2Step331HeadFFresh ++ (growRow 771 s2Step331HeadGvFresh ++ (growRow 770 s2Step331HeadFvFresh ++ [])))) s2Step331HeadG_Incoming s2Step331HeadG_checked h1 s2Step331HeadG_Outgoing
  exact h0

private theorem s2Step331HeadBank_checked : compileHmrBankResizeLog .headroom s2Step331HeadGBefore ⟨s2Step331HeadFRow,s2Step331HeadGRow,s2Step331HeadFvRow,s2Step331HeadGvRow⟩ ⟨106,106,182,182⟩ [s2Step331HeadGFresh,s2Step331HeadFFresh,s2Step331HeadGvFresh,s2Step331HeadFvFresh]=
    some (s2Step331HeadFvAfter,⟨s2Step331HeadFOut,s2Step331HeadGOut,s2Step331HeadFvOut,s2Step331HeadGvOut⟩,(growRow 769 s2Step331HeadGFresh ++ (growRow 768 s2Step331HeadFFresh ++ (growRow 771 s2Step331HeadGvFresh ++ (growRow 770 s2Step331HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step331HeadBank_rows]
  rfl

private theorem s2Step331Front_checked : compileHmrSourceFrontLog s2Step331EntryFBefore s2Step331FrontBank 105 181 ⟨105,104,181,181⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step331FrontLog=some s2Step331FrontPlan := by
  have pairEq : s2Step331FrontPair=⟨s2Step331HeadFRow,s2Step331HeadGRow,s2Step331HeadFvRow,s2Step331HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step331FrontHead=⟨s2Step331ExitFRow,s2Step331ExitGRow,s2Step331ExitFvRow,s2Step331ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step331Add0A=s2Step331FrontHead.f.wires := by decide +kernel
  have gEq : s2Step331Add0B=s2Step331FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step331Add1A=s2Step331FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step331Add1B=s2Step331FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step331EntryFBefore s2Step331FrontBank 105 181 ⟨105,104,181,181⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step331FrontLog s2Step331FrontPlan
  · exact s2Step331Front_entry
  · exact s2Step331EntryBank_checked
  · exact s2Step331Front_sigma
  · rfl
  · exact s2Step331Front_branch
  · rfl
  · simpa only [s2Step331FrontPlan,pairEq] using s2Step331HeadBank_checked
  · simpa only [s2Step331FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step331F4_checked
  · exact s2Step331Counter_checked
  · rfl
  · simpa only [s2Step331FrontPlan,headEq] using s2Step331ExitBank_checked

private theorem s2Step331Complete_explicit_checked : compileHmrEarlyStepLog s2Step331EntryFBefore s2Step331FrontBank 105 181 ⟨105,104,181,181⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step331CompleteLog=some s2Step331CompletePlan := by
  let Q := s2Step331EarlyControlPlan
  have hq := s2Step331EarlyControl_plan_checked
  have fv1 : s2Step331CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step331CompleteOut.fv.payload[2]?.getD s2Step331CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step331CompleteOut.fv.payload[3]?.getD s2Step331CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step331CompleteOut.fv.payload[4]?.getD s2Step331CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step331EntryFBefore s2Step331EarlyControlArena s2Step331FrontBank 105 181 ⟨105,104,181,181⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step331CompleteLog s2Step331FrontPlan Q
    s2Step331Front_checked s2Step331Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step331Complete_owned s2Step331Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step331EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 786 s2Step331CompleteOut.fv.second (s2Step331CompleteOut.fv.payload[2]?.getD s2Step331CompleteOut.fv.sign) (s2Step331CompleteOut.fv.payload[3]?.getD s2Step331CompleteOut.fv.sign) (s2Step331CompleteOut.fv.payload[4]?.getD s2Step331CompleteOut.fv.sign) 806 60 s2Step331EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep331Arena : Arena := s2Step331EntryFBefore
def s2PrivateStep331Bank : WindowBank := s2Step331FrontBank
def s2PrivateStep331Spec : HmrSourceWalkStepLog := ⟨105,181,⟨105,104,181,181⟩,60,.early s2Step331CompleteLog⟩
def s2PrivateStep331Plan : HmrSourceStepPlan := .early s2Step331CompletePlan
theorem s2PrivateStep331_source : s2PrivateStep331Spec=s2ObservedLogs320[11] := rfl
theorem s2PrivateStep331_checked : compileHmrSourceStepLog s2PrivateStep331Arena s2PrivateStep331Bank
    s2PrivateStep331Spec.fgWidth s2PrivateStep331Spec.vWidth s2PrivateStep331Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]
    6 498 331 s2PrivateStep331Spec.need none s2PrivateStep331Spec.log=some s2PrivateStep331Plan := by
  change compileHmrSourceStepLog s2Step331EntryFBefore s2Step331FrontBank 105 181 ⟨105,104,181,181⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 6 498 331 60 none (.early s2Step331CompleteLog)=some (.early s2Step331CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 331<498)]
  rw [s2Step331Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
